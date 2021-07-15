using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BAN_HANG
{
    public partial class QuanLyTaiKhoan : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        LopXLDuLieu xl = new LopXLDuLieu();
        protected void btnLuu_Click(object sender, EventArgs e)
        {
            string[] values = new string[]{
                txtTK.Text,
                txtQuyen.Text
            };

            string[] pars = new string[]
            {
                "@TEN_DANG_NHAP",
                "@QUYEN",
                
            };

            if (xl.xuLyStored("setTK", values, pars) == 1)
                lblTB.Text = "Lưu Thành Công";
            else
                lblTB.Text = "Lưu Thất Bại";
        }

        
    }
}