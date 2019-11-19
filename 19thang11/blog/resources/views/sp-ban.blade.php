<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Laravel</title>

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Nunito:200,600" rel="stylesheet">

        <!-- Styles -->
        <style>
            html, body {
                background-color: #fff;
                color: #636b6f;
                font-family: 'Nunito', sans-serif;
                font-weight: 200;
                height: 100vh;
                margin: 0;
            }

            .full-height {
                height: 100vh;
            }

            .flex-center {
                align-items: center;
                display: flex;
                justify-content: center;
            }

            .position-ref {
                position: relative;
            }

            .top-right {
                position: absolute;
                right: 10px;
                top: 18px;
            }

            .content {
                text-align: center;
            }

            .title {
                font-size: 84px;
            }

            .links > a {
                color: #636b6f;
                padding: 0 25px;
                font-size: 13px;
                font-weight: 600;
                letter-spacing: .1rem;
                text-decoration: none;
                text-transform: uppercase;
            }

            .m-b-md {
                margin-bottom: 30px;
            }
                        .links ul li {
                list-style: none;
                float: left;
                padding: 10px;
                margin-left: 20px;

            }
            .links ul li .sub-menu li:nth-child(1){
                background: pink;

            }
            .links ul li .sub-menu li:nth-child(2){
                background: yellow;
            }

            .links ul li .sub-menu li{
               display: none;
            }
            .links ul li:hover .sub-menu li{
                transition: 0.4s ;
                display: block;
            }
                        /* Clearing floats */
.cf:before,
.cf:after {
  content: " ";
  display: table;
}

.cf:after {
  clear: both;
}

.cf {
  *zoom: 1;
}

/* Mini reset, no margins, paddings or bullets */
.menu,
.submenu {
  margin: 0;
  padding: 0;
  list-style: none;
}

/* Main level */
.menu {         
  margin: 50px auto;
  width: 800px;
  /* http://www.red-team-design.com/horizontal-centering-using-css-fit-content-value */
  width: -moz-fit-content;
  width: -webkit-fit-content;
  width: fit-content;   
}

.menu > li {
  background: #34495e;
  float: left;
  position: relative;
  transform: skewX(25deg);
}

.menu a {
  display: block;
  color: #fff;
  text-transform: uppercase;
  text-decoration: none;
  font-family: Arial, Helvetica;
  font-size: 14px;
}       

.menu li:hover {
  background: #e74c3c;
}       

.menu > li > a {
  transform: skewX(-25deg);
  padding: 1em 2em;
}

/* Dropdown */
.submenu {
  position: absolute;
  width: 200px;
  left: 50%; margin-left: -100px;
  transform: skewX(-25deg);
  transform-origin: left top;
}

.submenu li {
  background-color: #34495e;
  position: relative;
  overflow: hidden;     
}                       

.submenu > li > a {
  padding: 1em 2em;         
}

.submenu > li::after {
  content: '';
  position: absolute;
  top: -125%;
  height: 100%;
  width: 100%;          
  box-shadow: 0 0 50px rgba(0, 0, 0, .9);           
}       

/* Odd stuff */
.submenu > li:nth-child(odd){
  transform: skewX(-25deg) translateX(0);
}

.submenu > li:nth-child(odd) > a {
  transform: skewX(25deg);
}

.submenu > li:nth-child(odd)::after {
  right: -50%;
  transform: skewX(-25deg) rotate(3deg);
}               

/* Even stuff */
.submenu > li:nth-child(even){
  transform: skewX(25deg) translateX(0);
}

.submenu > li:nth-child(even) > a {
  transform: skewX(-25deg);
}

.submenu > li:nth-child(even)::after {
  left: -50%;
  transform: skewX(25deg) rotate(3deg);
}

/* Show dropdown */
.submenu,
.submenu li {
  opacity: 0;
  visibility: hidden;           
}

.submenu li {
  transition: .2s ease transform;
}

.menu > li:hover .submenu,
.menu > li:hover .submenu li {
  opacity: 1;
  visibility: visible;
}       

.menu > li:hover .submenu li:nth-child(even){
  transform: skewX(25deg) translateX(15px);         
}

.menu > li:hover .submenu li:nth-child(odd){
  transform: skewX(-25deg) translateX(-15px);           
}
        </style>
    </head>
    <body>
        <div class="flex-center position-ref full-height">
            @if (Route::has('login'))
                <div class="top-right links">
                    @auth
                        <a href="{{ url('/home') }}">Home</a>
                    @else
                        <a href="{{ route('login') }}">Login</a>

                        @if (Route::has('register'))
                            <a href="{{ route('register') }}">Register</a>
                        @endif
                    @endauth
                </div>
            @endif

            <div class="content">
                <div class="title m-b-md">
                    <h1>Ban</h1>
                </div>

                <ul class="menu cf">
                            <li><a href="{{ url('/') }}" style="text-decoration: none;">Trang chủ</a></li>
                            <li><a href="{{ url('/gioithieu') }}" style="text-decoration: none;">Giới thiệu</a></li>
                            <li>
                                <a href="{{ url('/sanpham') }}" style="text-decoration: none;">Sản phẩm</a>
                                <ul class="submenu">
                                <li style="margin-left: -45px;"><a href="{{ url('/sp-ban') }}" style="text-decoration: none;">Ban</a></li>
                                    <li style="margin-left: -5px;" style="text-decoration: none;"><a href="{{ url('/sp-ghe') }}" style="text-decoration: none;">Ghe</a></li>
                                </ul>           
                            </li>
                            <li><a href="{{ url('/lienhe') }}" style="text-decoration: none;">Liên hệ</a></li>
                        </ul>
                </div>
            </div>
        </div>
    </body>
</html>
