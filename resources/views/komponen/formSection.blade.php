<!-- Pendataan Section -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<section class="bg-white">
    <div class="grid grid-cols-1 lg:grid-cols-2" id="Pendataan">
        <div class="flex items-center justify-center px-4 py-10 sm:py-16 lg:py-24 bg-gray-300 sm:px-6 lg:px-8">
            <div class="w-full max-w-xl mx-auto xl:max-w-2xl">
                <img class="w-full mx-auto" src="{{ asset('/img/ukkUnipma.png') }}" alt="Logo" data-aos="fade-right" />
                <h3 class="text-2xl font-bold text-center text-black">Universitas PGRI Madiun</h3>
                <p class="leading-relaxed text-center text-gray-500 mt-2.5">Jl. Setia Budi No.85, Kanigoro, Kec.
                    Kartoharjo, Kota Madiun, Jawa Timur </p>
            </div>
        </div>

        <div class="flex items-center justify-center px-4 py-10 bg-white sm:px-6 lg:px-8 sm:py-16 lg:py-24">
            <div class="xl:w-full xl:max-w-2xl 2xl:max-w-2xl xl:mx-auto w-full">
                <h2 class="text-3xl font-bold leading-tight text-black sm:text-4xl">Form Input Posisi Lab</h2>
                <div
                    class="w-full max-w-xl p-4 bg-white border border-gray-200 rounded-lg shadow sm:p-6 md:p-8 mt-3">
                    <form action="{{ route('post-pendaftaran') }}" method="POST" class="mt-2">
                        @csrf
                        <div class="space-y-5">
                            <div>
                                <label for="fullName" class="text-base font-medium text-gray-900">Nama Lengkap:</label>
                                <div class="mt-2.5">
                                    <input type="text" name="nama" id="fullName" autocomplete="off"
                                        placeholder="Masukkan nama Lengkap"
                                        class="block w-full p-4 text-black placeholder-gray-500 transition-all duration-200 border border-gray-200 rounded-md bg-gray-50 focus:outline-none focus:border-blue-600 focus:bg-white caret-blue-600 @error('nama') border-red-500 @enderror"
                                        value="{{ Auth::user()->username }}" readonly/>

                                    @error('nama')
                                        <p class="text-red-500 mt-2 text-sm">{{ $message }}</p>
                                    @enderror
                                </div>
                            </div>

                            <div>
                                <label for="email" class="text-base font-medium text-gray-900">Email:</label>
                                <div class="mt-2.5">
                                    <input type="email" name="email" id="email" placeholder="Masukkan Email"
                                        autocomplete="off"
                                        class="block w-full p-4 text-black placeholder-gray-500 transition-all duration-200 border border-gray-200 rounded-md bg-gray-50 focus:outline-none focus:border-blue-600 focus:bg-white caret-blue-600 @error('email') border-red-500 @enderror"
                                        value="{{ Auth::user()->email }}" readonly />

                                    @error('email')
                                        <p class="text-red-500 mt-2 text-sm">{{ $message }}</p>
                                    @enderror
                                </div>
                            </div>

                            <div>
                                <label for="nim" class="text-base font-medium text-gray-900">NIM:</label>
                                <div class="mt-2.5">
                                    <input type="text" name="nim" id="nim" placeholder="Masukan Nomer Nim"
                                        autocomplete="off"
                                        class="block w-full p-4 text-black placeholder-gray-500 transition-all duration-200 border border-gray-200 rounded-md bg-gray-50 focus:outline-none focus:border-blue-600 focus:bg-white caret-blue-600 @error('nim') border-red-500 @enderror"
                                        value="{{ Auth::user()->nim }}" readonly />

                                    @error('nim')
                                        <p class="text-red-500 mt-2 text-sm">{{ $message }}</p>
                                    @enderror
                                </div>
                            </div>

                            <div>
                                <label for="kegiatan" class="text-base font-medium text-gray-900">Progam Studi</label>
                                <div class="mt-2.5">
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
                            </div>

                            <div>
                                <label for="kegiatan" class="text-base font-medium text-gray-900">Kegiatan Penggunaan
                                    LAB:</label>
                                <div class="mt-2.5">
                                    <select id="kegiatan" name="kegiatan"
                                        class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 @error('kegiatan') border-red-500 @enderror">

                                        <option selected>*pilih salah satu kegiatan</option>
                                        @foreach ($kegiatan as $daftarKegiatan)
                                            <option value="{{ $daftarKegiatan }}"
                                                {{ old('kegiatan') == $daftarKegiatan ? 'selected' : '' }}>
                                                {{ $daftarKegiatan }}</option>
                                        @endforeach
                                    </select>
                                    @error('kegiatan')
                                        <p class="text-red-500 mt-2 text-sm">{{ $message }}</p>
                                    @enderror
                                </div>
                            </div>

                            <div>
                                <label for="Tanggal" class="text-base font-medium text-gray-900">Tanggal Kegitan :
                                </label>
                                <div class="mt-2.5">
                                    <select id="jadwal" name="jadwal"
                                        class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 @error('jadwal') border-red-500 @enderror">
                                        <option selected>*pilih jadwal</option>
                                        @foreach ($jadwal as $daftarJadwal)
                                            <option value="{{ $daftarJadwal }}"
                                                {{ old('jadwal') == $daftarJadwal ? 'selected' : '' }}>
                                                {{ $daftarJadwal }}</option>
                                        @endforeach
                                    </select>
                                    @error('jadwal')
                                        <p class="text-red-500 mt-2 text-sm">{{ $message }}</p>
                                    @enderror
                                </div>
                            </div>

                            <div>
                                <label for="sesi" class="text-base font-medium text-gray-900">Sesi Kegiatan :
                                </label>
                                <div class="mt-2.5">
                                    <select id="sesi" name="sesi"
                                        class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 @error('cekSlot') border-red-500 @enderror">
                                        <option selected>*pilih sesi</option>
                                        @foreach ($sesi as $daftarSesi)
                                            <option value="{{ $daftarSesi }}"
                                                {{ old('sesi') == $daftarSesi ? 'selected' : '' }}>{{ $daftarSesi }}
                                            </option>
                                        @endforeach
                                    </select>
                                    @error('cekSlot')
                                        <p class="text-red-500 mt-2 text-sm">{{ $message }}</p>
                                    @enderror
                                </div>
                            </div>

                            <div>
                                <label for="lab" class="text-base font-medium text-gray-900">Lab:</label>
                                <div class="mt-2.5">
                                    <select id="lab" name="lab"
                                        class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 @error('lab') border-red-500 @enderror"
                                        onchange="toggleSeats()">
                                        <option selected>*pilih lab</option>
                                        @foreach ($lab as $value)
                                            {{-- <option value="{{ $value }}"
                                                {{ old('lab') == $value ? 'selected' : '' }}>{{ $daftarLab }}
                                            </option> --}}
                                            <option value="{{$value}}">
                                               
                                                   {{$value}}
                                               
                                            </option>
                                        @endforeach
                                    </select>
                                    @error('lab')
                                        <p class="text-red-500 mt-2 text-sm">{{ $message }}</p>
                                    @enderror
                                </div>
                            </div>
                            {{-- 
                            @foreach ($statusKursi as $jadwal => $sesiData)
                            <h3>Jadwal: {{ $jadwal }}</h3>
                            @foreach ($sesiData as $sesi => $data)
                                <p>Sesi: {{ $sesi }} - Status: {{ $data['status'] }} ({{ $data['kursi_tersedia'] }} kursi tersedia)</p>
                            @endforeach
                        @endforeach
                         --}}


                            <script>
                                function toggleSeats() {
                                    var selectedLab = $('#lab').val(); // Ambil value dari dropdown lab yang dipilih

                                    if (selectedLab) {
                                        $.ajax({
                                            url: '/getSeats', // URL yang dituju untuk mengambil data tempat duduk
                                            type: 'GET',
                                            data: {
                                                lab: selectedLab
                                            }, // Kirim data lab yang dipilih ke server
                                            success: function(data) {
                                                // Clear existing seats
                                                $('#seatsContainer .grid').empty();

                                                // Tampilkan tempat duduk yang tersedia dari respons server
                                                data.seats.forEach(function(seat) {
                                                    $('#seatsContainer .grid').append(`
                            <div class="w-10 h-10 bg-blue-500 text-white flex items-center justify-center rounded hover:bg-blue-600 cursor-pointer seat">${seat}</div>
                        `);
                                                });

                                                // Tampilkan container tempat duduk
                                                $('#seatsContainer').removeClass('hidden');

                                                // Re-bind event listener ke tempat duduk yang baru di-generate
                                                bindSeatSelection();
                                            }
                                        });
                                    }
                                }

                                // Bind ulang event listener setelah tempat duduk baru ditampilkan
                                function bindSeatSelection() {
                                    const seats = document.querySelectorAll('.seat');
                                    const selectedSeatInput = document.getElementById('selectedSeat');

                                    seats.forEach(seat => {
                                        seat.addEventListener('click', function() {
                                            seats.forEach(s => s.classList.remove('bg-red-500'));
                                            this.classList.add('bg-red-500');
                                            selectedSeatInput.value = this.textContent.trim();
                                        });
                                    });
                                }
                            </script>



                            <div>
                                <button type="submit"
                                    class="inline-flex items-center justify-center w-full px-4 py-4 text-base font-semibold text-white transition-all duration-200 bg-blue-600 border border-transparent rounded-md focus:outline-none hover:bg-blue-700 focus:bg-blue-700">
                                    Tambah Data
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

     {{-- popup jika slot kursi penuh--}}
     @if ($errors->has('cekSlot'))
     <div id="modal-cek-slot" tabindex="-1"
         class="fixed overflow-y-auto overflow-x-hidden inset-0 z-50 flex justify-center items-center bg-black bg-opacity-50">
         <div class="relative p-4 w-full max-w-md max-h-full">
             <div class="relative bg-white rounded-lg shadow">
                 <button type="button"
                     class="absolute top-3 end-2.5 text-gray-400 bg-transparent hover:bg-gray-200 hover:text-gray-900 rounded-lg text-sm w-8 h-8 ms-auto inline-flex justify-center items-center"
                     onclick="document.getElementById('modal-cek-slot').remove()">
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
                         {{ $errors->first('cekSlot') }}
                     </h3>
                     <button onclick="document.getElementById('modal-cek-slot').remove()"
                         class="text-white bg-red-600 hover:bg-red-800 focus:ring-4 focus:outline-none focus:ring-red-300 font-medium rounded-lg text-sm inline-flex items-center px-5 py-2.5 text-center">
                         OK
                     </button>
                 </div>
             </div>
         </div>
     </div>
 
     <script>
         setTimeout(() => {
             const modal = document.getElementById('modal-cek-slot');
             if (modal) {
                 modal.remove();
             }
         }, 5000); // Modal akan hilang setelah 5 detik
     </script>
 @endif
 
 {{-- akhir popup --}}
</section>
{{-- akhir pendataan section --}}
