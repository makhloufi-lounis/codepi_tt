@extends('layouts.layout')

@section('head')
    @parent
@stop

@section('sidebar')
    @parent
    <button type="button" class="button url-site">
        <a href="{{url('/')}}" class="homepage label-option">
            <span class="glyphicon glyphicon-home"> Retour au site </span>
        </a>
    </button>

@stop

@section('content')
        <h2 class="h2 concert-list">Administration des concerts</h2>

        <button type="button" class="button url-new-concert">
            <a href="{{url('/')}}" class="homepage">
                <span> Nouveau Concert </span>
            </a>
        </button>

        <div class="table">
            <table class="table table-striped">
                <tr>
                    <th>Artiste</th>
                    <th>Date</th>
                    <th>Lieu</th>
                    <th></th>
                    <th></th>
                </tr>

                    @foreach($concerts as $concert)
                    <tr>
                        <td>{{$concert->Artiste}}</td>
                        <td>{{$concert->Date}}</td>
                        <td>{{$concert->Lieu}}</td>
                        <td><a href="#">Editer</a></td>
                        <td><a href="#">Supprimer</a></td>
                    </tr>
                    @endforeach

            </table>
        </div>
        <div class="text-center">
            <?php echo $concerts->render() ?>
        </div>

@stop