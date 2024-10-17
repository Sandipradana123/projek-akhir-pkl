<button data-drawer-target="default-sidebar" data-drawer-toggle="default-sidebar" aria-controls="default-sidebar" type="button" class="inline-flex items-center p-2 mt-2 ms-3 text-sm text-gray-500 rounded-lg sm:hidden hover:bg-gray-100 focus:outline-none focus:ring-2 focus:ring-gray-200 dark:text-gray-400 dark:hover:bg-gray-700 dark:focus:ring-gray-600">
    <span class="sr-only">Open sidebar</span>
    <svg class="w-6 h-6" aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
        <path clip-rule="evenodd" fill-rule="evenodd" d="M2 4.75A.75.75 0 012.75 4h14.5a.75.75 0 010 1.5H2.75A.75.75 0 012 4.75zm0 10.5a.75.75 0 01.75-.75h7.5a.75.75 0 010 1.5h-7.5a.75.75 0 01-.75-.75zM2 10a.75.75 0 01.75-.75h14.5a.75.75 0 010 1.5H2.75A.75.75 0 012 10z"></path>
    </svg>
</button>
<aside id="default-sidebar" class="fixed top-0 left-0 z-40 w-64 h-screen transition-transform -translate-x-full sm:translate-x-0" aria-label="Sidebar">
    <div class="h-full px-3 py-4 overflow-y-auto bg-gray-50 dark:bg-gray-800">
        <ul class="space-y-2 font-medium">
            <li>
                <a href="#dashboard" class="flex items-center p-2 text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700 group" onclick="showContent('dashboard')">
                    <i class="fas fa-home"></i> <!-- Home -->

                    <span class="flex-1 ms-3 whitespace-nowrap">Dashboard</span>
                </a>
            </li>
            <li>
                <a href="#dataLab"
                    class="flex items-center p-2 text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700 group"
                    onclick="showContent('dataLab')">
                    <i class="fas fa-door-open w-6 h-6 text-gray-800 dark:text-white"></i> <!-- Ikon Pintu Terbuka -->
                    <span class="flex-1 ms-3 whitespace-nowrap">Data Lab</span>
                </a>
                <a href="#dataSesi"
                    class="flex items-center p-2 text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700 group"
                    onclick="showContent('dataSesi')">
                    <i class="fas fa-bell w-6 h-6 text-gray-800 dark:text-white"></i> <!-- Ikon Pintu Terbuka -->
                    <span class="flex-1 ms-3 whitespace-nowrap">Data Sesi</span>
                </a>
                <a href="#dataKegiatan"
                    class="flex items-center p-2 text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700 group"
                    onclick="showContent('dataKegiatan')">
                    <i class="fas fa-tasks"></i> <!-- Daftar Kegiatan -->
                    <span class="flex-1 ms-3 whitespace-nowrap">Data Kegiatan</span>
                </a>
            </li>
            <li>
                <a href="#dataTanggal"
                    class="flex items-center p-2 text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700 group"
                    onclick="showContent('dataTanggal')">
                    <i class="fas fa-calendar-alt"></i> <!-- Calendar -->
                    <span class="flex-1 ms-3 whitespace-nowrap">Data Tanggal</span>
                </a>
            </li>
            <li>
                <a href="#dataKegiatanakhir"
                    class="flex items-center p-2 text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700 group"
                    onclick="showContent('dataKegiatanakhir')">
                    <i class="fas fa-map-marker-alt"></i> <!-- Lokasi -->

                    <span class="flex-1 ms-3 whitespace-nowrap">Data fix Kegiatan</span>
                </a>
            </li>
            <li>
                <a href="#dataUser"
                    class="flex items-center p-2 text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700 group"
                    onclick="showContent('dataUser')">
                    <i class="fas fa-users"></i> <!-- Group of Users -->
                    <span class="flex-1 ms-3 whitespace-nowrap">Data User</span>
                </a>
            </li>
            <li>
                <a href="#dataAdmin"
                    class="flex items-center p-2 text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700 group"
                    onclick="showContent('dataAdmin')">
                    <i class="fas fa-user-shield"></i> <!-- Admin -->
                    <span class="flex-1 ms-3 whitespace-nowrap">Data Admin</span>
                </a>
            </li>
            <li>
                <a href="#tabelJadwal"
                    class="flex items-center p-2 text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700 group"
                    onclick="showContent('tabelJadwal')">
                    <i class="fas fa-calendar-check"></i> <!-- Jadwal Selesai -->
                    <span class="flex-1 ms-3 whitespace-nowrap">Tabel Jadwal</span>
                </a>
            </li>
            <li>
                <a href="#logout"
                    class="flex items-center p-2 text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700 group"
                    onclick="showPopup()">
                    <i class="fas fa-sign-out-alt"></i> <!-- Logout -->

                    <span class="flex-1 ms-3 whitespace-nowrap">Logout</span>
                </a>
            </li>
        </ul>
    </div>
</aside>


<!-- js untuk mengatur menu ketika active -->
<script>
    document.addEventListener("DOMContentLoaded", function() {
        const activeMenu = localStorage.getItem('activeMenu');
        if (activeMenu) {
            showContent(activeMenu);
        }
    });

    function showContent(menuId) {
        // Simpan menu yang dipilih ke localStorage
        localStorage.setItem('activeMenu', menuId);

        // Sembunyikan semua konten
        document.querySelectorAll('#content > div').forEach(content => {
            content.classList.add('hidden');
        });

        // Tampilkan konten yang sesuai dengan menuId
        const selectedContent = document.getElementById(menuId);
        if (selectedContent) {
            selectedContent.classList.remove('hidden');
        }

        // Hapus kelas aktif dari semua menu
        document.querySelectorAll('.flex.items-center').forEach(link => {
            link.classList.remove('bg-gray-100', 'dark:bg-gray-700');
        });

        // Tambahkan kelas aktif pada menu yang dipilih
        const selectedLink = document.querySelector(`a[href="#${menuId}"]`);
        if (selectedLink) {
            selectedLink.classList.add('bg-gray-100', 'dark:bg-gray-700');
        }
    }

    function showPopup() {
        document.getElementById("popup").classList.remove("hidden");
    }

    function closePopup() {
        document.getElementById("popup").classList.add("hidden");
    }

    function confirmLogout() {
        localStorage.removeItem('activeMenu');
        document.getElementById("popup").classList.add("hidden");
    }
</script>