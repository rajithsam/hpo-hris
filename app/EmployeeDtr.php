<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class EmployeeDtr extends Model
{
    //
    protected $table = 'employee_dtr';
    protected $fillable = ['employee_id','start_of_duty', 'first_out', 'first_in', 'second_out', 'second_in', 'third_out', 'third_in', 'end_of_duty', 'undertime', 'late', 'overbreak'];

    public $timestamps = false;

    public function employee(){
        return $this->belongsTo('App\Employee', 'employee_id', 'employee_id');
    }
}
