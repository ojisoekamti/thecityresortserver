<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>

<body>

    @php
    $image_str = str_replace('\\', '/', setting('admin.logo_security'));
    $image_str_crr = str_replace('\\', '/', setting('admin.logo_crr'));
    @endphp
    <table style="width:100%">
        <tr>
            <td style="text-align: left;width:20%"><img src="data:image/png;base64,{{ base64_encode(file_get_contents(public_path('storage/' . $image_str))) }}" style="width: 70px" alt=""></td>
            <td style="text-align: center;width:80%">SECURITY THE CITY RESORT RESIDENCE<br><u>BERITA ACARA PERJANJIAN
                    DAMAI </u><br>No.
                {{ $id }}/BAPD/SEC-CR/{{ date('M', strtotime($datetime)) }}/{{ date('Y', strtotime($datetime)) }}
            </td>
            <td style="text-align: right;width:20%"><img src="data:image/png;base64,{{ base64_encode(file_get_contents(public_path('storage/' . $image_str_crr))) }}" style="width: 130px" alt=""></td>
        </tr>
    </table>
    <p>Pada hari {{ hari_ini($datetime) }}, Tanggal {{ date('d', strtotime($datetime)) }} Bulan
        {{ date('F', strtotime($datetime)) }} Tahun {{ date('Y', strtotime($datetime)) }} <br> Pukul
        {{ date('h:i:sa', strtotime($datetime)) }} WIB
    </p>
    <p>Bertempat di : {{ $bertempat_di }}</p>
    <p>Perihal : {{ $perihal }}</p>

    <table style="width: 100%">
        <tr>
            <td colspan="3">Yang bertanda tangan dibawah ini :</td>
        </tr>
        <tr>
            <td>I.</td>
            <td style="width: 15%">Nama</td>
            <td style="width: 80%">: {{ str_pad($nama, 100, ' . ') }}</td>
        </tr>
        <tr>
            <td></td>
            <td style="width: 15%" valign="top">Alamat</td>
            <td style="width: 80%">: {{ str_pad($alamat, 400, ' . ') }}</td>
        </tr>
        <tr>
            <td></td>
            <td style="width: 15%" valign="top">No Identitas (KTP/SIM)</td>
            <td style="width: 80%">: {{ str_pad($no_identitas, 100, ' . ') }}</td>
        </tr>
        <tr>
            <td></td>
            <td style="width: 15%" valign="top">no Telp / Hp </td>
            <td style="width: 80%">: {{ str_pad($no_telp_2, 100, ' . ') }}</td>
        </tr>
    </table>

    <p>Tersebut diatas disebut sebagai pihak ke II (<b><i>Satu</i></b>)</p>
    <table style="width: 100%">
        <tr>
            <td>I.</td>
            <td style="width: 15%">Nama</td>
            <td style="width: 80%">: {{ str_pad($nama_2, 100, ' . ') }}</td>
        </tr>
        <tr>
            <td></td>
            <td style="width: 15%" valign="top">Alamat</td>
            <td style="width: 80%">: {{ str_pad($alamat_2, 400, ' . ') }}</td>
        </tr>
        <tr>
            <td></td>
            <td style="width: 15%" valign="top">No Identitas (KTP/SIM)</td>
            <td style="width: 80%">: {{ str_pad($no_identitas_2, 100, ' . ') }}</td>
        </tr>
        <tr>
            <td></td>
            <td style="width: 15%" valign="top">no Telp / Hp </td>
            <td style="width: 80%">: {{ str_pad($no_telp_2, 100, ' . ') }}</td>
        </tr>
    </table>
    <p>Permasalahan : </p>
    <p>{{ str_pad(html_entity_decode(strip_tags($description)), 1000, ' . ') }}</p>
    <p>Kesepakatan yang diambil : </p>
    <p>{{ str_pad(html_entity_decode(strip_tags($kesepakatan)), 1000, ' . ') }}</p>
    <p>Data Pendukung : </p>
    <p>{{ str_pad(html_entity_decode(strip_tags($pendukung)), 1000, ' . ') }}</p>
    <p>Demikian Berita Acara Perjanjian Damai dibuat dengan sesungguhnya dan ditandatangani pada tanggal tersebut diatas
        oleh kedua belah pihak untuk dipergunakan sebagaimana mestinya.</p>
    <p>Jakarta,{{ date('d') }}/{{ date('F') }}/{{ date('Y') }} </p>
    <table style="width:100%">
        <tr>
            <td>Pelapor</td>
            <td>Pihak II</td>
            <td>Pengetahui</td>
        </tr>
        <tr>
            <td><br><br><br><br><br>
                {{ $nama }}
            </td>
            <td><br><br><br><br><br>
                {{ $nama_2 }}
            </td>
            <td><br><br><br><br><br>
                {{ $mengetahui }}
            </td>
        </tr>
    </table>

</body>

</html>


<?php

function hari_ini($tgl)
{
    $hari = date('D', strtotime($tgl));

    switch ($hari) {
        case 'Sun':
            $hari_ini = 'Minggu';
            break;

        case 'Mon':
            $hari_ini = 'Senin';
            break;

        case 'Tue':
            $hari_ini = 'Selasa';
            break;

        case 'Wed':
            $hari_ini = 'Rabu';
            break;

        case 'Thu':
            $hari_ini = 'Kamis';
            break;

        case 'Fri':
            $hari_ini = 'Jumat';
            break;

        case 'Sat':
            $hari_ini = 'Sabtu';
            break;

        default:
            $hari_ini = 'Tidak di ketahui';
            break;
    }

    return $hari_ini;
}
?>