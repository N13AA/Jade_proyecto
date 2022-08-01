using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ptcfinal
{
    public partial class adminitrador_es : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                String nombre = Session["username"].ToString();

            }
            catch (Exception ex)
            {
                Response.Redirect("Inicio-eng.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Remove("username");
            Response.Redirect("Inicio-eng.aspx");
        }
    }
}