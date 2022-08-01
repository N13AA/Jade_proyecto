using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_QR
{
    public partial class carrito : System.Web.UI.Page
    {
        private int userId;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                bool logged_in = Convert.ToBoolean(Session["logged_in"]);
                if (!logged_in)
                {
                    Response.Redirect("login");
                }
            }
            catch (Exception ex)
            {
                Response.Redirect("login");
            }

            if (int.TryParse(HttpContext.Current.Session["userID"].ToString() , out userId))
            {
                Load_Cart(userId);
                Load_Total(userId);
            }
            
        }

        protected void Load_Cart(int userId)
        {
            QRUrl.Target = "https://www.youtube.com";
            DataTable myTable = metodos.Fetch_Cart(userId);
            ShoppingCart.DataSource = myTable;
            ShoppingCart.DataBind();
        }
        protected void Load_Total(int userId)
        {
            double total = metodos.Cart_Total(userId);
            Total.Text = "Total: $" + Math.Round(total, 2).ToString();
        }

        protected void CheckOut_Click(object sender, EventArgs e)
        {
            int checkedOut = metodos.Check_Out(userId);

            if(checkedOut != 0)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Compra realizada con éxito');", true);
               
                string QR = "QRs/" + Session["QRName"].ToString();
                QRImage.ImageUrl = QR;
                QRUrl.NavigateUrl=QR;
                
            }
            else
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Hubo un error al procesar el carrito');", true);
        }
    }
}