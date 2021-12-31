@if ($request['pemohon'])
    <div>
        Tukar Shift dengan detail di bawah ini :<br>
        Tukar Shift id : {{ $request['data']->id }}<br>
        Tanggal : {{ $request['data']->date }}<br>
        Tanggal Pengganti : {{ $request['data']->date_to }}<br>
        Pemohon : {{ $request['data']->nama_pemohon }}<br>
        Pengganti : {{ $request['data']->nama_delegate }}<br>
        telah di {{ $request['status'] }} oleh {{ $request['data']->nama_next }}<br>
        pada Tanggal {{ date('Y-m-d') }} dengan keterangan {{ $request['description'] }}
    </div>

@else

    <div>
        Permintaan Approval Tukar Shift dengan detail di bawah ini :<br>
        {{-- Tukar Shift id : {{ $request['data']->id }}<br> --}}
        Pemohon : {{ $request['data']->nama_pemohon }}<br>
        Pengganti : {{ $request['data']->nama_delegate }}<br>
        Tanggal : {{ $request['data']->date }}<br>
        Tanggal Pengganti : {{ $request['data']->date_to }}<br>
        Description : {{ $request['data']->description }}<br>
        Silahkan Cek Applikasi
        {{-- pada Tanggal {{ date('Y-m-d') }} --}}
        {{-- telah di {{ $request['status'] }} oleh {{ $request['data']->next_approver }}<br> --}}
    </div>

@endif
