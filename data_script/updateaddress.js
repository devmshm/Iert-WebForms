var dataID = -1;
var x = JSON.parse(readCookie('dataString'));
$(document).ready(function () {
    AddInfo();
    getcity();
    getpostcity();

});

$('#btnupdateAdd').click(function () {
   
    if (addrequired() === false)
        return false;

    var _reg = {};
    _reg.Application_no = x[0].APPLICATIONNO;
    _reg.per_Address_Line1 = $('#txtadd1').val();
    _reg.per_Address_Line2 = $('#txtadd2').val();
    _reg.per_Address_Line3 = $('#txtadd3').val();
    if ($('#ddlstates option:selected').val() == '-1') {
        _reg.per_states = $('#dvstate').val();
    }
    else {
        _reg.per_states = $('#ddlstates option:selected').text();
    }

    _reg.per_city = $('#ddlcity').val()
    _reg.per_pincode = $('#txtpincode').val()
    _reg.post_Address_Line1 = $('#txtpostadd1').val();
    _reg.post_Address_Line2 = $('#txtpostadd2').val();
    _reg.post_Address_Line3 = $('#txtpostadd3').val();
    if ($('#ddlpoststates option:selected').val() == '-1') {
        _reg.post_states = $('#dvpoststate').val();
    }
    else {
        _reg.post_states = $('#ddlpoststates option:selected').text();
    }

    _reg.post_city = $('#ddlpostcity').val()
    _reg.post_pincode = $('#txtpostpincode').val()

    $.ajax({
        type: "POST",
        url: "../regService.asmx/upaddress",
        data: "{_update: " + JSON.stringify(_reg) + "}",
        contentType: "application/json;charset=utf-8",
        dataType: "json",

        success: function (r) {
            $('#updatemodalhead').html('Information');
            $('#txtmsg').html('Address Details Updated.');
            $('#updatemodal').modal();
            //alert('Address Details Updated');
            AddInfo();
            stepstatus();
            stepstatus1();
          
            $('#edulist').addClass("active");
            $('#edulist').addClass("shadow");
            $('#addresslist').removeClass("active");
            $('#addresslist').removeClass("shadow");
            $('#educational').addClass("active");
            $('#address').removeClass("active");
        },
        error: function (r) {
            $('#updatemodal').html('Information');
            $('#txtmsg').html('Make sure all details are correct');
            $('#updatemodal').modal();
        },
        failure: function (r) {

            $('#exampleModalLabel').html('Information');
            $('#txtmsg').html(r.responseText);
            $('#exampleModal').modal();
        }
    });
    return false;
})

function getstate() {
    $.ajax({
        type: "POST",
        url: "../regService.asmx/getState",
        contentType: "application/json;charset=utf-8",
        dataType: "json",
        success: function (Result) {

            $('#ddlpoststates').empty().append('<option selected="selected" value="-1">Select</option>');
            Result = JSON.parse(Result.d);
            $.each(Result, function (key, value) {

                $('#ddlstates').append($("<option></option>").val(value.code).html(value.html));



            });
        },
        error: function (r) {
            $('#messagebody').addClass("modal-dialog modal-danger");
            $("#messagecontent").html(r.responseText);
        },
        failure: function (r) {
            alert(r.responseText);
        }
    });
}

function getpoststate() {
    $.ajax({
        type: "POST",
        url: "../regService.asmx/getState",
        contentType: "application/json;charset=utf-8",
        dataType: "json",
        success: function (Result) {
            $('#ddlpoststates').empty().append('<option selected="selected" value="-1">Select</option>');
            Result = JSON.parse(Result.d);
            $.each(Result, function (key, value) {
                $('#ddlpoststates').append($("<option></option>").val(value.code).html(value.html));
            });
        },
        error: function (r) {
            $('#messagebody').addClass("modal-dialog modal-danger");
            $("#messagecontent").html(r.responseText);
        },
        failure: function (r) {
            alert(r.responseText);
        }
    });
}
function getpostcity() {
    getpoststate();
    $('#ddlpoststates').bind('change', function () {

        var Obj = { state_id: $('#ddlpoststates').val() };
        $.ajax({
            type: "POST",
            url: "../regService.asmx/getcity",
            data: JSON.stringify(Obj),
            contentType: "application/json;charset=utf-8",
            dataType: "json",
            success: function (Result) {
                $('#postcity').empty().append('<option selected="selected" value="">Select</option>');
                Result = JSON.parse(Result.d);
                $.each(Result, function (key, value) {
                    $('#postcity').append($("<option></option>").html(value.CITY));
                });
            },
            error: function (r) {
                $('#messagebody').addClass("modal-dialog modal-danger");
                $("#messagecontent").html(r.responseText);
            },
            failure: function (r) {
                alert(r.responseText);
            }
        });
    });
}

function getcity() {
    getstate();
    $('#ddlstates').bind('change', function () {

        var Obj = { state_id: $('#ddlstates').val() };
        $.ajax({
            type: "POST",
            url: "../regService.asmx/getcity",
            data: JSON.stringify(Obj),
            contentType: "application/json;charset=utf-8",
            dataType: "json",
            success: function (Result) {
                $('#city').empty().append('<option selected="selected" value="">Select</option>');
                Result = JSON.parse(Result.d);
                $.each(Result, function (key, value) {
                    $('#city').append($("<option></option>").html(value.CITY));
                });
            },
            error: function (r) {
                $('#messagebody').addClass("modal-dialog modal-danger");
                $("#messagecontent").html(r.responseText);
            },
            failure: function (r) {
                alert(r.responseText);
            }
        });
    });
}

$("#checkit").click(function () {
    debugger;
    if ($(this).is(':checked')) {
        var add1 = $("#txtadd1").val();
        var add2 = $("#txtadd2").val();
        var add3 = $("#txtadd3").val();
        var pin = $("#txtpincode").val();
        var city = $("#ddlcity").val();
        var state;
        if ($('#ddlstates option:selected').val() == '-1') {
            state =  $('#dvstate').val();
        }
        else {
            state = $('#ddlstates option:selected').text();
        }
      

        //set the variable in lower form with vars set above
        $("#txtpostadd1").val(add1);
        $("#txtpostadd2").val(add2);
        $("#txtpostadd3").val(add3);
        $('#dvpoststate').val(state);
        
        $("#ddlpostcity").val(city);
        $("#txtpostpincode").val(pin);
    } else {
        $("#txtpostadd1").val('');
        $("#txtpostadd2").val('');
        $("#txtpostadd3").val('');
        $("#ddlpostcity").val('');
        $("#txtpostpincode").val('');
        $('#dvpoststate').val('');
        getpoststate();
        getpostcity();
    }
});

function AddInfo() {

    var obj = { _appno: x[0].APPLICATIONNO };
    $.ajax({
        type: "POST",
        url: "../regService.asmx/addInfo",
        data: JSON.stringify(obj),
        contentType: "application/json;charset=utf-8",
        dataType: "json",

        success: function (Result) {
            Result = JSON.parse(Result.d);
            $.each(Result, function (key, value) {

                $("#txtadd1").val(value.add1);
                $("#txtadd2").val(value.add2);
                $("#txtadd3").val(value.add3);
                $("#dvstate").val(value.state);
                $("#dvpoststate").val(value.poststate);
                //if (value.isupdated == '1') {

                //    $('#ddlstates').empty();
                //    $('#ddlstates').append($("<option>" + value.state + "</option>"));
                //    getcity();
                //}
                //else { }
                //if (value.isupdated == '1') {

                //    $('#ddlpoststates').empty();
                //    $('#ddlpoststates').append($("<option>" + value.poststate + "</option>"));

                //} else { }

                $("#ddlcity").val(value.city);
                $("#txtpostadd1").val(value.postadd1);
                $("#txtpostadd2").val(value.postadd2);
                $("#txtpostadd3").val(value.postadd3);
                $("#ddlpostcity").val(value.postcity);
                $("#txtpincode").val(value.pin);
                $("#txtpostpincode").val(value.postpin);

            })
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



function addrequired() {
    debugger;
    var flag = 0;
    var perstate;
    var poststate;
    var peradd1 = $("#txtadd1").val();
    if ($("#ddlstates option:selected").val() == '-1') {
        perstate = $("#dvstate").val();
    }
    else {
        perstate = $('#ddlstates option:selected').text();
    }

    var percity = $("#ddlcity").val();

    var postadd1 = $("#txtpostadd1").val();
    if ($("#ddlpoststates option:selected").val() == '-1') {
        poststate = $("#dvpoststate").val();
    }
    else {
        poststate = $('#dvpoststate option:selected').text();
    }
    // var poststate = $("#dvpoststate").val();
    var postcity = $("#ddlpostcity").val();

    if ((peradd1 === '') || (percity === '') || (perstate === '') ||
        (postadd1 === '') || (postcity === '') || (poststate === '')) {
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