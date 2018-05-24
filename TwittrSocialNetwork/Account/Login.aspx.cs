using CoreApplication;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TwittrSocialNetwork.Models;

namespace TwittrSocialNetwork.Account
{
    public partial class Login : System.Web.UI.Page
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

        protected void btnLogin_Click(object sender, EventArgs e)
        {
           
        }

        public Nodo getNodo(Object n, Comparador cmp)
        {
            Nodo raizTmp = tree.raizArbol();
            if (tree.esVacio())
            {
                return null;
            }
            while (raizTmp.subarbolDcho() != null || raizTmp.subarbolIzdo() != null)
            {
                if (cmp.mayorQue(n))
                {
                    if (raizTmp.subarbolDcho() != null)
                    {
                        raizTmp = raizTmp.subarbolDcho();
                    }
                    else
                    {
                        return null;
                    }
                }
                else
                {
                    if (raizTmp.subarbolIzdo() != null)
                    {
                        raizTmp = raizTmp.subarbolIzdo();
                    }
                    else
                    {
                        return null;
                    }
                }
                if (cmp.igualQue(n))
                    return raizTmp;
            }
            return raizTmp;
        }
    }
}