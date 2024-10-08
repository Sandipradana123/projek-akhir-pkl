<div id="dataUser" class="content">
    <div class="flex justify-end mb-4 mt-6">


        <!-- Modal toggle -->
        <button data-modal-target="authentication-modal-user" data-modal-toggle="authentication-modal-user"
            class="block text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800"
            type="button">
            Tambah User
        </button>

        <!-- Main modal -->
        <div id="authentication-modal-user" tabindex="-1" aria-hidden="true"
            class="hidden overflow-y-auto overflow-x-hidden fixed top-0 right-0 left-0 z-50 justify-center items-center w-full md:inset-0 h-[calc(100%-1rem)] max-h-full">
            <div class="relative p-4 w-full max-w-md max-h-full">
                <!-- Modal content -->
                <div class="relative bg-white rounded-lg shadow dark:bg-gray-700">
                    <!-- Modal header -->
                    <div
                        class="flex items-center justify-between p-4 md:p-5 border-b rounded-t dark:border-gray-600">
                        <h3 class="text-xl font-semibold text-gray-900 dark:text-white">
                            Tambah User
                        </h3>
                        <button type="button"
                            class="end-2.5 text-gray-400 bg-transparent hover:bg-gray-200 hover:text-gray-900 rounded-lg text-sm w-8 h-8 ms-auto inline-flex justify-center items-center dark:hover:bg-gray-600 dark:hover:text-white"
                            data-modal-hide="authentication-modal-user">
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
                                    Admin</label>
                                <input id="namaKegiatan" type="text"
                                    class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white"
                                    placeholder="Nama" required />
                            </div>
                            <div>
                                <label for="namaKegiatan"
                                    class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">NIM</label>
                                <input id="namaKegiatan" type="text"
                                    class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white"
                                    placeholder="Nim required" />
                            </div>
                            <div class="mt-5">
                                <label
                                    class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Prodi</label>
                                <select
                                    class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:text-white">
                                    <option>Matematika</option>
                                    <option>Matematika</option>
                                    <option>Sistem Informasi</option>
                                    <option>Informatika</option>
                                </select>
                            </div>
                            <div>
                                <label for="namaKegiatan"
                                    class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Email</label>
                                <input id="namaKegiatan" type="email"
                                    class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white"
                                    placeholder="Email" />
                            </div>
                            <div>
                                <label for="namaKegiatan"
                                    class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Password</label>
                                <input id="namaKegiatan" type="email"
                                    class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white"
                                    placeholder="Password" />
                            </div>
                            <div>
                                <label for="namaKegiatan"
                                    class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Confirm
                                    Password</label>
                                <input id="namaKegiatan" type="email"
                                    class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white"
                                    placeholder="Confirm Password" />
                            </div>
                            <!-- <div class="mt-5">
                                <label
                                    class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Status</label>
                                <select
                                    class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:text-white">
                                    <option>Admin</option>
                                    <option>User</option>
                                   
                                </select>
                            </div> -->
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
                            const dropdownLokasi = document.querySelectorAll('.dropdown-lokasi');
                            const selectedTexto = document.getElementById('selectedText');

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
        Data User
    </div>

<!-- 
    <script>
        // Mendapatkan elemen button dan teks yang akan berubah
        const dropdownItems = document.querySelectorAll('.dropdown-item');
        const selectedText = document.getElementById('selectedText');

        // Event Listener untuk setiap item di dropdown
        dropdownItems.forEach(item => {
            item.addEventListener('click', function (event) {
                event.preventDefault(); // Mencegah perilaku default anchor (<a>)
                const selectedValue = this.getAttribute('data-value'); // Mendapatkan nilai yang di klik
                selectedText.textContent = selectedValue; // Mengubah teks pada button
            });
        });
    </script> -->



    <div class="relative overflow-x-auto shadow-md sm:rounded-lg">
        <table class="w-full text-sm text-left rtl:text-right text-gray-500 dark:text-gray-400">
            <thead class="text-xs text-gray-700 uppercase bg-gray-50 dark:bg-gray-700 dark:text-gray-400">
                <tr>
                    <th scope="col" class="px-6 py-3">
                        No
                    </th>
                    <th scope="col" class="px-6 py-3">
                        Nama User
                    </th>
                    <th scope="col" class="px-6 py-3">
                        Nim
                    </th>
                    <th scope="col" class="px-6 py-3">
                        Prodi
                    </th>
                    <th scope="col" class="px-6 py-3">
                        Email
                    </th>
                    <th scope="col" class="px-6 py-3">
                        Password
                    </th>
                   
                    <th scope="col" class="px-6 py-3">
                        Action
                    </th>
                </tr>
            </thead>
            <tbody>
                <tr
                    class="odd:bg-white odd:dark:bg-gray-900 even:bg-gray-50 even:dark:bg-gray-800 border-b dark:border-gray-700">
                    <th class="px-6 py-4">
                        1
                    </th>
                    <th scope="row"
                        class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                        Ronaldo
                    </th>
                    <td class="px-6 py-4">
                        236478940238
                    </td>
                    <td class="px-6 py-4">
                        Teknik Informatika
                    </td>
                    <td class="px-6 py-4">
                        unipma@gmail.com
                    </td>
                    <td class="px-6 py-4">
                        password
                    </td>
                    
                    <td class="px-6 py-4">
                        <button data-modal-target="authentication-modal-user-edit2"
                            data-modal-toggle="authentication-modal-user-edit2"
                            class="block text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800"
                            type="button">
                            Edit
                        </button>

                        <!-- Main modal -->
                        <div id="authentication-modal-user-edit2" tabindex="-1" aria-hidden="true"
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
                                            data-modal-hide="authentication-modal-user-edit2">
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
                                                <label for="nama"
                                                    class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Nama
                                                    User</label>
                                                <input id="nama" type="text" name="nama"
                                                    class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white"
                                                    placeholder="Nama" required />
                                            </div>
                                            <div>
                                                <label for="nim" 
                                                    class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">NIM
                                                    </label>
                                                <input id="nim" type="text" name="nim"
                                                    class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white"
                                                    placeholder="Nim" required />
                                            </div>
                                            <div class="mt-5">
                                                <label
                                                    class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Prodi</label>
                                                <select
                                                    class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:text-white">
                                                    <option>Matematika</option>
                                                    <option>Matematika</option>
                                                    <option>Sistem Informasi</option>
                                                    <option>Informatika</option>
                                                </select>
                                            </div>
                                            <div>
                                                <label for="email"
                                                    class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Email</label>
                                                <input id="email" type="email" name="email"
                                                    class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white"
                                                    placeholder="Email" />
                                            </div>
                                            <div>
                                                <label for="password"
                                                    class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Password</label>
                                                <input id="password" type="passeord"
                                                    class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white"
                                                    placeholder="Password" />
                                            </div>
                                            <div>
                                                <label for="namaKegiatan"
                                                    class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Confirm
                                                    Password</label>
                                                <input id="namaKegiatan" type="email"
                                                    class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white"
                                                    placeholder="Confirm Password" />
                                            </div>
                                            <!-- <div class="mt-5">
                                <label
                                    class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Status</label>
                                <select
                                    class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:text-white">
                                    <option>Admin</option>
                                    <option>User</option>
                                   
                                </select>
                            </div> -->
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
                                            const dropdownLokasiuser1 = document.querySelectorAll('.dropdown-lokasi');
                                            const selectedTextouser1 = document.getElementById('selectedText');

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
                    </td>
                </tr>
              
        
            </tbody>
        </table>
    </div>
</div>