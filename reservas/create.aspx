<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="create.aspx.cs" Inherits="ParkeaseBD.reservas.create" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="../html/views/style/style.css" />
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="main" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="cuadro-mapa">
        <h2><asp:Label ID="lblAccion" runat="server" Text="" />nueva reserva</h2>
    </div>
    <div class="contenedor-formulario contenedor">
        <div class="imagen-formulario-1"></div>
        <div class="formulario">
            <div class="texto-formulario">
                <h1>Realiza tu reservación </h1>
            </div>
            <br />
            <asp:Panel ID="reservationForm" runat="server" CssClass="row g-3 needs-validation" DefaultButton="btnEnviar">


                <div class="input">
                    <div class="col-md-12">
                        <asp:Label ID="lblFechaReser" runat="server" CssClass="form-label">Fecha de reserva</asp:Label>
                        <asp:TextBox ID="txtFechaReser" runat="server" CssClass="form-control" TextMode="Date" required="required"></asp:TextBox>
                        <asp:RequiredFieldValidator
                            ID="rfvReservationDateTime"
                            runat="server"
                            ErrorMessage="Debe seleccionar fecha"
                            ForeColor="Red"
                            Display="Dynamic"
                            ControlToValidate="txtFechaReser" />
                    </div>
                </div>
                <br />
                <div class="input">
                    <div class="col-md-12">
                        <asp:Label ID="lblHoraInicReser" runat="server" CssClass="form-label">Hora de inicio de la reserva</asp:Label>
                        <asp:TextBox ID="txtHoraInicReser" runat="server" CssClass="form-control" TextMode="Time" required="required"></asp:TextBox>
                        <asp:RequiredFieldValidator
                            ID="RequiredFieldValidator1"
                            runat="server"
                            ErrorMessage="Debe seleccionar hora."
                            ForeColor="Red"
                            Display="Dynamic"
                            ControlToValidate="txtHoraInicReser" />
                    </div>
                </div>
                <br />
                <div class="input">
                    <div class="col-md-12">
                        <asp:Label ID="lblTipoReser" runat="server" CssClass="form-label">Tipo de reserva</asp:Label>
                        <asp:DropDownList ID="ddTipoReser" runat="server" CssClass="form-select" required="required">
                            <asp:ListItem Value="">Seleccione</asp:ListItem>
                            <asp:ListItem Value="Hora">Hora</asp:ListItem>
                            <asp:ListItem Value="Diaria">Diaria</asp:ListItem>
                            <asp:ListItem Value="Semanal">Semanal</asp:ListItem>
                            <asp:ListItem Value="Mensual">Mensual</asp:ListItem>
                            <asp:ListItem Value="Anual">Anual</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator
                            ID="rfvReservationType"
                            runat="server"
                            ErrorMessage="Debe seleccionar un tipo."
                            ForeColor="Red"
                            Display="Dynamic"
                            ControlToValidate="ddTipoReser" />

                    </div>
                </div>
                <br />
                <div class="input">
                    <div class="col-md-12">
                        <asp:Label ID="lblEstadReser" runat="server" CssClass="form-label">Estado de la reserva</asp:Label>
                        <asp:DropDownList ID="ddEstadReser" runat="server" CssClass="form-select" required="required">
                            <asp:ListItem Value="">Seleccione</asp:ListItem>
                            <asp:ListItem Value="Confirmado">Confirmado</asp:ListItem>
                            <asp:ListItem Value="Cancelado">Cancelado</asp:ListItem>
                            <asp:ListItem Value="En espera">En espera</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator
                            ID="RequiredFieldValidator2"
                            runat="server"
                            ErrorMessage="Debe seleccionar un estado."
                            ForeColor="Red"
                            Display="Dynamic"
                            ControlToValidate="ddEstadReser" />

                    </div>
                </div>
                <br />

                <div class="input">
                    <div class="col-md-12">
                        <asp:Label ID="lblHoraFinReser" runat="server" CssClass="form-label">Hora fin de la reserva</asp:Label>
                        <asp:TextBox ID="txtHoraFinReser" runat="server" CssClass="form-control" TextMode="Time" required="required"></asp:TextBox>
                        <asp:RequiredFieldValidator
                            ID="RequiredFieldValidator3"
                            runat="server"
                            ErrorMessage="Debe seleccionar hora."
                            ForeColor="Red"
                            Display="Dynamic"
                            ControlToValidate="txtHoraFinReser" />
                    </div>
                </div>
                <br />
                <div class="input">
                    <div class="col-md-12">
                        <asp:Label ID="lblParqueaderoId" runat="server" CssClass="form-label">Parqueadero</asp:Label>
                        <asp:DropDownList ID="ddParqueaderoId" runat="server" CssClass="form-select" required="required">
                            <asp:ListItem Value="">Seleccione</asp:ListItem>
                            <asp:ListItem Value="1">1</asp:ListItem>
                            <asp:ListItem Value="2">2</asp:ListItem>
                            <asp:ListItem Value="3">3</asp:ListItem>
                            <asp:ListItem Value="4">4</asp:ListItem>
                            <asp:ListItem Value="5">5</asp:ListItem>
                            <asp:ListItem Value="6">6</asp:ListItem>
                            <asp:ListItem Value="7">7</asp:ListItem>
                            <asp:ListItem Value="8">8</asp:ListItem>
                            <asp:ListItem Value="9">9</asp:ListItem>
                            <asp:ListItem Value="10">10</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator
                            ID="RequiredFieldValidator4"
                            runat="server"
                            ErrorMessage="Debe seleccionar un estado."
                            ForeColor="Red"
                            Display="Dynamic"
                            ControlToValidate="ddParqueaderoId" />

                    </div>
                </div>

                <br />
                <div class="input">
                    <div class="col-md-12">
                        <asp:Label ID="lblFacturaId" runat="server" CssClass="form-label">Factura</asp:Label>
                        <asp:DropDownList ID="ddFacturaId" runat="server" CssClass="form-select" required="required">
                            <asp:ListItem Value="">Seleccione</asp:ListItem>
                            <asp:ListItem Value="1">1</asp:ListItem>
                            <asp:ListItem Value="2">2</asp:ListItem>
                            <asp:ListItem Value="3">3</asp:ListItem>
                            <asp:ListItem Value="4">4</asp:ListItem>
                            <asp:ListItem Value="5">5</asp:ListItem>
                            <asp:ListItem Value="6">6</asp:ListItem>
                            <asp:ListItem Value="7">7</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator
                            ID="RequiredFieldValidator5"
                            runat="server"
                            ErrorMessage="Debe seleccionar un estado."
                            ForeColor="Red"
                            Display="Dynamic"
                            ControlToValidate="ddFacturaId" />

                    </div>
                </div>
                <br />

                <div class="input">
                    <div class="col-7">
                        <asp:Button ID="btnEnviar" runat="server" Text="Enviar" CssClass="input" onClick="BtnInsert_Click" UseSubmitBehavior="true" Visible="false"/>
                        <asp:Button ID="btnActualizar" runat="server" Text="Actualizar reserva" CssClass="input" onClick="btnActualizar_Click" UseSubmitBehavior="true" Visible="false"/>
                        <asp:Button ID="btnRegresar" runat="server" Text="Regresar" CssClass="input" UseSubmitBehavior="true" OnClientClick="window.location.href='reservas.aspx'; return false;"/>
                    </div>
                </div>
            </asp:Panel>
        </div>
    </div>

</asp:Content>
