using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Data.Entity;
using System.Data.Entity.ModelConfiguration.Conventions;
using System.Linq;
using System.Web;

namespace NettbutikkFAQ
{
    public class FAQspørsmål
    {
        [Key]
        public int id { get; set; }
        public string Kategori { get; set; }
        public string Spørsmål { get; set; }
        public string Svar { get; set; }

    }

    public class FaqsContext : DbContext
    {
        public FaqsContext()
            : base("name=FAQspørsmål")
        {
            Database.CreateIfNotExists();
        }

        public DbSet<FAQspørsmål> Faqs { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Conventions.Remove<PluralizingTableNameConvention>();
        }
    }
}