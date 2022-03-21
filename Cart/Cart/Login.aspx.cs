using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;

namespace Cart
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
           // Kết nối dữ liệu 
            string path = Server.MapPath("App_Data/Database1.mdf");
            SqlConnection ketnoi = new SqlConnection();
            ketnoi.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename = " + path + " Integrated Security = True";
            ketnoi.Open(); ;
            

            

        }

        protected void txtEmail_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click1(object sender, EventArgs e)
        {

        }
    }

}