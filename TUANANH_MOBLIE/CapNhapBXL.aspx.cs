using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BAN_HANG
{
    public partial class CapNhapBXL : System.Web.UI.Page
    {
        LopXLDuLieu xl = new LopXLDuLieu();
        protected void Page_Load(object sender, EventArgs e)
        {
            
                loadHangHoa();
                
            
        }

        private void loadHangHoa()
        {
            GridView1.DataSource = xl.docNhieuDLStored("selectBXLFull"
                , new string[] { }, new string[] { });
            GridView1.DataBind();
        }
        protected void btnThemMoi_Click(object sender, EventArgs e)
        {
            string[] values = new string[]{
            txtMa.Text,
            txtTen.Text,
            ddlNuocSX.SelectedValue,
            ddlNSX.SelectedValue,
            ddlNCC.SelectedValue,
            txtThongSo.Text
        };
            string[] parameters = new string[]{

            "@MA_BXL",
            "@TEN_BXL",
            "@TEN_QUOCGIA",
            "@TEN_NSX",
            "@TEN_NCC",
            "@GHI_CHU"
        };

            if (xl.xuLyStored("addNewBXL", values, parameters) == 1)
                lblThongBao.Text = "Cập nhật BXL thành công!";
            else
                lblThongBao.Text = "Cập nhật BXL thất bại!";

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
            ddlNSX.SelectedValue,
            ddlNCC.SelectedValue,
            txtThongSo.Text
        };
            string[] parameters = new string[]{

            "@MA_BXL",
            "@TEN_BXL",
            "@TEN_QUOCGIA",
            "@TEN_NSX",
            "@TEN_NCC",
            "@GHI_CHU"
        };

            if (xl.xuLyStored("updateBXL", values, parameters) == 1)
                 lblThongBao.Text = "sửa hàng hóa thành công!";
             else
                 lblThongBao.Text = "sửa hàng hóa thất bại!";

             loadHangHoa();
        }
    }
}