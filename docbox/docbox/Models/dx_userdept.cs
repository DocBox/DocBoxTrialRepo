//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace docbox.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class dx_userdept
    {
        public string userid { get; set; }
        public int deptid { get; set; }
        public long udid { get; set; }
    
        public virtual dx_department dx_department { get; set; }
        public virtual dx_user dx_user { get; set; }
    }
}
