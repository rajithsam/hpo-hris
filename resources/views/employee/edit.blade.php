@extends('layouts.master')

@section('content')
<div class="panel panel-default">
    <div class="panel-heading">
        Edit Employee
    </div>
    <div class="panel-body">
        <div class="row">
            <div class="col-lg-6">
                <form role="form" action="/employees/{{ $employee->employee_id }}" method="POST">
                    {!! csrf_field() !!}
                    <div class="form-group">
                        <label>Facetime Biometric ID</label>
                        <input class="form-control" name="employee_id" placeholder="ex. 00001" value="{{ $employee->employee_id }}">
                        <p class="help-block">Generated by Facetime Biometric System</p>
                    </div>
                    <div class="form-group">
                        <label>Name</label>
                        <input class="form-control" name="name" placeholder="ex. John Smith" value="{{ $employee->name }}">
                    </div>
                    <div class="form-group">
                        <label>Department</label>
                        <select class="form-control" name="department_id">
                            @foreach(App\Department::all() as $department)
                            <option value="{{ $department->id }}" {{ ($employee->department_id === $department->id ? 'selected' : '') }}>{{ $department->name }}</option>
                            @endforeach
                        </select>
                    </div>
                    <hr>
                    <button type="submit" class="btn btn-primary"><i class="fa fa-user"></i> Add employee</button>
                    <button type="reset" class="btn btn-default">Reset</button>
                </form>
            </div>
            <!-- /.col-lg-6 (nested) -->
        </div>
        <!-- /.row (nested) -->
    </div>
    <!-- /.panel-body -->
</div>
@stop
