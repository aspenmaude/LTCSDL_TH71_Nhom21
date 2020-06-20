using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebTinTuc
{
    public partial class Home : System.Web.UI.MasterPage
    {
        DataWebDataContext dt = new DataWebDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                rpBanTin.DataSource = dt.BanTin_SelectALL();
                rpBanTin.DataBind(); 
            
            }
        }
    }
}