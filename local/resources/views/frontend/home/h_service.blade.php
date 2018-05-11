<div id="h_service">
    <div class="container">
        <div class="row">

            @foreach($data['listCategory'] as $key=>$item)
                <div class="col-md-3 card">
                    <div class="one-service card-body">
                        <div class="col-md-12 text-center p-0">
                            {{ Html::image($item->image,'',array('class'=>'img-service')) }}
                        </div>
                        {{--<img class="card-img-top" src="..." alt="Card image cap">--}}
                        <div class="card-body">
                            <h5 class="card-title">{{$item->name}}</h5>


                            <p class="">{!!$item->description!!}</p>
                        </div>
                    </div>
                </div>
            @endforeach
            {{--<div class="one-service card">--}}
            {{--{{ Html::image('images/flag/flag_australia.png','',array('class'=>'img-service')) }}--}}
            {{--<div class="card-body">--}}
            {{--<h5 class="card-title">Bảo Lãnh Úc</h5>--}}


            {{--<p class="">This card has supporting text below as a natural lead-in to additional--}}
            {{--content.</p>--}}
            {{--</div>--}}
            {{--</div>--}}
            {{--<div class="one-service card">--}}
            {{--{{ Html::image('images/flag/flag_child_immigration.jpg','',array('class'=>'img-service')) }}--}}
            {{--<div class="card-body">--}}
            {{--<h5 class="card-title">Quốc Tịch Sinh Con Tại Việt Nam</h5>--}}


            {{--<p class="">This is a wider card with supporting text below as a natural lead-in to--}}
            {{--additional content. This card has even longer content than the first to show that equal--}}
            {{--height action.</p>--}}

            {{--</div>--}}
            {{--</div>--}}
            {{--<div class="one-service card">--}}
            {{--{{ Html::image('images/flag/flag_immigration.jpg','',array('class'=>'img-service')) }}--}}
            {{--<div class="card-body">--}}
            {{--<h5 class="card-title">Các Diện Bảo Lãnh Gia Đình Khác</h5>--}}


            {{--<p class="">This is a wider card with supporting text below as a natural lead-in to--}}
            {{--additional content. This card has even longer content than the first to show that equal--}}
            {{--height--}}
            {{--action.</p>--}}
            {{--</div>--}}

            {{--</div>--}}

        </div>
    </div>
</div>