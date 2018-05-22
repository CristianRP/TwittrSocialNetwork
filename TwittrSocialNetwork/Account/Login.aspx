<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TwittrSocialNetwork.Account.Login" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
      <h1>Inicio de sesión</h1>
      <div class="card">
          <div class="card-body">
              <div class="form-group">
                <label for="formGroupExampleInput">Email</label>
                <input type="text" class="form-control" id="formGroupExampleInput" placeholder="Email">
              </div>
              <div class="form-group">
                <label for="formGroupExampleInput2">Password</label>
                <input type="text" class="form-control" id="formGroupExampleInput2" placeholder="Password">
              </div>
              <button type="submit" class="btn btn-primary">Log in</button>
          </div>
      </div>
</asp:Content>
