@include('komponen.style')
<div id="dataSesi" class="hidden">
    <div class="bg-blue-400 text-white p-4 flex items-center justify-center relative">
        <h1 class="text-xl font-bold text-center">Sistem Pendataan Penggunaan Laboratorium UNIPMA</h1>
    </div>
    <div class="flex justify-end mb-4 mt-6">
    </div>
    <div class="p-5 text-3xl font-semibold text-center text-gray-900 bg-white ">
        Daftar sesi
    </div>
    <div class="relative overflow-x-auto shadow-md sm:rounded-lg">
        <table class="w-full text-sm text-left rtl:text-right text-gray-500">
            <thead class="text-xs text-gray-700 uppercase bg-gray-50 ">
                <tr>
                    <th scope="col" class="px-6 py-3 text-center">
                        No
                    </th>
                    <th scope="col" class="px-6 py-3">
                        Daftar sesi
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
                @foreach ($sesi as $dataSesi)
                    <tr
                        class="odd:bg-white  even:bg-gray-50  border-b ">
                        <th class="px-6 py-4 text-center">
                            {{ $dataSesi->id }}
                        </th>
                        <th scope="row"
                            class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap ">
                            {{ $dataSesi['daftar-sesi'] }}
                        </th>
                        <td class="px-6 py-4 text-center">
                            {{ $dataSesi['status'] }}
                        </td>

                        <td class="px-6 py-4 flex space-x-2 justify-center">
                            <div class="flex space-x-2  ">
                                <button data-modal-target="authentication-modal-user-sesi{{ $dataSesi->id }}"
                                    data-modal-toggle="authentication-modal-user-sesi{{ $dataSesi->id }}">
                                    <i class="fas fa-edit"></i><!-- Font Awesome 6 -->
                                </button>

                                <!-- Main modal -->
                                <div id="authentication-modal-user-sesi{{ $dataSesi->id }}" tabindex="-1"
                                    aria-hidden="true"
                                    class="hidden overflow-y-auto overflow-x-hidden fixed top-0 right-0 left-0 z-50 justify-center items-center w-full md:inset-0 h-[calc(100%-1rem)] max-h-full">
                                    <div class="relative p-4 w-full max-w-md max-h-full">
                                        <!-- Modal content -->
                                        <div class="relative bg-white rounded-lg shadow">
                                            <!-- Modal header -->
                                            <div
                                                class="flex items-center justify-between p-4 md:p-5 border-b rounded-t">
                                                <h3 class="text-xl font-semibold text-gray-900">
                                                    Edit sesi
                                                </h3>
                                                <button type="button"
                                                    class="end-2.5 text-gray-400 bg-transparent hover:bg-gray-200 hover:text-gray-900 rounded-lg text-sm w-8 h-8 ms-auto inline-flex justify-center items-center"
                                                    data-modal-hide="authentication-modal-edit-sesi{{ $dataSesi->id }}">
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
                                                <form class="space-y-4" action="{{ route('edit-sesi',$dataSesi->id) }}" method="POST">
                                                    @csrf
                                                    @method('PUT')
                                                    <div>
                                                        <label for="sesi"
                                                            class="block mb-2 text-sm font-medium text-gray-900 ">Sesi : </label>
                                                        <input id="sesi" type="text" name="sesi"
                                                            class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5"
                                                            value="{{ $dataSesi['daftar-sesi'] }}"  />
                                                    </div>
                                                    <div>
                                                        <label for="status"
                                                            class="block mb-2 text-sm font-medium text-gray-900">Status
                                                            </label>
                                                        <select name="status"
                                                            class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5">
                                                            <option value="aktif" {{ $dataSesi->status == 'aktif' ? 'selected' : '' }}>aktif</option>
        <option value="non aktif" {{ $dataSesi->status == 'non aktif' ? 'selected' : '' }}>non aktif</option>
                                                        </select>
                                                    </div>

                                                    <button type="submit"
                                                        class="w-full text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center ">Confirm</button>
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

</div>
