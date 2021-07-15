using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace BAN_HANG
{
    public partial class DangKy : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        LopXLDuLieu xl = new LopXLDuLieu();

        protected void btnDK_Click(object sender, EventArgs e)
        {
            string[] values = new string[]{
                txtTK.Text,
                txtHT.Text,
                txtEmail.Text,
                txtMK.Text,
                "3"
            };

            string[] pars = new string[]
            {
                "@TEN_DANG_NHAP",
                "@HO_TEN",
                "@EMAIL",
                "@MAT_KHAU",
                "@QUYEN",
            };

            if (xl.xuLyStored("dangKy", values, pars) == 1)
                lblTB.Text = "Đăng ký thành công";
            else
                lblTB.Text = "Đăng ký thất bại";


        }
    }
}