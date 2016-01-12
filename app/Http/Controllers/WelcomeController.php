<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Concert;
use App\Artiste;
use Illuminate\Support\Facades\DB;
use Illuminate\Pagination\LengthAwarePaginator as Paginator;
use Illuminate\Support\Facades\Input;

class WelcomeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
            $towns = DB::select("select DISTINCT Ville from concerts WHERE Ville != '' ORDER BY Ville");
            $tags  = DB::select('select DISTINCT Tags from artistes ORDER BY Tags');
            $costs = DB::select('select DISTINCT Prix from concerts ORDER BY Prix');
            $days  = DB::select('select DISTINCT Date from concerts ORDER BY Date');

        $query = 'select concerts.Id as id_concert, artistes.Id as id_artiste,  Artiste, Nom, Lieu, Ville, Prix, Date, Tags, Image
                            from concerts
                            INNER JOIN artistes
                            ON Artiste = Nom
                            ORDER BY Date';
            $items = DB::select(DB::raw($query));

            $perPage = 9;
            $page = (Input::get('page')) ? Input::get('page') : 1;

            $offSet = ($page * $perPage) - $page;
            $total = count($items);

            if(count($items) > 0) {
                $itemsForCurrentPage = array_slice($items, $offSet, $perPage, true);
                $concerts = new Paginator($itemsForCurrentPage, $total, $perPage, $page);
                if ($page == 1) {
                   $view = 'homepage.welcome';
                } else {
                    $view = 'homepage.next-concerts';
                }

                return view($view, [
                    'concerts' => $concerts,
                    'towns' => $towns,
                    'tags'  => $tags,
                    'costs' => $costs,
                    'days'  => $days,
                ]);
            }else {
                return view('errors/503');
            }
    }


    function ajax_filter(Request $request){

        $params = $request->all();

        if(count($params) > 0) {

            $query = 'select concerts.Id as id_concert, artistes.Id as id_artiste,  Artiste, Nom, Lieu, Ville, Prix, Date, Tags, Image
                            from concerts
                            INNER JOIN artistes
                            ON Artiste = Nom';
            if(count($params) == 5){
                $query .= " WHERE Ville = :city
                            and Tags = :tags
                            and Prix = :price
                            and Date BETWEEN :date_start AND :date_end";

                $concerts = DB::select(DB::raw($query), [
                    'city' => (!empty($params['city']) ? $params['city'] : ''),
                    'tags' => (!empty($params['tags']) ? $params['tags'] : ''),
                    'price' => (!empty($params['price']) ? $params['price'] : ''),
                    'date_start' => (!empty($params['date_start']) ? $params['date_start'] : ''),
                    'date_end' => (!empty($params['date_end']) ? $params['date_end'] : ''),
                ]);

            }else {
                $args = array();
                $query .= " WHERE";
                foreach ($params as $key => $value) {
                    if ($key == 'date_start') {
                        $query .= " Date >= ? and";
                    } elseif ($key == 'date_end') {
                        $query .= " Date <= ? and";
                    } elseif ($key == 'city') {
                        $query .= " Ville = ? and";
                    } elseif ($key == 'tags') {
                        $query .= " Tags = ? and";
                    } elseif ($key == 'price') {
                        $query .= " Prix = ? and";
                    }
                    array_push($args, $value);
                }

                $query = preg_replace('/and$/', '', $query);

                $concerts = DB::select(DB::raw($query), $args);

            }

            return view('homepage.concert-filter', [
                'concerts' => $concerts,
            ]);

        }else{
           return "ko";
        }

    }


    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Request $request)
    {

        $id_concert = (int) $request->get('concert');
        $id_artiste = (int) $request->get('artiste');

        $concert = Concert::find($id_concert);
        $artiste = Artiste::find($id_artiste);

        return view('homepage.detail-concert', [
            'concert' => $concert,
            'artiste' => $artiste,
        ]);
    }

    public function search()
    {
        $word = (string)Input::get('artist');

        if(isset($word)) {

            $youtube = new \Madcoda\Youtube(array('key' => 'AIzaSyDKLmH2_s3qJUGBWATDh880Hahw_3rh_UE'));
            $allVideos = $youtube->searchVideos($word);
            $videoId = $allVideos [0]->id->videoId;

            if(!empty($videoId)) {
                $videos = $youtube->getVideoInfo($videoId);
                return response()->json($videos);
            }else{
                response()->json(['status' => 'no video']);
            }
        }else{
            response()->json(['status' => 'no artist']);
        }
    }


    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
