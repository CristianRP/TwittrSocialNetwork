using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CoreApplication;
using System.Threading;

namespace TwittrSocialNetwork.Models
{
    public class User : Comparador
    {
        public int Id { get; set; }
        public string Nombre { get; set; }
        public string Email { get; set; }
        public string UserName { get; set; }
        public string Password { get; set; }
        public string Telefono { get; set; }
        public string ImagePath { get; set; }

        public User() { }

        public User(string nombre, string email, string userName,
            string password, string telefono, string imagePath)
        {
            this.Id = Seq();
            this.Nombre = nombre;
            this.Email = email;
            this.UserName = userName;
            this.Password = password;
            this.Telefono = telefono;
            this.ImagePath = imagePath;
        }

        public bool igualQue(object q)
        {
            User u = (User)q;
            return Id == u.Id;
        }

        public bool menorQue(object q)
        {
            User u = (User)q;
            return Id < u.Id;
        }

        public bool menorIgualQue(object q)
        {
            User u = (User)q;
            return Id <= u.Id;
        }

        public bool mayorQue(object q)
        {
            User u = (User)q;
            return Id > u.Id;
        }

        public bool mayorIgualQue(object q)
        {
            User u = (User)q;
            return Id >= u.Id;
        }

        private static int orderNumber = 0;

        int Seq()
        {
            return Interlocked.Increment(ref orderNumber);
        }
    }
}