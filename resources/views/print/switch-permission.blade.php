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
        @php
            $image_str = str_replace('\\', '/', setting('admin.logo_security'));
            $image_str_crr = str_replace('\\', '/', setting('admin.logo_crr'));
        @endphp
        <tr>
            <td style="text-align: left;width:20%"><img
                    src="data:image/png;base64,{{ base64_encode(file_get_contents(public_path('storage/' . $image_str))) }}"
                    style="width: 70px" alt=""></td>
            <td style="text-align: center;width:80%">DIVISI SECURITY <br><u>Tukar
                    Shift</u><br>No.{{ $id }}</td>
            <td style="text-align: right;width:20%"><img
                    src="data:image/png;base64,{{ base64_encode(file_get_contents(public_path('storage/' . $image_str_crr))) }}"
                    style="width: 130px" alt=""></td>
        </tr>
    </table>
    <br>
    <table style="width:474.65pt;border-collapse:collapse;border:none;">
        <tbody>
            <tr>
                <td style="width: 113.15pt;padding: 0cm 5.4pt;vertical-align: top;">
                    <p
                        style='margin-top:0cm;margin-right:0cm;margin-bottom:0cm;margin-left:0cm;line-height:normal;font-size:15px;font-family:"Calibri",sans-serif;'>
                        Nama</p>
                </td>
                <td style="width: 14.2pt;padding: 0cm 5.4pt;vertical-align: top;">
                    <p
                        style='margin-top:0cm;margin-right:0cm;margin-bottom:0cm;margin-left:0cm;line-height:normal;font-size:15px;font-family:"Calibri",sans-serif;'>
                        :</p>
                </td>
                <td style="width: 347.3pt;padding: 0cm 5.4pt;vertical-align: top;">
                    <p
                        style='margin-top:0cm;margin-right:0cm;margin-bottom:0cm;margin-left:0cm;line-height:normal;font-size:15px;font-family:"Calibri",sans-serif;'>
                        {{ $pemohon }} </p>
                </td>
            </tr>
            <tr>
                <td style="width: 113.15pt;padding: 0cm 5.4pt;vertical-align: top;">
                    <p
                        style='margin-top:0cm;margin-right:0cm;margin-bottom:0cm;margin-left:0cm;line-height:normal;font-size:15px;font-family:"Calibri",sans-serif;'>
                        Department</p>
                </td>
                <td style="width: 14.2pt;padding: 0cm 5.4pt;vertical-align: top;">
                    <p
                        style='margin-top:0cm;margin-right:0cm;margin-bottom:0cm;margin-left:0cm;line-height:normal;font-size:15px;font-family:"Calibri",sans-serif;'>
                        :</p>
                </td>
                <td style="width: 347.3pt;padding: 0cm 5.4pt;vertical-align: top;">
                    <p
                        style='margin-top:0cm;margin-right:0cm;margin-bottom:0cm;margin-left:0cm;line-height:normal;font-size:15px;font-family:"Calibri",sans-serif;'>
                        Security</p>
                </td>
            </tr>
            <tr>
                <td style="width: 113.15pt;padding: 0cm 5.4pt;vertical-align: top;">
                    <p
                        style='margin-top:0cm;margin-right:0cm;margin-bottom:0cm;margin-left:0cm;line-height:normal;font-size:15px;font-family:"Calibri",sans-serif;'>
                        Penyimpangan Tanggal</p>
                </td>
                <td style="width: 14.2pt;padding: 0cm 5.4pt;vertical-align: top;">
                    <p
                        style='margin-top:0cm;margin-right:0cm;margin-bottom:0cm;margin-left:0cm;line-height:normal;font-size:15px;font-family:"Calibri",sans-serif;'>
                        :</p>
                </td>
                <td style="width: 347.3pt;padding: 0cm 5.4pt;vertical-align: top;">
                    <p
                        style='margin-top:0cm;margin-right:0cm;margin-bottom:0cm;margin-left:0cm;line-height:normal;font-size:15px;font-family:"Calibri",sans-serif;'>
                        {{ $date }}
                    </p>
                </td>
            </tr>
            <tr>
                <td style="width: 113.15pt;padding: 0cm 5.4pt;vertical-align: top;">
                    <p
                        style='margin-top:0cm;margin-right:0cm;margin-bottom:0cm;margin-left:0cm;line-height:normal;font-size:15px;font-family:"Calibri",sans-serif;'>
                        Tukar Off Tanggal</p>
                </td>
                <td style="width: 14.2pt;padding: 0cm 5.4pt;vertical-align: top;">
                    <p
                        style='margin-top:0cm;margin-right:0cm;margin-bottom:0cm;margin-left:0cm;line-height:normal;font-size:15px;font-family:"Calibri",sans-serif;'>
                        :</p>
                </td>
                <td style="width: 347.3pt;padding: 0cm 5.4pt;vertical-align: top;">
                    <p
                        style='margin-top:0cm;margin-right:0cm;margin-bottom:0cm;margin-left:0cm;line-height:normal;font-size:15px;font-family:"Calibri",sans-serif;'>
                        {{ $date_to }}
                    </p>
                </td>
            </tr>
            <tr>
                <td style="width: 113.15pt;padding: 0cm 5.4pt;vertical-align: top;">
                    <p
                        style='margin-top:0cm;margin-right:0cm;margin-bottom:0cm;margin-left:0cm;line-height:normal;font-size:15px;font-family:"Calibri",sans-serif;'>
                        Tukar Off Dengan</p>
                </td>
                <td style="width: 14.2pt;padding: 0cm 5.4pt;vertical-align: top;">
                    <p
                        style='margin-top:0cm;margin-right:0cm;margin-bottom:0cm;margin-left:0cm;line-height:normal;font-size:15px;font-family:"Calibri",sans-serif;'>
                        :</p>
                </td>
                <td style="width: 347.3pt;padding: 0cm 5.4pt;vertical-align: top;">
                    <p
                        style='margin-top:0cm;margin-right:0cm;margin-bottom:0cm;margin-left:0cm;line-height:normal;font-size:15px;font-family:"Calibri",sans-serif;'>
                        {{ $delegate }}
                    </p>
                </td>
            </tr>
            <tr>
                <td style="width: 113.15pt;padding: 0cm 5.4pt;vertical-align: top;" colspan="3">
                    <p
                        style='margin-top:0cm;margin-right:0cm;margin-bottom:0cm;margin-left:0cm;line-height:normal;font-size:15px;font-family:"Calibri",sans-serif;'>
                        &nbsp;</p>
                    <br><br><br><br><br><br><br>
                </td>
            </tr>
            <tr>
                <td style="width: 113.15pt;padding: 0cm 5.4pt;vertical-align: top;" colspan="2">
                    <p
                        style='margin-top:0cm;margin-right:0cm;margin-bottom:0cm;margin-left:0cm;line-height:normal;font-size:15px;font-family:"Calibri",sans-serif;'>
                        Approved By</p>
                </td>
                <td style="width: 14.2pt;padding: 0cm 5.4pt;vertical-align: top;">
                    <p
                        style='margin-top:0cm;margin-right:0cm;margin-bottom:0cm;margin-left:0cm;line-height:normal;font-size:15px;font-family:"Calibri",sans-serif;'>
                        {{ $delegate }}
                    </p>
                </td>
            </tr>
            <tr>
                <td style="width: 113.15pt;padding: 0cm 5.4pt;vertical-align: top;">
                    <p
                        style='margin-top:0cm;margin-right:0cm;margin-bottom:0cm;margin-left:0cm;line-height:normal;font-size:15px;font-family:"Calibri",sans-serif;'>
                        Approved By</p>
                </td>
                <td style="width: 14.2pt;padding: 0cm 5.4pt;vertical-align: top;" colspan="2">
                    <p
                        style='margin-top:0cm;margin-right:0cm;margin-bottom:0cm;margin-left:0cm;line-height:normal;font-size:15px;font-family:"Calibri",sans-serif;'>
                        Danru 1</p>
                </td>
            </tr>
            <tr>
                <td style="width: 113.15pt;padding: 0cm 5.4pt;vertical-align: top;">
                    <p
                        style='margin-top:0cm;margin-right:0cm;margin-bottom:0cm;margin-left:0cm;line-height:normal;font-size:15px;font-family:"Calibri",sans-serif;'>
                        Approved By</p>
                </td>
                <td style="width: 14.2pt;padding: 0cm 5.4pt;vertical-align: top;" colspan="2">
                    <p
                        style='margin-top:0cm;margin-right:0cm;margin-bottom:0cm;margin-left:0cm;line-height:normal;font-size:15px;font-family:"Calibri",sans-serif;'>
                        Danru 2</p>
                </td>
            </tr>
            <tr>
                <td style="width: 113.15pt;padding: 0cm 5.4pt;vertical-align: top;">
                    <p
                        style='margin-top:0cm;margin-right:0cm;margin-bottom:0cm;margin-left:0cm;line-height:normal;font-size:15px;font-family:"Calibri",sans-serif;'>
                        Approved By</p>
                </td>
                <td style="width: 14.2pt;padding: 0cm 5.4pt;vertical-align: top;" colspan="2">
                    <p
                        style='margin-top:0cm;margin-right:0cm;margin-bottom:0cm;margin-left:0cm;line-height:normal;font-size:15px;font-family:"Calibri",sans-serif;'>
                        Admin Security</p>
                </td>
            </tr>
            <tr>
                <td style="width: 113.15pt;padding: 0cm 5.4pt;vertical-align: top;">
                    <p
                        style='margin-top:0cm;margin-right:0cm;margin-bottom:0cm;margin-left:0cm;line-height:normal;font-size:15px;font-family:"Calibri",sans-serif;'>
                        Approved By</p>
                </td>
                <td style="width: 347.3pt;padding: 0cm 5.4pt;vertical-align: top;" colspan="2">
                    <p
                        style='margin-top:0cm;margin-right:0cm;margin-bottom:0cm;margin-left:0cm;line-height:normal;font-size:15px;font-family:"Calibri",sans-serif;'>
                        Dansek</p>
                </td>
            </tr>
        </tbody>
    </table>

</html>
