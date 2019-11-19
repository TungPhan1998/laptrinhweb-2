<?php

namespace App\Http\Middleware;

use Closure;

class CheckLogin
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
        // $tk = $request->input('tk');
        // $mk = $request->input('mk');
        if($request->user == 'admin' && $request->pass == '123')
        {  
            return $next($request);
        }
        return redirect('/');
    }
}
