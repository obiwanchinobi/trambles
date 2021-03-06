var json_train_lines = ''

$.jQTouch({
});

jQuery(document).ready(function() {
  jQuery('a.whiteButton').live('tap', function() {
    if (jQuery('#new_rant').length>0)
      jQuery('#new_rant').submit();
    else if (jQuery('#new_rave').length>0)
      jQuery('#new_rave').submit();
  });
  
  // For browser debugging
  jQuery('a.whiteButton').live('click', function() {
    if (jQuery('#new_rant').length>0)
      jQuery('#new_rant').submit();
    else if (jQuery('#new_rave').length>0)
      jQuery('#new_rave').submit();
  });
  
  jQuery('#rant_transport_line_id').live('change', function() {
    if (jQuery('#rant_category').val() == "Train")
      DisplayDirection(this, 'rant');
  });

  jQuery('#rave_transport_line_id').live('change', function () {
    if (jQuery('#rave_category').val() == "Train")
      DisplayDirection(this, 'rave');
  });
});

function DisplayDirection(obj, type) {
  if (jQuery(obj).val()=='')
    jQuery('#trains').html('');
  else {
    for(var i=0; i < json_train_lines.length; i++) {

      var o = json_train_lines[i].train_line;
      
      if (o.id == jQuery(obj).val()) {
        
        // TODO: html injection after page validation is non-responsive
        // alert(o.id+"|"+jQuery('#trains').html());
        var option_tags = '';

        // Get directions for line
        for(var k=0; k < o.directions.length; k++) {
          option_tags +=  '<option value="'+o.directions[k].id+'">'+o.directions[k].name+'</option>';
        }

        // Create select
        select_tag = '<select id="'+type+'_direction_id" name="'+type+'[direction_id]"" >'+option_tags+'</select>';
        
        jQuery('#trains').html(select_tag);
      }
    }      
  }
}