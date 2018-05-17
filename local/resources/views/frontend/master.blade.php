<!DOCTYPE Html>
<Html lang="en-US" class="lang-en_US" xmlns="http://www.w3.org/1999/html" xmlns="http://www.w3.org/1999/html">
<meta http-equiv="content-type" content="text/Html;charset=UTF-8"/>
<head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# article: http://ogp.me/ns/article#">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>@yield('title')</title>
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <meta name="keywords" content="@yield('keyword')">
    <meta name="description" content="@yield('description')">
    <meta name="viewport" content="width=device-width">
    <link rel="shortcut icon" href="{{URL::to('images/logo/logo_main.ico')}}">
    {{ Html::style('css/core.common.css') }}
    {{ Html::style('css/core.frontend.css') }}
    {{ Html::style('css/frontend.css') }}
    @yield('styles')
</head>
<body>
<header id="header">

</header>

<div id="blurrMe">
    @include('frontend.common.menu.m-menu')
    @include('frontend.common.menu.menu')
    @yield('slider')
    @yield('container')
</div>
@include('frontend.common.menu.m-sidebar')
@include('frontend.common.footer')
{{ Html::script('js/core.common.js') }}
{{ Html::script('js/core.frontend.js') }}
<script type="text/javascript">
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });
</script>
{{--@yield('scripts')--}}
{{ Html::script('js/scripts.js') }}
<div class="callback d-lg-none d-md-none">
    <div class="phone_animation">
        <div class="phone_animation_circle"></div>
        <div class="phone_animation_circle_fill"></div>
        <a href="tel:0901330014" class="phone_animation_circle_fill_img"><i class="fas fa-phone"
                                                                            aria-hidden="true" style="transform: rotate(100deg);"></i></a>
    </div>
</div>
{{--<div class="callback d-none d-md-block" style="right: 150px;bottom: -30px;left:inherit">--}}
    {{--<div class="phone_animation">--}}
        {{--<div class="phone_animation_circle"></div>--}}
        {{--<div class="phone_animation_circle_fill"></div>--}}
        {{--<a href="tel:0962599482" class="phone_animation_circle_fill_img"><i class="fas fa-phone"--}}
                                                                            {{--aria-hidden="true" style="transform: rotate(100deg);"></i></a>--}}
    {{--</div>--}}
{{--</div>--}}
{{--<div class="mess_desk_bot d-none d-md-block" style="position: fixed;bottom:40px;right: 0px;">--}}
    {{--<a href="tel:0962599482"--}}
       {{--style="display: block;width: 260px;height: 56px;background: url({{URL::to('images/nenhot.png')}}) no-repeat;text-align: center;padding-top: 10px;color:#fff;font-size: 20px;font-family: 'roboto-bold'">--}}
    {{--</a>--}}
{{--</div>--}}

<!--Start of Tawk.to Script-->
<script type="text/javascript">
    var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
    (function(){
        var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
        s1.async=true;
        s1.src='https://embed.tawk.to/5af934b9227d3d7edc2540a9/default';
        s1.charset='UTF-8';
        s1.setAttribute('crossorigin','*');
        s0.parentNode.insertBefore(s1,s0);
    })();
</script>
<!--End of Tawk.to Script-->
</body>

</Html>