using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BAN_HANG
{
    public partial class CapNhapNSX : System.Web.UI.Page
    {
        LopXLDuLieu xl = new LopXLDuLieu();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private void loadHangHoa()
        {
            GridView1.DataSource = xl.docNhieuDLStored("selectFullNSX"
                , new string[] { }, new string[] { });
            GridView1.DataBind();
        }
        protected void btnThemMoi_Click(object sender, EventArgs e)
        {
            string[] values = new string[]{
            txtMa.Text,
            txtTen.Text,
            ddlNuocSX.SelectedValue,
            
        };
            string[] parameters = new string[]{

            "@MA_NSX",
            "@TEN_NSX",
            "@TEN_QUOC_GIA",
            
        };

            if (xl.xuLyStored("addNewNSX", values, parameters) == 1)
                lblThongBao.Text = "Cập nhật NSX thành công!";
            else
                lblThongBao.Text = "Cập nhật NSX thất bại!";

            loadHangHoa();
        }
        /*protected void btnxoa_click(object sender, eventargs e)
        {
            string[] values = new string[]{
            ((button)sender).commandargument
        };
            string[] parameters = new string[]{
            "@id_bxl"
        };

            if (xl.xulystored("deletebxl", values, parameters) == 1)
                lblthongbao.text = "xóa bxl thành công!";
            else
                lblthongbao.text = "xóa bxl hóa thất bại!";
            loadhanghoa();
        }*/
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }



        protected void btnHieuChinh_Click(object sender, EventArgs e)
        {

            string[] values = new string[]{
            txtMa.Text,
            txtTen.Text,
            ddlNuocSX.SelectedValue,

        };
            string[] parameters = new string[]{

            "@MA_NSX",
            "@TEN_NSX",
            "@TEN_QUOC_GIA",

        };

            if (xl.xuLyStored("updateNSX", values, parameters) == 1)
                lblThongBao.Text = "sửa hàng hóa thành công!";
            else
                lblThongBao.Text = "sửa hàng hóa thất bại!";

            loadHangHoa();
        }
    }
}