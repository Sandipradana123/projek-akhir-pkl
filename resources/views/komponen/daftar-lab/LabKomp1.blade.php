@include('komponen.style')
{{-- @include('komponen.daftar-lab.filter') --}}
<div id="subMenu1" class="hidden">
    <div class="bg-blue-400 text-white p-4 flex items-center justify-center relative">
        <h1 class="text-xl font-bold text-center">Sistem Pendataan Penggunaan Laboratorium UNIPMA</h1>
    </div>
    <h1 class="text-3xl font-bold mb-4 mt-10 text-center">Lab upt komputer 1</h1>
    {{-- <button onclick="showBackFromTable()"
            class="mt-4 inline-flex items-center px-3 py-2 text-sm font-medium text-center text-white bg-gray-600 rounded-lg hover:bg-gray-700 focus:ring-4 focus:outline-none focus:ring-gray-300 dark:bg-gray-500 dark:hover:bg-gray-600 dark:focus:ring-gray-400 mb-6">
            <i class="fas fa-arrow-left"></i>
        </button> --}}
    {{-- <div>
            <form class="max-w-[300px] mx-auto" action="{{ route('labkomp1.import') }}" method="POST" enctype="multipart/form-data" >
                @csrf
                <label class="block mb-2 text-sm font-medium text-gray-900 dark:text-white" for="user_avatar">Upload file</label>
                <input class="block w-full text-sm text-gray-900 border border-gray-300 rounded-lg cursor-pointer bg-gray-50 dark:text-gray-400 focus:outline-none dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400" aria-describedby="user_avatar_help" id="user_avatar" type="file" name="file">
                <div>
                    <button type="submit"
                                class="w-full text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">Confirm</button>
                </div>
                
              </form>
        </div> --}}


    <form action="{{ url('export/jadwal') }}" method="GET" class="p-4">
        <div class="flex flex-col md:flex-row md:gap-12">
            <!-- Kegiatan -->
            <div class="flex flex-col md:flex-row md:items-center mb-4">
                <label for="filterKegiatan"
                    class="mb-2 md:mb-0 md:mr-2 text-sm font-medium text-gray-700">Kegiatan:</label>
                <select id="filterKegiatan" class="border border-gray-300 text-sm rounded-lg p-2 w-full md:w-auto"
                    name="kegiatan">
                    <option value="">Semua</option>
                    @foreach ($kegiatan as $daftarKegiatan)
                        <option value="{{ $daftarKegiatan['daftar-kegiatan'] }}">
                            {{ $daftarKegiatan['daftar-kegiatan'] }}
                        </option>
                    @endforeach
                </select>
            </div>

            <!-- Jadwal -->
            <div class="flex flex-col md:flex-row md:items-center mb-4">
                <label for="filterTanggal"
                    class="mb-2 md:mb-0 md:mr-2 text-sm font-medium text-gray-700">Jadwal:</label>
                <select id="filterTanggal" class="border border-gray-300 text-sm rounded-lg p-2 w-full md:w-auto"
                    name="tanggal">
                    <option value="">Semua</option>
                    @foreach ($jadwal as $daftarTanggal)
                        <option value="{{ $daftarTanggal['daftar-jadwal'] }}">
                            {{ $daftarTanggal['daftar-jadwal'] }}
                        </option>
                    @endforeach
                </select>
            </div>

            <!-- Sesi -->
            <div class="flex flex-col md:flex-row md:items-center mb-4">
                <label for="filterSesi" class="mb-2 md:mb-0 md:mr-2 text-sm font-medium text-gray-700">Sesi:</label>
                <select id="filterSesi" class="border border-gray-300 text-sm rounded-lg p-2 w-full md:w-auto"
                    name="sesi">
                    <option value="">Semua</option>
                    @foreach ($sesi as $daftarSesi)
                        <option value="{{ $daftarSesi['daftar-sesi'] }}">
                            {{ $daftarSesi['daftar-sesi'] }}
                        </option>
                    @endforeach
                </select>
            </div>

            {{-- lab --}}
            <div class="flex flex-col md:flex-row md:items-center mb-4">
                <label for="filterLab" class="mb-2 md:mb-0 md:mr-2 text-sm font-medium text-gray-700">Lab:</label>
                <select id="filterLab" class="border border-gray-300 text-sm rounded-lg p-2 w-full md:w-auto"
                    name="lab">
                    <option value="">Semua</option>
                    @foreach ($lab as $daftarLab)
                        <option value="{{ $daftarLab['nama-lab'] }}">
                            {{ $daftarLab['nama-lab'] }}
                        </option>
                    @endforeach
                </select>
            </div>

            <!-- Submit Button -->
            <div class="flex items-center mb-4">
                <button type="submit"
                    class="block text-white bg-blue-700 hover:bg-blue-800 font-medium rounded-lg text-sm px-5 py-2.5">
                    <i class="fa-solid fa-arrow-right-from-bracket"></i>
                </button>
            </div>
        </div>
    </form>

    <button data-modal-target="modal-tambah-peserta" data-modal-toggle="modal-tambah-peserta"
            class="block text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center"
            type="button">
            <i class="fas fa-plus"></i> <!-- Ikon Font Awesome Plus -->
        </button>
    @if (session('dataErrorKomp1'))
        <div id="alert" class="bg-red-500 text-white p-4 rounded-lg mb-4">
            {{ session('dataErrorKomp1') }}
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
    </form>
    <div class="relative overflow-x-auto shadow-md sm:rounded-lg">
        <table class="w-full text-xs text-left rtl:text-right text-gray-500">
            <thead class="text-xs text-gray-700 uppercase bg-gray-50">
                <tr>
                    <th scope="col" class="px-6 py-3">No</th>
                    <th scope="col" class="px-6 py-3">Nama</th>
                    <th scope="col" class="px-6 py-3">Email</th>
                    <th scope="col" class="px-6 py-3">NIM</th>
                    <th scope="col" class="px-6 py-3">Prodi</th>
                    <th scope="col" class="px-6 py-3">Kegiatan</th>
                    <th scope="col" class="px-6 py-3">Tanggal</th>
                    <th scope="col" class="px-6 py-3">Sesi</th>
                    <th scope="col" class="px-6 py-3">Lab</th>
                    <th scope="col" class="px-6 py-3">Action</th>
                </tr>
            </thead>
            <tbody>
                @php
                    $no = ($labKomp1->currentPage() - 1) * $labKomp1->perPage() + 1;
                @endphp

                @foreach ($labKomp1 as $lab1)
                    <tr class="row-item odd:bg-white  even:bg-gray-50" data-kegiatan="{{ $lab1->kegiatan }}"
                        data-tanggal="{{ $lab1->jadwal }}" data-sesi="{{ $lab1->sesi }}">
                        <th class="px-6 py-4">{{ $no++ }}</th>
                        <th class="px-6 py-4">{{ $lab1->nama }}</th>
                        <td class="px-6 py-4 truncate max-w-[100px]">{{ $lab1->email }}</td>
                        <td class="px-6 py-4">{{ $lab1->nim }}</td>
                        <td class="px-6 py-4">{{ $lab1->prodi }}</td>
                        <td class="px-6 py-4">{{ $lab1->kegiatan }}</td>
                        <td class="px-6 py-4">{{ $lab1->tanggal }}</td>
                        <td class="px-6 py-4">{{ $lab1->sesi }}</td>
                        <td class="px-6 py-4">{{ $lab1->lab }}</td>
                        <td class="px-6 py-4 flex space-x-2">
                            {{-- button edit --}}
                            <!-- Button Edit -->
                            <button data-modal-target="edit-peserta{{ $lab1->id }}"
                                data-modal-toggle="edit-peserta{{ $lab1->id }}" type="button">
                                <i class="fas fa-edit"></i><!-- Font Awesome 6 -->
                            </button>

                            {{-- button hapus --}}
                            <button data-modal-target="popup-modal-hapus{{ $lab1->id }}" data-modal-toggle="popup-modal-hapus{{ $lab1->id }}" type="button">
                                <i class="fas fa-trash-alt"></i> <!-- Font Awesome 5 -->
                            </button>
                    <div id="popup-modal-hapus{{ $lab1->id }}" tabindex="-1"
                                class="hidden overflow-y-auto overflow-x-hidden fixed top-0 right-0 left-0 z-50 justify-center items-center w-full md:inset-0 h-[calc(100%-1rem)] max-h-full">
                                <div class="relative p-4 w-full max-w-md max-h-full">
                                    <div class="relative bg-white rounded-lg shadow">
                                        <button type="button"
                                            class="absolute top-3 end-2.5 text-gray-400 bg-transparent hover:bg-gray-200 hover:text-gray-900 rounded-lg text-sm w-8 h-8 ms-auto inline-flex justify-center items-center"
                                            data-modal-hide="popup-modal">
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
                                            <form action="{{ route('delete-peserta',$lab1->id) }}" method="POST">
                                                @csrf
                                                @method('DELETE')
                                            
                                            <svg class="mx-auto mb-4 text-gray-400 w-12 h-12"
                                                aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none"
                                                viewBox="0 0 20 20">
                                                <path stroke="currentColor" stroke-linecap="round"
                                                    stroke-linejoin="round" stroke-width="2"
                                                    d="M10 11V6m0 8h.01M19 10a9 9 0 1 1-18 0 9 9 0 0 1 18 0Z" />
                                            </svg>
                                            <h3 class="mb-5 text-lg font-normal text-gray-500">
                                                Apakah kamu yakin untuk menghapus nama {{ $lab1->nama }}</h3>
                                            <button data-modal-hide="popup-modal" type="submit"
                                                class="text-white bg-red-600 hover:bg-red-800 focus:ring-4 focus:outline-none focus:ring-red-300 font-medium rounded-lg text-sm inline-flex items-center px-5 py-2.5 text-center">
                                                Yakin
                                            </button>
                                            <button data-modal-hide="popup-modal" type="button"
                                                class="py-2.5 px-5 ms-3 text-sm font-medium text-gray-900 focus:outline-none bg-white rounded-lg border border-gray-200 hover:bg-gray-100 hover:text-blue-700 focus:z-10 focus:ring-4 focus:ring-gray-100">Tidak</button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </td>
                    </tr>
                    {{-- modal edit peserta --}}
                    <div id="edit-peserta{{ $lab1->id }}" tabindex="-1" aria-hidden="true"
                        class="hidden overflow-y-auto overflow-x-hidden fixed top-0 right-0 left-0 z-50 justify-center items-center w-full md:inset-0 h-[calc(100%-1rem)] max-h-full">
                        <div class="relative p-4 w-full max-w-md max-h-full">
                            <div class="relative bg-white rounded-lg shadow">
                                <!-- Modal header -->
                                <div class="flex items-center justify-between p-4 md:p-5 border-b rounded-t ">
                                    <h3 class="text-xl font-semibold text-center w-full text-gray-900 ">
                                        Edit peserta
                                    </h3>
                                    <button type="button"
                                        class="absolute top-2 right-2 text-gray-400 bg-transparent hover:bg-gray-200 hover:text-gray-900 rounded-lg text-sm w-8 h-8 inline-flex justify-center items-center"
                                        data-modal-hide="authentication-modal-kegiatan-edit{{ $lab1->id }}">
                                        <svg class="w-3 h-3" aria-hidden="true" xmlns="http://www.w3.org/2000/svg"
                                            fill="none" viewBox="0 0 14 14">
                                            <path stroke="currentColor" stroke-linecap="round"
                                                stroke-linejoin="round" stroke-width="2"
                                                d="m1 1 6 6m0 0 6 6M7 7l6-6M7 7l-6 6" />
                                        </svg>
                                        <span class="sr-only">Close modal</span>
                                    </button>
                                </div>
                                <!-- Modal body -->
                                <div class="p-4 md:p-5">
                                    <form class="space-y-4" action="{{ route('edit-peserta', $lab1->id) }}"
                                        method="POST">
                                        @csrf
                                        @method('PUT')
                                        <div>
                                            <label for="nama"
                                                class="block mb-2 text-sm font-medium text-gray-900 ">Nama
                                                : </label>
                                            <input id="nama" type="text" autocomplete="off" name="nama"
                                                class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5"
                                                value="{{ $lab1->nama }}" required />
                                        </div>
                                        <div>
                                            <label for="email"
                                                class="block mb-2 text-sm font-medium text-gray-900">Email : </label>
                                            <input id="email" type="text" name="email"
                                                class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5"
                                                value="{{ $lab1->email }}" required />
                                        </div>
                                        <div>
                                            <label for="nim"
                                                class="block mb-2 text-sm font-medium text-gray-900">Nim : </label>
                                            <input id="nim" type="number" name="nim"
                                                class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5"
                                                value="{{ $lab1->nim }}" required />
                                        </div>
                                        <div>
                                            <label for="prodi"
                                                class="block mb-2 text-sm font-medium text-gray-900">Prodi : </label>
                                            <input id="prodi" type="text" name="prodi"
                                                class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5"
                                                value="{{ $lab1->prodi }}" required />
                                        </div>
                                        <div>
                                            <label for="kegiatan"
                                                class="block mb-2 text-sm font-medium text-gray-900">Kegiatan :
                                            </label>
                                            <input id="kegiatan" type="text" name="kegiatan"
                                                class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5"
                                                value="{{ $lab1->kegiatan }}" required />
                                        </div>
                                        <div>
                                            <label for="tanggal"
                                                class="block mb-2 text-sm font-medium text-gray-900">Tanggal : </label>
                                            <input id="tanggal" type="date" name="tanggal"
                                                class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5"
                                                value="{{ $lab1->tanggal }}" required />
                                        </div>
                                        <div>
                                            <label for="sesi"
                                                class="block mb-2 text-sm font-medium text-gray-900">Sesi : </label>
                                            <input id="sesi" type="text" name="sesi"
                                                class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5"
                                                value="{{ $lab1->sesi }}" required />
                                        </div>
                                        <div>
                                            <label for="lab"
                                                class="block mb-2 text-sm font-medium text-gray-900">Lab : </label>
                                            <div class="mt-2.5">
                                                <select id="lab" name="lab"
                                                    class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 @error('lab') border-red-500 @enderror"
                                                    onchange="toggleSeats()">
                                                    <option selected>*pilih lab</option>
                                                    @foreach ($labDropdown as $daftarLab)
                                                        <option value="{{ $daftarLab }}"
                                                            {{ $lab1->lab == $daftarLab ? 'selected' : '' }}>
                                                            {{ $daftarLab }}
                                                        </option>
                                                    @endforeach

                                                </select>
                                                @error('lab')
                                                    <p class="text-red-500 mt-2 text-sm">{{ $message }}</p>
                                                @enderror
                                            </div>
                                        </div>

                                        <button type="submit"
                                            class="w-full text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center mt-5 ">Edit</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    {{-- akhir modal edit --}}
                @endforeach
                <div class="mt-4 mb-5">
                    {{ $labKomp1->onEachSide(1)->links() }}
                </div>


            </tbody>
        </table>

    </div>
    {{-- popup jika berhasil tambah kegiatan dan hapus --}}
    @if (session('success'))
        <div id="modal-berhasil-hapus" tabindex="-1"
            class="fixed overflow-y-auto overflow-x-hidden inset-0 z-50 flex justify-center items-center bg-black bg-opacity-50">
            <div class="relative p-4 w-full max-w-md max-h-full">
                <div class="relative bg-white rounded-lg shadow">
                    <button type="button"
                        class="absolute top-3 end-2.5 text-gray-400 bg-transparent hover:bg-gray-200 hover:text-gray-900 rounded-lg text-sm w-8 h-8 ms-auto inline-flex justify-center items-center"
                        onclick="document.getElementById('modal-berhasil-hapus').remove()">
                        <span class="sr-only">Close modal</span>
                    </button>
                    <div class="p-4 md:p-5 text-center">
                        <svg class="mx-auto mb-4 text-gray-400 w-12 h-12" aria-hidden="true"
                            xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 20 20">
                            <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"
                                stroke-width="2" d="M10 11V6m0 8h.01M19 10a9 9 0 1 1-18 0 9 9 0 0 1 18 0Z" />
                        </svg>
                        <h3 class="mb-5 text-lg font-normal text-gray-500">
                            {{ session('success') }}
                        </h3>
                        <button onclick="document.getElementById('modal-berhasil-hapus').remove()"
                            class="text-white bg-green-600 hover:bg-green-800 focus:ring-4 focus:outline-none focus:ring-green-300 font-medium rounded-lg text-sm inline-flex items-center px-5 py-2.5 text-center">
                            OK
                        </button>
                        <script>
                            setTimeout(() => {
                                const modal = document.getElementById('modal-berhasil-hapus');
                                if (modal) {
                                    modal.remove();
                                }
                            }, 3000); // Modal akan hilang setelah 3 detik
                        </script>

                    </div>
                </div>
            </div>
        </div>
    @endif
    {{-- akhir popup --}}
</div>

<div id="modal-tambah-peserta" tabindex="-1" aria-hidden="true"
            class="hidden overflow-y-auto overflow-x-hidden fixed top-0 right-0 left-0 z-50 justify-center items-center w-full md:inset-0 h-[calc(100%-1rem)] max-h-full">
            <div class="relative p-4 w-full max-w-md max-h-full">
                <!-- Modal content -->
                <div class="relative bg-white rounded-lg shadow">
                    <!-- Modal header -->
                    <div class="flex items-center justify-between p-4 md:p-5 border-b rounded-t">
                        <h3 class="text-xl font-semibold text-gray-900">
                            Tambah peserta
                        </h3>
                        <button type="button"
                            class="end-2.5 text-gray-400 bg-transparent hover:bg-gray-200 hover:text-gray-900 rounded-lg text-sm w-8 h-8 ms-auto inline-flex justify-center items-center"
                            data-modal-hide="authentication-modal">
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
                        <form class="space-y-4" action="{{ route('admin-tambah-peserta') }}" method="POST">
                            @csrf
                            <div>
                                <label for="nama"
                                    class="block mb-2 text-sm font-medium text-gray-900">Nama
                                    </label>
                                <input id="nama" type="text" name="nama" autocomplete="off"
                                    class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5"
                                    placeholder="Masukkan nama" required />
                            </div>
                            <div>
                                <label for="nim"
                                    class="block mb-2 text-sm font-medium text-gray-900">Nim </label>
                                <input id="nim" type="number" name="nim" autocomplete="off"
                                    class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5"
                                    placeholder="Masukkan nim" required />
                            </div>
                            <div>
                                <label for="email"
                                    class="block mb-2 text-sm font-medium text-gray-900">Email </label>
                                <input id="email" type="text" name="email" autocomplete="off"
                                    class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5"
                                    placeholder="Masukkan email" required />
                            </div>

                            <div>
                                <label for="prodi"
                                    class="block mb-2 text-sm font-medium text-gray-900">Prodi :
                                </label>
                                <select id="prodi" name="prodi"
                                        class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 @error('prodi') border-red-500 @enderror">
                                        <option selected>*pilih salah satu progam studi</option>
                                        @foreach ($prodi as $dataProdi)
                                            <option value="{{ $dataProdi }}"
                                                {{ old('prodi') == $dataProdi ? 'selected' : '' }}>{{ $dataProdi }}
                                            </option>
                                        @endforeach

                                    </select>
                                    @error('prodi')
                                        <p class="text-red-500 mt-2 text-sm">{{ $message }}</p>
                                    @enderror
                            </div>
                            <div>
                                <label for="kegiatan"
                                    class="block mb-2 text-sm font-medium text-gray-900">Kegiatan :
                                </label>
                                <select name="kegiatan"  class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 @error('kegiatan') border-red-500 @enderror" id="kegiatan">
                                    @foreach ($kegiatanDropdown as $daftarKegiatan)
                                            <option value="{{ $daftarKegiatan }}"
                                                {{ old('kegiatan') == $daftarKegiatan ? 'selected' : '' }}>
                                                {{ $daftarKegiatan }}</option>
                                        @endforeach
                                </select>
                            </div>
                            <div>
                                <label for="tanggal"
                                    class="block mb-2 text-sm font-medium text-gray-900">Tanggal :
                                </label>
                                <select id="tanggal" name="tanggal"
                                class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 @error('jadwal') border-red-500 @enderror">
                                <option selected>*pilih jadwal</option>
                                @foreach ($jadwalDropdown as $daftarJadwal)
                                    <option value="{{ $daftarJadwal }}"
                                        {{ old('jadwal') == $daftarJadwal ? 'selected' : '' }}>
                                        {{ $daftarJadwal }}</option>
                                @endforeach
                            </select>
                            </div>
                            <div>
                                <label for="sesi"
                                    class="block mb-2 text-sm font-medium text-gray-900">Sesi :
                                </label>
                                <select id="sesi" name="sesi"
                                        class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 @error('cekSlot') border-red-500 @enderror">
                                        <option selected>*pilih sesi</option>
                                        @foreach ($sesiDropdown as $daftarSesi)
                                            <option value="{{ $daftarSesi }}"
                                                {{ old('sesi') == $daftarSesi ? 'selected' : '' }}>{{ $daftarSesi }}
                                            </option>
                                        @endforeach
                                    </select>
                            </div>
                            <div>
                                <label for="lab"
                                    class="block mb-2 text-sm font-medium text-gray-900">Lab :
                                </label>
                                <select id="lab" name="lab"
                                        class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 @error('lab') border-red-500 @enderror"
                                        onchange="toggleSeats()">
                                        <option selected>*pilih lab</option>
                                        @foreach ($labDropdown as $value => $daftarLab)
                                            {{-- <option value="{{ $value }}"
                                                {{ old('lab') == $value ? 'selected' : '' }}>{{ $daftarLab }}
                                            </option> --}}
                                            <option value="{{$daftarLab}}">
                                               
                                                   {{$daftarLab}}
                                               
                                            </option>
                                        @endforeach
                                    </select>
                            </div>
                         

                            <button type="submit"
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
                            const dropdownLokasii = document.querySelectorAll('.dropdown-lokasi');
                            const selectedTextoo = document.getElementById('selectedText');

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

<script>
    document.getElementById('filterKegiatan').addEventListener('change', function() {
        const selectedKegiatan = this.value.toLowerCase();

        // Filter baris pada tabel
        document.querySelectorAll('.row-item').forEach(row => {
            const kegiatan = row.getAttribute('data-kegiatan').toLowerCase();
            if (selectedKegiatan === "" || kegiatan.includes(selectedKegiatan)) {
                row.style.display = "";
            } else {
                row.style.display = "none";
            }
        });

        // Filter kartu kegiatan
        document.querySelectorAll('.card-item').forEach(card => {
            const kegiatan = card.getAttribute('data-jadwal').toLowerCase();
            if (selectedKegiatan === "" || kegiatan.includes(selectedKegiatan)) {
                card.style.display = "";
            } else {
                card.style.display = "none";
            }
        });
    });
    document.getElementById('filterTanggal').addEventListener('change', function() {
        const selectedTanggal = this.value.toLowerCase();

        // Filter baris pada tabel
        document.querySelectorAll('.row-item').forEach(row => {
            const tanggal = row.getAttribute('data-tanggal').toLowerCase();
            if (selectedTanggal === "" || tanggal.includes(selectedTanggal)) {
                row.style.display = "";
            } else {
                row.style.display = "none";
            }
        });

        // Filter kartu kegiatan
        document.querySelectorAll('.card-item').forEach(card => {
            const kegiatan = card.getAttribute('data-kegiatan').toLowerCase();
            if (selectedKegiatan === "" || kegiatan.includes(selectedKegiatan)) {
                card.style.display = "";
            } else {
                card.style.display = "none";
            }
        });
    });
    document.getElementById('filterSesi').addEventListener('change', function() {
        const selectedSesi = this.value.toLowerCase()
        // Filter baris pada tabel
        document.querySelectorAll('.row-item').forEach(row => {
            const sesi = row.getAttribute('data-sesi').toLowerCase();
            if (selectedSesi === "" || sesi.includes(selectedSesi)) {
                row.style.display = "";
            } else {
                row.style.display = "none";
            }
        });

        // Filter kartu kegiatan
        document.querySelectorAll('.card-item').forEach(card => {
            const sesi = card.getAttribute('data-sesi').toLowerCase();
            if (selectedSesi === "" || kegiatan.includes(selectedSesi)) {
                card.style.display = "";
            } else {
                card.style.display = "none";
            }
        });
    });

    document.getElementById('filterLab').addEventListener('change', function() {
        const selectedLab = this.value.toLowerCase()
        // Filter baris pada tabel
        document.querySelectorAll('.row-item').forEach(row => {
            const sesi = row.getAttribute('data-lab').toLowerCase();
            if (selectedLab === "" || sesi.includes(selectedLab)) {
                row.style.display = "";
            } else {
                row.style.display = "none";
            }
        });

        // Filter kartu kegiatan
        document.querySelectorAll('.card-item').forEach(card => {
            const sesi = card.getAttribute('data-sesi').toLowerCase();
            if (selectedSesi === "" || kegiatan.includes(selectedSesi)) {
                card.style.display = "";
            } else {
                card.style.display = "none";
            }
        });
    });
</script>
