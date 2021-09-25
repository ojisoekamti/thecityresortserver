<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>

<body>
    <table style="width:100%">
        <tr>
            <td style="text-align: left;width:20%"><img src="{{ url('') }}/{{ setting('admin.logo_security') }}"
                    style="width: 70px" alt=""></td>
            <td style="text-align: center;width:80%">SECURITY THE CITY RESORT RESIDENCE<br><u>BERITA ACARA PENERTIBAN
                    BARANG </u><br>No.
                {{ $id }}/BAK/SEC-CR/{{ date('M', strtotime($date_time)) }}/{{ date('Y', strtotime($date_time)) }}
            </td>
            <td style="text-align: right;width:20%"><img src="{{ url('') }}/{{ setting('admin.logo_crr') }}"
                    style="width: 130px" alt=""></td>
        </tr>
    </table>
    <p>Pada hari {{ hari_ini($date_time) }}, Tanggal {{ date('d', strtotime($date_time)) }} Bulan
        {{ date('F', strtotime($date_time)) }} Tahun {{ date('Y', strtotime($date_time)) }} <br> Pukul
        {{ date('h:i:sa', strtotime($date_time)) }} WIB</p>
    <p>Bertempat di : {{ $bertempat_di }}</p>
    <p>Melaporkan Bahwa : </p>
    <p>{{ str_pad(html_entity_decode(strip_tags($description)), 1500, ' . ') }}</p>
    <p>Tindakan yang diambil : </p>
    <p>{{ str_pad(html_entity_decode(strip_tags($action)), 1500, ' . ') }}</p>
    <p>Demikian surat ini dibuat sebagaimana mestinya.</p>
    <table style="width:100%">
        <tr>
            <td style="width: 50%">
                <p>Jakarta,{{ date('d') }}/{{ date('F') }}/{{ date('Y') }} <br>Yang membuat</p>
            </td>
            <td style="width: 50%;text-align:center">
            </td>
        </tr>
        <tr>
            <td valign="top">
                Yang Membuat
                <br><br><br><br>
                {{ $membuat }}
            </td>
            <td valign="top" style="text-align: center">
                Mengetahui
                <br><br><br><br>
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
