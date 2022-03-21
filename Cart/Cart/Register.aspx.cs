using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cart
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            //ket noi dl
            String url = Server.MapPath("App_Data/CART_IS385L.mdf");
            String strconn = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=" + url + ";Integrated Security = True";
            
            // Sử dụng đối tượng kết nối SQL
            SqlConnection con = new SqlConnection();
            con.ConnectionString = strconn;
            con.Open();

            //sql command
            String sql_command = "select * from USER where EMAIL=N'" + txtEmail.Text + "'";
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = sql_command;
            var dong = cmd.ExecuteReader();
            if (dong.HasRows)
            {
                //tb.Text = "Username available";
            }
            else
            {
                dong.Close();
                string sql_command_update = "INSERT INTO USER (EMAIL,PASSWORD,FULLNAME,BIRTHDAY,GENDER,ADDRESS,PHONENUMBER) VALUES(N'" +
                    txtEmail.Text + "',N'" + txtBassword.Text + "',N'" + txtFullName.Text + "',N'" + txtBirthday.Text + "',N'" 
                    + txtGender.Text + "',N'" + txtAddress.Text + "',N'" + txtNumberphone.Text + "')";
                SqlCommand lenhthem = new SqlCommand();
                lenhthem.Connection = con;
                lenhthem.CommandType = System.Data.CommandType.Text;
                lenhthem.CommandText = sql_command_update;
                lenhthem.ExecuteNonQuery();
                //tb.Text = "Sign Up successfully";
                //Session["username"] = txtusername.Text;
                Response.Redirect("Login.aspx");
                Thread.Sleep(3000);

            }
        }
    }
}