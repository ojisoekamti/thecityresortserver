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
            <td style="text-align: left;width:20%"><img src="{{ url('') }}/{{ setting('admin.logo_security') }}" style="width: 70px" alt=""></td>
            <td style="text-align: center;width:80%">SECURITY THE CITY RESORT RESIDENCE<br><u>BERITA ACARA KERUSAKAN BARANG BARANG</u><br>No.
                1222/BAKB/SEC-CR/{{ date('M') }}/{{ date('Y') }}</td>
            <td style="text-align: right;width:20%"><img src="{{ url('') }}/{{ setting('admin.logo_crr') }}" style="width: 130px" alt=""></td>
        </tr>
    </table>
    <p>Pada hari {{ hari_ini() }}, {{ date('d') }} {{ date('M') }} {{ date('Y') }} Pukul
        {{ date('h:i:sa') }} WIB</p>
    <p>Yang Bertanda tangan di bawah ini : </p>
    <table style="width: 100%">
        <tr>
            <td style="width: 20%">Nama</td>
            <td style="width: 80%">: {{ str_pad("",200," . ") }}</td>
        </tr>
        <tr>
            <td style="width: 20%">Jenis Kelamin</td>
            <td style="width: 80%">: {{ str_pad("",200," . ") }}</td>
        </tr>
        <tr>
            <td style="width: 20%">Umur</td>
            <td style="width: 80%">: {{ str_pad("",200," . ") }}</td>
        </tr>
        <tr>
            <td style="width: 20%">Pekerjaan</td>
            <td style="width: 80%">: {{ str_pad("",200," . ") }}</td>
        </tr>
        <tr>
            <td style="width: 20%" valign="top">Alamat</td>
            <td style="width: 80%">: {{ str_pad("",400," . ") }}</td>
        </tr>
    </table>
    <p style="word-wrap: break-word">Melaporkan Bahwa</p>
    <style>

    </style>
    <table style="width: 100%;border-collapse:collapse;" >
        <tr>
            <td style="border: 1px solid #332f2f;text-align:center">No</td>
            <td style="border: 1px solid #332f2f;">Nama Barang</td>
            <td style="border: 1px solid #332f2f;">No Seri / Type</td>
            <td style="border: 1px solid #332f2f;">Kondisi</td>
            <td style="border: 1px solid #332f2f;">Keterangan</td>
        </tr>
        <tr>
            <td style="border: 1px solid #332f2f;text-align:center">1</td>
            <td style="border: 1px solid #332f2f;"></td>
            <td style="border: 1px solid #332f2f;"></td>
            <td style="border: 1px solid #332f2f;"></td>
            <td style="border: 1px solid #332f2f;"></td>
        </tr>
        <tr>
            <td style="border: 1px solid #332f2f;text-align:center">2</td>
            <td style="border: 1px solid #332f2f;"></td>
            <td style="border: 1px solid #332f2f;"></td>
            <td style="border: 1px solid #332f2f;"></td>
            <td style="border: 1px solid #332f2f;"></td>
        </tr>
        <tr>
            <td style="border: 1px solid #332f2f;text-align:center">3</td>
            <td style="border: 1px solid #332f2f;"></td>
            <td style="border: 1px solid #332f2f;"></td>
            <td style="border: 1px solid #332f2f;"></td>
            <td style="border: 1px solid #332f2f;"></td>
        </tr>
        <tr>
            <td style="border: 1px solid #332f2f;text-align:center">4</td>
            <td style="border: 1px solid #332f2f;"></td>
            <td style="border: 1px solid #332f2f;"></td>
            <td style="border: 1px solid #332f2f;"></td>
            <td style="border: 1px solid #332f2f;"></td>
        </tr>
    </table>
    <p>{{ str_pad("Kronologi Kejadian :",1000," . ") }}</p>
    <p>{{ str_pad("Tindakan yang dilakukan / diambil :",900," . ") }}</p>
    <p>{{ str_pad("Kesimpulan sementara :",1000," . ") }}</p>
    <p>Demikian Berita Acara Kerusakan Barang ini dibuat sebagaimana mestinya</p>
    <table style="width:100%">
        <tr>
            <td style="width: 50%">
                <p>Jakarta,{{ date('d') }}/{{ date('m') }}/{{ date('Y') }} <br>Yang membuat</p>
                <br><br><br>
                <p>Raymond</p>
            </td>
            <td style="width: 50%;text-align:center">
                <p><br></p>
                <p>Mengetahui</p>
                <br><br><br>
                <p>Imam Siswosapoetro</p>
            </td>
        </tr>
    </table>

</body>

</html>


<?php

function hari_ini()
{
    $hari = date('D');

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
