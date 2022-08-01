using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_QR
{
    public partial class crearproductos : System.Web.UI.Page
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
        }

        protected void Create_Click(object sender, EventArgs e)
        {
            string strFileName;
            string strFilePath;
            string strFolder;

            strFolder = Server.MapPath("./images/");
            if (DropDownList1.Text == "cah")
            {


                if (PhotoFile.HasFile)
                {
                    strFileName = PhotoFile.PostedFile.FileName;
                    strFileName = Path.GetFileName(strFileName);

                    if (!Directory.Exists(strFolder))
                    {
                        Directory.CreateDirectory(strFolder);
                    }
                    // Save the uploaded file to the server.
                    strFilePath = strFolder + strFileName;
                    if (!File.Exists(strFilePath))
                    {
                        PhotoFile.PostedFile.SaveAs(strFilePath);
                    }
                    string product = Product.Text.Trim();
                    double price = Convert.ToDouble(Price.Text.Trim());
                    int qty = Convert.ToInt32(Quantity.Text.Trim());
                    string image = strFileName;
                    string tipo = DropDownList1.Text;
                    string nombreeng = productoeng.Text.Trim();
                    int guardado = metodos.Add_Product(product, price, qty, image, tipo, nombreeng);
                    int guardado1 = metodos.Add_camisas_h(product, price, qty, image, tipo, nombreeng);
                    if (guardado == 1)
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Registro guardado exitosamente');", true);

                    }
                    else
                        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Hubo un error al guardar los datos');", true);

                }
                else if (DropDownList1.Text == "cam")
                {

                    if (PhotoFile.HasFile)
                    {
                        strFileName = PhotoFile.PostedFile.FileName;
                        strFileName = Path.GetFileName(strFileName);

                        if (!Directory.Exists(strFolder))
                        {
                            Directory.CreateDirectory(strFolder);
                        }
                        // Save the uploaded file to the server.
                        strFilePath = strFolder + strFileName;
                        if (!File.Exists(strFilePath))
                        {
                            PhotoFile.PostedFile.SaveAs(strFilePath);
                        }
                        string product = Product.Text.Trim();
                        double price = Convert.ToDouble(Price.Text.Trim());
                        int qty = Convert.ToInt32(Quantity.Text.Trim());
                        string image = strFileName;
                        string tipo = DropDownList1.Text;
                        string nombreeng = productoeng.Text.Trim();
                        int guardado = metodos.Add_Product(product, price, qty, image, tipo, nombreeng);
                        int guardado1 = metodos.Add_camisas_m(product, price, qty, image, tipo, nombreeng);
                        if (guardado == 1)
                        {
                            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Registro guardado exitosamente');", true);

                        }
                        else
                            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Hubo un error al guardar los datos');", true);
                    }
                }
                else if (DropDownList1.Text == "panh")
                {

                    if (PhotoFile.HasFile)
                    {
                        strFileName = PhotoFile.PostedFile.FileName;
                        strFileName = Path.GetFileName(strFileName);

                        if (!Directory.Exists(strFolder))
                        {
                            Directory.CreateDirectory(strFolder);
                        }
                        // Save the uploaded file to the server.
                        strFilePath = strFolder + strFileName;
                        if (!File.Exists(strFilePath))
                        {
                            PhotoFile.PostedFile.SaveAs(strFilePath);
                        }
                        string product = Product.Text.Trim();
                        double price = Convert.ToDouble(Price.Text.Trim());
                        int qty = Convert.ToInt32(Quantity.Text.Trim());
                        string image = strFileName;
                        string tipo = DropDownList1.Text;
                        string nombreeng = productoeng.Text.Trim();
                        int guardado = metodos.Add_Product(product, price, qty, image, tipo, nombreeng);
                        int guardado1 = metodos.Add_pantalones_h(product, price, qty, image, tipo, nombreeng);
                        if (guardado == 1)
                        {
                            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Registro guardado exitosamente');", true);

                        }
                        else
                            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Hubo un error al guardar los datos');", true);
                    }
                }
                else if (DropDownList1.Text == "panm")
                {

                    if (PhotoFile.HasFile)
                    {
                        strFileName = PhotoFile.PostedFile.FileName;
                        strFileName = Path.GetFileName(strFileName);

                        if (!Directory.Exists(strFolder))
                        {
                            Directory.CreateDirectory(strFolder);
                        }
                        // Save the uploaded file to the server.
                        strFilePath = strFolder + strFileName;
                        if (!File.Exists(strFilePath))
                        {
                            PhotoFile.PostedFile.SaveAs(strFilePath);
                        }
                        string product = Product.Text.Trim();
                        double price = Convert.ToDouble(Price.Text.Trim());
                        int qty = Convert.ToInt32(Quantity.Text.Trim());
                        string image = strFileName;
                        string tipo = DropDownList1.Text;
                        string nombreeng = productoeng.Text.Trim();
                        int guardado = metodos.Add_Product(product, price, qty, image, tipo, nombreeng);
                        int guardado1 = metodos.Add_pantalones_m(product, price, qty, image, tipo, nombreeng);
                        if (guardado == 1)
                        {
                            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Registro guardado exitosamente');", true);

                        }
                        else
                            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Hubo un error al guardar los datos');", true);
                    }
                }
                else if (DropDownList1.Text == "tra")
                {

                    if (PhotoFile.HasFile)
                    {
                        strFileName = PhotoFile.PostedFile.FileName;
                        strFileName = Path.GetFileName(strFileName);

                        if (!Directory.Exists(strFolder))
                        {
                            Directory.CreateDirectory(strFolder);
                        }
                        // Save the uploaded file to the server.
                        strFilePath = strFolder + strFileName;
                        if (!File.Exists(strFilePath))
                        {
                            PhotoFile.PostedFile.SaveAs(strFilePath);
                        }
                        string product = Product.Text.Trim();
                        double price = Convert.ToDouble(Price.Text.Trim());
                        int qty = Convert.ToInt32(Quantity.Text.Trim());
                        string image = strFileName;
                        string tipo = DropDownList1.Text;
                        string nombreeng = productoeng.Text.Trim();
                        int guardado = metodos.Add_Product(product, price, qty, image, tipo, nombreeng);
                        int guardado1 = metodos.Add_trajes(product, price, qty, image, tipo, nombreeng);
                        if (guardado == 1)
                        {
                            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Registro guardado exitosamente');", true);

                        }
                        else
                            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Hubo un error al guardar los datos');", true);
                    }
                }
                else if (DropDownList1.Text == "ves")
                {

                    if (PhotoFile.HasFile)
                    {
                        strFileName = PhotoFile.PostedFile.FileName;
                        strFileName = Path.GetFileName(strFileName);

                        if (!Directory.Exists(strFolder))
                        {
                            Directory.CreateDirectory(strFolder);
                        }
                        // Save the uploaded file to the server.
                        strFilePath = strFolder + strFileName;
                        if (!File.Exists(strFilePath))
                        {
                            PhotoFile.PostedFile.SaveAs(strFilePath);
                        }
                        string product = Product.Text.Trim();
                        double price = Convert.ToDouble(Price.Text.Trim());
                        int qty = Convert.ToInt32(Quantity.Text.Trim());
                        string image = strFileName;
                        string tipo = DropDownList1.Text;
                        string nombreeng = productoeng.Text.Trim();
                        int guardado = metodos.Add_Product(product, price, qty, image, tipo, nombreeng);
                        int guardado1 = metodos.Add_vestidos(product, price, qty, image, tipo, nombreeng);
                        if (guardado == 1)
                        {
                            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Registro guardado exitosamente');", true);

                        }
                        else
                            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Hubo un error al guardar los datos');", true);
                    }
                }
                else if (DropDownList1.Text == "zah")
                {

                    if (PhotoFile.HasFile)
                    {
                        strFileName = PhotoFile.PostedFile.FileName;
                        strFileName = Path.GetFileName(strFileName);

                        if (!Directory.Exists(strFolder))
                        {
                            Directory.CreateDirectory(strFolder);
                        }
                        // Save the uploaded file to the server.
                        strFilePath = strFolder + strFileName;
                        if (!File.Exists(strFilePath))
                        {
                            PhotoFile.PostedFile.SaveAs(strFilePath);
                        }
                        string product = Product.Text.Trim();
                        double price = Convert.ToDouble(Price.Text.Trim());
                        int qty = Convert.ToInt32(Quantity.Text.Trim());
                        string image = strFileName;
                        string tipo = DropDownList1.Text;
                        string nombreeng = productoeng.Text.Trim();
                        int guardado = metodos.Add_Product(product, price, qty, image, tipo, nombreeng);
                        int guardado1 = metodos.Add_zapatos_h(product, price, qty, image, tipo, nombreeng);
                        if (guardado == 1)
                        {
                            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Registro guardado exitosamente');", true);

                        }
                        else
                            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Hubo un error al guardar los datos');", true);
                    }
                }
                else if (DropDownList1.Text == "zam")
                {

                    if (PhotoFile.HasFile)
                    {
                        strFileName = PhotoFile.PostedFile.FileName;
                        strFileName = Path.GetFileName(strFileName);

                        if (!Directory.Exists(strFolder))
                        {
                            Directory.CreateDirectory(strFolder);
                        }
                        // Save the uploaded file to the server.
                        strFilePath = strFolder + strFileName;
                        if (!File.Exists(strFilePath))
                        {
                            PhotoFile.PostedFile.SaveAs(strFilePath);
                        }
                        string product = Product.Text.Trim();
                        double price = Convert.ToDouble(Price.Text.Trim());
                        int qty = Convert.ToInt32(Quantity.Text.Trim());
                        string image = strFileName;
                        string tipo = DropDownList1.Text;
                        string nombreeng = productoeng.Text.Trim();
                        int guardado = metodos.Add_Product(product, price, qty, image, tipo, nombreeng);
                        int guardado1 = metodos.Add_zapatos_m(product, price, qty, image, tipo, nombreeng);
                        if (guardado == 1)
                        {
                            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Registro guardado exitosamente');", true);

                        }
                        else
                            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Hubo un error al guardar los datos');", true);
                    }
                }
                else if (DropDownList1.Text == "acch")
                {

                    if (PhotoFile.HasFile)
                    {
                        strFileName = PhotoFile.PostedFile.FileName;
                        strFileName = Path.GetFileName(strFileName);

                        if (!Directory.Exists(strFolder))
                        {
                            Directory.CreateDirectory(strFolder);
                        }
                        // Save the uploaded file to the server.
                        strFilePath = strFolder + strFileName;
                        if (!File.Exists(strFilePath))
                        {
                            PhotoFile.PostedFile.SaveAs(strFilePath);
                        }
                        string product = Product.Text.Trim();
                        double price = Convert.ToDouble(Price.Text.Trim());
                        int qty = Convert.ToInt32(Quantity.Text.Trim());
                        string image = strFileName;
                        string tipo = DropDownList1.Text;
                        string nombreeng = productoeng.Text.Trim();
                        int guardado = metodos.Add_Product(product, price, qty, image, tipo, nombreeng);
                        int guardado1 = metodos.Add_accesorios_h(product, price, qty, image, tipo, nombreeng);
                        if (guardado == 1)
                        {
                            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Registro guardado exitosamente');", true);

                        }
                        else
                            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Hubo un error al guardar los datos');", true);
                    }
                }
                else if (DropDownList1.Text == "accm")
                {

                    if (PhotoFile.HasFile)
                    {
                        strFileName = PhotoFile.PostedFile.FileName;
                        strFileName = Path.GetFileName(strFileName);

                        if (!Directory.Exists(strFolder))
                        {
                            Directory.CreateDirectory(strFolder);
                        }
                        // Save the uploaded file to the server.
                        strFilePath = strFolder + strFileName;
                        if (!File.Exists(strFilePath))
                        {
                            PhotoFile.PostedFile.SaveAs(strFilePath);
                        }
                        string product = Product.Text.Trim();
                        double price = Convert.ToDouble(Price.Text.Trim());
                        int qty = Convert.ToInt32(Quantity.Text.Trim());
                        string image = strFileName;
                        string tipo = DropDownList1.Text;
                        string nombreeng = productoeng.Text.Trim();
                        int guardado = metodos.Add_Product(product,price,qty,image,nombreeng);
                        int guardado1 = metodos.Add_accesorios_m(product, price, qty, image, tipo, nombreeng);
                        if (guardado == 1)
                        {
                            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Registro guardado exitosamente');", true);

                        }
                        else
                            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Hubo un error al guardar los datos');", true);
                    }
                }
            }
        }
    }
}