@include('komponen.style')
<div  id="dataKegiatanakhir" class="hidden">
    <div class="bg-blue-400 text-white p-4 flex items-center justify-center relative">
        <h1 class="text-xl font-bold text-center">Sistem Pendataan Penggunaan Laboratorium UNIPMA</h1>
    </div>
    <div class="flex justify-end mb-4 mt-6">

<!-- modal saat button tambah user di klik -->
        <!-- Modal toggle -->
        <button data-modal-target="authentication-modal-akhir-kegiatan" data-modal-toggle="authentication-modal-akhir-kegiatan"
            class="block text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800"
            type="button">
            <i class="fas fa-plus"></i> <!-- Ikon Font Awesome Plus -->
        </button>

        <!-- Main modal -->
        <div id="authentication-modal-akhir-kegiatan" tabindex="-1" aria-hidden="true"
            class="hidden overflow-y-auto overflow-x-hidden fixed top-0 right-0 left-0 z-50 justify-center items-center w-full md:inset-0 h-[calc(100%-1rem)] max-h-full">
            <div class="relative p-4 w-full max-w-md max-h-full">
                <!-- Modal content -->
                <div class="relative bg-white rounded-lg shadow dark:bg-gray-700">
                    <!-- Modal header -->
                    <div
                        class="flex items-center justify-between p-4 md:p-5 border-b rounded-t dark:border-gray-600">
                        <h3 class="text-xl font-semibold text-gray-900 dark:text-white">
                            Tambah Data
                        </h3>
                        <button type="button"
                            class="end-2.5 text-gray-400 bg-transparent hover:bg-gray-200 hover:text-gray-900 rounded-lg text-sm w-8 h-8 ms-auto inline-flex justify-center items-center dark:hover:bg-gray-600 dark:hover:text-white"
                            data-modal-hide="authentication-modal-akhir-kegiatan">
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
                                <label for="namaKegiatan2"
                                    class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Nama Kegiatan : </label>
                                    <select
                                    class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:text-white">
                                    <option>IC3 Digital Literacy</option>
                                    <option>Pendidikan Profesi Guru</option>
                                    <option>Toefl</option>
                                </select>
                            </div>
                            <div>
                                <label for="TanggalKegiatan2"
                                    class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Tanggal Kegiatan  : </label>
                                    <select
                                    class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:text-white">
                                    <option>23 desember 2024</option>
                                    <option>24 desember 2024</option>
                                    <option>25 desember 2024</option>
                                </select>
                            </div>
                            <div class="mt-5">
                                <label
                                    class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Sesi Kegiatan : </label>
                                <select
                                    class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:text-white">
                                    <option>Sesi 1 (09.00 - 11.00)</option>
                                    <option>Sesi 2 (12.30 - 14.30)</option>
                                </select>
                            </div>
                            <div>
                                <label for="Lab"
                                    class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Laboratorium : </label>
                                    <select
                                    class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:text-white">
                                    <option>Upt Komputer 1</option>
                                    <option>Upt Komputer 2</option>
                                    <option>Akuntansi</option>
                                </select>
                            </div>
                            <div>
                                <label for="jumlahkursi"
                                    class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Kursi Tersedia : </label>
                                <input id="waktuKegiatan" type="text"
                                    class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white"
                                    placeholder="halaman ini akan mengisis otomatis" />
                            </div>
                            <button type="submit"
                                class="w-full text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">Tambah Data</button>
                        </form>
                    </div>

                </div>
            </div>
        </div>

    </div>
    <div class="p-5 text-3xl font-semibold text-center text-gray-900 bg-white dark:text-white dark:bg-gray-800">
        Data akhir kegiatan
    </div>

    <div class="relative overflow-x-auto shadow-md sm:rounded-lg">
        <table class="w-full text-sm text-left rtl:text-right text-gray-500 dark:text-gray-400"  id="filter-table">
            <thead class="text-xs text-gray-700 uppercase bg-gray-50 dark:bg-gray-700 dark:text-gray-400">
                <tr>
                    <th scope="col" class="px-6 py-3 text-center">
                        No
                    </th>
                    <th scope="col" class="px-6 py-3">
                        Kegiatan 
                    </th>
                    <th scope="col" class="px-6 py-3 text-center">
                        Tanggal
                    </th>
                    <th scope="col" class="px-6 py-3 text-center">
                        Sesi
                    </th>
                    <th scope="col" class="px-6 py-3 text-center">
                        Lab
                    </th>
                    <th scope="col" class="px-6 py-3 text-center">
                        Jumlah Kursi
                    </th>
                    <th scope="col" class="px-6 py-3 text-center">
                        Action
                    </th>
                </tr>
            </thead>
            <tbody>
                <tr
                    class="odd:bg-white odd:dark:bg-gray-900 even:bg-gray-50 even:dark:bg-gray-800 border-b dark:border-gray-700">
                    <th class="px-6 py-4 text-center">
                        1
                    </th>
                    <th scope="row"
                        class="px-6 py-4 whitespace-nowrap dark:text-white">
                        IC3 DIgital Literacy
                    </th>
                    <td class="px-6 py-4 text-center">
                        22 Oktober 2024
                    </td>
                    <td class="px-6 py-4 text-center">
                        sesi 1 (09.00 - 11.00)
                    </td>
                    <td class="px-6 py-4 text-center">
                        Upt Komputer 1
                    </td>
                    <td class="px-6 py-4 text-center">
                        20
                    </td>
                    <td class="px-6 py-4 flex space-x-2 justify-center">
                        <div class="flex space-x-2">
                            <button data-modal-target="authentication-modal-user-edit-data-akhir"
                                data-modal-toggle="authentication-modal-user-edit-data-akhir"
                                type="button">
                                <i class="fas fa-edit"></i><!-- Font Awesome 6 -->
                            </button>
                    
                            <!-- Main modal -->
                            <div id="authentication-modal-user-edit-data-akhir" tabindex="-1" aria-hidden="true"
                                class="hidden overflow-y-auto overflow-x-hidden fixed top-0 right-0 left-0 z-50 justify-center items-center w-full md:inset-0 h-[calc(100%-1rem)] max-h-full">
                                <div class="relative p-4 w-full max-w-md max-h-full">
                                    <!-- Modal content -->
                                    <div class="relative bg-white rounded-lg shadow dark:bg-gray-700">
                                        <!-- Modal header -->
                                        <div
                                            class="flex items-center justify-between p-4 md:p-5 border-b rounded-t dark:border-gray-600">
                                            <h3 class="text-xl font-semibold text-gray-900 dark:text-white">
                                                Edit User
                                            </h3>
                                            <button type="button"
                                                class="end-2.5 text-gray-400 bg-transparent hover:bg-gray-200 hover:text-gray-900 rounded-lg text-sm w-8 h-8 ms-auto inline-flex justify-center items-center dark:hover:bg-gray-600 dark:hover:text-white"
                                                data-modal-hide="authentication-modal-user-edit-data-akhir">
                                                <svg class="w-3 h-3" aria-hidden="true"
                                                    xmlns="http://www.w3.org/2000/svg" fill="none"
                                                    viewBox="0 0 14 14">
                                                    <path stroke="currentColor" stroke-linecap="round"
                                                        stroke-linejoin="round" stroke-width="2"
                                                        d="m1 1 6 6m0 0 6 6M7 7l6-6M7 7l-6 6" />
                                                </svg>
                                                <span class="sr-only">Close modal</span>
                                            </button>
                                        </div>
                                        <!-- Modal body -->
                                        <div class="p-4 md:p-5">
                                            <form class="space-y-4" action="#">
                                                <div>
                                                    <label for="nomerUser"
                                                        class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">No : </label>
                                                    <input id="nomerUser" type="text"
                                                        class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white"required />
                                                </div>
                                                <div>
                                                    <label for="namaKegiatan2"
                                                        class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Nama Kegiatan : </label>
                                                        <select
                                                        class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:text-white">
                                                        <option>IC3 Digital Literacy</option>
                                                        <option>Pendidikan Profesi Guru</option>
                                                        <option>Toefl</option>
                                                    </select>
                                                </div>
                                                <div>
                                                    <label for="TanggalKegiatan2"
                                                        class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Tanggal Kegiatan  : </label>
                                                        <select
                                                        class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:text-white">
                                                        <option>23 desember 2024</option>
                                                        <option>24 desember 2024</option>
                                                        <option>25 desember 2024</option>
                                                    </select>
                                                </div>
                                                <div class="mt-5">
                                                    <label
                                                        class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Sesi Kegiatan : </label>
                                                    <select
                                                        class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:text-white">
                                                        <option>Sesi 1</option>
                                                        <option>Sesi 2</option>
                                                    </select>
                                                </div>
                                                <div>
                                                    <label for="waktuKegiatan"
                                                        class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Waktu : </label>
                                                    <input id="waktuKegiatan" type="text"
                                                        class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white"
                                                        placeholder="halaman ini akan mengisis otomatis" />
                                                </div>
                                                <button type="submit"
                                                    class="w-full text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">Edit</button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    
                        <button data-modal-target="popup-modal-hapus-data-akhir" data-modal-toggle="popup-modal-hapus-data-akhir"
                            type="button">
                            <i class="fas fa-trash-alt"></i> <!-- Font Awesome 5 -->
                        </button>
                        <div id="popup-modal-hapus-data-akhir" tabindex="-1"
                            class="hidden overflow-y-auto overflow-x-hidden fixed top-0 right-0 left-0 z-50 justify-center items-center w-full md:inset-0 h-[calc(100%-1rem)] max-h-full">
                            <div class="relative p-4 w-full max-w-md max-h-full">
                                <div class="relative bg-white rounded-lg shadow dark:bg-gray-700">
                                    <button type="button"
                                        class="absolute top-3 end-2.5 text-gray-400 bg-transparent hover:bg-gray-200 hover:text-gray-900 rounded-lg text-sm w-8 h-8 ms-auto inline-flex justify-center items-center dark:hover:bg-gray-600 dark:hover:text-white"
                                        data-modal-hide="popup-modal-hapus-data-akhir ">
                                        <svg class="w-3 h-3" aria-hidden="true"
                                            xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 14 14">
                                            <path stroke="currentColor" stroke-linecap="round"
                                                stroke-linejoin="round" stroke-width="2"
                                                d="m1 1 6 6m0 0 6 6M7 7l6-6M7 7l-6 6" />
                                        </svg>
                                        <span class="sr-only">Close modal</span>
                                    </button>
                                    <div class="p-4 md:p-5 text-center">
                                        <svg class="mx-auto mb-4 text-gray-400 w-12 h-12 dark:text-gray-200"
                                            aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none"
                                            viewBox="0 0 20 20">
                                            <path stroke="currentColor" stroke-linecap="round"
                                                stroke-linejoin="round" stroke-width="2"
                                                d="M10 11V6m0 8h.01M19 10a9 9 0 1 1-18 0 9 9 0 0 1 18 0Z" />
                                        </svg>
                                        <h3 class="mb-5 text-lg font-normal text-gray-500 dark:text-gray-400">
                                            Apakah kamu yakin untuk menghapus Akun ini</h3>
                                        <button data-modal-hide="popup-modal-hapus-user" type="button"
                                            class="text-white bg-red-600 hover:bg-red-800 focus:ring-4 focus:outline-none focus:ring-red-300 dark:focus:ring-red-800 font-medium rounded-lg text-sm inline-flex items-center px-5 py-2.5 text-center">
                                            Yakin
                                        </button>
                                        <button data-modal-hide="popup-modal-hapus-user" type="button"
                                            class="py-2.5 px-5 ms-3 text-sm font-medium text-gray-900 focus:outline-none bg-white rounded-lg border border-gray-200 hover:bg-gray-100 hover:text-blue-700 focus:z-10 focus:ring-4 focus:ring-gray-100 dark:focus:ring-gray-700 dark:bg-gray-800 dark:text-gray-400 dark:border-gray-600 dark:hover:text-white dark:hover:bg-gray-700">Tidak</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </td>
                    
                </tr>


            </tbody>
        </table>
    </div>

</div>