using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ParkeaseBD
{
    public partial class Site : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["email"] == null)
                {
                    Response.Redirect("~/login.aspx", false);
                }
            }
        }

        protected void BtnLogout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("~/Login.aspx", false);
            Context.ApplicationInstance.CompleteRequest();
        }
        
        protected void BtnHome_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("/inicio.aspx", false);
            Context.ApplicationInstance.CompleteRequest();
        }
    }
}