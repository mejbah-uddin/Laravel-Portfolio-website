@extends('Layout.app')
@section('title', 'Contact')
@section('content')
<div id="mainDivContact" class="container d-none">
<div class="row">
<div class="col-md-12 p-5 text-center ">
<table id="contactDataTable" class="table table-striped table-bordered" cellspacing="0" width="100%">
  <thead>
    <tr>
  	  <th class="th-sm">Name</th>
  	  <th class="th-sm">Mobile</th>
  	  <th class="th-sm">Email</th>
  	  <th class="th-sm">Message</th>
      <th class="th-sm">Delete</th>
    </tr>
  </thead>
  <tbody id="contact_table">



  </tbody>
</table>

</div>
</div>
</div>

<div id="loadingContactDiv" class="container">
<div class="row">
<div class="col-md-12 text-center p-5">
  <img class= "loading-icon m-5" src="{{asset('images/loader.svg')}}">
</div>
</div>
</div>

<div id="wrongContactDiv" class="container d-none">
<div class="row">
<div class="col-md-12 text-center p-5">
  <h3>Something Went Wrong !</h3>
</div>
</div>
</div>

<!-- Start Delete Contact Modal -->
<div class="modal fade" id="DeleteContactModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-body p-3 text-center">
        <h5 class="mt-4">Are You Sure To Delete The Message?</h5>
        <h6 id="ContactDeleteID" class="mt-4 d-none"></h6>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-sm btn-primary" data-dismiss="modal">No</button>
        <button type="button" id="ContactDeleteConfirmBtn" class="btn btn-sm btn-danger">Yes</button>
      </div>
    </div>
  </div>
</div>
<!-- End Delete Contact Modal -->

@endsection

@section('script')
<script type="text/javascript">
    getContactMsg();

    function getContactMsg(){
      axios.get('/contactMessage')
      .then(function(response){
        $('#contactDataTable').DataTable().destroy();
        $('#contact_table').empty();

        if (response.status == 200) {
          $('#mainDivContact').removeClass('d-none');
          $('#loadingContactDiv').addClass('d-none');
          var jsonData = response.data;
          $.each(jsonData, function(i, item){
            $("<tr>").html(
              "<td>"+jsonData[i].contact_name+"</td>" +
              "<td>"+jsonData[i].contact_mobile+"</td>" +
              "<td>"+jsonData[i].contact_email+"</td>" +
              "<td>"+jsonData[i].contact_msg+"</td>" +
              "<td><a class='contactDelete' data-id='"+jsonData[i].id+"'><i class='fas fa-trash-alt'></a></td>"
            ).appendTo('#contact_table');
          });

          //On Press Delete icon
          $('.contactDelete').click(function(){
            var id = $(this).data('id');
            $('#ContactDeleteID').html(id);
            $('#DeleteContactModal').modal('show');
          });


          $('#contactDataTable').DataTable({"order":false});
          $('.dataTables_length').addClass('bs-select');
        } else {
          $('#wrongContactDiv').removeClass('d-none');
          $('#loadingContactDiv').addClass('d-none');
        }
      })
      .catch(function(error){
        $('#wrongContactDiv').removeClass('d-none');
        $('#loadingContactDiv').addClass('d-none');
      });
    }

    //Delete Confirm button
    $('#ContactDeleteConfirmBtn').click(function(){
      var id = $('#ContactDeleteID').html();
      DeleteMessages(id);
    });

    function DeleteMessages(id){
      axios.post('/contactDelete', {
        id: id
      })
      .then(function(response){
        $('#ContactDeleteConfirmBtn').html("<div class='spinner-border spinner-border-sm' role='status'></div>");
        if (response.status == 200) {
          if (response.data == 1) {
            $('#ContactDeleteConfirmBtn').html("Yes");
            $('#DeleteContactModal').modal('hide');
            toastr.success('Message Deleted Successfull.');
            getContactMsg();
          } else {
            $('#DeleteContactModal').modal('hide');
            toastr.error('Faild To Delete.');
            getContactMsg();
          }
        } else {
          $('#DeleteContactModal').modal('hide');
          toastr.error('Something Went Wrong !');
        }
      })
      .catch(function(error){
        $('#DeleteContactModal').modal('hide');
        toastr.error('Something Went Wrong !');
      });
    }

</script>
@endsection
