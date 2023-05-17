var x = JSON.parse(readCookie('dataString'));
$(document).ready(function () {
    docInfo();

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
			stepstatus();
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