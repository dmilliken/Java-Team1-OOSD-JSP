$(document).ready(function() {
    //$('.booking_details').hide();

    
    $('table.booking_item thead tr').hover(function() {
        $(this).toggleClass('selected_title');
    });
    
    $('table.booking_item').children('tbody').hide();
    $('table.booking_item th').click(function() {
		$(this).parents('table.booking_item').children('tbody').toggle();
        $(this).parents('table.booking_item').toggleClass('selected_item');
	});
        
    // Return a helper with preserved width of cells
    var fixHelper = function(e, ui) {
        ui.children().each(function() {
            $(this).width($(this).width());
        });
        return ui;
    };

    $('.sort tbody').sortable({
        helper: fixHelper
    }).disableSelection();

    var fixHelperModified = function(e, tr) {
    var $originals = tr.children();
    var $helper = tr.clone();
    $helper.children().each(function(index)
    {
      $(this).width($originals.eq(index).width())
    });
    return $helper;
    };
});