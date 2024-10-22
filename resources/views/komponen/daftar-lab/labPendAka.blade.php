@include('komponen.style')
<div id="subMenu4" class="hidden">
    <div class="bg-blue-400 text-white p-4 flex items-center justify-center relative">
        <h1 class="text-xl font-bold text-center">Sistem Pendataan Penggunaan Laboratorium UNIPMA</h1>
    </div>
        <h1 class="text-3xl font-bold mb-4 mt-10 text-center">Lab pendidikan akutansi</h1>
        <button onclick="showBackFromTable()"
            class="mt-4 inline-flex items-center px-3 py-2 text-sm font-medium text-center text-white bg-gray-600 rounded-lg hover:bg-gray-700 focus:ring-4 focus:outline-none focus:ring-gray-300 dark:bg-gray-500 dark:hover:bg-gray-600 dark:focus:ring-gray-400 mb-6">
            <i class="fas fa-arrow-left"></i>

        </button>

        <form action="{{ route('export.labPendAka') }}" method="GET" >
        <div class="flex gap-12">
            <div class="flex  items-center mb-4">
                <label for="filterKegiatan" class="mr-2 text-sm font-medium text-gray-700">Kegiatan:</label>
                <select id="filterKegiatan" class="border border-gray-300 text-sm rounded-lg p-2" name="kegiatan">
                    <option value="">Semua</option>
                    @foreach ($kegiatan as $daftarKegiatan)
                        <option value="{{ $daftarKegiatan['daftar-kegiatan'] }}">
                            {{ $daftarKegiatan['daftar-kegiatan'] }}</option>
                    @endforeach
                </select>
            </div>
            <div class="flex items-center mb-4">
                <label for="filterTanggal" class="mr-2 text-sm font-medium text-gray-700">Jadwal</label>
                <select id="filterTanggal" class="border border-gray-300 text-sm rounded-lg p-2" name="tanggal">
                    <option value="">Semua</option>
                    @foreach ($jadwal as $daftarTanggal)
                        <option value="{{ $daftarTanggal['daftar-jadwal'] }}">
                            {{ $daftarTanggal['daftar-jadwal'] }}</option>
                    @endforeach
                </select>
            </div>
            <div class="flex items-center mb-4">
                <label for="filterSesi" class="mr-2 text-sm font-medium text-gray-700">Sesi</label>
                <select id="filterSesi" class="border border-gray-300 text-sm rounded-lg p-2" name="sesi">
                    <option value="">Semua</option>
                    @foreach ($sesi as $daftarSesi)
                        <option value="{{ $daftarSesi['daftar-sesi'] }}">
                            {{ $daftarSesi['daftar-sesi'] }}</option>
                    @endforeach
                </select>
            </div>
            <div class="flex items-center mb-4">
                <button type="submit" class="block text-white bg-blue-700 hover:bg-blue-800 font-medium rounded-lg text-sm px-5 py-2.5"><i class="fa-solid fa-arrow-right-from-bracket"></i>
                </button>
            </div>
        </div>
        @if (session('dataErrorPendAka'))
    <div id="alert" class="bg-red-500 text-white p-4 rounded-lg mb-4">
        {{ session('dataErrorPendAka') }}
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
            <table class="w-full text-xs text-left rtl:text-right text-gray-500 dark:text-gray-400">
                <thead class="text-xs text-gray-700 uppercase bg-gray-50 dark:bg-gray-700 dark:text-gray-400">
                    <tr>
                        <th scope="col" class="px-6 py-3">No</th>
                        <th scope="col" class="px-6 py-3">Nama</th>
                        <th scope="col" class="px-6 py-3">Email</th>
                        <th scope="col" class="px-6 py-3">NIM</th>
                        <th scope="col" class="px-6 py-3">Prodi</th>
                        <th scope="col" class="px-6 py-3">Kegiatan</th>
                        <th scope="col" class="px-6 py-3">Tanggal</th>
                        <th scope="col" class="px-6 py-3">Sesi</th>
                        <th scope="col" class="px-6 py-3">Action</th>
                    </tr>
                </thead>
                <tbody>
                    @php
                        $no = ($labAka1->currentPage() - 1) * $labAka1->perPage() + 1
                    @endphp
                    @foreach ($labAka1 as $lab1)
                        <tr class="row-item odd:bg-white odd:dark:bg-gray-900 even:bg-gray-50 even:dark:bg-gray-800 border-b dark:border-gray-700"
                        data-kegiatan="{{ $lab1->kegiatan }}"
                        data-tanggal="{{ $lab1->jadwal }}"
                        data-sesi="{{ $lab1->sesi }}">
                            <th class="px-6 py-4">{{ $no++ }}</th>
                            <th class="px-6 py-4">{{ $lab1->nama }}</th>
                            <td class="px-6 py-4 truncate max-w-[100px]">{{ $lab1->email }}</td>
                            <td class="px-6 py-4">{{ $lab1->nim }}</td>
                            <td class="px-6 py-4">{{ $lab1['progam-studi'] }}</td>
                            <td class="px-6 py-4">{{ $lab1->kegiatan }}</td>
                            <td class="px-6 py-4">{{ $lab1->jadwal }}</td>
                            <td class="px-6 py-4">{{ $lab1->sesi }}</td>
                            <td class="px-6 py-4 flex space-x-2">
                                <button
                                    >
                                    <i class="fas fa-edit"></i><!-- Font Awesome 6 -->
                                </button>
                            </td>
                        </tr>
                    @endforeach
                    <div class="mt-4 mb-5">
                        {{ $labAka1->onEachSide(1)->links() }}
                    </div>
                </tbody>
            </table>
      
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
</script>

