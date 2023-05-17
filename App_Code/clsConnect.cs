using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for clsConnect
/// </summary>
public class clsConnect
{
    public static string Connect;
    public static string EncriptpassPhrase;
    public static string EncriptsaltValue;
    public static string EncripthashAlgorithm;
    public static string EncriptpasswordIterations;
    public static string EncriptinitVector;
    public static string EncriptkeySize;
    public static string FromMail;
    public static string FromPassword;
    public static string FromSmtpClient;
    public static string MailSubject;

    static clsConnect()
    {
        Connect = @"user id=IERT_USER;data source=82.208.20.56;initial catalog=IERT;password=%p7eWf070;Integrated Security=false;";
        //Connect = @"user id=acunox_shopistop; password=ngj3vuksplxbqofmrwhy;server=sql2012.dbsqlserver.com,1288; initial catalog=db_shopistop; integrated security=false;";
        //Connect = @"user id=sa; password=dataone;server=.; initial catalog=db_shopistop; integrated security=true;";
        EncriptpassPhrase = @"Pas5pr@se";
        EncriptsaltValue = @"s@1tValue";
        EncripthashAlgorithm = @"SHA1";
        EncriptpasswordIterations = @"2";
        EncriptinitVector = @"@1B2c3D4e5F6g7H8";
        EncriptkeySize = @"256";

        FromMail = "donotreply@iertentrance.in";
        FromPassword = "i!g19wI05";
        FromSmtpClient = "mail.iertentrance.in";
        MailSubject = "I.E.R.T Registration - 2023";
    }
}