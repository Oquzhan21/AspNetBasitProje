using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GunkarSogutma
{
    public partial class Servis : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SqlConnection conn = new SqlConnection("data source=.;initial catalog=GunkarSogutma;integrated security=True;MultipleActiveResultSets=True");
        string firma = "", ilgili = "", telefon = "", eposta = "", icerik = "", konu = "";
        protected void Button1_Click(object sender, EventArgs e)
        {
            firma = Convert.ToString(txtFirma.Text.Trim());
            ilgili = Convert.ToString(txtİlgiliKisi.Text.Trim());
            telefon = Convert.ToString(txtTelefon.Text.Trim());
            eposta = Convert.ToString(txtEposta.Text.Trim());
            konu = Convert.ToString(txtKonu.Text.Trim());
            icerik = Convert.ToString(txtİcerik.Text.Trim());
            string Mesaj = "";
            Mesaj += "<b>Teknik Servis formundan mesaj aldınız.</b><br/>";
            Mesaj += "<b>Firma Adı:" + firma + "</b><br/>";
            Mesaj += "<b>Yetkili Kişi:" + ilgili + "</b><br/>";
            Mesaj += "<b>Telefon:" + telefon + "</b><br/>";
            Mesaj += "<b>E-Posta:" + eposta + "</b><br/>";
            Mesaj += "<b>Konu:" + konu + "</b><br/>";
            Mesaj += "<b>İçerik:" + icerik + "</b><br/>";
            Mesaj += "<b>Tarih:" + DateTime.Now.ToString() + "</b><br/>";
            if (firma != "" && ilgili != "" && telefon != "" && eposta != "" && icerik != "")
            {
                SmtpClient ss = new SmtpClient();
                ss.Port = 587;
                ss.Host = "smtp.gmail.com";
                ss.EnableSsl = true;
                ss.Credentials = new NetworkCredential("gunkarsogutma@gmail.com", "gunday1997");
                MailMessage mailadresi = new MailMessage();
                mailadresi.From = new MailAddress("gunkarsogutma@gmail.com", "Günkar Soğutma", System.Text.Encoding.UTF8);
                mailadresi.To.Add("gunkarsogutma@gmail.com");
                mailadresi.Subject = konu;
                mailadresi.IsBodyHtml = true;
                mailadresi.Body = Mesaj;
                ss.Send(mailadresi);
                Label1.Text = "Mailiniz başarıyla gönderildi...";
                txtEposta.Text = "";
                txtFirma.Text = "";
                txtTelefon.Text = "";
                txtİcerik.Text = "";
                txtİlgiliKisi.Text = "";
                txtKonu.Text = "";
            }
            else
            {
                Label1.Text = "Boş bırakmayınız....";
            }
        }
    }
}
