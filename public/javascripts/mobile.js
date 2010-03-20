var json_train_lines = ''

$.jQTouch({
});

jQuery(document).ready(function() {
  jQuery('#rant_transport_line_id').live('change', function() {
    DisplayDirection(this, 'rant');
  });

  jQuery('#rave_transport_line_id').live('change', function () {
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
        var option_tags = '<option value=""/>';

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