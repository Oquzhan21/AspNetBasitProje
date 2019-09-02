using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GunkarSogutma
{
    public partial class GirisYap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SqlConnection conn = new SqlConnection("data source=.;initial catalog=GunkarSogutma;integrated security=True;MultipleActiveResultSets=True");
        protected void Button1_Click(object sender, EventArgs e)
        {
            string kad = TextBox1.Text;
            string kSifre = TextBox2.Text;
            conn.Open();
            SqlCommand cmd = new SqlCommand("Select * from GirisPanel where KullaniciAdi='" + kad.ToString() + "' And Sifre='" + kSifre.ToString() + "'", conn);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Response.Redirect("YoneticiPaneli.aspx");
            }
            else
            {
                Response.Write("<b><font color=\"red\">Şifre ya da Kullanıcı Adı hatalı!</font></b>");
            }
          

        
    }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}