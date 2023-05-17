$(document).ajaxStart(function () {
    ajaxindicatorstart('');
}).ajaxStop(function () {
    ajaxindicatorstop();
});

$(document).ready(function () {
    //$('#finalsubmit').hide();
	$('#finalsubmit').attr("disabled", "disabled");
    $('#formstatus').html('Incomplete');
    $('#frmstatus').html('Incomplete');
    $('#apptext').html('Application Form Preview / Final Submit');
    $("#chkfinal").click(function () {
        if ($(this).is(':checked')) {
            $('#finalsubmit').removeAttr("disabled", "disabled");
			
        }
    });
    getstatus();
    getsubmitinfo();

});

$('#finalsubmit').click(function () {
    if (confirm('Are you sure ? You will not be able to make change after submission. ')) {
        var _reg = {
            appno: x[0].APPLICATIONNO
        }
        $.ajax({
            type: "POST",
            url: "../regService.asmx/submit",
            data: JSON.stringify(_reg),
            contentType: "application/json;charset=utf-8",
            dataType: "json",
            success: function (r) {
                $('#updatemodalhead').html('Information');
                $('#txtmsg').html('Application Form Successfully Submitted.');
                $('#updatemodal').modal();
                $('.isvalid').attr("disabled", "disabled");
                $('.isddlvalid').hide();
                $('#finalsubmit').hide();
                window.location.reload();
                getsubmitinfo();


            },
            error: function (r) {
            },
            failure: function (r) {
            }
        });
        return false;
    }
});

function getstatus() {
    var _reg = { _appno: x[0].APPLICATIONNO }
    $.ajax({
        type: "POST",
        url: "../regService.asmx/getprint",
        data: JSON.stringify(_reg),
        contentType: "application/json;charset=utf-8",
        dataType: "json",

        success: function (r) {
            Result = JSON.parse(r.d);
            $.each(Result, function (key, value) {
               
                if ((value.BASIC_UPDATED == '1') && (value.ADDRESS_UPDATED == '1') && (value.EDU_UPDATED == '1') && (value.PHOTO_UPDATED == '1') && (value.SIGN_UPDATED == '1') && (value.THUMB_UPDATED == '1') &&(value.CENTER_UPDATED=='1')&& (value.ORDERSTATUS == '1')) {

                    $('#finalsubmit').show();
                    //$('#btnupdatebasic').show();
                    //$('#btnupdateAdd').show();
                    //$('#btnupdateEdu').show();
                    //$('#btnphoto').show();
                    //$('#btnsign').show();
                    //$('#btnthumb').show();
                    //$('#btncenter').show();
                }
                else {
                    $('#finalsubmit').hide();
                    // $('#finalsubmit').attr("disabled", "disabled");
                    // $('#finalsubmit').hide();
                    //$('#btnupdatebasic').hide();
                    //$('#btnupdateAdd').hide();
                    //$('#btnupdateEdu').hide();
                    //$('#btnphoto').hide();
                    //$('#btnsign').hide();
                    //$('#btnthumb').hide();
                    //$('#btncenter').hide();
                }
            });
        },
        error: function (r) {
        },
        failure: function (r) {
        }
    });
    return false;
}

function getsubmitinfo() {
    var _reg = { _appno: x[0].APPLICATIONNO }
    $.ajax({
        type: "POST",
        url: "../regService.asmx/submitinfo",
        data: JSON.stringify(_reg),
        contentType: "application/json;charset=utf-8",
        dataType: "json",

        success: function (r) {
            Result = JSON.parse(r.d);
            $.each(Result, function (key, value) {
                debugger;
                if ((value.issubmitted == '1')) {
                    $('.isvalid').attr("disabled", "disabled");
                    $('.isddlvalid').hide();
                    $('#finalsubmit').hide();
                    $('#btnupdatebasic').hide();
                    $('#btnupdateAdd').hide();
                    $('#btnupdateEdu').hide();
                    $('#btnphoto').hide();
                    $('#btnsign').hide();
                    $('#btnthumb').hide();
                    $('#btncenter').hide();
                    $('#apptext').html('Print Application');
                    $('#formstatus').html('Submitted');
                    $('#frmstatus').html('Submitted');
                    $('#tbldetails').removeAttr("class", "tbldetails")
                }
                else {
                    $('.isvalid').removeattr("disabled", "disabled");
                    $('.isddlvalid').show();
                    $('#finalsubmit').show();
                    $('#btnupdatebasic').show();
                    $('#btnupdateAdd').show();
                    $('#btnupdateEdu').show();
                    $('#btnphoto').show();
                    $('#btnsign').show();
                    $('#btnthumb').show();
                    $('#btncenter').show();
                    $('#apptext').html('Application Form Preview / Final Submit');
                    $('#formstatus').html('Incomplete');
                    $('#frmstatus').html('Incomplete');
                    $('#tbldetails').Attr("class", "tbldetails");
                }
            });
        },
        error: function (r) {
        },
        failure: function (r) {
        }
    });
    return false;
}

function stepstatus() {
    var _reg = { _appno: x[0].APPLICATIONNO }
    $.ajax({
        type: "POST",
        url: "../regService.asmx/getprint",
        data: JSON.stringify(_reg),
        contentType: "application/json;charset=utf-8",
        dataType: "json",

        success: function (r) {
            Result = JSON.parse(r.d);
            $.each(Result, function (key, value) {
                debugger;
                if (value.BASIC_UPDATED == '1') {
                    //$('#dvsbasic').removeAttr("class", "fa fa-close");
                    $('#dvsbasic').attr("class", "fa fa-check");
                  
                    $('#dvsbasic').attr("style", "color:green");

                }
                else {
                    $('#dvsbasic').removeAttr("class", "fa fa-check");
                    $('#dvsbasic').attr("class", "fa fa-close");
                    $('#dvsbasic').attr("style", "color:red");
                }
                if (value.ADDRESS_UPDATED == '1') {

                    $('#dvsadd').attr("class", "fa fa-check");                   
                    $('#dvsadd').attr("style", "color:green");

                }
                else {
                    /*$('#dvsadd').removeAttr("class", "fa fa-check");*/
                    $('#dvsadd').attr("class", "fa fa-close");
                    $('#dvsadd').attr("style", "color:red");
                }
                if (value.EDU_UPDATED == '1') {

                    $('#dvsedu').attr("class", "fa fa-check");
                    //$('#dvsedu').removeAttr("class", "fa fa-close");
                    $('#dvsedu').attr("style", "color:green");

                }
                else {
                   // $('#dvsedu').removeAttr("class", "fa fa-check");
                    $('#dvsedu').attr("class", "fa fa-close");
                    $('#dvsedu').attr("style", "color:red");
                }

                if (value.PHOTO_UPDATED == '1') {

                    $('#dvsphoto').attr("class", "fa fa-check");
                    //$('#dvsphoto').removeAttr("class", "fa fa-close");
                    $('#dvsphoto').attr("style", "color:green");

                }
                else {
                  //  $('#dvsphoto').removeAttr("class", "fa fa-check");
                    $('#dvsphoto').attr("class", "fa fa-close");
                    $('#dvsphoto').attr("style", "color:red");
                }

                if (value.SIGN_UPDATED == '1') {

                    $('#dvssign').attr("class", "fa fa-check");
                 //   $('#dvssign').removeAttr("class", "fa fa-close");
                    $('#dvssign').attr("style", "color:green");

                }
                else {
                   // $('#dvssign').removeAttr("class", "fa fa-check");
                    $('#dvssign').attr("class", "fa fa-close");
                    $('#dvssign').attr("style", "color:red");
                }

                if (value.THUMB_UPDATED == '1') {

                    $('#dvsthumb').attr("class", "fa fa-check");
                   // $('#dvsthumb').removeAttr("class", "fa fa-close");
                    $('#dvsthumb').attr("style", "color:green");

                }
                else {
                   // $('#dvsthumb').removeAttr("class", "fa fa-check");
                    $('#dvsthumb').attr("class", "fa fa-close");
                    $('#dvsthumb').attr("style", "color:red");
                }

                if (value.ORDERSTATUS == '1') {
                    $('#dvspay').attr("class", "fa fa-check");
                  //  $('#dvspay').removeAttr("class", "fa fa-close");
                    $('#dvspay').attr("style", "color:green");

                }
                else {
                    //$('#dvspay').removeAttr("class", "fa fa-check");
                    $('#dvspay').attr("class", "fa fa-close");
                    $('#dvspay').attr("style", "color:red");
                }
				 if (value.CENTER_UPDATED == '1') {
                    $('#dvscenter').attr("class", "fa fa-check");
                  //  $('#dvspay').removeAttr("class", "fa fa-close");
                    $('#dvscenter').attr("style", "color:green");

                }
                else {
                    //$('#dvspay').removeAttr("class", "fa fa-check");
                    $('#dvscenter').attr("class", "fa fa-close");
                    $('#dvscenter').attr("style", "color:red");
                }
				if (value.ISSUBMITTED == '1') {
                    $('#dvsfinal').attr("class", "fa fa-check");
                  //  $('#dvspay').removeAttr("class", "fa fa-close");
                    $('#dvsfinal').attr("style", "color:green");

                }
                else {
                    //$('#dvspay').removeAttr("class", "fa fa-check");
                    $('#dvsfinal').attr("class", "fa fa-close");
                    $('#dvsfinal').attr("style", "color:red");
                }
                

            });
        },
        error: function (r) {
        },
        failure: function (r) {
        }
    });
    return false;

}


function ajaxindicatorstart(text) {
    if (jQuery('body').find('#resultLoading').attr('id') !== 'resultLoading') {
        jQuery('body').append('<div id="resultLoading" style="display:none"><div><img src="../favicon.png"><div>' + text + '</div></div><div class="bg"></div></div>');
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
