using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Threading;

namespace Cart
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            //Kết nối dữ liệu 
            string path = Server.MapPath("App_Data/CART_IS385L.mdf");
            SqlConnection connect = new SqlConnection();
            connect.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=" + path + ";Integrated Security=True ";
            connect.Open();



            //Khai thác dữ liệu
            SqlCommand chon1 = new SqlCommand();
            chon1.Connection = connect;
            chon1.CommandType = System.Data.CommandType.Text;
            chon1.CommandText = "SELECT * from ACCOUNTS where EMAIL=N'" + txtEmail.Text + "'";
            var user = chon1.ExecuteReader();
            if (user.HasRows)
            {
                user.Close();
                //Khai thác dữ liệu
                SqlCommand chon2 = new SqlCommand();
                chon2.Connection = connect;
                chon2.CommandType = System.Data.CommandType.Text;
                chon2.CommandText = "SELECT * from ACCOUNTS where PASSWORD=N'" + txtPassword.Text + "'";
                var matkhau = chon2.ExecuteReader();
                if (matkhau.HasRows)
                {
                    matkhau.Close();
                    Response.Redirect("home.aspx");
                    Thread.Sleep(3000);
                }
                else
                {
                    matkhau.Close(); user.Close();

                }
            }
            else
            {
                user.Close();

            }

        }

        protected void btnRegister_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }

    }
}