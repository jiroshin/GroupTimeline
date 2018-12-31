// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .


var data = ""
  data += "<div class='howtouse animated zoomIn' style='padding:20px 0px;'>" 
     data += "<h3>使い方</h3>"
     data += "<center>"
     data += "<img src='/images/screen.png' alt='スクリーンショット2' class='screenshot'>"
     data += "<h4>フォロー関係を超えたタイムラインをつくろう</h4>"
     data += "</center>"
  data += "</div>" 
  


$(document).on('click','.what-this', function() {
  $(".change-top").html(data);
});
