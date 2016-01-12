<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\DB;
use Illuminate\Pagination\LengthAwarePaginator as Paginator;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\User;
use App\Concert;

class ConcertController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $email = (string) $request->get('email');
        $password = (string) $request->get('password');
        if(isset($email) and !empty($email) and isset($password) and !empty($password)){
            if( ($email === "user@codepi.com") and ($password === "pwd2015")){
                $user = User::where('email', '=', $email)->count();
                if($user == 0){
                    User::create(['email' => $email, 'password' => Hash::make($password)]);
                }
                if (Auth::attempt(['email' => $email, 'password' => $password])){

                    //$items = Concert::all()->toArray();
                    $query = 'select * from concerts';
                    $items = DB::select(DB::raw($query));

                    $perPage = 20;
                    $page = (Input::get('page')) ? Input::get('page') : 1;

                    $offSet = ($page * $perPage) - $page;
                    $total = count($items);

                    $itemsForCurrentPage = array_slice($items, $offSet, $perPage, true);
                    $concerts = new Paginator($itemsForCurrentPage, $total, $perPage, $page);
                    $concerts->setPath('/admin/concerts');

                    return view('admin.admin-concerts-page', ['concerts' => $concerts]);
                }

                return view('admin.auth-page');
            }
            return view('admin.auth-page');
        }
        return view('admin.auth-page');
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
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
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
