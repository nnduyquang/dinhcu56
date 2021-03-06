var token = $('meta[name="csrf-token"]').attr('content');function getBaseURL() {    var url = location.href;  // entire url including querystring - also: window.location.href;    var baseURL = url.substring(0, url.indexOf('/', 14));    if (baseURL.indexOf('http://localhost') != -1) {        // Base Url for localhost        var url = location.href;  // window.location.href;        var pathname = location.pathname;  // window.location.pathname;        var index1 = url.indexOf(pathname);        var index2 = url.indexOf("/", index1 + 1);        var baseLocalUrl = url.substr(0, index2);        return baseLocalUrl + "/";    }    else {        // Root Url for domain name        return baseURL + "/";    }}function selectFileWithKCFinder(elementPath, showHinhId) {    window.KCFinder = {        callBack: function (url) {            var output = document.getElementById(elementPath);            output.value = url;            $('#' + showHinhId).show();            $('#' + showHinhId).fadeIn("fast").attr('src', url);            window.KCFinder = null;        }    };    window.open(getBaseURL() + 'js/kcfinder/browse.php?type=images', 'kcfinder_textbox',        'status=0, toolbar=0, location=0, menubar=0, directories=0, ' +        'resizable=1, scrollbars=0, width=800, height=600'    );    if ($('#' + elementPath).val() == '')        $('#' + showHinhId).hide();    else        $('#' + showHinhId).show();}function integratedCKEDITOR(elementID, height) {    if ($('#' + elementID).length) {        var editor1 = CKEDITOR.replace(elementID, {            height: height,            language: 'vi',            format_tags: 'p;h1;h2;h3;pre',            filebrowserBrowseUrl: 'http://tuvandinhcu.com.vn/' + 'js/kcfinder/browse.php?type=files',            filebrowserImageBrowseUrl: 'http://tuvandinhcu.com.vn/' + 'js/kcfinder/browse.php?type=images',            filebrowserFlashBrowseUrl: 'http://tuvandinhcu.com.vn/' + 'js/kcfinder/browse.php?type=flash',            filebrowserUploadUrl: 'http://tuvandinhcu.com.vn/' + 'js/kcfinder/upload.php?type=files',            filebrowserImageUploadUrl: 'http://tuvandinhcu.com.vn/' + 'js/kcfinder/upload.php?type=images',            filebrowserFlashUploadUrl: 'http://tuvandinhcu.com.vn/' + 'js/kcfinder/upload.php?type=flash',            extraAllowedContent: 'div',        });        editor1.on('instanceReady', function () {            // Output self-closing tags the HTML4 way, like <br>.            this.dataProcessor.writer.selfClosingEnd = '>';            // Use line breaks for block elements, tables, and lists.            var dtd = CKEDITOR.dtd;            for (var e in CKEDITOR.tools.extend({}, dtd.$nonBodyContent, dtd.$block, dtd.$listItem, dtd.$tableContent)) {                this.dataProcessor.writer.setRules(e, {                    indent: true,                    breakBeforeOpen: true,                    breakAfterOpen: true,                    breakBeforeClose: true,                    breakAfterClose: true                });            }            // Start in source mode.            // this.setMode('source');        });    }}function integrateSearch(elementID, formID) {    $('#' + elementID).click(function () {        if ($('#txtSearch').val().trim() == '')            return;        if ($('#txtSearch').val().trim().replace(/ +(?= )/g, '') == $("input[name='hdKeyword']").val())            return;        $('#' + formID).submit();    });}function isEmpty(val) {    return ((val !== '') && (val !== undefined) && (val.length > 0) && (val !== null));}
var plugins = {
    menuSideBar: $('.sidebar'),
    slider: $('#slider'),
    statisCount: $('#h_statis'),
    customerCarousel: $('.customer_carousel'),
    sendMail: $('#btnSendMail'),
};
$(document).ready(function () {
    function sidebar() {
        var trigger = $('#trigger,#close');
        trigger.on('click', function () {
            $(this).toggleClass('active');
            plugins.menuSideBar.toggleClass('closed');
            $('#blurrMe').toggleClass('blurred')
        })
        $('#wrap-container').on('click', function () {
            if ($('#blurrMe').hasClass('blurred')) {
                $('#blurrMe').toggleClass('blurred')
                plugins.menuSideBar.toggleClass('closed');
            }
        })
    }

    sidebar();
    function runStatisCount() {
        var waypoint = new Waypoint({
            element: document.getElementById('h_statis'),
            handler: function () {
                var options1 = {
                    useEasing: true,
                    useGrouping: false,
                    separator: ',',
                    decimal: '.',
                    prefix: '',
                    suffix: '+'
                };
                var options2 = {
                    useEasing: true,
                    useGrouping: false,
                    separator: ',',
                    decimal: '.',
                    prefix: '',
                    suffix: '%'
                };
                var numHs1 = new CountUp("hs1", 0, 500, 0, 1.5, options1);
                var numHs2 = new CountUp("hs2", 0, 1000, 0, 2, options1);
                var numHs3 = new CountUp("hs3", 0, 100, 0, 2.2, options2);
                var numHs4 = new CountUp("hs4", 0, 500, 0, 2, options1);
                numHs1.start();
                numHs2.start();
                numHs3.start();
                numHs4.start();
                waypoint.disable();
            },
            offset: '85%'
        })
    }

    function runSlider() {
        plugins.slider.nivoSlider({
            effect: 'fade',
            animSpeed: 500,
            pauseTime: 3000,
            pauseOnHover: true,
            controlNav: false,
        });
    }

    function customerCarousel() {
        plugins.customerCarousel.not('.slick-initialized').slick({
            autoplay: true,
            autoplaySpeed: 2000,
            prevArrow: '.arrow-prev1',
            nextArrow: '.arrow-next1',
            mobileFirst: true,
            responsive: [{
                breakpoint: 1024,
                settings: {
                    slidesToShow: 4,
                    slidesToScroll: 1,
                }
            }, {
                breakpoint: 600,
                settings: {
                    slidesToShow: 2,
                    slidesToScroll: 1,
                }
            }, {
                breakpoint: 480,
                slidesToShow: 1,
                slidesToScroll: 1,
            }]
        });
    }

    function runSendMail() {
        $('.loadingSending').css('display', 'inline-block');
        $('.input-text').removeClass('is-invalid');
        $('.input-area').removeClass('is-invalid');
        var data = new FormData($(this).get(0));
        data.append('name', $("input[name='name']").val());
        data.append('email', $("input[name='email']").val());
        data.append('phone', $("input[name='phone']").val());
        data.append('contentMail', $("textarea[name='contentMail']").val());
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });
        $.ajax({
            type: "POST",
            url: getBaseURL() + "sendmail/send",
            dataType: 'json',
            processData: false,
            contentType: false,
            data: data,
            success: function (data) {
                if (data.success) {
                    $('.loadingSending').css('display', 'none');
                    $('.successSending').css('display', 'inline-block');
                    $('.successSending').fadeIn(500);
                    $('.button-group span').css('display', 'inline-block');
                    $('.button-group span').fadeIn(500);

                    setTimeout("$('.successSending').fadeOut(1500);", 3000);
                    setTimeout("$('.button-group span').fadeOut(1500);", 3000);
                    $("input[name='name']").val("");
                    $("input[name='email']").val("");
                    $("input[name='phone']").val("");
                    $("textarea[name='contentMail']").val("");
                }
                else {
                    $('.loadingSending').css('display', 'none');
                    var errors = data.validator;
                    if (errors.hasOwnProperty('email')) {
                        $('.ip-email .input-text').addClass('is-invalid');
                        $('.ip-email .invalid-feedback').html(errors['email']);
                    }
                    if (errors.hasOwnProperty('name')) {
                        $('.ip-name .input-text').addClass('is-invalid');
                        $('.ip-name .invalid-feedback').html(errors['name']);
                    }
                    if (errors.hasOwnProperty('phone')) {
                        $('.ip-phone .input-text').addClass('is-invalid');
                        $('.ip-phone .invalid-feedback').html(errors['phone']);
                    }
                    if (errors.hasOwnProperty('contentMail')) {
                        $('.ip-contentMail .input-area').addClass('is-invalid');
                        $('.ip-contentMail .invalid-feedback').html(errors['contentMail']);
                    }
                }
            }
        });
    }

    if (plugins.slider.length) {
        runSlider();
    }
    if (plugins.statisCount.length) {
        runStatisCount()
    }
    if (plugins.customerCarousel.length) {
        customerCarousel();
    }
    if (plugins.sendMail.length) {
        // $("[rel=popover]").tooltip();
        plugins.sendMail.click(function () {
            runSendMail();
        });
    }
});