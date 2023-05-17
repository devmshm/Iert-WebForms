
var x = JSON.parse(readCookie('dataString'));
$(document).ready(function () {
    $('#appno').html(x[0].APPLICATIONNO);
    AddpInfo();
    pInfo();
    docpInfo();
    edupInfo();
    centerpInfo();

});
$('#finallist').click(function () {
    debugger;
    AddpInfo();
    pInfo();
    docpInfo();
    edupInfo();
    centerpInfo();
})

function AddpInfo() {
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
                $("#txtpadd1").html(value.add1 + ' ' + value.add2 + ' ' + value.add3);
                $("#txtppostadd1").html(value.postadd1 + ' ' + value.postadd2 + ' ' + value.postadd3);
                $("#ddlpstate").html(value.state);
                $("#ddlpoststate").html(value.poststate);
                $("#ddlpcity").html(value.city);
                $("#ddlppostcity").html(value.postcity);
                $("#txtppincode").html(value.pin);
                $("#txtppostpincode").html(value.postpin);
                //print
                $("#txtpadd1p").html(value.add1 + ' ' + value.add2 + ' ' + value.add3);
                $("#txtppostadd1p").html(value.postadd1 + ' ' + value.postadd2 + ' ' + value.postadd3);
                $("#ddlpstatep").html(value.state);
                $("#ddlpoststatep").html(value.poststate);
                $("#ddlpcityp").html(value.city);
                $("#ddlppostcityp").html(value.postcity);
                $("#txtppincodep").html(value.pin);
                $("#txtppostpincodep").html(value.postpin);

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
function pInfo() {
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
                $('#dpcname').html(value.first_name + ' ' + value.middle_name + ' ' + value.Last_name);
                $('#dpappno').html(x[0].APPLICATIONNO);

                $('#dptphone').html(value.mobile_no);
                $('#dpmail').html(value.Email_id);
                $('#dpfname').html(value.father_name);
                $('#dpmname').html(value.mother_name);
                $('#dpdob').html(value.dob);
                $('#dpnat').html(value.nationality);
                $('#dpcaste').html(value.caste);
                $('#dpdomicile').html(value.domicile);
                $('#dpgen').html(value.gender);
                $('#dpmobile').html(value.mobile_no);
                $('#dpadhar').html(value.adhar);
                $('#dpcat').html(value.category);
                $('#dpsubcat').html(value.sub_category);
                $('#dpemp').html(value.emp);
                $('#dpreligion').html(value.religion);
                $('#dpews').html(value.ews);
                $('#dpcourse').html(value.course);

                //print

                $('#dpcnamep').html(value.first_name + ' ' + value.middle_name + '' + value.Last_name);
                $('#dpappnop').html(x[0].APPLICATIONNO);

                $('#dptphonep').html(value.mobile_no);
                $('#dpmailp').html(value.Email_id);
                $('#dpfnamep').html(value.father_name);
                $('#dpmnamep').html(value.mother_name);
                $('#dpdobp').html(value.dob);
                $('#dpnatp').html(value.nationality);
                $('#dpcastep').html(value.caste);
                $('#dpdomicilep').html(value.domicile);
                $('#dpgenp').html(value.gender);
                $('#dpmobilep').html(value.mobile_no);
                $('#dpadharp').html(value.adhar);
                $('#dpcatp').html(value.category);
                $('#dpsubcatp').html(value.sub_category);
                $('#dpempp').html(value.emp);
                $('#dpreligionp').html(value.religion);
                $('#dpewsp').html(value.ews);
                $('#dpcoursep').html(value.course);
               

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
function docpInfo() {
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
                $("#dvpimg").attr("src", value.img);
                $("#dvpsign").attr("src", value.sign);
                $("#dvpthumb").attr("src", value.thumb);
                //print
                $("#dvpimgp").attr("src", value.img);
                $("#dvpsignp").attr("src", value.sign);
                $("#dvpthumbp").attr("src", value.thumb);
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
function edupInfo() {
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
                $("#dphpass").html(value.Hpassed);
                $("#dphstate").html(value.Hpstate);
                $("#dphboard").html(value.Hboard);

                $("#dphcollege").html(value.Hcollege);
                $("#dphyp").html(value.Hyear);
                $("#dphsub").html(value.HSubjects);
                $("#dphmm").html(value.Hmax_mark);
                $("#dphom").html(value.Hobt_marks);
                $("#dphstream").html(value.HStream);
                $("#dpipass").html(value.Ipassed);
                $("#dpistate").html(value.Ipstate);
                $("#dpiboard").html(value.Iboard);

                $("#dpicollege").html(value.Icollege);
                $("#dpiyp").html(value.Iyear);
                $("#dpisub").html(value.ISubjects);
                $("#dpimm").html(value.Imax_mark);
                $("#dpiom").html(value.Iobt_marks);
                $("#dpistream").html(value.IStream);
                $("#dpdpass").html(value.Dpassed);
                $("#dpdstate").html(value.Dpstate);
                $("#dpdbranch").html(value.Dbranch);

                $("#dpdcollege").html(value.Dcollege);
                $("#dpdyp").html(value.Dyear);
                $("#dpdsub").html(value.DSubjects);
                $("#dpdmm").html(value.Dmax_mark);
                $("#dpdom").html(value.Dobt_marks);
                $("#dpdstream").html(value.DStream);
                $("#dpgpass").html(value.Gpassed);
                $("#dpgstate").html(value.Gpstate);
                $("#dpgbranch").html(value.Gbranch);
                $("#dpgstream").html(value.GStream);
                $("#dpgcollege").html(value.Gcollege);
                $("#dpgyp").html(value.Gyear);
                $("#dpgsub").html(value.GSubjects);
                $("#dpgmm").html(value.Gmax_mark);
                $("#dpgom").html(value.Gobt_marks);

                //print

                $("#dphpassp").html(value.Hpassed);
                $("#dphstatep").html(value.Hpstate);
                $("#dphboardp").html(value.Hboard);

                $("#dphcollegep").html(value.Hcollege);
                $("#dphypp").html(value.Hyear);
                $("#dphsubp").html(value.HSubjects);
                $("#dphstreamp").html(value.HStream);
                $("#dphmmp").html(value.Hmax_mark);
                $("#dphomp").html(value.Hobt_marks);

                $("#dpipassp").html(value.Ipassed);
                $("#dpistatep").html(value.Ipstate);
                $("#dpiboardp").html(value.Iboard);
                $("#dpistreamp").html(value.IStream);
                $("#dpicollegep").html(value.Icollege);
                $("#dpiypp").html(value.Iyear);
                $("#dpisubp").html(value.ISubjects);
                $("#dpimmp").html(value.Imax_mark);
                $("#dpiomp").html(value.Iobt_marks);

                $("#dpdpassp").html(value.Dpassed);
                $("#dpdstatep").html(value.Dpstate);
                $("#dpdbranchp").html(value.Dbranch);
                $("#dpdstreamp").html(value.DStream);
                $("#dpdcollegep").html(value.Dcollege);
                $("#dpdypp").html(value.Dyear);
                $("#dpdsubp").html(value.DSubjects);
                $("#dpdmmp").html(value.Dmax_mark);
                $("#dpdomp").html(value.Dobt_marks);
                $("#dpgstreamp").html(value.GStream);
                $("#dpgpassp").html(value.Gpassed);
                $("#dpgstatep").html(value.Gpstate);
                $("#dpgbranchp").html(value.Gbranch);

                $("#dpgcollegep").html(value.Gcollege);
                $("#dpgypp").html(value.Gyear);
                $("#dpgsubp").html(value.GSubjects);
                $("#dpgmmp").html(value.Gmax_mark);
                $("#dpgomp").html(value.Gobt_marks);

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
function centerpInfo() {

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
                $("#dpcity1").html(value.center1);
                $("#dpcity2").html(value.center2);
                $("#dpcity3").html(value.center3);
                $("#dpcity4").html(value.center4);

                //print
                $("#dpcity1p").html(value.center1);
                $("#dpcity2p").html(value.center2);
                $("#dpcity3p").html(value.center3);
                $("#dpcity4p").html(value.center4);

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