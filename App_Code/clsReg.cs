using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using Entity;
using CCDB;
using System.IO;
using System.Net;
using System.Reflection;
using System.Net.Mail;
using System.Security.Cryptography;

/// <summary>
/// Summary description for clsReg
/// </summary>
public class clsReg
{
    public clsReg()
    {

        //
        // TODO: Add constructor logic here
        //
    }
    public DataTable ExecuteCommand(string CommandText)
    {
        System.Net.ServicePointManager.ServerCertificateValidationCallback += delegate { return true; };
        CCDB.DataClass ObjDataClass = new CCDB.DataClass(clsConnect.Connect);
        SqlParameter[] arrparam = new SqlParameter[1];
        arrparam[0] = new SqlParameter("@COMMANDTEXT", SqlDbType.NVarChar);
        arrparam[0].Value = CommandText;

        DataTable dtResult = ObjDataClass.ExecuteDataReader("PROC_EXECUTECOMMAND", arrparam);
        return dtResult;
    }
    #region "SMS"

    public void SendSms(string Mobile, string Msg)
    {
        #region API SMS
        string html = "";
        Uri objURI = new Uri("http://api.sms2support.com/sendsms?uname=qesociety&pwd=india_321&senderid=RPREXM&to=" + Mobile + "&msg=" + HttpUtility.UrlEncode(Msg) + "&route=T&peid=1701159480983848837&tempid=1707168050724843609");

        WebRequest objWebRequest = WebRequest.Create(objURI);
        WebResponse objWebRewponse = objWebRequest.GetResponse();
        Stream objStream = objWebRewponse.GetResponseStream();
        StreamReader objSreamReader = new StreamReader(objStream);
        html = objSreamReader.ReadToEnd();

        #endregion
    }
    #endregion "SMS"
    #region "EMail"
    public int SendEmailData(string frommail, string frompassword, string fromsmtpclient, string toemail, string subjectmsg, string message)
    {
        try
        {
            using (MailMessage mm = new MailMessage(frommail, toemail))
            {
                mm.Subject = subjectmsg;
                mm.Body = message;
                mm.IsBodyHtml = true;
                SmtpClient smtpclient = new SmtpClient();
                smtpclient.Host = fromsmtpclient;
                smtpclient.EnableSsl = false;
                NetworkCredential networkcredential = new NetworkCredential(frommail, frompassword);
                smtpclient.UseDefaultCredentials = false;
                smtpclient.Credentials = networkcredential;
                smtpclient.Port = 25;
                smtpclient.Send(mm);
            }
            return 1;
        }
        catch (Exception ex)
        {
            return 0;
        }
    }
    #endregion "EMail"
    public DataTable register(register _register)
    {
        SqlParameter[] arrParams = new SqlParameter[10];
        //string rowsaffected;
        int index = 0;


        arrParams[index] = new SqlParameter("@reg_Id", SqlDbType.BigInt);
        arrParams[index].Value = _register.reg_Id;
        index++;
        arrParams[index] = new SqlParameter("@course", SqlDbType.NVarChar);
        arrParams[index].Value = _register.course.ToUpper();
        index++;

        arrParams[index] = new SqlParameter("@ccode", SqlDbType.NVarChar);
        arrParams[index].Value = _register.ccode;
        index++;

        arrParams[index] = new SqlParameter("@First_name", SqlDbType.NVarChar);
        arrParams[index].Value = _register.First_name.ToUpper();
        index++;

        arrParams[index] = new SqlParameter("@Middle_name", SqlDbType.NVarChar);
        arrParams[index].Value = _register.Middle_name.ToUpper();
        index++;

        arrParams[index] = new SqlParameter("@Last_name", SqlDbType.NVarChar);
        arrParams[index].Value = _register.Last_name.ToUpper();
        index++;
        arrParams[index] = new SqlParameter("@DOB", SqlDbType.NVarChar);
        arrParams[index].Value = _register.DOB;
        index++;

        arrParams[index] = new SqlParameter("@Aadhar", SqlDbType.NVarChar);
        arrParams[index].Value = _register.Aadhar;
        index++;
        arrParams[index] = new SqlParameter("@Mobile_no", SqlDbType.NVarChar);
        arrParams[index].Value = _register.Mobile_no;
        index++;
        arrParams[index] = new SqlParameter("@Email_id", SqlDbType.NVarChar);
        arrParams[index].Value = _register.Email_id;


        DataTable tempdt = new DataTable();

        CCDB.DataClass ObjDataClass = new CCDB.DataClass(clsConnect.Connect);
        tempdt = ObjDataClass.ExecuteDataReader("REGISTER", arrParams);
        tempdt.Rows[0]["PASSWORDS"].ToString();
        tempdt.Rows[0]["APPLICATION_NO"].ToString();
        tempdt.Rows[0]["Mobile_no"].ToString();

        SendSms(tempdt.Rows[0]["Mobile_no"].ToString(), "DEAR candidate, you have been provisionally registered for the IERT. Your Registration No is " + tempdt.Rows[0]["APPLICATION_NO"].ToString() + " and your Password is " + tempdt.Rows[0]["PASSWORDS"].ToString() + ". Pls. deposit your fee via https://iertentrance.in. - RPREXM");
        SendEmailData(clsConnect.FromMail, clsConnect.FromPassword, clsConnect.FromSmtpClient, _register.Email_id, clsConnect.MailSubject, "Dear candidate,  Your Registration No is " + tempdt.Rows[0]["APPLICATION_NO"].ToString() + " and your Password is " + tempdt.Rows[0]["PASSWORDS"].ToString() + ". For more details visit https://iertentrance.in. - I.E.R.T");
        return tempdt;
    }

    public DataTable upbasic(register _update)
    {
        SqlParameter[] arrParams = new SqlParameter[11];
        //string rowsaffected;
        int index = 0;

        arrParams[index] = new SqlParameter("@Application_no", SqlDbType.NVarChar);
        arrParams[index].Value = _update.Application_no;
        index++;

        arrParams[index] = new SqlParameter("@father_name", SqlDbType.NVarChar);
        arrParams[index].Value = _update.father_name.ToUpper();
        index++;
        arrParams[index] = new SqlParameter("@Mother_name", SqlDbType.NVarChar);
        arrParams[index].Value = _update.Mother_name.ToUpper();
        index++;


        arrParams[index] = new SqlParameter("@Gender", SqlDbType.NVarChar);
        arrParams[index].Value = _update.Gender.ToUpper();
        index++;

        arrParams[index] = new SqlParameter("@Category", SqlDbType.NVarChar);
        arrParams[index].Value = _update.Category.ToUpper();
        index++;

        arrParams[index] = new SqlParameter("@Sub_category", SqlDbType.NVarChar);
        arrParams[index].Value = _update.Sub_category.ToUpper();
        index++;
        arrParams[index] = new SqlParameter("@nationality", SqlDbType.NVarChar);
        arrParams[index].Value = _update.Nationality.ToUpper();
        index++;
        arrParams[index] = new SqlParameter("@Religion", SqlDbType.NVarChar);
        arrParams[index].Value = _update.Religion.ToUpper();
        index++;
        //arrParams[index] = new SqlParameter("@employed", SqlDbType.NVarChar);
        //arrParams[index].Value = _update.employed.ToUpper();
        //index++;
        //arrParams[index] = new SqlParameter("@posted", SqlDbType.NVarChar);
        //arrParams[index].Value = _update.posted.ToUpper();
        //index++;
        //arrParams[index] = new SqlParameter("@incomescale", SqlDbType.NVarChar);
        //arrParams[index].Value = _update.incomescale.ToUpper();
        //index++;
        arrParams[index] = new SqlParameter("@domicile", SqlDbType.NVarChar);
        arrParams[index].Value = _update.domicile.ToUpper();
        index++;
        arrParams[index] = new SqlParameter("@ews", SqlDbType.NVarChar);
        arrParams[index].Value = _update.ews.ToUpper();
        index++;
        arrParams[index] = new SqlParameter("@caste", SqlDbType.NVarChar);
        arrParams[index].Value = _update.caste.ToUpper();




        DataTable tempdt = new DataTable();

        CCDB.DataClass ObjDataClass = new CCDB.DataClass(clsConnect.Connect);
        tempdt = ObjDataClass.ExecuteDataReader("UPDATE_DETAILS", arrParams);
       // tempdt.Rows[0]["reg_id"].ToString();

        return tempdt;
    }

    public DataTable upaddress(register _update)
    {
        SqlParameter[] arrParams = new SqlParameter[13];
        //string rowsaffected;
        int index = 0;

        arrParams[index] = new SqlParameter("@Application_no", SqlDbType.NVarChar);
        arrParams[index].Value = _update.Application_no;
        index++;

        arrParams[index] = new SqlParameter("@per_Address_Line1", SqlDbType.NVarChar);
        arrParams[index].Value = _update.per_Address_Line1.ToUpper();
        index++;
        arrParams[index] = new SqlParameter("@per_Address_Line2", SqlDbType.NVarChar);
        arrParams[index].Value = _update.per_Address_Line2.ToUpper();
        index++;

        arrParams[index] = new SqlParameter("@per_address_Line3", SqlDbType.NVarChar);
        arrParams[index].Value = _update.per_address_Line3.ToUpper();
        index++;

        arrParams[index] = new SqlParameter("@per_states", SqlDbType.NVarChar);
        arrParams[index].Value = _update.per_states.ToUpper();
        index++;

        arrParams[index] = new SqlParameter("@per_city", SqlDbType.NVarChar);
        arrParams[index].Value = _update.per_city.ToUpper();
        index++;

        arrParams[index] = new SqlParameter("@per_pincode", SqlDbType.NVarChar);
        arrParams[index].Value = _update.per_pincode;
        index++;
        arrParams[index] = new SqlParameter("@post_address_Line1", SqlDbType.NVarChar);
        arrParams[index].Value = _update.post_address_Line1.ToUpper();
        index++;
        arrParams[index] = new SqlParameter("@post_address_Line2", SqlDbType.NVarChar);
        arrParams[index].Value = _update.post_address_Line2.ToUpper();
        index++;
        arrParams[index] = new SqlParameter("@post_address_Line3", SqlDbType.NVarChar);
        arrParams[index].Value = _update.post_address_Line3.ToUpper();
        index++;
        arrParams[index] = new SqlParameter("@post_states", SqlDbType.NVarChar);
        arrParams[index].Value = _update.post_states.ToUpper();
        index++;
        arrParams[index] = new SqlParameter("@post_city", SqlDbType.NVarChar);
        arrParams[index].Value = _update.post_city.ToUpper();
        index++;
        arrParams[index] = new SqlParameter("@post_pincode", SqlDbType.NVarChar);
        arrParams[index].Value = _update.post_pincode;


        DataTable tempdt = new DataTable();

        CCDB.DataClass ObjDataClass = new CCDB.DataClass(clsConnect.Connect);
        tempdt = ObjDataClass.ExecuteDataReader("updateaddress_DETAILS", arrParams);
        tempdt.Rows[0]["addid"].ToString();

        return tempdt;
    }

    public DataTable upedu(register _update)
    {
        SqlParameter[] arrParams = new SqlParameter[39];
        //string rowsaffected;
        int index = 0;

        arrParams[index] = new SqlParameter("@Application_no", SqlDbType.NVarChar);
        arrParams[index].Value = _update.Application_no;
        index++;
        arrParams[index] = new SqlParameter("@Hcollege", SqlDbType.NVarChar);
        arrParams[index].Value = _update.Hcollege.ToUpper();
        index++;
        arrParams[index] = new SqlParameter("@Hpstate", SqlDbType.NVarChar);
        arrParams[index].Value = _update.Hpstate.ToUpper();
        index++;
        arrParams[index] = new SqlParameter("@Hpassed", SqlDbType.NVarChar);
        arrParams[index].Value = _update.Hpassed.ToUpper();
        index++;
        arrParams[index] = new SqlParameter("@Hboard", SqlDbType.NVarChar);
        arrParams[index].Value = _update.Hboard.ToUpper();
        index++;
        arrParams[index] = new SqlParameter("@Hyear", SqlDbType.NVarChar);
        arrParams[index].Value = _update.Hyear;
        index++;
        arrParams[index] = new SqlParameter("@HSubjects", SqlDbType.NVarChar);
        arrParams[index].Value = _update.HSubjects.ToUpper();
        index++;
        arrParams[index] = new SqlParameter("@HStream", SqlDbType.NVarChar);
        arrParams[index].Value = _update.HStream.ToUpper();
        index++;
        arrParams[index] = new SqlParameter("@Hmax_mark", SqlDbType.NVarChar);
        arrParams[index].Value = _update.Hmax_mark;
        index++;
        arrParams[index] = new SqlParameter("@Hobt_marks", SqlDbType.NVarChar);
        arrParams[index].Value = _update.Hobt_marks;
        index++;


        arrParams[index] = new SqlParameter("@Icollege", SqlDbType.NVarChar);
        arrParams[index].Value = _update.Icollege.ToUpper();
        index++;
        arrParams[index] = new SqlParameter("@Ipstate", SqlDbType.NVarChar);
        arrParams[index].Value = _update.Ipstate.ToUpper();
        index++;
        arrParams[index] = new SqlParameter("@Ipassed", SqlDbType.NVarChar);
        arrParams[index].Value = _update.Ipassed.ToUpper();
        index++;
        arrParams[index] = new SqlParameter("@Iboard", SqlDbType.NVarChar);
        arrParams[index].Value = _update.Iboard.ToUpper();
        index++;
        arrParams[index] = new SqlParameter("@Iyear", SqlDbType.NVarChar);
        arrParams[index].Value = _update.Iyear;
        index++;
        arrParams[index] = new SqlParameter("@ISubjects", SqlDbType.NVarChar);
        arrParams[index].Value = _update.ISubjects.ToUpper();
        index++;
        arrParams[index] = new SqlParameter("@IStream", SqlDbType.NVarChar);
        arrParams[index].Value = _update.IStream.ToUpper();
        index++;
        arrParams[index] = new SqlParameter("@Imax_mark", SqlDbType.NVarChar);
        arrParams[index].Value = _update.Imax_mark;
        index++;
        arrParams[index] = new SqlParameter("@Iobt_marks", SqlDbType.NVarChar);
        arrParams[index].Value = _update.Iobt_marks;
        index++;


        arrParams[index] = new SqlParameter("@Gcollege", SqlDbType.NVarChar);
        arrParams[index].Value = _update.Gcollege.ToUpper();
        index++;
        arrParams[index] = new SqlParameter("@Gpstate", SqlDbType.NVarChar);
        arrParams[index].Value = _update.Gpstate.ToUpper();
        index++;
        arrParams[index] = new SqlParameter("@Gboard", SqlDbType.NVarChar);
        arrParams[index].Value = _update.Gboard.ToUpper();
        index++;
        arrParams[index] = new SqlParameter("@Gpassed", SqlDbType.NVarChar);
        arrParams[index].Value = _update.Gpassed.ToUpper();
        index++;
        arrParams[index] = new SqlParameter("@GSubjects", SqlDbType.NVarChar);
        arrParams[index].Value = _update.GSubjects.ToUpper();
        index++;
        arrParams[index] = new SqlParameter("@GStream", SqlDbType.NVarChar);
        arrParams[index].Value = _update.GStream.ToUpper();
        index++;
        arrParams[index] = new SqlParameter("@gbranch", SqlDbType.NVarChar);
        arrParams[index].Value = "NA";
        index++;
        arrParams[index] = new SqlParameter("@Gyear", SqlDbType.NVarChar);
        arrParams[index].Value = _update.Gyear;
        index++;
        arrParams[index] = new SqlParameter("@Gmax_mark", SqlDbType.NVarChar);
        arrParams[index].Value = _update.Gmax_mark;
        index++;
        arrParams[index] = new SqlParameter("@Gobt_marks", SqlDbType.NVarChar);
        arrParams[index].Value = _update.Gobt_marks;
        index++;

        arrParams[index] = new SqlParameter("@Dcollege", SqlDbType.NVarChar);
        arrParams[index].Value = _update.Dcollege.ToUpper();
        index++;
        arrParams[index] = new SqlParameter("@Dpstate", SqlDbType.NVarChar);
        arrParams[index].Value = _update.Dpstate.ToUpper();
        index++;
        arrParams[index] = new SqlParameter("@Dboard", SqlDbType.NVarChar);
        arrParams[index].Value = _update.Dboard.ToUpper();
        index++;
        arrParams[index] = new SqlParameter("@Dpassed", SqlDbType.NVarChar);
        arrParams[index].Value = _update.Dpassed.ToUpper();
        index++;
        arrParams[index] = new SqlParameter("@DSubjects", SqlDbType.NVarChar);
        arrParams[index].Value = _update.DSubjects.ToUpper();
        index++;
        arrParams[index] = new SqlParameter("@DStream", SqlDbType.NVarChar);
        arrParams[index].Value = _update.DStream.ToUpper();
        index++;
        arrParams[index] = new SqlParameter("@Dbranch", SqlDbType.NVarChar);
        arrParams[index].Value = "NA";
        index++;
        arrParams[index] = new SqlParameter("@Dyear", SqlDbType.NVarChar);
        arrParams[index].Value = _update.Dyear;
        index++;
        arrParams[index] = new SqlParameter("@Dmax_mark", SqlDbType.NVarChar);
        arrParams[index].Value = _update.Dmax_mark;
        index++;
        arrParams[index] = new SqlParameter("@Dobt_marks", SqlDbType.NVarChar);
        arrParams[index].Value = _update.Dobt_marks;


        DataTable tempdt = new DataTable();

        CCDB.DataClass ObjDataClass = new CCDB.DataClass(clsConnect.Connect);
        tempdt = ObjDataClass.ExecuteDataReader("updateEDU_DETAILS", arrParams);

        return tempdt;
    }

    public DataTable upphoto(string ext, string cimage, string appno, string mode)
    {
        string _documentPath = "";
        string _documentFile = "";
        if (ext != null)
        {
            if (mode == "1")
            {
                _documentFile = appno + "_photo" + "." + ext;
            }
            else if (mode == "2")
            {
                _documentFile = appno + "_sign" + "." + ext;
            }
            else if (mode == "3")
            {
                _documentFile = appno + "_thumb" + "." + ext;
            }
            if (!System.IO.Directory.Exists(AppDomain.CurrentDomain.BaseDirectory + @"\photo\"))
                System.IO.Directory.CreateDirectory(AppDomain.CurrentDomain.BaseDirectory + @"\photo");
            _documentPath = AppDomain.CurrentDomain.BaseDirectory + @"\photo\" + _documentFile;
            byte[] bill = Convert.FromBase64String(cimage);
            using (MemoryStream ms = new MemoryStream(bill))
            {

                FileStream fs = new FileStream(_documentPath, FileMode.Create);
                ms.WriteTo(fs);
                fs.Close();

            }
        }
        else
        {
            _documentPath = "";
            _documentFile = "";
        }
        SqlParameter[] arrParams = new SqlParameter[4];
        int index = 0;

        arrParams[index] = new SqlParameter("@APPLICATION_NO", SqlDbType.NVarChar);
        arrParams[index].Value = appno;
        index++;
        arrParams[index] = new SqlParameter("@MODE", SqlDbType.NVarChar);
        arrParams[index].Value = mode;
        index++;
        arrParams[index] = new SqlParameter("@CANDIDATE_PHOTO", SqlDbType.NVarChar);
        arrParams[index].Value = _documentFile;
        index++;
        arrParams[index] = new SqlParameter("@CPATH", SqlDbType.NVarChar);
        arrParams[index].Value = "";

        DataTable tempdt = new DataTable();

        CCDB.DataClass ObjDataClass = new CCDB.DataClass(clsConnect.Connect);
        tempdt = ObjDataClass.ExecuteDataReader("UPLOAD_DOC", arrParams);
        //tempdt.Rows[0]["qid"].ToString();

        return tempdt;
    }


    public DataTable center(string center1, string center2, string center3, string center4, string center5, string center6, string center7, string appno)
    {
        
        SqlParameter[] arrParams = new SqlParameter[8];
        //string rowsaffected;
        int index = 0;

        arrParams[index] = new SqlParameter("@Application_no", SqlDbType.NVarChar);
        arrParams[index].Value = appno;
        index++;
        arrParams[index] = new SqlParameter("@center1", SqlDbType.NVarChar);
        arrParams[index].Value = center1.ToUpper();
        index++;

        arrParams[index] = new SqlParameter("@center2", SqlDbType.NVarChar);
        arrParams[index].Value = center2.ToUpper();
        index++;
        arrParams[index] = new SqlParameter("@center3", SqlDbType.NVarChar);
        arrParams[index].Value = center3.ToUpper();
        index++;

        arrParams[index] = new SqlParameter("@center4", SqlDbType.NVarChar);
        arrParams[index].Value = center4.ToUpper();
        index++;

        arrParams[index] = new SqlParameter("@center5", SqlDbType.NVarChar);
        arrParams[index].Value = center5.ToUpper();
        index++;

        arrParams[index] = new SqlParameter("@center6", SqlDbType.NVarChar);
        arrParams[index].Value = center6.ToUpper();
        index++;

        arrParams[index] = new SqlParameter("@center7", SqlDbType.NVarChar);
        arrParams[index].Value = center7.ToUpper();



        DataTable tempdt = new DataTable();

        CCDB.DataClass ObjDataClass = new CCDB.DataClass(clsConnect.Connect);
        tempdt = ObjDataClass.ExecuteDataReader("UPDATE_CENTER", arrParams);
        //tempdt.Rows[0]["qid"].ToString();

        return tempdt;
    }

    public DataTable submit( string appno)
    {
        SqlParameter[] arrParams = new SqlParameter[1];
        //string rowsaffected;
        int index = 0;

        arrParams[index] = new SqlParameter("@Application_no", SqlDbType.NVarChar);
        arrParams[index].Value = appno;      

        DataTable tempdt = new DataTable();

        CCDB.DataClass ObjDataClass = new CCDB.DataClass(clsConnect.Connect);
        tempdt = ObjDataClass.ExecuteDataReader("final_submit", arrParams);
        //tempdt.Rows[0]["qid"].ToString();

        return tempdt;
    }
											
 #region "SMS"

    public void SendSms1(string Mobile, string Msg)
    {
        #region API SMS
        string html = "";
        Uri objURI = new Uri("http://api.sms2support.com/sendsms?uname=qesociety&pwd=india_321&senderid=RPREXM&to=" + Mobile + "&msg=" + HttpUtility.UrlEncode(Msg) + "&route=T&peid=1701159480983848837&tempid=1707162814476715516");

        WebRequest objWebRequest = WebRequest.Create(objURI);
        WebResponse objWebRewponse = objWebRequest.GetResponse();
        Stream objStream = objWebRewponse.GetResponseStream();
        StreamReader objSreamReader = new StreamReader(objStream);
        html = objSreamReader.ReadToEnd();

        #endregion
    }
    #endregion "SMS"
    public DataTable otp(string _appno, String _cont)
    {
        DataTable temp = new DataTable();
        CCDB.DataClass ObjDataClass = new CCDB.DataClass(clsConnect.Connect);

        int index = 0;
        SqlParameter[] arrParams = new SqlParameter[2];

        arrParams[index] = new SqlParameter("@APPLICATION_NO", SqlDbType.NVarChar);
        arrParams[index].Value = _appno;
        index++;
        arrParams[index] = new SqlParameter("@mobile", SqlDbType.NVarChar);
        arrParams[index].Value = _cont;
        
        temp = ObjDataClass.ExecuteDataReader("GENOTP", arrParams);
        SendSms1(_cont, "Dear candidate, Your one time password for IERT is " + temp.Rows[0]["otp"] + ". IERT-RPREXM");
        return temp;
    }

    public DataTable updatepass(string _appno, string _confirmpass)
    {
        DataTable temp = new DataTable();
        CCDB.DataClass ObjDataClass = new CCDB.DataClass(clsConnect.Connect);

        int index = 0;
        SqlParameter[] arrParams = new SqlParameter[2];

        arrParams[index] = new SqlParameter("@APPLICATION_NO", SqlDbType.NVarChar);
        arrParams[index].Value = _appno;
        index++;
        arrParams[index] = new SqlParameter("@PASSWORD", SqlDbType.NVarChar);
        arrParams[index].Value = _confirmpass;

        temp = ObjDataClass.ExecuteDataReader("UPDATEPASS", arrParams);
        //SendSms1(_cont, "Dear candidate, Your one time password for IERT is " + temp.Rows[0]["otp"] + ". IERT-RPREXM");
        return temp;
    }
    public DataTable basic_correction(register _update)
    {
        SqlParameter[] arrParams = new SqlParameter[10];
        //string rowsaffected;
        int index = 0;

        arrParams[index] = new SqlParameter("@Application_no", SqlDbType.NVarChar);
        arrParams[index].Value = _update.Application_no;
        index++;
       
        arrParams[index] = new SqlParameter("@DOB", SqlDbType.NVarChar);
        arrParams[index].Value = _update.DOB.ToUpper();
        index++;
        //
        arrParams[index] = new SqlParameter("@Gender", SqlDbType.NVarChar);
        arrParams[index].Value = _update.Gender.ToUpper();
        index++;

        arrParams[index] = new SqlParameter("@Category", SqlDbType.NVarChar);
        arrParams[index].Value = _update.Category.ToUpper();
        index++;

        arrParams[index] = new SqlParameter("@Sub_category", SqlDbType.NVarChar);
        arrParams[index].Value = _update.Sub_category.ToUpper();
        index++;
        arrParams[index] = new SqlParameter("@nationality", SqlDbType.NVarChar);
        arrParams[index].Value = _update.Nationality.ToUpper();
        index++;
        arrParams[index] = new SqlParameter("@Religion", SqlDbType.NVarChar);
        arrParams[index].Value = _update.Religion.ToUpper();
        index++;       
        arrParams[index] = new SqlParameter("@domicile", SqlDbType.NVarChar);
        arrParams[index].Value = _update.domicile.ToUpper();
        index++;
        arrParams[index] = new SqlParameter("@ews", SqlDbType.NVarChar);
        arrParams[index].Value = _update.ews.ToUpper();
        index++;
        arrParams[index] = new SqlParameter("@caste", SqlDbType.NVarChar);
        arrParams[index].Value = _update.caste.ToUpper();




        DataTable tempdt = new DataTable();

        CCDB.DataClass ObjDataClass = new CCDB.DataClass(clsConnect.Connect);
        tempdt = ObjDataClass.ExecuteDataReader("CORRECT_DETAILS", arrParams);
        // tempdt.Rows[0]["reg_id"].ToString();

        return tempdt;
    }
}