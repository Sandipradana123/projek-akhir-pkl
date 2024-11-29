<!DOCTYPE html>
<html>
<head>
    <title>Daftar Users</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
        }
        table, th, td {
            border: 1px solid black;
        }
        th, td {
            padding: 10px;
            text-align: left;
        }
    </style>
</head>
<body>
    <h1>Daftar Users</h1>
    
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>NAMA</th>
                <th>NIM</th>
                <th>PRODI</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($peserta as $daftarPeserta)
                <tr>
                    <td>{{ $loop->iteration }}</td>
                    <td>{{ $daftarPeserta->nama }}</td>
                    <td>{{ $daftarPeserta->nim }}</td>
                    <td>{{ $daftarPeserta->prodi }}</td>
                </tr>
            @endforeach
        </tbody>
    </table>
</body>
</html>
