﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="ParkeaseBD.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>EL usuario <% =Session["email"] %> Ingresó</h1>
            <asp:Button ID ="Button1" runat="server" Text="Salir" OnClick="BtnSalir_Click"/>
        </div>
    </form>
</body>
</html>
