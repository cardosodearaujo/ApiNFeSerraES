﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace UnclePhill.WebAPI_NFeS.WS.Models
{
    public class TaxpayerActivities
    {

        public TaxpayerActivities()
        {

        }

        public TaxpayerActivities(long TaxpayerActivitiesId, string CNAE, string Description, decimal Aliquot, bool Active, string DateInsert, string DateUpdate)
        {
            this.TaxpayerActivitiesId = TaxpayerActivitiesId;
            this.CNAE = CNAE;
            this.Description = Description;
            this.Aliquot = Aliquot;
            this.Active = Active;
            this.DateInsert = DateInsert;
            this.DateUpdate = DateUpdate;
        }

        public long TaxpayerActivitiesId { get; set; }
        public string CNAE { get; set; }
        public string Description { get; set; }
        public decimal Aliquot { get; set; }
        public bool Active { get; set; }
        public string DateInsert { get; set; }
        public string DateUpdate { get; set; }

    }
}