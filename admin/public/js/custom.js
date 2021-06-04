
    function getreviewsData() {
      axios.get('/getreviewsData')
          .then(function(response) {
            $('#reviewDataTable').DataTable().destroy();
            $('#review_table').empty();
            if (response.status == 200) {
                $('#reviewMainDiv').removeClass('d-none');
                $('#reviewLoadingDiv').addClass('d-none');
                var jsonData = response.data;
                $.each(jsonData, function(i, item) {
                    $('<tr>').html(
                        "<td>"+jsonData[i].name+"</td>" +
                        "<td>"+jsonData[i].desc+"</td>" +
                        "<td><a class='reviewsEdit' data-id='"+jsonData[i].id+"'><i class='fas fa-edit'></i></a></td>" +
                        "<td><a class='reviewsDelete' data-id='"+jsonData[i].id+"'><i class='fas fa-trash-alt'></a></td>"
                    ).appendTo('#review_table');
                });

                //review Table Edit icon
                  $('.reviewsEdit').click(function(){
                    var id = $(this).data('id');
                    $('#reviewUpdateId').html(id);
                    reviewUpdateDetails(id);
                    $('#EditreviewModal').modal('show');
                  });
                //review Table Delete icon
                $('.reviewsDelete').click(function(){
                  var id = $(this).data('id');
                  $('#reviewDeleteID').html(id);
                  $('#DeletereviewModal').modal('show');
                });




                $('#reviewDataTable').DataTable({"order":false});
                $('.dataTables_length').addClass('bs-select');

            } else {
              $('#reviewWrongDiv').removeClass('d-none');
              $('#reviewLoadingDiv').addClass('d-none');
            }

          })
          .catch(function(error){
            $('#reviewWrongDiv').removeClass('d-none');
            $('#reviewLoadingDiv').addClass('d-none');
          });
    }
    //Add New review Modal btn
    $('#addNewreview').click(function(){
      $('#addNewreviewModal').modal('show');
    });
   //review Add Modal Add New Btn
    $('#reviewAddConfirmBtn').click(function(){
      var reviewname = $('#reviewName').val();
      var reviewdes = $('#reviewDes').val();
      var reviewimage = $('#reviewImage').val();
      reviewsAdd(reviewname,reviewdes,reviewimage);

    });
// For review Add New function

    function reviewsAdd(reviewname,reviewdes,reviewimage){
      if (reviewname.length==0) {
          toastr.error('Review Name is Empty !');
      } else if (reviewdes.length==0) {
          toastr.error('Review Description is Empty !');
      } else if (reviewimage.length==0) {
          toastr.error('Review Image is Empty !');
      }else {
        $('#reviewAddConfirmBtn').html("<div class='spinner-border spinner-border-sm' role='status'></div>");
        axios.post('/reviewAdd', {
          name: reviewname,
          desc: reviewdes,
          image: reviewimage
        })
        .then(function(response){
          $('#reviewAddConfirmBtn').html("Add New");
          if (response.status == 200) {
            if (response.data == 1) {
                $('#addNewreviewModal').modal('hide');
                toastr.success('Review Added Successfull.');
                getreviewsData();
            } else {
                $('#addNewreviewModal').modal('hide');
                toastr.error('Faild To Added.');
                getreviewsData();
            }
          } else {
                $('#addNewreviewModal').modal('hide');
                toastr.error('Something Went Wrong !');
          }
        })
        .catch(function(error){
          $('#addNewreviewModal').modal('hide');
          toastr.error('Something Went Wrong !');
        });
      }
    }

    function reviewUpdateDetails(updateId){
      axios.post('/reviewDetails', {
        id: updateId
      })
      .then(function(response){
        if (response.status == 200) {
          $('#reviewUpdateData').removeClass('d-none');
          $('#reviewEditLoader').addClass('d-none');
          var jsonData = response.data;
          $('#reviewUpdateName').val(jsonData[0].name);
          $('#reviewUpdateDes').val(jsonData[0].desc);
          $('#reviewUpdateImage').val(jsonData[0].img);
        } else {
          $('#reviewWrong').removeClass('d-none');
          $('#reviewEditLoader').addClass('d-none');
        }
      })
      .catch(function(error){
          $('#reviewWrong').removeClass('d-none');
          $('#reviewEditLoader').addClass('d-none');
      });
    }

//review Modal Update btn
    $('#reviewUpdateConfirmBtn').click(function(){
      var id = $('#reviewUpdateId').html();
      var reviewUpdateName = $('#reviewUpdateName').val();
      var reviewUpdateDes = $('#reviewUpdateDes').val();
      var reviewUpdateImage = $('#reviewUpdateImage').val();
      Updatereviews(id,reviewUpdateName,reviewUpdateDes,reviewUpdateImage);
    });

    function Updatereviews(id,reviewUpdateName,reviewUpdateDes,reviewUpdateImage){
      if (reviewUpdateName.length==0) {
        toastr.error('Review Name is Empty !');
      } else if (reviewUpdateDes.length==0) {
        toastr.error('Review Description is Empty !');
      } else if (reviewUpdateImage.length==0) {
        toastr.error('v Image is Empty !');
      }
       else {
        $('#reviewUpdateConfirmBtn').html("<div class='spinner-border spinner-border-sm' role='status'></div>");
        axios.post('/reviewUpdate', {
          updateId: id,
          name: reviewUpdateName,
          desc: reviewUpdateDes,
          image: reviewUpdateImage
        })
        .then(function(response){
          $('#reviewUpdateConfirmBtn').html('Update');
          if (response.status == 200) {
            if (response.data == 1) {
              $('#EditreviewModal').modal('hide');
              toastr.success('Review Updated Successfull.');
              getreviewsData();
            } else {
              $('#EditreviewModal').modal('hide');
              toastr.success('Faild To Update.');
              getreviewsData();
            }
          } else {
              $('#EditreviewModal').modal('hide');
              toastr.error('Something Went Wrong !');
          }
        })
        .catch(function(error){
            $('#EditreviewModal').modal('hide');
            toastr.error('Something Went Wrong !');
        })
      }
    }

    $('#reviewDeleteConfirmBtn').click(function(){
      var deleteId = $('#reviewDeleteID').html();
      reviewDelete(deleteId);
    });

    function reviewDelete(deleteId){
      $('#reviewDeleteConfirmBtn').html("<div class='spinner-border spinner-border-sm' role='status'></div>");
      axios.post('/reviewsDelete', {
        deleteId: deleteId
      })
      .then(function(response){
        $('#reviewDeleteConfirmBtn').html("Yes");
        if (response.status == 200) {
          if (response.data == 1) {
            $('#DeletereviewModal').modal('hide');
            toastr.success('Review Deleted Successfull.');
            getreviewsData();
          } else {
            $('#DeletereviewModal').modal('hide');
            toastr.error('Faild To Delete.');
            getreviewsData();
          }
        } else {
          $('#DeletereviewModal').modal('hide');
          toastr.error('Something Went Wrong !');
        }
      })
      .catch(function(error){
          $('#DeletereviewModal').modal('hide');
          toastr.error('Something Went Wrong !');
      });
    }
