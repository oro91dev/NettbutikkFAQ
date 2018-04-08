using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace NettbutikkFAQ
{
    public partial class Kontaktinformasjon : System.Web.UI.Page
    {
        RequiredFieldValidator rfv = new RequiredFieldValidator();


        protected void Page_Load(object sender, EventArgs e)
        {
          
        }
        protected void Henvendelselist(object sender, EventArgs e)
        {

        }
        protected void registrert(object sender, EventArgs e)
        {
            try
            {
                using (var db = new MailspørsmålContext())
                {
                    var nySpørsmål = new Mailspørsmål
                    {
                        Henvendelse = DDlhenv.Text,
                        Navn = txtNavn.Text,
                        Epost = txtEpost.Text,
                        Mobil = txtMob.Text,
                        Spørsmål = txtaspørsmål.Value,

                    };

                    if (nySpørsmål != null)
                        db.Spørsmål.Add(nySpørsmål);
                    db.SaveChanges();
                    
                }
            }
            catch (Exception ex)
            {
                throw new Exception("finner ikke kunde data", ex);
            }
            ClearField();
            DDlhenv.DataBind();
            DDlhenv.Items.Insert(0, new ListItem("Velg henvendelse", "null"));
            
        }

        private void ClearField()
        {
            txtNavn.Text = string.Empty;
            txtEpost.Text = string.Empty;
            txtMob.Text = string.Empty;
            txtaspørsmål.Value = string.Empty;
        }

    


    }
}