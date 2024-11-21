<button data-drawer-target="default-sidebar" data-drawer-toggle="default-sidebar" aria-controls="default-sidebar" type="button" class="inline-flex items-center p-2 mt-2 ms-3 text-sm text-gray-500 rounded-lg sm:hidden hover:bg-gray-100 focus:outline-none focus:ring-2 focus:ring-gray-200 dark:text-gray-400 dark:hover:bg-gray-700 dark:focus:ring-gray-600">
    <span class="sr-only">Open sidebar</span>
    <svg class="w-6 h-6" aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
        <path clip-rule="evenodd" fill-rule="evenodd" d="M2 4.75A.75.75 0 012.75 4h14.5a.75.75 0 010 1.5H2.75A.75.75 0 012 4.75zm0 10.5a.75.75 0 01.75-.75h7.5a.75.75 0 010 1.5h-7.5a.75.75 0 01-.75-.75zM2 10a.75.75 0 01.75-.75h14.5a.75.75 0 010 1.5H2.75A.75.75 0 012 10z"></path>
    </svg>
</button>
<aside id="default-sidebar" class="fixed top-0 left-0 z-40 w-64 h-screen transition-transform -translate-x-full sm:translate-x-0" aria-label="Sidebar">
    <div class="h-full px-3 py-4 overflow-y-auto bg-gray-50 ">
        <ul class="space-y-2 font-medium">
            <li>
                <a a href="#dashboard" class="flex items-center p-2 text-gray-900 rounded-lg text-black  group" onclick="showContent('dashboard')">
                    <i class="fas fa-home"></i> <!-- Home -->

                    <span class="flex-1 ms-3 whitespace-nowrap">Dashboard</span>
                </a>
            </li>
            <li>
                <a href="#dataLab"
                    class="flex items-center p-2 text-gray-900 rounded-lg text-black  group"
                    onclick="showContent('dataLab')">
                    <i class="fas fa-door-open w-6 h-6 text-gray-800 text-black"></i> <!-- Ikon Pintu Terbuka -->
                    <span class="flex-1 ms-3 whitespace-nowrap">Data Lab</span>
                </a>
                <a href="#dataSesi"
                    class="flex items-center p-2 text-gray-900 rounded-lg text-black   group"
                    onclick="showContent('dataSesi')">
                    <i class="fas fa-bell w-6 h-6 text-gray-800 text-black"></i> <!-- Ikon Pintu Terbuka -->
                    <span class="flex-1 ms-3 whitespace-nowrap">Data Sesi</span>
                </a>
                <a href="#dataKegiatan"
                    class="flex items-center p-2 text-gray-900 rounded-lg text-black   group"
                    onclick="showContent('dataKegiatan')">
                    <i class="fas fa-tasks"></i> <!-- Daftar Kegiatan -->
                    <span class="flex-1 ms-3 whitespace-nowrap">Data Kegiatan</span>
                </a>
            </li>
            <li>
                <a href="#dataTanggal"
                    class="flex items-center p-2 text-gray-900 rounded-lg text-black  group"
                    onclick="showContent('dataTanggal')">
                    <i class="fas fa-calendar-alt"></i> <!-- Calendar -->
                    <span class="flex-1 ms-3 whitespace-nowrap">Data Tanggal</span>
                </a>
            </li>
            <li>
                <a href="#dataUser"
                    class="flex items-center p-2 text-gray-900 rounded-lg text-black   group"
                    onclick="showContent('dataUser')">
                    <i class="fas fa-users"></i> <!-- Group of Users -->
                    <span class="flex-1 ms-3 whitespace-nowrap">Data User</span>
                </a>
            </li>
            <li>
                <a href="#dataAdmin"
                    class="flex items-center p-2 text-gray-900 rounded-lg text-black  group"
                    onclick="showContent('dataAdmin')">
                    <i class="fas fa-user-shield"></i> <!-- Admin -->
                    <span class="flex-1 ms-3 whitespace-nowrap">Data Admin</span>
                </a>
            </li>
            <li>
            

                    <a href="#tabelJadwal"
        class="flex items-center p-2 text-gray-900 rounded-lg text-black "
        onclick="toggleDropdown('dropdownTabelJadwal')">
        <svg class="w-6 h-6 text-gray-800 text-black" aria-hidden="true"
            xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor"
            viewBox="0 0 24 24">
            <path fill-rule="evenodd"
                d="M2 6a2 2 0 0 1 2-2h16a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2V6Zm2 8v-2h7v2H4Zm0 2v2h7v-2H4Zm9 2h7v-2h-7v2Zm7-4v-2h-7v2h7Z"
                clip-rule="evenodd" />
        </svg>
        <span class="flex-1 ms-3 whitespace-nowrap">Tabel Jadwal</span>
        <svg class="w-4 h-4 ml-2" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 16 16">
            <path fill-rule="evenodd" d="M1.5 5.5a.5.5 0 0 1 .5-.5h12a.5.5 0 0 1 0 1h-12a.5.5 0 0 1-.5-.5z"/>
            <path fill-rule="evenodd" d="M1.5 8a.5.5 0 0 1 .5-.5h12a.5.5 0 0 1 0 1h-12a.5.5 0 0 1-.5-.5z"/>
            <path fill-rule="evenodd" d="M1.5 10.5a.5.5 0 0 1 .5-.5h12a.5.5 0 0 1 0 1h-12a.5.5 0 0 1-.5-.5z"/>
        </svg>
    </a>
    <ul id="dropdownTabelJadwal" class="hidden space-y-2 mt-2">
        <li>
            <a href="#subMenu1" class="flex items-center p-2 text-black rounded-lg text-black   group" onclick="showContent('subMenu1')">Lab upt komputer 1</a>
        </li>
        <li>
            <a href="#tabelJadwal" class="flex items-center p-2 text-black rounded-lg text-black  group" onclick="showContent('subMenu2')">Lab upt komputer 2</a>
        </li>
        <li>
            <a href="#tabelLabMtk" class="flex items-center p-2 text-black rounded-lg text-black  group" onclick="showContent('subMenu3')">Lab matematika</a>
        </li>
        <li>
            <a href="#tabelPendidikanAkutansi" class="flex items-center p-2 text-black rounded-lg text-black hover:bg-gray-100  group" onclick="showContent('subMenu4')">Lab pendidikan akutansi</a>
        </li>
        <li>
            <a href="#tabelTeknikInformatika" class="flex items-center p-2 text-black rounded-lg text-black  group" onclick="showContent('subMenu5')">Lab Teknik informatika</a>
        </li>
        <li>
            <a href="#tabelFeb" class="flex items-center p-2 text-black rounded-lg text-black  group" onclick="showContent('subMenu6')">Lab Feb</a>
        </li>
        <li>
            <a href="#tabelTeknikIndustri" class="flex items-center p-2 text-black rounded-lg text-black  group" onclick="showContent('subMenu7')">Lab Teknik industri</a>
        </li>
        <li>
            <a href="#tabelSistemInformasi" class="flex items-center p-2 text-black rounded-lg text-black group" onclick="showContent('subMenu8')">Lab sistem informasi</a>
        </li>
        <li>
            <a href="#tabelAkutansi" class="flex items-center p-2 text-black rounded-lg text-black  group" onclick="showContent('subMenu9')">Lab akutansi</a>
        </li>
        
    </ul>

    <script>
         document.addEventListener("DOMContentLoaded", function() {
    const activeMenu = localStorage.getItem('activeMenu');
    const activeDropdown = localStorage.getItem('activeDropdown');

    if (activeDropdown) {
        document.getElementById(activeDropdown).classList.remove('hidden');
    }

    if (activeMenu) {
        showContent(activeMenu);
    }
});

        function showContent(menuId) {
    localStorage.setItem('activeMenu', menuId);
    document.querySelectorAll('#content > div').forEach(content => {
        content.classList.add('hidden');
    });

    const selectedContent = document.getElementById(menuId);
    if (selectedContent) {
        selectedContent.classList.remove('hidden');
    }

    document.querySelectorAll('.flex.items-center').forEach(link => {
        link.classList.remove('bg-gray-100', 'dark:bg-blue-200');
    });

    const selectedLink = document.querySelector(`a[href="#${menuId}"]`);
    if (selectedLink) {
        selectedLink.classList.add('bg-gray-100', 'dark:bg-blue-200');
    }

    const dropdownId = selectedLink.closest('ul') ? selectedLink.closest('ul').id : null;
    if (dropdownId) {
        localStorage.setItem('activeDropdown', dropdownId);
    }
}

function toggleDropdown(dropdownId) {
    const dropdown = document.getElementById(dropdownId);
    dropdown.classList.toggle('hidden');

    if (!dropdown.classList.contains('hidden')) {
        localStorage.setItem('activeDropdown', dropdownId);
    } else {
        localStorage.removeItem('activeDropdown');
    }
} 
    </script>

    
                
                    <!-- Dropdown yang tersembunyi -->
                    <div id="dropdownLab" class="hidden mt-2 space-y-2 pl-4">
                        <a href="#lab1" class="block">Lab 1</a>
                        <a href="#lab2" class="block">Lab 2</a>
                        <a href="#lab3" class="block">Lab 3</a>
                    </div>

                
                <script>
                    function toggleDropdown(id) {
                        const dropdown = document.getElementById(id);
                        const icon = document.getElementById('iconDropdown');
                
                        // Toggle visibility
                        dropdown.classList.toggle('hidden');
                
                        // Rotate icon when dropdown is visible
                        icon.classList.toggle('rotate-180');
                    }
                </script>
                
            </li>
            <li>
                

                <a href="#"
                class="flex items-center p-2 text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700 group"
                onclick="event.preventDefault(); document.getElementById('logout-form').submit();">
                <i class="fas fa-sign-out-alt"></i> <!-- Logout -->
                <span class="flex-1 ms-3 whitespace-nowrap">Logout</span>
             </a>
             
             <form id="logout-form" action="{{ route('logout.admin') }}" method="POST" class="hidden">
                 @csrf
             </form>
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
            link.classList.remove('bg-gray-100', 'dark:bg-blue-200');
        });

        // Tambahkan kelas aktif pada menu yang dipilih
        const selectedLink = document.querySelector(`a[href="#${menuId}"]`);
        if (selectedLink) {
            selectedLink.classList.add('bg-gray-100', 'dark:bg-blue-200');
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