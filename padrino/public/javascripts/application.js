// Put your application scripts here

jQuery(document).ready(function($) {
  
  $('.example_content a').each(function() {
    var hrefLoc = $(this).attr('href');
    var exampleTag = $(this).closest('.example_content');
    if (!exampleTag.hasClass('no_anchor')) {
      var exampleId = exampleTag.attr('id');
      $(this).attr('href', hrefLoc + '#' + exampleId);
    }
  });
  
});
