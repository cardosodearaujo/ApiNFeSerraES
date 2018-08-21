//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace UnclePhill.WebAPI_NFeS.Repository
{
    using System;
    using System.Collections.Generic;
    
    public partial class Company
    {
        public long CompanyId { get; set; }
        public string CNPJ { get; set; }
        public string IM { get; set; }
        public string IE { get; set; }
        public string Name { get; set; }
        public string CEP { get; set; }
        public string Street { get; set; }
        public string Neighborhood { get; set; }
        public string City { get; set; }
        public string State { get; set; }
        public string Telephone { get; set; }
        public string Email { get; set; }
        public byte[] Logo { get; set; }
        public decimal IRRF { get; set; }
        public decimal PIS { get; set; }
        public decimal COFINS { get; set; }
        public decimal CSLL { get; set; }
        public decimal INSS { get; set; }
        public bool Active { get; set; }
        public System.DateTime DateInsert { get; set; }
        public Nullable<System.DateTime> DateUpdate { get; set; }
    }
}