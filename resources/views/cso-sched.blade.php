<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-uWxY/CJNBR+1zjPWmfnSnVxwRheevXITnMqoEIeG1LJrdI0GlVs/9cVSyPYXdcSF" crossorigin="anonymous">

    <title>CSO Schedulle</title>
	<style>
		@import url('https://fonts.googleapis.com/css?family=Noto+Sans&display=swap');

		  img.img-fluid{
			  width:50px;
		  }	
		body{
		font-size: 10px;
		font-family: 'Noto Sans', sans-serif;
		}

		table{

		tbody{
		tr{
		  
		  th{
			width: 200px;
			text-align: center;
			
			img{
			  width: 50px;
			  border-radius: 50%;
			  margin-bottom: 10px;
			}
		  }
		  
		  td{
			font-weight: bold;
			font-size: 10px;

			&:hover{
			  cursor: pointer;
			}
			
			.details{
			  display: flex;
			  justify-content: space-between;
			  font-size: 9px;
			  font-weight: normal;
			  color: #DCDFDC;
			  margin-top: auto;
			  
			  .time{
			  }
			}
		  }
		} 
		}
		}
	</style>
</head>

<body class="">

<div class="table-responsive">
<table class="table table-hover">
  <thead class="thead-light">
    <tr>
		<?php
			function selectTimesOfDay() {
				$open_time = strtotime("06:00");
				$close_time = strtotime("21:30");
				$now = strtotime("06:00");
				$output = "";
				$j = 0;
				for( $i=$open_time; $i<$close_time; $i+=3600) {
					if( $i < $now) continue;
					$output .= "<th scope='col'>".date("H:i",$i)."</th>";
					$output .= "<th scope='col'></th>";
					$output .= "<th scope='col'></th>";
					$output .= "<th scope='col'></th>";
					$j++;
				}
				dump(date("l jS \of F Y h:i:s A"));
				return $output;
			}
		?>
      <th scope="col"></th>
	  <?=selectTimesOfDay()?>
    </tr>
  </thead>
  <tbody>
  
    @foreach ($employee_data as $item)
		<tr >
		  <th scope="row">
			<div class="image-part"><img src="https://thecityresort.com/storage/{{ $item->avatar }}" class="img-fluid"></div>
			<div class="person-name">{{ $item->name }}</div>
		  </th>
			@php
				$j = 0;
				$shift=false;
			@endphp
		  @foreach ($desc_data as $data)
			@if($item->employee_id == $data->employee_id)
				@php
					$day = date('l');
					$a=array("1"=>"Monday","2"=>"Tuesday","3"=>"Wednesday","4"=>"Thursday","5"=>"Friday","6"=>"Saturday","7"=>"Sunday");
					$today = array_search($day,$a);
					
					$open_time = strtotime($data->time);
					$close_time = strtotime($data->end);
					$now = strtotime("06:00");
					$output = 0;
					for( $i=$open_time; $i<$close_time; $i+=900) {
						$output++;
					}
					if($output%2!=0&&$output!=1){
						$output = $output - 1;
					}
				@endphp
				@if($today==$data->day)
					@if($data->time=="13:00:00"&&$j==0)
						@php
							$shift=true;
						@endphp
						<td colspan="28"></td>
					@endif
					@php
						if($output%2!=0&&$output!=1&&$shift==true){
							$output = $output - 1;
						}
					@endphp
				<td colspan="{{$output}}" class="bg-success text-white"><div class="issue-details">{{$data->description}} </div><div class="details"><div class="issue-id">{{ $data->time }} - {{ $data->end }}</div><div class="time">{{$day}}</div></div></td>
					@php
						$j++;
					@endphp
				@endif
			@endif
		  @endforeach
		</tr>
	@endforeach
  </tbody>
</table>
</div>

    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-kQtW33rZJAHjgefvhyyzcGF3C5TFyBQBA13V1RKPf4uH+bwyzQxZ6CmMZHmNBEfJ" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.0/jquery.validate.js"></script>
    <script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js"></script>

    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.min.js" integrity="sha384-PsUw7Xwds7x08Ew3exXhqzbhuEYmA2xnwc8BuD6SEr+UmEHlX8/MCltYEodzWA4u" crossorigin="anonymous"></script>
    -->
</body>

<script type="text/javascript">
    console.log("{{ route('api.tickets') }}");
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });
    var table = $('.tickets-all').DataTable({
        "paging": false,
        "ordering": false,
        "info": false,
        "filter": false,
        "ajax": {
            "url": "{{ route('api.tickets') }}",
            "type": "GET",
            "dataSrc": "",
            "complete": function(xhr, responseText) {
                console.log(xhr);
                console.log(responseText); //*** responseJSON: Array[0]
            }
        },
        columns: [{
                data: 'tranNumber',
                name: 'tranNumber'
            },
            {
                data: 'title',
                name: 'title'
            },
            {
                data: 'created_at',
                name: 'created_at'
            },
            {
                data: 'created_by',
                name: 'created_by'
            },
            {
                data: 'unit_name',
                name: 'unit_name'
            }
        ]
    });

    var table2 = $('.tickets-proccess').DataTable({
        "paging": false,
        "ordering": false,
        "info": false,
        "filter": false,
        "ajax": {
            "url": "{{ route('api.tickets-proccess') }}",
            "type": "GET",
            "dataSrc": "",
            "complete": function(xhr, responseText) {
                console.log(xhr);
                console.log(responseText); //*** responseJSON: Array[0]
            }
        },
        columns: [{
                data: 'tranNumber',
                name: 'tranNumber'
            },
            {
                data: 'title',
                name: 'title'
            },
            {
                data: 'created_at',
                name: 'created_at'
            },
            {
                data: 'created_by',
                name: 'created_by'
            },
            {
                data: 'unit_name',
                name: 'unit_name'
            }
        ]
    });
    var table3 = $('.tickets-success').DataTable({
        "paging": false,
        "ordering": false,
        "info": false,
        "filter": false,
        "ajax": {
            "url": "{{ route('api.tickets-success') }}",
            "type": "GET",
            "dataSrc": "",
            "complete": function(xhr, responseText) {
                console.log(xhr);
                console.log(responseText); //*** responseJSON: Array[0]
            }
        },
        columns: [{
                data: 'tranNumber',
                name: 'tranNumber'
            },
            {
                data: 'title',
                name: 'title'
            },
            {
                data: 'created_at',
                name: 'created_at'
            },
            {
                data: 'created_by',
                name: 'created_by'
            },
            {
                data: 'unit_name',
                name: 'unit_name'
            }
        ]
    });
    setInterval(function() {
        table.ajax.reload();
        table2.ajax.reload();
        table3.ajax.reload();
    }, 30000);
</script>

</html>