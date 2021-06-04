@extends('Layout.app')
@section('title','Photo Gallery')
@section('content')

    <div class="container-fluid m-0">
        <div class="row">
            <div class="col-md-12 p-3">
                    <button data-toggle="modal" data-target="#photoModal" id="addNewPhotoBtnId" class="btn btn-danger">Add New</button>
            </div>
        </div>

        <div class="row photoRow">

        </div>

        <button class="btn btn-primary" id="LoadMoreBtn"> Load More </button>
    </div>


<!-- Start Add New modal -->
<div class="modal fade" id="photoModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
  aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
    <div class="modal-header">
        <h5 class="modal-title">Add New Photo</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body  text-center">
        <input class="form-control" type="file" id="imageInput">
        <img class="ImgPreview pt-3" id="imagePreview" src="{{asset('images/default-photo.jpg')}}">
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
        <button  id="SavePhoto" type="button" class="btn   btn-success">Save</button>
      </div>
    </div>
  </div>
</div>

<!-- End Add New Modal -->

@endsection

@section('script')
    <script type="text/javascript">
        $('#imageInput').change(function(){
            var reader = new FileReader();
            reader.readAsDataURL(this.files[0]);
            reader.onload = function(event){
                var ImgSource = event.target.result;
                $('#imagePreview').attr('src',ImgSource);
            }
        });

        $('#SavePhoto').on('click', function(){
            $('#SavePhoto').html("<div class='spinner-border spinner-border-sm' role='status'></div>");
            var PhotoFile = $('#imageInput').prop('files')[0];
            var formData = new FormData();
            formData.append('photo',PhotoFile);

            axios.post('/PhotoUpload',formData)
            .then(function(response){
                $('#SavePhoto').html("Save");
                if (response.status == 200 && response.data == 1) {
                    $('#photoModal').modal('hide');
                    toastr.success('Photo Upload success.');
                } else {
                    $('#photoModal').modal('hide');
                    toastr.error('Photo Upload Faild.');
                }
            })
            .catch(function(error){
                    $('#photoModal').modal('hide');
                    toastr.error('Something Went Wrong.');
            })
        })

        LoadPhoto()
        function LoadPhoto(){
            axios.get('/photoJSON')
            .then(function(response){
                $.each(response.data, function(i, item){
                    $("<div class='col-md-3 p-1'>").html(
                        "<img data-id="+item['id']+" class='imgOnRow' src='"+item['location']+"'>" +
                        "<button data-id="+item['id']+" data-photo="+item['location']+" class='btn deletePhoto btn-sm'>Delete</button>"
                    ).appendTo('.photoRow');
                })

                $('.deletePhoto').on('click',function(event){
                    let id = $(this).data('id');
                    let photo = $(this).data('photo');

                    PhotoDelete(photo,id)

                    event.preventDefault();
                })
            })
            .catch(function(error){
                console.log(error);
            })
        }

        let imgId = 0;
        function LoadByID(FirstImgId,loadMore){
            loadMore.html("<div class='spinner-border spinner-border-sm' role='status'></div>");
            imgId = imgId + 4;
            let PhotoID = imgId + FirstImgId;
            let URL = "/photoJSONByID/"+PhotoID;
            axios.get(URL).then(function(response){
                loadMore.html("Load More");
                $.each(response.data, function(i, item){
                    $("<div class='col-md-3 p-1'>").html(
                        "<img data-id="+item.id+" class='imgOnRow' src='"+item.location+"'>" +
                        "<button data-id="+item['id']+" data-photo="+item['location']+" class='btn deletePhoto btn-sm'>Delete</button>"
                    ).appendTo('.photoRow');
                })

                $('.deletePhoto').on('click',function(event){
                    let id = $(this).data('id');
                    let photo = $(this).data('photo');

                    PhotoDelete(photo,id)

                    event.preventDefault();
                })

            }).catch(function(error){

            })
        }

        $('#LoadMoreBtn').on('click', function(){
            let loadMore = $(this);
            let FirstImgId = $(this).closest('div').find('img').data('id');
            LoadByID(FirstImgId,loadMore);
        })

        function PhotoDelete(OldPhotoURL,id){
            let URL = "/PhotoDelete";
            let MyFormData = new FormData();
            MyFormData.append('OldPhotoURL',OldPhotoURL);
            MyFormData.append('id',id);
            axios.post(URL,MyFormData).then(function(response){
                if (response.status == 200 && response.data == 1) {
                    toastr.success('Photo Delete Successfull.');
                    $('.photoRow').empty();
                    LoadPhoto();
                } else {
                    toastr.error('Photo Delete Faild.');
                }
            })
            .catch(function(error){
                toastr.error('Photo Delete Faild. Try Again');
            })
        }

    </script>
@endsection