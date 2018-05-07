<div id="po_info">
    <div class="container p-0">
        <div class="row m-0">
            <div class="po_info_content col-md-12">
                @if(count($data['post'])==1)
                    <h1 class="title">{{$data['post'][0]->title}}</h1>

                    {{--<div class="description">--}}
                        {{--{!!$data['post'][0]->description !!}--}}
                    {{--</div>--}}
                    <div class="detail">
                        {!! $data['post'][0]->content !!}
                    </div>
                @elseif(count($data['post'])==0)
                    <h1 class="title">{{$data['mainCategory']->name}}</h1>

                    <div class="description">
                        {!!$data['mainCategory']->description !!}
                    </div>
                @else
                    <h1 class="title">{{$data['mainCategory'][0]->name}}</h1>

                    <div class="description">
                        {!!$data['mainCategory'][0]->description !!}
                    </div>
                @endif
                @if(count($data['post'])>1)
                    <div class="po_info_detail col-md-12 p-0">
                        <div class="row m-0">
                            @foreach($data['post'] as $key=>$item)
                                <div class="one-po-item col-md-4 card">
                                    <a href="{{URL::to('bai-viet/'.$item->path)}}">  {{ Html::image($item->image,'',array('class'=>'po_item_img'))}}</a>
                                    <div class="card-body">
                                        <h4 class="title-product"><a
                                                    href="{{URL::to('bai-viet/'.$item->path)}}">{{$item->title}}</a>
                                        </h4>
                                    </div>
                                </div>
                            @endforeach
                        </div>
                    </div>
                @endif
            </div>
        </div>
    </div>
</div>