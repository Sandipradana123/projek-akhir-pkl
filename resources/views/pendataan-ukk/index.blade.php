<!doctype html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <script src="https://cdn.tailwindcss.com"></script>
  <link href="https://cdn.jsdelivr.net/npm/flowbite@2.5.2/dist/flowbite.min.css" rel="stylesheet" />
  <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
  <title>Universitas Pgri Madiun</title>
  <link rel="icon" href="images/logo.png">
  <style>
    html, body {
      height: 100%;
    }
    html {
      scroll-behavior: smooth;
    }
    .active {
      color: blue; 
      font-weight: bold; /* Optional: to make the active link stand out */
    }
    #nav {
      position: fixed; /* Navbar akan tetap di atas saat scroll */
      top: 0; /* Menentukan jarak dari atas */
      left: 0; /* Mengatur agar navbar menempel di sisi kiri */
      width: 100%; /* Memastikan navbar memenuhi lebar layar */
      z-index: 1000; /* Agar navbar di atas elemen lainnya */
      background-color: white; /* Warna latar belakang agar navbar terlihat */
      box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1); /* Menambahkan bayangan */
    }
  </style>
</head>
<body>
<!-- navbar -->
<header class="bg-white" id="nav">
    <div class="mx-auto flex h-16 max-w-screen-xl items-center gap-4 px-7 sm:px-6 lg:px-8">
        <a href="#" class="flex items-center space-x-3 rtl:space-x-reverse">
            <img src="{{ asset('img/ukkUnipma.png') }}" class="h-8" alt="Unipma Logo" />
            <span class="self-center text-lg font-semibold whitespace-nowrap dark:text-white">universitas pgri madiun</span>
        </a>
        <div class="flex flex-1 items-center justify-end md:justify-center">
            <nav aria-label="Global" class="hidden md:block">
                <ul class="flex flex-col font-medium p-4 md:p-0 mt-4 border border-gray-100 rounded-lg bg-gray-50 md:space-x-8 rtl:space-x-reverse md:flex-row md:mt-0 md:border-0 md:bg-white " id="default-styled-tab" data-tabs-active-classes="text-purple-600 hover:text-purple-600 dark:text-purple-500 dark:hover:text-purple-500 border-purple-600" data-tabs-inactive-classes=" text-gray-500 hover:text-gray-600  border-gray-100 hover:border-gray-300 :hover:text-gray-300" role="tablist">
                    <li>
                      <a href="#home" class="block py-2 px-3 md:p-0 text-gray-900 rounded hover:bg-gray-100 md:hover:bg-transparent md:hover:text-blue-700">Home</a>
                    </li>
                    <li>
                      <a href="#Pendataan" class="block py-2 px-3 md:p-0 text-gray-900 rounded hover:bg-gray-100 md:hover:bg-transparent md:hover:text-blue-700 ">Pendataan</a>
                    </li>
                    <li>
                      <a href="#faq" class="block py-2 px-3 md:p-0 text-gray-900 rounded hover:bg-gray-100 md:hover:bg-transparent md:hover:text-blue-700">FAQ</a>
                    </li>
                    <li>
                      <a href="#contact" class="block py-2 px-3 md:p-0 text-gray-900 rounded hover:bg-gray-100 md:hover:bg-transparent md:hover:text-blue-700 md:dark:hover:text-blue-500">Contact</a>
                    </li>
                  </ul>
            </nav>
        </div>

        <div class="flex items-center gap-4">
            <div class="sm:flex sm:gap-4">
                <button type="button" class="flex text-sm bg-gray-50 rounded-full md:me-0 focus:ring-4 focus:ring-gray-300" id="user-menu-button" aria-expanded="false" data-dropdown-toggle="user-dropdown" data-dropdown-placement="bottom">
                    <span class="sr-only">Open user menu</span>
                    <img class="w-8 h-8 rounded-full" src="{{ asset('img/peserta.png') }}" alt="user photo">
                </button>
                <!-- Dropdown menu -->
                <div class="z-50 hidden my-4 text-base list-none bg-white divide-y divide-gray-100 rounded-lg shadow" id="user-dropdown">
                    <div class="px-4 py-3">
                        <span class="block text-sm text-gray-900">{{ Auth::user()->username }}</span>
                        <span class="block text-sm text-gray-500 truncate">{{ Auth::user()->email }}</span>
                    </div>
                    <ul class="py-2" aria-labelledby="user-menu-button">
                        
                        <li>
                            {{-- <a href="#popup-modal-logout" class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-100 dark:hover:bg-gray-600 dark:text-gray-200 dark:hover:text-white" 
               onclick="event.preventDefault(); document.getElementById('logout-form').submit();">
                Logout
            </a> --}}
            
            <a href="#"
                class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-100"
                onclick="event.preventDefault(); document.getElementById('logout-form').submit();">
                <i class="fas fa-sign-out-alt"></i> <!-- Logout -->
                <span class="flex-1 ms-3 whitespace-nowrap">Logout</span>
             </a>
             
             <form id="logout-form" action="{{ route('logout.admin') }}" method="POST" class="hidden">
                 @csrf
             </form>
                        </li>
                    </ul>
                </div>
            </div>

            <button data-collapse-toggle="navbar-cta" type="button" class="inline-flex items-center p-2 w-10 h-10 justify-center text-sm text-gray-500 rounded-lg md:hidden hover:bg-gray-100 focus:outline-none focus:ring-2 focus:ring-gray-200 dark:text-gray-400 dark:hover:bg-gray-700 dark:focus:ring-gray-600" aria-controls="navbar-cta" aria-expanded="false">
                <span class="sr-only">Open main menu</span>
                <svg class="w-5 h-5" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 17 14">
                    <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M1 1h15M1 7h15M1 13h15"/>
                </svg>
            </button>
        </div>
    </div>
</header>


<aside id="sidebar" class="fixed top-0 left-0 z-40 w-64 h-full transition-transform -translate-x-full bg-blue-600 md:hidden">
    <div class="p-4">
        <h2 class="text-white">Menu</h2>
        <ul class="mt-6 space-y-2">
            <li>
                <a href="#home" class="block py-2 text-white hover:bg-gray-700 font-serif font-bold">Home</a>
            </li>
            <li>
                <a href="#Pendataan" class="block py-2 text-white hover:bg-gray-700 font-serif font-bold">Pendataan</a>
            </li>
            <li>
                <a href="#faq" class="block py-2 text-white hover:bg-gray-700 font-serif font-bold">FAQ</a>
            </li>
            <li>
                <a href="#contact" class="block py-2 text-white hover:bg-gray-700 font-serif font-bold">Contact</a>
            </li>
        </ul>
    </div>
</aside>

<script>
    document.querySelector('[data-collapse-toggle="navbar-cta"]').addEventListener('click', function() {
        const sidebar = document.getElementById('sidebar');
        sidebar.classList.toggle('-translate-x-full'); // Toggle sidebar visibility
    });

    const menuLinks = document.querySelectorAll('nav ul li a');

    menuLinks.forEach(link => {
        link.addEventListener('click', function(event) {
            event.preventDefault(); // Prevent default anchor click behavior
            menuLinks.forEach(link => link.classList.remove('active')); // Remove 'active' class from all links
            this.classList.add('active'); // Add 'active' class to the clicked link
            const targetId = this.getAttribute('href'); // Get the target ID from href
            document.querySelector(targetId).scrollIntoView({
                behavior: 'smooth' // Smooth scroll
            });
        });
    });
</script>

<!-- Main modal -->
<div id="popup-modal" tabindex="-1" class="hidden overflow-y-auto overflow-x-hidden fixed top-0 right-0 left-0 z-50 justify-center items-center w-full md:inset-0 h-[calc(100%-1rem)] max-h-full">
    <div class="relative p-4 w-full max-w-md max-h-full">
        <div class="relative bg-white rounded-lg shadow dark:bg-gray-700">
            <button type="button" class="absolute top-3 end-2.5 text-gray-400 bg-transparent hover:bg-gray-200 hover:text-gray-900 rounded-lg text-sm w-8 h-8 ms-auto inline-flex justify-center items-center dark:hover:bg-gray-600 dark:hover:text-white" data-modal-hide="popup-modal">
                <svg class="w-3 h-3" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 14 14">
                    <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="m1 1 6 6m0 0 6 6M7 7l6-6M7 7l-6 6"/>
                </svg>
                  
                <span class="sr-only">Close modal</span>
            </button>
            <div class="p-4 md:p-5 text-center">
                <svg class="mx-auto mb-4 w-12 h-12 dark:text-white" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                    <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="m8.032 12 1.984 1.984 4.96-4.96m4.55 5.272.893-.893a1.984 1.984 0 0 0 0-2.806l-.893-.893a1.984 1.984 0 0 1-.581-1.403V7.04a1.984 1.984 0 0 0-1.984-1.984h-1.262a1.983 1.983 0 0 1-1.403-.581l-.893-.893a1.984 1.984 0 0 0-2.806 0l-.893.893a1.984 1.984 0 0 1-1.403.581H7.04A1.984 1.984 0 0 0 5.055 7.04v1.262c0 .527-.209 1.031-.581 1.403l-.893.893a1.984 1.984 0 0 0 0 2.806l.893.893c.372.372.581.876.581 1.403v1.262a1.984 1.984 0 0 0 1.984 1.984h1.262c.527 0 1.031.209 1.403.581l.893.893a1.984 1.984 0 0 0 2.806 0l.893-.893a1.985 1.985 0 0 1 1.403-.581h1.262a1.984 1.984 0 0 0 1.984-1.984V15.7c0-.527.209-1.031.581-1.403Z"/>
                  </svg>
                  
                <h3 class="mb-5 text-lg font-normal text-gray-500 dark:text-gray-400">Selamat Anda Berhasil Mendaftar, Klik Lanjut Untuk Mendapatkan Surat Resmi</h3>
                <button data-modal-hide="popup-modal" type="button" class="text-white bg-red-600 hover:bg-red-800 focus:ring-4 focus:outline-none focus:ring-red-300 dark:focus:ring-red-800 font-medium rounded-lg text-sm inline-flex items-center px-5 py-2.5 text-center">
                    Lanjut
                </button>
            </div>
        </div>
    </div>
</div>



  
<!-- akhir navbar -->

<!-- modal logoout -->
{{-- <form id="logout-form"  action="{{ route('/') }}" method="POST"> --}}
    {{-- @csrf --}}
<div id="popup-modal-logout" tabindex="-1" class="hidden overflow-y-auto overflow-x-hidden fixed top-0 right-0 left-0 z-50 justify-center items-center w-full md:inset-0 h-[calc(100%-1rem)] max-h-full">
    <div class="relative p-4 w-full max-w-md max-h-full">
        <div class="relative bg-white rounded-lg shadow dark:bg-gray-700">
            
            <div class="p-4 md:p-5 text-center">
                <svg class="mx-auto mb-4 text-gray-400 w-12 h-12 dark:text-gray-200" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 20 20">
                    <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M10 11V6m0 8h.01M19 10a9 9 0 1 1-18 0 9 9 0 0 1 18 0Z"/>
                </svg>
                <h3 class="mb-5 text-lg font-normal text-gray-500 dark:text-gray-400">Apakah Anda Yakin Untuk Logout ?</h3>
                <button data-modal-hide="popup-modal" type="button" class="text-white bg-red-600 hover:bg-red-800 focus:ring-4 focus:outline-none focus:ring-red-300 dark:focus:ring-red-800 font-medium rounded-lg text-sm inline-flex items-center px-5 py-2.5 text-center">
                    Lanjut
                </button>
                <button data-modal-hide="popup-modal-logout" type="button" class="py-2.5 px-5 ms-3 text-sm font-medium text-gray-900 focus:outline-none bg-white rounded-lg border border-gray-200 hover:bg-gray-100 hover:text-blue-700 focus:z-10 focus:ring-4 focus:ring-gray-100 dark:focus:ring-gray-700 dark:bg-gray-800 dark:text-gray-400 dark:border-gray-600 dark:hover:text-white dark:hover:bg-gray-700">Cancel</button>
            </div>
        </div>
    </div>
</div>
{{-- </form> --}}
<!-- section class -->
<section class="text-black relative overflow-hidden" id="home">
    <div class="mx-auto max-w-screen-xl px-4 py-32 lg:flex lg:h-screen lg:items-center">
        <div class="mx-auto max-w-3xl text-center">
            <h1
                class="bg-gradient-to-r from-green-300 via-blue-500 to-purple-600 bg-clip-text text-3xl font-extrabold text-transparent sm:text-5xl" data-aos="zoom-in-right">
                Selamat Datang Di Sistem
                <span class="sm:block"> Laboratium UNIVERSITAS PGRI MADIUN </span>
            </h1>

            <p class="mx-auto mt-4 max-w-xl sm:text-xl/relaxed">
                Selamat datang, website ini difungsikan untuk penjadwalan tempat duduk penggunaan laboratium universitas PGRI Madiun.
            </p>

            <div class="mt-8 flex flex-wrap justify-center gap-4">
                <a
                    class="block w-full rounded border border-blue-600 bg-blue-600 px-12 py-3 text-sm font-medium text-white hover:bg-transparent hover:text-blue-700 focus:outline-none focus:ring active:text-opacity-75 sm:w-auto"
                    href="#Pendataan">
                    Get Started
                </a>

                <a
                    class="block w-full rounded border border-blue-600 px-12 py-3 text-sm font-medium text-blue-700 hover:bg-blue-600 hover:text-white focus:outline-none focus:ring active:bg-blue-500 sm:w-auto"
                    href="https://youtu.be/w8itHEvvSM8?si=9QoQ4AKpKirf5PMI">
                    Vidio tutorial
                </a>
            </div>
        </div>
    </div>

    <!-- Elemen gelembung -->
    <div class="bubble"></div>
    <div class="bubble" style="animation-delay: 1s;"></div>
    <div class="bubble" style="animation-delay: 2s;"></div>

    <!-- Elemen gelembung biru dari bawah -->
    <div class="blue-bubble"></div>
    <div class="blue-bubble" style="animation-delay: 3s;"></div>
    <div class="blue-bubble" style="animation-delay: 4s;"></div>

    <!-- Elemen gelembung bergerak kiri-kanan -->
    <div class="moving-bubble"></div>
    <div class="moving-bubble" style="animation-delay: 1.5s;"></div>
</section>

<!-- CSS untuk gelembung, gelembung biru, dan animasi -->
<style>
    .bubble {
        position: absolute;
        width: 50px; /* Ukuran gelembung */
        height: 50px; /* Ukuran gelembung */
        border-radius: 50%;
        background-color: rgba(190, 0, 0, 0.6); /* Warna gelembung */
        animation: bounce 8s ease-in-out infinite; /* Durasi animasi lebih lambat */
    }

    @keyframes bounce {
        0%, 100% {
            transform: translate(0, 0);
        }
        25% {
            transform: translate(100vw, -50vh); /* Gerakan ke kanan atas */
        }
        50% {
            transform: translate(0, -100vh); /* Gerakan ke kiri atas */
        }
        75% {
            transform: translate(-100vw, 0); /* Gerakan ke kiri bawah */
        }
    }

    .blue-bubble {
        position: absolute;
        width: 60px; /* Ukuran gelembung biru */
        height: 60px; /* Ukuran gelembung biru */
        border-radius: 50%;
        background-color: blue; /* Warna gelembung biru */
        bottom: -60px; /* Mulai dari bawah */
        animation: rise 3s ease-in-out infinite; /* Durasi animasi */
    }

    @keyframes rise {
        0% {
            transform: translateY(0); /* Posisi awal */
        }
        50% {
            transform: translateY(-100vh); /* Bergerak ke atas */
        }
        100% {
            transform: translateY(0); /* Kembali ke posisi awal */
        }
    }

    .moving-bubble {
        position: absolute;
        width: 40px; /* Ukuran gelembung bergerak */
        height: 40px; /* Ukuran gelembung bergerak */
        border-radius: 50%;
        background-color: rgba(0, 123, 255, 0.7); /* Warna gelembung bergerak */
        animation: move 6s linear infinite; /* Durasi animasi bergerak */
    }

    @keyframes move {
        0% {
            transform: translateX(0); /* Posisi awal */
        }
        50% {
            transform: translateX(80vw); /* Bergerak ke kanan */
        }
        100% {
            transform: translateX(0); /* Kembali ke posisi awal */
        }
    }
</style>
<!-- section akhir -->

<!-- Pendataan Section -->
 @include('komponen.formSection')

<script>
    function toggleSeats() {
        const labSelect = document.getElementById('lab');
        const seatsContainer = document.getElementById('seatsContainer');

        // Tampilkan tempat duduk hanya jika lab dipilih
        if (labSelect.value) {
            seatsContainer.classList.remove('hidden');
        } else {
            seatsContainer.classList.add('hidden');
        }
    }
</script>

<!-- FAQ -->
<section class="py-10 bg-gray-50 sm:py-16 lg:py-24" id="faq">
    <div class="px-4 mx-auto sm:px-6 lg:px-8 max-w-7xl">
        <div class="max-w-2xl mx-auto text-center">
            <h2 class="text-3xl font-bold leading-tight text-black sm:text-4xl lg:text-5xl">Frequently Asked Questions</h2>
            <p class="max-w-xl mx-auto mt-4 text-base leading-relaxed text-gray-600">Penrtanyaan Umum Yang Sering Diajukan OLeh Pengguna Lainya</p>
        </div>

      
<div id="accordion-open" data-accordion="open">
    <h2 id="accordion-open-heading-1">
      <button type="button" class="flex items-center mt-5 justify-between w-full p-5 font-medium rtl:text-right text-gray-500 border border-b-0 border-gray-200 rounded-t-xl focus:ring-4 focus:ring-gray-200" data-accordion-target="#accordion-open-body-1" aria-expanded="false" aria-controls="accordion-open-body-1">
        <span class="flex items-center"><svg class="w-5 h-5 me-2 shrink-0" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M18 10a8 8 0 11-16 0 8 8 0 0116 0zm-8-3a1 1 0 00-.867.5 1 1 0 11-1.731-1A3 3 0 0113 8a3.001 3.001 0 01-2 2.83V11a1 1 0 11-2 0v-1a1 1 0 011-1 1 1 0 100-2zm0 8a1 1 0 100-2 1 1 0 000 2z" clip-rule="evenodd"></path></svg> Apa itu sistem pemilihan tempat duduk laboratorium?</span>
        <svg data-accordion-icon class="w-3 h-3 rotate-180 shrink-0" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 10 6">
          <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5 5 1 1 5"/>
        </svg>
      </button>
    </h2>
    <div id="accordion-open-body-1" class="hidden" aria-labelledby="accordion-open-heading-1">
      <div class="p-5 border border-b-0 border-gray-200">
        <p class="mb-2 text-gray-500">Sistem ini dirancang untuk memudahkan mahasiswa dalam memilih dan memesan tempat duduk di laboratorium sesuai kebutuhan mereka.</p>
      </div>
    </div>
    <h2 id="accordion-open-heading-2">
      <button type="button" class="flex items-center justify-between w-full p-5 font-medium rtl:text-right text-gray-500 border border-b-0 border-gray-200 focus:ring-4 focus:ring-gray-200   hover:bg-gray-100  gap-3" data-accordion-target="#accordion-open-body-2" aria-expanded="false" aria-controls="accordion-open-body-2">
        <span class="flex items-center"><svg class="w-5 h-5 me-2 shrink-0" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M18 10a8 8 0 11-16 0 8 8 0 0116 0zm-8-3a1 1 0 00-.867.5 1 1 0 11-1.731-1A3 3 0 0113 8a3.001 3.001 0 01-2 2.83V11a1 1 0 11-2 0v-1a1 1 0 011-1 1 1 0 100-2zm0 8a1 1 0 100-2 1 1 0 000 2z" clip-rule="evenodd"></path></svg>Siapa yang bisa menggunakan sistem ini?</span>
        <svg data-accordion-icon class="w-3 h-3 rotate-180 shrink-0" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 10 6">
          <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5 5 1 1 5"/>
        </svg>
      </button>
    </h2>
    <div id="accordion-open-body-2" class="hidden" aria-labelledby="accordion-open-heading-2">
      <div class="p-5 border border-b-0 border-gray-200">
        <p class="mb-2 text-gray-500 ">Semua mahasiswa yang terdaftar di universitas berhak menggunakan sistem pemilihan tempat duduk laboratorium.</p>
      </div>
    </div>
    <h2 id="accordion-open-heading-3">
      <button type="button" class="flex items-center justify-between w-full p-5 font-medium rtl:text-right text-gray-500 border border-gray-200 focus:ring-4 focus:ring-gray-200  hover:bg-gray-100 gap-3" data-accordion-target="#accordion-open-body-3" aria-expanded="false" aria-controls="accordion-open-body-3">
        <span class="flex items-center"><svg class="w-5 h-5 me-2 shrink-0" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M18 10a8 8 0 11-16 0 8 8 0 0116 0zm-8-3a1 1 0 00-.867.5 1 1 0 11-1.731-1A3 3 0 0113 8a3.001 3.001 0 01-2 2.83V11a1 1 0 11-2 0v-1a1 1 0 011-1 1 1 0 100-2zm0 8a1 1 0 100-2 1 1 0 000 2z" clip-rule="evenodd"></path></svg> Apakah saya bisa memilih tempat duduk di laboratorium yang berbeda?</span>
        <svg data-accordion-icon class="w-3 h-3 rotate-180 shrink-0" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 10 6">
          <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5 5 1 1 5"/>
        </svg>
      </button>
    </h2>
    <div id="accordion-open-body-3" class="hidden" aria-labelledby="accordion-open-heading-3">
      <div class="p-5 border border-t-0 border-gray-200 ">Ya, mahasiswa dapat memilih tempat duduk di laboratorium mana pun yang tersedia sesuai jadwal dan kuota.</p>
      </div>
    </div>
  </div>
  

        <p class="text-center text-gray-600 textbase mt-9">Jika Anda tidak menemukan informasi yang sesuai, silakan klik di sini untuk bantuan lebih lanjut...<a href="#" title="" class="font-medium text-blue-600 transition-all duration-200 hover:text-blue-700 focus:text-blue-700 hover:underline">Contact our support</a></p>
    </div>
</section>

<!-- Faq Akhir -->

<!-- contact awal -->
<section class="py-10 bg-gray-100 sm:py-16 lg:py-24" id="contact">
    <div class="px-4 mx-auto sm:px-6 lg:px-8 max-w-7xl">
        <div class="max-w-2xl mx-auto text-center">
            <h2 class="text-3xl font-bold leading-tight text-gray-900 sm:text-4xl lg:text-5xl">Contact us</h2>
            <p class="max-w-xl mx-auto mt-4 text-base leading-relaxed text-gray-500">Jika Anda memiliki pertanyaan yang belum terjawab, silakan hubungi admin melalui menu kontak atau tinggalkan pesan melalui formulir yang tersedia.</p>
        </div>

        <div class="max-w-5xl mx-auto mt-12 sm:mt-16">
            <div class="grid grid-cols-1 gap-6 px-8 text-center md:px-0 md:grid-cols-3">
                <div class="overflow-hidden bg-white rounded-xl">
                    <div class="p-6">
                        <svg class="flex-shrink-0 w-10 h-10 mx-auto text-gray-400" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                            <path
                                stroke-linecap="round"
                                stroke-linejoin="round"
                                stroke-width="1"
                                d="M3 5a2 2 0 012-2h3.28a1 1 0 01.948.684l1.498 4.493a1 1 0 01-.502 1.21l-2.257 1.13a11.042 11.042 0 005.516 5.516l1.13-2.257a1 1 0 011.21-.502l4.493 1.498a1 1 0 01.684.949V19a2 2 0 01-2 2h-1C9.716 21 3 14.284 3 6V5z"
                            />
                        </svg>
                        <p class="mt-6 text-lg font-medium text-gray-900">+62 813-3138-9761 (Arjun)</p>
                        <p class="mt-1 text-lg font-medium text-gray-900">+62 877-1930-5836 (Sandi)</p>
                    </div>
                </div>

                <div class="overflow-hidden bg-white rounded-xl">
                    <div class="p-6">
                        <svg class="flex-shrink-0 w-10 h-10 mx-auto text-gray-400" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="1" d="M3 8l7.89 5.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z" />
                        </svg>
                        <p class="mt-6 text-lg font-medium text-gray-900">unipma@gmail.com</p>
                        <p class="mt-1 text-lg font-medium text-gray-900">UptKomputer@gmail.com</p>
                    </div>
                </div>

                <div class="overflow-hidden bg-white rounded-xl">
                    <div class="p-6">
                        <svg class="flex-shrink-0 w-10 h-10 mx-auto text-gray-400" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="1" d="M17.657 16.657L13.414 20.9a1.998 1.998 0 01-2.827 0l-4.244-4.243a8 8 0 1111.314 0z" />
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="1" d="M15 11a3 3 0 11-6 0 3 3 0 016 0z" />
                        </svg>
                        <p class="mt-6 text-lg font-medium leading-relaxed text-gray-900">Jl. Setia Budi No.85, Kanigoro, Kec. Kartoharjo, Kota Madiun, Jawa Timur</p>
                    </div>
                </div>
            </div>

            <div class="mt-6 overflow-hidden bg-white rounded-xl">
                <div class="px-6 py-12 sm:p-12">
                    <h3 class="text-3xl font-semibold text-center text-gray-900">Kirim Pesan</h3>

                    <form action="{{route('masukan-peserta')}}" method="POST" class="mt-14">
                        @csrf
                        <div class="grid grid-cols-1 sm:grid-cols-2 gap-x-5 gap-y-4">
                            <div>
                                <label for="" class="text-base font-medium text-gray-900">Nama lengkap</label>
                                <div class="mt-2.5 relative">
                                    <input type="text" name="nama" id="" class="block w-full px-4 py-4 text-black placeholder-gray-500 transition-all duration-200 bg-white border border-gray-200 rounded-md focus:outline-none focus:border-blue-600 caret-blue-600" value="{{ Auth::user()->username }}" readonly />
                                </div>
                            </div>

                            <div>
                                <label for="" class="text-base font-medium text-gray-900">Email</label>
                                <div class="mt-2.5 relative">
                                    <input type="email" name="email" id="" class="block w-full px-4 py-4 text-black placeholder-gray-500 transition-all duration-200 bg-white border border-gray-200 rounded-md focus:outline-none focus:border-blue-600 caret-blue-600" value="{{ Auth::user()->email }}" readonly />
                                </div>
                            </div>

                            <div>
                                <label for="" class="text-base font-medium text-gray-900">Nomor telepon</label>
                                <div class="mt-2.5 relative">
                                    <input type="tel" id="" name="no_tlp" class="block w-full px-4 py-4 text-black placeholder-gray-500 transition-all duration-200 bg-white border border-gray-200 rounded-md focus:outline-none focus:border-blue-600 caret-blue-600" />
                                </div>
                            </div>

                            <div>
                                <label for="" class="text-base font-medium text-gray-900">Progam studi</label>
                                <div class="mt-2.5 relative">
                                    <input type="text" id="" name="prodi" class="block w-full px-4 py-4 text-black placeholder-gray-500 transition-all duration-200 bg-white border border-gray-200 rounded-md focus:outline-none focus:border-blue-600 caret-blue-600" />
                                </div>
                            </div>

                            <div class="sm:col-span-2">
                                <label for="" class="text-base font-medium text-gray-900">Pesan</label>
                                <div class="mt-2.5 relative">
                                    <textarea  id="" name="pesan" class="block w-full px-4 py-4 text-black placeholder-gray-500 transition-all duration-200 bg-white border border-gray-200 rounded-md resize-y focus:outline-none focus:border-blue-600 caret-blue-600" rows="4"></textarea>
                                </div>
                            </div>

                            <div class="sm:col-span-2">
                                <button type="submit" class="inline-flex items-center justify-center w-full px-4 py-4 mt-2 text-base font-semibold text-white transition-all duration-200 bg-blue-600 border border-transparent rounded-md focus:outline-none hover:bg-blue-700 focus:bg-blue-700">
                                    Send
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- contact akhir -->


<!-- footer awal -->
<section class="py-10 bg-gray-50 sm:pt-16 lg:pt-24">
    <div class="px-4 mx-auto sm:px-6 lg:px-8 max-w-7xl">
        <div class="grid grid-cols-2 md:col-span-3 lg:grid-cols-6 gap-y-16 gap-x-12">
            <div class="col-span-2 md:col-span-3 lg:col-span-2 lg:pr-8">
                <img class="w-auto h-9" src="images/logo.png" alt="" />
                <p class="text-2xl leading-relaxed text-gray-600 mt-5">Universitas PGRI Madiun</p>
                <p class="text-base leading-relaxed text-gray-600 mt-2">Jl. Setia Budi No.85, Kanigoro, Kec. Kartoharjo, Kota Madiun, Jawa Timur</p>
                  
                <ul class="flex items-center space-x-3 mt-9">
                    <li>
                        <a href="https://www.youtube.com/@unipma/" title="" class="flex items-center justify-center text-white transition-all duration-200 bg-gray-800 rounded-full w-7 h-7 hover:bg-blue-600 focus:bg-blue-600">
                            <svg class="w-4 h-4" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor">
                                <path fill-rule="evenodd" d="M21.7 8.037a4.26 4.26 0 0 0-.789-1.964 2.84 2.84 0 0 0-1.984-.839c-2.767-.2-6.926-.2-6.926-.2s-4.157 0-6.928.2a2.836 2.836 0 0 0-1.983.839 4.225 4.225 0 0 0-.79 1.965 30.146 30.146 0 0 0-.2 3.206v1.5a30.12 30.12 0 0 0 .2 3.206c.094.712.364 1.39.784 1.972.604.536 1.38.837 2.187.848 1.583.151 6.731.2 6.731.2s4.161 0 6.928-.2a2.844 2.844 0 0 0 1.985-.84 4.27 4.27 0 0 0 .787-1.965 30.12 30.12 0 0 0 .2-3.206v-1.516a30.672 30.672 0 0 0-.202-3.206Zm-11.692 6.554v-5.62l5.4 2.819-5.4 2.801Z" clip-rule="evenodd"/>
                            </svg>
                            
                        </a>
                    </li>

                    <li>
                        <a href="https://www.facebook.com/unipma" title="" class="flex items-center justify-center text-white transition-all duration-200 bg-gray-800 rounded-full w-7 h-7 hover:bg-blue-600 focus:bg-blue-600">
                            <svg class="w-4 h-4" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor">
                                <path d="M13.397 20.997v-8.196h2.765l.411-3.209h-3.176V7.548c0-.926.258-1.56 1.587-1.56h1.684V3.127A22.336 22.336 0 0 0 14.201 3c-2.444 0-4.122 1.492-4.122 4.231v2.355H7.332v3.209h2.753v8.202h3.312z"></path>
                            </svg>
                        </a>
                    </li>

                    <li>
                        <a href="https://www.instagram.com/official_unipma" title="" class="flex items-center justify-center text-white transition-all duration-200 bg-gray-800 rounded-full w-7 h-7 hover:bg-blue-600 focus:bg-blue-600">
                            <svg class="w-4 h-4" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor">
                                <path d="M11.999 7.377a4.623 4.623 0 1 0 0 9.248 4.623 4.623 0 0 0 0-9.248zm0 7.627a3.004 3.004 0 1 1 0-6.008 3.004 3.004 0 0 1 0 6.008z"></path>
                                <circle cx="16.806" cy="7.207" r="1.078"></circle>
                                <path d="M20.533 6.111A4.605 4.605 0 0 0 17.9 3.479a6.606 6.606 0 0 0-2.186-.42c-.963-.042-1.268-.054-3.71-.054s-2.755 0-3.71.054a6.554 6.554 0 0 0-2.184.42 4.6 4.6 0 0 0-2.633 2.632 6.585 6.585 0 0 0-.419 2.186c-.043.962-.056 1.267-.056 3.71 0 2.442 0 2.753.056 3.71.015.748.156 1.486.419 2.187a4.61 4.61 0 0 0 2.634 2.632 6.584 6.584 0 0 0 2.185.45c.963.042 1.268.055 3.71.055s2.755 0 3.71-.055a6.615 6.615 0 0 0 2.186-.419 4.613 4.613 0 0 0 2.633-2.633c.263-.7.404-1.438.419-2.186.043-.962.056-1.267.056-3.71s0-2.753-.056-3.71a6.581 6.581 0 0 0-.421-2.217zm-1.218 9.532a5.043 5.043 0 0 1-.311 1.688 2.987 2.987 0 0 1-1.712 1.711 4.985 4.985 0 0 1-1.67.311c-.95.044-1.218.055-3.654.055-2.438 0-2.687 0-3.655-.055a4.96 4.96 0 0 1-1.669-.311 2.985 2.985 0 0 1-1.719-1.711 5.08 5.08 0 0 1-.311-1.669c-.043-.95-.053-1.218-.053-3.654 0-2.437 0-2.686.053-3.655a5.038 5.038 0 0 1 .311-1.687c.305-.789.93-1.41 1.719-1.712a5.01 5.01 0 0 1 1.669-.311c.951-.043 1.218-.055 3.655-.055s2.687 0 3.654.055a4.96 4.96 0 0 1 1.67.311 2.991 2.991 0 0 1 1.712 1.712 5.08 5.08 0 0 1 .311 1.669c.043.951.054 1.218.054 3.655 0 2.436 0 2.698-.043 3.654h-.011z"></path>
                            </svg>
                        </a>
                    </li>
                </ul>
            </div>

            <div>
                <p class="text-sm font-semibold tracking-widest text-gray-400 uppercase">Company</p>

                <ul class="mt-6 space-y-4">
                    <li>
                        <a href="#home" title="" class="flex text-base text-black transition-all duration-200 hover:text-blue-600 focus:text-blue-600"> Home </a>
                    </li>

                    <li>
                        <a href="#Pendataan" title="" class="flex text-base text-black transition-all duration-200 hover:text-blue-600 focus:text-blue-600"> Pendataan </a>
                    </li>

                    <li>
                        <a href="#faq" title="" class="flex text-base text-black transition-all duration-200 hover:text-blue-600 focus:text-blue-600"> FAq </a>
                    </li>

                    <li>
                        <a href="#contact" title="" class="flex text-base text-black transition-all duration-200 hover:text-blue-600 focus:text-blue-600"> Contact </a>
                    </li>
                </ul>
            </div>

            <div>
                <p class="text-sm font-semibold tracking-widest text-gray-400 uppercase">Help</p>

                <ul class="mt-6 space-y-4">
                    <li>
                        <a href="#" title="" class="flex text-base text-black transition-all duration-200 hover:text-blue-600 focus:text-blue-600"> Customer Services </a>
                    </li>
                </ul>
            </div>

            {{-- <div class="col-span-2 md:col-span-1 lg:col-span-2 lg:pl-8">
                <p class="text-sm font-semibold tracking-widest text-gray-400 uppercase">Subscribe to universitaspgrimadiun</p>

                <form action="#" method="POST" class="mt-6">
                    <div>
                        <label for="email" class="sr-only">Email</label>
                        <input type="email" name="email" id="email" placeholder="Enter your email" class="block w-full p-4 text-black placeholder-gray-500 transition-all duration-200 bg-white border border-gray-200 rounded-md focus:outline-none focus:border-blue-600 caret-blue-600" />
                    </div>

                    <button type="submit" class="inline-flex items-center justify-center px-6 py-4 mt-3 font-semibold text-white transition-all duration-200 bg-blue-600 rounded-md hover:bg-blue-700 focus:bg-blue-700">Subscribe</button>
                </form>
            </div> --}}
        </div>

        <hr class="mt-16 mb-10 border-gray-200" />

        <p class="text-sm text-center text-gray-600">© Copyright 2024, All Rights Reserved by TimITRPL</p>
    </div>
</section>

<!-- Modal HTML -->
<div id="successModal" class="fixed inset-0 z-50 flex items-center justify-center bg-gray-800 bg-opacity-50 hidden">
    <div class="bg-white rounded-lg shadow-lg w-1/3 p-6">
        <div class="flex justify-between items-center border-b pb-3">
            <h3 class="text-lg font-semibold text-gray-900">Berhasil</h3>
            <button type="button" class="text-gray-500 hover:text-gray-700" onclick="closeModal()">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
        <div class="mt-4">
            <!-- Pesan sukses -->
            <p class="text-gray-700">{{ session('success') }}</p>
        </div>
        <div class="flex justify-end mt-6">
            <button type="button" class="px-4 py-2 bg-blue-500 text-white rounded hover:bg-blue-600" onclick="closeModal()">Close</button>
        </div>
    </div>
</div>


<script>
    document.addEventListener("DOMContentLoaded", function() {
        @if(session('success'))
            console.log("Session success ada"); // Debugging log
            document.getElementById("successModal").classList.remove("hidden");
        @else
            console.log("Session success tidak ada"); // Debugging log
        @endif
    });

    function closeModal() {
        document.getElementById("successModal").classList.add("hidden");
    }
</script>



 <!-- footer akhir -->
  <script src="https://cdn.jsdelivr.net/npm/flowbite@2.5.2/dist/flowbite.min.js"></script>
  <script src="https://unpkg.com/aos@next/dist/aos.js"></script>
  <script>
    AOS.init();
  </script>
</body>
</html>
