<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Product;
use App\Protype;
class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $product = Product::orderBy('ID','desc')
            ->paginate(4);
            $protype = Protype::all();
        return view('index',['data'=>$product,'type'=>$protype]);
    }

    public function protype($type_id){
        $data = Product::where('type_ID','=',$type_id)->get();
        $protype = Protype::all();
        return view('product',['data'=>$data,'type'=>$protype]);
    }

    public function detail($id){
       $data = Product::where('ID', '=', $id)->take(1)->get();
        return view('detail', ['data'=>$data]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        echo"create $id";
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        echo "store $id";
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        echo" hien thi san pham $id";
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        echo"Hien thi form edit san pham $id";
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
        echo "Cap nhat san pham $id";
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        echo"destroy $id";
    }
}
