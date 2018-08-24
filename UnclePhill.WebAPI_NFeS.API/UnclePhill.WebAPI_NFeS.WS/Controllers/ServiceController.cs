﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using UnclePhill.WebAPI_NFeS.API.Controllers;
using UnclePhill.WebAPI_NFeS.API.Models;
using UnclePhill.WebAPI_NFeS.WS.Models;

namespace UnclePhill.WebAPI_NFeS.WS.Controllers
{
    public class ServiceController : MasterController
    {
        public JsonResult Select(long? ServicesId)
        {
            try
            {
                if (!base.CheckSession()) return Response(new Feedbacks("erro", "Sessão inválida!"));

                List<Services> lServices = new List<Services>();

                SQL.AppendLine(" Select ");
                SQL.AppendLine("    ServicesId, ");
                SQL.AppendLine("    Unity, ");
                SQL.AppendLine("    Value, ");
                SQL.AppendLine("    Description, ");
                SQL.AppendLine("    IRRF, ");
                SQL.AppendLine("    PIS, ");
                SQL.AppendLine("    CSLL, ");
                SQL.AppendLine("    INSS, ");
                SQL.AppendLine("    COFINS, ");
                SQL.AppendLine("    Active, ");
                SQL.AppendLine("    DateInsert, ");
                SQL.AppendLine("    DateUpdate ");
                SQL.AppendLine(" From Services ");
                SQL.AppendLine(" Where Active = 1 ");
                if (ServicesId > 0) { SQL.AppendLine(" And ServicesId = " + ServicesId); }
                
                DataTable data = Conn.GetDataTable(SQL.ToString(), "Services");
                if (data != null && data.Rows.Count > 0)
                {
                    foreach (DataRow row in data.Rows)
                    {
                        Services service = new Services();
                        service.ServicesId = long.Parse(row["ServicesId"].ToString());
                        service.Unity = row["Unity"].ToString();
                        service.Value = decimal.Parse(row["Value"].ToString());
                        service.Description = row["Description"].ToString();
                        service.IRRF = decimal.Parse(row["IRRF"].ToString());
                        service.PIS = decimal.Parse(row["PIS"].ToString());
                        service.CSLL = decimal.Parse(row["CSLL"].ToString());
                        service.INSS = decimal.Parse(row["INSS"].ToString());
                        service.COFINS = decimal.Parse(row["COFINS"].ToString());
                        service.Active = bool.Parse(row["Active"].ToString());
                        service.DateInsert = row.Field<DateTime>("DateInsert").ToString("dd-MM-yyyy");
                        service.DateUpdate = row.Field<DateTime>("DateUpdate").ToString("dd-MM-yyyy");
                        lServices.Add(service);
                    }
                    return Response(lServices);
                }
                return Response(new Feedbacks("erro", "Não foram encontrados registros!"));
            }
            catch(Exception ex)
            {
                return Response(ex.Message);
            }
        }

        public JsonResult Insert(Services services)
        {
            try
            {
                if (!base.CheckSession()) { return Response(new Feedbacks("erro", "Sessão inválida!")); }

                Feedbacks feedback = Validate(services);
                if (feedback.Status.Equals("erro"))
                {
                    return Response(feedback);
                }

                SQL.AppendLine(" Insert Into Services ");
                SQL.AppendLine("    Unity, ");
                SQL.AppendLine("    Value, ");
                SQL.AppendLine("    Description, ");
                SQL.AppendLine("    IRRF, ");
                SQL.AppendLine("    PIS, ");
                SQL.AppendLine("    CSLL, ");
                SQL.AppendLine("    INSS, ");
                SQL.AppendLine("    COFINS, ");
                SQL.AppendLine("    Active, ");
                SQL.AppendLine("    DateInsert, ");
                SQL.AppendLine("    DateUpdate ");
                SQL.AppendLine(" Values ");
                SQL.AppendLine("    ('" + NoInjection(services.Unity) + "',");
                SQL.AppendLine("     " + FormatNumber(services.Value) + ",");
                SQL.AppendLine("     " + NoInjection(services.Description) + "',");
                SQL.AppendLine("     " + FormatNumber(services.IRRF) + ",");
                SQL.AppendLine("     " + FormatNumber(services.PIS) + ",");
                SQL.AppendLine("     " + FormatNumber(services.CSLL) + ",");
                SQL.AppendLine("     " + FormatNumber(services.INSS) + ",");
                SQL.AppendLine("     " + FormatNumber(services.COFINS) + ",");
                SQL.AppendLine("     1 ,");
                SQL.AppendLine("     GetDate(), ");
                SQL.AppendLine("     GetDate() ");
                SQL.AppendLine("    ) ");

                if (Conn.Insert(SQL.ToString()) > 0)
                {
                    return Response(new Feedbacks("ok", "Serviço criado com sucesso!"));
                }

                return Response(new Feedbacks("erro", "Houve um problema ao criar um serviço. Tente novamente!"));
            }
            catch (Exception ex)
            {
                return Response(new Feedbacks("erro", ex.Message));
            }
        }

        public JsonResult Update(Services services)
        {
            try
            {
                if (!base.CheckSession()) { return Response(new Feedbacks("erro", "Sessão inválida!")); }

                Feedbacks feedback = Validate(services);
                if (feedback.Status.Equals("erro"))
                {
                    return Response(feedback);
                }

                if (services.ServicesId <= 0)
                {
                    return Response(new Feedbacks("erro", "Informe o código do serviço!"));
                }

                SQL.AppendLine(" Update Services Set ");
                SQL.AppendLine("    Unity = '" + NoInjection(services.Unity) + "',");
                SQL.AppendLine("    Value = " + FormatNumber(services.Value) + ",");
                SQL.AppendLine("    Description = '" + NoInjection(services.Description) + "',");
                SQL.AppendLine("    IRRF = " + FormatNumber(services.IRRF) + ",");
                SQL.AppendLine("    PIS = " + FormatNumber(services.PIS) + ",");
                SQL.AppendLine("    CSLL = " + FormatNumber(services.CSLL) + ",");
                SQL.AppendLine("    INSS = " + FormatNumber(services.INSS) + ",");
                SQL.AppendLine("    COFINS = " + FormatNumber(services.COFINS) + ", ");
                SQL.AppendLine("    DateUpdate = GetDate() ");
                SQL.AppendLine(" Where ServicesId = " + services.ServicesId);

                if (Conn.Update(SQL.ToString()))
                {
                    return Response(new Feedbacks("ok", "Serviço atualizado com sucesso!"));
                }

                return Response(new Feedbacks("erro", "Houve um erro ao atualizar o serviço. Tente novamente!"));
            }
            catch (Exception ex)
            {
                return Response(new Feedbacks("erro", ex.Message));
            }
        }

        public JsonResult Delete(long ServicesId)
        {
            try
            {
                if (!base.CheckSession()) { return Response(new Feedbacks("erro", "Sessão inválida!")); }

                if (ServicesId <= 0)
                {
                    return Response(new Feedbacks("erro", "Informe o código do serviço!"));
                }

                SQL.AppendLine(" Update Services Set ");
                SQL.AppendLine("    Active = 0 ");
                SQL.AppendLine(" Where ServicesId = " + ServicesId);

                if (Conn.Delete(SQL.ToString()))
                {
                    return Response(new Feedbacks("ok", "Serviço excluido com sucesso!"));
                }

                return Response(new Feedbacks("erro", "Houve um erro ao excluir o serviço. Tente novamente!"));
            }
            catch (Exception ex)
            {
                return Response(new Feedbacks("erro", ex.Message));
            }
        }

        private Feedbacks Validate(Services services)
        {
            if (string.IsNullOrEmpty(services.Unity))
            {
                return new Feedbacks("erro", "Informe a unidade de medida do serviço!");
            }

            if (services.Value <= 0)
            {
                return new Feedbacks("erro", "Informe o valor do serviço!");
            }

            if (string.IsNullOrEmpty(services.Description))
            {
                return new Feedbacks("erro", "Informe o valor do serviço!");
            }
            
            return new Feedbacks("ok","Sucesso");
        }
    }
}