<div id="h_news">
    <div class="container">
        <div class="col-md-12 text-center p-0">
            <h2 class="cm_title">Tin Tức</h2>
        </div>
        <div id="detail" class="col-md-12 p-0">
            <div class="row m-0">
                @foreach($data['listNews'] as$key=>$item)
                    <div class="one-item col-md-4 card">
                        <div class="img-news">
                            <a href="{{URL::to('bai-viet/'.$item->path)}}">  {{ Html::image($item->image,'',array('class'=>'h_news_img'))}}</a>
                        </div>
                        <div class="">
                            <h4 class="title-product"><a
                                        href="{{URL::to('bai-viet/'.$item->path)}}">{{$item->title}}</a></h4>

                        </div>
                        <div class="card-footer description">
                            {!! $item->description !!}
                        </div>

                    </div>
                @endforeach
            </div>
        </div>
    </div>
</div>