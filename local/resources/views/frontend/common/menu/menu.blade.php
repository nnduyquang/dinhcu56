<div id="menu" class="container-fluid p-0 d-none d-md-block">
    <div id="menu_top">
        <div class="container">
            <div class="col-md-12">
                <div class="row">
                    <div class="col-md-7 justify-content-left align-self-center text-left">
                        <span> Hotline: 0901 83 85 86 | (028) 54.39.8888 | (024) 38.25.1111</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="menu_bottom">
        <div class="container">
            <div class="col-md-12 p-0">
                <div class="row">
                    <div class="col-md-3">
                        <a href="{{URL::to('/')}}">{{ Html::image('images/logo/logo.jpg','',array('class'=>'logo')) }}</a>
                    </div>
                    <div class="col-md-9">
                        <ul class="main_menu">
                            <li class="li-normal"><a href="{{URL::to('/trang/gioi-thieu')}}">Giới Thiệu</a></li>
                            @foreach($listMenu['categoryMain'] as $key=>$data)
                                @if(count($data->categorySub)>0)
                                    <li class="has-item-down"><a href="{{URL::to('#')}}">{{$data->name}}</a>
                                        <ul class="sub_menu">
                                            @foreach($data->categorySub as $key2=>$data2)
                                                <li>
                                                    <a href="{{URL::to('danh-muc/'.$data->path.'/'.$data2->path)}}">{{$data2->name}}</a>
                                                </li>
                                            @endforeach
                                        </ul>
                                    </li>
                                @else
                                    <li class="li-normal"><a href="{{URL::to('danh-muc/'.$data->path)}}">{{$data->name}}</a></li>
                                @endif
                            @endforeach
                            {{--<li class="li-normal"><a href="{{URL::to('/bai-viet/tu-van')}}">TIN TỨC</a></li>--}}
                            <li class="li-normal"><a href="{{URL::to('/trang/lien-he')}}">Liên Hệ</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
