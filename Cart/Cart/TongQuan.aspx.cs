﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cart
{
    public partial class TongQuan : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void SelectedIndex1(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "redirect")
            {
                Label1.Text = DataList1.DataKeys[e.Item.ItemIndex].ToString();
                Session["ID"] = Label1.Text;
                Response.Redirect("ThongTinChiTiet.aspx");
            }
        }
        protected void SelectedIndex2(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "redirect")
            {
                Label1.Text = DataList2.DataKeys[e.Item.ItemIndex].ToString();
                Session["ID"] = Label1.Text;
                Response.Redirect("ThongTinChiTiet.aspx");
            }
        }
        protected void SelectedIndex3(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "redirect")
            {
                Label1.Text = DataList3.DataKeys[e.Item.ItemIndex].ToString();
                Session["ID"] = Label1.Text;
                Response.Redirect("ThongTinChiTiet.aspx");
            }
        }
        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DataList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DataList3_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void txtLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }
    }
}