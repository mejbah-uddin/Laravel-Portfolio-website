@extends('Layout.app')
@section('title', 'Projects')
@section('content')

<div id="projectMainDiv" class="container d-none">
  <div class="row">
    <div class="col-md-12 p-5">
      <button class="btn btn-danger" id="addNewProject">Add New Project</button>

      <table id="projectDataTable" class="table table-striped table-bordered" cellspacing="0" width="100%">
      <thead>
        <tr>
          <th class="th-sm">Image</th>
          <th class="th-sm">Name</th>
          <th class="th-sm">Description</th>
          <th class="th-sm">Edit</th>
          <th class="th-sm">Delete</th>
        </tr>
      </thead>
      <tbody id="project_table">


      </tbody>
    </table>

    </div>
  </div>
</div>

<div id="projectLoadingDiv" class="container">
<div class="row">
<div class="col-md-12 text-center p-5">
  <img class= "loading-icon m-5" src="{{asset('images/loader.svg')}}">
</div>
</div>
</div>

<div id="projectWrongDiv" class="container d-none">
<div class="row">
<div class="col-md-12 text-center p-5">
  <h3>Something Went Wrong !</h3>
</div>
</div>
</div>


<!-- Start Add New Product Modal -->
<!-- Modal -->
<div class="modal fade" id="addNewProjectModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Add New Project</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body p-5 text-center">
        <div id="projectAddForm" class="w-100">
          <input id="projectName" type="text" class="form-control mb-4" placeholder="Project Name">
          <input id="projectDes" type="text" class="form-control mb-4" placeholder="Project Description">
          <input id="projectLink" type="text" class="form-control mb-4" placeholder="Project Link">
          <input id="projectImage" type="text" class="form-control mb-4" placeholder="Project Image Link">
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-sm btn-primary" data-dismiss="modal">Cancle</button>
        <button type="button" id="ProjectAddConfirmBtn" class="btn btn-sm btn-danger">Add New</button>
      </div>
    </div>
  </div>
</div>
<!-- End Add New Product Modal -->

<!-- Start Edit Product Modal -->
<!-- Modal -->
<div class="modal fade" id="EditProjectModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Update Project</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>

        <div class="modal-body p-5 text-center">
          <h6 id="projectUpdateId" class="mt-4 d-none"></h6>
          <div id="projectUpdateData" class="container d-none">
            <div id="projectUpdateForm" class="w-100">
              <input id="projectUpdateName" type="text" class="form-control mb-4" placeholder="Project Name">
              <input id="projectUpdateDes" type="text" class="form-control mb-4" placeholder="Project Description">
              <input id="projectUpdateLink" type="text" class="form-control mb-4" placeholder="Project Link">
              <input id="projectUpdateImage" type="text" class="form-control mb-4" placeholder="Project Image Link">
            </div>
        </div>
        <img id="projectEditLoader" class= "loading-icon m-5" src="{{asset('images/loader.svg')}}">
        <h5 id="projectWrong" class="d-none">Something Went Wrong !</h5>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-sm btn-primary" data-dismiss="modal">Cancle</button>
        <button type="button" id="ProjectUpdateConfirmBtn" class="btn btn-sm btn-danger">Update</button>
      </div>
    </div>
  </div>
</div>
<!-- End Edit Product Modal -->

<!-- Start Delete Product Modal -->
<div class="modal fade" id="DeleteProjectModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-body p-3 text-center">
        <h5 class="mt-4">Are You Sure To Delete The Product?</h5>
        <h6 id="projectDeleteID" class="mt-4 d-none"></h6>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-sm btn-primary" data-dismiss="modal">No</button>
        <button type="button" id="ProjectDeleteConfirmBtn" class="btn btn-sm btn-danger">Yes</button>
      </div>
    </div>
  </div>
</div>
<!-- End Delete Product Modal -->
@endsection

@section('script')
  <script type="text/javascript">
    getProjectsData();

    function getProjectsData() {
      axios.get('/getProjectsData')
          .then(function(response) {
            $('#projectDataTable').DataTable().destroy();
            $('#project_table').empty();
            if (response.status == 200) {
                $('#projectMainDiv').removeClass('d-none');
                $('#projectLoadingDiv').addClass('d-none');
                var jsonData = response.data;
                $.each(jsonData, function(i, item) {
                    $('<tr>').html(
                        "<td><img class='table-img' src='"+jsonData[i].project_img+"'></td>" +
                        "<td>"+jsonData[i].project_name+"</td>" +
                        "<td>"+jsonData[i].project_desc+"</td>" +
                        "<td><a class='projectsEdit' data-id='"+jsonData[i].id+"'><i class='fas fa-edit'></i></a></td>" +
                        "<td><a class='projectsDelete' data-id='"+jsonData[i].id+"'><i class='fas fa-trash-alt'></a></td>"
                    ).appendTo('#project_table');
                });

                //Project Table Edit icon
                $('.projectsEdit').click(function(){
                  var id = $(this).data('id');
                  $('#projectUpdateId').html(id);
                  ProjectUpdateDetails(id);
                  $('#EditProjectModal').modal('show');
                });
                //Project Table Delete icon
                $('.projectsDelete').click(function(){
                  var id = $(this).data('id');
                  $('#projectDeleteID').html(id);
                  // ProjectUpdateDetails(id);
                  $('#DeleteProjectModal').modal('show');
                });




                $('#projectDataTable').DataTable({"order":false});
                $('.dataTables_length').addClass('bs-select');

            } else {
              $('#projectWrongDiv').removeClass('d-none');
              $('#projectLoadingDiv').addClass('d-none');
            }

          })
          .catch(function(error){
            $('#projectWrongDiv').removeClass('d-none');
            $('#projectLoadingDiv').addClass('d-none');
          });
    }
    //Add New Project Modal btn
    $('#addNewProject').click(function(){
      $('#addNewProjectModal').modal('show');
    });
      //Project Add Modal Add New Btn
    $('#ProjectAddConfirmBtn').click(function(){
      var projectname = $('#projectName').val();
      var projectdes = $('#projectDes').val();
      var projectlink = $('#projectLink').val();
      var projectimage = $('#projectImage').val();
      projectsAdd(projectname,projectdes,projectlink,projectimage);

    });
      // For Project Add New function

    function projectsAdd(projectname,projectdes,projectlink,projectimage){
      if (projectname.length==0) {
          toastr.error('Project Name is Empty !');
      } else if (projectdes.length==0) {
          toastr.error('Project Description is Empty !');
      } else if (projectlink.length==0) {
          toastr.error('Project Link is Empty !');
      } else if (projectimage.length==0) {
          toastr.error('Project Image is Empty !');
      }else {
        $('#ProjectAddConfirmBtn').html("<div class='spinner-border spinner-border-sm' role='status'></div>");
        axios.post('/projectAdd', {
          name: projectname,
          desc: projectdes,
          link: projectlink,
          image: projectimage
        })
        .then(function(response){
          $('#ProjectAddConfirmBtn').html("Add New");
          if (response.status == 200) {
            if (response.data == 1) {
                $('#addNewProjectModal').modal('hide');
                toastr.success('Project Added Successfull.');
                getProjectsData();
            } else {
                $('#addNewProjectModal').modal('hide');
                toastr.error('Faild To Added.');
                getProjectsData();
            }
          } else {
                $('#addNewProjectModal').modal('hide');
                toastr.error('Something Went Wrong !');
          }
        })
        .catch(function(error){
          $('#addNewProjectModal').modal('hide');
          toastr.error('Something Went Wrong !');
        });
      }
    }

    function ProjectUpdateDetails(updateId){
      axios.post('/projectDetails', {
        id: updateId
      })
      .then(function(response){
        if (response.status == 200) {
          $('#projectUpdateData').removeClass('d-none');
          $('#projectEditLoader').addClass('d-none');
          var jsonData = response.data;
          $('#projectUpdateName').val(jsonData[0].project_name);
          $('#projectUpdateDes').val(jsonData[0].project_desc);
          $('#projectUpdateLink').val(jsonData[0].project_link);
          $('#projectUpdateImage').val(jsonData[0].project_img);
        } else {
          $('#projectWrong').removeClass('d-none');
          $('#projectEditLoader').addClass('d-none');
        }
      })
      .catch(function(error){
          $('#projectWrong').removeClass('d-none');
          $('#projectEditLoader').addClass('d-none');
      });
    }

    //Project Modal Update btn
    $('#ProjectUpdateConfirmBtn').click(function(){
      var id = $('#projectUpdateId').html();
      var projectUpdateName = $('#projectUpdateName').val();
      var projectUpdateDes = $('#projectUpdateDes').val();
      var projectUpdateLink = $('#projectUpdateLink').val();
      var projectUpdateImage = $('#projectUpdateImage').val();
      UpdateProjects(id,projectUpdateName,projectUpdateDes,projectUpdateLink,projectUpdateImage);
    });

    function UpdateProjects(id,projectUpdateName,projectUpdateDes,projectUpdateLink,projectUpdateImage){
      if (projectUpdateName.length==0) {
        toastr.error('Project Name is Empty !');
      } else if (projectUpdateDes.length==0) {
        toastr.error('Project Description is Empty !');
      } else if (projectUpdateLink.length==0) {
        toastr.error('Project Link is Empty !');
      } else if (projectUpdateImage.length==0) {
        toastr.error('Project Image is Empty !');
      }
       else {
        $('#ProjectUpdateConfirmBtn').html("<div class='spinner-border spinner-border-sm' role='status'></div>");
        axios.post('/projectUpdate', {
          updateId: id,
          name: projectUpdateName,
          desc: projectUpdateDes,
          link: projectUpdateLink,
          image: projectUpdateImage
        })
        .then(function(response){
          $('#ProjectUpdateConfirmBtn').html('Update');
          if (response.status == 200) {
            if (response.data == 1) {
              $('#EditProjectModal').modal('hide');
              toastr.success('Project Updated Successfull.');
              getProjectsData();
            } else {
              $('#EditProjectModal').modal('hide');
              toastr.success('Faild To Update.');
              getProjectsData();
            }
          } else {
              $('#EditProjectModal').modal('hide');
              toastr.error('Something Went Wrong !');
          }
        })
        .catch(function(error){
            $('#EditProjectModal').modal('hide');
            toastr.error('Something Went Wrong !');
        })
      }
    }

    $('#ProjectDeleteConfirmBtn').click(function(){
      var deleteId = $('#projectDeleteID').html();
      ProjectDelete(deleteId);
    });

    function ProjectDelete(deleteId){
      $('#ProjectDeleteConfirmBtn').html("<div class='spinner-border spinner-border-sm' role='status'></div>");
      axios.post('/projectsDelete', {
        deleteId: deleteId
      })
      .then(function(response){
        $('#ProjectDeleteConfirmBtn').html("Yes");
        if (response.status == 200) {
          if (response.data == 1) {
            $('#DeleteProjectModal').modal('hide');
            toastr.success('Project Deleted Successfull.');
            getProjectsData();
          } else {
            $('#DeleteProjectModal').modal('hide');
            toastr.error('Faild To Delete.');
            getProjectsData();
          }
        } else {
          $('#DeleteProjectModal').modal('hide');
          toastr.error('Something Went Wrong !');
        }
      })
      .catch(function(error){
          $('#DeleteProjectModal').modal('hide');
          toastr.error('Something Went Wrong !');
      });
    }

  </script>
@endsection
