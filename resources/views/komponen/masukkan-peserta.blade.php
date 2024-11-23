@include('komponen.style')
<div id="masukkanPeserta" class="hidden">
    <div class="bg-blue-400 text-white p-4 flex items-center justify-center relative">
        <h1 class="text-xl font-bold text-center">Sistem Pendataan Penggunaan Laboratorium UNIPMA</h1>
    </div>
    <div class="flex justify-end mb-4 mt-6">
        <!-- Main modal -->
        <div id="authentication-modal-admin" tabindex="-1" aria-hidden="true"
            class="hidden overflow-y-auto overflow-x-hidden fixed top-0 right-0 left-0 z-50 justify-center items-center w-full md:inset-0 h-[calc(100%-1rem)] max-h-full">
            <div class="relative p-4 w-full max-w-md max-h-full">
            </div>
        </div>

    </div>
    <div class="p-5 text-3xl font-semibold text-center text-gray-900 bg-white">
        Data ulasan peserta
    </div>
    <div class="flex justify-end mb-10">
    </div>
    <div class="relative overflow-x-auto shadow-md sm:rounded-lg">
        <table class="w-full text-sm text-left rtl:text-right text-gray-500">
            <thead class="text-xs text-gray-700 uppercase bg-gray-50">
                <tr>
                    <th scope="col" class="px-6 py-3">
                        No
                    </th>
                    <th scope="col" class="px-6 py-3">
                        Nama
                    </th>
                    <th scope="col" class="px-6 py-3">
                        Email
                    </th>
                    <th scope="col" class="px-6 py-3">
                        Telepon
                    </th>
                    <th scope="col" class="px-6 py-3">
                        Prodi
                    </th>
                    <th scope="col" class="px-6 py-3">
                        pesan
                    </th>
                </tr>
            </thead>
            <tbody>
                @php
                    $no = ($users->currentPage() - 1) * $users->perPage() + 1;
                @endphp
                @foreach ($ulasan as $dataUlasan)
                    <tr
                        class="odd:bg-white  even:bg-gray-50 border-b">
                        <th class="px-6 py-4">
                            {{ $no++ }}
                        </th>
                        <th scope="row"
                            class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap">
                            {{ $dataUlasan->nama }}
                        </th>

                        <td class="px-6 py-4">
                            {{ $dataUlasan->email }}
                        </td>
                        <td class="px-6 py-4">
                            {{ $dataUlasan->no_tlp }}
                        </td>
                        <td class="px-6 py-4">
                            {{ $dataUlasan->prodi }}
                        </td>
                        <td class="px-6 py-4">
                            {{ $dataUlasan->pesan }}
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>

</div>
