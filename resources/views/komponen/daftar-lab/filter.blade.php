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