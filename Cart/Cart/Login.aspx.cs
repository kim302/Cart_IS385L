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
            txtEmail.Text = (string)Session["Email"];
            txtPassword.Text = (string)Session["Password"];
        }

        protected void btnLogin_Click2(object sender, EventArgs e)
        {
            //Kết nối dữ liệu 
            string path = Server.MapPath("App_Data/CART_IS385L.mdf");
            SqlConnection connect = new SqlConnection();
            connect.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=" + path + ";Integrated Security=True ";
            connect.Open();

            Console.WriteLine(connect.State);
            SqlCommand lenhxem = new SqlCommand();
            lenhxem.Connection = connect;
            lenhxem.CommandType = System.Data.CommandType.Text;
            lenhxem.CommandText = "select * from USER where EMAIL=N'" + txtEmail.Text + "'and PASSWORD=N'" + txtPassword.Text + "'";
            var dong = lenhxem.ExecuteReader();
            if (dong.HasRows)
            {
                if (nhomatkhau.Checked)
                {
                    Session["EMAIL"] = txtEmail.Text;
                    Session["PASSWORD"] = txtPassword.Text;
                }
                dong.Close();
                Response.Redirect("TongQuan.aspx");
            }
        }

        protected void btnRegister_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }
    }
}