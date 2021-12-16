<?php

namespace App\Http\Controllers;

use App\BeritaAcaraDamai;
use App\BeritaAcaraKejadian;
use App\BeritaAcaraPenertibanBarang;
use App\Models\User;
use App\SwitchPermission;

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
        $pdf->getDomPDF()->setHttpContext(
            stream_context_create([
                'ssl' => [
                    'allow_self_signed' => TRUE,
                    'verify_peer' => FALSE,
                    'verify_peer_name' => FALSE,
                ]
            ])
        );
        //return view('pdf', $results);
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

    public function switchPermission($id)
    {
        $results = SwitchPermission::where('id', $id)
            ->first();
        $pemohon = User::where('id', $results->pemohon)
            ->first();
        $results->pemohon = $pemohon->name;
        $delegate = User::where('id', $results->delegate)
            ->first();
        $results->delegate = $delegate->name;

        if ($results->status == 1) {
            $results->status = "draft";
        } elseif ($results->status == 2) {
            $results->status = "Waiting Approval";
        } elseif ($results->status == 3) {
            $results->status = "Approve";
        } elseif ($results->status == 4) {
            $results->status = "Reject";
        }
        if ($results->shift_sched == 1) {
            $results->shift_sched = "Pagi";
        } elseif ($results->shift_sched == 2) {
            $results->shift_sched = "Siang";
        } elseif ($results->shift_sched == 3) {
            $results->shift_sched = "Malam";
        }
        // return view('print/switch-permission', $results);
        $pdf = \PDF::loadView('print/switch-permission', $results);
        $pdf->getDomPDF()->setHttpContext(
            stream_context_create([
                'ssl' => [
                    'allow_self_signed' => TRUE,
                    'verify_peer' => FALSE,
                    'verify_peer_name' => FALSE,
                ]
            ])
        );
        // return view('pdf', $results);
        return $pdf->stream('berita-acara.pdf');
    }
}
