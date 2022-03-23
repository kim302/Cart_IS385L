using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cart
{
    public partial class chitietdt : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string malay = Request.QueryString["ma"];
            string path = Server.MapPath("App_Data/CART_IS385L.mdf");
            SqlConnection ketnoi = new SqlConnection();
            ketnoi.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=" + path + ";Integrated Security=True";
            ketnoi.Open();
            //lưu dữ liệu
            SqlCommand luugiohang = new SqlCommand();
            luugiohang.CommandType = System.Data.CommandType.Text;
            luugiohang.Connection = ketnoi;
            string lenhsql = "select * from DienThoai where Masp=N'" + malay + "'";
            luugiohang.CommandText = lenhsql;
            SqlDataAdapter adap = new SqlDataAdapter(luugiohang.CommandText, ketnoi);
            DataSet ds = new DataSet();
            adap.Fill(ds, "DienThoai");
            DataTable tb = ds.Tables["DienThoai"];
            int dong = tb.Rows.Count;
            for (int i = 0; i < dong; i++)
            {
                Response.Write(tb.Rows[i]["Tensp"].ToString() + "<br>");
                string theimg = "<img src=" + tb.Rows[i]["HinhAnh"].ToString() + " width=200 height = 200 > ";
                Response.Write(theimg);
                Response.Write("<br>");
                Response.Write("<b>Cấu hình </b><br>" + tb.Rows[i]["Tensp"].ToString() + "<br>");
                Response.Write("<b>Màn hình: </b><br>" + tb.Rows[i]["ManHinh"].ToString() + "<br>");
                Response.Write("<b>Camera sau: </b><br>" + tb.Rows[i]["CamSau"].ToString() + "<br>");
                Response.Write("<b>Camera trước: </b><br>" + tb.Rows[i]["CamTruoc"].ToString() + "<br>");
                Response.Write("<b>Chip: </b><br>" + tb.Rows[i]["Chip"].ToString() + "<br>");
                Response.Write("<b>RAM: </b><br>" + tb.Rows[i]["Ram"].ToString() + "<br>");
                Response.Write("<b>Bộ nhớ trong: </b><br>" + tb.Rows[i]["Bonhotrong"].ToString() + "<br>");
                Response.Write("<b>SIM: </b><br>" + tb.Rows[i]["Sim"].ToString() + "<br>");
                Response.Write("<b>Pin, Sạc: </b><br>" + tb.Rows[i]["Pin"].ToString() + "<br>");
                Response.Write("<b>Giá bán:</b>" + tb.Rows[i]["DonGia"].ToString() + "VNĐ");
            }
        }
    }
}