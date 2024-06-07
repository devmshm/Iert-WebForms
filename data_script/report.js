$(document).ajaxStart(function () {
    ajaxindicatorstart('');
}).ajaxStop(function () {
    ajaxindicatorstop();
});

$(document).ready(function () {

    GETREPORT();
    $('#btnPrint').bind("click", function () {
        var d = new Date(),
            minutes = d.getMinutes().toString().length == 1 ? '0' + d.getMinutes() : d.getMinutes(),
            hours = d.getHours().toString().length == 1 ? '0' + d.getHours() : d.getHours(),
            ampm = d.getHours() >= 12 ? 'pm' : 'am',
            months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
            days = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'];
        var dx = days[d.getDay()] + ' ' + months[d.getMonth()] + ' ' + d.getDate() + ' ' + d.getFullYear() + ' ' + hours + ':' + minutes + ampm;
        var gridData = $('#tbllist').html();
        // alert(gridData.innerHTML);
        var windowUrl = 'about:blank';
        //set print document name for gridview
        var uniqueName = new Date();
        var windowName = 'Print_' + uniqueName.getTime();

        var db = '';
        //डी० बी० टी० संख्या : 200401010007
        var prtWindow = window.open('', '',
            'left=100,top=100,right=100,bottom=100,width=700,height=500');
        prtWindow.document.write('<html><head><style type = "text/css"> input[type="checkbox"]{display:none;}  table {    border-collapse: collapse;font-size:12px;} table, th, td{border:solid 1px #000;padding:3px;} </style></head>');
        prtWindow.document.write('<body style="background:none !important;font-family:arial;font-size:10px; margin-left:2em;margin-right:2em;">');
        prtWindow.document.write('<h4 style="text-align:center">Registration Report </h4><table style="width:100%;text-align:center">' + gridData + '</table><p style="text-align:center;">Print Date & Time : ' + dx + '</p>');
        prtWindow.document.write('</body></html>');
        prtWindow.document.close();
        prtWindow.focus();
        //prtWindow.print();
        // prtWindow.close();

    });
});


function GETREPORT() {
    var obj = { '': '' };
    $.ajax({
        type: "POST",
        url: "../regService.asmx/GETREPORT",
        data: JSON.stringify(obj),
        contentType: "application/json;charset=utf-8",
        dataType: "json",

        success: function (Result) {
            Result = JSON.parse(Result.d);
            if (Result.length > 0) {

                $.each(Result, function (key, value) {

                    $('#tbllist tbody').append(' <tr style="text-align:center"><td>' + (key + 1) + '</td><td>' + value.COURSE + '</td><td>' + value.TOTAL + '</td><td>' + value.REGISTER + '</td><td>' + value.BASIC_UPDATED + '</td><td>' + value.ADDRESS_UPDATED + '</td><td>' + value.EDU_UPDATED + '</td><td>' + value.PHOTO_UPDATED + '</td><td>' + value.SIGN_UPDATED + '</td><td>' + value.THUMB_UPDATED + '</td><td>' + value.PAYMENTSTATUS + '</td><td>' + value.SUBMIT + '</td></tr></tbody></tbody>');
                    //$('#tbllist tbody').append(' <tr style="text-align:center"><td>' + (key + 1) + '</td><td>' + value.COURSE + '</td><td>' + value.TOTAL + '</td><td>' + value.PAYMENTSTATUS + '</td><td>' + value.SUBMIT + '</td></tr></tbody></tbody>');

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