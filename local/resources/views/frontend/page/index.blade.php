@extends('frontend.master')
@section('title')
    {{$data['page']->seo_title}}
@stop
@section('description')
    {{$data['page']->seo_description}}
@stop
@section('keyword')
    {{$data['page']->seo_keywords}}
@stop
@section('styles')
    {{ Html::style('css/themes/default/default.css') }}
@stop
@section('slider')
    @include('frontend.common.slider')
@stop
@section('container')
    @include('frontend.page.pa_info')
@stop