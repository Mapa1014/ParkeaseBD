using MySql.Data.MySqlClient;
using Org.BouncyCastle.Asn1.Ocsp;
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
    public partial class create : System.Web.UI.Page
    {
        String cadenaConexion = ConfigurationManager.ConnectionStrings["conexion"].ConnectionString;
        string pa_reserva_id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadReservas();
                if (Request.Form["idReserva"] != null)
                {
                    pa_reserva_id = Request.Form["idReserva"];
                    //Response.Write("<script>alert('Se recibio: " + pa_reserva_id + "');</script>");
                    lblAccion.Text = "Actualizar reserva";                    
                    btnActualizar.Visible = true;
                    cargarDatos();
                }
                else
                {
                    lblAccion.Text = "Insertar Pais";
                    btnEnviar.Visible = true;
                }
            }
        }

        private void cargarDatos()
        {
            using (MySqlConnection conexion = new MySqlConnection(cadenaConexion))
            {
                try
                {
                    
                    String sql = "SELECT r.idReserva, r.fechaReser, r.horaInicReser, r.tipoReser, r.estadReser, r.horaFinReser, r.parqueadero_idparq, r.factura_idFactura FROM reserva r WHERE r.idReserva=@idReserva";
                    MySqlCommand command = new MySqlCommand(sql, conexion);
                    command.Parameters.AddWithValue("@idReserva", pa_reserva_id);
                    conexion.Open();
                    MySqlDataReader lector = command.ExecuteReader();
                    if (lector.HasRows)
                    {
                        lector.Read();
                        txtFechaReser.Text = lector["idReserva"].ToString();
                        txtHoraInicReser.Text = lector["idReserva"].ToString();
                        ddTipoReser.SelectedValue = lector["idReserva"].ToString();
                        ddEstadReser.SelectedValue = lector["idReserva"].ToString();
                        txtHoraFinReser.Text = lector["idReserva"].ToString();
                        ddParqueaderoId.SelectedValue = lector["idReserva"].ToString();
                        ddFacturaId.SelectedValue = lector["idReserva"].ToString();
                    }
                    else
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('no se encontro la reserva');", true);
                    }

                }
                catch (Exception ex)

                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Error al cargar reserva: " + HttpUtility.JavaScriptStringEncode(ex.Message) + "');", true);
                }
            }
        }

        private void LoadReservas()
        {
            
        }
        protected void BtnInsert_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string fechaReser = txtFechaReser.Text;
                string horaInicReser = txtHoraInicReser.Text;
                string tipoReser = ddTipoReser.Text;
                string estadReser = ddEstadReser.Text;
                string horaFinReser = txtHoraFinReser.Text;
                int parqueadero_idparq = int.Parse(ddParqueaderoId.SelectedValue);
                int factura_idFactura = int.Parse(ddFacturaId.SelectedValue);
                using (MySqlConnection conexion = new MySqlConnection(cadenaConexion))
                {
                    try
                    {

                        MySqlCommand command = new MySqlCommand("INSERT INTO reserva (fechaReser, horaInicReser, tipoReser, estadReser, horaFinReser, parqueadero_idparq, factura_idFactura) VALUES (@fechaReser, @horaInicReser, @tipoReser, @estadReser, @horaFinReser, @parqueadero_idparq, @factura_idFactura)", conexion);
                         
                        command.Parameters.AddWithValue("@fechaReser", fechaReser);
                        command.Parameters.AddWithValue("@horaInicReser", horaInicReser);
                        command.Parameters.AddWithValue("@tipoReser", tipoReser);
                        command.Parameters.AddWithValue("@estadReser", estadReser);
                        command.Parameters.AddWithValue("@horaFinReser", horaFinReser);
                        command.Parameters.AddWithValue("@parqueadero_idparq", parqueadero_idparq);
                        command.Parameters.AddWithValue("@factura_idFactura", factura_idFactura);

                        conexion.Open();
                        command.ExecuteNonQuery();

                        //Limpiar formulario
                        txtFechaReser.Text = "";
                        txtHoraInicReser.Text = "";
                        ddTipoReser.Text  = "";
                        ddEstadReser.Text = "";
                        txtHoraFinReser.Text = "";
                        ddParqueaderoId.Text = "";
                        ddFacturaId.Text = "";
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Reserva insertada exitosamente');", true);


                    }
                    catch (Exception ex)

                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Error al insertar reserva: " + HttpUtility.JavaScriptStringEncode(ex.Message) + "');", true);
                    }
                }
            }
        }

        protected void btnActualizar_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string fechaReser = txtFechaReser.Text;
                string horaInicReser = txtHoraInicReser.Text;
                string tipoReser = ddTipoReser.Text;
                string estadReser = ddEstadReser.Text;
                string horaFinReser = txtHoraFinReser.Text;
                int parqueadero_idparq = int.Parse(ddParqueaderoId.SelectedValue);
                int factura_idFactura = int.Parse(ddFacturaId.SelectedValue);
                using (MySqlConnection conexion = new MySqlConnection(cadenaConexion))
                {
                    try
                    {

                        MySqlCommand command = new MySqlCommand("UPDATE reserva SET fechaReser = @fechaReser, horaInicReser = @horaInicReser, tipoReser = @tipoReser, estadReser = @estadReser, horaFinReser=@horaFinReser, parqueadero_idparq=@parqueadero_idparq, factura_idFactura=@factura_idFactura WHERE idReserva=@idReserva", conexion);

                        command.Parameters.AddWithValue("@fechaReser", fechaReser);
                        command.Parameters.AddWithValue("@horaInicReser", horaInicReser);
                        command.Parameters.AddWithValue("@tipoReser", tipoReser);
                        command.Parameters.AddWithValue("@estadReser", estadReser);
                        command.Parameters.AddWithValue("@horaFinReser", horaFinReser);
                        command.Parameters.AddWithValue("@parqueadero_idparq", parqueadero_idparq);
                        command.Parameters.AddWithValue("@factura_idFactura", factura_idFactura);

                        conexion.Open();
                        int filasAfectadas = command.ExecuteNonQuery();
                        if(filasAfectadas > 0)
                        {
                            string script = "alert('Reserva actualizada exitosamente.'); window.location.href='reservas.aspx';";
                            ClientScript.RegisterStartupScript(this.GetType(), "RedirectOk", script, true);
                        }
                        else
                        {
                            string script = "alert('No se encontró reserva para actualizar.'); window.location.href='reservas.aspx';";
                            ClientScript.RegisterStartupScript(this.GetType(), "RedirectNf", script, true);
                        }

                        //Limpiar formulario
                        /*txtFechaReser.Text = "";
                        txtHoraInicReser.Text = "";
                        ddTipoReser.Text = "";
                        ddEstadReser.Text = "";
                        txtHoraFinReser.Text = "";
                        ddParqueaderoId.Text = "";
                        ddFacturaId.Text = "";
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Reserva insertada exitosamente');", true);
                        */

                    }
                    catch (Exception ex)

                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Error al actualizar reserva: " + HttpUtility.JavaScriptStringEncode(ex.Message) + "');", true);
                    }
                }
            }
        }
    }
}