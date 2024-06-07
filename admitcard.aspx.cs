using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using QRCoder;
using System.Drawing;

public partial class admitcard : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string url = HttpContext.Current.Request.Url.AbsoluteUri;
        Uri myUri = new Uri(url);
        string _appno = HttpUtility.ParseQueryString(myUri.Query).Get("application_no");
        SqlConnection con = new SqlConnection(clsConnect.Connect);
        con.Open();
        SqlCommand cmd = new SqlCommand("SELECT * FROM BASIC_DETAILS JOIN CANDIDATE_DOCUMENTS ON BASIC_DETAILS.APPLICATION_NO=CANDIDATE_DOCUMENTS.APPLICATION_NO WHERE BASIC_DETAILS.APPLICATION_NO='" + _appno.ToString() + "'", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        foreach (DataRow dr in dt.Rows)
        {
            txtapp.InnerHtml = dr["APPLICATION_NO"].ToString();
            txtcat.InnerHtml = dr["CATEGORY"].ToString();
            txtdob.InnerHtml = dr["DOB"].ToString();
            txtfname.InnerHtml = dr["FATHER_NAME"].ToString();
            txtmname.InnerHtml = dr["MOTHER_NAME"].ToString();
            txtname.InnerHtml = dr["FIRST_NAME"].ToString() + ' ' + dr["MIDDLE_NAME"].ToString() + ' ' + dr["LAST_NAME"].ToString();
            txtroll.InnerHtml = dr["APPLICATION_NO"].ToString();
            txtsubcat.InnerHtml = dr["SUB_CATEGORY"].ToString();
            txtcourse.InnerHtml = dr["COURSE"].ToString();
            dvphoto.Src = "/photo/" + dr["CANDIDATE_PHOTO"].ToString();
            dvsign.Src = "/photo/" + dr["CANDIDATE_SIGN"].ToString();
            dvthumb.Src = "/photo/" + dr["CANDIDATE_THUMB"].ToString();

            // PlaceHolder plBarCode = (PlaceHolder)e.Row.FindControl("plBarCode");

            QRCodeGenerator qrGenerator = new QRCodeGenerator();
            QRCodeGenerator.QRCode qrCode = qrGenerator.CreateQrCode("http://iertentranc.in/admitcard.aspx?application_no='"+ dr["APPLICATION_NO"].ToString() + "'", QRCodeGenerator.ECCLevel.Q);
            System.Web.UI.WebControls.Image imgBarCode = new System.Web.UI.WebControls.Image();
            imgBarCode.Height = 100;
            imgBarCode.Width = 100;
            using (Bitmap bitMap = qrCode.GetGraphic(20))
            {
                using (MemoryStream ms = new MemoryStream())
                {
                    bitMap.Save(ms, System.Drawing.Imaging.ImageFormat.Png);
                    byte[] byteImage = ms.ToArray();
                    imgBarCode.ImageUrl = "data:image/png;base64," + Convert.ToBase64String(byteImage);
                }
                plBarCode.Controls.Add(imgBarCode);
            }
        }

    }
}