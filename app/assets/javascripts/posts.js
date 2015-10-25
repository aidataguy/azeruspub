$(document).ready(function() {
   var posts = new Bloodhound({
       datumTokenizer: Bloodhound.tokenizers.obj.whitespace('title'),
       queryTokenizer: Bloodhound.tokenizers.whitespace,
       prefetch: "/posts/autocomplete?query=%QUERY",
   remote: {
       url: "/posts/autocomplete?query=%QUERY"
   }
 });
});