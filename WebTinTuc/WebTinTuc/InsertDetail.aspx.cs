using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebTinTuc
{
    public partial class InsertDetail : System.Web.UI.Page
    {
        DataWebDataContext dt = new DataWebDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                drBanTin.DataTextField = "NoiDung";
                drBanTin.DataValueField = "IDBanTin";
                drBanTin.DataSource = dt.BanTin_SelectALL();
                drBanTin.DataBind();


            }
        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            dt.ChiTiet_Insert(txtTitle.Text, txtContent.Text,
                DateTime.Now, Convert.ToInt32(drBanTin.SelectedValue));
            Response.Redirect("index.aspx");
        }
    }
}