using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace BAN_HANG
{
    public partial class DangNhap : System.Web.UI.Page
    {
        LopXLDuLieu xl = new LopXLDuLieu();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDN_Click(object sender, EventArgs e)
        {
            Session["user"] = txtTK.Text;
            string[] values = new string[]
            {
                txtTK.Text,
                txtMK.Text
            };
            string[] pars = new string[]
            {
                "@TEN_DANG_NHAP",
                "@MAT_KHAU"
            };
            DataSet dt = xl.docNhieuDLStored("dangNhap", values, pars);

            if (dt.Tables[0].Rows.Count > 0) //Co du lieu dung trong CSDL
            {
                TaiKhoan tk = new TaiKhoan(
                    dt.Tables[0].Rows[0]["ID_TAI_KHOAN"] + ""
                    , dt.Tables[0].Rows[0][1] + ""
                    , dt.Tables[0].Rows[0][2] + ""
                    , dt.Tables[0].Rows[0][3] + ""
                    , dt.Tables[0].Rows[0][4] + "");
                Session["dn"] = tk; //Ghi nhớ thông tin đăng nhập
                if (dt.Tables[0].Rows[0][4] + "" == "1")
                    Response.Redirect("CapNhapHangHoa.aspx");
                else if (dt.Tables[0].Rows[0][4] + "" == "3")
                    Response.Redirect("Home.aspx");
                else if (dt.Tables[0].Rows[0][4] + "" == "2")
                    Response.Redirect("Mod.aspx");
                else if (dt.Tables[0].Rows[0][4] + "" == "4")
                    lblTB.Text = "Tài khoản bạn đã bị khóa";

            }

        }
    }
}