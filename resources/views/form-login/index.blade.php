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
</head>
<body>
    <nav class="bg-white  fixed w-full z-20 top-0 start-0 border-b border-gray-200 ">
        <div class="max-w-screen-xl flex flex-wrap items-center justify-between mx-auto p-4">
            <a class="flex items-center space-x-3 rtl:space-x-reverse">
                <img src="{{ asset('img/ukkUnipma.png') }}" class="h-16" alt="unipma Logo">
                <span class="self-center text-2xl font-semibold whitespace-nowrap text-black">Universitas PGRI Madiun</span>
            </a>
        </div>
    </nav>   

    <section class="relative py-10 mt-16 bg-gray-50 sm:py-16 lg:py-24">
        <div class="absolute inset-0 bg-gray-900/20"></div>
    
        <div class="relative max-w-7xl px-4 mx-auto sm:px-0">
            <!-- Grid container untuk dua card -->
            <div class="grid grid-cols-1 gap-8 sm:grid-cols-2">
                <!-- Card 1 (Dengan form) -->
                <div class="overflow-hidden bg-white rounded-md shadow-md">
                    <div class="px-4 py-6 sm:px-8 sm:py-7">
                        <div class="text-center">
                            <h2 class="text-3xl font-bold text-gray-900">Selamat Datang</h2>
                            <p class="mt-2 text-base text-gray-600">Diwebsite Laboratium Universitas PGRI Madiun</p>
                        </div>
    
                        <form action="{{ route('login') }}" method="POST" class="mt-8">
                            @csrf
                            <div class="space-y-5">
                                <div>
                                    <label for="" class="text-base font-medium text-gray-900"> Email address </label>
                                    <div class="mt-2.5">
                                        <input type="email" name="email" id="" autocomplete="off" placeholder="Masukkan Email Anda" class="block w-full p-4 text-black placeholder-gray-500 transition-all duration-200 bg-white border border-gray-200 rounded-md focus:outline-none focus:border-blue-600 caret-blue-600 @error('email') border-red-500 @enderror" value="{{ old('email') }}"/>
                                    @error('email')
                                        <p class="text-red-500 mt-2 text-sm">{{ $message }}</p>
                                    @enderror
                                    </div>
                                </div>
    
                                <div>
                                    <div class="flex items-center justify-between">
                                        <label for="" class="text-base font-medium text-gray-900"> Password </label>
    
                                        <a href="https://wa.me/+6281331389761
" title="" class="text-sm font-medium transition-all duration-200 text-rose-500 hover:text-rose-600 focus:text-rose-600 hover:underline"> Forgot password? </a>
                                    </div>
                                    <div class="mt-2.5">
                                        <input type="password" name="password" id="" autocomplete="off" placeholder="Masukkan Password Anda" class="block w-full p-4 text-black placeholder-gray-500 transition-all duration-200 bg-white border border-gray-200 rounded-md focus:outline-none focus:border-blue-600 caret-blue-600 @error('password') border-red-500 @enderror" />
                                    @error('password')
                                        <p class="text-red-500 mt-2 text-sm">{{ $message }}</p>
                                    @enderror
                                    </div>
                                </div>
    
                                <div>
                                    <button type="submit" class="inline-flex items-center justify-center w-full px-4 py-4 text-base font-semibold text-white transition-all duration-200 bg-blue-600 border border-transparent rounded-md focus:outline-none hover:bg-blue-700 focus:bg-blue-700">Log in</button>
                                </div>
    
                            </div>
                        </form>
                    </div>
                </div>
    
                <!-- Card 2 (Hanya gambar dengan pembatas tinggi) -->
                <div class="overflow-hidden bg-white rounded-md shadow-md">
                    <div class="relative w-full h-[350px]">
                        <!-- Pembatas tinggi untuk gambar -->
                        <div class="text-center">
                            <h2 class="text-3xl font-semibold mt-2 text-gray-900">Tutorial Penggunaan</h2>
                            <p class="text-sm sm:text-base mt-2">Klik foto di bawah ini untuk melihat tutorial.</p>
                        </div>
                        <img src="{{ asset('img/panduan.png') }}" alt="Gambar 2" class="w-full h-full object-cover cursor-pointer mt-5" onclick="openModal()">
                    </div>
                </div>
            </div>
        </div>
    
        <!-- Modal untuk memperbesar gambar -->
        <div id="imageModal" class="fixed inset-0 z-50 hidden bg-black bg-opacity-75 flex justify-center items-center">
            <div class="relative max-w-full max-h-full overflow-auto p-4">
                <!-- Tombol close (X) -->
                <button onclick="closeModal()" class="absolute top-4 right-4 text-white text-2xl font-bold bg-gray-800 p-2 rounded-full hover:bg-gray-700 focus:outline-none">
                    ×
                </button>
                <!-- Gambar dengan ukuran responsif -->
                <img id="modalImage" src="{{ asset('img/panduan.png') }}" alt="Popup Image" class="max-w-full max-h-[90vh] object-contain">
            </div>
        </div>
    </section>

      <!-- JavaScript untuk menangani modal -->
      <script>
        function openModal() {
            // Menampilkan modal dan gambar
            const modal = document.getElementById('imageModal');
            modal.classList.remove('hidden');
        }
    
        function closeModal() {
            // Menyembunyikan modal
            const modal = document.getElementById('imageModal');
            modal.classList.add('hidden');
        }
    </script>
   
    



<footer class="bg-white rounded-lg shadow ">
    <div class="w-full max-w-screen-xl mx-auto p-4 md:py-8">
        <div class="sm:flex sm:items-center sm:justify-between">
            <a href="https://flowbite.com/" class="flex items-center mb-4 sm:mb-0 space-x-3 rtl:space-x-reverse">
                <img src="{{ asset('img/ukkUnipma.png') }}" class="h-8" alt="unipma logo" />
                <span class="self-center text-2xl font-semibold whitespace-nowrap text-black">Universitas Pgri Madiun</span>
            </a>
            <ul class="flex flex-wrap items-center mb-6 text-sm font-medium text-gray-500 sm:mb-0">
                <li>
                    <a href="https://www.youtube.com/@unipma" class="hover:underline me-4 md:me-6">Youtube</a>
                </li>
                <li>
                    <a href="https://www.instagram.com/official_unipma" class="hover:underline me-4 md:me-6">Instagram</a>
                </li>
                <li>
                    <a href="https://web.facebook.com/unipma?_rdc=1&_rdr" class="hover:underline me-4 md:me-6">Facebook</a>
                </li>
                <li>
                    <a href="https://unipma.ac.id/" class="hover:underline">Wesbite</a>
                </li>
            </ul>
        </div>
        <hr class="my-6 border-gray-200 sm:mx-auto dark:border-gray-700 lg:my-8" />
        <span class="block text-sm text-gray-500 sm:text-center text-gray-400">© 2024 <a href="https://flowbite.com/" class="hover:underline">timITUnipma</a>. All Rights Reserved.</span>
    </div>
</footer>

<!-- modal setelah login berhasil -->
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
                <svg class="mx-auto mb-4 text-gray-400 w-12 h-12 dark:text-gray-200" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 20 20">
                    <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M10 11V6m0 8h.01M19 10a9 9 0 1 1-18 0 9 9 0 0 1 18 0Z"/>
                </svg>
                <h3 class="mb-5 text-lg font-normal text-gray-500 dark:text-gray-400">Are you sure you want to delete this product?</h3>
                <button data-modal-hide="popup-modal" type="button" class="text-white bg-red-600 hover:bg-red-800 focus:ring-4 focus:outline-none focus:ring-red-300 dark:focus:ring-red-800 font-medium rounded-lg text-sm inline-flex items-center px-5 py-2.5 text-center">
                    Yes, I'm sure
                </button>
                <button data-modal-hide="popup-modal" type="button" class="py-2.5 px-5 ms-3 text-sm font-medium text-gray-900 focus:outline-none bg-white rounded-lg border border-gray-200 hover:bg-gray-100 hover:text-blue-700 focus:z-10 focus:ring-4 focus:ring-gray-100 dark:focus:ring-gray-700 dark:bg-gray-800 dark:text-gray-400 dark:border-gray-600 dark:hover:text-white dark:hover:bg-gray-700">No, cancel</button>
            </div>
        </div>
    </div>
</div>

</body>
</html>
