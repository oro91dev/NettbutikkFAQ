using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Data.Entity;
using System.Data.Entity.ModelConfiguration.Conventions;
using System.Linq;
using System.Web;


namespace NettbutikkFAQ
{
    public class Mailspørsmål
    {
        [Key]
        public int Id { get; set; }
        public string Henvendelse { get; set; }
        public string Navn { get; set; }
        public string Epost { get; set; }
        public string Mobil { get; set; }
        public string Spørsmål { get; set; }
        public string Svar { get; set; }

    }

    public class MailspørsmålContext : DbContext
    {
        public MailspørsmålContext()
            : base("name=Mailspørsmål")
        {
            Database.CreateIfNotExists();
        }

        public DbSet<Mailspørsmål> Spørsmål { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Conventions.Remove<PluralizingTableNameConvention>();
        }
    }
}