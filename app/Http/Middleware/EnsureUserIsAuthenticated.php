<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Symfony\Component\HttpFoundation\Response;
use Illuminate\Support\Facades\Log;

class EnsureUserIsAuthenticated
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle(Request $request, Closure $next)
    {
        if (!Auth::check()) {  // Jika user belum login
            // Tambahkan pesan flash ke session
            session()->flash('sesiHabis', 'Sesi login Anda telah habis. Silakan login kembali.');
            // Logout user untuk memastikan sesi bersih
        auth()->logout();
            return redirect()->route('/');
        }

        return $next($request);
    }
}
