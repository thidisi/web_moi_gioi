@extends('backend.layout_admin')
@php
$title = 'Posts';
@endphp
@section('container')
    <div class="container-fluid">
        <h1 class="text-left mt-3">Posts Create</h1>
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">
                        <form action="" method="post">
                            @csrf
                            <div class="form-group">
                                <label>Company</label>
                                <select class="form-control" name="company_id" id=""></select>
                                {{-- @if ($errors->has('name'))
                                    <p class="text-capitalize p-2 text-danger">{{ $errors->first('name') }}</p>
                                @endif --}}
                            </div>
                            <div class="form-group">
                                <label>Name</label>
                                <input type="text" name="name" class="form-control" />
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
