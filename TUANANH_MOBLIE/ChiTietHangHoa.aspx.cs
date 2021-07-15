using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace BAN_HANG
{
    public partial class ChiTietHangHoa : System.Web.UI.Page
    {
        LopXLDuLieu xl = new LopXLDuLieu();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                loadHangHoa();
            }

        }

        private void loadHangHoa()
        {
            DetailsView1.DataSource = xl.docNhieuDLStored("selectOneProduct"
                , new string[] { Request.QueryString["id"] }
                , new string[] { "@ID_HANG_HOA" });
            DetailsView1.DataBind();
           
        }

        protected void btnMuaHang_Click(object sender, EventArgs e)
        {
            DataTable dt;
            if (Session["GH"] == null) //neu chua co gio hang
            {
                dt = new DataTable();
                dt.Columns.Add("ID_HANG_HOA", typeof(int));
                dt.Columns.Add("TEN_HANG", typeof(string));
                dt.Columns.Add("HINH_ANH", typeof(string));
                dt.Columns.Add("SO_LUONG", typeof(int));
                dt.Columns.Add("DON_GIA", typeof(int));
                dt.Columns.Add("THANH_TIEN", typeof(int), "SO_LUONG*DON_GIA");

            }
            else
                dt = (DataTable)Session["GH"];



            bool daCo = false;
            for (int i = 0; i < dt.Rows.Count; i++)
                if (dt.Rows[i]["ID_HANG_HOA"] + "" == Request.QueryString["id"])
                {
                    dt.Rows[i]["SO_LUONG"] = int.Parse(dt.Rows[i]["SO_LUONG"] + "") + 1;
                    daCo = true;
                    break;
                }
            //neu ko tim thay thi 
            if (!daCo)
            {
                int sl = 1;
                DataSet dsTam = xl.docNhieuDLStored("selectOneProduct"
                    , new string[] { Request.QueryString["id"] }
                    , new string[] { "@ID_HANG_HOA" });
                DataRow dr = dt.NewRow();
                dr["ID_HANG_HOA"] = dsTam.Tables[0].Rows[0]["ID_HANG_HOA"];
                dr["TEN_HANG"] = dsTam.Tables[0].Rows[0]["TEN_HANG"];
                dr["HINH_ANH"] = dsTam.Tables[0].Rows[0]["HINH_ANH_LON"];
                dr["SO_LUONG"] = sl;
                dr["DON_GIA"] = dsTam.Tables[0].Rows[0]["GIA"];
                dt.Rows.Add(dr);
            }
            Session["GH"] = dt;
            Response.Redirect("GioHang.aspx");
        }


    }
}