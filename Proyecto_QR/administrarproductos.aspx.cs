using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_QR
{
    public partial class administrarproductos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                bool logged_in = Convert.ToBoolean(Session["logged_in"]);
                bool isAdmin = Convert.ToBoolean(Session["isAdmin"]);

                if (!isAdmin)
                    Response.Redirect("index");

            }
            catch (Exception ex)
            {
                Response.Redirect("login");
            }
            Load_Products();
        }

        protected void Load_Products()
        {
            DataTable myTable = metodos.Fetch_Products(true);
            ProductsList.DataSource = myTable;
            ProductsList.DataBind();
        }

        protected void btnSeleccionar_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(ProductId.Text);
            Fetch_product(id);
        }

        protected void btnEditar_Click(object sender, EventArgs e)
        {
            string strFileName;
            string strFilePath;
            string strFolder;

            strFolder = Server.MapPath("./images/");
            try
            {
                int id = Convert.ToInt32(ProductId.Text);
                string product = Product.Text.Trim();
                double price = Convert.ToDouble(Price.Text.Trim());
                int quantity = Convert.ToInt32(Quantity.Text.Trim());

                if (!Directory.Exists(strFolder))
                {
                    Directory.CreateDirectory(strFolder);
                }

                if (PhotoFile.HasFile)
                {
                    // Obtener el nombre del archivo subido.
                    strFileName = PhotoFile.PostedFile.FileName;
                    strFileName = Path.GetFileName(strFileName);
                    string foto = strFileName;
                    // Guardando el archivo en el servidor
                    strFilePath = strFolder + strFileName;
                    if (!File.Exists(strFilePath)) //Si el archivo subido no existe, lo crea en el servidor
                    {
                        PhotoFile.PostedFile.SaveAs(strFilePath);
                    }

                    int guardado = metodos.Update_Product(id, product, price, quantity, foto);
                    if(guardado == 1)
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('El registro se actualizó con éxito.');", true);
                        Load_Products();
                        Fetch_product(id);
                    }
                    else
                        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Error al actualizar el registro');", true);
                }
                else
                {
                    int guardado = metodos.Update_Product(id, product, price, quantity);
                    if (guardado == 1)
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('El registro se actualizó con éxito.');", true);
                        Load_Products();
                        Fetch_product(id);
                    }
                    else
                        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Error al actualizar el registro');", true);

                }
            }
            catch(Exception ex)
            {
              ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Hubo un error al editar el registro.');", true);
            }
           

        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            int id;
            var isNumber = int.TryParse(ProductId.Text.Trim(), out id);
            
            if (isNumber)
            {
                int eliminado = metodos.Delete_Product(id);

                if(eliminado == 1)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('El producto se eliminó con éxito.');", true);
                    Load_Products();
                    Product.Text = string.Empty;
                    Price.Text = string.Empty;
                    Quantity.Text = string.Empty;
                    ImagePreview.ImageUrl = null;
                }
                else
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Hubo un error al eliminar el registro');", true);
            }

        }
        protected void Fetch_product(int id)
        {
            try
            {
                Product respuesta = metodos.Search_Product(id);
                if (respuesta.Id != 0)
                {
                    ImagePreview.ImageUrl = "/images/" + respuesta.Image;
                    Product.Text = respuesta.Name;
                    Price.Text = respuesta.Price.ToString();
                    Quantity.Text = respuesta.Quantity.ToString();

                }
                else
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Hubo un error al obtener los datos');", true);

            }
            catch (Exception exc)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Hubo un error al obtener los datos');", true);
            }
        }
    }
}