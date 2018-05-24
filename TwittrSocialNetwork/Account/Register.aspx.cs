using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CoreApplication;
using System.IO;
using TwittrSocialNetwork.Models;

namespace TwittrSocialNetwork.Account
{
    public partial class Register : System.Web.UI.Page
    {

        AVLTree tree;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                tree = new AVLTree();
                Session["AVLTREE"] = tree;
            }
            else
            {
                tree = (AVLTree)Session["AVLTREE"];
            }
        }

        protected void btnRegisterUser_Click(object sender, EventArgs e)
        {
            if (FileUploadControl.HasFile)
            {
                try
                {
                    if (FileUploadControl.PostedFile.ContentType == "image/jpeg" || FileUploadControl.PostedFile.ContentType == "image/png")
                    {
                        if (FileUploadControl.PostedFile.ContentLength < 102400)
                        {
                            string fileName = Path.GetFileName(FileUploadControl.FileName);
                            FileUploadControl.SaveAs(MapPath("~/UploadFiles/") + fileName);
                            tree.insertar(new User(txtNombreCompleto.Text, txtEmail.Text, 
                                txtPassword.Text, txtUserName.Text, txtTelefono.Text, MapPath("~/UploadFiles/") + fileName));
                        }
                    }
                    else
                    {
                        ErrorMessage.Visible = true;
                        FailureText.Text = "Solo se pueden imagenes jpg :'v";
                    }
                } catch
                {

                    ErrorMessage.Visible = true;
                    FailureText.Text = "Hubo un error de procesamiento, contacte con el administrador!";
                }
            }
        }
    }
}