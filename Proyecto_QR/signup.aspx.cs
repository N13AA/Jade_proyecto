using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_QR
{
    public partial class signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                bool logged_in = Convert.ToBoolean(Session["logged_in"]);
                if (logged_in)
                    Response.Redirect("index");

            }
            catch (Exception ex)
            {
                Response.Redirect("index");
            }
        }



        protected void Button1_Click(object sender, EventArgs e)
        {
            if (txtusuario.Text.Trim() != "" && txtclave.Text.Trim() != "" && txtconfirm.Text.Trim() != "" && txtfirst.Text.Trim() != "" && txtapellido.Text.Trim() != "" && txtgmail.Text.Trim() != "")
            {
                if (txtclave.Text == txtconfirm.Text)
                {
                    string username = txtusuario.Text.Trim();
            string pwd = txtclave.Text.Trim();
            string confirmPwd = txtconfirm.Text.Trim();
            string correo = txtgmail.Text.Trim();
            string nombre = txtfirst.Text.Trim();
            string apellido = txtapellido.Text.Trim();
            int registrado = metodos.Sign_Up(username, pwd, confirmPwd, correo, nombre, apellido);

            if (registrado != 0)
            {
                alerta.Text = "<script>Swal.fire('Registrado con éxito', '¡Gracias por preferirnos!', 'success'); </script>";

                txtfirst.Text = "";
                txtapellido.Text = "";
                txtusuario.Text = "";
                txtclave.Text = "";
                txtconfirm.Text = "";
                txtgmail.Text = "";
            }
                    else
                    {
                        alerta.Text = "<script>Swal.fire('Este usuario ya existe', 'Escoge un nuevo nombre de usuario', 'error'); </script>";
                    }
                }
                else
                {
                    alerta.Text = "<script>Swal.fire('Contraseña incorrecta', 'Repita su contraseña.', 'error');</script>";
                }
            }
            else
            {
                alerta.Text = "<script>Swal.fire('OOPS', 'No deje espacios en blanco', 'error') </script>";
            }

        }
    }
}

        
  
