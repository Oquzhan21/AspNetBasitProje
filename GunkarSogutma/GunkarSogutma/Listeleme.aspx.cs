using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using GunkarSogutma;
using System.Drawing;

namespace GunkarSogutma
{
    public partial class Listeleme : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Repeater1.DataSource = SqlDataSource1;
            Repeater1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                string virtualFolder = "~/Images/";
                string asd = Server.MapPath(virtualFolder);
                string filename = Guid.NewGuid().ToString();
                string ext = System.IO.Path.GetExtension(FileUpload1.FileName);
                FileUpload1.SaveAs(System.IO.Path.Combine(asd, filename + ext));
                string finalurl = virtualFolder + filename + ext;
                using (GunkarSogutmaEntities10 Entities = new GunkarSogutmaEntities10())
                {
                    GunkarSogutma.GGUrunler ResimListeleme=new GunkarSogutma.GGUrunler() ;
                    ResimListeleme.UrunResimYolu = finalurl;
                    ResimListeleme.UrunAdi = TextBox1.Text.Trim();
                    ResimListeleme.kategoriId = int.Parse(DropDownList1.SelectedValue);
                    Entities.GGUrunler.Add(ResimListeleme);
                    Entities.SaveChanges();
                }
                Response.Redirect("Listeleme.aspx");
            }


        }


    }
}