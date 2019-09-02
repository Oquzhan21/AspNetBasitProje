using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GunkarSogutma
{
    public partial class Referanslarimiz : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Repeater1.DataSource = SqlDataSource1;
            Repeater1.DataBind();
        }
    }
}