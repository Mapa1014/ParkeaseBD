<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="reservas.aspx.cs" Inherits="ParkeaseBD.reservas.reservas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="~../html/views/style/style.css" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="main" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="contenedor-centro">
        <asp:Label runat="server"></asp:Label> 
        <div class="contenedor-centro">
            <asp:TextBox ID="txtBuscarReserva" runat="server" CssClass="form-control" placeholder="Buscar reserva"></asp:TextBox>
            <asp:Button runat="server" Text="Buscar" CssClass="ingreso"/>
        </div>
        
        <asp:HyperLink ID="hlCrearReserva1" runat="server" NavigateUrl="~/reservas/create.aspx" CssClass="btnCrearReserva">Registrar nueva reserva</asp:HyperLink>
    </div>
    
  
    <asp:GridView ID="gvDatosReservas" runat="server" AutoGenerateColumns="false" OnRowCommand="gvDatosReservas_RowCommand" DataKeyNames="idReserva">
        <Columns>
            <asp:BoundField DataField="idReserva" HeaderText="Codigo reserva" />
            <asp:BoundField DataField="fechaReser" HeaderText="Fecha reserva" />
            <asp:BoundField DataField="horaInicReser" HeaderText="Hora inicio" />
            <asp:BoundField DataField="tipoReser" HeaderText="Tipo reserva" />
            <asp:BoundField DataField="estadReser" HeaderText="Estado reserva" />
            <asp:BoundField DataField="horaFinReser" HeaderText="Hora fin" />
            <asp:BoundField DataField="parqueadero_idparq" HeaderText="Id parqueadero" />
            <asp:BoundField DataField="factura_idFactura" HeaderText="Id Factura" />
            <asp:TemplateField HeaderText="Acciones">
                <ItemTemplate>
                    <asp:LinkButton ID="lbActualizar" runat="server" Text="Actualizar" CommandName="Actualizar" CommandArgument='<%# Eval("idReserva") %>'/>
                    &nbsp;&nbsp;
                    <asp:LinkButton ID="lblEliminar" runat="server" Text="Eliminar" CommandName="Eliminar" CommandArgument='<%# Eval("idReserva") %>' onClientClick="return confirm('Esta seguro de eliminar el registro');"/>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>

</asp:Content>

