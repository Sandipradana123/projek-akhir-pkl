@include('komponen.style')
<div id="lab1">
    <p>Ini adalah konten untuk Lab 1.</p>
</div>
<div id="tabelJadwal" class="hidden">
    <div class="bg-blue-400 text-white p-4 flex items-center justify-center relative">
        <h1 class="text-xl font-bold text-center">Sistem Pendataan Penggunaan Laboratorium UNIPMA</h1>
    </div>

    <div class="flex flex-wrap mt-3" id="cardContainer">
        @foreach ($kegiatan as $daftarKegiatan)
            <div id="firstCard"
                class="max-w-sm p-6 bg-white border border-gray-200 rounded-lg shadow dark:bg-gray-800 dark:border-gray-700 m-2">
                <a href="#">
                    <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">
                        {{ $daftarKegiatan['daftar-kegiatan'] }}</h5>
                </a>
                <p class="mb-3 font-normal text-gray-700 dark:text-gray-400">{{ $daftarKegiatan->tanggal }}</p>
                <button onclick="showMore()"
                    class="inline-flex items-center px-3 py-2 text-sm font-medium text-center text-white bg-blue-700 rounded-lg hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">
                    <i class="fas fa-eye"></i>
                </button>
            </div>
        @endforeach
    </div>




    <div id="moreContent" class="hidden mt-4">
        @foreach ($lab as $daftarLab)
            <div class="flex gap-2">
                <div
                    class="max-w-sm p-6 bg-white border border-gray-200 rounded-lg shadow dark:bg-gray-800 dark:border-gray-700">
                    <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">
                        {{ $daftarLab['nama-lab'] }}</h5>
                    <p class="mb-3 font-normal text-gray-700 dark:text-gray-400">Kampus 1 Lantai 3</p>
                    <p class="mb-3 font-normal text-gray-700 dark:text-gray-400">Total Peserta : 240</p>
                    <button onclick="showTable()"
                        class="inline-flex items-center px-3 py-2 text-sm font-medium text-center text-white bg-blue-700 rounded-lg hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">

                        <i class="fas fa-eye"></i>
                    </button>
                    <button onclick="showBackFromMore()"
                        class="inline-flex items-center px-3 py-2 text-sm font-medium text-center text-white bg-gray-600 rounded-lg hover:bg-gray-700 focus:ring-4 focus:outline-none focus:ring-gray-300 dark:bg-gray-500 dark:hover:bg-gray-600 dark:focus:ring-gray-400 mt-2">
                        <i class="fas fa-arrow-left"></i>
                    </button>
                </div>
            </div>
        @endforeach
    </div>


    <!-- Tabel Informasi -->
    <div id="tableContent" class="hidden mt-6">
        <h1 class="text-3xl font-bold mb-4 text-center">Tabel Informasi</h1>
        <button onclick="showBackFromTable()"
            class="mt-4 inline-flex items-center px-3 py-2 text-sm font-medium text-center text-white bg-gray-600 rounded-lg hover:bg-gray-700 focus:ring-4 focus:outline-none focus:ring-gray-300 dark:bg-gray-500 dark:hover:bg-gray-600 dark:focus:ring-gray-400 mb-6">
            Kembali
        </button>

        <form action="{{ url('/export-jadwal') }}" method="GET" >
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
                <button type="submit" class="block text-white bg-blue-700 hover:bg-blue-800 font-medium rounded-lg text-sm px-5 py-2.5">Export to Excel</button>
            </div>
            
           
        </div>
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
                    @foreach ($labKomp1 as $lab1)
                        <tr class="row-item odd:bg-white odd:dark:bg-gray-900 even:bg-gray-50 even:dark:bg-gray-800 border-b dark:border-gray-700"
                        data-kegiatan="{{ $lab1->kegiatan }}"
                        data-tanggal="{{ $lab1->jadwal }}"
                        data-sesi="{{ $lab1->sesi }}">
                            <th class="px-6 py-4">{{ $lab1->id }}</th>
                            <th class="px-6 py-4">{{ $lab1->nama }}</th>
                            <td class="px-6 py-4 truncate max-w-[100px]">{{ $lab1->email }}</td>
                            <td class="px-6 py-4">{{ $lab1->nim }}</td>
                            <td class="px-6 py-4">{{ $lab1['progam-studi'] }}</td>
                            <td class="px-6 py-4">{{ $lab1->kegiatan }}</td>
                            <td class="px-6 py-4">{{ $lab1->jadwal }}</td>
                            <td class="px-6 py-4">{{ $lab1->sesi }}</td>
                            <td class="px-6 py-4 flex space-x-2">
                                <button
                                    class="block text-white bg-blue-700 hover:bg-blue-800 font-medium rounded-lg text-sm px-5 py-2.5">
                                    Edit
                                </button>
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
</div>

<script>
    



    window.onload = function() {
        const showTable = localStorage.getItem('showTable');
        const showMoreContent = localStorage.getItem('showMoreContent');

        if (showTable === 'true') {
            document.getElementById('cardContainer').classList.add('hidden');
            document.getElementById('tableContent').classList.remove('hidden');
        } else if (showMoreContent === 'true') {
            document.getElementById('cardContainer').classList.add('hidden');
            document.getElementById('moreContent').classList.remove('hidden');
        }
    };

    function showMore() {
        localStorage.setItem('showMoreContent', 'true'); // Simpan status di localStorage
        const cardContainer = document.getElementById('cardContainer');
        const moreContent = document.getElementById('moreContent');

        cardContainer.classList.add('hidden');
        moreContent.classList.remove('hidden');
    }

    function showTable() {
        localStorage.setItem('showTable', 'true'); // Simpan status di localStorage
        localStorage.removeItem('showMoreContent'); // Hapus status dari localStorage
        const moreContent = document.getElementById('moreContent');
        const tableContent = document.getElementById('tableContent');

        moreContent.classList.add('hidden');
        tableContent.classList.remove('hidden');
    }

    function showBackFromMore() {
        localStorage.removeItem('showMoreContent'); // Hapus status dari localStorage
        const cardContainer = document.getElementById('cardContainer');
        const moreContent = document.getElementById('moreContent');

        cardContainer.classList.remove('hidden');
        moreContent.classList.add('hidden');
    }

    function showBackFromTable() {
        localStorage.removeItem('showTable'); // Hapus status dari localStorage
        const cardContainer = document.getElementById('cardContainer');
        const moreContent = document.getElementById('moreContent');
        const tableContent = document.getElementById('tableContent');

        cardContainer.classList.remove('hidden');
        moreContent.classList.add('hidden');
        tableContent.classList.add('hidden');
    }

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
