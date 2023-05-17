$(document).ajaxStart(function () {
    ajaxindicatorstart('');
}).ajaxStop(function () {
    ajaxindicatorstop();
});

var dataID = -1;
$(document).ready(function () {
    $('#infomodal').modal();
    $("#btnproceed").attr("disabled", "disabled");
    $("#agree").click(function () {

        if ($(this).is(':checked')) {
            $("#btnproceed").removeAttr("disabled", "disabled");
        }
        else {
            $("#btnproceed").attr("disabled", "disabled");
        }
    });
    $("#btnproceed").click(function () {
        //$('#infomodal').close();
        $('#infomodal').modal('hide');
    });
    $("#btnclose").click(function () {

        $('#registermodal').modal('hide');
        window.location = "index.aspx";
    });
    Captcha();

});
function Captcha() {
    var alpha = new Array('1', '2', '3', '4', '5', '6', '7', '8', '9', '0', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z');
    var i;
    for (i = 0; i < 6; i++) {
        var a = alpha[Math.floor(Math.random() * alpha.length)];
        var b = alpha[Math.floor(Math.random() * alpha.length)];
        var c = alpha[Math.floor(Math.random() * alpha.length)];
        var d = alpha[Math.floor(Math.random() * alpha.length)];
        var e = alpha[Math.floor(Math.random() * alpha.length)];
        var f = alpha[Math.floor(Math.random() * alpha.length)];
        var g = alpha[Math.floor(Math.random() * alpha.length)];
    }
    var code = a + ' ' + b + ' ' + ' ' + c + ' ' + d;
    document.getElementById("mainCaptcha").innerHTML = code
}
function ValidCaptcha() {
    var string1 = removeSpaces(document.getElementById('mainCaptcha').innerHTML);
    var string2 = removeSpaces(document.getElementById('txtInput').value);
    if (string1 == string2) {
        return true;
    }
    else {
        return false;
    }
}
function removeSpaces(string) {
    return string.split(' ').join('');
}

$('#btnReg').click(function () {
    if (validateEmail() == false)
        return false;
    else if (required() === false)
        return false;

    else if (ValidCaptcha() == false) {
        alert('Captcha Error');
    }
    else if (contact() == false)
        return false
    else if (aadhar() == false)
        return false
    else {
        var _reg = {};
        _reg.reg_Id = dataID;
        _reg.first_name = $('#txtfirstname').val();
        _reg.course = $('#ddlcourse option:selected').text();
        _reg.ccode = $('#ddlcourse').val();
        _reg.middle_name = $('#txtminame').val();
        _reg.Last_name = $('#txtlname').val();
        _reg.mobile_no = $('#txtphone').val();
        _reg.Email_id = $('#txtemail').val();
        _reg.DOB = $('#txtdob').val();
        _reg.Aadhar = $('#txtaadhar').val();
        $.ajax({
            type: "POST",
            url: "../regService.asmx/register",
            data: "{_register: " + JSON.stringify(_reg) + "}",
            contentType: "application/json;charset=utf-8",
            dataType: "json",
            success: function (r) {
                r = JSON.parse(r.d);
                if (r[0].APPLICATION_NO == 2) {
                    $('#registermodalhead').html('Information');
                    $('#txtmsg').html('Already Registered For This Course.');
                    $('#registermodal').modal();
                    $('#btnReg').attr("disabled", "disabled");
                }
                else if (r[0].APPLICATION_NO == 0) {
                    $('#registermodalhead').html('Information');
                    $('#txtmsg').html('Cannot Process Your Request. Try Again.');
                    $('#registermodal').modal();
                    $('#btnReg').attr("disabled", "disabled");
                }
                else {
                    $('#registermodalhead').html('Information');
                    $('#txtmsg').html('Registered successfully ' + 'Your Application No is  : ' + r[0].APPLICATION_NO + ' and password is : ' + r[0].PASSWORDS + '.' + '</br><a href="https://iertentrance.in" target="_blank" class="blink" style="color:blue;font-weight:bold" > Click Here to Login and complete your Registration form </a>');
                    $('#registermodal').modal();
                    $('#btnReg').attr("disabled", "disabled");
                }

            },
            error: function (r) {
                responseText(r)
            },
            failure: function (r) {

                responseText(r)
            }
        });
        return false;
    }
})
function validateEmail() {
    var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;

    if (reg.test($('#txtemail').val()) == false) {
        alert('Invalid Email Address');
        return false;
    }

    return true;

}

function required() {

    var flag = 0;
    var frname = $("#txtfirstname").val();
    var miname = $("#txtminame").val();
    var DOB = $("#txtdob").val();
    var lname = $("#txtlname").val();
    var contact = $("#txtphone").val();
    var email = $("#txtemail").val();
    var course = $("#ddlcourse option:selected").val();
    var addhar = $("#txtaadhar").val();


    if ((frname === '')  || (contact === '') || (email === '') || (course === '-1') || (DOB === '') || (addhar == '')) {
        error = 1;
        flag++;
        alert('All fields are required.');
    }
    else {

    }
    if (flag > 0)
        return false;
    return true;
}
function contact() {

    var textbox = document.getElementById("txtphone");
    //var schoolname = $("#txtphone").val()
    var flag = 0;
    if (textbox.value.length !== 10) {
        alert("Contact No. must be 10 digit.")
        flag++;
    }
    if (flag > 0)
        return false;
    return true;
}
function aadhar() {

    var textbox = document.getElementById("txtaadhar");
    //var schoolname = $("#txtphone").val()
    var flag = 0;
    if (textbox.value.length !== 12) {
        alert("Aadhar No. must be 12 digit.")
        flag++;
    }
    if (flag > 0)
        return false;
    return true;
}

function ajaxindicatorstart(text) {
    if (jQuery('body').find('#resultLoading').attr('id') !== 'resultLoading') {
        jQuery('body').append('<div id="resultLoading" style="display:none"><div><img style="height:100px" src="../favicon.png"><div>' + text + '</div></div><div class="bg"></div></div>');
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
