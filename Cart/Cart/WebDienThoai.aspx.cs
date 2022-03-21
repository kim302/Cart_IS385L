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
    public partial class WebDienThoai : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string path = Server.MapPath("App_Data/DienThoai.mdf");
            SqlConnection ketnoi = new SqlConnection();
            ketnoi.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=" + path + ";Integrated Security=True";
            ketnoi.Open();
            //lưu dữ liệu
            SqlCommand luugiohang = new SqlCommand();
            luugiohang.CommandType = System.Data.CommandType.Text;
            luugiohang.Connection = ketnoi;
            string lenhsql = "select * from DSDT";
            luugiohang.CommandText = lenhsql;
            SqlDataAdapter adap = new SqlDataAdapter(luugiohang.CommandText, ketnoi);
            DataSet ds = new DataSet();
            adap.Fill(ds, "DSDT");
            DataTable tb = ds.Tables["DSDT"];
            int dong = tb.Rows.Count;
            for (int i = 0; i < dong; i++)
            {

                string mothea = "<a href=chitietdt.aspx?ma=" + tb.Rows[i]["MaDT"].ToString() + ">";
                Response.Write(mothea);
                string theimg = "<img src=" + tb.Rows[i]["HinhAnh"].ToString() + " width=200 height = 200 >" + " <br> "; ;
                Response.Write(theimg);
                Response.Write(tb.Rows[i]["TenDT"].ToString() + "<br>");
                Response.Write("<b>Thông số kỹ thuật:</b><br>" + tb.Rows[i]["ThongTin"].ToString() + "<br>");
                string dongthea = "</a >";
                Response.Write(dongthea);
            }
        }
    }
}