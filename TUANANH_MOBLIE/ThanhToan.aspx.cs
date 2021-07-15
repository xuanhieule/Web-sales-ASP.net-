using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace BAN_HANG
{
    public partial class ThanhToan : System.Web.UI.Page
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
            lblTT.Text = tongTien;

            lblTime.Text = DateTime.Now.ToString(" ddd - MM.dd.yyyy HH:mm:ss");

        }
        protected void btnDH_Click(object sender, EventArgs e)
        {
            string user = Session["user"].ToString();
            string[] values = new string[]{
                txtTen.Text,
                txtSDT.Text,
                txtDC.Text,
                txtGhiChu.Text,
                lblTime.Text,
                lblTT.Text,
                user


            };

            string[] pars = new string[]
            {
                "@NGUOI_NHAN",
                "@SDT_NHAN",
                "@DIA_CHI_NHAN",
                "@GHI_CHU_HANG",
                "@THOI_GIAN_DAT_HANG",
                "@GIA_TIEN",
                "@TAI_KHOAN"
            };

            if (xl.xuLyStored("thanhToan", values, pars) == 1)
                lblTB.Text = "Đặt hàng thành công";
            else
                lblTB.Text = "Đặt hàng thất bại";

        }

        protected void btnHuy_Click(object sender, EventArgs e)
        {
            Response.Redirect("GioHang.aspx");
        }
    }
}