
/*Function For Only Alphabates*/
function onlyAlphabets(e, t) {
    try {
        if (window.event) {
            var charCode = window.event.keyCode;
        }
        else if (e) {
            var charCode = e.which;
        }
        else {
            return true;
        }
        if ((charCode > 64 && charCode < 91) || (charCode > 96 && charCode < 123) || (charCode == 8) || (charCode == 32))
            return true;
        else
            return false;
    }
    catch (err) {
        alert(err.Description);
    }
}

/*Function For only AlphaNUmeric*/
function AlphaNumeric(e, t) {
    try {
        if (window.event) {
            var charCode = window.event.keyCode;

        }
        else if (e) {
            var charCode = e.which;
        }
        else {
            return true;
        }

        if (charCode != 8) {
            if (charCode < 48 || (charCode > 57 && charCode < 65) || (charCode > 90 && charCode < 97) || charCode > 122)
                return false;
            else
                return true;
        }

    }
    catch (err) {
        alert(err.Description);
    }
}

/*alpha*/
function alpha(evt) {
    try {
        var charCode = (evt.which) ? evt.which : event.keyCode
        //alert(charCode);
        if (charCode > 31 && (charCode < 48 || charCode > 57) && charCode != 45 && charCode != 47)
            return false;
        return true;
    }
    catch (err) {
        alert(err.Description);
    }
}

/*Numeric with decimal*/
function numbersonlydecimal(e) {
    var unicode = e.charCode ? e.charCode : e.keyCode;
    if (unicode != 8) {
        if (unicode < 46 || unicode > 57)
            return false;
    }
}

/*Numeric without Decimal*/
function numbersonly(e) {
    var unicode = e.charCode ? e.charCode : e.keyCode;
    if (unicode != 8) {
        if (unicode < 47 || unicode > 57)
            return false;
    }
}
/*Character Length*/
function ValidateLength(strLength, charLength) {

    if (strLength.length !== charLength) {
        alert("Digits should be " + charLength + " . Please check .");
        //document.Entry.nNumber.focus();
        //document.getElementById('Number').style.color = "red";
        return false;
    }
    return true;
}

//function ValidateLength1() {
    
//    var strLength = $('#txtphone').val();
//    charLength = 10;
//    if (strLength.length !== charLength) {
//        $("#btnReg").attr("disabled", "disabled");
//        alert("Contact No. should be " + charLength + " . Please check .");       
//        return false;
       
//    }
//    $("#btnReg").removeAttr("disabled", "disabled");
//    return true;
//}
/*MinMax*/
function minmax(value, min, max) {
    if (parseInt(value) < min || isNaN(value))
        return 0;
    else if (parseInt(value) > max)
        return 100;
    else return value;
}

/*Check Max*/
//function CheckMax(value, max) {
//    alert(max.value);
//    hdnObj = document.getElementById();
//    alert(hdnObj.value);
//    if (parseInt(value) > hdnObj.value) {
//        alert("Value is Maximum. It should be " + hdnObj.value + " or less.");
//        return hdnObj.value;
//    }
//    else return value;
//}
