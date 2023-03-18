@extends('backend.layout_admin')
@php
    $title = 'Users';
@endphp
@section('container')
    <div class="container-fluid">
        <h1 class="text-left mt-3">Users list</h1>
        <div class="row">
            <div class="col-12 mt-2">
                @empty(!session('deleteSuccess'))
                    <div class="alert alert-success mt-2" role="alert">
                        {{ session('deleteSuccess') }}
                    </div>
                @endempty
                <div class="card">
                    <div class="card-header">
                        <form class="form-inline" id="form-filter">
                            <div class="form-group">
                                <label for="role">Role</label>
                                <div class="col-5">
                                    <select class="form-control select-filter" name="role" id="role">
                                        <option selected>All</option>
                                        @foreach ($roles as $role => $value)
                                            <option value="{{ $value }}"
                                                    @if ((string) $value === $selectedRole) selected @endif>
                                                {{ $role }}
                                            </option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="city">City</label>
                                <div class="col-5">
                                    <select class="form-control select-filter" name="city" id="city">
                                        <option selected>All</option>
                                        @foreach ($cities as $city)
                                            <option @if ($city === $selectedCity) selected @endif>
                                                {{ $city }}
                                            </option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="company">Company</label>
                                <div class="col-5">
                                    <select class="form-control select-filter" name="company" id="company">
                                        <option selected>All</option>
                                        @foreach ($companies as $company)
                                            <option value="{{ $company->id }}"
                                                    @if ($company->id === (int) $selectedCompany) selected @endif>
                                                {{ $company->name }}
                                            </option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-12 mt-2">
                <div class="table-responsive my-3">
                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                        <thead>
                        <tr>
                            <th>#</th>
                            <th>Avatar</th>
                            <th>Info</th>
                            <th>Position</th>
                            <th>City</th>
                            <th>Company</th>
                            <th>Role</th>
                            <th>Edit</th>
                            <th>Delete</th>
                        </tr>
                        </thead>
                        <tbody>
                        @foreach ($data as $value)
                            <tr>
                                <td><a href="#">{{ $value->id }}</a></td>

                                @if ($value->avatar !== null)
                                    <td class="text-center"><img src="{{ $value->avatar }}" alt=""
                                                                 width="60"></td>
                                @else
                                    <td class="text-center"><img
                                            src="{{ asset('backend/images/users/avatar-0.jpg') }}" alt=""
                                            width="60"></td>
                                @endif
                                <td>
                                    {{ $value->name }} - {{ $value->gender_name }}
                                    <br>
                                    <a href="mailto:{{ $value->email }}">{{ $value->email }}</a>
                                    <br>
                                    <a href="tel:{{ $value->phone }}">{{ $value->phone }}</a>

                                </td>

                                <td class="text-capitalize">{{ $value->position }} </td>

                                <td class="text-capitalize">{{ $value->city }} </td>

                                <td class="text-capitalize">{{ optional($value->company)->name }} </td>

                                <td class="text-capitalize">{{ $value->role_name }}</td>


                                <td class="text-center">
                                    <a href="{{ route('admin.users.edit', $value) }}" class="btn btn-info">Edit</a>
                                </td>
                                <td class="text-center">
                                    <form action="{{ route('admin.users.destroy', $value) }}" method="post">
                                        @csrf
                                        @method('DELETE')
                                        <button class="btn btn-danger">Delete</button>
                                    </form>
                                </td>
                            </tr>
                        @endforeach
                        </tbody>
                    </table>
                    <ul class="pagination pagination-rounded mb-0 justify-content-end mr-5">{{ $data->links() }}</ul>
                </div>
            </div>
        </div>
    </div>
@endsection

@push('js')
    <script type="text/javascript">
        $(document).ready(function () {
            $(".select-filter").change(function () {
                $("#form-filter").submit();
            })
        });
    </script>
@endpush
