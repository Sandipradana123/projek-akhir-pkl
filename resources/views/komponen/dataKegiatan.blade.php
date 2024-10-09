<div id="dataKegiatan" class="hidden">
    <div class="bg-blue-400 text-white p-4 flex items-center justify-center relative">
        <h1 class="text-xl font-bold text-center">Sistem Pendataan Penggunaan Laboratorium UNIPMA</h1>
    </div>
    <div class="flex justify-end mb-4 mt-6">
        <!-- button tambah kegiatan -->
<button data-modal-target="authentication-modal" data-modal-toggle="authentication-modal"
    class="block text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800"
    type="button">
    Tambah Data
</button>

        <!-- akhir button tambah kegiatan -->

        <!-- modal saat button di klik -->
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
                                    placeholder="Masukkan Nama Kegiatan" required />
                            </div>
                            <div>
                                <label for="tanggalKegiatan"
                                    class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Tanggal Kegiatan </label>
                                <input id="tanggalKegiatan" type="text"
                                    class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white"
                                    placeholder="Masukkan Tanggal kegiatan" required />
                                <p class="italic text-gray-500 text-xs">*contoh : (23 sampai 26 september 2024)</p>
                            </div>

                            <div>
                                <label for="labDibutuhkan"
                                    class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Jumlah Lab : </label>
                                <input id="labDibutuhkan" type="text"
                                    class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white"
                                    placeholder="Masukkan Jumlah Lab Yang Dibutuhkan" required />
                            </div>
                            <div>
                                <label for="sesi"
                                    class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Jumlah Sesi : </label>
                                <input id="sesi" type="text"
                                    class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white"
                                    placeholder="Masukkan Jumlah Sesi" required />
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
        <!-- akhir modal -->

    </div>


    <div class="p-5 text-3xl font-semibold text-center text-gray-900 bg-white dark:text-white dark:bg-gray-800">
        Data Kegiatan
    </div>

    <!-- tabel kegiatan awal -->
    <div class="relative overflow-x-auto shadow-md sm:rounded-lg">
        <table class="w-full text-sm text-left rtl:text-right text-gray-500 dark:text-gray-400">
            <thead class="text-xs text-gray-700 uppercase bg-gray-50 dark:bg-gray-700 dark:text-gray-400">
                <tr>
                    <th scope="col" class="px-6 py-3">No.</th>
                    <th scope="col" class="px-6 py-3">Kegiatan</th>
                    <th scope="col" class="px-6 py-3">Tanggal</th>
                    <th scope="col" class="px-6 py-3">Lab</th>
                    <th scope="col" class="px-6 py-3">Sesi Kegiatan</th>
                    <th scope="col" class="px-6 py-3">Aksi</th>
                </tr>
            </thead>
            <tbody>
                <tr class="bg-white border-b dark:bg-gray-800 dark:border-gray-700">
                    <th scope="row"
                        class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white text-xl">
                        1
                    </th>
                    <td class="px-6 py-4 text-lg">IC3 Digital Literacy</td>
                    <td class="px-6 py-4 text-lg">24-28 oktober 2024</td>
                    <td class="px-6 py-4 text-lg">6</td>
                    <td class="px-6 py-4 text-lg">2 sesi</td>
                    <td class="px-6 py-4 flex space-x-2">



                       
                        <!-- Button Edit -->
                        <button data-modal-target="authentication-modal-kegiatan-edit"
                            data-modal-toggle="authentication-modal-kegiatan-edit"
                            class="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800"
                            type="button">
                            Edit
                        </button>

                         <!-- ================ modal edit ============== -->
                        <div id="authentication-modal-kegiatan-edit" tabindex="-1" aria-hidden="true"
                            class="hidden overflow-y-auto overflow-x-hidden fixed top-0 right-0 left-0 z-50 justify-center items-center w-full md:inset-0 h-[calc(100%-1rem)] max-h-full">
                            <div class="relative p-4 w-full max-w-md max-h-full">
                                <div class="relative bg-white rounded-lg shadow dark:bg-gray-700">
                                    <!-- Modal header -->
                                    <div
                                        class="flex items-center justify-between p-4 md:p-5 border-b rounded-t dark:border-gray-600">
                                        <h3
                                            class="text-xl font-semibold text-center w-full text-gray-900 dark:text-white">
                                            Edit Kegiatan
                                        </h3>
                                        <button type="button"
                                            class="absolute top-2 right-2 text-gray-400 bg-transparent hover:bg-gray-200 hover:text-gray-900 rounded-lg text-sm w-8 h-8 inline-flex justify-center items-center dark:hover:bg-gray-600 dark:hover:text-white"
                                            data-modal-hide="authentication-modal-kegiatan-edit">
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
                                                <label for="noKegiatan"
                                                    class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">No : </label>
                                                <input id="noKegiatan" type="text"
                                                    class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white"
                                                    placeholder="No" required />
                                            </div>
                                            <div>
                                                <label for="namaKegiatan"
                                                    class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Nama : </label>
                                                <input id="namaKegiatan" type="text"
                                                    class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white"
                                                    placeholder="Nama kegiatan" required />
                                            </div>
                                            <div>
                                                <label for="tanggaleditKegiatan"
                                                    class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Tanggal Kegiatan : </label>
                                                <input id="tanggaleditKegiatan" type="text"
                                                    class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white"
                                                    placeholder="tanggal" required />
                                            </div>
                                            <div>
                                                <label for="labEditKegiatan"
                                                    class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Lab Yang dibutuhkan : </label>
                                                <input id="labEditKegiatan" type="text"
                                                    class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white"
                                                    placeholder="lab" required />
                                            </div>
                                            <div>
                                                <label for="sesieditKegiatan"
                                                    class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Sesi Yang Dibutuhkan : </label>
                                                <input id="sesieditKegiatan" type="text"
                                                    class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white"
                                                    placeholder="sesi" required />
                                            </div>
                                            <button type="submit"
                                                class="w-full text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">Edit</button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Button Hapus -->
                        <button data-modal-target="popup-modal" data-modal-toggle="popup-modal"
                            class="text-white bg-red-600 hover:bg-red-800 focus:ring-4 focus:outline-none focus:ring-red-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-red-600 dark:hover:bg-red-700 dark:focus:ring-red-800"
                            type="button">
                            Hapus
                        </button>
                        <div id="popup-modal" tabindex="-1"
                            class="hidden overflow-y-auto overflow-x-hidden fixed top-0 right-0 left-0 z-50 justify-center items-center w-full md:inset-0 h-[calc(100%-1rem)] max-h-full">
                            <div class="relative p-4 w-full max-w-md max-h-full">
                                <div class="relative bg-white rounded-lg shadow dark:bg-gray-700">
                                    <button type="button"
                                        class="absolute top-3 end-2.5 text-gray-400 bg-transparent hover:bg-gray-200 hover:text-gray-900 rounded-lg text-sm w-8 h-8 ms-auto inline-flex justify-center items-center dark:hover:bg-gray-600 dark:hover:text-white"
                                        data-modal-hide="popup-modal">
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
                                            Apakah kamu yakin untuk menghapus kegiatan</h3>
                                        <button data-modal-hide="popup-modal" type="button"
                                            class="text-white bg-red-600 hover:bg-red-800 focus:ring-4 focus:outline-none focus:ring-red-300 dark:focus:ring-red-800 font-medium rounded-lg text-sm inline-flex items-center px-5 py-2.5 text-center">
                                            Yakin
                                        </button>
                                        <button data-modal-hide="popup-modal" type="button"
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

    <!-- akhir tabel -->

    <!-- Modal Edit -->


</div>