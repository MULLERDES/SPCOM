//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WCarDump.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class ProdModPriceHistotry
    {
        public int Id { get; set; }
        public int ModID { get; set; }
        public System.DateTime SetTime { get; set; }
        public decimal Price { get; set; }
    
        public virtual ProductModifiaction ProductModifiaction { get; set; }
    }
}