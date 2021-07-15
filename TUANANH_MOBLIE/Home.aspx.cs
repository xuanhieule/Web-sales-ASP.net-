using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace BAN_HANG
{
    public partial class Home : System.Web.UI.Page
    {
        LopXLDuLieu xl = new LopXLDuLieu();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string[] values = new string[] { };
                string[] parameters = new string[] { };
                DataList1.DataSource =
                    xl.docNhieuDLStored("selectAllProducts", values, parameters);
                DataList1.DataBind();
            }

        }
    }
}