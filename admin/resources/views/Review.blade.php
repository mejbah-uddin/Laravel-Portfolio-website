@extends('Layout.app')
@section('title', 'Reviews')
@section('content')

<div id="reviewMainDiv" class="container d-none">
  <div class="row">
    <div class="col-md-12 p-5">
      <button class="btn btn-danger" id="addNewreview">Add New Review</button>
      <table id="reviewDataTable" class="table table-striped table-bordered  text-center" cellspacing="0" width="100%">
      <thead>
        <tr>
          <th class="th-sm">Name</th>
          <th class="th-sm">Description</th>
          <th class="th-sm">Edit</th>
          <th class="th-sm">Delete</th>
        </tr>
      </thead>
      <tbody id="review_table">


      </tbody>
    </table>

    </div>
  </div>
</div>

<div id="reviewLoadingDiv" class="container">
<div class="row">
<div class="col-md-12 text-center p-5">
  <img class= "loading-icon m-5" src="{{asset('images/loader.svg')}}">
</div>
</div>
</div>

<div id="reviewWrongDiv" class="container d-none">
<div class="row">
<div class="col-md-12 text-center p-5">
  <h3>Something Went Wrong !</h3>
</div>
</div>
</div>


<!-- Start Add New Product Modal -->
<!-- Modal -->
<div class="modal fade" id="addNewreviewModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Add New Review</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body p-5 text-center">
        <div id="reviewAddForm" class="w-100">
          <input id="reviewName" type="text" class="form-control mb-4" placeholder="Review Name">
          <input id="reviewDes" type="text" class="form-control mb-4" placeholder="Review Description">
          <input id="reviewImage" type="text" class="form-control mb-4" placeholder="Review Image Link">
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-sm btn-primary" data-dismiss="modal">Cancle</button>
        <button type="button" id="reviewAddConfirmBtn" class="btn btn-sm btn-danger">Add New</button>
      </div>
    </div>
  </div>
</div>
<!-- End Add New Product Modal -->

<!-- Start Edit Product Modal -->
<!-- Modal -->
<div class="modal fade" id="EditreviewModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Update Review</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>

        <div class="modal-body p-5 text-center">
          <h6 id="reviewUpdateId" class="mt-4 d-none"></h6>
          <div id="reviewUpdateData" class="container d-none">
            <div id="reviewUpdateForm" class="w-100">
              <input id="reviewUpdateName" type="text" class="form-control mb-4" placeholder="review Name">
              <input id="reviewUpdateDes" type="text" class="form-control mb-4" placeholder="review Description">
              <input id="reviewUpdateImage" type="text" class="form-control mb-4" placeholder="review Image Link">
            </div>
        </div>
        <img id="reviewEditLoader" class= "loading-icon m-5" src="{{asset('images/loader.svg')}}">
        <h5 id="reviewWrong" class="d-none">Something Went Wrong !</h5>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-sm btn-primary" data-dismiss="modal">Cancle</button>
        <button type="button" id="reviewUpdateConfirmBtn" class="btn btn-sm btn-danger">Update</button>
      </div>
    </div>
  </div>
</div>
<!-- End Edit Product Modal -->

<!-- Start Delete Product Modal -->
<div class="modal fade" id="DeletereviewModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-body p-3 text-center">
        <h5 class="mt-4">Are You Sure To Delete The Review?</h5>
        <h6 id="reviewDeleteID" class="mt-4 d-none"></h6>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-sm btn-primary" data-dismiss="modal">No</button>
        <button type="button" id="reviewDeleteConfirmBtn" class="btn btn-sm btn-danger">Yes</button>
      </div>
    </div>
  </div>
</div>
<!-- End Delete Product Modal -->
@endsection

@section('script')
  <script type="text/javascript">
    getreviewsData();


  </script>
@endsection
