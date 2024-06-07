var dataID = -1;
var x = JSON.parse(readCookie('dataString'));
$(document).ready(function () {

    eduInfo();
});

$('#btnupdateEdu').click(function () {
    debugger;
    if (x[0].ccode == '1') {
        if ($('#ddlhpass option:selected').val() == 'Passed') {
            if (hsrequired() === false)
                return false;
        }
    }
    if (x[0].ccode == '2') {
        if ($('#ddlhpass option:selected').val() == 'Passed') {
            if (hsrequired() === false)
                return false;
        }
        if ($('#ddlipass option:selected').val() == 'Passed') {
            if (IMrequired() === false)
                return false;
        }
    }

    if (x[0].ccode == '3') {
        if ($('#ddlhpass option:selected').val() == 'Passed') {
            if (hsrequired() === false)
                return false;
        }
        if ($('#ddlipass option:selected').val() == 'Passed') {
            if (IMrequired() === false)
                return false;
        }
    }

    var _reg = {};
    debugger;
    _reg.Application_no = x[0].APPLICATIONNO;

    if ($('#ddlhpass option:selected').val() == '-1') {
        _reg.Hpassed = $('#dvhpassed').val();
    }
    else {
        _reg.Hpassed = $('#ddlhpass option:selected').text();
    }
    if ($('#ddlhpstate option:selected').val() == '-1') {
        _reg.Hpstate = $('#dvhpstate').val();
    }
    else {
        _reg.Hpstate = $('#ddlhpstate option:selected').text();
    }
    if ($('#ddlhboard option:selected').val() == '-1') {
        _reg.Hboard = $('#dvhboard').val();
    }
    else {
        _reg.Hboard = $('#ddlhboard option:selected').text();
    }
    if ($('#ddlhstream option:selected').val() == '-1') {
        _reg.HStream = $('#dvhstream').val();
    }
    else {
        _reg.HStream = $('#ddlhstream option:selected').text();
    }

    _reg.Hcollege = $("#txthcollege").val();
    _reg.Hyear = $("#txthyp").val();
    _reg.HSubjects = $("#txthsub").val();
    _reg.Hmax_mark = $("#txthmax").val();
    _reg.Hobt_marks = $("#txthobt").val();

    if ($('#ddlipass option:selected').val() == '-1') {
        _reg.Ipassed = $('#dvipassed').val();
    }
    else {
        _reg.Ipassed = $('#ddlipass option:selected').text();
    }
    if ($('#ddlipstate option:selected').val() == '-1') {
        _reg.Ipstate = $('#dvipstate').val();
    }
    else {
        _reg.Ipstate = $('#ddlipstate option:selected').text();
    }
    if ($('#ddliboard option:selected').val() == '-1') {
        _reg.Iboard = $('#dviboard').val();
    }
    else {
        _reg.Iboard = $('#ddliboard option:selected').text();
    }

    if ($('#ddlistream option:selected').val() == '-1') {
        _reg.IStream = $('#dvistream').val();
    }
    else {
        _reg.IStream = $('#ddlistream option:selected').text();
    }

    _reg.Icollege = $("#txticollege").val();
    _reg.Iyear = $("#txtiyp").val();
    _reg.ISubjects = $("#txtisub").val();
    _reg.Imax_mark = $("#txtimax").val();
    _reg.Iobt_marks = $("#txtiobt").val();

    if ($('#ddlgpass option:selected').val() == '-1') {
        _reg.Gpassed = $('#dvgpassed').val();
    }
    else {
        _reg.Gpassed = $('#ddlgpass option:selected').text();
    }
    if ($('#ddlgpstate option:selected').val() == '-1') {
        _reg.Gpstate = $('#dvgpstate').val();
    }
    else {
        _reg.Gpstate = $('#ddlgpstate option:selected').text();
    }
    if ($('#ddlgstream option:selected').val() == '-1') {
        _reg.GStream = $('#dvgstream').val();
    }
    else {
        _reg.GStream = $('#ddlgstream option:selected').text();
    }
    if ($('#ddlgboard option:selected').val() == '-1') {
        _reg.Gboard = $('#dvgboard').val();
    }
    else {
        _reg.Gboard = $('#ddlgboard option:selected').text();
    }

    _reg.Gcollege = $('#txtgcollege').val();
    _reg.Gyear = $("#txtgyear").val();
    //_reg.GSubjects = "NA";
    _reg.GSubjects = $("#txtgsub").val();
    _reg.Gmax_mark = $("#txtgmax").val();
    _reg.Gobt_marks = $("#txtgobt").val();
    _reg.gbranch = $("#txtgbranch").val();

    if ($('#ddldpass option:selected').val() == '-1') {
        _reg.Dpassed = $('#dvdpassed').val();
    }
    else {
        _reg.Dpassed = $('#ddldpass option:selected').text();
    }
    if ($('#ddldpstate option:selected').val() == '-1') {
        _reg.Dpstate = $('#dvdpstate').val();
    }
    else {
        _reg.Dpstate = $('#ddldpstate option:selected').text();
    }
    if ($('#ddldstream option:selected').val() == '-1') {
        _reg.DStream = $('#dvdstream').val();
    }
    else {
        _reg.DStream = $('#ddldstream option:selected').text();
    }
    if ($('#ddldboard option:selected').val() == '-1') {
        _reg.Dboard = $('#dvdboard').val();
    }
    else {
        _reg.Dboard = $('#ddldboard option:selected').text();
    }
    _reg.Dcollege = $('#txtdcollege').val();
    _reg.Dyear = $("#txtdyp").val();
    _reg.DSubjects = $("#txtdsub").val();
    // _reg.DSubjects = "NA";
    _reg.Dmax_mark = $("#txtdmax").val();
    _reg.Dobt_marks = $("#txtdobt").val();
    _reg.Dbranch = $("#txtdbranch").val();

    $.ajax({
        type: "POST",
        url: "../regService.asmx/upedu",
        data: "{_update: " + JSON.stringify(_reg) + "}",
        contentType: "application/json;charset=utf-8",
        dataType: "json",
        success: function (r) {
            $('#updatemodalhead').html('Information');
            $('#txtmsg').html('Educational Details Updated.');
            $('#updatemodal').modal();
            eduInfo();
            stepstatus();
            stepstatus1();
            $('#doclist').addClass("active");
            $('#edulist').removeClass("active");
            $('#documents').addClass("active");
            $('#educational').removeClass("active");
        },
        error: function (r) {
            $('#updatemodal').html('Information');
            $('#txtmsg').html('Make sure all details are correct');
            $('#updatemodal').modal();
        },
        failure: function (r) {

            $('#updatemodal').html('Information');
            $('#txtmsg').html(r.responseText);
            $('#updatemodal').modal();
        }
    });
    return false;

})

function eduInfo() {

    var obj = { _appno: x[0].APPLICATIONNO };
    $.ajax({
        type: "POST",
        url: "../regService.asmx/geteduInfo",
        data: JSON.stringify(obj),
        contentType: "application/json;charset=utf-8",
        dataType: "json",

        success: function (Result) {
            Result = JSON.parse(Result.d);
            $.each(Result, function (key, value) {

                $("#dvhpassed").val(value.Hpassed);
                $("#dvhpstate").val(value.Hpstate);
                $("#dvhboard").val(value.Hboard);

                $("#txthcollege").val(value.Hcollege);
                $("#txthyp").val(value.Hyear);
                $("#dvhstream").val(value.HStream);
                $("#txthsub").val(value.HSubjects);
                $("#txthmax").val(value.Hmax_mark);
                $("#txthobt").val(value.Hobt_marks);

                $("#dvipassed").val(value.Ipassed);
                $("#dvipstate").val(value.Ipstate);
                $("#dviboard").val(value.Iboard);

                $("#txticollege").val(value.Icollege);
                $("#txtiyp").val(value.Iyear);
                $("#dvistream").val(value.IStream);
                $("#txtisub").val(value.ISubjects);
                $("#txtimax").val(value.Imax_mark);
                $("#txtiobt").val(value.Iobt_marks);

                $("#dvdpassed").val(value.Dpassed);
                $("#dvdpstate").val(value.Dpstate);
                $("#dvdboard").val(value.Dboard);

                $("#txtdcollege").val(value.Dcollege);
                $("#txtdyp").val(value.Dyear);
                $("#dvdstream").val(value.DStream);
                $("#txtdsub").val(value.HSubjects);
                $("#txtdmax").val(value.Dmax_mark);
                $("#txtdobt").val(value.Dobt_marks);

                $("#dvgpassed").val(value.Gpassed);
                $("#dvgpstate").val(value.Gpstate);
                $("#txtgbranch").val(value.Gbranch);
                $("#dvgboard").val(value.Gboard);
                $("#txtgcollege").val(value.Gcollege);
                $("#txtgyear").val(value.Gyear);
                $("#dvgstream").val(value.GStream);
                $("#txtgsub").val(value.GSubjects);
                $("#txtgmax").val(value.Gmax_mark);
                $("#txtgobt").val(value.Gobt_marks);


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

function hsrequired() {

    var flag = 0;

    /*var Hboard = $("#txthboard").val();*/
    var Hyear = $("#txthyear").val();
    var HSubjects;// = $("#txtshsub").val();
    var Hmax_mark = $("#txthmax").val();
    var Hobt_marks = $("#txthobt").val();
    var hpass;
    var hpstate;
    var hboard;


    if ($("#ddlhpass option:selected").val() == '-1') {
        hpass = $("#dvhpass").val();
    }
    else {
        hpass = $('#ddlhpass option:selected').text();
    }
    if ($("#ddlhboard option:selected").val() == '-1') {
        hboard = $("#dvhboard").val();
    }
    else {
        hboard = $('#ddlhboard option:selected').text();
    }
    if ($("#ddlhpstate option:selected").val() == '-1') {
        hpstate = $("#dvpstate").val();
    }
    else {
        hpstate = $('#ddlhpstate option:selected').text();
    }
    if ($("#ddlhstream option:selected").val() == '-1') {
        HSubjects = $("#dvhstream").val();
    }
    else {
        HSubjects = $('#ddlhstream option:selected').text();
    }

    if ((hboard === '') || (Hyear === '') || (HSubjects === '') || (Hmax_mark === '') ||
        (Hobt_marks === '') || (hpass === '') || (hpstate === '')) {
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

function IMrequired() {

    var flag = 0;
    //var Iboard = $("#txtiboard").val();
    var Iyear = $("#txtiyp").val();
    var ISubjects;// = $("#txtigsub").val();
    var Imax_mark = $("#txtimax").val();
    var Iobt_marks = $("#txtiobt").val();

    var ipass;
    var ipstate;
    var iboard;

    if ($("#ddlipass option:selected").val() == '-1') {
        ipass = $("#dvipass").val();
    }
    else {
        ipass = $('#ddlipass option:selected').text();
    }
    if ($("#ddliboard option:selected").val() == '-1') {
        iboard = $("#dviboard").val();
    }
    else {
        iboard = $('#ddliboard option:selected').text();
    }
    if ($("#ddlipstate option:selected").val() == '-1') {
        ipstate = $("#ddlipstate").val();
    }
    else {
        ipstate = $('#ddlipstate option:selected').text();
    }
    if ($("#ddlistream option:selected").val() == '-1') {
        ISubjects = $("#dvistream").val();
    }
    else {
        ISubjects = $('#ddlistream option:selected').text();
    }

    if ((iboard === '') || (Iyear === '') || (ISubjects === '') || (Imax_mark === '') ||
        (Iobt_marks === '') || (ipass === '') || (ipstate === '')) {
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

function gradrequired() {

    var flag = 0;

    var Gyear = $("#txtgyear").val();
    var GSubjects = $("#txtgsub").val();
    var Gmax_mark = $("#txtgmax").val();
    var Gobt_marks = $("#txtgobt").val();
    var Gbranch = $("#txtgbranch").val();

    var gpass;
    var gpstate;


    if ($("#ddlgpass option:selected").val() == '-1') {
        gpass = $("#dvgpass").val();
    }
    else {
        gpass = $('#ddlgpass option:selected').text();
    }

    if ($("#ddlgpstate option:selected").val() == '-1') {
        gpstate = $("#ddlgpstate").val();
    }
    else {
        gpstate = $('#ddlgpstate option:selected').text();
    }

    if ((Gyear === '')

        || (Gmax_mark === '')
        || (Gobt_marks === '')
        || (Gbranch == '')
        || (gpass == '')
        || (gpstate == '')) {
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


function diprequired() {

    var flag = 0;

    var dyear = $("#txtdyp").val();
    var dSubjects = $("#txtdsub").val();
    var dmax_mark = $("#txtdmax").val();
    var dobt_marks = $("#txtdobt").val();
    var dbranch = $("#txtdbranch").val();

    var dpass;
    var dpstate;


    if ($("#ddldpass option:selected").val() == '-1') {
        dpass = $("#dvdpass").val();
    }
    else {
        dpass = $('#ddldpass option:selected').text();
    }

    if ($("#ddldpstate option:selected").val() == '-1') {
        dpstate = $("#dvdpstate").val();
    }
    else {
        dpstate = $('#ddlgpstate option:selected').text();
    }

    if ((dboard === '')
        || (dyear === '')

        || (dmax_mark === '')
        || (dobt_marks === '')
        || (dbranch == '')
        || (dpass == '')
        || (dpstate == '')) {
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