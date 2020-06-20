using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebTinTuc
{
    public partial class index : System.Web.UI.Page
    {
        DataWebDataContext dt = new DataWebDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            rbChiTiet.DataSource = dt.ChiTiet_SelectHome();
            rbChiTiet.DataBind();

        }
    }
}