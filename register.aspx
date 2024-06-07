<%@ Page Title="" Language="C#" MasterPageFile="~/masterpages/home.master" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="/resources/demos/style.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div class="col-md-12 col-lg-12 col-sm-12 col-xs-12">
            <div class="card nav-border">
                <div class="table table-responsive nav-border">
                    <table width="100%" class="table-striped">
                        <thead>
                            <tr>
                                <td colspan="3" class="shadow bg-info" style="color: white">Register Yourself</td>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td style="text-align: right; width: 15%; vertical-align: middle">
                                    <label class="col-form-label" style="font-weight: bold">Select Course<sup style="color: red">&nbsp;*</sup></label>
                                </td>
                                <td colspan="2" style="text-align: left; width: 85%;">
                                    <div class="form-group">
                                        <label for="txtfirstname" class="col-md-4">
                                            <span class="h6 small bg-white text-muted pt-1 pl-2 pr-2">Select Course</span>
                                        </label>
                                        <select class="form-control mt-n3" id="ddlcourse">
                                            <option value="-1">-- Select Course --</option>
                                            <option value="1">3 Year ( 6 Semester) Engineering / Technology Diploma</option>
                                            <option value="2">2 Year (4 semester) Management Diploma</option>
                                            <option value="3">One & Half Year (3 Semester ) Post Diploma In Computer Application</option>
                                        </select>
                                    </div>
                                </td>

                            </tr>
                            <tr>
                                <td style="text-align: right; width: 15%; vertical-align: middle">
                                    <label class="col-form-label" style="font-weight: bold">First Name<sup style="color: red">&nbsp;*</sup></label>
                                </td>
                                <td colspan="2" style="text-align: left; width: 85%;">
                                    <div class="form-group">
                                        <label for="txtfirstname" class="col-md-4">
                                            <span class="h6 small bg-white text-muted pt-1 pl-2 pr-2">First Name</span>
                                        </label>
                                        <input class="form-control mt-n3" type="text" name="alpha" style="text-transform: uppercase;" onkeypress="return onlyAlphabets(event);" id="txtfirstname" />
                                    </div>
                                </td>

                            </tr>
                            <tr>
                                <td style="text-align: right; vertical-align: middle">
                                    <label class="control-label" style="font-weight: bold">Middle Name</label>
                                </td>
                                <td colspan="2">
                                    <div class="form-group">
                                        <label for="txtminame" class="col-sm-4">
                                            <span class="h6 small bg-white text-muted pt-1 pl-2 pr-2">Middle Name</span>
                                        </label>
                                        <input class="form-control mt-n3" type="text" name="alpha" style="text-transform: uppercase;" onkeypress="return onlyAlphabets(event);" id="txtminame" />
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: right; vertical-align: middle">
                                    <label class="control-label" name="alpha" style="font-weight: bold">Last Name</label>
                                </td>
                                <td colspan="2">
                                    <div class="form-group">
                                        <label for="txtlname" class="col-sm-4">
                                            <span class="h6 small bg-white text-muted pt-1 pl-2 pr-2">Last Name</span>
                                        </label>
                                        <input class="form-control mt-n3" type="text" required="required" style="text-transform: uppercase;" onkeypress="return onlyAlphabets(event);" id="txtlname" />
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: right; vertical-align: middle">
                                    <label class="control-label" style="font-weight: bold">Date of Birth<sup style="color: red">&nbsp;*</sup></label>
                                </td>
                                <td colspan="2">
                                    <div class="form-group">
                                        <label for="txtdob" class="col-sm-4">
                                            <span class="h6 small bg-white text-muted pt-1 pl-2 pr-2">Date of Birth</span>
                                        </label>
                                        <input class="form-control mt-n3" id="txtdob" placeholder="dd/mm/yyyy" />
                                    </div>
                                </td>
                            </tr>
                            <%-- <tr>
                                <td style="text-align: right; vertical-align: middle">
                                    <label class="control-label" style="font-weight: bold">Date of Birth</label>
                                </td>
                                <td>
                                    <div class="form-group">
                                        <label for="txtdob" class="col-sm-4">
                                            <span class="h6 small bg-white text-muted pt-1 pl-2 pr-2">Date of Birth</span>
                                        </label>
                                        <input class="form-control mt-n3" id="txtdob" placeholder="dd/mm/yyyy" />
                                    </div>
                                </td>
                            </tr>--%>
                            <tr>
                                <td style="text-align: right; vertical-align: middle">
                                    <label class="control-label" style="font-weight: bold">Contact No.<sup style="color: red">&nbsp;*</sup></label>
                                </td>
                                <td colspan="2">
                                    <div class="form-group">
                                        <label for="txtphone" class="col-sm-4">
                                            <span class="h6 small bg-white text-muted pt-1 pl-2 pr-2">Contact No.</span>
                                        </label>
                                        <input class="form-control mt-n3" type="tel" maxlength="10" onkeypress="return numbersonly(event)" id="txtphone" />
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: right; vertical-align: middle">
                                    <label class="control-label" style="font-weight: bold">Email Id<sup style="color: red">&nbsp;*</sup></label>
                                </td>
                                <td colspan="2">
                                    <div class="form-group">
                                        <label for="txtmail" class="col-sm-4">
                                            <span class="h6 small bg-white text-muted pt-1 pl-2 pr-2">Email Id</span>
                                        </label>
                                        <input class="form-control mt-n3" id="txtemail" />
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: right; vertical-align: middle">
                                    <label class="control-label" style="font-weight: bold">Aadhar No.<sup style="color: red">&nbsp;*</sup></label>
                                </td>
                                <td colspan="2">
                                    <div class="form-group">
                                        <label for="txtphone" class="col-sm-4">
                                            <span class="h6 small bg-white text-muted pt-1 pl-2 pr-2">Aadhar No.</span>
                                        </label>
                                        <input class="form-control mt-n3" type="tel" maxlength="12" onkeypress="return numbersonly(event)" id="txtaadhar" />
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <%-- <td style="text-align: center; width: 200px">
                                    <div class="form-inline">
                                        <label class="control-label" style="font-weight: bold">One Time Password</label>
                                        <input class="form-control" id="txtotp" placeholder="Enter OTP" />
                                    </div>
                                </td>--%>
                                <td style="text-align: right; vertical-align: middle">
                                    <div class="form-inline" style="padding-left: 80px">
                                        <label class="control-label" style="font-weight: bold">Captcha <sup style="color: red">&nbsp;*</sup></label>
                                    </div>
                                </td>
                                <td style="vertical-align: middle">
                                    <input class="form-control" placeholder="Enter Captcha Value" id="txtInput" />
                                </td>
                                <td>

                                    <div>
                                        <span id="mainCaptcha" style="text-align: right; background-image: url('../1.jpeg'); background-size: cover; vertical-align: middle; font-weight: bold; font-size: 20px; text-align: center"></span>&nbsp;&nbsp;
                                        <i id="refresh" class=" btn btn-outline-info" onclick="Captcha();">Refresh</i>
                                    </div>
                                </td>

                            </tr>

                            <tr>
                                <td></td>
                                <td style="text-align: center">
                                    <%-- <button class="btn btn-warning shadow bt-border">Get OTP</button>--%>
                                    <button class="btn btn-warning shadow bt-border" id="btnReg">Register</button>
                                </td>
                                <td>
                                    <a href="https://iertentrance.in/index.aspx" class="btn btn-outline-success shadow-lg pull-right"><i>Already registered? Login here.</i></a>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <hr />
    <div class="modal fade" id="infomodal" tabindex="-1" role="dialog" data-backdrop="static" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header" style="text-align: center; font-size: 22px; font-weight: bold">
                    <h4 class="modal-title" id="infomodalhead">Important Instructions</h4>
                    <%--<button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>--%>
                </div>
                <div class="modal-body">
                    <div class="container">
                        <a href="brouchure.pdf" style="text-align: center; color: red; font-weight: bold" class="blink">Download and read the information brouchure before filling online application form.</a>
                        <hr>
                        <div class="card shadow">
                            <div class="card-header alert alert-danger shadow">
                                <h5 style="text-align: center; font-size: 18px; font-weight: bold">Read Most Important Instructions before filling online application form<br />
                                    <br />
                                    (ऑनलाईन आवेदन भरने से पहले अति महत्वपूर्ण निर्देश पढ़ें)</h5>
                            </div>
                            <hr />
                            <div class="card-body">
                                <div class="table table-responsive" style="font-size: 18px">
                                    <table class="table-bordered table-striped ">
                                        <tr>
                                            <td>1.</td>
                                            <td>All the information regarding courses, guidelines for on line filling of application form, payment of fee and procedure of online submission of application for IERT Entrance Examination-2024 are available in the Information Brochure available on website <a href="www.iertentrance.in">www.iertentrance.in</a> only.
                            <br />
                                                आई०ई०आर०टी प्रवेश परीक्षा- 2024 में आवेदन करने के लिए आधिकारिक वेबसाइट www.iertentrance.in है I ऑनलाइन आवेदन के लिए आवश्यक समस्त सूचनाएं केवल इसी वेबसाइट <a href="https://www.iertentrance.in">www.iertentrance.in</a>
                                            पर ही उपलब्ध है I
                                        </tr>
                                        <tr>
                                            <td>2.</td>
                                            <td>All the diploma courses i.e Engineering/Technology, Management and Computer Application for which admission is being offered by the Institute, are duly recognized by the U.P. Government and approved by A.I.C.T.E., New Delhi.
	<br />
                                                संस्थान द्वारा प्रवेश हेतु आमंत्रित सभी पाठ्यक्रम, इंजीनियरिंग /टेक्नोलॉजी, प्रबंधन एवं कंप्यूटर अनुप्रयोग, उत्तर प्रदेश सर्कार द्वारा मान्यता प्राप्त तथा अखिल भारतीय तकनीकी शिक्षा परिषद् नई दिल्ली द्वारा अनुमोदित है I 
                                        </tr>
                                        <tr>
                                            <td>3.</td>
                                            <td>Eligibility criteria for all the courses offered by institute i.e 3 years (6 semester) diploma in Engineering/Technology, 2 years (4 Semester) Diploma in Management and 1½ years (3 semester) Post Diploma in Computer Application of which details about the courses are laid down in the Information Brochure. Candidates should read the Information Brochure carefully before filling up application form to ensure that they do posses minimum qualification prescribed for the course(s). The Information Brochure is available on the website <a href="www.iertentrance.in">www.iertentrance.in</a>with Read and Download option. Candidate should read it throughly either online or after downloading.
	<br />
                                                संसथान के डिप्लोमा पाठ्यक्रमों, 3 वर्षीय(6 सेमेस्टर) इंजीनियरिंग /टेक्नोलॉजी, 2 वर्षीय(4 सेमेस्टर) प्रबंधन डिप्लोमा तथा डेढ़ वर्षीय (6 सेमेस्टर) पोस्ट डिप्लोमा इन कंप्यूटर एप्लीकेशन में आवेदन हेतु अर्हताएं एवं अन्य महत्वपूर्ण नियमों तथा उपबंधों का विवरण संसथान की विवरणिका में उपलब्ध है I विवरणिका वेबसाइटwww.iertentrance.in पर पढने एवं डाउनलोड करके रखने के लिए उपलब्ध है I
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>4.</td>
                                            <td>Candidates must ensure that he/she has read each and every information regarding courses and admission procedure rules and regulations laid down in the Information Brochure before filling the ON-LINE Application Form for IERT ENTRANCE EXAMINATION-2024. The institute will not be responsible for any wrong/incorrect information furnished by the candidate(s) in their ON-LINE application form.
	<br />
                                                अभ्यर्थी विवरणिका में दिए गए सभी निर्देशों, नियमों एवं उपबंधो को पढ़कर ही आन-लाइन आवेदन भरना सुनिश्चित करें I अभ्यर्थी द्वारा आवेदन में दर्ज की गई किसी भी गलत/अशुद्ध प्रविष्टियों के लिए संस्थान किसी भी प्रकार से उत्तरदायी नही होगा I
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>5.</td>
                                            <td>All the candidates, who have submitted the online application properly and paid the application fee till last date, will only be allowed to appear in IERT ENTRANCE EXAMINATION-2024and their Admit Cards will be uploaded on the website in accordance to the schedule mentioned on the website <a href="www.iertentrance.in">www.iertentrance.in</a>
                                                <br />
                                                आई०ई०आर०टी प्रवेश परीक्षा- 2024 में आवेदन करने एवं आवेदन शुल्क जमा करने की अंतिम तिथि तक ही आवेदन करने एवं आवेदन शुल्क जमा करने वाले अभ्यार्थियों को ही प्रवेश परीक्षा में सम्मिलित किया जायेगा तथा इनके ही प्रवेश-पत्र निर्धारित वेबसाइट www.iertentrance.in पर निर्धारित समय पर अपलोड किया जायेगा I
                                        
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>6.</td>
                                            <td>The Application fee forIERT ENTRANCE EXAMINATION-2024is Rs 1350/- (Rs. One thousand three hundred fifty only) for all categories of applicants (i.e. General, OBC, SC/ST and Girls/ EWS). The application fee can be deposited Online (through Credit Card/Debit Card/Net Banking) or by depositing cash through prescribed challan in any branch of the Allahabad Bank in India. Service charges of the bank as per the guidelines of the Reserve Bank of India against each such transaction have to be paid by the candidate in addition to the application fee.
                                <br />
                                                आई०ई०आर०टी प्रवेश परीक्षा-2024 के लिए आवेदन शुल्क सभी श्रेणियों के आवेदकों (यानी सामान्य, ओबीसी, एससी/एसटी और लड़कियों/ईडब्ल्यूएस) के लिए 1350/- रुपये (केवल एक हजार तीन सौ पचास रुपये) है। आवेदन शुल्क ऑनलाइन (क्रेडिट कार्ड/डेबिट कार्ड/नेट बैंकिंग के माध्यम से) या भारत में इलाहाबाद बैंक की किसी भी शाखा में निर्धारित चालान के माध्यम से नकद जमा करके जमा किया जा सकता है। भारतीय रिज़र्व बैंक के दिशा-निर्देशों के अनुसार ऐसे प्रत्येक लेनदेन के लिए बैंक के सेवा शुल्क का भुगतान उम्मीदवार को आवेदन शुल्क के अतिरिक्त करना होगा।
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>7.</td>
                                            <td>Candidates are allowed to submit only one application form for each course offered in IERT ENTRANCE EXAMINATION-2024. If any candidate wishes to apply for more than one course, then he/she must apply separately by filling up another application form and deposit the separate application fee for this additional course.
	<br />
                                                उम्मीदवारों को आई०ई०आर०टी प्रवेश परीक्षा-2024 में प्रस्तावित प्रत्येक पाठ्यक्रम के लिए केवल एक आवेदन पत्र जमा करने की अनुमति है। यदि कोई अभ्यर्थी एक से अधिक पाठ्यक्रम के लिए आवेदन करना चाहता है, तो उसे दूसरा आवेदन पत्र भरकर अलग से आवेदन करना होगा और इस अतिरिक्त पाठ्यक्रम के लिए अलग आवेदन शुल्क जमा करना होगा।
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>8.</td>
                                            <td>The name of the candidate, his/her parent's name and date of birth in the application form must be the exactly same as it appears in their mark sheet/ certificate of High School, or equivalent class 10th examination. No prefix/title such as Mr /Shri/Er/Dr/Mrs/Smt/Col. etc. should be used.
	<br />
                                                आवेदन पत्र में उम्मीदवार का नाम, उसके माता-पिता का नाम और जन्म तिथि बिल्कुल वही होनी चाहिए जो उनकी हाई स्कूल या समकक्ष कक्षा 10वीं की मार्कशीट/प्रमाण पत्र में दी गई है। श्री / श्रीमती / इंजी / डॉ / कर्नल जैसे कोई उपसर्ग / शीर्षक नहीं। आदि का प्रयोग करना चाहिए।
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>9.</td>
                                            <td>Application fee once paid will not be refunded (full or partial) under any circumstances.
	<br />
                                                एक बार भुगतान किया गया आवेदन शुल्क किसी भी परिस्थिति में वापस (पूर्ण या आंशिक) नहीं किया जाएगा।
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>10</td>
                                            <td>Candidates may edit/ make changes in the online application form till they have not submitted the application form, once submitted, No information/field filled up by the candidate in the application form can be changed till the last date of submission of form. However, a chance may be given to the candidates to correct/modify some of the particular(s) of the application form Online only, after last date of submission of form. The candidates are advised to visit the website regularly to know the exact datewhen the correction(s)/modification(s) will be allowed online only.
	<br />
                                                उम्मीदवार ऑनलाइन आवेदन पत्र में तब तक बदलाव/बदलाव कर सकते हैं जब तक कि उन्होंने आवेदन पत्र जमा नहीं किया है, एक बार जमा करने के बाद, उम्मीदवार द्वारा आवेदन पत्र में भरी गई कोई भी जानकारी/क्षेत्र फॉर्म जमा करने की अंतिम तिथि तक नहीं बदला जा सकता है। हालाँकि, उम्मीदवारों को फॉर्म जमा करने की अंतिम तिथि के बाद केवल ऑनलाइन आवेदन पत्र के कुछ विवरणों को सही / संशोधित करने का मौका दिया जा सकता है। उम्मीदवारों को सलाह दी जाती है कि वे सही तारीख जानने के लिए नियमित रूप से वेबसाइट www.iertentrance.in देखते रहें जब सुधार (संशोधन) / संशोधन (ओं) को केवल ऑनलाइन अनुमति दी जाएगी।
                                                <br />
                                                No request for making change(s) in the filled details (online) of the candidate after submissionin online application will be entertained through offline mode(s) i.e. through fax/ postal mail or e-mail etc<br />
                                                ऑनलाइन आवेदन जमा करने के बाद उम्मीदवार के भरे हुए विवरण (ऑनलाइन) में परिवर्तन करने का                   कोई अनुरोध ऑफ़लाइन मोड के माध्यम से अर्थात फैक्स / डाक मेल या ई-मेल आदि के माध्यम से नहीं किया    जाएगा।
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>11.</td>
                                            <td>Success in entrance examination entitles the candidate(s) to appear in the counseling for admission in IERT, Prayagraj and it does not give any guarantee for admission in the any of the courses in the Institute. The offer of admission shall be subjected to verification of all the original certificates/ testimonials required at the time of counseling/admission. In case a candidate is not found eligible due to any reason even at a later date after counseling/admission to the  Institute, his/hercandidature /admission will be cancelled.
	<br />
                                                प्रवेश परीक्षा में सफलता उम्मीदवार को आईईआरटी, प्रयागराज में प्रवेश के लिए काउंसलिंग में उपस्थित    
      होने का अधिकार देती है और यह संस्थान के किसी भी पाठ्यक्रम में प्रवेश के लिए कोई गारंटी नहीं देती 
       है। प्रवेश का प्रस्ताव काउंसलिंग/प्रवेश के समय आवश्यक सभी मूल प्रमाणपत्रों/प्रशंसापत्रों के सत्यापन के 
       अधीन होगा। यदि कोई उम्मीदवार संस्थान में काउंसलिंग / प्रवेश के बाद भी बाद की तारीख में किसी 
      भी कारण से योग्य नहीं पाया जाता है, तो उसकी उम्मीदवारी / प्रवेश रद्द कर दिया जाएगा।

                                        </tr>
                                        <tr>
                                            <td>12.</td>
                                            <td>Candidates must give their own personal valid email id and their own mobile number. The candidates are advised to retain this mobile number and email-id, which they have furnished in the application form till the admission process, is completed. All the important information will be sent to the candidate(s) through SMS on mobile phone or by e-mail registered by the candidate.
	<br />
                                                उम्मीदवारों को अपनी व्यक्तिगत वैध ईमेल आईडी और अपना मोबाइल नंबर देना होगा। उम्मीदवारों को सलाह दी जाती है कि वे इस मोबाइल नंबर और ईमेल-आईडी को बनाए रखें, जिसे उन्होंने प्रवेश प्रक्रिया पूरी होने तक आवेदन पत्र में प्रस्तुत किया है। सभी महत्वपूर्ण जानकारी उम्मीदवार को मोबाइल फोन पर एसएमएस के माध्यम से या उम्मीदवार द्वारा पंजीकृत ई-मेल द्वारा भेजी जाएगी

                                        </tr>
                                        <tr>
                                            <td>13.</td>
                                            <td>Before filling up the application form, the candidate should have a scanned image of his/her photograph, signature and left hand thumb impression (right hand's thumb in case the candidate do not have left hand thumb or any finger if both thumbs are not available). These scanned images are to be uploaded during the submission of application form. The photograph should be colored of Passport size (not more than 20 kb jpg size), candidates name and date of photograph should be clearly printed on it. Candidate should not wear any cap/hat or goggles while being snapped for photograph, however, candidates using spectacles (having plain power glasses) should wear the same. Polaroid photos are not acceptable. Please ensure that the photograph should be clear and colored and candidature will not be considered If the clear photograph is not uploaded and it should be ensured that the photograph should not be older than three months at the time of submission of application form. Candidates are advised to keep at least 15 identical photographs in reserve for use at the time of Counseling and Admission (if admitted).
	<br />
                                                आवेदन पत्र भरने से पहले, उम्मीदवार के पास उसकी तस्वीर, हस्ताक्षर और बाएं हाथ के अंगूठे का निशान (उम्मीदवार के बाएं हाथ का अंगूठा नहीं होने की स्थिति में या दोनों अंगूठा उपलब्ध नहीं होने पर कोई भी उंगली होने की स्थिति में) की स्कैन की गई छवि होनी चाहिए। ). इन स्कैन की गई छवियों को आवेदन पत्र जमा करने के दौरान अपलोड किया जाना है। फोटोग्राफ पासपोर्ट आकार का रंगीन होना चाहिए (20 केबी जेपीजी आकार से अधिक नहीं), उस पर उम्मीदवार का नाम और फोटोग्राफ की तारीख स्पष्ट रूप से छपी होनी चाहिए। तस्वीर खिंचवाते समय उम्मीदवार को कोई टोपी/टोपी या चश्मा नहीं पहनना चाहिए, हालांकि, चश्मा पहनने वाले उम्मीदवारों (सादे बिजली के चश्मे वाले) को इसे पहनना चाहिए। पोलेरॉइड तस्वीरें स्वीकार्य नहीं हैं। कृपया सुनिश्चित करें कि फोटोग्राफ स्पष्ट और रंगीन होना चाहिए और यदि स्पष्ट फोटोग्राफ अपलोड नहीं किया गया है तो उम्मीदवारी पर विचार नहीं किया जाएगा और यह सुनिश्चित किया जाना चाहिए कि आवेदन पत्र जमा करने के समय फोटोग्राफ तीन महीने से अधिक पुराना नहीं होना चाहिए। उम्मीदवारों को सलाह दी जाती है कि वे कम से कम 15 एक जैसी तस्वीरों को काउंसलिंग और प्रवेश के समय उपयोग के लिए रिजर्व में रखें (यदि प्रवेश दिया जाता है)।
                                        </tr>
                                        <tr>
                                            <td>14.</td>
                                            <td>FOR IERT ENTRANCE EXAMINATION – 2024, visit the official website <a href="www.iertentrance.in">www.iertentrance.in</a>and click on the link APPLY NOW in front of the course you wish to apply. 
	<br />
                                                आई०ई०आर०टी प्रवेश परीक्षा - 2024 के लिए, आधिकारिक वेबसाइट www.iertentrance.in पर जाएं और जिस कोर्स के लिए आप आवेदन करना चाहते हैं, उसके सामने Apply Now लिंक पर क्लिक करें।
                                        </tr>
                                        <tr>
                                            <td>15.</td>
                                            <td>After clicking the APPLY NOW link, please make sure to read and agree to the instructions and disclaimer provided before filling all information related to online Registration.  
	<br />
                                                Apply Now लिंक पर क्लिक करने के बाद, कृपया ऑनलाइन पंजीकरण से संबंधित सभी जानकारी भरने से पहले प्रदान किए गए निर्देशों और अस्वीकरण को पढ़ना और सहमत होना सुनिश्चित करें।
                                        </tr>
                                        <tr>
                                            <td>16.</td>
                                            <td>After ensuring that all the entrieshas been filled up by the candidate correctly, then the candidate must pay the application fee, Rs. 1350/-(Rs. One thousand three hundred fifty only) and bank transaction charges by clicking button Click Here to make online paymentand then opting any one payment mode buttons i.e. clicking any one button showing ONLINE PAYMENT (having the options of CREDIT CARD, DEBIT CARD,&NET BANKING) or through CASHif the candidate wants to make payment of application fee through bank then click the CASH button while opting the payment mode. Then three copies of E-Challan will be generated, after taking the printout of the E-challan form(s) the candidate is required to deposit the requisite Application Fee, Rs. 1350/-(Rs. One thousand three hundred fifty only) and banking charges using aforesaid E-challan form at any Indian branch of the prescribed Bank (as mentioned in E- Challan form).After depositing the application fee candidate should keep a copy of E-Challan, duly stamped with transaction ID, given by the the bank for future use/record.
	<br />
                                                यह सुनिश्चित करने के बाद कि उम्मीदवार द्वारा सभी प्रविष्टियां सही ढंग से भरी गई हैं, उम्मीदवार को आवेदन शुल्क रु. 1350/- (केवल एक हजार तीन सौ पचास रुपये) और बैंक लेनदेन शुल्क बटन पर क्लिक करके ऑनलाइन भुगतान करने के लिए यहां क्लिक करें और फिर किसी एक भुगतान मोड बटन का चयन करें यानी ऑनलाइन भुगतान दिखाने वाले किसी भी एक बटन पर क्लिक करें (क्रेडिट कार्ड, डेबिट के विकल्प के साथ) CARD, और NET BANKING) या CASH के माध्यम से यदि उम्मीदवार आवेदन शुल्क का भुगतान बैंक के माध्यम से करना चाहते हैं तो भुगतान मोड का चयन करते समय CASH बटन पर क्लिक करें। फिर ई-चालान की तीन प्रतियां उत्पन्न होंगी, ई-चालान फॉर्म का प्रिंटआउट लेने के बाद उम्मीदवार को अपेक्षित आवेदन शुल्क, रुपये जमा करना होगा। 1350/- (रुपए एक हजार तीन सौ पचास मात्र) और निर्धारित बैंक की किसी भी भारतीय शाखा में उपरोक्त ई-चालान फॉर्म का उपयोग करके बैंकिंग शुल्क (ई-चालान फॉर्म में उल्लिखित)। आवेदन शुल्क जमा करने के बाद उम्मीदवार को एक प्रति रखनी चाहिए। ई-चालान का, भविष्य में उपयोग/रिकॉर्ड के लिए बैंक द्वारा दी गई लेनदेन आईडी के साथ विधिवत मुहर लगी हुई।
                                        </tr>
                                        <tr>
                                            <td>17.</td>
                                            <td>The decision of the Director/Chairman Examination Committee of IERT, Prayagraj regarding the eligibility of any applicant shall be final.
	<br />
                                                अभ्यर्थी के अर्हता एवं प्रवेश से सम्बन्धित निर्णय, निदेशक, आई0ई0आर0टी0 प्रयागराज/अध्यक्ष, आई0ई0आर0टी0, परीक्षा समिति का ही अन्तिम एवं मान्य होगा।
                                        </tr>
                                        <tr>
                                            <td>18</td>
                                            <td>Dispute(s) regarding the matter related to IERT Entrance Examination -2024, will be decided by The Hon’ble High Court of Allahabad.
                                <br />
                                                आई0ई0आर0टी0 प्रवेश परीक्षा-2024 से सम्बन्धित किसी विवाद का न्यायिक निस्तारण हेतु केवल माननीय इलाहाबाद उच्च न्यायालय ही होगा क्योंकि यह संस्थान प्रयागराज जनपद में अवस्थित है।
                                        </tr>
                                        <tr>
                                            <td>19.</td>
                                            <td style="text-align: center">All correspondence related to IERT ENTRANCE EXAMINATION-2024 should be sent through official email ID mentioned in the website <a href="www.iertentrance.in">www.iertentrance.in</a>  and will be  addressed to:
                             <span style="font-weight: bold">
                                 <br />
                                 Co-ordinator<br />
                                 IERT ENTRANCE EXAMINATION-2024<br />
                                 Institute of Engineering & Rural Technology,<br />
                                 26 Chatham Line, Prayagraj-211002, U.P.  (India).<br />
                                 आई0ई0आर0टी0 प्रवेश परीक्षा-2024 से सम्बन्धित पत्राचार हेतु पता-<br />
                                 समन्व्ययक<br />
                                 आई0ई0आर0टी0 प्रवेश परीक्षा-2024<br />
                                 इन्स्टीट्यूट ऑफ इन्जीनियरिंग एण्ड रूरल टेक्नॉलॉजी<br />
                                 26 चैथम लाइन, प्रयागराज-211002, उ0प्र0 (भारत)<br />
                             </span>

                                        </tr>
                                    </table>
                                </div>
                            </div>
                            <hr />
                            <div class="container" style="text-align: left">
                            </div>
                            <div class="card-footer" style="text-align: center">
                                <div class="row">
                                    <div class="col-md-4">
                                        <input type="checkbox" id="agree" />&nbsp;&nbsp;&nbsp;I Agree.
                                    </div>
                                    <%--<div class="col-md-2 control-label"></div>--%>
                                    <div class="col-md-4">
                                        <div class="">
                                             <button class="btn btn-danger shadow" id="btnproceed">Proceed</button>
                                        </div>
                                    </div>
                                   
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <%--<div class="modal-footer">
                    <button type="button" class="btn btn-secondary shadow" data-dismiss="modal">Close</button>
                </div>--%>
            </div>
        </div>
    </div>
    <div class="modal fade" id="registermodal" tabindex="-1" role="dialog" data-backdrop="static" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="registermodalhead"></h5>
                    <%--<button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>--%>
                </div>
                <div class="modal-body" id="txtmsg">
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary shadow" id="btnclose">Close</button>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="age" tabindex="-1" role="dialog" data-backdrop="static" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="agehead"></h5>
                    <%--<button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>--%>
                </div>
                <div class="modal-body" id="agetxtmsg">
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary shadow" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="Server">
    <script src="data_script/register.js"></script>
    <script src="data_script/event.js"></script>

    <script>
        $(document).ready(function () {
            $("#txtdob").attr("disabled", "disabled");
            $("#ddlcourse").bind("change", function () {
                $("#txtdob").removeAttr("disabled", "disabled");
                $("#txtdob").datepicker({
                    dateFormat: 'dd/mm/yy',
                    changeMonth: true,
                    changeYear: true,
                    yearRange: "-100:+100",
                    maxDate: new Date(),
                    onSelect: function () {
                       debugger;
                        var date = $("#txtdob").val();
                        date = date.split("/").reverse().join("/");

                        var date2 = $("#txtdob").val();
                        date2 = date.split("-").reverse().join("-");


                        // specify the birthdate as a string in the format "YYYY-MM-DD"
                        const birthdate = date2;

                        // create a new Date object based on the birthdate
                        const birthdateObj = new Date(birthdate);

                        // get the current date
                        const currentDate = new Date("01/07/2024");

                        // calculate the difference in milliseconds between the two dates
                        const diffMs = currentDate.getTime() - birthdateObj.getTime();

                        // convert the difference to years
                        const age = Math.floor(diffMs / (1000 * 60 * 60 * 24 * 365));

                        //console.log(age1); // output: the person's age as of today

                        ////var userBirthdate = "08/04/1990";
                        ////var age = calculateAge(userBirthdate);
                        ////console.log(age); // Output: 33 (if current year is 2024)

                        ////const dob = '1990-05-10';

                        ////// Calculate the age based on the current date
                        ////const age = new Date().getFullYear() - new Date(dob).getFullYear();

                        ////console.log(`You are ${age} years old.`);

                        ////var db = $("#txtdob").val();

                        //var dob = new Date(db);

                        ////calculate month difference from current date in time
                        //var month_diff = Date.now() - dob.getTime();

                        ////convert the calculated difference in date format
                        //var age_dt = new Date(month_diff);

                        ////extract year from date    
                        //var year = age_dt.getUTCFullYear();

                        ////now calculate the age of the user
                        //var age = Math.abs(year - 1970);
                        var mode = $("#ddlcourse").val();
                        debugger;
                        if (mode == 1 && age < 14) {
                            $('#agehead').html('Information');
                            $('#agetxtmsg').html('Age criteria not fulfilled');
                            $('#age').modal();
                            $('#btnReg').hide();
                        }
                        else if (mode == 2 && age < 14) {
                            $('#agehead').html('Information');
                            $('#agetxtmsg').html('Age criteria not fulfilled.');
                            $('#age').modal();
                            $('#btnReg').hide();
                        }
                        else if (mode == 3 && age < 18) {
                            $('#agehead').html('Information');
                            $('#agetxtmsg').html('Age criteria not fulfilled.');
                            $('#age').modal();
                            $('#btnReg').hide();
                        }
                        else if (mode == '-1') {
                            $('#agehead').html('Information');
                            $('#agetxtmsg').html('Age criteria not fulfilled.');
                            $('#age').modal();
                            $('#btnReg').hide();
                        }
                        else {
                            $('#btnReg').show();
                        }
                    }


                });
            })
        });



    </script>

</asp:Content>

