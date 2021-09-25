<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>

<body>
    <table style="width:100%;border-bottom-style:solid">
        <tr>
            <td style="text-align: left;width:20%" valign="top"><img src="{{ url('') }}/{{ setting('admin.logo_security') }}" style="width: 70px" alt=""></td>
            <td style="text-align: center;width:80%" valign="middle"><b>SECURITY THE CITY RESORT RESIDENCE</b></td>
            <td style="text-align: right;width:20%" valign="top"><img src="{{ url('') }}/{{ setting('admin.logo_crr') }}" style="width: 130px" alt=""></td>
        </tr>
    </table>
    <p style="text-align: center;margin-top:0"><br><u>SURAT PERNYATAAN <br>KEDUA BELAH PIHAK</u><br>No.
        1222/SPKBP/SEC-CR/{{ date('M') }}/{{ date('Y') }}</p>
    <table style="width: 100%">
        <tr>
            <td  colspan="3">Yang bertanda tangan dibawah ini :</td>
        </tr>
        <tr>
            <td>I.</td>
            <td style="width: 15%">Nama</td>
            <td style="width: 80%">: {{ str_pad("",200," . ") }}</td>
        </tr>
        <tr>
            <td></td>
            <td style="width: 15%">Jenis Kelamin</td>
            <td style="width: 80%">: {{ str_pad("",200," . ") }}</td>
        </tr>
        <tr>
            <td></td>
            <td style="width: 15%">Umur</td>
            <td style="width: 80%">: {{ str_pad("",200," . ") }}</td>
        </tr>
        <tr>
            <td></td>
            <td style="width: 15%">Pekerjaan</td>
            <td style="width: 80%">: {{ str_pad("",200," . ") }}</td>
        </tr>
        <tr>
            <td></td>
            <td style="width: 15%" valign="top">Alamat</td>
            <td style="width: 80%">: {{ str_pad("",400," . ") }}</td>
        </tr>
    </table>
    <p>Tersebut diatas disebut sebagai pihak ke II (<b><i>Satu</i></b>)</p>
    <table style="width: 100%">
        <tr>
            <td style="width: 5%">II.</td>
            <td style="width: 15%">Nama</td>
            <td style="width: 80%">: {{ str_pad("",200," . ") }}</td>
        </tr>
        <tr>
            <td></td>
            <td style="width: 15%">Jenis Kelamin</td>
            <td style="width: 80%">: {{ str_pad("",200," . ") }}</td>
        </tr>
        <tr>
            <td></td>
            <td style="width: 15%">Umur</td>
            <td style="width: 80%">: {{ str_pad("",200," . ") }}</td>
        </tr>
        <tr>
            <td></td>
            <td style="width: 15%">Pekerjaan</td>
            <td style="width: 80%">: {{ str_pad("",200," . ") }}</td>
        </tr>
        <tr>
            <td></td>
            <td style="width: 15%" valign="top">Alamat</td>
            <td style="width: 80%">: {{ str_pad("",400," . ") }}</td>
        </tr>
    </table>
    <p>Tersebut diatas disebut sebagai pihak ke II (<b><i>Dua</i></b>)</p>
    <p>Telah bersepakat antara pihak ke I (<b><i>Satu</i></b>) dan pihak ke (<b><i>Dua</i></b>)</p>
    <p>{{ str_pad("",1000," . ") }}</p>
    <p>Untuk selanjutnya pihak ke I (<b><i>Satu</i></b>) dan pihak ke (<b><i>Dua</i></b>) akan menyelesaikan permasalahan dengan kekeluargaan dan tidak akan ada tuntutan apapun dikemudian hari</p>
    <p>Demikian pernyataan ini kami buat dengan sebenar-benarnya dan dapat di pertanggung jawabkan.</p>

    <table style="width:100%">
        <tr>
            <td style="width: 50%">
                <p>Jakarta,{{ date('d') }}/{{ date('m') }}/{{ date('Y') }} </p>
                <p>Yang membuat</p>
                <br><br><br>
                <p>Abdul Ghoji Hanggoro</p>
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
