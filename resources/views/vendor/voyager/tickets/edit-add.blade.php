@php
$edit = !is_null($dataTypeContent->getKey());
$add = is_null($dataTypeContent->getKey());
$role = $user->role_id;
$role_id_group = $user->role_property_id;  
@endphp
@extends('voyager::master')

@section('css')
    <meta name="csrf-token" content="{{ csrf_token() }}">
@stop

@section('page_title', __('voyager::generic.' . ($edit ? 'edit' : 'add')) . ' ' .
    $dataType->getTranslatedAttribute('display_name_singular'))

@section('page_header')
    <h1 class="page-title">
        <i class="{{ $dataType->icon }}"></i>
        {{ __('voyager::generic.' . ($edit ? 'edit' : 'add')) . ' ' . $dataType->getTranslatedAttribute('display_name_singular') }}
    </h1>
    @include('voyager::multilingual.language-selector')
@stop

@section('content')
    <div class="page-content edit-add container-fluid">
        <div class="row">
            <div class="col-md-12">

                <div class="panel panel-bordered">
                    <!-- form start -->
                    <form role="form" class="form-edit-add"
                        action="{{ $edit ? route('voyager.' . $dataType->slug . '.update', $dataTypeContent->getKey()) : route('voyager.' . $dataType->slug . '.store') }}"
                        method="POST" enctype="multipart/form-data">
                        <!-- PUT Method if we are editing -->
                        @if ($edit)
                            {{ method_field('PUT') }}
                        @endif

                        <!-- CSRF TOKEN -->
                        {{ csrf_field() }}

                        <div class="panel-body">

                            @if (count($errors) > 0)
                                <div class="alert alert-danger">
                                    <ul>
                                        @foreach ($errors->all() as $error)
                                            <li>{{ $error }}</li>
                                        @endforeach
                                    </ul>
                                </div>
                            @endif

                            <!-- Adding / Editing -->
                            @php
                                $dataTypeRows = $dataType->{$edit ? 'editRows' : 'addRows'};
                            @endphp

                            @foreach ($dataTypeRows as $row)
                                <!-- GET THE DISPLAY OPTIONS -->
                                @php
                                    // dump($row->field=='ticket_belongsto_user_relationship');
                                    
                                    if ($row->field == 'ticket_belongsto_user_relationship' && $role_id_group != 10) {
                                        continue;
                                    }
                                    if ($row->field == 'ticket_belongsto_user_relationship_1' && $role_id_group != 10) {
                                        continue;
                                    }
                                    
                                    $display_options = $row->details->display ?? null;
                                    if ($dataTypeContent->{$row->field . '_' . ($edit ? 'edit' : 'add')}) {
                                        $dataTypeContent->{$row->field} = $dataTypeContent->{$row->field . '_' . ($edit ? 'edit' : 'add')};
                                    }
                                @endphp
                                @if (isset($row->details->legend) && isset($row->details->legend->text))
                                    <legend class="text-{{ $row->details->legend->align ?? 'center' }}"
                                        style="background-color: {{ $row->details->legend->bgcolor ?? '#f0f0f0' }};padding: 5px;">
                                        {{ $row->details->legend->text }}</legend>
                                @endif

                                <div class="form-group @if ($row->type == 'hidden') hidden @endif col-md-{{ $display_options->width ?? 12 }} {{ $errors->has($row->field) ? 'has-error' : '' }}" @if (isset($display_options->id)){{ "id=$display_options->id" }}@endif>
                                    {{ $row->slugify }}
                                    <label class="
                                    control-label" for="name">{{ $row->getTranslatedAttribute('display_name') }}</label>

                                    @include('voyager::multilingual.input-hidden-bread-edit-add')
                                    @if (($row->field != 'ticket_belongsto_user_relationship'&&$row->field != 'ticket_belongsto_user_relationship_1') && $role_id_group == 10)

                                        @if (isset($row->details->view))
                                            @include($row->details->view, ['row' => $row, 'dataType' => $dataType,
                                            'dataTypeContent' => $dataTypeContent, 'content' =>
                                            $dataTypeContent->{$row->field}, 'action' => 'read', 'view' => 'read', 'options'
                                            => $row->details])
                                        @elseif($row->type == "image")
                                            <img class="img-responsive"
                                                src="{{ filter_var($dataTypeContent->{$row->field}, FILTER_VALIDATE_URL) ? $dataTypeContent->{$row->field} : Voyager::image($dataTypeContent->{$row->field}) }}">
                                        @elseif($row->type == 'multiple_images')
                                            @if (json_decode($dataTypeContent->{$row->field}))
                                                @foreach (json_decode($dataTypeContent->{$row->field}) as $file)
                                                    <img class="img-responsive"
                                                        src="{{ filter_var($file, FILTER_VALIDATE_URL) ? $file : Voyager::image($file) }}">
                                                @endforeach
                                            @else
                                                <img class="img-responsive"
                                                    src="{{ filter_var($dataTypeContent->{$row->field}, FILTER_VALIDATE_URL) ? $dataTypeContent->{$row->field} : Voyager::image($dataTypeContent->{$row->field}) }}">
                                            @endif
                                        @elseif($row->type == 'relationship')
                                            @include('voyager::formfields.relationship', ['view' => 'read', 'options' =>
                                            $row->details])
                                        @elseif($row->type == 'select_dropdown' && property_exists($row->details,
                                            'options') &&
                                            !empty($row->details->options->{$dataTypeContent->{$row->field}})
                                            )
                                            <?php echo $row->details->options->{$dataTypeContent->{$row->field}}; ?>
                                        @elseif($row->type == 'select_multiple')
                                            @if (property_exists($row->details, 'relationship'))

                                                @foreach (json_decode($dataTypeContent->{$row->field}) as $item)
                                                    {{ $item->{$row->field} }}
                                                @endforeach

                                            @elseif(property_exists($row->details, 'options'))
                                                @if (!empty(json_decode($dataTypeContent->{$row->field})))
                                                    @foreach (json_decode($dataTypeContent->{$row->field}) as $item)
                                                        @if (@$row->details->options->{$item})
                                                            {{ $row->details->options->{$item} . (!$loop->last ? ', ' : '') }}
                                                        @endif
                                                    @endforeach
                                                @else
                                                    {{ __('voyager::generic.none') }}
                                                @endif
                                            @endif
                                        @elseif($row->type == 'date' && $row->type == 'timestamp')
                                            @if (property_exists($row->details, 'format') && !is_null($dataTypeContent->{$row->field}))
                                                {{ \Carbon\Carbon::parse($dataTypeContent->{$row->field})->formatLocalized($row->details->format) }}
                                            @else
                                                {{ $dataTypeContent->{$row->field} }}
                                            @endif
                                        @elseif($row->type == 'checkbox')
                                            @if (property_exists($row->details, 'on') && property_exists($row->details, 'off'))
                                                @if ($dataTypeContent->{$row->field})
                                                    <span class="label label-info">{{ $row->details->on }}</span>
                                                @else
                                                    <span class="label label-primary">{{ $row->details->off }}</span>
                                                @endif
                                            @else
                                                {{ $dataTypeContent->{$row->field} }}
                                            @endif
                                        @elseif($row->type == 'color')
                                            <span class="badge badge-lg"
                                                style="background-color: {{ $dataTypeContent->{$row->field} }}">{{ $dataTypeContent->{$row->field} }}</span>
                                        @elseif($row->type == 'coordinates')
                                            @include('voyager::partials.coordinates')
                                        @elseif($row->type == 'rich_text_box')
                                            @include('voyager::multilingual.input-hidden-bread-read')
                                            {!! $dataTypeContent->{$row->field} !!}
                                        @elseif($row->type == 'file')
                                            @if (json_decode($dataTypeContent->{$row->field}))
                                                @foreach (json_decode($dataTypeContent->{$row->field}) as $file)
                                                    <a
                                                        href="{{ Storage::disk(config('voyager.storage.disk'))->url($file->download_link) ?: '' }}">
                                                        {{ $file->original_name ?: '' }}
                                                    </a>
                                                    <br />
                                                @endforeach
                                            @else
                                                <a
                                                    href="{{ Storage::disk(config('voyager.storage.disk'))->url($row->field) ?: '' }}">
                                                    {{ __('voyager::generic.download') }}
                                                </a>
                                            @endif
                                        @else
                                            @include('voyager::multilingual.input-hidden-bread-read')
                                            <p>{{ $dataTypeContent->{$row->field} }}</p>
                                        @endif
                                    @endif
                                    @if (isset($row->details->view))
                                        @if (($row->field != 'ticket_belongsto_user_relationship'&&$row->field != 'ticket_belongsto_user_relationship_1') && $role_id_group == 10)
                                            <div hidden>
                                                @include($row->details->view, ['row' => $row, 'dataType' => $dataType,
                                                'dataTypeContent' => $dataTypeContent, 'content' =>
                                                $dataTypeContent->{$row->field},
                                                'action' => ($edit ? 'edit' : 'add'), 'view' => ($edit ? 'edit' : 'add'),
                                                'options'
                                                => $row->details])
                                            </div>
                                        @else
                                            @include($row->details->view, ['row' => $row, 'dataType' => $dataType,
                                            'dataTypeContent' => $dataTypeContent, 'content' =>
                                            $dataTypeContent->{$row->field},
                                            'action' => ($edit ? 'edit' : 'add'), 'view' => ($edit ? 'edit' : 'add'),
                                            'options'
                                            => $row->details])
                                        @endif
                                    @elseif ($row->type == 'relationship')
                                        @if (($row->field != 'ticket_belongsto_user_relationship'&&$row->field != 'ticket_belongsto_user_relationship_1') && $role_id_group == 10)
                                            <div hidden>
                                                @include('voyager::formfields.relationship', ['options' => $row->details])
                                            </div>
                                        @else
                                            @include('voyager::formfields.relationship', ['options' => $row->details])
                                        @endif
                                    @else
                                        @if (($row->field != 'ticket_belongsto_user_relationship'&&$row->field != 'ticket_belongsto_user_relationship_1') && $role_id_group == 10)
                                            <div hidden>
                                                {!! app('voyager')->formField($row, $dataType, $dataTypeContent) !!}
                                            </div>
                                        @else
                                            {!! app('voyager')->formField($row, $dataType, $dataTypeContent) !!}
                                        @endif
                                    @endif

                                    @foreach (app('voyager')->afterFormFields($row, $dataType, $dataTypeContent) as $after)
                                        {!! $after->handle($row, $dataType, $dataTypeContent) !!}
                                    @endforeach
                                    @if ($errors->has($row->field))
                                        @foreach ($errors->get($row->field) as $error)
                                            <span class="help-block">{{ $error }}</span>
                                        @endforeach
                                    @endif
                                </div>
                            @endforeach

                        </div><!-- panel-body -->

                        <div class="panel-footer">
                        @section('submit-buttons')
                            <button type="submit" class="btn btn-primary save">{{ __('voyager::generic.save') }}</button>
                        @stop
                        @yield('submit-buttons')
                        <a type="button" onclick="window.history.back()"
                            class="btn btn-danger cancel">{{ __('voyager::generic.cancel') }}</a>
                    </div>
                </form>

                <iframe id="form_target" name="form_target" style="display:none"></iframe>
                <form id="my_form" action="{{ route('voyager.upload') }}" target="form_target" method="post"
                    enctype="multipart/form-data" style="width:0;height:0;overflow:hidden">
                    <input name="image" id="upload_file" type="file" onchange="$('#my_form').submit();this.value='';">
                    <input type="hidden" name="type_slug" id="type_slug" value="{{ $dataType->slug }}">
                    {{ csrf_field() }}
                </form>

            </div>
        </div>
    </div>
</div>

<div class="modal fade modal-danger" id="confirm_delete_modal">
    <div class="modal-dialog">
        <div class="modal-content">

            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title"><i class="voyager-warning"></i> {{ __('voyager::generic.are_you_sure') }}
                </h4>
            </div>

            <div class="modal-body">
                <h4>{{ __('voyager::generic.are_you_sure_delete') }} '<span class="confirm_delete_name"></span>'</h4>
            </div>

            <div class="modal-footer">
                <button type="button" class="btn btn-default"
                    data-dismiss="modal">{{ __('voyager::generic.cancel') }}</button>
                <button type="button" class="btn btn-danger"
                    id="confirm_delete">{{ __('voyager::generic.delete_confirm') }}</button>
            </div>
        </div>
    </div>
</div>
<!-- End Delete File Modal -->
@stop

@section('javascript')
<script>
    var params = {};
    var $file;

    function deleteHandler(tag, isMulti) {
        return function() {
            $file = $(this).siblings(tag);

            params = {
                slug: '{{ $dataType->slug }}',
                filename: $file.data('file-name'),
                id: $file.data('id'),
                field: $file.parent().data('field-name'),
                multi: isMulti,
                _token: '{{ csrf_token() }}'
            }

            $('.confirm_delete_name').text(params.filename);
            $('#confirm_delete_modal').modal('show');
        };
    }

    $('document').ready(function() {
        $('.toggleswitch').bootstrapToggle();

        //Init datepicker for date fields if data-datepicker attribute defined
        //or if browser does not handle date inputs
        $('.form-group input[type=date]').each(function(idx, elt) {
            if (elt.hasAttribute('data-datepicker')) {
                elt.type = 'text';
                $(elt).datetimepicker($(elt).data('datepicker'));
            } else if (elt.type != 'date') {
                elt.type = 'text';
                $(elt).datetimepicker({
                    format: 'L',
                    extraFormats: ['YYYY-MM-DD']
                }).datetimepicker($(elt).data('datepicker'));
            }
        });

        @if ($isModelTranslatable)
            $('.side-body').multilingual({"editing": true});
        @endif

        $('.side-body input[data-slug-origin]').each(function(i, el) {
            $(el).slugify();
        });

        $('.form-group').on('click', '.remove-multi-image', deleteHandler('img', true));
        $('.form-group').on('click', '.remove-single-image', deleteHandler('img', false));
        $('.form-group').on('click', '.remove-multi-file', deleteHandler('a', true));
        $('.form-group').on('click', '.remove-single-file', deleteHandler('a', false));

        $('#confirm_delete').on('click', function() {
            let url = '{{ route('voyager.' . $dataType->slug . '.media.remove') }}'
            $.post(url, params, function(
                response) {
                if (response &&
                    response.data &&
                    response.data.status &&
                    response.data.status == 200) {

                    toastr.success(response.data.message);
                    $file.parent().fadeOut(300, function() {
                        $(this).remove();
                    })
                } else {
                    toastr.error("Error removing file.");
                }
            });

            $('#confirm_delete_modal').modal('hide');
        });
        $('[data-toggle="tooltip"]').tooltip();
    });
</script>
@stop
