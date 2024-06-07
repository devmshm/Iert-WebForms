$(document).ready(function () {
    $('#txtotp').attr("disabled", "disabled");
    $('#btnvalidate').hide();
    $('.alertmessage').hide();
    $('#btngetotp').bind('click', function () {
        var obj = { _appno: $('#txtappno').val(), _dob: $('#txtdob').val() }
        $.ajax({
            type: "POST",
            url: "../regService.asmx/GetotpData",
            data: JSON.stringify(obj),
            dataType: "json",
            contentType: "application/json;charset=utf-8",
            success: function (r, value) {
                r = JSON.parse(r.d);
                if (r.length < 1) {
                    $('#dvError').addClass('alert alert-danger');
                    $('#dvError').html('Incorrect Details. Make sure all details are correct.');
                }
                else {
                    $.each(r, function (key, _value) {
                        createCookie('_d', JSON.stringify(r));
                        var _temp = JSON.parse(readCookie('_d'));
                        _cont = _value.phone;
                        var obj = { _cont: _cont, _appno: _temp[0].APPLICATION_NO };
                        var a = 'XXXXXX' + _cont.substring(_cont.length - 4);
                        $('#dvError').addClass('alert alert-danger shadow');
                        $('#dvError').html('OTP has been sent to <span style="color:red;font-weight:bold">' + a + '</span>.<br/>Please enter the OTP here to verify.')
                        $.ajax({
                            type: "POST",
                            url: "../regService.asmx/sendotp",
                            data: JSON.stringify(obj),
                            contentType: "application/json;charset=utf-8",
                            dataType: "json",
                            success: function (Result) {
                                Result = JSON.parse(Result.d);
                                $.each(Result, function (key, _val) {
                                    var _x = _val.otp;
                                    $('#btngetotp').hide();
                                    $('#txtotp').removeAttr("disabled");
                                    $('#btnvalidate').show();
                                    $('#btnvalidate').bind('click', function () {
                                        if ($('#txtotp').val() == _x) {
                                            $('#passwordmodalhead').html('Change Passowrd');
                                            $('#passwordmodal').modal();
                                        }
                                        else {
                                            $('#dvError').addClass('alert alert-danger shadow');
                                            $('#dvError').html('Invalid OTP');
                                        }
                                    });

                                });
                            },
                            error: function (r) {
                            },
                            failure: function (r) {
                            }
                        });
                    });
                }
            },
            error: function (r) {
                alert(r.responseText);
            }, failure: function (r) {
                alert(r.responseText);
            }
        });
        return false;
    });
});

$("#txtcpass").blur(function () {
    var password = $("#txtnew").val();
    $("#divCheckPasswordMatch").html(password == $(this).val()
        ? "Passwords match."
        : "Passwords do not match!"
    );
    if ($("#divCheckPasswordMatch").html() == "Passwords do not match!") {
        $("#divCheckPasswordMatch").show();
        $('#btnupdatepass').attr("disabled", "disabled");
    }

    if ($("#divCheckPasswordMatch").html() == "Passwords matched.") {
        $("#divCheckPasswordMatch").show();
        $('#btnupdatepass').removeAttr("disabled", "disabled");1
    }
    //else {
    //    $('#btnupdatepass').attr("disabled", "disabled");
    //}
});

$("#btnupdatepass").bind("click", function () {
    var _temp = JSON.parse(readCookie('_d'));
    var _appno = _temp[0].APPLICATION_NO;
    var _confirmpass = $('#txtcpass').val();
    var obj = { _appno: _appno, _confirmpass: _confirmpass };

    $.ajax({
        type: "POST",
        url: "../regService.asmx/updatepassword",
        data: JSON.stringify(obj),
        contentType: "application/json;charset=utf-8",
        dataType: "json",
        success: function (r) {
            $("#btnupdatepass").hide();
            $('#btnvalidate').hide();
            $('#successhead').html('Information');
            $('#successtext').html('Password Changed Successfully..!!');
            $('#success').modal();
            $('#passwordmodal').modal('hide');
        },
        error: function (r) {
            alert('Try again');
        },
        failure: function (r) {
            alert('Try Again');
        }
    });
    return false;
});

$("#txtnew").blur(function () {
    validatePassword();
});

function validatePassword() {
    var p = $('#txtnew').val();
    errors = [];
    if (p.length < 8) {
        errors.push("Your password must be at least 8 characters");
    }
    if (p.search(/[a-z]/i) < 0) {
        errors.push("Your password must contain at least one small letter.");
    }
    if (p.search(/[0-9]/) < 0) {
        errors.push("Your password must contain at least one number.");
    }
    if (p.search(/[!@#$%^&*]/) < 0) {
        errors.push("Your password must contain at least one special character.");
    }
    if (p.search(/[A-Z]/) < 0) {
        errors.push("Your password must contain at least one capital letter.");
    }
    if (errors.length > 0) {
        $("#divCheckPasswordMatch").html(errors.join("\n <br/>"));
        $("#btnupdatepass").attr("disabled", "disabled");
        return false;
    } else {
        $("#divCheckPasswordMatch").hide();
        $("#btnupdatepass").removeAttr("disabled", "disabled");
    }
    return true;
}