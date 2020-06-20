using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebTinTuc
{
    public partial class Registration : System.Web.UI.Page
    {
        DataWebDataContext dt = new DataWebDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (txtUserName.Text == "" || txtPassWord.Text == "")
            {

                lblNotification.Text = "Bạn ko được để trống tên truy cập và mật khẩu.";
                txtUserName.Text = "";
                txtPassWord.Text = "";
                txtUserName.Focus();
            }
            else {
                dt.DangNhap_Insert(txtUserName.Text, txtPassWord.Text);
                Response.Redirect("index.aspx");
            }
        }
    }
}