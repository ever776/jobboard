@extends('layouts.admin')
@section('content')
    <div class="row">
        <div class="col">
            <div class="card">
                <div class="card-body">
                    @if (\Session::has('delete'))
                        <div class="alert alert-success">
                            <p>!!{{ \Session::get('delete') }}!!</p>
                        </div>
                    @endif
                    <h5 class="card-title mb-4 d-inline">Job Applications</h5>

                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">cv</th>
                                <th scope="col">Email</th>
                                <th scope="col">View Job</th>
                                <th scope="col">Job Title</th>
                                <th scope="col">Company</th>
                                <th scope="col">delete</th>
                            </tr>
                        </thead>
                        <tbody>
                          @foreach ($applications as $application)
                            <tr>
                                <th scope="row">{{ $application->id }}</th>
                                <td><a class="btn btn-success" href="{{ asset('assets/cvs/'.$application->cv.'') }}" target="_blank">CV</a></td>
                                <td>{{ $application->email }}</td>
                                <td><a class="btn btn-success" href="{{ route('single.job',$application->id) }}" target="_blank">Go to Job</a></td>
                                <td>{{ $application->job_title }}</td>
                                <td>{{ $application->company }}</td>
                                <td><a href="{{ route('delete.applications',$application->id) }}" class="btn btn-danger  text-center ">delete</a></td>
                            </tr>
                          @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
@endsection
