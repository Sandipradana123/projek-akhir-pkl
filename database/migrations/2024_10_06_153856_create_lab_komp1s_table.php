<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\DB;
return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('lab-komp1', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('tabel_id');
            $table->string('nama');
            $table->string('email');
            $table->string('nim',10)->unique()->nullable();
            $table->string('progam-studi',)->nullable();
            $table->string('kegiatan');
            $table->string('jadwal');
            $table->string('sesi');
            $table->timestamp('created_at')->default(DB::raw('CURRENT_TIMESTAMP'));
            $table->timestamp('updated_at')->default(DB::raw('CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP'));

             //relasi
        $table->foreign('tabel_id')->references('id')->on('daftar-lab')->onDelete('cascade');
        });

       
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('lab_komp1s');
    }
};
