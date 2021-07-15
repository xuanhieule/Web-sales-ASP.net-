using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BAN_HANG
{
    public partial class QuanLyDonHang : System.Web.UI.Page
    {
        LopXLDuLieu xl = new LopXLDuLieu();
        protected void Page_Load(object sender, EventArgs e)
        {
            loadDonHang();

        }
        private void loadDonHang()
        {
            GridView1.DataSource = xl.docNhieuDLStored("selectFullDonHang"
                , new string[] { }, new string[] { });
            GridView1.DataBind();
        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}