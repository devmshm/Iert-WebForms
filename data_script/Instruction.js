$('#itp').click(function () {
    $('#instructionmodalhead').html('Instruction')
    $('#instructionmodalmsg').html(' <ul style="list-style:decimal">\
<li>Candidate are require to upload the photo holding the black slate as shown in picture on which name and date must be printed.</li>\
<li> The photograph must be a recent passport size color picture. </li>\
<li>Make sure that the picture is in color, taken against a light-colored, preferably white, background.</li>\
<li>Look straight at the camera with a relaxed face. </li>\
                                         <li>If you wear glasses make sure that there are no reflections and your eyes can be clearly seen.</li>\
                                         <li>The preferred size  of the photograph should be 4.5cm X 3.5cm.</li></ul> ');
    $('#dvsampleimg').attr("src", "a.jpg");
    $('#dvsample1').show();
    $('#dvsample2').hide();
    $('#dvnote').hide();
    $('#instructionmodal').modal();
});
$('#its').click(function () {
    $('#instructionmodalhead').html('Instruction')
    $('#instructionmodalmsg').html(' <ul style="list-style:decimal">\
<li>The candidate has to put signature on white paper with a Black Ink pen.</li>\
<li> Signature in CAPITAL letters is NOT ACCEPTED. </li>\
<li>The signature should be of the candidate and not by any other person.</li>\
<li>The physical dimensions of the photograph should be 140 x 60 pixels (preferred).</li>\
<li>The preferred size of the signature is 3.5cm (width) x 1.5cm (height).</li>\
                <li>The signature should be done in running hand.</li></ul > ');
    $('#dvsampleimg2').attr("src", "samplesignature.jpg");
    $('#dvsamplesign').html('Sample Signature');
    $('#dvsample2').show();
    $('#dvsample1').hide();
    $('#dvnote').hide();
    $('#instructionmodal').modal();
});
$('#itt').click(function () {
    $('#instructionmodalhead').html('Instruction')
    $('#instructionmodalmsg').html(' <ul style="list-style:decimal">\
<li>The left thumbprint of the candidate should be done from a blue or black inkpad on a white paper.</li>\
<li> The area containing the signature on the white paper should be uploaded not the whole paper. </li>\
<li>The signature should be in a box of 4cms X 3 cms on a plain white paper.</li>\
<li>The resolution of signature image should be 240 x 240 pixels in 200 DPI i.e 3 cm * 3 cm </li>\</ul> \
<hr/>');
    $('#dvsampleimg2').attr("src", "sample_thumb.jpg");
    $('#dvsamplesign').html('Sample Thumb Impression');
    $('#dvnote').html('<p><b>Note: </b>If a candidate does not have a left thumb then he may use his right thumb. If both the thumbs are missing, the impression of the left hand’s finger can be taken.</p>')
    $('#dvnote').show();
    $('#dvsample2').show();
    $('#dvsample1').hide();

    $('#instructionmodal').modal();
});