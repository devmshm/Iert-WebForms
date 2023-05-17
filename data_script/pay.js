
var dataID = -1;
var x = JSON.parse(readCookie('dataString'));
$(document).ajaxStart(function () {
    ajaxindicatorstart('');
}).ajaxStop(function () {
    ajaxindicatorstop();
});

$(document).ready(function () {
	$('#paystatus').html('pending');
    payInfo();
	payInfo1();
});

function payInfo() {
    var obj = { _appno: x[0].APPLICATIONNO };
    $.ajax({
        type: "POST",
        url: "../regService.asmx/getpayInfo",
        data: JSON.stringify(obj),
        contentType: "application/json;charset=utf-8",
        dataType: "json",

        success: function (Result) {
            Result = JSON.parse(Result.d);
            $.each(Result, function (key, value) {
                $('#paystatus').html(value.pstatus);
                $('#payamount').html(value.amount);
                $('#refid').html(value.refid);
                $('#paydate').html(value.paydate);
                $('#dvpaystatus').html(value.pstatus);
				if(value.pstatus=="Success"){
					stepstatus();
				$('#btnpay').hide();
				}

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

function payInfo1() {
    var obj = { _appno: x[0].APPLICATIONNO };
    $.ajax({
        type: "POST",
        url: "../regService.asmx/getpayInfo1",
        data: JSON.stringify(obj),
        contentType: "application/json;charset=utf-8",
        dataType: "json",

        success: function (Result) {
            Result = JSON.parse(Result.d);
            $.each(Result, function (key, value) {
                $('#tblallpay').append('<tr>\
                    <td> ' + (key + 1) + ' </td>\
                    <td>'+ x[0].APPLICATIONNO + '\
                        </td>\
					<td>'+ value.pstatus + '</td>\
                    <td>' + value.refid + '</td>\
                    <td>' + value.paydate + '</td></tr>')
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