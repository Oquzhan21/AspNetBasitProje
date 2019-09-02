using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GunkarSogutma
{
    public partial class ProjeEkle : System.Web.UI.Page
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
                string virtualFolder = "~/ProjeFotoRes/";
                string asd = Server.MapPath(virtualFolder);
                string filename = Guid.NewGuid().ToString();
                string ext = System.IO.Path.GetExtension(FileUpload1.FileName);
                FileUpload1.SaveAs(System.IO.Path.Combine(asd, filename + ext));
                string finalurl = virtualFolder + filename + ext;
                using (GunkarSogutmaEntities10 Entities = new GunkarSogutmaEntities10())
                {
                    GunkarSogutma.GProje ResimListeleme = new GunkarSogutma.GProje();
                    ResimListeleme.ProjeFotosu = finalurl;
                    ResimListeleme.ProjeAdi = TextBox1.Text.Trim();
                    Entities.GProje.Add(ResimListeleme);
                    Entities.SaveChanges();
                }
                Response.Redirect("ProjeEkle.aspx");
            }
        }
    }
}