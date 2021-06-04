// Owl Carousel Start..................



$(document).ready(function() {
    var one = $("#one");
    var two = $("#two");

    $('#customNextBtn').click(function() {
        one.trigger('next.owl.carousel');
    })
    $('#customPrevBtn').click(function() {
        one.trigger('prev.owl.carousel');
    })
    one.owlCarousel({
        autoplay:true,
        loop:true,
        dot:true,
        autoplayHoverPause:true,
        autoplaySpeed:100,
        margin:10,
        responsive:{
            0:{
                items:1
            },
            600:{
                items:2
            },
            1000:{
                items:4
            }
        }
    });

    two.owlCarousel({
        autoplay:true,
        loop:true,
        dot:true,
        autoplayHoverPause:true,
        autoplaySpeed:100,
        margin:10,
        responsive:{
            0:{
                items:1
            },
            600:{
                items:1
            },
            1000:{
                items:1
            }
        }
    });

});

// Owl Carousel End..................

//Contact Form Script
$('#contactSubmitBtn').click(function(){
    var name = $('#contact_name').val();
    var mobile = $('#contact_mobile').val();
    var email = $('#contact_email').val();
    var msg = $('#contact_msg').val();

    sendConact(name,mobile,email,msg);
});

function sendConact(contact_name,contact_mobile,contact_email,contact_msg){
    if (contact_name.length==0) {
        $('#contactSubmitBtn').html("আপনার নাম লিখুন ");
        setTimeout(function(){
            $('#contactSubmitBtn').html("পাঠিয়ে দিন");
        },2000);
    } else if (contact_mobile.length==0) {
        $('#contactSubmitBtn').html("আপনার মোবাইল নং লিখুন ");
        setTimeout(function(){
            $('#contactSubmitBtn').html("পাঠিয়ে দিন");
        },2000);
    } else if (contact_email.length==0) {
        $('#contactSubmitBtn').html("আপনার ইমেইল লিখুন ");
        setTimeout(function(){
            $('#contactSubmitBtn').html("পাঠিয়ে দিন");
        },2000);
    } else if (contact_msg.length==0) {
        $('#contactSubmitBtn').html("আপনার মেসেজ লিখুন ");
        setTimeout(function(){
            $('#contactSubmitBtn').html("পাঠিয়ে দিন");
        },2000);
    }
     else {
        $('#contactSubmitBtn').html("পাঠানো হচ্ছে ...");
        axios.post('/contactSend', {
            contact_name,
            contact_mobile,
            contact_email,
            contact_msg
        })
        .then(function(response){
            if (response.status == 200) {
                if (response.data == 1) {
                    $('#contactSubmitBtn').html("অনুরোধ সফল হয়েছে");
                    setTimeout(function(){
                        $('#contactSubmitBtn').html("পাঠিয়ে দিন");
                    },3000);
                    $('#contact_name').val("");
                    $('#contact_mobile').val("");
                    $('#contact_email').val("");
                    $('#contact_msg').val("");
                } else {
                    $('#contactSubmitBtn').html("অনুরোধ ব্যর্থ হয়েছে । আবার চেষ্টা করুন");
                    setTimeout(function(){
                        $('#contactSubmitBtn').html("পাঠিয়ে দিন");
                    },3000);
                }
            } else {
                $('#contactSubmitBtn').html("অনুরোধ ব্যর্থ হয়েছে । আবার চেষ্টা করুন");
                setTimeout(function(){
                    $('#contactSubmitBtn').html("পাঠিয়ে দিন");
                },3000);
            }
        })
        .catch(function(){
            $('#contactSubmitBtn').html("আবার চেষ্টা করুন");
            setTimeout(function(){
                $('#contactSubmitBtn').html("পাঠিয়ে দিন");
            },3000);
        })
        
    }
    
}