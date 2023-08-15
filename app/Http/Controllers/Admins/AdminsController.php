<?php

namespace App\Http\Controllers\Admins;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Admin\Admin;
use App\Models\Category\Category;
use App\Models\Job\Application;
use App\Models\Job\Job;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Hash;

class AdminsController extends Controller
{

    public function viewLogin()
    {
        return view('admins.view-login');
    }

    public function checkLogin(Request $request)
    {
        $remember_me = $request->has('remember_me') ? true : false;

        if (auth()->guard('admin')->attempt(['email' => $request->input("email"), 'password' => $request->input("password")], $remember_me)) {

            return redirect()->route('admins.dashboard');
        }
        return redirect()->back()->with(['error' => 'error logging in']);
    }

    public function index() {

        $jobs = Job::select()->count();
        $categories = Category::select()->count();
        $admins = Admin::select()->count();
        $aplications = Application::select()->count();
        return view('admins.index',compact('jobs','categories','admins','aplications'));
    }

    public function admins() {
        $admins = Admin::all();

        return view('admins.all-admins',compact('admins'));
    }

    public function createAdmins(){
        return view('admins.create-admins');
    }

    public function storeAdmins(Request $request) {

        Request()->validate([
            'name' => "required|max:40",
            'email' => "required|max:40",
            'password' => "required",
        ]);

        $createAdmins = Admin::create([
            'name' => $request->name,
            'email' => $request->email,
            'password' => Hash::make($request->password),
        ]);
        if($createAdmins) {
            return redirect('/admin/all-admins')->with('create','Admin created succesfully');
        }
    }

    public function displayCategories(){

        $categories = Category::all();
        
        return view('admins.display-categories',compact('categories'));
    }

    public function createCategories(){
        return view('admins.create-categories');
    }

    public function storeCategories(Request $request){

        Request()->validate([
            'name' => "required|max:40",
        ]);

        $createCategories = Category::create([
            'name' => $request->name
        ]);
        if($createCategories) {
            return redirect('/admin/display-categories')->with('create','Category created succesfully');
        }
    }

    public function editCategories($id){
        $category = Category::find($id);

        return view('admins.edit-category',compact('category'));
    }

    public function updateCategories(Request $request, $id){
        Request()->validate([
            'name' => 'required|max:40'
        ]);

        $categoryUpdate = Category::find($id);
        $categoryUpdate->update([
            'name' => $request->name
        ]);

        if($categoryUpdate) {
            return redirect('/admin/display-categories')->with('update','Category updated succesfully');
        }


    }

    public function deleteCategories($id){
        $deleteCategory = Category::find($id);
        $deleteCategory->delete();

        if($deleteCategory) {
            return redirect('/admin/display-categories')->with('delete','Category deleted succesfully');
        }
    }

    public function displayJobs(){
        $jobs = Job::all();
        return view('admins.display-jobs',compact('jobs'));
    }

    public function createJobs(){
        $categories = Category::all();
        return view('admins.create-jobs',compact('categories'));
    }

    public function storeJobs(Request $request) {

        Request()->validate([
            'job_title' => 'required',
            'job_region' => 'required',
            'company' => 'required',
            'job_type' => 'required',
            'vacancy' => 'required',
            'experience' => 'required',
            'salary' => 'required',
            'gender' => 'required',
            'aplication_deadline' => 'required',
            'jobdescription' => 'required',
            'responsibilities' => 'required',
            'education_experience' => 'required',
            'otherbenifits' => 'required',
            'category' => 'required',
            'image' => 'required',
        ]);

        $destinationPath = 'assets/images/';
        $myImage = $request->image->getClientOriginalName();
        $request->image->move(public_path($destinationPath),$myImage);

        $createJobs = Job::create([
            'job_title' => $request->job_title,
            'job_region' => $request->job_region,
            'company' => $request->company,
            'job_type' => $request->job_type,
            'vacancy' => $request->vacancy,
            'experience' => $request->experience,
            'salary' => $request->salary,
            'gender' => $request->gender,
            'aplication_deadline' => $request->aplication_deadline,
            'jobdescription' => $request->jobdescription,
            'responsibilities' => $request->responsibilities,
            'education_experience' => $request->education_experience,
            'otherbenifits' => $request->otherbenifits,
            'category' => $request->category,
            'image' => $myImage,
        ]);
        if($createJobs) {
            return redirect('/admin/display-jobs')->with('create','Job created succesfully');
        }
    }

    public function deleteJobs($id){
        $deleteJobs = Job::find($id);
        if (File::exists(public_path('assets/images/'.$deleteJobs->image))) {
            # code...
            File::delete(public_path('assets/images'.$deleteJobs->image));
        } else {
            // file does not exists
        }
        $deleteJobs->delete();

        if($deleteJobs) {
            return redirect('/admin/display-jobs')->with('delete','Job deleted succesfully');
        }
    }

    public function displayApplications() {
        $applications = Application::all();
        return view('admins.display-applications',compact('applications'));
    }

    public function deleteApplications($id){
        $deleteApplication = Application::find($id);
        $deleteApplication->delete();

        if($deleteApplication) {
            return redirect('/admin/display-applications')->with('delete','Application deleted succesfully');
        }
    }
}
