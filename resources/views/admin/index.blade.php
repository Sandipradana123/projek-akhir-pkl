<!doctype html>
<html lang="id">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://cdn.jsdelivr.net/npm/flowbite@2.5.2/dist/flowbite.min.css" rel="stylesheet" />
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
                        onclick="showContent('logout')">
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

    <!-- Konten Area -->
    <div class="flex-grow p-4 sm:ml-64">
        <!-- App Bar -->
        <div class="bg-blue-400 text-white p-4 flex items-center justify-center relative">
            <h1 class="text-xl font-bold text-center">Sistem Pendataan Penggunaan Laboratorium UNIPMA</h1>
        </div>

        <div id="dashboard" class="content active">
            <div class="py-8 px-4 mx-auto max-w-screen-xl text-center lg:py-16">
                <img src="images/logo.png" alt="Logo UNIPMA" class="w-96 h-96 mx-auto mb-4" />
                <h1
                    class="mb-4 text-4xl font-extrabold tracking-tight leading-none text-gray-900 md:text-5xl lg:text-6xl dark:text-white">
                    Selamat Datang Admin </h1>
                <p class="mb-8 text-lg font-normal text-gray-500 lg:text-xl sm:px-16 lg:px-48 dark:text-gray-400">Sistem
                    pendataan penggunaan lab ini dirancang untuk mempermudah pengelolaan dan pemantauan penggunaan
                    laboratorium.</p>
                <div class="flex flex-col space-y-4 sm:flex-row sm:justify-center sm:space-y-0">
                    <a href="#"
                        class="inline-flex justify-center items-center py-3 px-5 text-base font-medium text-center text-white rounded-lg bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:ring-blue-300 dark:focus:ring-blue-900">
                        Lihat penggunaan lab
                        <svg class="w-3.5 h-3.5 ms-2 rtl:rotate-180" aria-hidden="true"
                            xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 14 10">
                            <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                d="M1 5h12m0 0L9 1m4 4L9 9" />
                        </svg>
                    </a>
                    <a href="#"
                        class="py-3 px-5 sm:ms-4 text-sm font-medium text-gray-900 focus:outline-none bg-white rounded-lg border border-gray-200 hover:bg-gray-100 hover:text-blue-700 focus:z-10 focus:ring-4 focus:ring-gray-100 dark:focus:ring-gray-700 dark:bg-gray-800 dark:text-gray-400 dark:border-gray-600 dark:hover:text-white dark:hover:bg-gray-70">
                        Data Akun
                    </a>
                </div>
            </div>
        </div>

        <div id="dataKegiatan" class="content">
            <div class="flex justify-end mb-4 mt-6">


                <!-- Modal toggle -->
                <button data-modal-target="authentication-modal" data-modal-toggle="authentication-modal"
                    class="block text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800"
                    type="button">
                    Tambah Kegiatan
                </button>

                <!-- Main modal -->
                <div id="authentication-modal" tabindex="-1" aria-hidden="true"
                    class="hidden overflow-y-auto overflow-x-hidden fixed top-0 right-0 left-0 z-50 justify-center items-center w-full md:inset-0 h-[calc(100%-1rem)] max-h-full">
                    <div class="relative p-4 w-full max-w-md max-h-full">
                        <!-- Modal content -->
                        <div class="relative bg-white rounded-lg shadow dark:bg-gray-700">
                            <!-- Modal header -->
                            <div
                                class="flex items-center justify-between p-4 md:p-5 border-b rounded-t dark:border-gray-600">
                                <h3 class="text-xl font-semibold text-gray-900 dark:text-white">
                                    Tambah kegiatan
                                </h3>
                                <button type="button"
                                    class="end-2.5 text-gray-400 bg-transparent hover:bg-gray-200 hover:text-gray-900 rounded-lg text-sm w-8 h-8 ms-auto inline-flex justify-center items-center dark:hover:bg-gray-600 dark:hover:text-white"
                                    data-modal-hide="authentication-modal">
                                    <svg class="w-3 h-3" aria-hidden="true" xmlns="http://www.w3.org/2000/svg"
                                        fill="none" viewBox="0 0 14 14">
                                        <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"
                                            stroke-width="2" d="m1 1 6 6m0 0 6 6M7 7l6-6M7 7l-6 6" />
                                    </svg>
                                    <span class="sr-only">Close modal</span>
                                </button>
                            </div>
                            <!-- Modal body -->
                            <div class="p-4 md:p-5">
                                <form class="space-y-4" action="#">
                                    <div>
                                        <label for="namaKegiatan"
                                            class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Nama
                                            Kegiatan</label>
                                        <input id="namaKegiatan" type="text"
                                            class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white"
                                            placeholder="Kegiatan" required />
                                    </div>
                                    <div>
                                        <label for="tanggalKegiatan"
                                            class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Tanggal</label>
                                        <div class="relative max-w-sm">
                                            <div
                                                class="absolute inset-y-0 start-0 flex items-center ps-3.5 pointer-events-none">
                                                <svg class="w-4 h-4 text-gray-500 dark:text-gray-400" aria-hidden="true"
                                                    xmlns="http://www.w3.org/2000/svg" fill="currentColor"
                                                    viewBox="0 0 20 20">
                                                    <path
                                                        d="M20 4a2 2 0 0 0-2-2h-2V1a1 1 0 0 0-2 0v1h-3V1a1 1 0 0 0-2 0v1H6V1a1 1 0 0 0-2 0v1H2a2 2 0 0 0-2 2v2h20V4ZM0 18a2 2 0 0 0 2 2h16a2 2 0 0 0 2-2V8H0v10Zm5-8h10a1 1 0 0 1 0 2H5a1 1 0 0 1 0-2Z" />
                                                </svg>
                                            </div>
                                            <input id="tanggalKegiatan" datepicker type="text"
                                                class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full ps-10 p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                                                placeholder="Select date">
                                        </div>
                                    </div>

                                    <div class="grid grid-cols-1 mt-5 mx-7">
                                        <label
                                            class="uppercase md:text-sm text-xs text-gray-500 text-light font-semibold">Lokasi</label>
                                        <select
                                            class="py-2 px-3 rounded-lg border-2 border-purple-300 mt-1 focus:outline-none focus:ring-2 focus:ring-purple-600 focus:border-transparent">
                                            <option>Lab Upt 1</option>
                                            <option>Lab Upt 2</option>
                                            <option>Lab Matematika</option>
                                        </select>
                                    </div>


                                    <button type="submit"
                                        class="w-full text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">Tambahkan</button>
                                </form>

                                <script>
                                    // Menampilkan dan menyembunyikan dropdown
                                    document.getElementById('dropdownUserButton').addEventListener('click', function () {
                                        const dropdown = document.getElementById('dropdownUser');
                                        dropdown.classList.toggle('hidden');
                                    });

                                    // Menangani klik di luar dropdown untuk menutup dropdown
                                    window.addEventListener('click', function (event) {
                                        const dropdown = document.getElementById('dropdownUser');
                                        const button = document.getElementById('dropdownUserButton');

                                        if (!button.contains(event.target) && !dropdown.contains(event.target)) {
                                            dropdown.classList.add('hidden');
                                        }
                                    });

                                    // Menangani pemilihan lokasi
                                    const dropdownLokasii = document.querySelectorAll('.dropdown-lokasi');
                                    const selectedTextoo = document.getElementById('selectedText');

                                    dropdownLokasi.forEach(item => {
                                        item.addEventListener('click', function (event) {
                                            event.preventDefault();
                                            const selectedValue = this.getAttribute('data-lokasi');
                                            selectedText.textContent = selectedValue; // Tampilkan lokasi yang dipilih
                                            const dropdown = document.getElementById('dropdownUser');
                                            dropdown.classList.add('hidden'); // Sembunyikan dropdown setelah pemilihan
                                        });
                                    });
                                </script>
                            </div>

                        </div>
                    </div>
                </div>

            </div>
            <div class="p-5 text-3xl font-semibold text-center text-gray-900 bg-white dark:text-white dark:bg-gray-800">
                Data Kegiatan
            </div>
            <div class="relative overflow-x-auto shadow-md sm:rounded-lg">

                <table class="w-full text-sm text-left rtl:text-right text-gray-500 dark:text-gray-400">
                    <thead class="text-xs text-gray-700 uppercase bg-gray-50 dark:bg-gray-700 dark:text-gray-400">
                        <tr>
                            <th scope="col" class="px-6 py-3">Nama Kegiatan</th>
                            <th scope="col" class="px-6 py-3">Tanggal</th>
                            <th scope="col" class="px-6 py-3">Lokasi</th>
                            <th scope="col" class="px-6 py-3">Edit</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr class="bg-white border-b dark:bg-gray-800 dark:border-gray-700">
                            <th scope="row"
                                class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white">Kegiatan
                                Lab Fisika</th>
                            <td class="px-6 py-4">01 Oktober 2024</td>
                            <td class="px-6 py-4">Lab Fisika 101</td>

                            <td class="px-6 py-4"><a href="#"
                                    class="font-medium text-blue-600 dark:text-blue-500 hover:underline">Edit</a></td>
                        </tr>
                        <tr class="bg-white border-b dark:bg-gray-800 dark:border-gray-700">
                            <th scope="row"
                                class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white">Kegiatan
                                Lab Kimia</th>
                            <td class="px-6 py-4">02 Oktober 2024</td>
                            <td class="px-6 py-4">Lab Kimia 102</td>

                            <td class="px-6 py-4"><a href="#"
                                    class="font-medium text-blue-600 dark:text-blue-500 hover:underline">Edit</a></td>
                        </tr>
                        <tr class="bg-white dark:bg-gray-800">
                            <th scope="row"
                                class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white">Kegiatan
                                Lab Biologi</th>
                            <td class="px-6 py-4">03 Oktober 2024</td>
                            <td class="px-6 py-4">Lab Biologi 103</td>

                            <td class="px-6 py-4"><a href="#"
                                    class="font-medium text-blue-600 dark:text-blue-500 hover:underline">Edit</a></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>


        {{-- awal data admin --}}
        @include('komponen.dataAdmin')
        {{-- akhir data admin --}}


        {{-- awal data user --}}
        @include('komponen.dataUser')
        {{-- akhir data user --}}
        <div id="tabelJadwal" class="content">
            <h2 class="text-lg font-bold">Tabel Jadwal</h2>
            <p>Ini adalah konten untuk Tabel Jadwal.</p>
        </div>
        <div id="logout" class="content">
            <h2 class="text-lg font-bold">Logout</h2>
            <p>Ini adalah konten untuk Logout.</p>
        </div>
    </div>

    <script>
        function showContent(contentId) {
            // Menyembunyikan semua konten
            document.querySelectorAll('.content').forEach(content => {
                content.classList.remove('active');
            });
            // Menampilkan konten yang sesuai
            document.getElementById(contentId).classList.add('active');
        }
    </script>

    <!-- Flowbite -->
    <script src="https://cdn.jsdelivr.net/npm/flowbite@2.5.2/dist/flowbite.min.js"></script>
</body>

</html>