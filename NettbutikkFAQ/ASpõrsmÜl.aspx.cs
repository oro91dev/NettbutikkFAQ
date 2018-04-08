using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NettbutikkFAQ
{
    public partial class ASpørsmål : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (var db = new MailspørsmålContext())
            {
                var q =
                 from f in db.Spørsmål
                 where f.Henvendelse == "Frakt"
                 orderby f.Id
                 select f;
                foreach (var f in q)
                {
                    string text = " <a class=\"question\">>";
                    text += f.Spørsmål + "</a>";
                    text += "<div class=\"answer\">";
                    text += f.Svar + "</div><br/>";

                    Panel1.Controls.Add(new Label { Text = text });

                }

                var a =
                from b in db.Spørsmål
                where b.Henvendelse == "Levering"
                orderby b.Id
                select b;
                foreach (var b in a)
                {
                    string text = " <a class=\"question\">>";
                    text += b.Spørsmål + "</a>";
                    text += "<div class=\"answer\">";
                    text += b.Svar + "</div><br/>";

                    Panel2.Controls.Add(new Label { Text = text });

                }

                var c =
                from d in db.Spørsmål
                where d.Henvendelse == "Betaling"
                orderby d.Id
                select d;
                foreach (var d in c)
                {
                    string text = " <a class=\"question\">>";
                    text += d.Spørsmål + "</a>";
                    text += "<div class=\"answer\">";
                    text += d.Svar + "</div><br/>";

                    Panel3.Controls.Add(new Label { Text = text });

                }

                var ci =
                from di in db.Spørsmål
                where di.Henvendelse == "Betaling"
                orderby di.Id
                select di;
                foreach (var di in ci)
                {
                    string text = " <a class=\"question\">>";
                    text += di.Spørsmål + "</a>";
                    text += "<div class=\"answer\">";
                    text += di.Svar + "</div><br/>";

                    Panel4.Controls.Add(new Label { Text = text });

                }
                var ef =
                from g in db.Spørsmål
                where g.Henvendelse == "Support"
                orderby g.Id
                select g;
                foreach (var g in ef)
                {
                    string text = " <a class=\"question\">>";
                    text += g.Spørsmål + "</a>";
                    text += "<div class=\"answer\">";
                    text += g.Svar + "</div><br/>";

                    Panel5.Controls.Add(new Label { Text = text });

                }

                var h =
                from he in db.Spørsmål
                where he.Henvendelse == "Informasjon"
                orderby he.Id
                select he;
                foreach (var he in h)
                {
                    string text = " <a class=\"question\">>";
                    text += he.Spørsmål + "</a>";
                    text += "<div class=\"answer\">";
                    text += he.Svar + "</div><br/>";

                    Panel6.Controls.Add(new Label { Text = text });

                }

                var ab =
                from cb in db.Spørsmål
                where cb.Henvendelse == "Generelt"
                orderby cb.Id
                select cb;
                foreach (var cb in ab)
                {
                    string text = " <a class=\"question\">>";
                    text += cb.Spørsmål + "</a>";
                    text += "<div class=\"answer\">";
                    text += cb.Svar + "</div><br/>";

                    Panel7.Controls.Add(new Label { Text = text });

                }


            }
        }
    }
}