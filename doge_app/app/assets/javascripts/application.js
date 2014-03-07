// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

$(function(){
  $('.submit_btn').click(function(ev){

    ev.preventDefault();
    $conf = $('#confession_text').val();
    $email = $('#email').val();
    console.log($conf);

    $.ajax({
           url: "https://api.hipchat.com/v2/room/374044/notification?auth_token=5r7PSHRdqSpmJoYNoTsEN5uMXXhV7Qj63jr1w...",
           type:"POST",
           data: JSON.stringify({ message: $conf, message_format: 'text' } ),
           contentType:"application/json; charset=utf-8",
           dataType:"json",
           success: function(data){
             console.log(data);
           }
       });

    $.ajax({
            url: "/confessions",
            type: "POST",
            beforeSend: function(xhr) {xhr.setRequestHeader('X-CSRF-Token', $('meta[name="csrf-token"]').attr('content'))},
            data: { email: $email, confession_text: $conf },
            success: function(data){

            }
        });
  });

});
