@extends('layouts.layout')

@section('head')
    @parent
@stop

@section('sidebar')
    @parent

@stop

@section('content')
    <h2 class="h2 concert-list">Parcourir les concerts à venir</h2>
    <div class="row">
        <div class="col-md-12">
            <div class="bar-nav">
                <form action="/ajax-request" class="form-inline" id="send">
                    <div class="form-group">
                        <button type="submit" class="btn btn-default" aria-label="Left Align" id="submit">
                            <span class="glyphicon glyphicon-search"><br/> Filtrer les concerts</span>
                        </button>
                    </div>
                    <div class="form-group">
                        <select name="city" class="select">
                            <option selected disabled>Ville</option>
                            @foreach ($towns as $obj)
                                <option value="{{$obj->Ville}}">{{$obj->Ville}}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="form-group">
                        <select name="tags" class="select">
                            <option selected disabled>Tags</option>
                            @foreach ($tags as $obj)
                                <option value="{{$obj->Tags}}">{{$obj->Tags}}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="form-group">
                        <select name="price" class="select">
                            <option selected disabled>Prix</option>
                            @foreach ($costs as $obj)
                                <option value="{{$obj->Prix}}">{{$obj->Prix}}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="form-group">
                        <span class="label-option"> Entre le </span>
                        <select name="date_start" class="select">
                            <option selected disabled>Date</option>
                            @foreach ($days as $obj)
                                <option value="{{$obj->Date}}">{{$obj->Date}}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="form-group">
                        <span class="label-option"> et le </span>
                        <select name="date_end" class="select" >
                            <option selected disabled>Date</option>
                            @foreach ($days as $obj)
                                <option value="{{$obj->Date}}">{{$obj->Date}}</option>
                            @endforeach
                        </select>
                    </div>

                </form>

            </div>
        </div>
    </div>
    <br/>
    <div class="row">
        <div class="next-concerts">
            @foreach ($concerts as $concert)
                <div class="col-md-4">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <strong class="small-size"> {{$concert->Artiste}} @ {{$concert->Lieu}}-{{$concert->Ville}} </strong>
                            <br/>
                        </div>
                        <div class="panel-body">
                            <img src="../images/{{$concert->Image}}" alt="{{$concert->Image}}"width="330" height="200">
                        </div>
                        <div class="panel-footer">
                            <div class="span6 pull-left">{{$concert->Date}}</div>
                            <div class="span6 pull-right">Prix : <strong class="label-option">{{$concert->Prix}},00 &euro;</strong></div>
                            <br/>
                            <div class="span6 pull-left">{{$concert->Tags}}</div>
                            <div class="span6 pull-right">
                                <a href="/detail-concert?concert=<?php echo $concert->id_concert; ?>&artiste=<?php echo $concert->id_artiste; ?>">
                                    Voir le détails>
                                </a>
                            </div>
                            <br/>
                        </div>
                    </div>
                </div>
            @endforeach

            <div class="text-center">
                    <?php echo $concerts->render() ?>
            </div>
        </div>
    </div>
    <script>

        /**
         * Pagination
         */
        $(document).on('click','.pagination a', function(e){
            e.preventDefault();
            var page = $(this).attr('href').split('page=')[1];
            getConcerts(page);
        });
        function getConcerts(page){
            $.ajax({
                url:'/?page='+ page
            }).done(function(data){
                $('.next-concerts').html(data);
            })
        }

        /**
         * Filter
         */
        $('#send').on('submit', function(e){
            e.preventDefault();
            var $this = $(this);
            getConcertsWithFilter($this);
        });

        function  getConcertsWithFilter($this){
            $.ajax({
                url: "/ajax-request",
                type: $this.attr('method'),
                data: $this.serialize(),
                dataType:   'html',
                success: function(data)
                {
                    if(data == 'ko') {
                        location.href = '/';
                    }else {
                        $('.next-concerts').html(data);
                    }
                },
                error : function() {
                    return;
                }
            });
        }

    </script>
@stop