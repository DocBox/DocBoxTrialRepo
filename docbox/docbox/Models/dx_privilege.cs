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
    
    public partial class dx_privilege
    {
        public long privilege_id { get; set; }
        public long fileid { get; set; }
        public string userid { get; set; }
        public byte[] read { get; set; }
        public byte[] write { get; set; }
        public byte[] update { get; set; }
        public byte[] check { get; set; }
    
        public virtual dx_files dx_files { get; set; }
        public virtual dx_user dx_user { get; set; }
    }
}