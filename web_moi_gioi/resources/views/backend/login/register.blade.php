@extends('backend.layout_admin_login')
@php
$title = 'Sinup';
@endphp
@section('content')
    <h4 class="mt-0">Free Sign Up</h4>
    <p class="text-muted mb-4">Don't have an account? Create your account, it takes less than a minute</p>

    <form action="{{ route('admin.registering') }}" method="post">
        @csrf
        @auth
            <div class="form-group">
                <label>Full Name</label>
                <input class="form-control" type="text" disabled value="{{ auth()->user()->name }}">
            </div>
            <div class="form-group">
                <label>Email address</label>
                <input class="form-control" type="email" disabled value="{{ auth()->user()->email }}">
            </div>
            <div class="form-group">
                <label>Avatar</label>
                <img src="{{ auth()->user()->avatar }}" class="rounded-circle ml-1" width="32">
            </div>
        @endauth
        @guest
            <div class="form-group">
                <label for="name">Full Name</label>
                <input class="form-control" type="text" id="name" placeholder="Enter your name" required name="name">
            </div>
            <div class="form-group">
                <label for="emailaddress">Email address</label>
                <input class="form-control" type="email" id="emailaddress" required placeholder="Enter your email"
                    name="email">
            </div>
        @endguest
        <div class="form-group">
            <label for="password">Password</label>
            @if ($errors->has('password'))
                <p class="text-capitalize p-2 text-danger">{{ $errors->first('password') }}</p>
            @endif
            <input class="form-control" type="password" required id="password" placeholder="Enter your password"
                name="password">
        </div>
        <div class="form-group">
            @if ($errors->has('role'))
                <p class="text-capitalize p-2 text-danger">{{ $errors->first('role') }}</p>
            @endif
            <div class="custom-control custom-radio custom-control-inline">
                <input type="radio" id="applicant" name="role" class="custom-control-input" value="1" checked>
                <label class="custom-control-label" for="applicant">Applicant</label>
            </div>
            <div class="custom-control custom-radio custom-control-inline">
                <input type="radio" id="hr" name="role" class="custom-control-input" value="2">
                <label class="custom-control-label" for="hr">HR</label>
            </div>
        </div>
        <div class="form-group mb-0 text-center">
            <button class="btn btn-primary btn-block" type="submit"><i class="mdi mdi-account-circle"></i> Sign Up
            </button>
        </div>
    </form>
    <!-- end form-->

    <!-- Footer-->
    <footer class="footer footer-alt">
        <p class="text-muted">Already have account? <a href="{{ route('admin.login') }}" class="text-muted ml-1"><b>Log
                    In</b></a>
        </p>
    </footer>
@endsection
