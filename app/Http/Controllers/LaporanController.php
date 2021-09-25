<?php

namespace App\Http\Controllers;

use App\BeritaAcaraDamai;
use App\BeritaAcaraKejadian;
use App\BeritaAcaraPenertibanBarang;
use App\Models\User;

class LaporanController extends Controller
{
    public function pdf($id)
    {
        $results = BeritaAcaraKejadian::where('id', $id)
            ->first();
        if ($results->mengetahui) {
            $dataMengetahui = User::where('id', $results->mengetahui)
                ->first();
            $results->mengetahui = $dataMengetahui->name;
        }
        $pdf = \PDF::loadView('pdf', $results);
        return $pdf->stream('berita-acara.pdf');
    }
    public function penertibanBarang($id)
    {
        $results = BeritaAcaraPenertibanBarang::where('id', $id)
        ->first();
        $pdf = \PDF::loadView('print/penertiban-barang-print', $results);
        return $pdf->stream('penertiban-barang-print.pdf');
    }
    public function beritaAcaraDamai($id)
    {
        $results = BeritaAcaraDamai::where('id', $id)
        ->first();
        $pdf = \PDF::loadView('print/berita-acara-damai', $results);
        return $pdf->stream('berita-acara-damai.pdf');
    }
    public function beritaKerusakan($id)
    {
        $data = ['title' => 'title'];
        $pdf = \PDF::loadView('berita-kerusakan', $data);
        return $pdf->stream('berita-kerusakan.pdf');
    }

    public function suratPernyataanKedua()
    {
        $data = ['title' => 'title'];
        $pdf = \PDF::loadView('surat-pernyataan-kedua', $data);
        return $pdf->stream('surat-pernyataan-kedua.pdf');
    }

    public function suratPernyataan()
    {
        $data = ['title' => 'title'];
        $pdf = \PDF::loadView('surat-pernyataan', $data);
        return $pdf->stream('surat-pernyataan.pdf');
    }

    public function suratPengaduan()
    {
        $data = ['title' => 'title'];
        $pdf = \PDF::loadView('surat-pengaduan', $data);
        return $pdf->stream('surat-pengaduan.pdf');
    }
}
