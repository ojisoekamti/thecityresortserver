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
    <p style="text-align: center"><br><u><b>SURAT PENGADUAN</b> </u><br>No.
        1222/SP/Sec/{{ date('M') }}/{{ date('Y') }}</p>
    <br>
    <table style="width: 100%">
        <tr>
            <td colspan="2">Yang bertanda tangan dibawah ini :</td>
        </tr>
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
            <td style="width: 20%">No. Identitas</td>
            <td style="width: 80%">: {{ str_pad("",200," . ") }}</td>
        </tr>
        <tr>
            <td style="width: 20%" valign="top">Alamat</td>
            <td style="width: 80%">: {{ str_pad("",400," . ") }}</td>
        </tr>
    </table>
    <p>Menyatakan bahwa telah terjadi</p>
    <p>{{ str_pad("",1500," . ") }}</p>
    <p>Kronologi</p>
    <p>{{ str_pad("",1500," . ") }}</p>
    <table style="width:100%">
        <tr>
            <td style="width: 50%">
                <p>Jakarta,{{ date('d') }}-{{ date('M') }}-{{ date('Y') }} <br>Pelapor</p>
                <p></p>
                <br><br><br>
                <p>Abdul Ghoji Hanggoro</p>
            </td>
            <td style="width: 50%;text-align:center" >
                <p></p>
                <p><br><br>Security</p>
                <p></p>
                <br><br><br>
                <p>Abdul Ghoji Hanggoro</p>
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
