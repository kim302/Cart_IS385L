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
            

            if (txtEmail.Text != "ngan")
            {
                tb.Text = "Tên người dùng không chính xác ";
            }
            else
            {
                if (txtPassword.Text != "1234")
                {
                    tb.Text = "Mật khẩu không chính xác ";
                }

                else
                {   //biến session đưa tên kh từ txtuser ra biến ten kh để chuyển qua web: phiếu đăng kí sách 
                    //Session["tenkh"] = txtUser.Text;
                    // thông báo chúc mừng khi kh đăng nhập đúng tài khoản 
                    //tb.Text = "Chúc mừng bạn đã đăng nhập thành công ";
                    Response.Redirect("TongQuan.aspx");
                }
            }

        }
    }
}