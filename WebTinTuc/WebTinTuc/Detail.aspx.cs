using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebTinTuc
{
    public partial class Detail : System.Web.UI.Page
    {
        DataWebDataContext dt = new DataWebDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            int? so = null;
            int id = Convert.ToInt32(Request["id"]);
            int idbantin = Convert.ToInt32(Request["idbantin"]);

            
            dt.ChiTiet_LanXem(id, ref so);
            if (so == null) {
                so = 0;
            }
             
            int giatri = Convert.ToInt32(so) + 1;


            
            dt.ChiTiet_SLX(giatri,id);

            rbBanTin.DataSource = dt.BanTin_SelectID(idbantin);
            rbBanTin.DataBind();

            rbChiTiet.DataSource = dt.ChiTiet_SelectID(id);
            rbChiTiet.DataBind();

            


        }
    }
}