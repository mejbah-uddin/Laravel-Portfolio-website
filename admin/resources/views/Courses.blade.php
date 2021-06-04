@extends('Layout.app')

@section('content')

<div id="mainDivCourse" class="container d-none">
<div class="row">
<div class="col-md-12 p-5">
  <button class="btn btn-danger" id="AddNewCourseBtnID">Add New Course</button>
<table id="courseDataTable" class="table table-striped table-bordered" cellspacing="0" width="100%">
  <thead>
    <tr>
  	  <th class="th-sm">Name</th>
  	  <th class="th-sm">Fee</th>
  	  <th class="th-sm">Class</th>
  	  <th class="th-sm">Enroll</th>
      <th class="th-sm">Edit</th>
      <th class="th-sm">Delete</th>
    </tr>
  </thead>
  <tbody id="course_table">



  </tbody>
</table>

</div>
</div>
</div>

<div id="loadingCourseDiv" class="container">
<div class="row">
<div class="col-md-12 text-center p-5">
  <img class= "loading-icon m-5" src="{{asset('images/loader.svg')}}">
</div>
</div>
</div>

<div id="wrongCourseDiv" class="container d-none">
<div class="row">
<div class="col-md-12 text-center p-5">
  <h3>Something Went Wrong !</h3>
</div>
</div>
</div>

<!-- Start Add New modal -->
<div class="modal fade" id="addCourseModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
  aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
    <div class="modal-header">
        <h5 class="modal-title">Add New Course</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body  text-center">
       <div class="container">
       	<div class="row">
       		<div class="col-md-6">
           	<input id="CourseNameId" type="text" class="form-control mb-3" placeholder="Course Name">
        	 	<input id="CourseDesId" type="text" class="form-control mb-3" placeholder="Course Description">
      		 	<input id="CourseFeeId" type="text" class="form-control mb-3" placeholder="Course Fee">
       			<input id="CourseEnrollId" type="text" class="form-control mb-3" placeholder="Total Enroll">
       		</div>
       		<div class="col-md-6">
       			<input id="CourseClassId" type="text" class="form-control mb-3" placeholder="Total Class">
       			<input id="CourseLinkId" type="text" class="form-control mb-3" placeholder="Course Link">
       			<input id="CourseImgId" type="text" class="form-control mb-3" placeholder="Course Image">
       		</div>
       	</div>
       </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-sm btn-primary" data-dismiss="modal">Cancel</button>
        <button  id="CourseAddConfirmBtn" type="button" class="btn  btn-sm  btn-danger">Add New</button>
      </div>
    </div>
  </div>
</div>

<!-- End Add New Modal -->

<!-- Start Edit modal -->
<div class="modal fade" id="editCourseModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
  aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
    <div class="modal-header">
        <h5 class="modal-title">Update Course</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body  text-center">
        <h6 id="courseEditID" class="mt-4 d-none"></h6>
       <div class="container d-none" id="courseEditForm">
       	<div class="row">
       		<div class="col-md-6">
           	<input id="CourseNameUpdateId" type="text" class="form-control mb-3" placeholder="Course Name">
        	 	<input id="CourseDesUpdateId" type="text" class="form-control mb-3" placeholder="Course Description">
      		 	<input id="CourseFeeUpdateId" type="text" class="form-control mb-3" placeholder="Course Fee">
       			<input id="CourseEnrollUpdateId" type="text" class="form-control mb-3" placeholder="Total Enroll">
       		</div>
       		<div class="col-md-6">
       			<input id="CourseClassUpdateId" type="text" class="form-control mb-3" placeholder="Total Class">
       			<input id="CourseLinkUpdateId" type="text" class="form-control mb-3" placeholder="Course Link">
       			<input id="CourseImgUpdateId" type="text" class="form-control mb-3" placeholder="Course Image">
       		</div>
       	</div>
       </div>

       <img id="courseEditLoader" class= "loading-icon m-5" src="{{asset('images/loader.svg')}}">
       <h5 id="courseWrong" class="d-none">Something Went Wrong !</h5>

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-sm btn-primary" data-dismiss="modal">Cancel</button>
        <button  id="CourseEditConfirmBtn" type="button" class="btn  btn-sm  btn-danger">Update</button>
      </div>
    </div>

  </div>
</div>

<!-- End Add New Modal -->

<!-- Start Delete Modal -->
<!-- Modal -->
<div class="modal fade" id="CourseDeleteData" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
  aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-body p-3 text-center">
        <h5 class="mt-4">Do You Want To Delete?</h5>
        <h6 id="courseDeleteID" class="mt-4 d-none"></h6>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-sm btn-primary" data-dismiss="modal">No</button>
        <button id="courseDeleteConfirmBtn" type="button" class="btn btn-sm btn-danger">Yes</button>
      </div>
    </div>
  </div>
</div>
<!-- End Delete Modal -->

@endsection

@section('script')
<script type="text/javascript">
  getCourseData()


  //For Course Table
function getCourseData() {
    axios.get('/getCoursesData')
        .then(function(response) {
            $('#courseDataTable').DataTable().destroy();
            $('#course_table').empty();

            if (response.status == 200) {

                $('#mainDivCourse').removeClass('d-none');
                $('#loadingCourseDiv').addClass('d-none');

                var jsonData = response.data;
                $.each(jsonData, function(i, item) {
                    $('<tr>').html(
                        "<td class='th-sm'>"+jsonData[i].course_name+"</td>" +
                        "<td class='th-sm'>"+jsonData[i].course_fee+"</td>" +
                        "<td class='th-sm'>"+jsonData[i].course_totalclass+"</td>" +
                        "<td class='th-sm'>"+jsonData[i].course_totalenroll+"</td>" +
                        "<td><a class='coursesEdit' data-id=" + jsonData[i].id + "><i class='fas fa-edit'></i></a></td>" +
                        "<td><a class='coursesDelete' data-id=" + jsonData[i].id + "><i class='fas fa-trash-alt'></i></a></td>"
                    ).appendTo('#course_table');
                });

                // Course Table Delete Icon Click
                $('.coursesDelete').click(function() {
                    var id = $(this).data('id');
                    $('#courseDeleteID').html(id);
                    $('#CourseDeleteData').modal('show');
                });

                //Course Table Edit Icon click
                $('.coursesEdit').click(function() {
                    var id = $(this).data('id');
                    $('#courseEditID').html(id);
                    CoursesUpdateDetails(id);
                    $('#editCourseModal').modal('show');
                });

                $('#courseDataTable').DataTable({"order":false});
                $('.dataTables_length').addClass('bs-select');
            }

            else {
                $('#loadingCourseDiv').addClass('d-none');
                $('#wrongCourseDiv').removeClass('d-none');
            }

        }).catch(function(error) {
          $('#loadingCourseDiv').addClass('d-none');
          $('#wrongCourseDiv').removeClass('d-none');
        });
}

//Add New Course
$('#AddNewCourseBtnID').click(function(){
  $('#addCourseModal').modal('show');
});

//Course Modal Add New Btn
$('#CourseAddConfirmBtn').click(function() {
    var CourseName = $('#CourseNameId').val();
    var CourseDes = $('#CourseDesId').val();
    var CourseFee = $('#CourseFeeId').val();
    var CourseEnroll = $('#CourseEnrollId').val();
    var CourseClass = $('#CourseClassId').val();
    var CourseLink = $('#CourseLinkId').val();
    var CourseImg = $('#CourseImgId').val();

    CoursesAdd(CourseName,CourseDes,CourseFee,CourseEnroll,CourseClass,CourseLink,CourseImg);
});
  // For Course Add New function
function CoursesAdd(CourseName,CourseDes,CourseFee,CourseEnroll,CourseClass,CourseLink,CourseImg) {
  if (CourseName.length==0) {
      toastr.error('Course Name is Empty !');
  } else if (CourseDes.length==0) {
      toastr.error('Course Description is Empty !');
  } else if (CourseFee.length==0) {
      toastr.error('Course Fee is Empty !');
  } else if (CourseEnroll.length==0) {
      toastr.error('Course Enroll is Empty !');
  } else if (CourseClass.length==0) {
      toastr.error('Course Class is Empty !');
  } else if (CourseLink.length==0) {
      toastr.error('Course Link is Empty !');
  } else if (CourseImg.length==0) {
      toastr.error('Course Image is Empty !');
  }
  else {
      $('#CourseAddConfirmBtn').html("<div class='spinner-border spinner-border-sm' role='status'></div>");
    axios.post('/courseAddNew', {
            name: CourseName,
            des: CourseDes,
            fee: CourseFee,
            totalenroll: CourseEnroll,
            totalclass: CourseClass,
            link: CourseLink,
            img: CourseImg
        })
        .then(function(response) {
          $('#CourseAddConfirmBtn').html("Add New");
          if (response.status == 200) {
            if (response.data == 1) {
                $('#addCourseModal').modal('hide');
                toastr.success('Data Added Successfull.');
                getCourseData();
            } else {
                $('#addCourseModal').modal('hide');
                toastr.error('Faild To Added.');
                getCourseData();
            }
          } else {
                $('#addCourseModal').modal('hide');
                toastr.error('Something Went Wrong !');
          }
        })
        .catch(function(error) {
          $('#addCourseModal').modal('hide');
          toastr.error('Something Went Wrong !');
        });
  }


}

//Course Delete Modal Yes Btn
$('#courseDeleteConfirmBtn').click(function() {
    var id = $('#courseDeleteID').html();
    CourseDelete(id);
});

// For Course Delete Function
function CourseDelete(courseDeleteID) {
  $('#courseDeleteConfirmBtn').html("<div class='spinner-border spinner-border-sm' role='status'></div>");
    axios.post('/coursesDelete', {
            id: courseDeleteID
        })
        .then(function(response) {
          $('#courseDeleteConfirmBtn').html("Yes");
            if (response.status == 200) {
              if (response.data == 1) {
                  $('#CourseDeleteData').modal('hide');
                  toastr.success('Course Deleted Successfull.');
                  getCourseData();
              } else {
                  $('#CourseDeleteData').modal('hide');
                  toastr.error('Faild To Delete.');
                  getCourseData();
              }
            } else {
                $('#CourseDeleteData').modal('hide');
                toastr.error('Something Went Wrong !');
            }
        })
        .catch(function(error) {
                $('#CourseDeleteData').modal('hide');
                toastr.error('Something Went Wrong !');
        });
}

// For Course Edit dialog Box
function CoursesUpdateDetails(detailsID) {
    axios.post('/courseDetails', {
            id: detailsID
        })
        .then(function(response) {
          if (response.status == 200) {
            $('#courseEditForm').removeClass('d-none');
            $('#courseEditLoader').addClass('d-none');
            var jsonData = response.data;
            $('#CourseNameUpdateId').val(jsonData[0].course_name);
            $('#CourseDesUpdateId').val(jsonData[0].course_des);
            $('#CourseFeeUpdateId').val(jsonData[0].course_fee);
            $('#CourseEnrollUpdateId').val(jsonData[0].course_totalenroll);
            $('#CourseClassUpdateId').val(jsonData[0].course_totalclass);
            $('#CourseLinkUpdateId').val(jsonData[0].course_link);
            $('#CourseImgUpdateId').val(jsonData[0].course_img);
          } else {
            $('#courseWrong').removeClass('d-none');
            $('#courseEditLoader').addClass('d-none');
          }
        })
        .catch(function(error) {
            $('#courseWrong').removeClass('d-none');
            $('#courseEditLoader').addClass('d-none');
        });
}

//Course Modal Update Btn
$('#CourseEditConfirmBtn').click(function() {
    var id = $('#courseEditID').html();
    var CourseNameUpdate = $('#CourseNameUpdateId').val();
    var CourseDesUpdate = $('#CourseDesUpdateId').val();
    var CourseFeeUpdate = $('#CourseFeeUpdateId').val();
    var CourseEnrollUpdate = $('#CourseEnrollUpdateId').val();
    var CourseClassUpdate = $('#CourseClassUpdateId').val();
    var CourseLinkUpdate = $('#CourseLinkUpdateId').val();
    var CourseImgUpdate = $('#CourseImgUpdateId').val();

    CoursesUpdate(id,CourseNameUpdate,CourseDesUpdate,CourseFeeUpdate,CourseEnrollUpdate,CourseClassUpdate,CourseLinkUpdate,CourseImgUpdate);
});

// For Course Edit function
function CoursesUpdate(courseId,CourseNameUpdate,CourseDesUpdate,CourseFeeUpdate,CourseEnrollUpdate,CourseClassUpdate,CourseLinkUpdate,CourseImgUpdate) {
if (CourseNameUpdate.length==0) {
    toastr.error('Course Name is Empty !');
} else if (CourseDesUpdate.length==0) {
    toastr.error('Course Description is Empty !');
} else if (CourseFeeUpdate.length==0) {
    toastr.error('Course Fee is Empty !');
} else if (CourseEnrollUpdate.length==0) {
    toastr.error('Course Enroll is Empty !');
} else if (CourseClassUpdate.length==0) {
    toastr.error('Course Class is Empty !');
} else if (CourseLinkUpdate.length==0) {
    toastr.error('Course Link is Empty !');
} else if (CourseImgUpdate.length==0) {
    toastr.error('Course Image is Empty !');
}
else {
    $('#CourseEditConfirmBtn').html("<div class='spinner-border spinner-border-sm' role='status'></div>");
  axios.post('/courseUpdate', {
          id: courseId,
          course_name: CourseNameUpdate,
          course_des: CourseDesUpdate,
          course_fee: CourseFeeUpdate,
          course_totalenroll: CourseEnrollUpdate,
          course_totalclass: CourseClassUpdate,
          course_link: CourseLinkUpdate,
          course_img: CourseImgUpdate
      })
      .then(function(response) {
        $('#CourseEditConfirmBtn').html("Update");
        if (response.status == 200) {
          if (response.data == 1) {
              $('#editCourseModal').modal('hide');
              toastr.success('Data Updated Successfull.');
              getCourseData();
          } else {
              $('#editCourseModal').modal('hide');
              toastr.error('Faild To Update.');
              getCourseData();
          }
        } else {
              $('#editCourseModal').modal('hide');
              toastr.error('Something Went Wrong !');
        }
      })
      .catch(function(error) {
        $('#editCourseModal').modal('hide');
        toastr.error('Something Went Wrong !');
      });
}

}



</script>
@endsection
