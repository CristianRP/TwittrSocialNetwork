<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TwittrSocialNetwork.Account.Login" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
      <h1>Inicio de sesión</h1>
      <div class="card">
          <div class="card-body">
              <div class="form-group">
                <label for="formGroupExampleInput">Email</label>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Email" ToolTip="Email" AutoCompleteType="Email" type="email"/>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtEmail"
                                CssClass="text-danger" ErrorMessage="El campo de email de usuario es obligatorio." />
              </div>
              <div class="form-group">
                <label for="formGroupExampleInput">Password</label>
                <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" placeholder="Password" ToolTip="Password" AutoCompleteType="None" type="password"/>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPassword"
                                CssClass="text-danger" ErrorMessage="El campo de password de usuario es obligatorio." />
              </div>
              <asp:Button ID="btnLogin" runat="server" CssClass="btn btn-primary float-right" Text="Iniciar sesion" OnClick="btnLogin_Click"  />
          </div>
      </div>
</asp:Content>
