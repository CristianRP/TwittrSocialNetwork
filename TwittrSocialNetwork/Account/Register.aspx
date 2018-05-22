<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="TwittrSocialNetwork.Account.Register" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
      <h1>
          Registrarse
      </h1>
      <div class="card col-md-6" style="float: none; margin: 0 auto;">
          <div class="card-body">
              <div class="form-group">
                <label for="formGroupExampleInput2">Nombre</label>
                <input type="text" class="form-control" id="formGroupExampleInput2" placeholder="Nombre Completo">
              </div>
              <div class="form-group">
                <label for="formGroupExampleInput">Email</label>
                <input type="text" class="form-control" id="formGroupExampleInput" placeholder="Email">
              </div>
              <div class="form-group">
                <label for="formGroupExampleInput2">Nick</label>
                <input type="text" class="form-control" id="formGroupExampleInput6" placeholder="Nick">
              </div>
              <div class="form-group">
                <label for="formGroupExampleInput2">Telefono</label>
                <input type="text" class="form-control" id="formGroupExampleInput3" placeholder="+(502) 58745698">
              </div>
              <div class="form-group">
                <label for="photoUser">Subir fotografia</label>
                <small class="form-text text-muted">Solo se permiten archivos con extesion jpg</small>
                <asp:FileUpload id="FileUploadControl" runat="server" />
              </div>
              <button type="submit" class="btn btn-primary float-right">Registrarse</button>
          </div>
      </div>
</asp:Content>
