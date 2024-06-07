$(document).ready(function () {
   
    $('#btnregno').bind('click', function () {
        var obj = { _fname: $('#txtfrname').val(), _lname: $('#txtlname').val(), _dob: $('#txtdob').val(), _mname: $('#txtmname').val(), _mob: $('#txtmob').val(), _email: $('#txtmail').val() }
        $.ajax({
            type: "POST",
            url: "../regService.asmx/Getregno",
            data: JSON.stringify(obj),
            dataType: "json",
            contentType: "application/json;charset=utf-8",
            success: function (Result) {
                Result = JSON.parse(Result.d);
                $.each(Result, function (key, value) {
                    debugger;
                    $('#successhead').html('Information');
                    $('#successtext').html(`Your Registration/Application No. is ${value.APPLICATION_NO}`);
                    $('#success').modal();
                });
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
