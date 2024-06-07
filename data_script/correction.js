
var dataID = -1;
var x = JSON.parse(readCookie('dataString'));
$(document).ajaxStart(function () {
    ajaxindicatorstart('');
}).ajaxStop(function () {
    ajaxindicatorstop();
});

$(document).ready(function () {
    if (x == null) {
        eraseCookie('dataString');
        window.location = 'https://iertentrance.in/index.aspx';
    }
    else {
        Info();
        AddInfo();
        getcity();
        getpostcity();
        eduInfo();
        $("#appnopay").html(x[0].APPLICATIONNO);
        //$("#appnopay").html(x[0].APPLICATIONNO);
        $("input[name='merchant_param1']").val(x[0].APPLICATIONNO);
        $("#appid1").val(x[0].APPLICATIONNO);
        $("input[name='order_id']").val(x[0].APPLICATIONNO);
        $("input[name='amount']").val("1350.0");
        $("#amount1").val("1350.0");
        $('#appno').html(x[0].APPLICATIONNO);
        //$('#ddlsubcat').attr("disabled", "disabled");
        $('#ddlews').attr("disabled", "disabled");
    }
});

$('#btnupdatebasic').click(function () {
    if (required() === false)
        return false;
    var _reg = {};

    _reg.Application_no = x[0].APPLICATIONNO;
    _reg.father_name = $('#txtfname').val();
    _reg.Mother_name = $('#txtmname').val();
    _reg.caste = $('#txtcaste').val();

    /*gen*/
    if ($('#ddlgender option:selected').val() == '-1') {
        _reg.Gender = $('#dvgender').val();
    }
    else {
        _reg.Gender = $('#ddlgender option:selected').text();
    }

    //cat
    if ($('#ddlcat option:selected').val() == '-1') {
        _reg.Category = $('#dvcat').val();
    }
    else {
        _reg.Category = $('#ddlcat option:selected').text();
    }

    /*subcat*/
    if ($('#ddlsubcat option:selected').val() == '-1') {
        _reg.Sub_category = $('#dvsubcat').val();
    }
    else {
        _reg.Sub_category = $('#ddlsubcat option:selected').text();
    }

    //ews
    if ($('#ddlews option:selected').val() == '-1') {
        _reg.ews = $('#dvews').val();
    }
    else {
        _reg.ews = $('#ddlews option:selected').text();
    }

    //nat
    if ($('#txtnat option:selected').val() == '-1') {
        _reg.Nationality = $('#dvnat').val();
    }
    else {
        _reg.Nationality = $('#txtnat option:selected').val();
    }

    //religion
    if ($('#ddlreligion option:selected').val() == '-1') {
        _reg.religion = $('#dvreligion').val();
    }
    else {
        _reg.religion = $('#ddlreligion option:selected').val();
    }

    ////empl
    //if ($('#ddlemp option:selected').val() == '-1') {
    //    _reg.employed = $('#dvemp').val();
    //}
    //else {
    //    _reg.employed = $('#ddlemp option:selected').val();
    //}
    ////posted in
    //if ($('#ddlposted option:selected').val() == '-1') {
    //    _reg.posted = $('#dvposted').val();
    //}
    //else {
    //    _reg.posted = $('#ddlposted option:selected').val();
    //}

    ////income
    //if ($('#ddlempscale option:selected').val() == '-1') {
    //    _reg.incomescale = $('#dvempscale').val();
    //}
    //else {
    //    _reg.incomescale = $('#ddlempscale option:selected').val();
    //}

    //domicile
    if ($('#ddldomicile option:selected').val() == '-1') {
        _reg.Domicile = $('#dvdomicile').val();
    }
    else {
        _reg.Domicile = $('#ddldomicile option:selected').val();
    }

    $.ajax({
        type: "POST",
        url: "../regService.asmx/upbasic",
        data: "{_update: " + JSON.stringify(_reg) + "}",
        contentType: "application/json;charset=utf-8",
        dataType: "json",

        success: function (r) {
            // r = r.d;
            // alert('')
            $('#updatemodalhead').html('Information');
            $('#txtmsg').html('Basic Details updated');
            $('#updatemodal').modal();
            $('#btnReg').attr("disabled", "disabled");
            Info();
            stepstatus();
            $('#addresslist').addClass("active");
            $('#addresslist').addClass("shadow");
            $('#basiclist').removeClass("active");
            $('#basiclist').removeClass("shadow");
            $('#address').addClass("active");
            $('#basic').removeClass("active");
            //var index = $(this).index();
            //$("#t1").removeClass("active");
            //$("#t2").eq(index).addClass("active");

        },
        error: function (r) {
            //$('#exampleModalLabel').html('Information');
            //$('#txtmsg').html('Make sure all details are correct');
            //$('#exampleModal').modal();
        },
        failure: function (r) {

            //$('#exampleModalLabel').html('Information');
            //$('#txtmsg').html(r.responseText);
            //$('#exampleModal').modal();
        }
    });
    return false;
})

function Info() {
    var obj = { _appno: x[0].APPLICATIONNO };
    $.ajax({
        type: "POST",
        url: "../regService.asmx/getInfo",
        data: JSON.stringify(obj),
        contentType: "application/json;charset=utf-8",
        dataType: "json",

        success: function (Result) {
            Result = JSON.parse(Result.d);
            $.each(Result, function (key, value) {
                $('#txtfirstname').val(value.first_name);
                $('#ddlcourse').val(value.course);
                $('#txtminame').val(value.middle_name);
                $('#txtlname').val(value.Last_name);
                $('#txtphone').val(value.mobile_no);
                $('#txtmail').val(value.Email_id);
                $('#txtfname').val(value.father_name);
                $('#txtmname').val(value.mother_name);
                $('#txtdob').val(value.dob);
                $('#dvnat').val(value.nationality);
                $('#dvgender').val(value.gender);
                $('#txtcaste').val(value.caste);
                $('#dvsubcat').val(value.sub_category);
                $('#dvews').val(value.ews);
                $('#dvcat').val(value.category);
                $('#dvreligion').val(value.religion);
                $('#dvemp').val(value.emp);
                $('#dvempscale').val(value.scale);
                $('#dvdomicile').val(value.domicile);
                $('#dvposted').val(value.posted);
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

$('#ddlcat').bind('change', function () {
    debugger;
    if ($('#ddlcat').val() != 'General') {
        $('#ddlews').empty().append('<option selected="selected" value="-1">--Select--</option>');
        //$('#ddlews').append('<option selected="selected" value="-1">--Select--</option>');
        //$('#ddlews option:selected').val('-1');
        //$('#ddlews option:selected').text('--Select--');
        $('#ddlews').append('<option value="YES">YES</option>');
        $('#ddlews').append('<option value="NO">NO</option>');
        $('#ddlews').attr("disabled", "disabled");
        //$('#ddlsubcat').removeAttr("disabled", "disabled");
    }
    else if ($('#ddlcat').val() == 'General') {
        $('#ddlews').removeAttr("disabled", "disabled");
    }
});


function required() {
    debugger;
    var flag = 0;
    var fname = $("#txtfname").val();
    var mname = $("#txtmname").val();

    var caste = $("#txtcaste").val();
    var nat;// = $("#dvnat").val();

    var cat;
    var gen;
    var subcat; // = $("#dvsubcat").val();
    var emp;
    var scale;
    var religion;
    var domicile;
    var posted;


    if ($("#ddlcat option:selected").val() == '-1') {
        nat = $("#dvnat").val();
    }
    else {
        nat = $('#txtnat option:selected').text();
    }
    if ($("#txtcat option:selected").val() == '-1') {
        cat = $("#dvcat").val();
    }
    else {
        cat = $('#ddlcat option:selected').text();
    }
    if ($("#ddlgender option:selected").val() == '-1') {
        gen = $("#dvgender").val();
    }
    else {
        gen = $('#ddlgender option:selected').text();
    }
    //
    if ($("#ddlsubcat option:selected").val() == '-1') {
        subcat = $("#dvsubcat").val();
    }
    else {
        subcat = $('#ddlsubcat option:selected').text();
    }

    //if ($("#ddlemp option:selected").val() == '-1') {
    //    emp = $("#dvemp").val();
    //}
    //else {
    //    emp = $('#ddlemp option:selected').text();
    //}

    //if ($("#ddlposted option:selected").val() == '-1') {
    //    posted = $("#dvposted").val();
    //}
    //else {
    //    posted = $('#ddlposted option:selected').text();
    //}

    //if ($("#ddlempscale option:selected").val() == '-1') {
    //    scale = $("#dvempscale").val();
    //}
    //else {
    //    scale = $('#ddlempscale option:selected').text();
    //}
    if ($("#ddlreligion option:selected").val() == '-1') {
        religion = $("#dvreligion").val();
    }
    else {
        religion = $('#ddlreligion option:selected').text();
    }
    if ($("#ddldomicile option:selected").val() == '-1') {
        domicile = $("#dvdomicile").val();
    }
    else {
        domicile = $('#ddldomicile option:selected').text();
    }

    if ((fname === '')
        || (mname === '')
        || (caste === '')
        || (nat === '')
        || (cat === '')
        || (gen === '')
        || (subcat === '')
        || (religion === '')      
        || (domicile === '')){
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
/*Education Details*/
$('#btnupdateEdu').click(function () {
    debugger;
    if (x[0].ccode == '1') {
        if (hsrequired() === false)
            return false;
    }
    if (x[0].ccode == '2') {
        if (hsrequired() === false)
            return false;
        else if (IMrequired() === false)
            return false;
    }
    if (x[0].ccode == '3') {
        if (hsrequired() === false)
            return false;
        else if (IMrequired() === false)
            return false;
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
/*End Education Details*/

/*Address Details*/
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
            debugger;
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
            state = $('#dvstate').val();
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
/*End Address Details*/


/*Photo sign*/

$(document).on("change", "input[type=file]", function (event) {

    var $Control = $(this);
    var $row = $(this).closest('tr').find('td')
    var type = $(this).attr("data-type");
    //console.log(type);
    $.each(event.target.files, function (index, file) {
        var reader = new FileReader();
        var fileExtension = ['jpeg', 'jpg'];
        var fileType = file.name.split('.').pop().toLowerCase();
        reader.onload = function (event) {
            if ($.inArray((file.name).split('.').pop().toLowerCase(), fileExtension) == -1) {

                alert("Only formats are allowed : " + fileExtension.join(', '));
                $Control.val('');
                return false;
            }
            var size = parseFloat(file.size / 1024).toFixed(2);
            if (size > 8024.00) {
                alert("File Size Exceeded");
                $Control.val('');
                $('#btnSave').prop("disabled", true);
                $('#btnUploadImage').prop("disabled", true);
                return false;
            }
            else {
                $('#btnSave').prop("disabled", false);
                $('#btnUploadImage').attr("disabled", false);
            }
            var data_index = (event.target.result).indexOf("base64") + 7;
            var filedata = (event.target.result).slice(data_index, (event.target.result).length);
            console.log(filedata);
            //console.log(event.target.result)
            $Control.attr({
                "data-file": filedata,
                "data-name": fileType,
            });
        };
        reader.readAsDataURL(file);
    });

});
$('#btnphoto').click(function () {
    debugger;
    var _reg = {
        appno: x[0].APPLICATIONNO,
        cimage: $('#photo').data("file"),
        ext: $('#photo').data("name"),
        mode: '1'
    }
    $.ajax({
        type: "POST",
        url: "../regService.asmx/upphoto",
        data: JSON.stringify(_reg),
        contentType: "application/json;charset=utf-8",
        dataType: "json",

        success: function (r) {
            docInfo();
            //stepstatus();
            //stepstatus1();
            $('#updatemodalhead').html('Information');
            $('#txtmsg').html('Photograph Updated.');
            $('#updatemodal').modal();
            $('#btnphoto').hide();


        },
        error: function (r) {
            //$('#exampleModalLabel').html('Information');
            //$('#txtmsg').html('Make sure all details are correct');
            //$('#exampleModal').modal();
        },
        failure: function (r) {

            //$('#exampleModalLabel').html('Information');
            //$('#txtmsg').html(r.responseText);
            //$('#exampleModal').modal();
        }
    });
    return false;
});

$('#btnsign').click(function () {
    debugger;
    var _reg = {
        appno: x[0].APPLICATIONNO,
        cimage: $('#Sign').data("file"),
        ext: $('#Sign').data("name"),
        mode: '2'
    }
    $.ajax({
        type: "POST",
        url: "../regService.asmx/upphoto",
        data: JSON.stringify(_reg),
        contentType: "application/json;charset=utf-8",
        dataType: "json",

        success: function (r) {
            $('#updatemodalhead').html('Information');
            $('#txtmsg').html('Signature Updated.');
            $('#updatemodal').modal();
            $('#btnsign').hide();
            docInfo();
            stepstatus();
            stepstatus1();
        },
        error: function (r) {
            //$('#exampleModalLabel').html('Information');
            //$('#txtmsg').html('Make sure all details are correct');
            //$('#exampleModal').modal();
        },
        failure: function (r) {

            //$('#exampleModalLabel').html('Information');
            //$('#txtmsg').html(r.responseText);
            //$('#exampleModal').modal();
        }
    });
    return false;
});

$('#btnthumb').click(function () {
    debugger;
    var _reg = {
        appno: x[0].APPLICATIONNO,
        cimage: $('#Thumbimpression').data("file"),
        ext: $('#Thumbimpression').data("name"),
        mode: '3'
    }
    $.ajax({
        type: "POST",
        url: "../regService.asmx/upphoto",
        data: JSON.stringify(_reg),
        contentType: "application/json;charset=utf-8",
        dataType: "json",

        success: function (r) {
            $('#updatemodalhead').html('Information');
            $('#txtmsg').html('Thumb Updated.');
            $('#updatemodal').modal();
            $('#btnthumb').hide();
            docInfo();
            stepstatus();
            stepstatus1();
        },
        error: function (r) {
            //$('#exampleModalLabel').html('Information');
            //$('#txtmsg').html('Make sure all details are correct');
            //$('#exampleModal').modal();
        },
        failure: function (r) {

            //$('#exampleModalLabel').html('Information');
            //$('#txtmsg').html(r.responseText);
            //$('#exampleModal').modal();
        }
    });
    return false;
});


function docInfo() {
    var obj = { _appno: x[0].APPLICATIONNO };
    $.ajax({
        type: "POST",
        url: "../regService.asmx/docInfo",
        data: JSON.stringify(obj),
        contentType: "application/json;charset=utf-8",
        dataType: "json",
        success: function (Result) {
            Result = JSON.parse(Result.d);
            $.each(Result, function (key, value) {
                $("#dvimg").attr("href", value.img);
                $("#dvsign").attr("href", value.sign);
                $("#dvthumb").attr("href", value.thumb);
            })
        },
        error: function (r) {
            //$('#exampleModalLabel').html('Information');
            //$('#txtmsg').html('Make sure all details are correct');
            //$('#exampleModal').modal();
        },
        failure: function (r) {

            //$('#exampleModalLabel').html('Information');
            //$('#txtmsg').html(r.responseText);
            //$('#exampleModal').modal();
        }

    });
    return false;

}

function ajaxindicatorstart(text) {
    if (jQuery('body').find('#resultLoading').attr('id') !== 'resultLoading') {
        jQuery('body').append('<div id="resultLoading" style="display:none"><div><img src="../ajax-loader.gif"><div>' + text + '</div></div><div class="bg"></div></div>');
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