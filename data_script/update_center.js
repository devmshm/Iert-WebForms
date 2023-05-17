var x = JSON.parse(readCookie('dataString'));
$(document).ready(function () {
    //docInfo();
    centerInfo();
});

$('#btncenter').click(function () {
    if (centerequired() == false)
        return false;
    var _reg = {
        appno: x[0].APPLICATIONNO,
        center1: $('#ddlcenter1 option:selected').text(),
        center2: $('#ddlcenter2 option:selected').text(),
        center3: $('#ddlcenter3 option:selected').text(),
        center4: $('#ddlcenter4 option:selected').text(),
    }
    $.ajax({
        type: "POST",
        url: "../regService.asmx/center",
        data: JSON.stringify(_reg),
        contentType: "application/json;charset=utf-8",
        dataType: "json",
        success: function (r) {
            $('#updatemodalhead').html('Information');
            $('#txtmsg').html('Center Updated.');
            $('#updatemodal').modal();

            centerInfo();
            AddpInfo();
            pInfo();
            docpInfo();
            edupInfo();
            centerpInfo();
stepstatus();
            $('#finallist').addClass("active");
            $('#centerlist').removeClass("active");
            $('#preview').addClass("active");
            $('#centerpref').removeClass("active");


        },
        error: function (r) {
        },
        failure: function (r) {
        }
    });
    return false;
});


function centerInfo() {

    var obj = { _appno: x[0].APPLICATIONNO };
    $.ajax({
        type: "POST",
        url: "../regService.asmx/centerInfo",
        data: JSON.stringify(obj),
        contentType: "application/json;charset=utf-8",
        dataType: "json",

        success: function (Result) {
            Result = JSON.parse(Result.d);
            $.each(Result, function (key, value) {
                $("#lblcity1").html(value.center1);
                $("#lblcity2").html(value.center2);
                $("#lblcity3").html(value.center3);
                $("#lblcity4").html(value.center4);
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

function centerequired() {
    debugger;
    var flag = 0;

    var city1 = $("#ddlcenter1 option:selected").val();
    var city2 = $("#ddlcenter2 option:selected").val();
    var city3 = $("#ddlcenter3 option:selected").val();
    var city4 = $("#ddlcenter4 option:selected").val();


    if ((city1 === '-1')
        || (city2 === '-1')
        || (city3 === '-1')
        || (city4 === '-1')) {
        error = 1;
        flag++;
        alert('Select All Preferences.');
    }
    else {

    }
    if (flag > 0)
        return false;
    return true;
}