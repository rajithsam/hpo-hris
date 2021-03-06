<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Shift;
use Validator;

class ShiftController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return Response
     */
    public function index()
    {
        $page_title = 'shifts';
        $data = 'Available Shifts';
        return view('shift.all')->with(compact('page_title', 'data'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return Response
     */
    public function create()
    {
        $page_title = 'shift-create';
        $data = 'Add new shift';
        return view('shift.create')->with(compact('page_title', 'data'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  Request  $request
     * @return Response
     */
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
                'description' => 'required',
                'shift_from' => 'required',
                'shift_to' => 'required',
                'working_hours' => 'required',
                'break' => 'required'
        ]);

        if($validator->fails()){
            flash()->error("You've got an error!");
            return redirect()->back();
        } else{
            $shift = Shift::create($request->all());
            flash()->success($shift->description.' successfully added');
            return redirect()->to('/shifts');
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return Response
     */
    public function show($id)
    {
        $shift = Shift::find($id);
        if(empty($shift)){
            flash()->error('No available shift for that');
            return redirect()->back();
        }
        $page_title = 'shift';
        $data = $shift;
        return view('shift.show')->with(compact('page_title', 'shift', 'data'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return Response
     */
    public function edit($id)
    {
        $shift = Shift::find($id);
        $data = $shift;
        return view('shift.edit')->with(compact('shift', 'data'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  Request  $request
     * @param  int  $id
     * @return Response
     */
    public function update(Request $request, $id)
    {
        $shift = Shift::find($id);
        if ($shift->update($request->all())) {
            flash()->success($shift->description.' has been successfully updated.');
            return redirect()->to('shifts/'.$id);
        } else {
            flash()->error($shift->description.' was not saved.');
            return redirect()->back();
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return Response
     */
    public function destroy($id)
    {
        // return response('Successfully deleted', 200, []);
        $shift = Shift::find($id);
        if ($shift) {
            $shift->delete();
            return response('Successfully deleted', 200, []);
        } else {
            return response('Something went wrong!', 500, []);
        }
        
    }
}
