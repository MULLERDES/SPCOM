﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class ShoProductsDBEntities : DbContext
    {
        public ShoProductsDBEntities()
            : base("name=ShoProductsDBEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<ProdModPriceHistotry> ProdModPriceHistotries { get; set; }
        public virtual DbSet<ProductCategory> ProductCategories { get; set; }
        public virtual DbSet<ProductModifiaction> ProductModifiactions { get; set; }
        public virtual DbSet<ProductPriceHistory> ProductPriceHistories { get; set; }
        public virtual DbSet<Product> Products { get; set; }
    }
}