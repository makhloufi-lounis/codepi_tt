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
