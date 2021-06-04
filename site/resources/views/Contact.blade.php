@extends('Layout.app')
@section('title', 'Contact')
@section('content')


<div class="container-fluid jumbotron mt-5 ">
    <div class="row d-flex justify-content-center">
        <div class="col-md-6  text-center">
            <h1 class="page-top-title mt-3">- যোগাযোগ করুন -</h1>
        </div>
    </div>
</div>


<div class="container">
    <div class="row">
       <div class="col-md-6 width550">
       <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7344.784850839371!2d91.37677787287898!3d23.00935926512664!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x37536817302a4393%3A0x37f5c9cfecf89736!2sMohipal!5e0!3m2!1sen!2sbd!4v1622558996192!5m2!1sen!2sbd" width="550" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
       </div>

       <div class="col-md-6">
       <h3 class="service-card-title">ঠিকানা</h3>
                <hr>
                <p class="footer-text"><i class="fas fa-map-marker-alt"></i> শেখেরটেক ৮ মোহাম্মদপুর, ঢাকা <i class="fas fa-phone ml-2"></i> ০১৭৮৫৩৮৮৯১৯ <i class="fas fa-envelope ml-2"></i> Rabbil@Yahoo.com</p>
       <h5 class="service-card-title mt-5 text-center">যোগাযোগ করুন </h5>
                <div class="form-group ">
                    <input type="text" id="contact_name" class="form-control w-100" placeholder="আপনার নাম">
                </div>
                <div class="form-group">
                    <input id="contact_mobile" type="text" class="form-control  w-100" placeholder="মোবাইল নং ">
                </div>
                <div class="form-group">
                    <input id="contact_email" type="text" class="form-control  w-100" placeholder="ইমেইল ">
                </div>
                <div class="form-group">
                    <input id="contact_msg" type="text" class="form-control  w-100" placeholder="মেসেজ ">
                </div>
                <button id="contactSubmitBtn" type="submit" class="btn btn-block normal-btn w-100">পাঠিয়ে দিন </button>
       </div>
    </div>
</div>

@endsection