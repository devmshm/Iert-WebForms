$(document).ajaxStart(function () {
    ajaxindicatorstart('');
}).ajaxStop(function () {
    ajaxindicatorstop();
});

$(document).ready(function () {
   
    ADMITCARD();
    $('#printadmit').bind("click", function () {
        var d = new Date(),
            minutes = d.getMinutes().toString().length == 1 ? '0' + d.getMinutes() : d.getMinutes(),
            hours = d.getHours().toString().length == 1 ? '0' + d.getHours() : d.getHours(),
            ampm = d.getHours() >= 12 ? 'pm' : 'am',
            months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
            days = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'];
        var dx = days[d.getDay()] + ' ' + months[d.getMonth()] + ' ' + d.getDate() + ' ' + d.getFullYear() + ' ' + hours + ':' + minutes + ampm;
        var gridData = $('#admitc').html();
        var windowUrl = 'about:blank';
        var uniqueName = new Date();
        var windowName = 'Print_' + uniqueName.getTime();
        var db = '';
        var prtWindow = window.open('', '',
            'left=100,top=100,right=100,bottom=100,width=700,height=500');
        prtWindow.document.write('<html><head><style type = "text/css"> input[type="checkbox"]{display:none;}  table {    border-collapse: collapse;font-size:12px;} table, th, td{border:solid 1px #000;padding:3px;} </style></head>');
        prtWindow.document.write('<body style="background:none !important;font-family:arial;font-size:10px; margin-left:2em;margin-right:2em;">');
        prtWindow.document.write('<div style="float:left"><p style="text-align:center;">Print Date & Time : ' + dx + '</p></div><br></div><table style="width:100%;text-align:center">' + gridData + '</table>');
        prtWindow.document.write('</body></html>');
        prtWindow.document.close();
        prtWindow.focus();
        prtWindow.print();
        prtWindow.close();
    });
});

function ADMITCARD() {
    var _reg = { _appno: x[0].APPLICATIONNO }
    /*var obj = { '': '' };*/
    $.ajax({
        type: "POST",
        url: "../regService.asmx/ADMITCARD",
        data: JSON.stringify(_reg),
        contentType: "application/json;charset=utf-8",
        dataType: "json",
        async: false,
        success: function (Result) {
            Result = JSON.parse(Result.d);
            if (Result.length > 0) {
                $.each(Result, function (key, value) {
                    debugger;
                  
                    var _data = '<div class="container mt-5 mx-5">\
                        <table class="tblprint" style = "width: 100%;">\
                                    <tr style="text-align: center">\
                                        <td rowspan="2" style="width: 50px; text-align: center; vertical-align: middle">\
                                            <img src="favicon.png" style="height: 90px" /></td>\
                                        <td style="font-size: 25px">INSTITUTE OF ENGINEERING AND RURAL TECHNOLOGY (IERT)<br />\
                                            <p style="font-size: 16px; font-weight: bold" class="mt-3">IERT ENTRANCE EXAMINATION ADMIT-CARD-2024</p>\
                                        </td>\
                                    </tr>\
                                    <tr style="text-align: center">\
                                        <td>26, CHATHAM LINES, PRAYAGRAJ - 211002 (U.P), INDIA\
                                        </td>\
                                    </tr>\
                                </table>\
                            </div>\
                        <br/>\
                        <div class="container">\
                            <table class="mt-3 tblprint" width="95%" style="margin-left: auto; margin-right: auto">\
                                <tr style="vertical-align: middle; text-align: center">\
                                    <td colspan="3">'+ value.COURSE + '</td>\
                                </tr>\
                                <tr>\
                                    <td>ROLL NO.</td>\
                                    <td>'+ value.ROLL + '</td>\
                                    <td rowspan="6" style="vertical-align: middle; text-align: center">\
                                          <img src="qr.png" class="qr-code" style="height: 90px; width: 90px;" /></td>\
                                </tr>\
                                <tr>\
                                    <td>APPLICATION NO.</td>\
                                    <td id="txtapplno">'+ value.APPLICATION_NO + '</td>\
                                </tr>\
                                <tr>\
                                    <td>EXAMINATION CENTER</td>\
                                    <td id="txtcenter"> '+ value.center +'</td>\
                                </tr>\
                                <tr>\
                                    <td>DATE OF EXAM</td>\
                                    <td>'+ value.edate +'</td>\
                                </tr>\
                                <tr>\
                                    <td>EXAMINATION TIME</td>\
                                    <td>10:00 AM TO 12:00 PM</td>\
                                </tr>\
                                <tr>\
                                    <td>REPORTING TIME</td>\
                                    <td>9:00 AM</td>\
                                </tr>\
                            </table>\
                        <br/>\
                            <table class="mt-3 tblprint" width="95%" style="margin-left: auto; margin-right: auto">\
                                <tr>\
                                    <td id="name">NAME OF CANDIDATE</td>\
                                    <td>'+ value.NAME + '</td>\
                                    <td rowspan="6" style="vertical-align: middle; text-align: center">\
                                        <img src="http://localhost:49171/'+ value.PHOTO + '" style="height: 120px; width: 120px;" /></td>\
                                    <td rowspan="3" style="vertical-align: middle; text-align: center">\
                                        <img src="http://localhost:49171/'+ value.SIGN + '" id="divqrcode" style="height: 50px; width: 90px;" /></td>\
                                </tr>\
                                <tr>\
                                    <td id="fname">FATHER NAME</td>\
                                    <td>'+ value.FATHER_NAME + ' </td>\
                                </tr>\
                                <tr>\
                                    <td id="mname">MOTHER NAME</td>\
                                    <td>'+ value.MOTHER_NAME + ' </td>\
                                </tr>\
                                <tr>\
                                    <td>DATE OF BIRTH</td>\
                                    <td>'+ value.DOB + '</td>\
                                    <td rowspan="3" style="vertical-align: middle; text-align: center">\
                                        <img src="http://localhost:49171/'+ value.THUMB + '" style="height: 50px; width: 90px;" /></td>\
                                </tr>\
                                <tr>\
                                    <td>CATEGORY</td>\
                                    <td>'+ value.CATEGORY + '</td>\
                                </tr>\
                                <tr>\
                                    <td>SUB CATEGORY</td>\
                                    <td>'+ value.SUB_CATEGORY + '</td>\
                                </tr>\
                            </table>\
                            <div class="mt-3 mx-5" style="margin-left: auto; margin-right: auto">\
                                <h4 style="font-size: 20px"><b>Important Instructions</b></h4>\
                                <ul class="mt-2 mx-4" style="list-style-type: decimal; line-height: 2em">\
                                    <li>Candidates should bring along with them a valid and recent photo ID proof as mentioned in the application form for verification.\
                                    </li>\
                                    <li>Candidate should rport to their respective center 1 hour before the start of the examination. </li>\
                                    <li>Candidate should reach the examination center along with the hard copy of this admit card. Entry to the examination center will not be allowed without the admit card.</li>\
                                    <li>No candidate, in any case, will be allowed to enter the examination center after the commencement of the examination.</li>\
                                    <li>The candidate should go through the instructions mentioned on the Test Booklet and Answer OMR sheet carefully and follow them strictly.</li>\
                                    <li>Candidates should use onl;y Black Ball point pen to write particulars on the cover page of the test booklet, answer OMR sheet and for darkening the circles of the responses. Use of Pencils or any other means is strictly prohibited.</li>\
                                    <li>Carrying calculators and mobile phones are strictly prohibited and candidates are advised not to bring books,copies, electronic watches or any material that can be used as unfair means to the examination center under any circumstances. If a candidate is found processing them, he/she shall be treated as using unfair means and shall be lisable to be debarred from the Exam.\
                                    </li>\
                                    <li>Non-compliance to the instructions will yeild into rejection of the candidature for which sole responsibility will be of the candidate.\
                                    </li>\
                                    <li>Candidates should bring along with them a valid and recent photo ID proof as mentioned in the application form for verification.\
                                    </li>\
                                </ul>\
                            </div>\
                            <hr />\
                            <div class="mt-3 mx-5" style="margin-left: auto; margin-right: auto; text-align: center;">\
                                <h4 style="font-size: 20px">Note : Face mask and hand sanitizer is mandatory for entry into the examination hall\
                                </h4>\
                            </div>\
                            <div class="mt-3 mx-5" style="margin-left: auto; margin-right: auto;">\
                                <div class="pull-left col-md-4" style="text-align: center;float:left">\
                                    <p style="border: solid 1px; height: 70px;width:300px">\
                                    </p>\
                                    <br />\
                                    <p style="text-align: center">\
                                        Seal of coordinator Entrance<br />\
                                        Examination 2023 IERT<br />\
                                        Prayagraj\
                                    </p>\
                                </div>\
                                <div class="pull-right col-md-4" style="text-align: center;float:right">\
                                    <p style="border: solid 1px; height: 70px;width:300px;">\
                                        <img src="signature.png" style="height: 60px;width:250px;vertical-align:middle;padding-top:2px"/>\
                                    </p>\
                                    <br />\
                                    <p style="text-align: center">\
                                        Coordinator Entrance<br />\
                                        Examination 2024 IERT<br />\
                                        Prayagraj\
                                    </p>\
                                </div>\
                            </div>\
                        </div>'

                    debugger
                    $('#admitc1').html(_data);

                });
            }
        },
        error: function (r) {
            $('#exampleModalLabel').html('Information');
            $('#txtmsg').html('Make sure all details are correct');
            $('#exampleModal').modal();
        },
        failure: function (r) {
            $('#exampleModalLabel').html('Information');
            $('#txtmsg').html(r.responseText);
            $('#exampleModal').modal();
        }
    });
    return false;

}

function ajaxindicatorstart(text) {
    if (jQuery('body').find('#resultLoading').attr('id') !== 'resultLoading') {
        jQuery('body').append('<div id="resultLoading" style="display:none"><div><img src="../favicon.jpg" style="height:100px"><div>' + text + '</div></div><div class="bg"></div></div>');
    }
    jQuery('#resultLoading').css({
        'width': '100%',
        'height': '100%',
        'position': 'fixed',
        'z-index': '10000000',
        'top': '0',
        'left': '0',
        'right': '0',
        'bottom': '0',
        'margin': 'auto'
    });

    jQuery('#resultLoading .bg').css({
        'background': '#000000',
        'opacity': '0.7',
        'width': '100%',
        'height': '100%',
        'position': 'absolute',
        'top': '0'
    });

    jQuery('#resultLoading>div:first').css({
        'width': '250px',
        'height': '75px',
        'text-align': 'center',
        'position': 'fixed',
        'top': '0',
        'left': '0',
        'right': '0',
        'bottom': '0',
        'margin': 'auto',
        'font-size': '16px',
        'z-index': '10',
        'color': '#ffffff'

    });

    jQuery('#resultLoading .bg').height('100%');
    jQuery('#resultLoading').fadeIn();
    jQuery('body').css('cursor', 'wait');
}

function ajaxindicatorstop() {
    jQuery('#resultLoading .bg').height('100%');
    jQuery('#resultLoading').fadeOut();
    jQuery('body').css('cursor', 'default');
}