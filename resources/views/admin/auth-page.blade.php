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

    <div class="row">
        <div class="col-md-12">
            <div class="text-center">
                <div class="bar-nav">
                    <form class="form-inline" method="get" action="/admin/concerts">
                        <div class="form-group group">
                            <label for="exampleInputEmail3" >E-mail: </label>
                            <input type="email" name="email" class="input-control" id="exampleInputEmail3" >
                        </div>
                        <div class="form-group form-group-left group">
                            <label for="exampleInputPassword3">Mot de passe: </label>
                            <input type="password" name="password" class="input-control" id="exampleInputPassword3">
                        </div>
                        <button type="submit" class="button btn-connect">
                            Se connecter<span class="glyphicon glyphicon-menu-right"/>
                        </button>

                    </form>

                </div>
            </div>
        </div>
    </div>
    <br/>

@stop