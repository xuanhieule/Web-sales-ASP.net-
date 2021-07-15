using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace BAN_HANG
{
    public partial class CapNhapHangHoa : System.Web.UI.Page
    {
        LopXLDuLieu xl = new LopXLDuLieu();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLuu_Click(object sender, EventArgs e)
        {
            string fileName = Guid.NewGuid() + Path.GetExtension(FileUpload1.FileName);
            FileUpload1.SaveAs(Server.MapPath("./Images/HangHoa/") + fileName);
            string[] values = new string[]{
                txtMahang.Text,
                txtTenHang.Text,
                txtQuocGia.Text,
                txtBXL.Text,
                txtNSX.Text,
                txtNCC.Text,
                txtMH.Text,
                TxtRam.Text,
                txtGia.Text,
                fileName,
                txtThongSo.Text
            };

            string[] pars = new string[]
            {
                "@MA_HANG",
                "@TEN_HANG",
                "@ID_QUOC_GIA",
                "@ID_BO_XU_LY",
                "@ID_NHA_SAN_XUAT",
                "@ID_NHA_CUNG_CAP",
                "@MAN_HINH",
                "@RAM",
                "@DON_GIA",
                "@HINH_ANH",
                "@THONG_SO"
            };

            if (xl.xuLyStored("addNewProduct", values, pars) == 1)
                lblTB.Text = "Lưu Thành Công";
            else
                lblTB.Text = "Lưu Thất Bại";

        }

        protected void btnThayDoi_Click(object sender, EventArgs e)
        {
            string fileName = Guid.NewGuid() + Path.GetExtension(FileUpload1.FileName);
            FileUpload1.SaveAs(Server.MapPath("./Images/HangHoa/") + fileName);
            string[] values = new string[]{
                txtMahang.Text,
                txtTenHang.Text,
                txtQuocGia.Text,
                txtBXL.Text,
                txtNSX.Text,
                txtNCC.Text,
                txtMH.Text,
                TxtRam.Text,
                txtGia.Text,
                fileName,
                txtThongSo.Text
            };

            string[] pars = new string[]
            {
                "@MA_HANG",
                "@TEN_HANG",
                "@ID_QUOC_GIA",

                "@ID_BO_XU_LY",
                "@ID_NHA_SAN_XUAT",
                "@ID_NHA_CUNG_CAP",
                "@MAN_HINH",
                "@RAM",
                "@DON_GIA",
                "@HINH_ANH",
                "@THONG_SO"
            };

            if (xl.xuLyStored("updateProduct", values, pars) == 1)
                lblTB.Text = "Thay đổi thành công";
            else
                lblTB.Text = "Thay đổi thất bại";

        }
    }
}