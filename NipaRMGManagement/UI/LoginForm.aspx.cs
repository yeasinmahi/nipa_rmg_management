using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NipaRMGManagement.UI
{
    public partial class LoginForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void OnClick(object sender, EventArgs e)
        {
            if (UserName.Text.Equals("admin") && Password.Text.Equals("admin"))
            {
                Session["login"] = "y";
                Response.Redirect("~/Default.aspx");
            }
        }

    }
}