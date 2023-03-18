@extends('backend.layout_admin')
@php
$title = 'Users';
@endphp
@section('container')
    <div class="container-fluid">
        <div class="row">
            <div class="col-12 mt-2">

                <form action="{{ route('admin.users.update', $each) }}" method="post">
                    @csrf
                    @method('PUT')
                    <div class="mb-3">

                        <h4 class="form-label">Info</h4>
                        {{-- @if ($errors->has('name'))
                            <p class="text-capitalize p-2 text-danger">{{ $errors->first('name') }}</p>
                        @endif --}}
                        @if ($errors->any())
                            <div class="alert alert-danger">
                                <ul>
                                    @foreach ($errors->all() as $error)
                                        <li>{{ $error }}</li>
                                    @endforeach
                                </ul>
                            </div>
                        @endif
                        <div class="form-group ml-2">
                            <div class="mb-3">
                                <label class="form-label">Name</label>
                                <input type="text" class="form-control" name="name" value="{{ $each->name }}">
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Gender</label>
                                <select class="form-control" name="gender" id="">
                                    <option value="0" @if ($each->gender === 0) selected @endif>
                                        Male
                                    </option>
                                    <option value="1" @if ($each->gender === 1) selected @endif>
                                        Female
                                    </option>
                                </select>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Email</label>
                                <input type="text" class="form-control" name="email" value="{{ $each->email }}">
                            </div>
                        </div>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Position</label>
                        <input type="text" class="form-control" name="position" value="{{ $each->position }}">
                    </div>
                    <div class="mb-3">
                        <label class="form-label">City</label>
                        <select class="form-control" name="city" id="">
                            @foreach ($users as $value)
                                <option value="{{ $value->city }}" @if ($each->city === $value->city) selected @endif>
                                    {{ $value->city }}
                                </option>
                            @endforeach
                        </select>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Company</label>
                        <select class="form-control" name="company_id" id="">
                            @foreach ($companies as $company)
                                <option value="{{ $company->id }}" @if ($each->company_id === $company->id) selected @endif>
                                    {{ $company->name }}
                                </option>
                            @endforeach
                        </select>
                    </div>
                    <button type="submit" class="btn btn-primary">Update</button>
                </form>
            </div>
        </div>
    </div>
@endsection
