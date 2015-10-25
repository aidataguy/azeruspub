// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require materialize-sprockets
//= require jquery_ujs
//= require jquery.turbolinks
//= require ckeditor/init
//= require syntaxhighliter/shCore.js
//= require syntaxhighliter/shBrushRuby.js
//= require syntaxhighliter/shBrushAppleScript.js
//= require syntaxhighliter/shBrushAS3.js
//= require syntaxhighliter/shBrushBash.js
//= require syntaxhighliter/shBrushColdFusion.js
//= require syntaxhighliter/shBrushCpp.js
//= require syntaxhighliter/shBrushCSharp.js
//= require syntaxhighliter/shBrushJavaFX.js
//= require syntaxhighliter/shLegacy.js
//= require syntaxhighliter/shBrushXml.js
//= require syntaxhighliter/shBrushVb.js
//= require syntaxhighliter/shBrushSql.js
//= require syntaxhighliter/shBrushScala.js
//= require syntaxhighliter/shBrushSass.js
//= require syntaxhighliter/shBrushJScript.js
//= require syntaxhighliter/shBrushPerl.js
//= require syntaxhighliter/shBrushPhp.js
//= require syntaxhighliter/shBrushPlain.js
//= require syntaxhighliter/shBrushPowerShell.js
//= require syntaxhighliter/shBrushPython.js
//= require syntaxhighliter/shBrushJava.js
//= require syntaxhighliter/shBrushGroovy.js
//= require syntaxhighliter/shBrushErlang.js
//= require syntaxhighliter/shBrushDiff.js
//= require syntaxhighliter/shBrushDelphi.js
//= require syntaxhighliter/shBrushCss.js
//= require typeahead.bundle.js
//= require jquery.form-validator
//= require typed
//= require_tree .

$(document).ready(function(){
  setTimeout(function(){
    $('#notice_wrap').fadeOut("slow", function(){
      $(this).remove();
    })
  }, 4500);
});


$( document ).ready(function (){
  $('.button-collapse').sideNav({
      menuWidth: 300, // Default is 240
      closeOnClick: true, // Closes side-nav on <a> clicks, useful for Angular/Meteor
    });

	wow = new WOW(
      {
      boxClass:     'wow',      // default
      animateClass: 'animated', // default
      offset:       0,          // default
      mobile:       true,       // default
      live:         true        // default
    }
    )
new WOW().init();
 });
