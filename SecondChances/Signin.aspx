﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Signin.aspx.cs" Inherits="SecondChances.Signin" %>
<%@ MasterType VirtualPath="~/Site.Master" %> 
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="main_content" runat="server" id="piter">
            <%--<div id="alert_placer" runat="server"></div>--%>
            <div class="left_ilustration">

            </div>
            <div class="login_content">
               <div style="width: 320px;">
                    <h1 style="text-align: center;"><img src="https://image.flaticon.com/icons/svg/1727/1727763.svg" width="35"/><br />Sing In</h1>
                    <div class="form_data">
                        <div class="form_col">
                             <span>Name: </span><asp:TextBox ID="data_name" runat="server"></asp:TextBox>
                        </div>
                        <div class="form_col">
                            <span>Username: </span><asp:TextBox ID="data_user" runat="server"></asp:TextBox>
                        </div>
                        <div class="form_col">
                             <span>Password: </span><asp:TextBox ID="data_pass" TextMode="Password" runat="server"></asp:TextBox>
                        </div>
                       <div class="form_col">
                             <span>Mail: </span><asp:TextBox ID="data_mail" TextMode="Email" runat="server"></asp:TextBox>
                       </div>
                        <div class="button_signin">
                            <asp:Button ID="btn_signin" runat="server" Text="Sign in" />
                            <%--<input type="button" id="btn_signin" value="Log in" onclick="validarFormulario()"/>--%>
                        </div>

                        <div class="dot_separation">
                            
                        </div>

                        <a class="ma-link" href="Login.aspx">¿Ya tienes una cuenta?</a>
                    </div>
                    
               </div>
            </div>
        </div>
    <script src="Scripts/jquery-3.3.1.js"></script>
        <script src="Scripts/Functionalities.js"></script>
        
        <script>

            function validarFormulario() {
                //Obtenemos el formulario
                var my_form = document.getElementById('form1');

                //Obtenemos los elementos del form
                let user = document.getElementById('data_user').value;
                let pass = document.getElementById('data_pass').value;
                console.log(user + " - " + pass);
                //validamos que se hayan metido datos
                if (user != "" && pass != "") {
                    //validamos que los datos no superen la longitud permitida
                    if (user.lenght > 50 || pass.lenght > 50) {
                        removeAlertos();
                    } else {
                        //mandamos el formulario
                        document.getElementById("form1").submit();
                    }

                } else {
                    removeAlertos();
                    document.getElementById('alert_placer').innerHTML += "<div class='ma_alert'>Faltan Datos<i class='material-icons closable'>close</i></div>";
                }
            }
        </script>
</asp:Content>
