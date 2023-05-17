$(document).ready(function () {
    stepstatus();
});﻿
function stepstatus() {
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
                    //$('#dvsbasic').removeAttr("class", "fa fa-close");
                    $('#dvsbasic').attr("class", "fa fa-check");
                  
                    $('#dvsbasic').attr("style", "color:green");

                }
                else {
                    $('#dvsbasic').removeAttr("class", "fa fa-check");
                    $('#dvsbasic').attr("class", "fa fa-close");
                    $('#dvsbasic').attr("style", "color:red");
                }
                if (value.ADDRESS_UPDATED == '1') {

                    $('#dvsadd').attr("class", "fa fa-check");                   
                    $('#dvsadd').attr("style", "color:green");

                }
                else {
                    /*$('#dvsadd').removeAttr("class", "fa fa-check");*/
                    $('#dvsadd').attr("class", "fa fa-close");
                    $('#dvsadd').attr("style", "color:red");
                }
                if (value.EDU_UPDATED == '1') {

                    $('#dvsedu').attr("class", "fa fa-check");
                    //$('#dvsedu').removeAttr("class", "fa fa-close");
                    $('#dvsedu').attr("style", "color:green");

                }
                else {
                   // $('#dvsedu').removeAttr("class", "fa fa-check");
                    $('#dvsedu').attr("class", "fa fa-close");
                    $('#dvsedu').attr("style", "color:red");
                }

                if (value.PHOTO_UPDATED == '1') {

                    $('#dvsphoto').attr("class", "fa fa-check");
                    //$('#dvsphoto').removeAttr("class", "fa fa-close");
                    $('#dvsphoto').attr("style", "color:green");

                }
                else {
                  //  $('#dvsphoto').removeAttr("class", "fa fa-check");
                    $('#dvsphoto').attr("class", "fa fa-close");
                    $('#dvsphoto').attr("style", "color:red");
                }

                if (value.SIGN_UPDATED == '1') {

                    $('#dvssign').attr("class", "fa fa-check");
                 //   $('#dvssign').removeAttr("class", "fa fa-close");
                    $('#dvssign').attr("style", "color:green");

                }
                else {
                   // $('#dvssign').removeAttr("class", "fa fa-check");
                    $('#dvssign').attr("class", "fa fa-close");
                    $('#dvssign').attr("style", "color:red");
                }

                if (value.THUMB_UPDATED == '1') {

                    $('#dvsthumb').attr("class", "fa fa-check");
                   // $('#dvsthumb').removeAttr("class", "fa fa-close");
                    $('#dvsthumb').attr("style", "color:green");

                }
                else {
                   // $('#dvsthumb').removeAttr("class", "fa fa-check");
                    $('#dvsthumb').attr("class", "fa fa-close");
                    $('#dvsthumb').attr("style", "color:red");
                }

                if (value.ORDERSTATUS == '1') {
                    $('#dvspay').attr("class", "fa fa-check");
                  //  $('#dvspay').removeAttr("class", "fa fa-close");
                    $('#dvspay').attr("style", "color:green");

                }
                else {
                    //$('#dvspay').removeAttr("class", "fa fa-check");
                    $('#dvspay').attr("class", "fa fa-close");
                    $('#dvspay').attr("style", "color:red");
                }
				 if (value.CENTER_UPDATED == '1') {
                    $('#dvscenter').attr("class", "fa fa-check");
                  //  $('#dvspay').removeAttr("class", "fa fa-close");
                    $('#dvscenter').attr("style", "color:green");

                }
                else {
                    //$('#dvspay').removeAttr("class", "fa fa-check");
                    $('#dvscenter').attr("class", "fa fa-close");
                    $('#dvscenter').attr("style", "color:red");
                }
				if (value.ISSUBMITTED == '1') {
                    $('#dvsfinal').attr("class", "fa fa-check");
                  //  $('#dvspay').removeAttr("class", "fa fa-close");
                    $('#dvsfinal').attr("style", "color:green");

                }
                else {
                    //$('#dvspay').removeAttr("class", "fa fa-check");
                    $('#dvsfinal').attr("class", "fa fa-close");
                    $('#dvsfinal').attr("style", "color:red");
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
