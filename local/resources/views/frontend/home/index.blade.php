@extends('frontend.master')
@section('title')
    Nội Thất
@stop
@section('description')
    Nội Thất
@stop
@section('styles')
    {{ Html::style('css/themes/default/default.css') }}
@stop
@section('slider')
    @include('frontend.common.slider')
@stop
@section('container')
    @include('frontend.home.h_service')
    @include('frontend.home.h_aboutus')
    @include('frontend.home.h_statis')
    @include('frontend.home.h_whyus')
    <hr>
    @include('frontend.home.h_news')
    @include('frontend.home.h_contact')
    @include('frontend.home.h_customer')
@stop