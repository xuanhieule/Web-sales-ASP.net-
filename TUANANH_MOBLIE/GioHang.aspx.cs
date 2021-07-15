using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace BAN_HANG
{
    public partial class GioHang1 : System.Web.UI.Page
    {
        LopXLDuLieu xl = new LopXLDuLieu();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["GH"] != null)
                {
                    GridView1.DataSource = (DataTable)Session["GH"];
                    GridView1.DataBind();
                    
                }
            }
            DataTable tbGioHang = new DataTable();
            tbGioHang = (DataTable)Session["GH"];
            string tongTien = tbGioHang.Compute("Sum(THANH_TIEN)", "").ToString();
           
            lblTongtien.Text = tongTien;
            

        }
        

        

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            
            if (e.CommandName == "xoa")
            {
                int rowindex = Convert.ToInt32(e.CommandArgument);
                
                try
                {
                    DataTable dt = (DataTable)Session["GH"];
                    dt.Rows.RemoveAt(rowindex);
                    Session["GH"] = dt;
                    Response.Redirect("GioHang.aspx");
                }
                catch
                {
                    Response.Redirect("GioHang.aspx");
                }
            }

        }
    }
}