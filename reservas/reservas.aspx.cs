using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ParkeaseBD.reservas
{
    public partial class reservas : System.Web.UI.Page
    {
        String cadenaConexion = ConfigurationManager.ConnectionStrings["conexion"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            CargarGridView();
        }

        private void CargarGridView()
        {
            using (MySqlConnection conexion = new MySqlConnection(cadenaConexion))
            {
                try
                {
                    conexion.Open();
                    String sql = "SELECT r.idReserva, r.fechaReser, r.horaInicReser, r.tipoReser, r.estadReser, r.horaFinReser, r.parqueadero_idparq, r.factura_idFactura FROM factura f INNER JOIN reserva r ON r.factura_idFactura=r.factura_idFactura GROUP BY r.idReserva";
                    MySqlCommand command = new MySqlCommand(sql, conexion);
                    MySqlDataAdapter da = new MySqlDataAdapter(command);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    gvDatosReservas.DataSource = dt;
                    gvDatosReservas.DataBind();
                }
                catch (Exception ex)

                {

                }
            }
        }

        protected void BtnCrearReserva_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("/create.aspx", false);
            Context.ApplicationInstance.CompleteRequest();
        }

        protected void gvDatosReservas_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            string idReserva = e.CommandArgument.ToString();
            if (e.CommandName == "Actualizar")
            {
                string targetUrl = "create.aspx";
                string formHtml = $"<form action='{targetUrl}' method='post' style='display:none;'>" +
                    $"<input type='hidden' name='idReserva' value='{idReserva}' />" +
                    "</form><script>document.forms[0].submit();</script>";
                Response.Clear();
                Response.Write(formHtml);
                Response.End();


            }
            else if (e.CommandName == "Eliminar")
            {
                eliminarReserva(idReserva);
            }
        }

        private void eliminarReserva(string idReserva)
        {
            using (MySqlConnection conexion = new MySqlConnection(cadenaConexion))
            {
                try
                {

                    MySqlCommand command = new MySqlCommand("DELETE FROM reserva WHERE idReserva = @idReserva", conexion);

                    command.Parameters.AddWithValue("@idReserva", idReserva);
                    conexion.Open();
                    int filasBorradas = command.ExecuteNonQuery();
                    if (filasBorradas > 0)
                    {
                        string script = "alert('Reserva eliminada exitosamente.'); window.location.href='reservas.aspx';";
                        ClientScript.RegisterStartupScript(this.GetType(), "RedirectNf", script, true);

                    }
                    else
                    {
                        string script = "alert('No se encontro reserva para eliminar.'); window.location.href='reservas.aspx';";
                        ClientScript.RegisterStartupScript(this.GetType(), "RedirectOk", script, true);
                    }
                }
                catch (Exception ex)

                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Error al insertar reserva: " + HttpUtility.JavaScriptStringEncode(ex.Message) + "');", true);
                }

            }
        }
    }
}