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
    
    public partial class SiteDBEntities_Users : DbContext
    {
        public SiteDBEntities_Users()
            : base("name=SiteDBEntities_Users")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<UserPermission> UserPermissions { get; set; }
        public virtual DbSet<User> Users { get; set; }
        public virtual DbSet<InSiteLogin> InSiteLogins { get; set; }
    }
}
