<!doctype html>
<html lang="id">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://cdn.jsdelivr.net/npm/flowbite@2.5.2/dist/flowbite.min.css" rel="stylesheet" />
    <title>Universitas Pgri Madiun</title>
    <link rel="icon" href="images/logo.png">
    <style>
        .content {
            display: none;
        }

        .content.active {
            display: block;
        }
    </style>
</head>

<body class="flex flex-col sm:flex-row">


    @if (session('sesiHabis'))
    <div id="alert-popup" 
         class="fixed inset-0 flex items-center justify-center bg-gray-800 bg-opacity-50 z-50">
        <div class="bg-white rounded-lg shadow-lg p-6 max-w-sm w-full">
            <h3 class="text-lg font-medium text-gray-900">Sesi Habis</h3>
            <p class="text-sm text-gray-600">{{ session('sesiHabis') }}</p>
            <button onclick="closePopup()" 
                    class="bg-red-500 hover:bg-red-600 text-white font-medium px-4 py-2 rounded">
                OK
            </button>
        </div>
    </div>
@endif

<script>
    function closePopup() {
    const popup = document.getElementById('alert-popup');
    if (popup) {
        popup.style.display = 'none';
    }
}
</script>



    {{-- awal sidebar --}}
    @include('komponen.sidebar')
    {{-- akhir sidebar --}}

    {{-- dashboard --}}
    <!-- Konten Area -->
    @include('komponen.dashboard')
    {{-- akhir dashboard --}}

    {{-- daftar lab --}}
    @include('komponen.daftarLab')
    {{-- akhir daftar lab --}}

    {{-- daftar sesi --}}
    @include('komponen.dataSesi')
    {{-- akhir data sesi --}}

    {{-- data kegiatan --}}
    @include('komponen.dataKegiatan')
    {{-- akhir data kegiatan --}}

    {{-- data tanggal --}}
    @include('komponen.dataTanggal')
    {{-- akhir data tanggal --}}

    {{-- data kegiatan fic --}}
    @include('komponen.dataFixKegiatan')
    {{-- akhir data kegiatan fix --}}


    {{-- data user --}}
    @include('komponen.dataUser2')
    {{-- akhir data user --}}

    {{-- data admin --}}
    @include('komponen.dataAdmin2')
    {{-- akhir data admin --}}


    {{-- tabel tanggak --}}
    @include('komponen.dataTanggal')
    {{-- akhir tabel tanggak --}}

    {{-- tabel jadwal --}}
    @include('komponen.tabelJadwal')
    {{-- akhir jadwal --}}

    {{-- tabel masukkan peserta --}}
    @include('komponen.masukkan-peserta')
    {{-- akhir masukkan peserta --}}

    {{-- logout --}}
    <div id="logout" class="content">

        <div id="logout" tabindex="-1"
            class="hidden overflow-y-auto overflow-x-hidden fixed top-0 right-0 left-0 z-50 justify-center items-center w-full md:inset-0 h-[calc(100%-1rem)] max-h-full">
            <div class="relative p-4 w-full max-w-md max-h-full">
                <div class="relative bg-white rounded-lg shadow dark:bg-gray-700">
                    <button type="button"
                        class="absolute top-3 end-2.5 text-gray-400 bg-transparent hover:bg-gray-200 hover:text-gray-900 rounded-lg text-sm w-8 h-8 ms-auto inline-flex justify-center items-center dark:hover:bg-gray-600 dark:hover:text-white"
                        data-modal-hide="popup-modal-logout">
                        <svg class="w-3 h-3" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none"
                            viewBox="0 0 14 14">
                            <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                d="m1 1 6 6m0 0 6 6M7 7l6-6M7 7l-6 6" />
                        </svg>
                        <span class="sr-only">Close modal</span>
                    </button>
                    <div class="p-4 md:p-5 text-center">
                        <svg class="mx-auto mb-4 text-gray-400 w-12 h-12 dark:text-gray-200" aria-hidden="true"
                            xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 20 20">
                            <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                d="M10 11V6m0 8h.01M19 10a9 9 0 1 1-18 0 9 9 0 0 1 18 0Z" />
                        </svg>
                        <h3 class="mb-5 text-lg font-normal text-gray-500 dark:text-gray-400">
                            Apakah kamu yakin untuk menghapus Akun ini</h3>
                        <button data-modal-hide="popup-modal-user1" type="button"
                            class="text-white bg-red-600 hover:bg-red-800 focus:ring-4 focus:outline-none focus:ring-red-300 dark:focus:ring-red-800 font-medium rounded-lg text-sm inline-flex items-center px-5 py-2.5 text-center">
                            Yakin
                        </button>
                        <button data-modal-hide="popup-modal-logout" type="button"
                            class="py-2.5 px-5 ms-3 text-sm font-medium text-gray-900 focus:outline-none bg-white rounded-lg border border-gray-200 hover:bg-gray-100 hover:text-blue-700 focus:z-10 focus:ring-4 focus:ring-gray-100 dark:focus:ring-gray-700 dark:bg-gray-800 dark:text-gray-400 dark:border-gray-600 dark:hover:text-white dark:hover:bg-gray-700">Tidak</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    {{-- akhir logout --}}
    </div>




    <!-- Flowbite -->
    <script src="https://cdn.jsdelivr.net/npm/flowbite@2.5.2/dist/flowbite.min.js"></script>
</body>

</html>
