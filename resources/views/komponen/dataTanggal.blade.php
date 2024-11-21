@include('komponen.style')
<div  id="dataTanggal" class="hidden">
    <div class="bg-blue-400 text-white p-4 flex items-center justify-center relative">
        <h1 class="text-xl font-bold text-center">Sistem Pendataan Penggunaan Laboratorium UNIPMA</h1>
    </div>
    <div class="flex justify-end mb-4 mt-6">

<!-- modal saat button tambah user di klik -->
        <!-- Modal toggle -->
        <button data-modal-target="authentication-modal-tanggal" data-modal-toggle="authentication-modal-tanggal"
            class="block text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800"
            type="button">
            <i class="fas fa-plus"></i> <!-- Ikon Font Awesome Plus -->
        </button>

        <!-- Main modal -->
        <div id="authentication-modal-tanggal" tabindex="-1" aria-hidden="true"
            class="hidden overflow-y-auto overflow-x-hidden fixed top-0 right-0 left-0 z-50 justify-center items-center w-full md:inset-0 h-[calc(100%-1rem)] max-h-full">
            <div class="relative p-4 w-full max-w-md max-h-full">
                <!-- Modal content -->
                <div class="relative bg-white rounded-lg shadow">
                    <!-- Modal header -->
                    <div
                        class="flex items-center justify-between p-4 md:p-5 border-b rounded-t ">
                        <h3 class="text-xl font-semibold text-gray-900">
                            Tambah Tanggal
                        </h3>
                        <button type="button"
                            class="end-2.5 text-gray-400 bg-transparent hover:bg-gray-200 hover:text-gray-900 rounded-lg text-sm w-8 h-8 ms-auto inline-flex justify-center items-center "
                            data-modal-hide="authentication-modal-tanggal">
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
                        <form class="space-y-4" action="{{ route('post-tanggal') }}" method="POST">
                            @csrf
                            <div>
                                <label for="kegiatan"  
                                    class="block mb-2 text-sm font-medium text-gray-900">Nama Kegiatan : </label>
                                    <select name="kegiatan"
                                    class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5">
                                    @foreach ($daftarKegiatan as $kegiatan)
                                    <option value="{{ $kegiatan }}"
                                        {{ old('kegiatan') == $kegiatan ? 'selected' : '' }}>
                                        {{ $kegiatan }}</option>
                                @endforeach
                                </select>
                            </div>
                            <div>
                                <label for="tanggal"
                                    class="block mb-2 text-sm font-medium text-gray-900">Tanggal Kegiatan : </label>
                                <input id="tanggal" type="text" name="tanggal"
                                    class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5"
                                    placeholder="Masukkan Tanggal Kegiatan" autocomplete="off" />
                                <p>*contoh: 24 desember 2024</p>
                            </div>

                            <div>
                                <label for="status"
                                    class="block mb-2 text-sm font-medium text-gray-900">Status
                                </label>
                                <select name="status"
                                    class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5">
                                    <option value="aktif">
                                        aktif</option>
                                    <option value="non aktif">
                                        non aktif</option>
                                </select>
                            </div>
                         
                            <button type="submit"
                                class="w-full text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center">Tambahkan</button>
                        </form>
                    </div>

                </div>
            </div>
        </div>

    </div>
    <div class="p-5 text-3xl font-semibold text-center text-gray-900 bg-white">
        Data Tanggal Kegiatan
    </div>

    <div class="relative overflow-x-auto shadow-md sm:rounded-lg">
        <table class="w-full text-sm text-left rtl:text-right text-gray-500 ">
            <thead class="text-xs text-gray-700 uppercase bg-gray-50">
                <tr>
                    <th scope="col" class="px-6 py-3">
                        No
                    </th>
                    <th scope="col" class="px-6 py-3">
                        Kegiatan 
                    </th>
                    <th scope="col" class="px-6 py-3">
                        Tanggal Kegiatan
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
                @foreach ($jadwal as $dataJadwal)
                    
                
                <tr
                    class="odd:bg-white  even:bg-gray-50 ">
                    <th class="px-6 py-4">
                        {{ $loop->iteration }}
                    </th>
                    <th scope="row"
                        class="px-6 py-4  whitespace-nowrap">
                        {{ $dataJadwal->kegiatan }}
                    </th>
                    <td class="px-6 py-4">
                            {{ $dataJadwal['daftar-jadwal'] }}
                    </td>
                    <td class="px-6 py-4">
                            {{ $dataJadwal->status }}
                    </td>

                    <td class="px-6 py-4 flex space-x-2">
                        <div class="flex space-x-2">
                            <button data-modal-target="authentication-modal-edit-jadwal{{ $dataJadwal->id }}"
                                data-modal-toggle="authentication-modal-edit-jadwal{{ $dataJadwal->id }}"
                                >
                                <i class="fas fa-edit"></i><!-- Font Awesome 6 -->
                            </button>
                    
                            <!-- Main modal -->
                            <div id="authentication-modal-edit-jadwal{{ $dataJadwal->id }}" tabindex="-1" aria-hidden="true"
                                class="hidden overflow-y-auto overflow-x-hidden fixed top-0 right-0 left-0 z-50 justify-center items-center w-full md:inset-0 h-[calc(100%-1rem)] max-h-full">
                                <div class="relative p-4 w-full max-w-md max-h-full">
                                    <!-- Modal content -->
                                    <div class="relative bg-white rounded-lg shadow">
                                        <!-- Modal header -->
                                        <div
                                            class="flex items-center justify-between p-4 md:p-5 border-b rounded-t">
                                            <h3 class="text-xl font-semibold text-gray-900">
                                                Edit Tanggal
                                            </h3>
                                            <button type="button"
                                                class="end-2.5 text-gray-400 bg-transparent hover:bg-gray-200 hover:text-gray-900 rounded-lg text-sm w-8 h-8 ms-auto inline-flex justify-center items-center"
                                                data-modal-hide="authentication-modal-edit-jadwal{{ $dataJadwal->id }}">
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
                                            <form class="space-y-4" action="{{ route('edit-tanggal',$dataJadwal->id) }}" method="POST">
                                                @csrf
                                                @method('PUT')
                                                <div>
                                                    <label for="kegiatan"
                                                        class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Kegiatan : </label>
                                                    <input id="kegiatan" type="text" name="kegiatan"
                                                        class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5"
                                                        value="{{ $dataJadwal->kegiatan }}" disabled />
                                                </div>
                                                <div>
                                                    <label for="tanggal"
                                                        class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Tanggal : </label>
                                                    <input id="tanggal" type="text" name="tanggal"
                                                        class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5"
                                                        value="{{ $dataJadwal['daftar-jadwal'] }}" />
                                                </div>
                                                <div>
                                                    <label for="status"
                                                        class="block mb-2 text-sm font-medium text-gray-900 ">Status
                                                    </label>
                                                    <select name="status"
                                                        class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5">
                                                        <option value="aktif">
                                                            aktif</option>
                                                        <option value="selesai">
                                                            selesai</option>
                                                    </select>
                                                </div>
    
                                               
                                                <button type="submit"
                                                    class="w-full text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center ">Edit</button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    
                        <button data-modal-target="popup-modal-hapus{{ $dataJadwal->id }}" data-modal-toggle="popup-modal-hapus{{ $dataJadwal->id }}"
                            >
                            <i class="fas fa-trash-alt"></i> <!-- Font Awesome 5 -->
                        </button>
                        <div id="popup-modal-hapus{{ $dataJadwal->id }}" tabindex="-1"
                            class="hidden overflow-y-auto overflow-x-hidden fixed top-0 right-0 left-0 z-50 justify-center items-center w-full md:inset-0 h-[calc(100%-1rem)] max-h-full">
                            <div class="relative p-4 w-full max-w-md max-h-full">
                                <form action="{{ route('delete-tanggal',$dataJadwal->id) }}" method="POST">
                                    @csrf
                                    @method('DELETE')
                                <div class="relative bg-white rounded-lg shadow">
                                    <button type="button"
                                        class="absolute top-3 end-2.5 text-gray-400 bg-transparent hover:bg-gray-200 hover:text-gray-900 rounded-lg text-sm w-8 h-8 ms-auto inline-flex justify-center items-center"
                                        data-modal-hide="popup-modal-hapus-user">
                                        <svg class="w-3 h-3" aria-hidden="true"
                                            xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 14 14">
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
                                        <h3 class="mb-5 text-lg font-normal text-gray-500 dark:text-gray-400">
                                            Apakah kamu yakin untuk menghapus tanggal {{ $dataJadwal['daftar-jadwal'] }}</h3>
                                        <button data-modal-hide="popup-modal-hapus-user" type="submit"
                                            class="text-white bg-red-600 hover:bg-red-800 focus:ring-4 focus:outline-none focus:ring-red-300  font-medium rounded-lg text-sm inline-flex items-center px-5 py-2.5 text-center">
                                            Yakin
                                        </button>
                                        <button data-modal-hide="popup-modal-hapus-user" type="button"
                                            class="py-2.5 px-5 ms-3 text-sm font-medium text-gray-900 focus:outline-none bg-white rounded-lg border border-gray-200 hover:bg-gray-100 hover:text-blue-700 focus:z-10 focus:ring-4 focus:ring-gray-100">Tidak</button>
                                    </div>
                                </div>
                            </form>
                            </div>
                        </div>
                    </td>
                    
                </tr>
        
            @endforeach
            </tbody>
        </table>
    </div>

</div>