var token = $('meta[name="csrf-token"]').attr('content');function getBaseURL() {    var url = location.href;  // entire url including querystring - also: window.location.href;    var baseURL = url.substring(0, url.indexOf('/', 14));    if (baseURL.indexOf('http://localhost') != -1) {        // Base Url for localhost        var url = location.href;  // window.location.href;        var pathname = location.pathname;  // window.location.pathname;        var index1 = url.indexOf(pathname);        var index2 = url.indexOf("/", index1 + 1);        var baseLocalUrl = url.substr(0, index2);        return baseLocalUrl + "/";    }    else {        // Root Url for domain name        return baseURL + "/";    }}function selectFileWithKCFinder(elementPath, showHinhId) {    window.KCFinder = {        callBack: function (url) {            var output = document.getElementById(elementPath);            output.value = url;            $('#' + showHinhId).show();            $('#' + showHinhId).fadeIn("fast").attr('src', url);            window.KCFinder = null;        }    };    window.open(getBaseURL() + 'js/kcfinder/browse.php?type=images', 'kcfinder_textbox',        'status=0, toolbar=0, location=0, menubar=0, directories=0, ' +        'resizable=1, scrollbars=0, width=800, height=600'    );    if ($('#' + elementPath).val() == '')        $('#' + showHinhId).hide();    else        $('#' + showHinhId).show();}function integratedCKEDITOR(elementID, height) {    if ($('#' + elementID).length) {        var editor1 = CKEDITOR.replace(elementID, {            height: height,            language: 'vi',            format_tags: 'p;h1;h2;h3;pre',            filebrowserBrowseUrl: 'http://localhost:8080/dinhcu56/' + 'js/kcfinder/browse.php?type=files',            filebrowserImageBrowseUrl: 'http://localhost:8080/dinhcu56/' + 'js/kcfinder/browse.php?type=images',            filebrowserFlashBrowseUrl: 'http://localhost:8080/dinhcu56/' + 'js/kcfinder/browse.php?type=flash',            filebrowserUploadUrl: 'http://localhost:8080/dinhcu56/' + 'js/kcfinder/upload.php?type=files',            filebrowserImageUploadUrl: 'http://localhost:8080/dinhcu56/' + 'js/kcfinder/upload.php?type=images',            filebrowserFlashUploadUrl: 'http://localhost:8080/dinhcu56/' + 'js/kcfinder/upload.php?type=flash',            extraAllowedContent: 'div',        });        editor1.on('instanceReady', function () {            // Output self-closing tags the HTML4 way, like <br>.            this.dataProcessor.writer.selfClosingEnd = '>';            // Use line breaks for block elements, tables, and lists.            var dtd = CKEDITOR.dtd;            for (var e in CKEDITOR.tools.extend({}, dtd.$nonBodyContent, dtd.$block, dtd.$listItem, dtd.$tableContent)) {                this.dataProcessor.writer.setRules(e, {                    indent: true,                    breakBeforeOpen: true,                    breakAfterOpen: true,                    breakBeforeClose: true,                    breakAfterClose: true                });            }            // Start in source mode.            // this.setMode('source');        });    }}function integrateSearch(elementID, formID) {    $('#' + elementID).click(function () {        if ($('#txtSearch').val().trim() == '')            return;        if ($('#txtSearch').val().trim().replace(/ +(?= )/g, '') == $("input[name='hdKeyword']").val())            return;        $('#' + formID).submit();    });}function isEmpty(val) {    return ((val !== '') && (val !== undefined) && (val.length > 0) && (val !== null));}
$(document).ready(function () {    var tbEmail = $('#email').val();    var tbPass = $('#password').val();    console.log('First tbEmail'+tbEmail);    console.log('First tbPass'+tbPass);    $('.log-btn').click(function () {        var data = new FormData($(this).get(0));        data.append('email', $('#email').val());        data.append('password', $('#password').val());        // $('#formLogin').submit();        $.ajax({            type: "POST",            url: getBaseURL() + "sml_login",            dataType: 'json',            processData: false,            contentType: false,            data: data,            success: function (data) {                if (data.success) {                    window.location = getBaseURL() + "sml_admin/dashboard";                }                else {                    $('.log-status').addClass('wrong-entry');                    $('.alert').html('Đăng Nhập Thất Bại');                    $('.alert').fadeIn(500);                    setTimeout("$('.alert').fadeOut(1500);", 3000);                }            }        });    });    $('.form-control').keypress(function () {        $('.log-status').removeClass('wrong-entry');    });    function login() {        var data = new FormData($(this).get(0));        data.append('email', $('#email').val());        data.append('password', $('#password').val());        // $('#formLogin').submit();        $.ajax({            type: "POST",            url: getBaseURL() + "sml_login",            dataType: 'json',            processData: false,            contentType: false,            data: data,            success: function (data) {                if (data.success) {                    window.location = getBaseURL() + "sml_admin/dashboard";                }                else {                    $('.log-status').addClass('wrong-entry');                    $('.alert').html('Đăng Nhập Thất Bại');                    $('.alert').fadeIn(500);                    setTimeout("$('.alert').fadeOut(1500);", 3000);                }            }        });    }    function isEmpty(val) {        return ((val !== '') && (val !== undefined) && (val.length > 0) && (val !== null));    }    $('input#email[type=text]').on('keydown', function (e) {        var tbEmail = $('#email').val();        var tbPass = $('#password').val();        if (e.which == 13) {            e.preventDefault();            if (!isEmpty(tbEmail) || !isEmpty(tbPass)) {                if(!isEmpty(tbEmail)){                    $('.frm-email.log-status').addClass('wrong-entry');                }                if(!isEmpty(tbPass)){                    $('.frm-pass.log-status').addClass('wrong-entry');                }                $('.alert').html('Vui Lòng Nhập Đầy Đủ Thông Tin');                $('.alert').fadeIn(500);                setTimeout("$('.alert').fadeOut(1500);", 3000);                setTimeout("$('.alert').fadeOut(1500);", 3000);                return;            }            else                login();        }    });    $('input#password[type=password]').on('keydown', function (e) {        var tbEmail = $('#email').val();        var tbPass = $('#password').val();        if (e.which == 13) {            e.preventDefault();            if (!isEmpty(tbEmail) || !isEmpty(tbPass)) {                if(!isEmpty(tbEmail)){                    $('.frm-email.log-status').addClass('wrong-entry');                }                if(!isEmpty(tbPass)){                    $('.frm-pass.log-status').addClass('wrong-entry');                }                $('.alert').html('Vui Lòng Nhập Đầy Đủ Thông Tin');                $('.alert').fadeIn(500);                setTimeout("$('.alert').fadeOut(1500);", 3000);                return;            }            else {                login()            }        }    });});