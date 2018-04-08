using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NettbutikkFAQ
{
    public partial class OSpørsmål : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            using (var db = new FaqsContext())
            {
                //Frakt
                var q =
                 from f in db.Faqs
                 where f.Kategori == "Frakt"
                 orderby f.id
                 select f;
                foreach (var f in q)
                {
                    string text = " <a class=\"question\">>";
                    text += f.Spørsmål + "</a>";
                    text += "<div class=\"answer\">";
                    text += f.Svar + "</div><br/>";

                    Panel1.Controls.Add(new Label { Text = text });

                }

                //Levering
                var a =
                 from b in db.Faqs
                 where b.Kategori == "Levering"
                 orderby b.id
                 select b;
                foreach (var b in a)
                {
                    string text = " <a class=\"question\">>";
                    text += b.Spørsmål + "</a>";
                    text += "<div class=\"answer\">";
                    text += b.Svar + "</div><br/>";

                    Panel2.Controls.Add(new Label { Text = text });

                }

                //Betaling
                var ab =
                 from bc in db.Faqs
                 where bc.Kategori == "Betaling"
                 orderby bc.id
                 select bc;
                foreach (var bc in ab)
                {
                    string text = " <a class=\"question\">>";
                    text += bc.Spørsmål + "</a>";
                    text += "<div class=\"answer\">";
                    text += bc.Svar + "</div><br/>";

                    Panel3.Controls.Add(new Label { Text = text });

                }

                //Retur
                var v =
                 from iv in db.Faqs
                 where iv.Kategori == "Retur"
                 orderby iv.id
                 select iv;
                foreach (var iv in v)
                {
                    string text = " <a class=\"question\">>";
                    text += iv.Spørsmål + "</a>";
                    text += "<div class=\"answer\">";
                    text += iv.Svar + "</div><br/>";

                    Panel4.Controls.Add(new Label { Text = text });

                }

                //Support
                var al =
                 from la in db.Faqs
                 where la.Kategori == "Support"
                 orderby la.id
                 select la;
                foreach (var la in al)
                {
                    string text = " <a class=\"question\">>";
                    text += la.Spørsmål + "</a>";
                    text += "<div class=\"answer\">";
                    text += la.Svar + "</div><br/>";

                    Panel5.Controls.Add(new Label { Text = text });

                }

                //Informasjon
                var x =
                 from y in db.Faqs
                 where y.Kategori == "Informasjon"
                 orderby y.id
                 select y;
                foreach (var y in x)
                {
                    string text = " <a class=\"question\">>";
                    text += y.Spørsmål + "</a>";
                    text += "<div class=\"answer\">";
                    text += y.Svar + "</div><br/>";

                    Panel6.Controls.Add(new Label { Text = text });

                }

                //Generelt
                var xy =
                 from yx in db.Faqs
                 where yx.Kategori == "Generelt"
                 orderby yx.id
                 select yx;
                foreach (var yx in xy)
                {
                    string text = " <a class=\"question\">>";
                    text += yx.Spørsmål + "</a>";
                    text += "<div class=\"answer\">";
                    text += yx.Svar + "</div><br/>";

                    Panel7.Controls.Add(new Label { Text = text });

                }
            }

        }

        protected void Click(object sender, EventArgs e)
        {
            using (var db = new FaqsContext())
            {
                var q =
                   from f in db.Faqs
                   where f.id == 1
                   select f;

                foreach (var f in q)
                {
                    //Sv1.Text = f.Svar;
                }
            }
        }
    }
}