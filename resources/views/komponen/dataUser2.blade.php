<div id="dataUser" class="hidden">
    <div class="bg-blue-400 text-white p-4 flex items-center justify-center relative">
        <h1 class="text-xl font-bold text-center">Sistem Pendataan Penggunaan Laboratorium UNIPMA</h1>
    </div>
    <div class="flex justify-end mb-4 mt-6">

        <!-- modal saat button tambah user di klik -->
        <div class="mx-5">
            <button data-modal-target="authentication-modal-import-excel"
                data-modal-toggle="authentication-modal-import-excel"
                class="block text-white bg-green-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center"
                type="button">
                <i class="fas fa-file-excel"></i>
            </button>
        </div>

        <div>
            <button data-modal-target="authentication-modal-user" data-modal-toggle="authentication-modal-user"
                class="block text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center"
                type="button">
                <i class="fas fa-plus"></i> <!-- Ikon Font Awesome Plus -->
            </button>
        </div>

        {{-- form import excel --}}
        <div id="authentication-modal-import-excel" tabindex="-1" aria-hidden="true"
            class="hidden overflow-y-auto overflow-x-hidden fixed top-0 right-0 left-0 z-50 justify-center items-center w-full md:inset-0 h-[calc(100%-1rem)] max-h-full">
            <div class="relative p-4 w-full max-w-md max-h-full 
">
                {{-- awal modal tambah user --}}
                <div class="relative bg-white rounded-lg shadow">
                    <!-- Modal header -->
                    <div class="flex items-center justify-between p-4 md:p-5 border-b rounded-t">
                            Import data excel
                        </h3>
                    </div>
                    <!-- Modal body -->
                    <div class="p-4 md:p-5">
                        <form class="space-y-4" action="{{ route('import.AkunMahasiswa') }}" method="POST"
                            enctype="multipart/form-data">
                            @csrf
                            <div>

                                <label class="block mb-2 text-sm font-medium text-gray-900"
                                    for="file_input">Upload file</label>
                                <input
                                    class="block w-full text-sm text-gray-900 border border-gray-300 rounded-lg cursor-pointer bg-gray-50 focus:outline-none"
                                    name="file" aria-describedby="file_input_help" id="file_input" type="file">
                                <p class="mt-1 text-sm text-gray-500 " id="file_input_help">xlxc.</p>

                                @error('nama')
                                    <p class="text-red-500 mt-2 text-sm">{{ $message }}</p>
                                @enderror
                            </div>

                            <button type="submit"
                                class="w-full text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center">Tambahkan</button>
                        </form>
                    </div>
                </div>
                {{-- <script>
                document.addEventListener("DOMContentLoaded", function () {
                    @if ($errors->any())
                        const modal = document.getElementById('authentication-modal-user');
                        modal.classList.remove('hidden');
                    @endif
                });
            </script> --}}

                {{-- akhir modal tambah user --}}
            </div>
        </div>

        {{-- @if (session('success'))
        <div class="alert alert-success">
            {{ session('success') }}
        </div>
    @endif --}}
    
    
    
   
    

        <!-- Main modal -->
        <div id="authentication-modal-user" tabindex="-1" aria-hidden="true"
            class="hidden overflow-y-auto overflow-x-hidden fixed top-0 right-0 left-0 z-50 justify-center items-center w-full md:inset-0 h-[calc(100%-1rem)] max-h-full">
            <div class="relative p-4 w-full max-w-md max-h-full 
">
                {{-- awal modal tambah user --}}
                <div class="relative bg-white rounded-lg shadow">
                    <!-- Modal header -->
                    <div class="flex items-center justify-between p-4 md:p-5 border-b rounded-t">
                        <h3 class="text-xl font-semibold text-gray-900">
                            Tambah Userrrrrrrrrrrr
                        </h3>
                        <button type="button"
                            class="end-2.5 text-gray-400 bg-transparent hover:bg-gray-200 hover:text-gray-900 rounded-lg text-sm w-8 h-8 ms-auto inline-flex justify-center items-center"
                            data-modal-hide="authentication-modal-user">
                            <svg class="w-3 h-3" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none"
                                viewBox="0 0 14 14">
                                <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"
                                    stroke-width="2" d="m1 1 6 6m0 0 6 6M7 7l6-6M7 7l-6 6" />
                            </svg>
                            <span class="sr-only">Close modal</span>
                        </button>
                    </div>
                    <!-- Modal body -->
                    <div class="p-4 md:p-5">
                        <form class="space-y-4" action="{{ route('akun-peserta-form') }}" method="POST">
                            @csrf
                            <div>
                                <label for="nama"
                                    class="block mb-2 text-sm font-medium text-gray-900">Nama
                                    Admin</label>
                                <input id="nama" type="text" name="nama" autocomplete="off"
                                    class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 @error('nama') border-red-500 @enderror"
                                    placeholder="Nama" />
                                @error('nama')
                                    <p class="text-red-500 mt-2 text-sm">{{ $message }}</p>
                                @enderror
                            </div>
                            <div>
                                <label for="nim"
                                    class="block mb-2 text-sm font-medium text-gray-900">NIM</label>
                                <input id="nim" type="text" name="nim" autocomplete="off"
                                    class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 @error('nim') border-red-500 @enderror"
                                    placeholder="Nim" />
                                @error('nim')
                                    <p class="text-red-500 mt-2 text-sm">{{ $message }}</p>
                                @enderror
                            </div>
                            <div class="mt-5">
                                <label
                                    class="block mb-2 text-sm font-medium text-gray-900">Prodi</label>
                                <select
                                    class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5"
                                    name="prodi">
                                    @foreach ($prodi as $daftarProdi)
                                        <option value="{{ $daftarProdi }}">{{ $daftarProdi }}</option>
                                    @endforeach

                                </select>
                            </div>
                            <div>
                                <label for="email"
                                    class="block mb-2 text-sm font-medium text-gray-900">Email</label>
                                <input id="email" type="email" name="email" autocomplete="off"
                                    class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5"
                                    placeholder="Email" />
                            </div>
                            <div>
                                <label for="password"
                                    class="block mb-2 text-sm font-medium text-gray-900">Password</label>
                                <input id="password" type="text" name="password" autocomplete="off"
                                    class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5"
                                    placeholder="Password" />
                            </div>

                            <button type="submit"
                                class="w-full text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center">Tambahkan</button>
                        </form>
                    </div>
                </div>
                {{-- <script>
                    document.addEventListener("DOMContentLoaded", function () {
                        @if ($errors->any())
                            const modal = document.getElementById('authentication-modal-user');
                            modal.classList.remove('hidden');
                        @endif
                    });
                </script> --}}

                {{-- akhir modal tambah user --}}
            </div>
        </div>

    </div>
    <div class="p-5 text-3xl font-semibold text-center text-gray-900 bg-white">
        Data User
    </div>
    {{-- @if (session('error'))
    <div class="alert alert-danger">
        {{ session('error') }}
    </div>
@endif --}}

@if (session('error'))
    <div id="alert" class="bg-red-500 text-white p-4 rounded-lg mb-4">
        {{ session('error') }}
    </div>        
    @endif

    @if (session('errorFile'))
    <div class="bg-red-500 text-white p-4 rounded-lg mb-4">
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
@endif
    <script>
        setTimeout(function() {
            var alertBox = document.getElementById('alert');
            if (alertBox) {
                alertBox.style.display = 'none'; // Menyembunyikan alert
            }
        }, 10000); // 20 detik
    </script>
    <div class="relative overflow-x-auto shadow-md sm:rounded-lg">
        <table class="w-full text-sm text-left rtl:text-right text-gray-500">
            <thead class="text-xs text-gray-700 uppercase bg-gray-50">
                <tr>
                    <th scope="col" class="px-6 py-3">
                        No
                    </th>
                    <th scope="col" class="px-6 py-3">
                        Nama
                    </th>
                    <th scope="col" class="px-6 py-3">
                        Nim
                    </th>
                    <th scope="col" class="px-1 py-3">
                        Prodi
                    </th>
                    <th scope="col" class="px-1 py-3">
                        Email
                    </th>
                    <th scope="col" class="px-6 py-3">
                        Password
                    </th>
                    <th scope="col" class="px-6 py-3">
                        Status
                    </th>

                    <th scope="col" class="px-6 py-3 text-center">
                        Action
                    </th>
                </tr>
            </thead>
            <tbody>
                @php
                    $no = ($users->currentPage() - 1) * $users->perPage() + 1;
                @endphp
                @foreach ($users as $dataUser)
                    <tr
                        class="odd:bg-white  even:bg-gray-50">
                        <th class="px-6 py-4">
                            {{ $no++ }}
                        </th>
                        <th scope="row" class="px-1 py-4  whitespace-normal break-words ">
                            {{ $dataUser->username }}
                        </th>

                        <td class="px-6 py-6 whitespace-normal break-words">
                            {{ $dataUser->nim }}
                        </td>
                        <td class="px-1 py-6 whitespace-normal break-words">
                            {{ $dataUser->prodi }}
                        </td>
                        <td class="px-1 py-6 whitespace-normal break-words">
                            {{ $dataUser->email }}
                        </td>
                        <td class="px-6 py-6 whitespace-normal break-words">
                            {{ $dataUser->password }}
                        </td>
                        <td class="px-6 py-6">
                            {{ $dataUser->status }}
                        </td>

                        <td class="px-6 py-4 flex justify-center gap-2">
                            <button data-modal-target="authentication-modal-edit{{ $dataUser->id }}"
                                data-modal-toggle="authentication-modal-edit{{ $dataUser->id }}" type="button">
                                <i class="fas fa-edit"></i><!-- Font Awesome 6 -->
                            </button>

                            {{-- modal edit --}}
                            <div id="authentication-modal-edit{{ $dataUser->id }}" tabindex="-1" aria-hidden="true"
                                class="hidden overflow-y-auto overflow-x-hidden fixed top-0 right-0 left-0 z-50 justify-center items-center w-full md:inset-0 h-[calc(100%-1rem)] max-h-full">
                                <div class="relative p-4 w-full max-w-md max-h-full">
                                    <!-- Modal content -->
                                    <div class="relative bg-white rounded-lg shadow">
                                        <!-- Modal header -->
                                        <div
                                            class="flex items-center justify-between p-4 md:p-5 border-b rounded-t dark:border-gray-600">
                                            <h3 class="text-xl font-semibold text-gray-900">
                                                Edit User
                                            </h3>
                                            <button type="button"
                                                class="end-2.5 text-gray-400 bg-transparent hover:bg-gray-200 hover:text-gray-900 rounded-lg text-sm w-8 h-8 ms-auto inline-flex justify-center items-center"
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
                                            <form class="space-y-4" action="{{ route('edit-user',$dataUser->id) }}" method="POST">
                                                @csrf
                                                @method('PUT')
                                                <div>
                                                    <label for="nama"
                                                        class="block mb-2 text-sm font-medium text-gray-900">Nama
                                                        User</label>
                                                    <input id="nama" type="text" name="nama"
                                                        class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5"
                                                        value="{{ $dataUser->username }}" required />
                                                </div>
                                                <div>
                                                    <label for="nim"
                                                        class="block mb-2 text-sm font-medium text-gray-900">NIM
                                                    </label>
                                                    <input id="nim" typ`e="text" name="nim"
                                                        class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5"
                                                        value="{{ $dataUser->nim }}" required />
                                                </div>
                                                <div class="mt-5">
                                                    <label
                                                        class="block mb-2 text-sm font-medium text-gray-900">Prodi</label>
                                                    <select
                                                        class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5"
                                                        name="prodi">
                                                        @foreach ($prodi as $item)
                                                        
                                                        <option value="{{ $item }}" {{ ($dataUser->prodi ?? '') == $item ? 'selected' : '' }}>
                                                            {{ $item }}
                                                        </option>                                                       
                                                        @endforeach
                                                    </select>
                                                </div>
                                                
                                                <div>
                                                    <label for="email"
                                                        class="block mb-2 text-sm font-medium text-gray-900">Email</label>
                                                    <input id="email" type="text" name="email"
                                                        class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5"
                                                        value="{{ $dataUser->email }}" />
                                                </div>
                                                <div>
                                                    <label for="password"
                                                        class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Password</label>
                                                    <input id="password" type="text" name="password"
                                                        class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5"
                                                        value="{{ $dataUser->password }}"/>
                                                </div>

                                                <div class="mt-5">
                                                    <label
                                                        class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Status</label>
                                                    <select
                                                        class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5"
                                                        name="status">
                                                        <option value="aktif" {{ $dataUser->status == 'aktif' ? 'selected' : '' }}>aktif</option>
                                                        <option value="non aktif" {{ $dataUser->status == 'non aktif' ? 'selected' : '' }}>non aktif</option>
                                                    </select>
                                                </div>

                                                <button type="submit" data-id="{{ $dataUser->id }}"
                                                    class="w-full text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center">Tambahkan</button>
                                            </form>

                                            <script>
                                                // Menampilkan dan menyembunyikan dropdown
                                                document.getElementById('dropdownUserButton').addEventListener('click', function() {
                                                    const dropdown = document.getElementById('dropdownUser');
                                                    dropdown.classList.toggle('hidden');
                                                });

                                                // Menangani klik di luar dropdown untuk menutup dropdown
                                                window.addEventListener('click', function(event) {
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
                                                    item.addEventListener('click', function(event) {
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
                            {{-- akhir modal edit --}}


                            <!-- Button Hapus -->
                            {{-- <button data-modal-target="popup-modal-user1" data-modal-toggle="popup-modal-user1"
                                type="button">
                                <i class="fas fa-trash-alt"></i> <!-- Font Awesome 5 -->
                            </button> --}}
                            <div id="popup-modal-user1" tabindex="-1"
                                class="hidden overflow-y-auto overflow-x-hidden fixed top-0 right-0 left-0 z-50 justify-center items-center w-full md:inset-0 h-[calc(100%-1rem)] max-h-full">
                                <div class="relative p-4 w-full max-w-md max-h-full">
                                    <div class="relative bg-white rounded-lg shadow dark:bg-gray-700">
                                        <button type="button"
                                            class="absolute top-3 end-2.5 text-gray-400 bg-transparent hover:bg-gray-200 hover:text-gray-900 rounded-lg text-sm w-8 h-8 ms-auto inline-flex justify-center items-center"
                                            data-modal-hide="popup-modal-user1">
                                            <svg class="w-3 h-3" aria-hidden="true"
                                                xmlns="http://www.w3.org/2000/svg" fill="none"
                                                viewBox="0 0 14 14">
                                                <path stroke="currentColor" stroke-linecap="round"
                                                    stroke-linejoin="round" stroke-width="2"
                                                    d="m1 1 6 6m0 0 6 6M7 7l6-6M7 7l-6 6" />
                                            </svg>
                                            <span class="sr-only">Close modal</span>
                                        </button>
                                        <div class="p-4 md:p-5 text-center">
                                            <svg class="mx-auto mb-4 text-gray-400 w-12 h-12"
                                                aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none"
                                                viewBox="0 0 20 20">
                                                <path stroke="currentColor" stroke-linecap="round"
                                                    stroke-linejoin="round" stroke-width="2"
                                                    d="M10 11V6m0 8h.01M19 10a9 9 0 1 1-18 0 9 9 0 0 1 18 0Z" />
                                            </svg>
                                            <h3 class="mb-5 text-lg font-normal text-gray-500">
                                                Apakah kamu yakin untuk menghapus Akun ini</h3>
                                            <button data-modal-hide="popup-modal-user1" type="button"
                                                class="text-white bg-red-600 hover:bg-red-800 focus:ring-4 focus:outline-none focus:ring-red-300  font-medium rounded-lg text-sm inline-flex items-center px-5 py-2.5 text-center">
                                                Yakin
                                            </button>
                                            <button data-modal-hide="popup-modal-user1" type="button"
                                                class="py-2.5 px-5 ms-3 text-sm font-medium text-gray-900 focus:outline-none bg-white rounded-lg border border-gray-200 hover:bg-gray-100 hover:text-blue-700 focus:z-10 focus:ring-4 focus:ring-gray-100">Tidak</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </td>
                    </tr>
                @endforeach


                <div class="mt-4 mb-5">
                    {{ $users->onEachSide(1)->links() }}
                </div>
            </tbody>
        </table>
    </div>

</div>
