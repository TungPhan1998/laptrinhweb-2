<?php

namespace App\Http\Middleware;

use Closure;

class CheckAge
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        if($request->tuoi < 18){
            return redirect('/');//neu tuoi duoi 18 thi vao trang chu
        }
        return $next($request);//neu tren 18 thi vao trang chi dinh o checkage 'routes-?web.php'
    }
}
