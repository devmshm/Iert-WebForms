
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
    debugger;
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

    //empl
    if ($('#ddlemp option:selected').val() == '-1') {
        _reg.employed = $('#dvemp').val();
    }
    else {
        _reg.employed = $('#ddlemp option:selected').val();
    }
    //posted in
    if ($('#ddlposted option:selected').val() == '-1') {
        _reg.posted = $('#dvposted').val();
    }
    else {
        _reg.posted = $('#ddlposted option:selected').val();
    }

    //income
    if ($('#ddlempscale option:selected').val() == '-1') {
        _reg.incomescale = $('#dvempscale').val();
    }
    else {
        _reg.incomescale = $('#ddlempscale option:selected').val();
    }

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

    if ($("#ddlemp option:selected").val() == '-1') {
        emp = $("#dvemp").val();
    }
    else {
        emp = $('#ddlemp option:selected').text();
    }

    if ($("#ddlposted option:selected").val() == '-1') {
        posted = $("#dvposted").val();
    }
    else {
        posted = $('#ddlposted option:selected').text();
    }

    if ($("#ddlempscale option:selected").val() == '-1') {
        scale = $("#dvempscale").val();
    }
    else {
        scale = $('#ddlempscale option:selected').text();
    }
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
        || (emp === '')
        || (scale === '')
        || (domicile === '')
        || posted === '') {
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