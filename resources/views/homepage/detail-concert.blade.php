@extends('layouts.layout')

@section('head')
    @parent
    <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>
@stop

@section('sidebar')
    @parent

@stop

@section('content')
        <div class="contents">
            <div class="row">
                <div class="col-md-8">
                    <div class="panel panel-default">
                        <div class="panel-heading">

                            <div class="span8 pull-left label-option" id="top">
                                {{$concert->Artiste}} @ {{$concert->Lieu}}-{{$concert->Ville}}
                            </div>
                            <div class="span6 pull-right">
                                <a href="/" class="label-option link"> Retour à la liste des concerts </a>
                            </div>
                            <br/>
                        </div>
                        <div class="panel-body">
                            <img src="../images/{{$artiste->Image}}" alt="{{$artiste->Image}}"width="720" height="400">
                        </div>
                        <div class="panel-footer">
                            <div>
                               <p>
                                   {{$artiste->Description}}
                               </p>
                            </div>
                        </div>
                    </div>
                    <br/>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h2 class="label-option"> Vidéo de l'artiste </h2>
                            <br/>
                        </div>
                        <div class="panel-body">
                           <div class="video">

                           </div>
                        </div>
                    </div>
                    <div id="bottom">
                        <div class="span6 pull-left">
                            <a  href="/" class="label-option link">
                                <span>< Retour à la liste des concerts</span>
                            </a>
                        </div>
                        <div class="span6 pull-right">
                            <a href="#top" class="label-option link">
                                Retour en haut de page
                            </a>
                        </div>
                        <br/>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="panel panel-default">
                            <h2 class="label-option order-title"> Pré-commandez </h2>
                        <div class="panel-body">
                            <div class="detail-event">
                                <p class="label-option ">
                                    Commandez votre place pour le concert de <br/>
                                    <span class="artist-name">{{$artiste->Nom}}</span>
                                </p>
                                <p class="detail-artist">
                                    <div class="span6 pull-left label-option">Date:</div>
                                    <div class="span6 pull-right label-option">
                                        <span id="day"> {{$concert->Date}} </span>
                                    </div>
                                </p>
                                <br/>
                                <p class="detail-artist">
                                    <div class="span6 pull-left label-option">Lieu:</div>
                                    <div class="span6 pull-right label-option">
                                        <span id="place">{{$concert->Lieu}}</span>
                                    </div>
                                </p>
                                <br/>
                                <p class="detail-artist">
                                <div class="span6 pull-left label-option">Adresse:</div>
                                <div class="span6 pull-right label-option">
                                    <span id="address">{{$concert->Adresse}}</span>
                                </div>
                                </p>
                                <br/>
                                <p class="detail-artist">
                                <div class="span6 pull-left label-option">Ville:</div>
                                <div class="span6 pull-right label-option">
                                    <span id="city">{{$concert->Ville}} </span>
                                </div>
                                </p>
                                <br/>
                                <div id="map_canvas">

                                </div>
                                <br/>
                                <div class="text-center btn-order">
                                    <button type="button" class="btn btn-default btn-lg">
                                        <span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span> Pré-commandez
                                    </button>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>

        <script>

            $(document).ready(function() {

                /**
                 * google map
                 */

                (function(){
                    var geocoder = new google.maps.Geocoder(),
                            address = $('#address').text() +  $('#city').text() + ', ' + ' France';

                    geocoder.geocode( { 'address': address}, function(results, status) {

                        if (status == google.maps.GeocoderStatus.OK) {
                            var latitude = results[0].geometry.location.lat();
                            var longitude = results[0].geometry.location.lng();
                        }

                        var latlng = new google.maps.LatLng(latitude, longitude),

                                map = new google.maps.Map(document.getElementById('map_canvas'), {
                                    zoom: 12,
                                    center: latlng,
                                    mapTypeId: google.maps.MapTypeId.ROADMAP
                                });

                        var marker = new google.maps.Marker({
                            position: latlng,
                            map: map,
                            title: address
                        });


                    });
                })()
            });


            /**
             * youtube
             */

            (function(){
                $.ajax({
                    url: "/search-video?artist=" + $('.artist-name').text(),
                    dataType:   'json',
                    success: function(data)
                    {
                        if((data.status = 'no video') || (data.status = 'no artist')){
                            $('.video').html("<strong> pas de video pour cet artiste <strong>");
                        }
                        video = data.player.embedHtml;
                        $('.video').html(video );
                    },
                    error : function() {
                        return;
                    }
                });
            })()

        </script>
@stop
