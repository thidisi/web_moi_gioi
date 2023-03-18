@extends('backend.layout_admin')
@php
$title = 'Posts';
@endphp
@section('container')
    <div class="container-fluid">
        <h1 class="text-left mt-3">Posts list</h1>
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-header">
                        <a href="{{ route('admin.posts.create') }}" class="btn btn-primary">Create</a>
                        <label for="csv" class="btn btn-info mb-0 ml-2">Import CSV</label>
                        <input type="file" name="csv" id="csv" hidden>
                        <nav class="float-right">
                            <ul class="pagination mb-0" id="pagination">
                            </ul>
                        </nav>
                    </div>
                    <div class="card-body">
                        <table class="table table-striped table-bordered" id="table-data">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Job Title</th>
                                    <th>Location</th>
                                    <th>Remotable</th>
                                    <th>Is Part-time</th>
                                    <th>Range Salary</th>
                                    <th>Date Range</th>
                                    <th>Status</th>
                                    <th>Is Pinned</th>
                                    <th>Created At</th>
                                </tr>
                            </thead>
                            <tbody></tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@push('js')
    <script type="text/javascript">
        $(document).ready(function() {
            // crawl data
            $.ajax({
                url: '{{ route('api.posts') }}',
                dataType: 'json',
                data: {page: {{ request()->get('page') ?? 1 }} },
                success: function(response) {
                    // console.log(response);
                    response.data.data.forEach(function(each) {
                        let location = each.district + ' - ' + each.city;
                        let remotable = each.remotable ? 'On' : 'Off';
                        let range_salary = (each.min_salary && each.max_salary) ? (each
                            .min_salary + ' - ' + each.max_salary) : '';
                        let date_range = (each.start_date && each.end_date) ? (each.start_date +
                            ' - ' + each.end_date) : '';
                        let is_pinned = each.is_pinned !== 0 ? 'On' : 'Off';
                        let created_at = convertDateToDateTime(each.created_at);
                        $('#table-data').append($('<tr>')
                            .append($('<td>').append(each.id))
                            .append($('<td>').append(each.job_title))
                            .append($('<td>').append(location))
                            .append($('<td>').append(remotable))
                            .append($('<td>').append(each.is_parttime))
                            .append($('<td>').append(range_salary))
                            .append($('<td>').append(date_range))
                            .append($('<td>').append(each.status))
                            .append($('<td>').append(is_pinned))
                            .append($('<td>').append(created_at))
                        );
                    });
                    renderPagination(response.data.pagination);
                },
                error: function(response) {
                    $.toast({
                        heading: 'Import Error',
                        text: response.responseJSON.message,
                        showHideTransition: 'slide',
                        position: 'top-right',
                        icon: 'error'
                    })
                },

            })

            $(document).on('click', '#pagination > li > a', function(event) {
                event.preventDefault();
                let page = $(this).text();
                // truyen len url (get param from url js)
                let urlParams = new URLSearchParams(window.location.search);
                urlParams.set('page', page);
                window.location.search = urlParams;
            });

            $("#csv").change(function(event) {
                var formData = new FormData();
                formData.append('file', $(this)[0].files[0]);
                $.ajax({
                    url: '{{ route('admin.posts.import_csv') }}',
                    type: 'POST',
                    enctype: 'multipart/form-data',
                    dataType: 'json',
                    data: formData,
                    async: false,
                    cache: false,
                    contentType: false,
                    processData: false,
                    success: function() {
                        $.toast({
                            heading: 'Import Success',
                            text: 'Your data have been imported',
                            showHideTransition: 'slide',
                            position: 'top-right',
                            icon: 'success'
                        })
                    },
                    error: function(response) {},
                })
            })
        });
    </script>
@endpush
