@include('komponen.style')
@if (session('sesiHabis'))
    <div id="alert-popup" 
         class="fixed inset-0 flex items-center justify-center bg-gray-800 bg-opacity-50 z-50">
        <div class="bg-white rounded-lg shadow-lg p-6 max-w-sm w-full">
            <div class="flex items-center">
                <div class="flex-shrink-0 bg-red-100 p-3 rounded-full">
                    <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 text-red-600" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
                        <path stroke-linecap="round" stroke-linejoin="round" d="M9 12h6m-3 3v3m0-6V9m0 6h-6m12 0h-6m6 0V9m0 6H9m12 0v-6m0 6h-6m6 0h-6m6 0V9m0 6h-6m6 0v3m-6 0v-3" />
                    </svg>
                </div>
                <div class="ml-4">
                    <h3 class="text-lg font-medium text-gray-900">Sesi Habis</h3>
                    <p class="text-sm text-gray-600">{{ session('sesiHabis') }}</p>
                </div>
            </div>
            <div class="mt-4 text-right">
                <button onclick="closePopup()" 
                        class="bg-red-500 hover:bg-red-600 text-white font-medium px-4 py-2 rounded">
                    OK
                </button>
            </div>
        </div>
    </div>
@endif


<script>
    $(document).ready(function () {
        @if(session('sesiHabis'))
            $('#sessionModal').modal('show'); // Menampilkan modal saat halaman dimuat
        @endif
    });
</script>

<div id="dataLab" class="hidden">
    <div class="bg-blue-400 text-white p-4 flex items-center justify-center relative">
        <h1 class="text-xl font-bold text-center">Sistem Pendataan Penggunaan Laboratorium UNIPMA</h1>
    </div>
    <div class="flex justify-end mb-4 mt-6">
    </div>
    <div class="p-5 text-3xl font-semibold text-center text-gray-900 bg-white ">
        Daftar Lab
    </div>
    <div class="flex justify-end mb-4 mt-6">
        <div>
            <button data-modal-target="modal-tambah-lab" data-modal-toggle="modal-tambah-lab"
                class="block text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center"
                type="button">
                <i class="fas fa-plus"></i> <!-- Ikon Font Awesome Plus -->
            </button>
        </div>
    </div>

    {{-- modal tambah lab --}}
    <div id="modal-tambah-lab" tabindex="-1"
        aria-hidden="true"
        class="hidden overflow-y-auto overflow-x-hidden fixed top-0 right-0 left-0 z-50 justify-center items-center w-full md:inset-0 h-[calc(100%-1rem)] max-h-full">
        <div class="relative p-4 w-full max-w-md max-h-full">
            <!-- Modal content -->
            <div class="relative bg-white rounded-lg shadow ">
                <!-- Modal header -->
                <div
                    class="flex items-center justify-between p-4 md:p-5 border-b rounded-t ">
                    <h3 class="text-xl font-semibold text-gray-900 ">
                        Tambah lab
                    </h3>
                    <button type="button"
                        class="end-2.5 text-gray-400 bg-transparent hover:bg-gray-200 hover:text-gray-900 rounded-lg text-sm w-8 h-8 ms-auto inline-flex justify-center items-center  "
                        data-modal-hide="authentication-modal-user-edit3">
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
                    <form class="space-y-4" action="{{route('tambah-lab')}}" method="POST">
                        @csrf
                       
                        <div>
                            <label for="lab"
                                class="block mb-2 text-sm font-medium text-gray-900 ">Nama
                                Lab : </label>
                            <input id="lab" type="text" name="NamaLab"
                                class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5"
                                 autocomplete="off" required/>
                        </div>
                        <div>
                            <label for="slotKursi" 
                                class="block mb-2 text-sm font-medium text-gray-900">Jummlah
                                kursi : </label>
                            <input id="slotKursi" type="number"  name="JumlahKursi"
                                class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5"
                                required autocomplete="off" required/>
                        </div>

                        <div>
                            <label for="status"
                                class="block mb-2 text-sm font-medium text-gray-900">Status
                                lab : </label>
                            <select name="status"
                                class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5">
                                <option value="aktif">aktif</option>
                                <option value="non aktif">non aktif</option>
                            </select>
                        </div>

                        <button type="submit"
                            class="w-full text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center ">Tambah Data</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    {{-- akhir modal tambah lab --}}
    

    <div class="relative overflow-x-auto shadow-md sm:rounded-lg">
        <table class="w-full text-sm text-left rtl:text-right text-gray-500">
            <thead class="text-xs text-gray-700 uppercase bg-gray-50">
                <tr>
                    <th scope="col" class="px-6 py-3 text-center">
                        No
                    </th>
                    <th scope="col" class="px-6 py-3">
                        Nama Lab
                    </th>
                    <th scope="col" class="px-6 py-3 text-center">
                        Jumlah kursi
                    </th>
                    <th scope="col" class="px-6 py-3 text-center">
                        Status
                    </th>

                    <th scope="col" class="px-6 py-3 text-center">
                        Action
                    </th>
                </tr>
            </thead>
            <tbody>
                @foreach ($lab as $dataLab)
                    <tr
                        class="odd:bg-white  even:bg-gray-50  border-b ">
                        <th class="px-6 py-4 text-center">
                            {{ $loop->iteration}}
                        </th>
                        <th scope="row"
                            class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap">
                            {{ $dataLab->nama_lab }}
                        </th>
                        <td class="px-6 py-4 text-center">
                            {{ $dataLab['slot-kursi'] }}
                        </td>
                        <td class="px-6 py-4 text-center">
                            {{ $dataLab['status'] }}
                        </td>

                        <td class="px-6 py-4 flex space-x-2 justify-center">
                            <div class="flex space-x-2  ">
                                <button data-modal-target="authentication-modal-user-lab{{ $dataLab->id }}"
                                    data-modal-toggle="authentication-modal-user-lab{{ $dataLab->id }}">
                                    <i class="fas fa-edit"></i><!-- Font Awesome 6 -->
                                </button>
                                <button data-modal-target="modal-hapus-lab{{ $dataLab->id }}"
                                    data-modal-toggle="modal-hapus-lab{{ $dataLab->id }}">
                                    <i class="fas fa-trash-alt"></i><!-- Font Awesome 6 -->
                                </button>

                                {{-- modal hapus lab --}}
                                <div id="modal-hapus-lab{{ $dataLab->id }}" tabindex="-1"
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
                                                <form action="{{ route('delete-lab',$dataLab->id) }}" method="POST">
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
                                                    Apakah kamu yakin untuk menghapus  {{ $dataLab->nama_lab }}</h3>
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
                                {{-- akhir modal --}}

                                <!-- Main modal -->
                                <div id="authentication-modal-user-lab{{ $dataLab->id }}" tabindex="-1"
                                    aria-hidden="true"
                                    class="hidden overflow-y-auto overflow-x-hidden fixed top-0 right-0 left-0 z-50 justify-center items-center w-full md:inset-0 h-[calc(100%-1rem)] max-h-full">
                                    <div class="relative p-4 w-full max-w-md max-h-full">
                                        <!-- Modal content -->
                                        <div class="relative bg-white rounded-lg shadow ">
                                            <!-- Modal header -->
                                            <div
                                                class="flex items-center justify-between p-4 md:p-5 border-b rounded-t ">
                                                <h3 class="text-xl font-semibold text-gray-900 ">
                                                    Edit lab
                                                </h3>
                                                <button type="button"
                                                    class="end-2.5 text-gray-400 bg-transparent hover:bg-gray-200 hover:text-gray-900 rounded-lg text-sm w-8 h-8 ms-auto inline-flex justify-center items-center  "
                                                    data-modal-hide="authentication-modal-user-edit3">
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
                                                <form class="space-y-4" action="{{ route('edit-lab',$dataLab->id) }}" method="POST">
                                                    @csrf
                                                    @method('PUT')
                                                    <div>
                                                        <label for="lab"
                                                            class="block mb-2 text-sm font-medium text-gray-900 ">Nama
                                                            Lab : </label>
                                                        <input id="lab" type="text" name="lab"
                                                            class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5"
                                                            value="{{ $dataLab->nama_lab }}" />
                                                    </div>
                                                    <div>
                                                        <label for="slotKursi" 
                                                            class="block mb-2 text-sm font-medium text-gray-900">Slot
                                                            kursi : </label>
                                                        <input id="slotKursi" type="number"  name="slotKursi"
                                                            class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5"
                                                            value="{{ $dataLab['slot-kursi'] }}" required />
                                                    </div>

                                                    <div>
                                                        <label for="status"
                                                            class="block mb-2 text-sm font-medium text-gray-900">Status
                                                            lab : </label>
                                                        <select name="status"
                                                            class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5">
                                                            <option value="aktif" {{ $dataLab->status == 'aktif' ? 'selected' : '' }}>aktif</option>
                                                            <option value="non aktif" {{ $dataLab->status == 'non aktif' ? 'selected' :'' }}>non aktif</option>
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
                        </td>
                    </tr>
                @endforeach
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
                 <svg class="mx-auto mb-4 text-gray-400 w-12 h-12"
                     aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none"
                     viewBox="0 0 20 20">
                     <path stroke="currentColor" stroke-linecap="round"
                         stroke-linejoin="round" stroke-width="2"
                         d="M10 11V6m0 8h.01M19 10a9 9 0 1 1-18 0 9 9 0 0 1 18 0Z" />
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
