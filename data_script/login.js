$(document).ajaxStart(function () {
    ajaxindicatorstart('');
}).ajaxStop(function () {
    ajaxindicatorstop();
});

$(document).ready(function () {
   Captcha();
    debugger;
    $('#btnLog').bind('click', function () {
        if (ValidCaptcha() == false) {
            alert('Captcha Error');
        }
        else {

            $.ajax({
                type: "POST",
                url: "../regService.asmx/GetUSERData",
                data: '{_appno:' + JSON.stringify($('#txtUserId').val()) + ',_dataValue:' + JSON.stringify($('#txtUPassword').val()) + '}',
                dataType: "json",
                contentType: "application/json;charset=utf-8",
                success: function (r, value) {
                    debugger;
                    r = JSON.parse(r.d);
                    if (r.length < 1) {
                        alert('Invalid username name or password');
                    }
                    else {
                        createCookie('dataString', JSON.stringify(r));
                        $.each(r, function () {
                            if (r[0].UTYP === "1") {
                                window.location = "http://localhost:54935/registration.aspx";
                            }
                            else if (r[0].UTYP === "2") {
                                r[0].navigation;
                                window.open("http://localhost:54935/update.aspx");
                            }
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
        }
    });
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
       
    }
    else {
        return false;
    }
}
function removeSpaces(string) {
    return string.split(' ').join('');
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
