using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography;

namespace Proyecto_QR
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                bool logged_in = Convert.ToBoolean(Session["logged_in"]);
                bool isAdmin = Convert.ToBoolean(Session["isAdmin"]);
                if (logged_in)
                {
                    if (isAdmin)
                        Response.Redirect("admin");
                    Response.Redirect("index");
                }
                    
            }
            catch (Exception ex)
            {
                Response.Redirect("index");
            }
        }

        protected void Login_Click(object sender, EventArgs e)
        {
         
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("signup.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string username = TxtUsuario.Text.Trim();
            string password = TxtContra.Text.Trim();


            int login = metodos.login(username, password);
            int isAdmin = metodos.Check_Admin(username);

            if (login != 0)
            {
                Session["logged_in"] = true;
                Session["username"] = username;
                Session["userID"] = login;
                Session["addedToCart"] = false;
                metodos.SetCartId();
                if (isAdmin == 1)
                {
                    Session["isAdmin"] = true;
                    Response.Redirect("ventas");
                }

                Session["isAdmin"] = false;
                Response.Redirect("index");
            }
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Los datos de ingreso de sesión no son válidos " + login + "');", true);

        }
    }
}