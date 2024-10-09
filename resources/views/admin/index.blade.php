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

    <!-- =========================== sidebar ======================= -->

    <!-- Sidebar -->
    <button data-drawer-target="default-sidebar" data-drawer-toggle="default-sidebar" aria-controls="default-sidebar"
        type="button"
        class="inline-flex items-center p-2 mt-2 ms-3 text-sm text-gray-500 rounded-lg sm:hidden hover:bg-gray-100 focus:outline-none focus:ring-2 focus:ring-gray-200 dark:text-gray-400 dark:hover:bg-gray-700 dark:focus:ring-gray-600">
        <span class="sr-only">Open sidebar</span>
        <svg class="w-6 h-6" aria-hidden="true" fill="currentColor" viewBox="0 0 20 20"
            xmlns="http://www.w3.org/2000/svg">
            <path clip-rule="evenodd" fill-rule="evenodd"
                d="M2 4.75A.75.75 0 012.75 4h14.5a.75.75 0 010 1.5H2.75A.75.75 0 012 4.75zm0 10.5a.75.75 0 01.75-.75h7.5a.75.75 0 010 1.5h-7.5a.75.75 0 01-.75-.75zM2 10a.75.75 0 01.75-.75h14.5a.75.75 0 010 1.5H2.75A.75.75 0 012 10z">
            </path>
        </svg>
    </button>


                <aside id="default-sidebar"
    class="fixed top-0 left-0 z-40 w-64 h-screen transition-transform -translate-x-full sm:translate-x-0"
    aria-label="Sidebar">
    <div class="h-full px-3 py-4 overflow-y-auto bg-gray-50 dark:bg-gray-800">
        <ul class="space-y-2 font-medium">
            <li>
                <a href="#dashboard"
                    class="flex items-center p-2 text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700 group"
                    onclick="showContent('dashboard')">
                    <svg class="w-6 h-6 text-gray-800 dark:text-white" aria-hidden="true"
                        xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor"
                        viewBox="0 0 24 24">
                        <path fill-rule="evenodd"
                            d="M11.293 3.293a1 1 0 0 1 1.414 0l6 6 2 2a1 1 0 0 1-1.414 1.414L19 12.414V19a2 2 0 0 1-2 2h-3a1 1 0 0 1-1-1v-3h-2v3a1 1 0 0 1-1 1H7a2 2 0 0 1-2-2v-6.586l-.293.293a1 1 0 0 1-1.414-1.414l2-2 6-6Z"
                            clip-rule="evenodd" />
                    </svg>
                    <span class="flex-1 ms-3 whitespace-nowrap">Dashboard</span>
                </a>
            </li>
                <li>
                    <a href="#dataKegiatan"
                        class="flex items-center p-2 text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700 group"
                        onclick="showContent('dataKegiatan')">
                        <svg class="w-6 h-6 text-gray-800 dark:text-white" aria-hidden="true"
                            xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                            <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                d="M4 10h16m-8-3V4M7 7V4m10 3V4M5 20h14a1 1 0 0 0 1-1V7a1 1 0 0 0-1-1H5a1 1 0 0 0-1 1v12a1 1 0 0 0 1 1Zm3-7h.01v.01H8V13Zm4 0h.01v.01H12V13Zm4 0h.01v.01H16V13Zm-8 4h.01v.01H8V17Zm4 0h.01v.01H12V17Zm4 0h.01v.01H16V17Z" />
                        </svg>
                        <span class="flex-1 ms-3 whitespace-nowrap">Data Kegiatan</span>
                    </a>
                </li>
                <li>
                    <a href="#dataUser"
                        class="flex items-center p-2 text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700 group"
                        onclick="showContent('dataUser')">
                        <svg class="flex-shrink-0 w-5 h-5 text-gray-500 transition duration-75 dark:text-gray-400 group-hover:text-gray-900 dark:group-hover:text-white"
                            aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor"
                            viewBox="0 0 20 18">
                            <path
                                d="M14 2a3.963 3.963 0 0 0-1.4.267 6.439 6.439 0 0 1-1.331 6.638A4 4 0 1 0 14 2Zm1 9h-1.264A6.957 6.957 0 0 1 15 15v2a2.97 2.97 0 0 1-.184 1H19a1 1 0 0 0 1-1v-1a5.006 5.006 0 0 0-5-5ZM6.5 9a4.5 4.5 0 1 0 0-9 4.5 4.5 0 0 0 0 9ZM8 10H5a5.006 5.006 0 0 0-5 5v2a1 1 0 0 0 1 1h11a1 1 0 0 0 1-1v-2a5.006 5.006 0 0 0-5-5Z" />
                        </svg>
                        <span class="flex-1 ms-3 whitespace-nowrap">Data User</span>
                    </a>
                </li>
                <li>
                    <a href="#dataAdmin"
                        class="flex items-center p-2 text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700 group"
                        onclick="showContent('dataAdmin')">
                        <svg class="flex-shrink-0 w-5 h-5 text-gray-500 transition duration-75 dark:text-gray-400 group-hover:text-gray-900 dark:group-hover:text-white"
                            aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor"
                            viewBox="0 0 20 18">
                            <path
                                d="M14 2a3.963 3.963 0 0 0-1.4.267 6.439 6.439 0 0 1-1.331 6.638A4 4 0 1 0 14 2Zm1 9h-1.264A6.957 6.957 0 0 1 15 15v2a2.97 2.97 0 0 1-.184 1H19a1 1 0 0 0 1-1v-1a5.006 5.006 0 0 0-5-5ZM6.5 9a4.5 4.5 0 1 0 0-9 4.5 4.5 0 0 0 0 9ZM8 10H5a5.006 5.006 0 0 0-5 5v2a1 1 0 0 0 1 1h11a1 1 0 0 0 1-1v-2a5.006 5.006 0 0 0-5-5Z" />
                        </svg>
                        <span class="flex-1 ms-3 whitespace-nowrap">Data Admin</span>
                    </a>
                </li>
                <li>
                    <a href="#tabelJadwal"
                        class="flex items-center p-2 text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700 group"
                        onclick="showContent('tabelJadwal')">
                        <svg class="w-6 h-6 text-gray-800 dark:text-white" aria-hidden="true"
                            xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor"
                            viewBox="0 0 24 24">
                            <path fill-rule="evenodd"
                                d="M2 6a2 2 0 0 1 2-2h16a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2V6Zm2 8v-2h7v2H4Zm0 2v2h7v-2H4Zm9 2h7v-2h-7v2Zm7-4v-2h-7v2h7Z"
                                clip-rule="evenodd" />
                        </svg>
                        <span class="flex-1 ms-3 whitespace-nowrap">Tabel Jadwal</span>
                    </a>
                </li>
                <li>
                    <a href="#logout"
                        class="flex items-center p-2 text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700 group"
                        onclick="showPopup()">
                        <svg class="w-6 h-6 text-gray-800 dark:text-white" aria-hidden="true"
                            xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor"
                            viewBox="0 0 24 24">
                            <path fill-rule="evenodd"
                                d="M10.5 3a.75.75 0 0 0 0 1.5h9.25a.75.75 0 0 1 .75.75v9.25a.75.75 0 0 0 1.5 0V5.25a2.25 2.25 0 0 0-2.25-2.25H10.5ZM12 13a.75.75 0 0 0 0 1.5h4.25l-2.475 2.475a.75.75 0 0 0 1.061 1.06l4.5-4.5a.75.75 0 0 0 0-1.061l-4.5-4.5a.75.75 0 1 0-1.061 1.061L16.75 11.5H12Z"
                                clip-rule="evenodd" />
                        </svg>
                        <span class="flex-1 ms-3 whitespace-nowrap">Logout</span>
                    </a>
                </li>
            </ul>
        </div>
    </aside>

    
    <script>
        document.addEventListener("DOMContentLoaded", function() {
            const activeMenu = localStorage.getItem('activeMenu');
            if (activeMenu) {
                showContent(activeMenu);
            }
        });
    
        function showContent(menuId) {
            // Simpan menu yang dipilih ke localStorage
            localStorage.setItem('activeMenu', menuId);
    
            // Sembunyikan semua konten
            document.querySelectorAll('#content > div').forEach(content => {
                content.classList.add('hidden');
            });
    
            // Tampilkan konten yang sesuai dengan menuId
            const selectedContent = document.getElementById(menuId);
            if (selectedContent) {
                selectedContent.classList.remove('hidden');
            }
    
            // Hapus kelas aktif dari semua menu
            document.querySelectorAll('.flex.items-center').forEach(link => {
                link.classList.remove('bg-gray-100', 'dark:bg-gray-700');
            });
    
            // Tambahkan kelas aktif pada menu yang dipilih
            const selectedLink = document.querySelector(`a[href="#${menuId}"]`);
            if (selectedLink) {
                selectedLink.classList.add('bg-gray-100', 'dark:bg-gray-700');
            }
        }
    
        function showPopup() {
            document.getElementById("popup").classList.remove("hidden");
        }
    
        function closePopup() {
            document.getElementById("popup").classList.add("hidden");
        }
    
        function confirmLogout() {
            localStorage.removeItem('activeMenu');
            document.getElementById("popup").classList.add("hidden");
        }
    </script>
    

               

 <!-- =========================== akhir sidebar ======================= -->

  <!-- =========================== dashboard ======================= -->
    <!-- Konten Area -->
    @include('komponen.dashboard')
 <!-- =========================== akhir dashboard ======================= -->

  <!-- =========================== awal data kegiatan ======================= -->
       @include('komponen.dataKegiatan')
 <!-- =========================== akhir data kegiatan ======================= -->


  <!-- =========================== awal data user ======================= -->
  
@include('komponen.dataUser2')
<!-- =========================== akhir data user ======================= -->

 <!-- =========================== awal data admin ======================= -->
        @include('komponen.dataAdmin2')
 <!-- =========================== akhir data admin ======================= -->


    <!-- =========================== awal tabel jadwal ======================= -->
        <div id="tabelJadwal" class="hidden">
            <div class="bg-blue-400 text-white p-4 flex items-center justify-center relative">
                <h1 class="text-xl font-bold text-center">Sistem Pendataan Penggunaan Laboratorium UNIPMA</h1>
            </div>
            <h2 class="text-lg font-bold">Tabel Jadwal</h2>
            <p>Ini adalah konten untuk Tabel Jadwal.</p>
        </div>
  <!-- =========================== akhir tabel jadwal ======================= -->

   <!-- =========================== logout ======================= -->
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
                                <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"
                                    stroke-width="2" d="m1 1 6 6m0 0 6 6M7 7l6-6M7 7l-6 6" />
                            </svg>
                            <span class="sr-only">Close modal</span>
                        </button>
                        <div class="p-4 md:p-5 text-center">
                            <svg class="mx-auto mb-4 text-gray-400 w-12 h-12 dark:text-gray-200" aria-hidden="true"
                                xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 20 20">
                                <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"
                                    stroke-width="2" d="M10 11V6m0 8h.01M19 10a9 9 0 1 1-18 0 9 9 0 0 1 18 0Z" />
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
   <!-- =========================== akhir logout ======================= -->
    </div>

    <!-- <script>
        function showContent(contentId) {
            // Menyembunyikan semua konten
            document.querySelectorAll('.content').forEach(content => {
                content.classList.remove('active');
            });
            // Menampilkan konten yang sesuai
            document.getElementById(contentId).classList.add('active');
        }
    </script> -->

    

    <!-- Flowbite -->
    <script src="https://cdn.jsdelivr.net/npm/flowbite@2.5.2/dist/flowbite.min.js"></script>
</body>

</html>