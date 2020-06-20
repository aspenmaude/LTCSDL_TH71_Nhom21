using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebTinTuc
{
    public partial class News : System.Web.UI.Page
    {
        DataWebDataContext dt = new DataWebDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            rpIdBanTin.DataSource = dt.BanTin_SelectID(Convert.ToInt32(Request["idbantin"]));
            rpIdBanTin.DataBind();

            rpChiTiet.DataSource = dt.ChiTiet_SelectBanTin(Convert.ToInt32(Request["idbantin"]));
            rpChiTiet.DataBind();

        }
    }
}