@extends('Layout.app')
@section('title', 'Services')
@section('content')

<div id="mainDiv" class="container d-none">
<div class="row">
<div class="col-md-12 p-5">
  <button class="btn btn-danger" id="AddNewBtnID">Add New Service</button>
<table id="serviceDataTable" class="table table-striped table-bordered" cellspacing="0" width="100%">
  <thead>
    <tr>
      <th class="th-sm">Image</th>
	  <th class="th-sm">Name</th>
	  <th class="th-sm">Description</th>
	  <th class="th-sm">Edit</th>
	  <th class="th-sm">Delete</th>
    </tr>
  </thead>
  <tbody id="service_table">

  </tbody>
</table>

</div>
</div>
</div>

<div id="loadingDiv" class="container">
<div class="row">
<div class="col-md-12 text-center p-5">
  <img class= "loading-icon m-5" src="{{asset('images/loader.svg')}}">
</div>
</div>
</div>

<div id="wrongDiv" class="container d-none">
<div class="row">
<div class="col-md-12 text-center p-5">
  <h3>Something Went Wrong !</h3>
</div>
</div>
</div>

<!-- Start Delete Modal -->
<!-- Modal -->
<div class="modal fade" id="deleteData" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
  aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-body p-3 text-center">
        <h5 class="mt-4">Do You Want To Delete?</h5>
        <h6 id="servicesDeleteID" class="mt-4 d-none"></h6>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-sm btn-primary" data-dismiss="modal">No</button>
        <button id="serviceDeleteConfirmBtn" type="button" class="btn btn-sm btn-danger">Yes</button>
      </div>
    </div>
  </div>
</div>
<!-- End Delete Modal -->
<!-- Start Edit Modal -->
<!-- Modal -->
<div class="modal fade" id="editData" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
  aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
          <h5 class="modal-title">Update Services</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
      <div class="modal-body p-5 text-center">
            <h6 id="servicesEditID" class="mt-4 d-none"></h6>
            <div id="serviceEditForm" class="d-none w-100">
              <input id="serviceName" type="text" id="" class="form-control mb-4" placeholder="Service Name">
              <input id="serviceDes" type="text" id="" class="form-control mb-4" placeholder="Service Description">
              <input id="serviceImage" type="text" id="" class="form-control mb-4" placeholder="Service Image Link">
            </div>

              <img id="serviceEditLoader" class= "loading-icon m-5" src="{{asset('images/loader.svg')}}">
              <h5 id="serviceWrong" class="d-none">Something Went Wrong !</h5>

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-sm btn-primary" data-dismiss="modal">Cancle</button>
        <button id="serviceEditConfirmBtn" type="button" class="btn btn-sm btn-danger">Save</button>
      </div>
    </div>
  </div>
</div>
<!-- End Edit Modal -->

<!-- Start Add Modal -->
<!-- Modal -->
<div class="modal fade" id="addData" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
  aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
          <h5 class="modal-title">Add New Service</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
      <div class="modal-body p-5 text-center">
            <div id="serviceaddForm" class="w-100">
              <input id="serviceAddName" type="text"class="form-control mb-4" placeholder="Service Name">
              <input id="serviceAddDes" type="text" class="form-control mb-4" placeholder="Service Description">
              <input id="serviceAddImage" type="text" class="form-control mb-4" placeholder="Service Image Link">
            </div>

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-sm btn-primary" data-dismiss="modal">Cancle</button>
        <button id="serviceAddConfirmBtn" type="button" class="btn btn-sm btn-danger">Add New</button>
      </div>
    </div>
  </div>
</div>
<!-- End Add Modal -->

@endsection

@section('script')

<script type="text/javascript">
  getServicesData();

  //For Services Table
  function getServicesData() {
      axios.get('/getServicesData')
          .then(function(response) {
              $('#serviceDataTable').DataTable().destroy();
              $('#service_table').empty();

              if (response.status == 200) {

                  $('#mainDiv').removeClass('d-none');
                  $('#loadingDiv').addClass('d-none');

                  var jsonData = response.data;
                  $.each(jsonData, function(i, item) {
                      $('<tr>').html(
                          "<td><img class='table-img' src=" + jsonData[i].service_img + "></td>" +
                          "<td>" + jsonData[i].service_name + "</td>" +
                          "<td>" + jsonData[i].service_des + "</td>" +
                          "<td><a class='servicesEdit' data-id=" + jsonData[i].id + "><i class='fas fa-edit'></i></a></td>" +
                          "<td><a class='servicesDelete' data-id=" + jsonData[i].id + "><i class='fas fa-trash-alt'></i></a></td>"
                      ).appendTo('#service_table');
                  });
                  //Service Table Delete Icon Click
                  $('.servicesDelete').click(function() {
                      var id = $(this).data('id');
                      $('#servicesDeleteID').html(id);
                      $('#deleteData').modal('show');
                  });


                  //Service Table Edit Icon Click
                  $('.servicesEdit').click(function() {
                      var id = $(this).data('id');
                      $('#servicesEditID').html(id);
                      ServicesUpdateDetails(id);
                      $('#editData').modal('show');
                  });

                  $('#serviceDataTable').DataTable({"order":false});
                  $('.dataTables_length').addClass('bs-select');

              }

              else {
                  $('#loadingDiv').addClass('d-none');
                  $('#wrongDiv').removeClass('d-none');
              }

          }).catch(function(error) {
              $('#loadingDiv').addClass('d-none');
              $('#wrongDiv').removeClass('d-none');
          });
  }

  //Service Delete Modal Yes Btn
  $('#serviceDeleteConfirmBtn').click(function() {
      var id = $('#servicesDeleteID').html();
      ServicesDelete(id);
  });
  // <div class='spinner-border spinner-border-sm' role='status'></div>
  // For Service Delete
  function ServicesDelete(deleteID) {
    $('#serviceDeleteConfirmBtn').html("<div class='spinner-border spinner-border-sm' role='status'></div>");
      axios.post('/servicesDelete', {
              id: deleteID
          })
          .then(function(response) {
            $('#serviceDeleteConfirmBtn').html("Yes");
              if (response.status == 200) {
                if (response.data == 1) {
                    $('#deleteData').modal('hide');
                    toastr.success('Data Deleted Successfull.');
                    getServicesData();
                } else {
                    $('#deleteData').modal('hide');
                    toastr.error('Faild To Delete.');
                    getServicesData();
                }
              } else {
                  $('#deleteData').modal('hide');
                  toastr.error('Something Went Wrong !');
              }
          })
          .catch(function(error) {
                $('#deleteData').modal('hide');
                toastr.error('Something Went Wrong !');
          });
  }

  // For Service Edit dialog Box
  function ServicesUpdateDetails(detailsID) {
      axios.post('/serviceDetails', {
              id: detailsID
          })
          .then(function(response) {
            if (response.status == 200) {
              $('#serviceEditForm').removeClass('d-none');
              $('#serviceEditLoader').addClass('d-none');
              var jsonData = response.data;
              $('#serviceName').val(jsonData[0].service_name);
              $('#serviceDes').val(jsonData[0].service_des);
              $('#serviceImage').val(jsonData[0].service_img);
            } else {
              $('#serviceWrong').removeClass('d-none');
              $('#serviceEditLoader').addClass('d-none');
            }
          })
          .catch(function(error) {
            $('#serviceWrong').removeClass('d-none');
            $('#serviceEditLoader').addClass('d-none');
          });
  }

    //Service Edit Modal Save Btn
    $('#serviceEditConfirmBtn').click(function() {
        var id = $('#servicesEditID').html();
        var name = $('#serviceName').val();
        var des = $('#serviceDes').val();
        var img = $('#serviceImage').val();

        ServicesUpdate(id,name,des,img);
    });

  // For Service Edit
  function ServicesUpdate(serviceID,service_name,service_des,service_img) {
    if (service_name.length==0) {
        toastr.error('Service Name is Empty !');
    } else if (service_des.length==0) {
        toastr.error('Service Description is Empty !');
    } else if (service_img.length==0) {
        toastr.error('Service Image is Empty !');
    }
    else {
        $('#serviceEditConfirmBtn').html("<div class='spinner-border spinner-border-sm' role='status'></div>");
      axios.post('/serviceUpdate', {
              id: serviceID,
              name: service_name,
              des: service_des,
              img: service_img
          })
          .then(function(response) {
            $('#serviceEditConfirmBtn').html("Save");
            if (response.status == 200) {
              if (response.data == 1) {
                  $('#editData').modal('hide');
                  toastr.success('Data Update Successfull.');
                  getServicesData();
              } else {
                  $('#editData').modal('hide');
                  toastr.error('Faild To Update.');
                  getServicesData();
              }
            } else {
                  $('#editData').modal('hide');
                  toastr.error('Something Went Wrong !');
            }
          })
          .catch(function(error) {
                  $('#editData').modal('hide');
                  toastr.error('Something Went Wrong !');
          });
    }

  }

  //For Add New Service
  $('#AddNewBtnID').click(function(){
    $('#addData').modal('show');
  });

  //Service Add Modal Add New Btn
  $('#serviceAddConfirmBtn').click(function() {
      var name = $('#serviceAddName').val();
      var des = $('#serviceAddDes').val();
      var img = $('#serviceAddImage').val();

      ServicesAdd(name,des,img);
  });

  // For Service Add New function
  function ServicesAdd(serviceAddName,serviceAddDes,serviceAddImage) {
    if (serviceAddName.length==0) {
        toastr.error('Service Name is Empty !');
    } else if (serviceAddDes.length==0) {
        toastr.error('Service Description is Empty !');
    } else if (serviceAddImage.length==0) {
        toastr.error('Service Image is Empty !');
    }
    else {
        $('#serviceAddConfirmBtn').html("<div class='spinner-border spinner-border-sm' role='status'></div>");
      axios.post('/serviceAddNew', {
              name: serviceAddName,
              des: serviceAddDes,
              img: serviceAddImage
          })
          .then(function(response) {
            $('#serviceAddConfirmBtn').html("Add New");
            if (response.status == 200) {
              if (response.data == 1) {
                  $('#addData').modal('hide');
                  toastr.success('Data Added Successfull.');
                  getServicesData();
              } else {
                  $('#addData').modal('hide');
                  toastr.error('Faild To Added.');
                  getServicesData();
              }
            } else {
                  $('#addData').modal('hide');
                  toastr.error('Something Went Wrong !');
            }
          })
          .catch(function(error) {
                  $('#addData').modal('hide');
                  toastr.error('Something Went Wrong !');
          });
    }

  }

</script>

@endsection
