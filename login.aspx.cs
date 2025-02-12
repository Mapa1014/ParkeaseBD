using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ParkeaseBD
{
    public partial class login : System.Web.UI.Page
    {
        String cadenaConexion = ConfigurationManager.ConnectionStrings["conexion"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnIngresar_Click(object sender, EventArgs e)
        {
            String email = txtUsuario.Text;
            String contrasena = txtPassword.Text;            
            using (MySqlConnection conexion = new MySqlConnection(cadenaConexion))
            {
                try
                {
                    conexion.Open();
                    String sql = "SELECT contrasena, email FROM personas WHERE email=@email and contrasena=@contrasena";
                    MySqlCommand command = new MySqlCommand(sql, conexion);                    
                    command.Parameters.AddWithValue("email", email);
                    command.Parameters.AddWithValue("contrasena", contrasena);
                    MySqlDataReader lector = command.ExecuteReader();
                    if (lector.HasRows)
                    {
                        Session["email"] = email;                        
                        Response.Redirect("inicio.aspx", false);
                    }
                    else
                    {
                        lblEstado.Text = "Usuario y/o contraseña invalidos";
                    }
                }
                catch (Exception ex)

                {
                    lblEstado.Text = "Error..." + ex.Message;
                }
            }

        }

    }
}

