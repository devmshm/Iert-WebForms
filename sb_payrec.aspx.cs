using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sb_payrec : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack == true)
        {
            //Session["APPLICATIONID"] = OrderID;
            //Session["amount"] = amount1;
            //Session["status"] = status1;
            //Session["tracking_id"] = amount1;
            //Session["order_id"] = order_id1;
            //Session["bank_ref_no"] = bank_ref_no1;
            if (Session["APPLICATIONID"].ToString() != null)
            {
                
                lblamount.Text = Session["amount"].ToString();
                lblappid.Text = Session["APPLICATIONID"].ToString();              
                lblstatus.Text = Session["status"].ToString();
                lbltra.Text = Session["tracking_id"].ToString();
            }
            else
            {
                Response.Redirect("index.aspx");
            }
        }
    }
}