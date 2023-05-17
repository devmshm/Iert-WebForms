using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data;
using System.Data.SqlClient;
using System.Web.Script.Serialization;
using Entity;
using System.IO;
using static System.Net.Mime.MediaTypeNames;

/// <summary>
/// Summary description for regService
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
[System.Web.Script.Services.ScriptService]
public class regService : System.Web.Services.WebService
{

    public regService()
    {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod]
    public string HelloWorld()
    {
        return "Hello World";
    }
    public static DataTable GetDataResult(string CommandText)
    {
        SqlConnection con = new SqlConnection(clsConnect.Connect);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = CommandText;
        if (con.State == ConnectionState.Open) con.Close();
        con.Open();
        cmd.Connection = con;
        DataTable dtReturn = new DataTable();
        dtReturn.Load(cmd.ExecuteReader());
        con.Close();
        return dtReturn;
    }

    [WebMethod]
    public string register(register _register)
    {
        clsReg objLogic = new clsReg();
        DataTable result = objLogic.register(_register);
        var feedback = (from DataRow dr in result.Rows
                        select new
                        {
                            APPLICATION_NO = dr["APPLICATION_NO"].ToString(),
							 PASSWORDS = dr["PASSWORDS"].ToString(),
                        }).ToList();
        return new JavaScriptSerializer().Serialize(feedback);
        //return result.ToString();

    }
    [WebMethod]
    public string getstate()
    {
        string cmdtxt = @"SELECT * FROM STATES ORDER BY STATES ASC";

        DataTable dtReturn = GetDataResult(cmdtxt);

        var product = (from DataRow dr in dtReturn.Rows
                       select new
                       {
                           code = dr["STATE_ID"].ToString(),
                           html = dr["STATES"].ToString(),
                       }).ToList();
        return new JavaScriptSerializer().Serialize(product);


    }
    [WebMethod]
    public string getcity(string state_id)
    {
        string cmdtxt = @"SELECT * FROM CITIES WHERE STATE_ID='" + state_id + "' ";

        DataTable dtReturn = GetDataResult(cmdtxt);

        var product = (from DataRow dr in dtReturn.Rows
                       select new
                       {
                           CITY_ID = dr["CITY_ID"].ToString(),
                           CITY = dr["CITY"].ToString(),
                       }).ToList();
        return new JavaScriptSerializer().Serialize(product);


    }

    [WebMethod]
    public string getInfo(string _appno)
    {
        string cmdtxt = @"SELECT * FROM basic_details WHERE application_no='" + _appno + "' ";

        DataTable dtReturn = GetDataResult(cmdtxt);

        var product = (from DataRow dr in dtReturn.Rows
                       select new
                       {
                           application_no = dr["application_no"].ToString(),
                           first_name = dr["first_name"].ToString(),
                           course = dr["course"].ToString(),
                           middle_name = dr["middle_name"].ToString(),
                           Last_name = dr["Last_name"].ToString(),
                           mobile_no = dr["mobile_no"].ToString(),
                           Email_id = dr["Email_id"].ToString(),
                           gender = dr["gender"].ToString(),
                           category = dr["category"].ToString(),
                           sub_category = dr["sub_category"].ToString(),
                           ews = dr["ews"].ToString(),
                           caste = dr["caste"].ToString(),
                           father_name = dr["father_name"].ToString(),
                           mother_name = dr["mother_name"].ToString(),
                           dob = dr["dob"].ToString(),
                           isupdated = dr["isupdated"].ToString(),
                           ccode = dr["course_code"].ToString(),
                           nationality = dr["nationality"].ToString(),
                           emp = dr["employed"].ToString(),
                           scale = dr["incomescale"].ToString(),
                           domicile = dr["domicile"].ToString(),
                           religion = dr["religion"].ToString(),
                           adhar = dr["aadharno"].ToString(),
                           posted = dr["posted"].ToString(),



                       }).ToList();
        return new JavaScriptSerializer().Serialize(product);
    }

    [WebMethod]
    public string addInfo(string _appno)
    {
        string cmdtxt = @"SELECT * FROM address_details WHERE application_no='" + _appno + "' ";

        DataTable dtReturn = GetDataResult(cmdtxt);

        var product = (from DataRow dr in dtReturn.Rows
                       select new
                       {
                           add1 = dr["per_address_line1"].ToString(),
                           add2 = dr["per_address_line2"].ToString(),
                           add3 = dr["per_address_line3"].ToString(),
                           state = dr["per_states"].ToString(),
                           city = dr["per_city"].ToString(),
                           pin = dr["per_pincode"].ToString(),
                           isupdated = dr["isupdated"].ToString(),
                           postadd1 = dr["post_address_line1"].ToString(),
                           postadd2 = dr["post_address_line2"].ToString(),
                           postadd3 = dr["post_address_line3"].ToString(),
                           poststate = dr["post_states"].ToString(),
                           postcity = dr["post_city"].ToString(),
                           postpin = dr["post_pincode"].ToString(),
                       }).ToList();
        return new JavaScriptSerializer().Serialize(product);
    }

    [WebMethod]
    public string geteduInfo(string _appno)
    {
        string cmdtxt = @"SELECT * FROM Qualification WHERE application_no='" + _appno + "' ";

        DataTable dtReturn = GetDataResult(cmdtxt);

        var product = (from DataRow dr in dtReturn.Rows
                       select new
                       {
                           Hboard = dr["Hboard"].ToString(),
                           HSubjects = dr["HSubjects"].ToString(),
                           Hyear = dr["Hyear"].ToString(),
                           Hmax_mark = dr["Hmax_mark"].ToString(),
                           Hobt_marks = dr["Hobt_marks"].ToString(),
                           Hpassed = dr["Hpassed"].ToString(),
                           Hpstate = dr["Hpstate"].ToString(),
                           Hcollege = dr["Hcollege"].ToString(),
                           HStream = dr["HStream"].ToString(),

                           Ipassed = dr["Ipassed"].ToString(),
                           Ipstate = dr["Ipstate"].ToString(),
                           Icollege = dr["Icollege"].ToString(),
                           Iboard = dr["Iboard"].ToString(),
                           ISubjects = dr["ISubjects"].ToString(),
                           IStream = dr["IStream"].ToString(),
                           Iyear = dr["Iyear"].ToString(),
                           Imax_mark = dr["Imax_mark"].ToString(),
                           Iobt_marks = dr["Iobt_marks"].ToString(),

                           Gpassed = dr["Gpassed"].ToString(),
                           Gpstate = dr["Gpstate"].ToString(),
                           Gcollege = dr["Gcollege"].ToString(),                                                    
                           Gbranch = dr["Gbranch"].ToString(),
                           GSubjects = dr["GSubjects"].ToString(),
                           GStream = dr["GStream"].ToString(),
                           Gyear = dr["Gyear"].ToString(),
                           Gboard = dr["Gboard"].ToString(),
                           Gmax_mark = dr["Gmax_mark"].ToString(),
                           Gobt_marks = dr["Gobt_marks"].ToString(),

                           Dpassed = dr["Dpassed"].ToString(),
                           Dpstate = dr["Dpstate"].ToString(),
                           Dcollege = dr["Dcollege"].ToString(),                                                   
                           Dboard = dr["Dboard"].ToString(),
                           DSubjects = dr["DSubjects"].ToString(),
                           DStream = dr["DStream"].ToString(),
                           Dyear = dr["Dyear"].ToString(),
                           Dmax_mark = dr["dmax_marks"].ToString(),
                           Dobt_marks = dr["Dobt_marks"].ToString(),

                       }).ToList();
        return new JavaScriptSerializer().Serialize(product);
    }


    [WebMethod]
    public string upbasic(register _update)
    {
        clsReg objLogic = new clsReg();
        DataTable result = objLogic.upbasic(_update);
        var feedback = (from DataRow dr in result.Rows
                        select new
                        {

                        }).ToList();
        return new JavaScriptSerializer().Serialize(feedback);
        //return result.ToString();

    }

    [WebMethod]
    public string upaddress(register _update)
    {
        clsReg objLogic = new clsReg();
        DataTable result = objLogic.upaddress(_update);
        var feedback = (from DataRow dr in result.Rows
                        select new
                        {

                        }).ToList();
        return new JavaScriptSerializer().Serialize(feedback);
        //return result.ToString();

    }

    [WebMethod]
    public string upedu(register _update)
    {
        clsReg objLogic = new clsReg();
        DataTable result = objLogic.upedu(_update);
        var feedback = (from DataRow dr in result.Rows
                        select new
                        {

                        }).ToList();
        return new JavaScriptSerializer().Serialize(feedback);
        //return result.ToString();

    }

    [WebMethod]
    public string GetUSERData(string _appno, string _dataValue)
    {

        string CommandText = @"SELECT [APPLICATION_NO],[UTYP],[PASSWORDS],[course_code],[reg_ID] FROM BASIC_DETAILS WHERE APPLICATION_NO='" + _appno + "' AND PASSWORDS='" + _dataValue + "'";

        DataTable dt = new clsReg().ExecuteCommand(CommandText);

        var result = (from DataRow dr in dt.Rows
                      select new
                      {
                          reg_ID = dr["reg_ID"].ToString(),
                          APPLICATIONNO = dr["APPLICATION_NO"].ToString(),
                          PASSWORD = dr["PASSWORDS"].ToString(),
                          UTYP = dr["UTYP"].ToString(),
                          ccode = dr["course_code"].ToString(),
                          navigation = dr["utyp"].ToString() == "1" ? "https://iertentrance.in/registration.aspx" : "https://iertentrance.in/registration.aspx",
                          navigation1 = dr["utyp"].ToString() == "2" ? "https://iertentrance.in/registration.aspx" : "https://iertentrance.in/registration.aspx",
                      }).ToList();

        return new JavaScriptSerializer().Serialize(result).ToString();
    }

    [WebMethod]
    public string docInfo(string _appno)
    {
        string cmdtxt = @"SELECT * FROM CANDIDATE_DOCUMENTS WHERE APPLICATION_NO='" + _appno + "' ";

        DataTable dtReturn = GetDataResult(cmdtxt);

        var product = (from DataRow dr in dtReturn.Rows
                       select new
                       {
                           img = "/photo/" + dr["candidate_photo"].ToString(),
                           sign = "/photo/" + dr["candidate_sign"].ToString(),
                           thumb = "/photo/" + dr["candidate_thumb"].ToString(),

                       }).ToList();
        return new JavaScriptSerializer().Serialize(product);
    }

    [WebMethod]
    public string upphoto(string ext, string cimage, string appno, string mode)
    {
        clsReg objLogic = new clsReg();
        DataTable result = objLogic.upphoto(ext, cimage, appno, mode);
        var product = (from DataRow dr in result.Rows
                       select new
                       {

                       }).ToList();
        return new JavaScriptSerializer().Serialize(product);

    }

    [WebMethod]
    public string upsign(string ext, string simage, string appno)
    {
        string _documentPath = "";
        string _documentFile = "";

        if (ext != null)
        {
            _documentFile = appno + "." + ext;
            if (!System.IO.Directory.Exists(AppDomain.CurrentDomain.BaseDirectory + @"\sign\"))
                System.IO.Directory.CreateDirectory(AppDomain.CurrentDomain.BaseDirectory + @"\sign");
            _documentPath = AppDomain.CurrentDomain.BaseDirectory + @"\sign\" + _documentFile;
            byte[] bill = Convert.FromBase64String(simage);
            using (MemoryStream ms = new MemoryStream(bill))
            {
                FileStream fs = new FileStream(_documentPath, FileMode.Create);
                ms.WriteTo(fs);
            }

        }
        else
        {
            _documentPath = "";
            _documentFile = "";
        }
        using (SqlConnection con = new SqlConnection(clsConnect.Connect))
        {
            using (SqlCommand cmd = new SqlCommand(
                "UPDATE CANDIDATE_DOCUMENTS SET SPATH=@SPATH,CANDIDATE_SIGN=@CANDIDATE_SIGN WHERE APPLICATION_NO='" + appno + "'"))
            {
                cmd.Parameters.AddWithValue("@SPATH", _documentPath);
                cmd.Parameters.AddWithValue("@CANDIDATE_SIGN", _documentFile);
                cmd.Connection = con;
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }
        return null;
    }
    [WebMethod]
    public string upthumb(string ext, string timage, string appno)
    {
        string _documentPath = "";
        string _documentFile = "";

        if (ext != null)
        {
            _documentFile = appno + "." + ext;
            if (!System.IO.Directory.Exists(AppDomain.CurrentDomain.BaseDirectory + @"\thumb\"))
                System.IO.Directory.CreateDirectory(AppDomain.CurrentDomain.BaseDirectory + @"\thumb");
            _documentPath = AppDomain.CurrentDomain.BaseDirectory + @"\thumb\" + _documentFile;
            byte[] bill = Convert.FromBase64String(timage);
            using (MemoryStream ms = new MemoryStream(bill))
            {
                FileStream fs = new FileStream(_documentPath, FileMode.Create);
                ms.WriteTo(fs);
            }

        }
        else
        {
            _documentPath = "";
            _documentFile = "";
        }
        using (SqlConnection con = new SqlConnection(clsConnect.Connect))
        {
            using (SqlCommand cmd = new SqlCommand(
                "UPDATE CANDIDATE_DOCUMENTS SET TPATH=@TPATH,CANDIDATE_THUMB=@CANDIDATE_THUMB WHERE APPLICATION_NO='" + appno + "'"))
            {
                cmd.Parameters.AddWithValue("@TPATH", _documentPath);
                cmd.Parameters.AddWithValue("@CANDIDATE_THUMB", _documentFile);
                cmd.Connection = con;
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }
        return null;
    }

    [WebMethod]
    public string getprint(string _appno)
    {
        string cmdtxt = @"SELECT BASIC_DETAILS.ISUPDATED AS 'BASIC_UPDATED' ,
iif(ADDRESS_DETAILS.ISUPDATED='1',1,0) AS 'ADDRESS_UPDATED',
iif(QUALIFICATION.ISUPDATE='1',1,0) AS 'EDU_UPDATED',
iif(CANDIDATE_DOCUMENTS.ISPHOTOUPDATED='1',1,0) AS 'PHOTO_UPDATED',
iif(CANDIDATE_DOCUMENTS.ISSIGNUPDATED='1',1,0) AS 'SIGN_UPDATED',
iif(CANDIDATE_DOCUMENTS.ISTHUMBUPDATED='1',1,0) AS 'THUMB_UPDATED',
iif(EXAMCENTER.ISUPDATED='1',1,0) AS 'CENTER_UPDATED',
iif(FINALSUBMISSION.ISSUBMITTED='1',1,0) AS 'ISSUBMITTED',
iif(STATUS='Success',1,0) as ORDERSTATUS
FROM BASIC_DETAILS
LEFT JOIN ADDRESS_DETAILS ON BASIC_DETAILS.APPLICATION_NO=ADDRESS_DETAILS.APPLICATION_NO
LEFT JOIN CANDIDATE_DOCUMENTS ON BASIC_DETAILS.APPLICATION_NO=CANDIDATE_DOCUMENTS.APPLICATION_NO
LEFT JOIN QUALIFICATION ON BASIC_DETAILS.APPLICATION_NO=QUALIFICATION.APPLICATION_NO
LEFT JOIN PAYMENT ON cast(BASIC_DETAILS.APPLICATION_NO as nvarchar(max)) =PAYMENT.APPLICATIONNO AND STATUS='Success'
	LEFT JOIN EXAMCENTER ON BASIC_DETAILS.APPLICATION_NO =EXAMCENTER.APPLICATION_NO
	LEFT JOIN FINALSUBMISSION ON BASIC_DETAILS.APPLICATION_NO =FINALSUBMISSION.APPLICATION_NO
WHERE  BASIC_DETAILS.APPLICATION_NO='" + _appno + "' ";

        DataTable dtReturn = GetDataResult(cmdtxt);

        var product = (from DataRow dr in dtReturn.Rows
                       select new
                       {
                           BASIC_UPDATED = dr["BASIC_UPDATED"].ToString(),
                           ADDRESS_UPDATED = dr["ADDRESS_UPDATED"].ToString(),
                           EDU_UPDATED = dr["EDU_UPDATED"].ToString(),
                           PHOTO_UPDATED = dr["PHOTO_UPDATED"].ToString(),
                           SIGN_UPDATED = dr["SIGN_UPDATED"].ToString(),
                           THUMB_UPDATED = dr["THUMB_UPDATED"].ToString(),
						    CENTER_UPDATED = dr["CENTER_UPDATED"].ToString(),
						   ORDERSTATUS=dr["ORDERSTATUS"].ToString().ToUpper(),
						    ISSUBMITTED = dr["ISSUBMITTED"].ToString(),

                       }).ToList();
        return new JavaScriptSerializer().Serialize(product);
    }

    [WebMethod]
    public string center(string center1, string center2, string center3, string center4, string appno)
    {
        clsReg objLogic = new clsReg();
        DataTable result = objLogic.center(center1, center2, center3, center4, appno);
        var feedback = (from DataRow dr in result.Rows
                        select new
                        {

                        }).ToList();
        return new JavaScriptSerializer().Serialize(feedback);
        //return result.ToString();

    }
    [WebMethod]
    public string centerInfo(string _appno)
    {
        string cmdtxt = @"SELECT * FROM EXAMCENTER WHERE APPLICATION_NO='" + _appno + "' ";

        DataTable dtReturn = GetDataResult(cmdtxt);

        var product = (from DataRow dr in dtReturn.Rows
                       select new
                       {
                           center1 = dr["center1"].ToString(),
                           center2 = dr["center2"].ToString(),
                           center3 = dr["center3"].ToString(),
                           center4 = dr["center4"].ToString(),

                       }).ToList();
        return new JavaScriptSerializer().Serialize(product);
    }

    [WebMethod]
    public string submit(string appno)
    {
        clsReg objLogic = new clsReg();
        DataTable result = objLogic.submit(appno);
        var feedback = (from DataRow dr in result.Rows
                        select new
                        {

                        }).ToList();
        return new JavaScriptSerializer().Serialize(feedback);
    }

    [WebMethod]
    public string submitinfo(string _appno)
    {
        string cmdtxt = @"SELECT * FROM FINALSUBMISSION WHERE APPLICATION_NO='" + _appno + "' ";

        DataTable dtReturn = GetDataResult(cmdtxt);

        var product = (from DataRow dr in dtReturn.Rows
                       select new
                       {
                           issubmitted = dr["ISSUBMITTED"].ToString(),
                          

                       }).ToList();
        return new JavaScriptSerializer().Serialize(product);
    }
											
[WebMethod]
    public string getpayInfo(string _appno)
    {
        string cmdtxt = @"SELECT * FROM payment WHERE APPLICATIONNO='" + _appno + "' AND STATUS='Success'";

        DataTable dtReturn = GetDataResult(cmdtxt);

        var product = (from DataRow dr in dtReturn.Rows
                       select new
                       {
                           refid = dr["TRACKING_ID"].ToString(),
                           pstatus = dr["status"].ToString(),
                           paydate = dr["addeddate"].ToString(),
                           amount = dr["AMOUNT"].ToString(),

                       }).ToList();
        return new JavaScriptSerializer().Serialize(product);
    }

[WebMethod]
    public string getpayInfo1(string _appno)
    {
        string cmdtxt = @"SELECT * FROM payment WHERE APPLICATIONNO='" + _appno + "' ";

        DataTable dtReturn = GetDataResult(cmdtxt);

        var product = (from DataRow dr in dtReturn.Rows
                       select new
                       {
                           refid = dr["TRACKING_ID"].ToString(),
                           pstatus = dr["status"].ToString(),
                           paydate = dr["addeddate"].ToString(),
                           amount = dr["AMOUNT"].ToString(),

                       }).ToList();
        return new JavaScriptSerializer().Serialize(product);
    }											
	    [WebMethod]
    public string GETREPORT()
    {
        string cmdtxt = @"SELECT COURSE,COURSE_CODE,sum(REGISTER+BASIC_UPDATED) TOTAL,SUM(REGISTER)REGISTER,SUM(BASIC_UPDATED) BASIC_UPDATED,SUM(ADDRESS_UPDATED)ADDRESS_UPDATED,
                          SUM(EDU_UPDATED)EDU_UPDATED,SUM(PHOTO_UPDATED)PHOTO_UPDATED,SUM(SIGN_UPDATED)SIGN_UPDATED,
                          SUM(THUMB_UPDATED)THUMB_UPDATED,SUM(PAYMENTSTATUS)PAYMENTSTATUS,SUM(SUBMITTED)SUBMIT FROM (
                          SELECT BASIC_DETAILS.COURSE,BASIC_DETAILS.COURSE_CODE,IIF(BASIC_DETAILS.ISUPDATED IS NULL,1,0) 'REGISTER' ,
                          IIF(BASIC_DETAILS.ISUPDATED='1',1,0) 'BASIC_UPDATED',
                          IIF(ADDRESS_DETAILS.ISUPDATED='1',1,0) AS 'ADDRESS_UPDATED',
                          IIF(QUALIFICATION.ISUPDATE='1',1,0) AS 'EDU_UPDATED',
                          IIF(CANDIDATE_DOCUMENTS.ISPHOTOUPDATED='1',1,0) AS 'PHOTO_UPDATED',
                          IIF(CANDIDATE_DOCUMENTS.ISSIGNUPDATED='1',1,0) AS 'SIGN_UPDATED',
                          IIF(CANDIDATE_DOCUMENTS.ISTHUMBUPDATED='1',1,0) AS 'THUMB_UPDATED',
                          IIF(STATUS='SUCCESS',1,0) AS PAYMENTSTATUS,
                          IIF(ISSUBMITTED='1',1,0) SUBMITTED
                          FROM BASIC_DETAILS
                          LEFT JOIN ADDRESS_DETAILS ON BASIC_DETAILS.APPLICATION_NO=ADDRESS_DETAILS.APPLICATION_NO
                          LEFT JOIN CANDIDATE_DOCUMENTS ON BASIC_DETAILS.APPLICATION_NO=CANDIDATE_DOCUMENTS.APPLICATION_NO
                          LEFT JOIN QUALIFICATION ON BASIC_DETAILS.APPLICATION_NO=QUALIFICATION.APPLICATION_NO
                          LEFT JOIN PAYMENT ON BASIC_DETAILS.APPLICATION_NO=PAYMENT.APPLICATIONNO AND STATUS='SUCCESS'
                          LEFT JOIN FINALSUBMISSION ON BASIC_DETAILS.APPLICATION_NO=FINALSUBMISSION.APPLICATION_NO
                          WHERE BASIC_DETAILS.APPLICATION_NO NOT IN('230001','2300013'))X
                          GROUP BY X.COURSE,X.COURSE_CODE ";

        DataTable dtReturn = GetDataResult(cmdtxt);

        var product = (from DataRow dr in dtReturn.Rows
                       select new
                       {
						   TOTAL = dr["TOTAL"].ToString(),
                           REGISTER = dr["REGISTER"].ToString(),
                           COURSE = dr["COURSE"].ToString(),
                           BASIC_UPDATED = dr["BASIC_UPDATED"].ToString(),
                           ADDRESS_UPDATED = dr["ADDRESS_UPDATED"].ToString(),
                           EDU_UPDATED = dr["EDU_UPDATED"].ToString(),
                           PHOTO_UPDATED = dr["PHOTO_UPDATED"].ToString(),
                           SIGN_UPDATED = dr["SIGN_UPDATED"].ToString(),
                           THUMB_UPDATED = dr["THUMB_UPDATED"].ToString(),
                           PAYMENTSTATUS = dr["PAYMENTSTATUS"].ToString(),
                           SUBMIT = dr["SUBMIT"].ToString(),

                       }).ToList();
        return new JavaScriptSerializer().Serialize(product);
    }	
											
 [WebMethod]
    public string GetotpData(string _appno, string _dob)
    {
        string CommandText = @"SELECT [APPLICATION_NO],[PASSWORDS],[DOB],[MOBILE_NO] FROM BASIC_DETAILS WHERE APPLICATION_NO='" + _appno + "' AND DOB='" + _dob + "'";
        DataTable dt = new clsReg().ExecuteCommand(CommandText);
        var result = (from DataRow dr in dt.Rows
                      select new
                      {
                          APPLICATION_NO = dr["APPLICATION_NO"].ToString(),
                          phone = dr["MOBILE_NO"].ToString(),
                          DOB = dr["DOB"].ToString(),

                      }).ToList();
        return new JavaScriptSerializer().Serialize(result).ToString();
    }

    [WebMethod]
    public string sendotp(string _appno, string _cont)
    {
        DataTable dt = new DataTable();
        clsReg clsLogic = new clsReg();
        dt = clsLogic.otp(_appno, _cont);
        var RESULT = (from DataRow dr in dt.Rows
                      select new
                      {
                          otp = dr["otp"].ToString(),
                      }).ToList();
        return new JavaScriptSerializer().Serialize(RESULT).ToString();
    }


    [WebMethod]
    public string updatepassword(string _appno, string _confirmpass)
    {
        DataTable dt = new DataTable();
        clsReg clsLogic = new clsReg();
        dt = clsLogic.updatepass(_appno, _confirmpass);
        var RESULT = (from DataRow dr in dt.Rows
                      select new
                      {
                         // otp = dr["otp"].ToString(),
                      }).ToList();
        return new JavaScriptSerializer().Serialize(RESULT).ToString();
    }											
}