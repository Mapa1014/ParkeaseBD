<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="inicio.aspx.cs" Inherits="ParkeaseBD.inicio" %>


<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="main" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">    
    <main>
        <div class="cuadro-mapa">
            <h2>Disfruta nuestros servicios</h2>
        </div>
        <br>
        <div class="c">
            <img class="imag" src="/html/images/parqueate.png">
            <br>
            <br>
            <h3>Parqueáte</h3>
            <br>
            <p>Disfruta nuestros servicios, parqueáte con total tranquilidad, en cualquiera de nuestros puntos registrados.</p>
            <br>
            <button class="button">Conocer más</button>
        </div>
        <div class="c">
            <img class="imag" src="https://images.pexels.com/photos/4870727/pexels-photo-4870727.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1">
            <br>
            <br>
            <h3>Lavadero</h3>
            <br>
            <p>Disfruta nuestros servicios, parqueáte con total tranquilidad, en cualquiera de nuestros puntos registrados.</p>
            <br>
            <button class="button">Conocer más</button>
        </div>
        <div class="c">
            <img class="imag" src="https://images.pexels.com/photos/29412564/pexels-photo-29412564/free-photo-of-taquillas-de-oficina-llaves-notas-adhesivas-de-colores-interior.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1">
            <br>
            <br>
            <h3>Servicios adicionales</h3>
            <br>
            <p>Disfruta nuestros servicios, parqueáte con total tranquilidad, en cualquiera de nuestros puntos registrados.</p>
            <br>
            <button class="button">Conocer más</button>
        </div>
        <br>
        <br>
        <br>
        <br>
        <div class="cuadro-mapa">
            <h2>Buscas algún parqueadero</h2>
        </div>
        <br>
        <div id="map-container">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2811.9349126921948!2d-74.06553702415597!3d4.65166336444891!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8e3f9a45d9f1654b%3A0x3d69138572d157f2!2sSENA%20-%20Centro%20De%20Servicios%20Financieros!5e0!3m2!1sen!2sco!4v1732903950065!5m2!1sen!2sco" width="1840" height="700" style="border: 0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
        </div>
        <br>
    </main>
</asp:Content>
