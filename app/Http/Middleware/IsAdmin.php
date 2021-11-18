<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

class IsAdmin
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle(Request $request, Closure $next)
    {
        // beri pengkondisian. jika user belum login atau user bukan admin maka tidak boleh mengakses halaman ini
        if (auth()->guest() || !auth()->user()->is_admin) {
            abort(403);
        }

        return $next($request);
    }
}
