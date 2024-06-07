$(document).ajaxStart(function () {
    ajaxindicatorstart('');
}).ajaxStop(function () {
    ajaxindicatorstop();
});

$(document).ready(function () {
    debugger;
    
    $('#edulist').hide();
    $('#doclist').hide();
    $('#centerlist').hide();
    $('#finallist').hide();
    $('#pay').hide();
    stepstatus1();

});
function stepstatus1() {
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
                    $('#addresslist').show();
                    //$('#address').show();    

                }
                else {
                    $('#addresslist').click(function () {
                        alert('Update Basic Details.');
                        $('#address').hide();
                    });   
                    $('#addresslist').hide();
                }
              
                if (value.ADDRESS_UPDATED == '1') {

                    //$('#educational').show();
                    $('#edulist').show();
                }
                else {
                    $('#edulist').click(function () {
                        alert('Update Previous Details.');
                        $('#educational').hide();
                    }); 
                    $('#edulist').hide();
                }
                if (value.EDU_UPDATED == '1') {
                    //$('#documents').show();
                    $('#doclist').show();

                }
                else {
                    $('#doclist').click(function () {
                        alert('Update Previous Details.');
                        //$('#documents').hide();
                    }); 
                    $('#doclist').hide();
                }

                if (value.PHOTO_UPDATED == '1' && value.SIGN_UPDATED == '1' && value.THUMB_UPDATED == '1') {
                   
                    $('#centerlist').show();
                    //$('#centerpref').show();
                }
                else {
                    $('#centerlist').click(function () {
                        alert('Update Previous Details.');
                       // $('#centerpref').hide();
                    });
                    $('#centerlist').hide();
                }

                if (value.CENTER_UPDATED == '1') {

                    $('#pay').show();
                   // $('#payment').show();
                }
                else {
                    $('#pay').click(function () {
                        alert('Update Previous Details.');
                        //$('#payment').hide();
                    });
                    $('#pay').hide();
                }
                debugger;
                if (value.ORDERSTATUS == '1') {
                    $('#finallist').show();
                    //$('#preview').show();
                }
                else {
                    $('#finallist').click(function () {
                        alert('Update Previous Details.');
                        //$('#preview').hide();
                    });
                    $('#finallist').hide();
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
