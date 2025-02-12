<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="ParkeaseBD.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="" />
    <link href="https://fonts.googleapis.com/css2?family=Protest+Strike&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" />
    <link rel="stylesheet" type="text/css" href="html/views/style/style.css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="contenedor-formulario contenedor">
            <div class="imagen-formulario">
                
            </div>
            <div class="formulario">
                <div class="texto-formulario">
                    <h1>¡Bienvenidos!</h1>
                </div>
                <br/>
                <div class="texto-formulario">
                    <h4>Inicia sesión</h4>
                </div>
                <table style="border-collapse: collapse; border: none;">
                    <tr>
                        <td style="border: none;">
                            <asp:Label ID="lblUsuario" runat="server" Text="Usuario*" ></asp:Label>
                        </td>
                        <td style="border: none;">
                            <asp:TextBox ID="txtUsuario" runat="server" AutoCompleteType="Disabled" placeholder="Usuario"></asp:TextBox>
                        </td>
                        <td style="border: none;">
                            <asp:RequiredFieldValidator 
                                ID="rfvUsuario" runat="server" 
                                ErrorMessage="Por favor digite un usuario"
                                ControlToValidate="txtUsuario" 
                                ForeColor="White" 
                                Display="Dynamic" 
                                CssClass="invalid-feedback" />
                        </td>
                    </tr>
                    <tr>
                        <td style="border: none;">
                            <asp:Label ID="lblPassword" runat="server" Text="Contraseña*"></asp:Label>
                        </td>
                        <td style="border: none;">
                            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" AutoCompleteType="Disabled"  placeholder="Contraseña"></asp:TextBox>
                        </td>
                        <td style="border: none;">
                            <asp:RequiredFieldValidator 
                                ID="rfvPassword" runat="server" 
                                ErrorMessage="Digite la contraseña." 
                                ControlToValidate="txtPassword" 
                                ForeColor="White" 
                                Display="Dynamic" 
                                CssClass="invalid-feedback" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align: center; border: none;">
                            <asp:Button ID="btnIngresar" runat="server" Text="Ingresar" CssClass="forma" OnClick="BtnIngresar_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align: center; border: none;">
                            <asp:Label ID="lblEstado" runat="server" ForeColor="Red"></asp:Label>
                        </td>
                    </tr>
                </table>
                <br/>
                <div class="olvidas"><a href="#">¿Olvidaste la contraseña?</a><br/>
                    <br/>
                </div>
                <div class="olvidas"><a href="registro.html">¿No tienes cuenta? Registrarse aquí.</a><br/>
                    <br/>
                </div>
                <label>Ingresa con</label><br/>
                <div class="logo"><a href="#">
                    <svg xmlns="http://www.w3.org/2000/svg" fill="currentColor" class="bi bi-google" viewBox="0 0 16 16">
                        <path d="M15.545 6.558a9.4 9.4 0 0 1 .139 1.626c0 2.434-.87 4.492-2.384 5.885h.002C11.978 15.292 10.158 16 8 16A8 8 0 1 1 8 0a7.7 7.7 0 0 1 5.352 2.082l-2.284 2.284A4.35 4.35 0 0 0 8 3.166c-2.087 0-3.86 1.408-4.492 3.304a4.8 4.8 0 0 0 0 3.063h.003c.635 1.893 2.405 3.301 4.492 3.301 1.078 0 2.004-.276 2.722-.764h-.003a3.7 3.7 0 0 0 1.599-2.431H8v-3.08z" />
                    </svg></a> </div>
                <div class="logo"><a href="#">
                    <svg xmlns="http://www.w3.org/2000/svg" fill="currentColor" class="bi bi-facebook" viewBox="0 0 16 16">
                        <path d="M16 8.049c0-4.446-3.582-8.05-8-8.05C3.58 0-.002 3.603-.002 8.05c0 4.017 2.926 7.347 6.75 7.951v-5.625h-2.03V8.05H6.75V6.275c0-2.017 1.195-3.131 3.022-3.131.876 0 1.791.157 1.791.157v1.98h-1.009c-.993 0-1.303.621-1.303 1.258v1.51h2.218l-.354 2.326H9.25V16c3.824-.604 6.75-3.934 6.75-7.951" />
                    </svg></a> </div>
            </div>
        </div>
    </form>


</body>
</html>
