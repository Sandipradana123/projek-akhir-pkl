<div id="dataUser" class="content">
    <div class="flex justify-end mb-4 mt-6">
        <a href="#"
            class="inline-flex justify-center items-center py-3 px-5 text-base font-medium text-center text-white rounded-lg bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:ring-blue-300 dark:focus:ring-blue-900">
            <svg class="w-6 h-6 text-white dark:text-white" aria-hidden="true"
                xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                    d="M5 12h14m-7 7V5" />
            </svg>
            Tambah User
        </a>
    </div>
    <div class="p-5 text-3xl font-semibold text-center text-gray-900 bg-white dark:text-white dark:bg-gray-800">
        Data User
    </div>
    <div class="flex justify-center">
        <!-- Button Dropdown -->
        <button id="dropdownDefaultButton" data-dropdown-toggle="dropdown"
            class="justify-center text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center inline-flex items-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800"
            type="button">
            <!-- Teks awal pada button -->
            <span id="selectedText">User</span>
            <svg class="w-2.5 h-2.5 ms-3" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none"
                viewBox="0 0 10 6">
                <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                    d="m1 1 4 4 4-4" />
            </svg>
        </button>

        <!-- Dropdown menu -->
        <div id="dropdown"
            class="z-10 hidden bg-white divide-y divide-gray-100 rounded-lg shadow w-44 dark:bg-gray-700">
            <ul class="py-2 text-sm text-gray-700 dark:text-gray-200" aria-labelledby="dropdownDefaultButton">
                <li>
                    <a href="#"
                        class="dropdown-item block px-4 py-2 hover:bg-gray-100 dark:hover:bg-gray-600 dark:hover:text-white"
                        data-value="User">User</a>
                </li>
                <li>
                    <a href="#"
                        class="dropdown-item block px-4 py-2 hover:bg-gray-100 dark:hover:bg-gray-600 dark:hover:text-white"
                        data-value="Admin">Admin</a>
                </li>
            </ul>
        </div>
    </div>

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
    </script>



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
                        Status
                    </th>
                    <th scope="col" class="px-6 py-3">
                        Action
                    </th>
                </tr>
            </thead>
            <tbody>
                @foreach ($users as $daftarUser)
                <tr
                class="odd:bg-white odd:dark:bg-gray-900 even:bg-gray-50 even:dark:bg-gray-800 border-b dark:border-gray-700">
                
                <th class="px-6 py-4">
                    {{ $daftarUser->id }}
                </th>
                <th scope="row"
                    class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                    {{ $daftarUser->username }}
                </th>
                <td class="px-6 py-4">
                    {{ $daftarUser->nim }}
                </td>
                <td class="px-6 py-4">
                    {{ $daftarUser->prodi }}
                </td>
                <td class="px-6 py-4">
                    {{ $daftarUser->email }}
                </td>
                <td class="px-6 py-4">
                    {{ $daftarUser->password }}
                </td>
                <td class="px-6 py-4">
                    {{ $daftarUser->kategori }}
                </td>
                <td class="px-6 py-4">
                    <a href="#"
                        class="font-medium text-blue-600 dark:text-blue-500 hover:underline">Edit</a>
                </td>
            </tr>
                    @endforeach
                
            </tbody>
        </table>
    </div>
</div>