<%@ Page Title="" Language="C#" MasterPageFile="~/masterpages/home.master" AutoEventWireup="true" CodeFile="brouchure.aspx.cs" Inherits="brouchure" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">

    <link href="hindi.css" rel="stylesheet" />
    <style>
        ul {
            list-style-type: none;
        }
    </style>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container-fluid">
        <ul class="jtab-trigger jtab-ul">
            <li>
                <a href="#tab1">Courses</a>
            </li>
            <li>
                <a href="#tab2" data-content="content.html #content">Instructions</a>
            </li>
            <li>
                <a href="#tab3">Reservation</a>
            </li>
            <li>
                <a href="#tab4">Admission Criteria</a>
            </li>
            <li>
                <a href="#tab5">Exam Information</a>
            </li>
            <li>
                <a href="#tab6">Syllabus</a>
            </li>
            <%--<li>
                <a href="#tab8">Sample Paper</a>
            </li>  --%>
            <li>
                <a href="#tab10">Training & Placement</a>
            </li>
        </ul>
        <div class="jtab-content-list bt-border1" style="font-size: 18px; background: none">
            <div id="tab1" class="jtab-content" style="font-size: 15px">
                <div class="container-fluid">
                    <h2 style="text-align: center" class="alert alert-info shadow">Courses Offered & Eligibility Diploma Courses.</h2>
                    <hr />
                    <h5 style="font-size: 18px; text-align: center">Following courses are duly recognized by U.P. Government as well as approved by AICTE, New Delhi Government of India. </h5>
                    <hr />
                    <div class="card  shadow" style="background: none">
                        <div class="card-body">
                            <div class="table table-responsive" style="background-color: white">
                                <table class="table-bordered table-striped table-hover table-condensed shadow">
                                    <thead>
                                        <tr class="table-primary" style="text-align: center; font-weight: bold; vertical-align: middle">
                                            <td>#</td>
                                            <td>Name of Courses</td>
                                            <td>Eligibility</td>
                                            <td>Mode of Admission</td>
                                        </tr>
                                    </thead>
                                    <tbody style="font-size: 18px; color: black">
                                        <tr>
                                            <td style="font-weight: bold">1
                                            </td>
                                            <td style="width: 300px"><span style="font-weight: bold">Three Year (6 Semester) Engineering/Technology Diploma</span>
                                                <ul>
                                                    <li style="font-weight: bold">(A) Diploma in Plastic Technology.
                                                    </li>
                                                    <li style="font-weight: bold">(B) Diploma in Electrical Engineering</li>
                                                    <li style="font-weight: bold">(C) Diploma in Electronics Engineering</li>
                                                    <li style="font-weight: bold">(D) Diploma in Instrumentation & Control Engineering.</li>
                                                    <li style="font-weight: bold">(E) Diploma in Civil Engineering with Specialization in:</li>
                                                </ul>
                                                <ul style="padding-left: 20px">
                                                    <li>(1) Civil Engineering</li>
                                                    <li>(2) Construction Technology</li>
                                                    <li>(3) Public Health Engineering</li>

                                                </ul>
                                                <ul>
                                                    <li style="font-weight: bold">(F) Diploma in Mechanical Engineering with Specialization in:</li>
                                                </ul>
                                                <ul style="padding-left: 20px">
                                                    <li>(1) Power Plant Engineering</li>
                                                    <li>(2) Production Engineering</li>
                                                    <li>(3) Automobile Engineering</li>
                                                    <li>(4) Tool Engineering</li>
                                                    <li>(5) Refrigeration & Air Conditioning Engineering</li>
                                                    <li>(6) Tube-well Engineering
                                                    </li>
                                                </ul>
                                            </td>
                                            <td>Candidate should have passed High School (10th class) examination with Science & 
                                    Maths conducted by Madhyamik Shiksha Parishad U.P. or any other equivalent 
                                    examination of Central Board(CBSE or ICSE) or any other State Board. Candidate 
                                    appearing in the above Examination is also eligible, subject to the condition they 
                                    will have to produce their pass Mark Sheet & Certificate of High School at the time 
                                    of counseling. There is no any upper age limit but candidate must be a minimum of 
                                    14 years old on 1st
                                    There is no separate quota for candidates of other states. However, they will be 
                                    given admission in case of non availability of students from U.P. as per provision 
                                    laid down by U.P. Govt.<br />
                                                <span class="hindiFont">oKku ,oa xf.kr fo"k; d s lkFk gkbZLd wy ek/;fed f'k{kk ifj"kn m0iz0 vFkok led{k ijh{kk 
                                        ¼lh0ch0,l0b Z0@vkbZ0lh0,l0bZ0½ ;k vU; jktdh; cksM Z }kjk mRrh.kZ gks ,sls vH;FkhZ bl ijh{kk e sa cSB ldrs gSaA ftu 
                                        vH;fFkZ;ksa us bl o"k gkbZLd wy ijh{kk nh gS os Nk= Hkh ijh{kk e s a cSBd ldrs gS a] bl 'krZ d s lkFk fd dkmfUlfyax d s 
                                        le; rd gkbZLd wy mRrh.kZ dk v ad i= ,oa izek.k i= izLrqr djuk vko';d gksxkA rhu o"khZ; 6 lse sLVj bathfu;fjax@VsduksykWth fMIyksek ds fy, vf/kdre vk;q lhek ughagS ijUrq U;wure vk;q lhek 1 tqykbZ] 2022 dks 14
                                        o"kZ gksuh pkfg,A                                       
                                        <br />
                                                    <br />
                                                    vU; jkT;ksa d s vH;fFkZ;ksa ds fy, dksbZ fof'k"V vkj{k.k dksVk ugha gS] rnfi mUgs a laLFkku e sa izos'k m0iz0 ljdkj }kjk 
                                        fu/kkZfjr fu;eksa d s vuqlkj ml fLFkfr e s a fn;k tk ld sxk tc fd m0iz0 d s vH;FkhZ izos'k g srq miyC/k u gksA
                                                </span>
                                            </td>
                                            <td style="vertical-align: middle">Through Entrance Examination
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="font-weight: bold">2
                                            </td>
                                            <td style="font-weight: bold">Two Year (4 Semester) Management Diploma
                                    <ul style="font-weight: bold">
                                        <li>(A) Commercial Practice</li>
                                        <li>(B) Materials Management</li>
                                        <li>(C) Marketing Management</li>
                                    </ul>
                                            </td>
                                            <td>Intermediate (10+2) pass or equivalent English and Hindi at High School or
                                    Intermediate level. Candidates appearing in the above mentioned examination are 
                                    also eligible for the Entrance Examination, but they will have to produce pass mark 
                                    sheet and certificate of above examination at the time of counseling<br />
                                                <span class="hindiFont">b.VjehfM,V ¼10$2½ ijh{kk mRrh.kZ ;k led{k] ijUrq gkbZLdwy ;k b.VjehfM,V es a fgUnh vkSj v axz sth fo"k; vko';d
                                        gSA tks vH;FkhZ bl o"kZ mijksDr ijh{kk ns jgs gS a] og Hkh ijh{kk es a cSB ldrs gSa fdUrq dkmfUlfyax d s le; mijksDr
                                        ijh{kk d s ikl gksus dk v ad i= ,oa i zek.k i= gksuk vko';d gSA</span>
                                            </td>
                                            <td style="vertical-align: middle">Through Entrance Examination followed by Interview</td>
                                        </tr>
                                        <tr>
                                            <td style="font-weight: bold">3</td>
                                            <td style="font-weight: bold">One & Half Year (3 Semester) Post One & Half Year (3 Semester) Post</td>
                                            <td>Diploma in any branch of Engg./Tech. or graduate in any discipline with Physics
                                    and Maths Subjects at Intermediate (10+2) or its equivalent. The appearing
                                    candidates at above mentioned exam are also eligible for entrance examination but 
                                    they will have to produce pass mark sheet and certificate of above exam at the time 
                                    of counselling.<br />
                                                <span class="hindiFont">vfHk;kfU=dh@VsDukWykth fZMIyksek vFkok Lukrd ;ksX;rk ftles a b.VjehfM,V ¼102½ vFkok led{k Lrj ij HkkSfrd
                                        foKku ,oa xf.kr fo"k; gks bl dkslZ d s fy, vgZrk iwjh djrs gS aA tks vH;FkhZ mijksDr ijh{kk d s vfUre o"kZ e s acSB jgs gs a]
                                        os Hkh ijh{kk ns ldrs g Sa fdUrq dkmfUlfyax d s le; mRrh.kZ dh vadrkfydk ,oa izek.k i= gksuk vko';d g SA
                                                </span>
                                            </td>
                                            <td>Through Entrance Examination followed by Interview</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <h5>
                                <p style="text-align: center; font-weight: bold"><span style="color: red">Note &nbsp;:&nbsp;&nbsp;</span>Latest G.O. regarding reservation, number of seats will be applicable at the time of Counseling/Admission</p>
                            </h5>
                        </div>
                    </div>


                </div>
            </div>
            <div id="tab2">

                <div class="container-fluid">
                    <h2 style="text-align: center" class="alert alert-info shadow">GENERAL INSTRUCTIONS (<span class="hindiFont">lkekU; funsZ'k</span>)</h2>
                    <hr />
                    <div class="card  shadow" style="background: none">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-1" style="background-color: white">(a)</div>
                                <div class="col-md-11" style="background-color: white">
                                    <ol type="I">
                                        <li>The opening date for online Application: April 02, 2022 (Saturday) The closing date for online Application: May 31, 2022 (Tuesday)  </span>
                                        </li>
                                        <li>Date of Entrance Examination for Three Years Engg. Diploma: June 21, 2022 (Tuesday) 9:00 AM To 12:00 PM</li>
                                        <li>Date of Entrance Examination for Two Years Management Diploma: JJune 23, 2022 (Thursday) 9:00 AM To 12:00 PM</li>
                                        <li>Date of Entrance Examination for 1½ Years (3 Semester) Post Diploma in Computer Application: -June 23, 2022 (Thursday) 9:00 AM To 12:00 PM
                                        </li>
                                    </ol>
                                    <br />
                                </div>
                                <div class="col-md-1">(b)</div>
                                <div class="col-md-11">
                                    <ol type="I">
                                        <li>Candidates of IERT ENTRANCE EXAMINATION-2022 have to apply online only. There is no printed application
form for IERT ENTRANCE EXAMINATION-2022.</li>
                                        <li>Please ensure that you are filling genuine application form available online at www.iertonline.in website.
                                        </li>
                                        <li>Please ensure your eligibility as per the criteria laid down in the broacher for duly recognized by U.P. Govt. and approved by A.I.C.T.E. New Delhi. Diploma courses offered by the institute. The Information Brochuer is available only on the web site www.iertonline.in for reading as well as download. Also to ensure that to read every instruction carefully before filling the online application. The candidates are, therefore, advised to ensure their eligibility, category and subcategory (if applying under reserved category/subcategory). The institute, in no way, will be responsible for any wrong/incorrect information furnished by the candidate(s) in their online application form.
                                        </li>
                                        <li>All the candidates who have submitted the online application and paid the application fee till last date will be allowed to appear in IERT ENTRANCE EXAMINATION-2022 and their admit cards will be uploaded on the website as per schedule given to the website www.iertonline.in
 
                                        </li>
                                        <li>The Application fee (in Indian Rupees) for IERT ENTRANCE EXAMINATION-2022 for all applicants
(General, OBC, SC / ST) is Rs 1350/- (Rs. One thousand three hunderd fifty only). The application fee can be deposited Online (through Credit Card/Debit Card/Net Banking) or by depositing in cash in any branch of the Bank in India as prescribed in the challan. The service charges as per the guideline of the Reserve Bank of India against each such transaction will be paid by the candidate in addition to the application fee.
                                        </li>
                                        <li>Candidates are allowed to submit only one application form in each course for examination.
                                        </li>
                                        <li>The name of the candidate, his/her parent's name and Date of birth in the application form must exactly be the same as registered in Class 10th/ equivalent qualifying Examination. No prefix/title such as Mr/Shri/Er/Dr/Mrs/Smt/Col. etc should be used.
                                        </li>
                                        <li>The application fee may be paid either by net banking/credit/debit card or through e-Challan generated during the online filling of the application form. In case of e-challan, the payment should be made in the any branch as prescribed in the challan in cash. Application fee once paid will not be refunded (full or partial) under any circumstances.
                                        </li>
                                        <li>No options can be changed at a later stage after submission of an application. However, a chance may be given to the candidates to correct/modify some of the particular(s) of the application form online only, after last date of submission of form. The candidates are advised to visit the website regularly to know the exact date when the correction(s)/modification(s) will be allowed online only.
No change will be accepted through offline i.e. through fax/application including e-mail etc.
                                        </li>
                                        <li>The IERT ENTRANCE EXAMINATION-2022 application has been made completely online i.e. the candidate has to fill the particulars online and also upload their photograph, signature and thumb impression. Due to above, the provision of sending hard copy of the application i.e. confirmation page to the Co-ordinator,	IERT ENTRANCE EXAMINATION-2022 office has been done away with. Therefore the candidates are advised not to send hard copy of the application i.e. confirmation page to Co-ordinator, IERT ENTRANCE EXAMINATION-2022. However, the candidates are advised to retain hard copy of the application i.e. confirmation page for future reference or correspondence, if any.
                                        </li>
                                        <li>Candidate(s) may check the status of their application on IERT ENTRANCE EXAMINATION-2022 website
www.iertonline.in
                                        </li>
                                        <li>The Hon’ble High Court of Allahabad alone will have the jurisdiction to settle and decide all matters and disputes related to IERT ENTRANCE EXAMINATION-2022 as the institute is located at Prayagraj is organizing the IERT ENTRANCE EXAMINATION-2022.
                                        </li>
                                        <li>The offer of admission shall be subject to verification of original certificates/ documents at the time of counseling/admission. If any candidate is found ineligible at a later date even after admission to an Institute, his/her admission will be cancelled.
 
                                        </li>
                                        <li>The candidates must have their own personal and valid email id. They are also advised to have their own mobile number. The candidates are advised to retain the same mobile number and email-id in use which they have furnished in the application form because the important information may be given to the candidates through SMS or e-mail.
                                        </li>
                                        <li>The decision of the Director/Chairman Examination Committee of IERT regarding the eligibility of any applicant shall be final.
                                        </li>
                                        <li>
                                        All correspondence related to IERT ENTRANCE EXAMINATION-2022 should be addressed to:
Co-Ordinator, IERT ENTRANCE EXAMINATION-2022, Institute of Engineering & Rural Technology, 26
Chatham Line, Prayagraj-211002, U.P. (India).

                                    </ol>
                                </div>
                                <div class="col-md-1">(c)</div>
                                <div class="col-md-11">
                                    In Case of any difference at the time of counseling between signatures or thumb impression candidature/selection will be
cancelled/rejected.<br />
                                    <span class="hindiFont">dkmfUlfyax ds le; gLrk{kj vFkok vaxwBk fu'kku esa vUrj ik;s tkus ij izos'k fujLr dj fn;k tk;sxkA
                                    </span>
                                </div>
                                <div class="col-md-1">(d)</div>
                                <div class="col-md-11">
                                    Candidature of the candidate will also be cancelled if the candidate does not fill up his/her Name, Father's Name and Date of Birth,
exactly the same as given in the certificate of High School or equivalent.<br />
                                    <span class="hindiFont">vH;FkhZ vius gkbZLdwy vFkok led{k izek.k i= ds vuqlkj gh vius vkSj firk ds uke dh Lisfyax rFkk tUefrfFk Hkjs a] vUrj gksus
ij vH;FkhZ dh ik=rk fujLr dj nh tk;sxhA
                                    </span>
                                </div>
                                <div class="col-md-1">(e)</div>
                                <div class="col-md-11">
                                    During the verification/enquiry if any information given by the candidate is found wrong/misleading, candidature/selection of the
candidate will be cancelled/rejected and candidate will not be able to appear in the entrance examination for the next three
consecutive years.<br />
                                    <span class="hindiFont">vH;FkhZ ;fn vkWu&ykbu vkosnu es a fdlh Hkh izdkj dh xyr lwpuk nsrk gS vkSj tkWp es a idM+k tkrk gS rks vH;FkhZ dk izos'k] izos'k ijh{kk dk ijh{kkQy fujLr dj fn;k tk;sxk vkSj mls
vxys rhu o"kZ ds fy, izos'k ijh{kk es a lfEefyr gksus ls jksd fn;k tk;sxkA
                                    </span>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="tab3">
                <div class="container-fluid">
                    <h2 style="text-align: center" class="alert alert-info shadow">RESERVATION OF THE SEATS  (<span class="hindiFont">lhV dk vkj{k.k</span>)</h2>
                    <hr />
                    <div class="card  shadow" style="background: none">
                        <div style="padding: 10px">
                            <br />
                            <div class="card-body">
                                <div class="row">
                                    <div class="table table-responsive" style="background-color: white">
                                        <table class="table-bordered table-striped table-hover table-condensed shadow">
                                            <thead>
                                                <tr style="text-align: center; font-weight: bold; vertical-align: middle">
                                                    <td>#</td>
                                                    <td></td>

                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>(a)</td>
                                                    <td>Reservation in admission to SC/ST/OBC/EWS for General Categoy, M.W (Military Ward, defense servicemen), 
                                                        F.F. (Freedom Fighter), P.H. (Physically Handicapped) and G.L. 
                                                        (Girls) will be given as per the existing rules and regulations of U.P.Govt. at the time of Counseling.
                                                        <span style="font-weight: bold">Note: "Vimukta jatiyan" is not allowed to take any benefit of reservation as Scheduled tribes (ST) in Admission</span>
                                                        <br />
                                                        <span class="hindiFont">vkj{k.k m0iz0 dh vuqlwfpr tkfr ¼SC½] vuqlwfpr tutkfr ¼ST½] vU; fiNM+k oxZ ¼OBC½] xjhc lao.kZ (EWS)] lSfud deZpkjh d s vkfJr ¼MW½] LorU=rk
                                                            lsukuh d s vkfJr ¼FF½] fodykax ¼PH½ ,oa efgyk ¼GL½ dks dkmfUlfyax ds le; m0iz0 ljdkj ds fu;ekuqlkj ns; gksxkA</span><br />
                                                        <span style="font-weight: bold" class="hindiFont">uksV& foeqDr tkfr;ksa d s vH;fFkZ;k sa dk izo s'k] vu qlwfpr tutkfr dksVs 
                                                            d s vUrxZr vkj{k.k vu qeU; ugha gksxkA</span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>(b)</td>
                                                    <td>Candidates who are son/daughter of retired defense servicemen, disabled or those who have sacrificed their life in war will get
                                                        horizontal reservation if and only if defense personnel themselves or their family is residing in U.P. at the time of examination.
                                                        Wards of parents/guardian working in defense services and are not permanent residents of Uttar Pradesh but are posted in Uttar 
                                                        Pradesh at the time of Entrance Examination will get the horizontal reservation under category "Defense Servicemen under sub 
                                                        category wards of the personnel working in U.P. cadre in all India services". Candidates belonging to such categories should 
                                                        mention their main category also i.e. Gen./OBC/SC/ST/EWS of General Category. Wards of defense servicemen are required to 
                                                        show certificates of dependence to avail horizontal reservation. Certificate should contain certified photo of the candidate and his 
                                                        father/defense personnel alongwith the certificate, a certified photo copy of the pension pass book/salary slip of the defense 
                                                        servicemen is required to be deposited at the time of counseling.
                                                        <br />
                                                        <span class="hindiFont">lsokfuo`Rr@;q) esa viaxrk vFkok ;q) eas ekj s tku s d s i'pkr izos'k ijh{kk frfFk dks m0iz0 esa fuokl djus okys j{kk deZpkjh d s vkfJr ¼iq=@iq=h½ dks {kSfrt 
                                                            vkj{k.k dk ykHk vu qeU; gksxkA j{kk foHkkx esa dk;Zjr ,sls vfHkHkkod tks mRrj izns'k d s ewy fuoklh ugha gSa ijUrq izos'k ijh{kk d s le; mRrj izns'k esa dk;Zjr gSa] 
                                                            d s vkfJrksa dk s j{kk dkfeZdksa dh Js.kh vf[ky Hkkjrh; lsok ds mRrj izn s'k dSMj esa dk;Zjr dfeZdksa d s vkfJr dh miJs.kh d s vUrxZr {kSfrt vkj{k.k vuqeU; gksxkA 
                                                            mijksDr Js.kh d s vH;FkhZ eq[; Js.kh Gen./OBC/SC/ST/EWS of General Category dks Hkh n'kkZ;saxsA j{kk deZpkjh d s vkfJr ¼iq=@iq=h½ {kSfrt vkj{k.k
                                                            gsr q dkmfUlfyax d s le; lSfud vkfJr izek.k i= i zLr qr dj saxs ftlij vH;FkhZ ,oa mld s firk dk QksVks izekf.kr gksxk lkFk gh izekf.kr osru fLyi ;k i sa'ku dh 
                                                            iklcqd dh QksVks dkih tek djuh gksxhA
                                                        </span></td>
                                                </tr>
                                                <tr>
                                                    <td>(c)</td>
                                                    <td>Those who wish to avail the reservation under freedon Fighter (FF) category are required to submit the certificate issued by District
                                                        Magistrate (D.M.) showing clearly the dependence/and relation of the candidate with the freedom fighter (FF) such certificates will
                                                        identity card bearing photo (issued by competent authority) of the freedom fighter. In addition they should also mention their main
                                                        category.<br />
                                                        <span class="hindiFont">vH;FkhZ ;fn vkWu&ykbu vkosnu es a fdlh Hkh izdkj dh xyr lwpuk nsrk gS vkSj tkWp es a idM+k tkrk gS rks vH;FkhZ dk izos'k] izos'k ijh{kk dk ijh{kkQy fujLr dj fn;k tk;sxk vkSj mls
                                                            vxys rhu o"kZ ds fy, izos'k ijh{kk es a lfEefyr gksus ls jksd fn;k tk;LorU=rk lsukuh ds vkfJr vH;FkhZ ftykf/kdkjh }kjk
                                                            fuxZr izek.k i= tek djsa ftlesa Li"V :i ls LorU=rk lsukuh ls vkfJr dk ikfjokfjd lEcU/k fy[kk gks] ftykf/kdkjh }kjk
                                                            fuxZr izek.k i= dqlhZukek lfgr 31&03&2022 ds ckn dk gksA LorU=rk lsukuh dh isa'ku ikl cqd dhdkih ,oaLorU=rk
                                                            lsukuh dkQksVk
                                                            yxk ifjp; i= ¼l{ke vf/kdkjh }kjk fuxZr½ dh dkih tek djsaxsA mijksDr Js.kh d s vH;FkhZ viuh eq[; Js.kh Hkh n'kkZ;saxsA
                                                        </span></td>
                                                </tr>
                                                <tr>
                                                    <td>(d)</td>
                                                    <td>Girl/Women candidate need to mention their sub category (MW/FF/PH) alongwith main caregory i.e. Girls (GL).
                                                        <br />
                                                        <span class="hindiFont">Nk=k;sa@efgyk;sa eq[; Js.kh d s lkFk mi Js.kh (MW/FF/PH) ;fn gks rks og Hkh n'kkZ;asxhA
                                                        </span></td>
                                                </tr>
                                                <tr>
                                                    <td>(e)</td>
                                                    <td>OBC/SC/ST candidates should produce the respective certificates which should be issued by competent authority. Its
                                                        attestation/verification should have been done by the official website of the U.P. Govt. and it is modatory. But the caste certificate
                                                        for OBC category must be issued after 31-03-2022 by the competent authority on prescribed format, otherwise the candidate will
                                                        loose the benifit of the such reserve category OBC/SC/ST.<br />
                                                        <span class="hindiFont">vH;FkhZ tkfr izek.k i= ,oa vk; izek.k i= izLrqr djsa tks fd l{ke vf/kdkjh }kjk fuxZr gks ,oa mldk lR;kiu b.VjusV }kjk vf/kdkfjd csclkbV ds ek/;e ls
                                                            gksuk pkfg, vkSj ;g vfuok;Z gSA lR;kfir izek.k i= dkmfUlfyax ds le; yk;sa ijUrq OBC Js.kh ds vH;fFkZ;ksa dk tkfr izek.k i= l{ke vf/kdkjh }kjk fnukad
                                                            31-03-2022 ds ckn dh frfFk;ksa esa gh fuxZr gksuk vko';d gS] vU;Fkk vH;FkhZ mijksDr Js.kh ds vkj{k.k ds ykHk ls oafpr gks tk;sxkA
                                                        </span></td>
                                                </tr>
                                                <tr>
                                                    <td>(f)</td>
                                                    <td>It is mandatory that the certificate for EWS for General Category should be issued on the basis of financial year 2022-23 and the
                                                        issue date should be after 31st March 2022. The verification of the certificate will be done either online or off-line as per
                                                        arrangements made by the state govt. If the candidate fails to follow any of the mentioned criteria, he/she will loose the benefit of 
                                                        reservation under EWS for General Category OBC/SC/ST.<br />
                                                        <span class="hindiFont">xjhc lo.kZ bZ0MCY;w0,l0 izek.k&i= foRrh; o"kZ2022&2023 dsvakdyu dsvk/kkj ij31-03-2022 ds ckn dh frfFk;ksa esa gh fuxZr gksuk vko';d gS ,oa mldk
                                                            lR;kiu b.VjusV }kjk ;k izn s'k ljdkj dh O;oLFkk ds vu qlkj vkQ&ykbu fd;k tk;sxk] vU;Fkk dh fLFkfr esa vH;FkhZ EWS Js.kh ds vkj{k.k ds ykHk ls oafpr
                                                            gks tk;sxkA
                                                        </span></td>
                                                </tr>
                                                <tr>
                                                    <td>(g)</td>
                                                    <td>Physically Handicapped (Physically challanged) (PH) candidates are required to deposit certificates issued by CMO (Chief Medical Officer) showing more than 40% disability.<br />
                                                        <span class="hindiFont">fodykax vH;FkhZ dks eq[; fpfdRlkf/kdkjh }kjk fuxZr fodykaxrk izek.k i=] ftlesa 40 izfr'kr ls vf/kd fodykaxrk dk mYys[k fd;s tkus ij gh vkj{k.k vu qeU; gksxkA</span>

                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>(h)</td>
                                                    <td>Benefits of reservation can only be availed by candidates if it is properly mentioned/filled up in on-line application form and
                                                        respective certificates as required is produced at the time of counseling. Otherwise the candidate will be treated as the candidate
                                                        from the general category.<br />
                                                        <span class="hindiFont">izos'k gsr q vkWuykbu vkosnu esa Hkjh x;h Js.kh d s vu qlkj gh vkj{k.k dk ykHk feysxkA mDr vkj{k.k dk leqfpr izek.k i= i zos'k gsr q dkmfUlfyax d s le; izLrqr djuk vfuok;Z gksxk vU;Fkk vH;FkhZ dks lkekU; Js.kh dk ekuk tk;sxkA</span></td>
                                                </tr>
                                                <tr>
                                                    <td>(i)</td>
                                                    <td>Name of the candidate, Father's name, Mother's name and Date of Birth mentioned in the certificates produced for the purpose of availing reservation such as category, caste, FF etc. should be same as printed in High School certificate. If there is any change in name or surname, the privilege of reservation will be denied and admission will be cancelled.<br />
                                                        <span class="hindiFont">tkfr vkj{k.k Js.kh izek.k i= esa vH;FkhZ dk uke] firk ,oa ekrk dk uke] gkbZLd wy izek.k i= d s vu qlkj gh gksuk pkfg,A uke ;k miuke ¼lju se½ esa cnyko gksus ij vkj{k.k dk ykHk ugha feysxk vkSj izos'k fujLr dj fn;k tk;sxkA</span></td>
                                                </tr>
                                                <tr>
                                                    <td>(j)</td>
                                                    <td>Candidate should write his/her category in answer sheet of the Entrance Examination exactly the same which he/she has mentioned in on-line application.<br />
                                                        <span class="hindiFont">vH;FkhZ us izos'k gsr q vkuykbu vkosnu esa tks Js.kh fy[kh gS ogh izos'k ijh{kk dh mRrj iqfLrdk ¼vkUlj 'khV½ ij fu/kkZfjr LFkku ij fy[kuk gksxkA</span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>(k)</td>
                                                    <td>If candidate has not mentioned any category in on line application and answer sheet or in any of them, candidate will be treated as
general category candidate.
.<br />
                                                        <span class="hindiFont">;fn vH;FkhZ }kjk vkuykbu vkosnu vkSj mRrjiqfLrdk ;k buesa ls fdlh Hkh ,d esa dksbZ Js.kh ugha Hkjh x;h gS rks , slh voLFkk esa vH;FkhZ lkekU; Js.kh dk ekuk
tk;sxkA

                                                        </span></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="tab4" class="jtab-content">
                <div class="container-fluid">
                    <h2 style="text-align: center" class="alert alert-info shadow">Admission (<span class="hindiFont" style="font-weight: bold">izos'k </span>)</h2>
                    <div class="card  shadow" style="background: none">
                        <div style="padding: 10px">
                            <br />
                            <div class="card-body">
                                <div class="row">
                                    <div style="padding: 5px; font-weight: bold" class="alert alert-success shadow"><i class="fa fa-hand-o-right" style="vertical-align: middle">&nbsp;&nbsp;</i><a style="text-align: center">BASIS/CRITERIA OF ADMISSION (<span class="hindiFont">izos'k ijh{kk dk < ax@rjhdk</span>)</a></div>
                                    <hr />
                                    <div class="table table-responsive shadow" style="background-color: white">
                                        <table class="table-bordered table-striped table-hover table-condensed ">
                                            <thead>
                                                <tr style="text-align: center; font-weight: bold; vertical-align: middle">
                                                    <td>#</td>
                                                    <td></td>

                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>(a)</td>
                                                    <td>Admission in three years (6-semesters) Engineering/Technology Diploma will be strictly based on merit list of the marks obtained in the entrance examination.                                                        
                                                        <br />
                                                        <span class="hindiFont">rhu o"khZ; ¼6&lsesLVj½ bathfu;fjax@V sDuksykWth fMIyksek dk izos'k] izos'k ijh{kk d s izkIrkad dh esfjV fyLV ds vk/kkj ij gksxkA</span><br />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>(b)</td>
                                                    <td>Admission in two years (4-semester) Diploma in Commercial Practice, Materials Management, Marketing Management and 1⅟2 year (3-semester) Post Diploma in Computer Application will be based on the merit of marks obtained in entrance examination & the interview.
                                                        <br />
                                                        <span class="hindiFont">nks o"khZ; ¼4&lsesLVj½ dkef'kZ;y izSfDVl] esVhfj;y eSu stesUV] ekdsZfVax eSu stesUV ,oa Ms<+ o"khZ; ¼3&lsesLVj½ iksLV fMIyksek bu dEI;wVj ,Iyhds'ku dk izos'k] izos'k 
                                                            ijh{kk ,oa lk{kkRdkj d s izkIrkad ds vk/kkj ij cuh esfjV fyLV ds vk/kkj ij gksxkA
                                                        </span></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <hr />
                                    <div style="padding: 5px; font-weight: bold" class="alert alert-danger shadow"><i class="fa fa-hand-o-right" style="vertical-align: middle">&nbsp;&nbsp;</i><a style="text-align: center">ENTRANCE EXAMINATION-CENTER/LOCATION, DATE & TIME (<span class="hindiFont">izo s'k ijh{kk&d sUnz] rkjh[k rFkk le;</span>)</a></div>
                                    <hr />
                                    <div class="table table-responsive shadow" style="background-color: white">
                                        <table class="table-bordered table-striped table-hover table-condensed ">
                                            <thead>
                                                <tr style="text-align: center; font-weight: bold; vertical-align: middle">
                                                    <td>#</td>
                                                    <td></td>

                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>(a)</td>
                                                    <td>Entrance examination of three years (6-semester) Engineering/Technology Diploma will be organized at different centers in
                                                        Prayagraj. The date and time of the Entrance Examination will be announced and made available on the website www.iertonline.in
                                                        whereas centers of the candidates will be mentioned in the admit card.<br />
                                                        <span class="hindiFont">rhu o"khZ; ¼6&lsesLVj½ bathfu;fj ax@V sDuksykWth fMIyksek dh izos'k ijh{kk] izos'k ijh{kk gsr q fu/kkZfjr osclkbV www.iertonline.in ij fn;s x;s frfFk ,oa le;
                                                            d s vu qlkj iz;kxjkt ds fofHkUu dsUnzksa ij ,d lkFk lEiUu djkbZ tk;sxhA ijh{kk d sUnz dh lwpuk vH;fFkZ;ksa d s izos'k i= e as nh tk;sxhA</span><br />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>(b)</td>
                                                    <td>Entrance examination for two years (4-semester) Management Diploma and one and half year (3-semester) Post Diploma in
                                                        Computer Application will be held at IERT (Institute of Engineering & Rural Technology, 26 Chatham lines) Prayagraj.<br />
                                                        <span class="hindiFont">nks o"khZ; ¼4&lsesLVj½ eSustesUV fMIyksek ,oa Ms< + o"khZ; ¼3&lsesLVj½ iksLV fMIyksek bu dEI;wVj ,Iyhds'ku dh izos'k ijh{kk iz;kxjkt d s vkbZ0bZ0vkj0Vh0] 26] pSFke
                                                            ykbu] dsUnz ij lEiUu gksxhA
                                                        </span></td>
                                                </tr>
                                                <tr>
                                                    <td>(c)</td>
                                                    <td>All the above examination will be held on the date & time as announced and made available on the website www.iertonline.in<br />
                                                        <span class="hindiFont">mijksDr lHkh izos'k ijh{kk;sa izos'k ijh{kk gsr q fu/kkZfjr osclkbV www.iertonline.in ij fn;s x;s rkjh[k rFkk le; d s vu qlkj lEiUu djkbZ tk;sxhA
                                                        </span></td>
                                                </tr>
                                                <tr>
                                                    <td>(d)</td>
                                                    <td>If date and time of the entrance examination is changed due to any unavoidable circumstances then it will be notified in New Paper as well as website www.iertonline.in.<br />
                                                        <span class="hindiFont">;fn vifjgk;Z dkj.kksao'k ijh{kk dh rkjh[k ,oa le; esa dksbZ ifjorZu gk srk gS rks bldh lwpuk lekpkj i=ksa ,oa fu/kkZfjr osclkbV www.iertonline.in ds
                                                            ek/;e ls miyC/k djk nh tk;sxhA
                                                        </span></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <hr />
                                    <div style="padding: 5px; font-weight: bold" class="alert alert-info shadow"><i class="fa fa-hand-o-right" style="vertical-align: middle">&nbsp;&nbsp;</i><a style="text-align: center">ADMIT CARD (<span class="hindiFont">izo s'k i=</span>)</a></div>
                                    <hr />
                                    <div class="table table-responsive shadow" style="background-color: white">
                                        <table class="table-bordered table-striped table-hover table-condensed ">
                                            <thead>
                                                <tr style="text-align: center; font-weight: bold; vertical-align: middle">
                                                    <td>#</td>
                                                    <td></td>

                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>(a)</td>
                                                    <td>Admit card of the candidate will be uploaded on the website www.iertonline.in and will be available for downloading
                                                        approximately 15 days before the examination. Candidates are requested to download their admit card from the website and should
                                                        appear in the examination with a coloured printed copy of the admit card. The candidate will not be allowed to appear in the
                                                        examination without admit card. In case the candidate does not retrieve his/her admit card, he/she may contact the examination
                                                        department of IERT with his/her Registration number/Application ID generated during submission of the on line application form.
                                                        Candidate may visit Examination Department of the institute, five days before the date of examination in between 11 A.M. to 4.00
                                                        P.M. to know his roll number and center.<br />
                                                        <span class="hindiFont">izos'k i= osclkbV www.iertonline.in ij miyC/k djk fn;k tk;sxk rFkk ijh{kk frfFk ls yxHkx 15 fnu iwoZ ls vH;fFkZ;ksa dks MkmuyksM gsrq miyC/k gksxkA
                                                            vH;fFkZ;ksa dks pkfg, fd os viu s izos'k i= dh Nih jaxhu izfr ysdj izos'k ijh{kk esa lfEefyr gksus ds fy, vkosaA fcuk izos'k i= ds fdlh Hkh n'kk esa izos'k ijh{kk esa 
                                                            cSBus dh vuqefr ugha gksxhA fdlh dkj.k ls vH;FkhZ dks izos'k i= ugha feyrk gS rks ijh{kk frfFk d s ikWp fnu igys ls vkbZ0bZ0vkj0Vh0 ds ijh{kk foHkkx esa lqcg 
                                                            11-00 cts ls lk;a 4-00 ct s d s chp vkdj viuk jftLVsª'ku uEcj@vkosnu iath;u crkdj vuqdzekad ,oa d sUnz irk dj ldrs gSaA
                                                        </span>
                                                        <br />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>(b)</td>
                                                    <td>Candidate can retrieve the admit card only from the website www.iertonline.in There is no other provision/method for getting the
                                                        admit card. Under any circumstances duplicate admit card shall not be issued at examination centers and the examination
                                                        department of the institute.
                                                        <span class="hindiFont">vH;fFkZ;ksa dks viu s izos'k i= flQZ@ek= laLFkku dh osclkbV www.iertonline.in ls gh MkmuyksM }kjk izkIr gksaxsA izos'k i= izkIr djus dh dksbZ vU; fof/k
                                                            dh lqfo/kk miyC/k ugha gSA fdlh Hkh ifjfLFkfr esa MqIyhdsV izos'k i= iznku dju s dh lqfo/kk ijh{kk dsUnz ;k laLFkku d s ijh{kk foHkkx }kjk iznRr ugha gksxhA
                                                        </span></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <hr />
                                    <div style="padding: 5px; font-weight: bold" class="alert alert-warning shadow"><i class="fa fa-hand-o-right" style="vertical-align: middle">&nbsp;&nbsp;</i><a style="text-align: center">RESULT OF ENTRANCE EXAMINATION (<span class="hindiFont">izos'k ijh{kk ifj.kke</span>)</a></div>
                                    <hr />
                                    <div class="table table-responsive shadow" style="background-color: white">
                                        <table class="table-bordered table-striped table-hover table-condensed ">
                                            <thead>
                                                <tr style="text-align: center; font-weight: bold; vertical-align: middle">
                                                    <td>#</td>
                                                    <td></td>

                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>(a)</td>
                                                    <td>Separate result will be declared for Engineering/Technology Diploma, Management Diploma and Post Diploma in Computer
                                                        Application which will be strictly based on the merit as per the criteria given in point number 3(a) (b).<br />
                                                        <span class="hindiFont">zos'k ijh{kk ifj.kke izos'k dh esfjV fyLV d s vk/kkj ij fcUnq 3(a) (b) ds vu qlkj bathfu;fjax@V sDuksykWth fMIyksek] eSu stsesUV fMIyksek ,oa iksLV fMIyksek bu
                                                            dEI;wVj ,Iyhds'ku dk vyx vyx fudkyk tk;sxkA
                                                        </span>
                                                        <br />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>(b)</td>
                                                    <td>The result of entrance examination shall be displayed on the notice board of I.E.R.T., 26, Chatham lines, Prayagraj. Result will also
                                                        be available on the official website www.iertonline.in.
                                                        <span class="hindiFont">izos'k ijh{kk ifj.kke vkbZ0bZ0vkj0Vh0] iz;kxjkt d s uksfVl cksMZ ,oa laLFkku dh osclkbV www.iertonline.in ij miyC/k djk;k tk;sxkA
                                                        </span></td>
                                                </tr>
                                                <tr>
                                                    <td>(c)</td>
                                                    <td>The result of examination does not give guarantee of admission to any candidate. Admission will be given strictly on the basis of
                                                        merit, reservation and verification of legal validity of original certificates during the counseling.
                                                      <br />
                                                        <span class="hindiFont">izos'k ijh{kk ifj.kke bl izdkj dh dksbZ xkjUVh ugha n srk fd vkidk izos'k gksxk ghA izos'k] dkmfUlfyax d s le; fu/kkZfjr lhV ij esfjV] vkj{k.k] ewy izek.k i=ksa 
                                                            dh tkWp ,oa oS/krk ds vk/kkj ij fn;k tk;sxkA
                                                        </span></td>
                                                </tr>
                                                <tr>
                                                    <td>(d)</td>
                                                    <td>No allowances will be paid to the candidates for appearing in counseling.
                                                       <br />
                                                        <span class="hindiFont">dkmfUlfyax esa mifLFkr gksu s d s fy, vH;FkhZ dks fdlh izdkj dk dksbZ HkRrk n s; ugha gksxkA
                                                        </span></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <hr />
                                    <div style="padding: 5px; font-weight: bold" class="alert alert-primary shadow"><i class="fa fa-hand-o-right" style="vertical-align: middle">&nbsp;&nbsp;</i><a style="text-align: center">INTIMATION LETTER (<span class="hindiFont">izo s'k gsrq l wpuk i=</span>)</a></div>
                                    <hr />
                                    <div class="table table-responsive shadow" style="background-color: white">
                                        <table class="table-bordered table-striped table-hover table-condensed ">
                                            <thead>
                                                <tr style="text-align: center; font-weight: bold; vertical-align: middle">
                                                    <td>#</td>
                                                    <td></td>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>(a)</td>
                                                    <td>The candidates are instructed to be vigilant and watchful for the result of the Entrance Examination and should regularly see/visit
                                                        the website www.iertonline.in although, the copy of the result will be displayed on the notice board of the Institute and notification
                                                        of declaration of result will be sent to all lead newspaper of Prayagraj. Letter of offer for attending counseling, for shortlisted
                                                        candidates only, to take admission will be uploaded on the website www.iertonline.in as soon as the result is declared. The date,
                                                        time and place for counseling will be given in the letter of offer for attending the counseling. No postal letter will be sent to the
                                                        individual candidate. If the shortlisted candidate(s) have not downloaded his/her letter of offer for counseling, from the website due
                                                        to any reason, the institute will not be held responsible for the same. In any case, this letter of offer for counseling does not give any
                                                        guarantee/right of admission in the institute to the candidate, as the letter of offer, to attend the counseling, is being uploaded more
                                                        than the number of seats available for admission.<br />
                                                        <span class="hindiFont">izos'k ijh{kk ds ifj.kke d s fy, vH;fFkZ;ksa dks lrd Z ,oa ltx jgr s gq, yxkrkj laLFkku dh osclkbV www.iertonline.in dks n s[kr s gq, bl lEcU/k esa
                                                            tkudkjh izkIr djuh gksxhA ;|fi] izos'k ijh{kk ifj.kke ?kksf"kr fd;s tku s dh lwpuk iz;kxjkt d s izeq[k lekpkj i=ksa d s ek/;e ls Hkh foKkfir fd;k tk;sxk rFkk
                                                            ijh{kk ifj.kke laLFkku esa lwpuk iV~V ij Hkh miyC/k gksxkA izos'k gsr q dkmfUlfyax vkeU=.k i=] d soy bl gsr q lwphc) fd;s x;s vH;fFkZ;ksa d s fy, d soy osclkbV
                                                            www.iertonline.in ij gh miyC/k gksxk ftldks ijh{kk ifj.kke ?kksf"kr ,oa osclkbV ij miyC/k fd;s tkus d s rqjUr ckn izR;sd lQy vH;fFkZ;ksa dks MkmuyksM
                                                            djuk gksxkA dkmfUlfyax dh frfFk] le; ,oa LFkku lEcfU/kr lwpuk vH;FkhZ ds }kjk bl gsrq MkmuyksM fd;s x;s vkeU=.k i= ij gh fy[kk jgsxkA /;ku n sa fd
                                                            dkmfUlfyax gsr q Mkd d s }kjk lwpuk@tkudkjh fdlh Hkh vH;FkhZ dks ugha nh tk;sxhA vr% izos'k gsr q dkmfUlfyax dh lwpuk osclkbV ls MkmuyksM djds gh izkIr
                                                            djuk gksxk ftldh iwjh ftEesnkjh vH;FkhZ dh gh gksxhA fdUgha dkj.kksa ls vH;FkhZ ,slk ugh dj ikrk gS rks blds fy, laLFkku ftEesnkj ugha gksxkA dkmfUlfyax gsrq
                                                            vkeU=.k i=] laLFkku esa fdlh Hkh izdkj ls izos'k dh xkjUVh@vf/kdkj ugha nsrk gS] D;ksafd dkmfUlfyax gsr q vkefU=r fd;s tkus okys vH;fFkZ;ksa dh la[;k izos'k gsrq
                                                            fu/kkZfjr Nk= la[;k ls ges'kk vf/kd jgrh gSA

                                                        </span>
                                                        <br />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>(b)</td>
                                                    <td>TCandidates are instructed to be watchful and vigilant for the result and should regularly see the notice board of the institute and website www.iertonline.in
                                                        <span class="hindiFont">vH;fFkZ;ksa dks lpsr fd;k tkrk gS fd ifj.kke dh tkudkjh gsr q laLFkku dk uksfVl cksMZ ,oa osclkbV www.iertonline.in ns[ksaA
                                                        </span></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="tab5" class="jtab-content">
                <h2 style="text-align: center">ENTRANCE EXAMINATION (<span class="hindiFont"> izos'k ijh{kk</span>)</h2>
                <div class="card  shadow" style="background: none">
                    <div style="padding: 10px">
                        <br />
                        <div class="card-body">
                            <div class="row">
                                <div style="padding: 5px; font-weight: bold" class="alert alert-info shadow"><i class="fa fa-hand-o-right" style="vertical-align: middle">&nbsp;&nbsp;</i><a style="text-align: center">STRUCTURE OF ENTRANCE EXAMINATION (<span class="hindiFont">izo s'k ijh{kk dk < kWpk</span>)</a></div>
                                <hr />
                                <div class="table table-responsive" style="background-color: white">
                                    <table class="table-bordered table-striped table-hover table-condensed shadow">
                                        <thead>
                                            <tr style="text-align: center; font-weight: bold; vertical-align: middle">
                                                <td>#</td>
                                                <td></td>

                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>(a)</td>
                                                <td>Question paper will be of three hours, which will contain multiple choice type objective questions of maximum 300 (Three
                                                        hundred) marks. There will be an interview of hundred marks of those courss in which interview are part of admission process.
                                                        <br />
                                                    <span class="hindiFont">izos'k ijh{kk esa oLr qfu"B izdkj dk rhu ?kaVs dk ,d i z'ui= gksrk gS ftlds vf/kdre vad 300 gksrs gSa ftl dkslZ esa lk{kkRdkj gksrk gS mlesa lk{kkRdkj d s fy, 100 vad vyx gksrs g</span><br />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>(b)</td>
                                                <td>Every question booklet will have 75 multiple choice type objective questions with four options of answer for every question.
                                                        <br />
                                                    <span class="hindiFont">zR;sd i'uiqfLrdk esa 75 oLr qfu"B ¼vksCtsfDVo½ izdkj ds iz'u gksr s gSa ftlesa izR;sd i'u ds pkj mRrj fodYi ds :i esa gksrs gSaA
                                                    </span></td>
                                            </tr>
                                            <tr>
                                                <td>(c)</td>
                                                <td>Candidate has to attempt all the questions. For each correct answer four marks will be awarded whereas one mark will be 
                                                    deducted for each wrong answer.<br />
                                                    <span class="hindiFont">izR;sd lgh mRrj ds fy, pkj vad fn;s tkrs gSa rFkk izR; sd xyr mRrj ds fy, ,d vad dkV fy;k tkrk gSA lHkh iz'u djuk vfuok;Z gSA
                                                    </span></td>
                                            </tr>
                                            <tr>
                                                <td>(d)</td>
                                                <td>Admission process is completed strictly according to the merit in the auditorium of the institute at the time of counseling on the
                                                    scheduled time and date. If a candidate does not report on time at the call of counselor on the date of counseling he/she will be
                                                    considered absent/not interested and his/her seat of admission will be given to the candidate who stands next to hem/her in merit.
                                                        <br />
                                                    <span class="hindiFont">izos'k esfjV fyLV d s vu qlkj laLFkk d s lHkkxkj esa dkmfUlfyax ds fy, fu/kkZfjr fnukad ,oa le; ij esfjV ls fd;k tkrk gSA ;fn cqyku s ds le; ij vH;FkhZ
                                                        mifLFkr ugha gS rc esfjV ds vxys vH;FkhZ dks cqykdj izos'k izfd z;k iwjh djk yh tkrh gSA
                                                    </span></td>
                                            </tr>
                                            <tr>
                                                <td>(e)</td>
                                                <td>In any particular day pre decided fixed number of required admission is taken and then counseling is closed.<br />
                                                    <span class="hindiFont">ftl fnu ftrus izos'k dh vko';drk gksrh gS] mru s izos'k iwjk gksu s ij ml fnu dh dkmfUlfyax ogha ij cUn dj nh tkrh gSA
                                                    </span></td>
                                            </tr>
                                            <tr>
                                                <td>(f)</td>
                                                <td>It is must for the candidate to be present at the place in time as mentioned in his/her offer letter for counseling obtained
                                                    alongwith their entire original certificates, three photocopies of them, Bank Draft of the fees, twelve copies/ number of the
                                                    same photographs as affixed in the application form.<br />
                                                    <span class="hindiFont">vH;FkhZ dks lpsr fd;k tkrk gS fd dkmfUlfyax g srq mud s }kjk izkIr fd;s x;s cqykok i= e sa fu/kkZfjr LFkku ,oa le; ij Lo; a viu s lHkh ewy izek.k i= ¼rhu
                                                        izfr izR;sd dh Nk;kizfr lfgr½] Qhl dk Mªk¶V] 12 vnn Lo;a d s Qk sVksxzkQ tSlk fd vkosnu i= ij yxk;k x;k Fkk] mifLFkr gk saA
                                                    </span></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <div style="padding: 5px; font-weight: bold" class="alert alert-danger shadow"><i class="fa fa-hand-o-right" style="vertical-align: middle">&nbsp;&nbsp;</i><a style="text-align: center">ALLOTMENT OF BRANCH (<span class="hindiFont">czkUp dk vkoaVu</span>)</a></div>
                                <hr />
                                <div class="table table-responsive shadow" style="background-color: white">
                                    <table class="table-bordered table-striped table-hover table-condensed ">
                                        <thead>
                                            <tr style="text-align: center; font-weight: bold; vertical-align: middle">
                                                <td>#</td>
                                                <td></td>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>(a)</td>
                                                <td>The candidates are instructed to be vigilant and watchful for the result of the Entrance Examination and should regularly see/visit
                                                        the website www.iertonline.in although, the copy of the result will be displayed on the notice board of the Institute and notification
                                                        of declaration of result will be sent to all lead newspaper of Prayagraj. Letter of offer for attending counseling, for shortlisted
                                                        candidates only, to take admission will be uploaded on the website www.iertonline.in as soon as the result is declared. The date,
                                                        time and place for counseling will be given in the letter of offer for attending the counseling. No postal letter will be sent to the
                                                        individual candidate. If the shortlisted candidate(s) have not downloaded his/her letter of offer for counseling, from the website due
                                                        to any reason, the institute will not be held responsible for the same. In any case, this letter of offer for counseling does not give any
                                                        guarantee/right of admission in the institute to the candidate, as the letter of offer, to attend the counseling, is being uploaded more
                                                        than the number of seats available for admission.<br />
                                                    <span class="hindiFont">izos'k ijh{kk ds ifj.kke d s fy, vH;fFkZ;ksa dks lrd Z ,oa ltx jgr s gq, yxkrkj laLFkku dh osclkbV www.iertonline.in dks n s[kr s gq, bl lEcU/k esa
                                                            tkudkjh izkIr djuh gksxhA ;|fi] izos'k ijh{kk ifj.kke ?kksf"kr fd;s tku s dh lwpuk iz;kxjkt d s izeq[k lekpkj i=ksa d s ek/;e ls Hkh foKkfir fd;k tk;sxk rFkk
                                                            ijh{kk ifj.kke laLFkku esa lwpuk iV~V ij Hkh miyC/k gksxkA izos'k gsr q dkmfUlfyax vkeU=.k i=] d soy bl gsr q lwphc) fd;s x;s vH;fFkZ;ksa d s fy, d soy osclkbV
                                                            www.iertonline.in ij gh miyC/k gksxk ftldks ijh{kk ifj.kke ?kksf"kr ,oa osclkbV ij miyC/k fd;s tkus d s rqjUr ckn izR;sd lQy vH;fFkZ;ksa dks MkmuyksM
                                                            djuk gksxkA dkmfUlfyax dh frfFk] le; ,oa LFkku lEcfU/kr lwpuk vH;FkhZ ds }kjk bl gsrq MkmuyksM fd;s x;s vkeU=.k i= ij gh fy[kk jgsxkA /;ku n sa fd
                                                            dkmfUlfyax gsr q Mkd d s }kjk lwpuk@tkudkjh fdlh Hkh vH;FkhZ dks ugha nh tk;sxhA vr% izos'k gsr q dkmfUlfyax dh lwpuk osclkbV ls MkmuyksM djds gh izkIr
                                                            djuk gksxk ftldh iwjh ftEesnkjh vH;FkhZ dh gh gksxhA fdUgha dkj.kksa ls vH;FkhZ ,slk ugh dj ikrk gS rks blds fy, laLFkku ftEesnkj ugha gksxkA dkmfUlfyax gsrq
                                                            vkeU=.k i=] laLFkku esa fdlh Hkh izdkj ls izos'k dh xkjUVh@vf/kdkj ugha nsrk gS] D;ksafd dkmfUlfyax gsr q vkefU=r fd;s tkus okys vH;fFkZ;ksa dh la[;k izos'k gsrq
                                                            fu/kkZfjr Nk= la[;k ls ges'kk vf/kd jgrh gSA

                                                    </span>
                                                    <br />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>(b)</td>
                                                <td>Candidates are instructed to be watchful and vigilant for the result and should regularly see the notice board of the institute and website www.iertonline.in
                                                    <br />
                                                    <span class="hindiFont">vH;fFkZ;ksa dks lpsr fd;k tkrk gS fd ifj.kke dh tkudkjh gsr q laLFkku dk uksfVl cksMZ ,oa osclkbV www.iertonline.in ns[ksaA
                                                    </span></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <div style="padding: 5px; font-weight: bold" class="alert alert-danger shadow"><i class="fa fa-hand-o-right" style="vertical-align: middle">&nbsp;&nbsp;</i><a style="text-align: center">Fees  (<span class="hindiFont">Qhl</span>)</a></div>
                                <hr />
                                <div class="table table-responsive shadow" style="background-color: white">
                                    <table class="table-bordered table-striped table-hover table-condensed ">
                                        <thead>
                                            <tr style="text-align: center; font-weight: bold; vertical-align: middle">
                                                <td>#</td>
                                                <td></td>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>(a)</td>
                                                <td>The candidates are instructed to be vigilant and watchful for the result of the Entrance Examination and should regularly see/visit
                                                        the website www.iertonline.in although, the copy of the result will be displayed on the notice board of the Institute and notification
                                                        of declaration of result will be sent to all lead newspaper of Prayagraj. Letter of offer for attending counseling, for shortlisted
                                                        candidates only, to take admission will be uploaded on the website www.iertonline.in as soon as the result is declared. The date,
                                                        time and place for counseling will be given in the letter of offer for attending the counseling. No postal letter will be sent to the
                                                        individual candidate. If the shortlisted candidate(s) have not downloaded his/her letter of offer for counseling, from the website due
                                                        to any reason, the institute will not be held responsible for the same. In any case, this letter of offer for counseling does not give any
                                                        guarantee/right of admission in the institute to the candidate, as the letter of offer, to attend the counseling, is being uploaded more
                                                        than the number of seats available for admission.<br />
                                                    <span class="hindiFont">izos'k ijh{kk ds ifj.kke d s fy, vH;fFkZ;ksa dks lrd Z ,oa ltx jgr s gq, yxkrkj laLFkku dh osclkbV www.iertonline.in dks n s[kr s gq, bl lEcU/k esa
                                                            tkudkjh izkIr djuh gksxhA ;|fi] izos'k ijh{kk ifj.kke ?kksf"kr fd;s tku s dh lwpuk iz;kxjkt d s izeq[k lekpkj i=ksa d s ek/;e ls Hkh foKkfir fd;k tk;sxk rFkk
                                                            ijh{kk ifj.kke laLFkku esa lwpuk iV~V ij Hkh miyC/k gksxkA izos'k gsr q dkmfUlfyax vkeU=.k i=] d soy bl gsr q lwphc) fd;s x;s vH;fFkZ;ksa d s fy, d soy osclkbV
                                                            www.iertonline.in ij gh miyC/k gksxk ftldks ijh{kk ifj.kke ?kksf"kr ,oa osclkbV ij miyC/k fd;s tkus d s rqjUr ckn izR;sd lQy vH;fFkZ;ksa dks MkmuyksM
                                                            djuk gksxkA dkmfUlfyax dh frfFk] le; ,oa LFkku lEcfU/kr lwpuk vH;FkhZ ds }kjk bl gsrq MkmuyksM fd;s x;s vkeU=.k i= ij gh fy[kk jgsxkA /;ku n sa fd
                                                            dkmfUlfyax gsr q Mkd d s }kjk lwpuk@tkudkjh fdlh Hkh vH;FkhZ dks ugha nh tk;sxhA vr% izos'k gsr q dkmfUlfyax dh lwpuk osclkbV ls MkmuyksM djds gh izkIr
                                                            djuk gksxk ftldh iwjh ftEesnkjh vH;FkhZ dh gh gksxhA fdUgha dkj.kksa ls vH;FkhZ ,slk ugh dj ikrk gS rks blds fy, laLFkku ftEesnkj ugha gksxkA dkmfUlfyax gsrq
                                                            vkeU=.k i=] laLFkku esa fdlh Hkh izdkj ls izos'k dh xkjUVh@vf/kdkj ugha nsrk gS] D;ksafd dkmfUlfyax gsr q vkefU=r fd;s tkus okys vH;fFkZ;ksa dh la[;k izos'k gsrq
                                                            fu/kkZfjr Nk= la[;k ls ges'kk vf/kd jgrh gSA

                                                    </span>
                                                    <br />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>(b)</td>
                                                <td>TCandidates are instructed to be watchful and vigilant for the result and should regularly see the notice board of the institute and website www.iertonline.in
                                                       <br />
                                                    <span class="hindiFont">vH;fFkZ;ksa dks lpsr fd;k tkrk gS fd ifj.kke dh tkudkjh gsr q laLFkku dk uksfVl cksMZ ,oa osclkbV www.iertonline.in ns[ksaA
                                                    </span></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="tab6" class="jtab-content">
                <h2>Seat Allotment</h2>
            </div>
            <div id="tab7" class="jtab-content">
                <h2>Fees</h2>
            </div>
            <div id="tab8" class="jtab-content">
                <h2>Documents.</h2>
            </div>
            <div id="tab9" class="jtab-content">
                <h2>Notice</h2>
            </div>
            <div id="tab10" class="jtab-content">
                <h2>Training & Placement</h2>

            </div>

        </div>
    </div>
    <hr />
</asp:Content>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <script src="../javascript/jtab.jquery.js"></script>
    <script src="../javascript/jtab.jquery.min.js"></script>
</asp:Content>

