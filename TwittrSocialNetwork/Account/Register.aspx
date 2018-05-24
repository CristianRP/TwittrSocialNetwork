<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="TwittrSocialNetwork.Account.Register" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
      <h1>
          Registrarse
      </h1>
      <div class="card col-md-6" style="float: none; margin: 0 auto;">
          <div class="card-body">
              <asp:PlaceHolder runat="server" ID="ErrorMessage" Visible="false">
                <p class="text-danger">
                    <asp:Literal runat="server" ID="FailureText" />
                </p>
              </asp:PlaceHolder>
              <div class="form-group">
                <label for="formGroupExampleInput2">Nombre</label>
                <asp:TextBox ID="txtNombreCompleto" runat="server" CssClass="form-control" placeholder="Nombre Completo" ToolTip="Nombre" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtNombreCompleto"
                                CssClass="text-danger" ErrorMessage="El campo de nombre de usuario es obligatorio." />
              </div>
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
              <div class="form-group">
                <label for="formGroupExampleInput">Confirm Password</label>
                <asp:TextBox ID="txtConfirmPassword" runat="server" CssClass="form-control" placeholder="Password" ToolTip="Password" AutoCompleteType="None" type="password"/>
                <asp:CompareValidator ControlToValidate="txtConfirmPassword" ControlToCompare="txtPassword" CssClass="text-danger" ErrorMessage="Las contraseñas no coinciden!" runat="server" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtConfirmPassword"
                                CssClass="text-danger" ErrorMessage="El campo de password de usuario es obligatorio." />
              </div>
              <div class="form-group">
                <label for="formGroupExampleInput2">Nick</label>
                <asp:TextBox ID="txtUserName" runat="server" ToolTip="Nombre de usuario" placeholder="Nick name" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtUserName"
                                CssClass="text-danger" ErrorMessage="El campo de user name de usuario es obligatorio." />
              </div>
              <div class="form-group">
                <label for="formGroupExampleInput2">Telefono</label>
                <asp:TextBox runat="server" ID="txtTelefono" CssClass="form-control" CausesValidation="true" AutoCompleteType="Cellular" ToolTip="Telefono" placeholder="+(502) 58745698"/>
              </div>
              <div class="form-group">
                <label for="photoUser">Subir fotografia</label>
                <small class="form-text text-muted">Solo se permiten archivos con extesion jpg</small>
                <asp:FileUpload id="FileUploadControl" runat="server" />
              </div>
              <asp:Button ID="btnRegisterUser" runat="server" CssClass="btn btn-primary float-right" Text="Registrarse" OnClick="btnRegisterUser_Click" />
          </div>
      </div>
</asp:Content>
