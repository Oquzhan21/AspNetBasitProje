using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GunkarSogutma
{
    public partial class İLETİSİM : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SqlConnection conn = new SqlConnection("data source=.;initial catalog=GunkarSogutma;integrated security=True;MultipleActiveResultSets=True");
        string ad = "", soyad = "", mail = "", konu = "", icerik = "";
        protected void Button1_Click(object sender, EventArgs e)
        {
            ad = Convert.ToString(txtAd.Text.Trim());
            soyad = Convert.ToString(txtSoyad.Text.Trim());
            mail = Convert.ToString(txtMail.Text.Trim());
            konu = Convert.ToString(txtKonu.Text.Trim());
            icerik = Convert.ToString(txtİcerik.Text.Trim());
            string Mesaj = "";
            Mesaj += "<b>İletişim formundan mesaj aldınız.</b><br/>";
            Mesaj += "<b>Adı Soyadı:"+ad+" "+soyad+"</b><br/>";
            Mesaj += "<b>MailAdresi:"+mail+"</b><br/>";
            Mesaj += "<b>Konu:"+konu+"</b><br/>";
            Mesaj += "<b>İçerik:"+icerik+"</b><br/>";
            Mesaj += "<b>Tarih:" + DateTime.Now.ToString() + "</b><br/>";
            
            if (ad!="" && soyad!="" &&  mail!="" && konu!="" && icerik!="")
            {
                SmtpClient ss = new SmtpClient();
                ss.Port = 587;
                ss.Host = "smtp.gmail.com";
                ss.EnableSsl = true;
                ss.Credentials = new NetworkCredential("gunkarsogutma@gmail.com","gunday1997");
                MailMessage mailadresi = new MailMessage();
                mailadresi.From = new MailAddress("gunkarsogutma@gmail.com", "Günkar Soğutma",System.Text.Encoding.UTF8);
                mailadresi.To.Add("gunkarsogutma@gmail.com");
                mailadresi.Subject = konu;
                mailadresi.IsBodyHtml = true;
                mailadresi.Body = Mesaj;
                ss.Send(mailadresi);
                Label1.Text = "Mailiniz başarıyla gönderildi...";
                txtKonu.Text = "";
                txtMail.Text = "";
                txtSoyad.Text = "";
                txtİcerik.Text = "";
                txtAd.Text = "";
            }
            else
            {
                Label1.Text = "Boş bırakmayınız....";
            }
        }
    }
}