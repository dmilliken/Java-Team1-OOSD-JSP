$(document).ready(function() {

    $('table.booking_item thead tr').hover(function() {
        $(this).toggleClass('selected_title');
    });
    
    $('table.booking_item').children('tbody').hide();
    
    $('table.booking_item th').click(function() {
    	$(this).parents('tr.booking_title').children('th').toggleClass('clicked_title');
    	$(this).parents('table.booking_item').children('tbody').toggle();
        $(this).parents('table.booking_item').children('tbody').toggleClass('selected_item');
	});

    $('.print_button').click(function() {
        $('#detail').find('.parent').show();
        $('#detail').find('tr.booking_title').children('th').addClass('clicked_title');
        //var printContents = document.getElementById('print').innerHTML;
        var printContents = $('.bookings').html();
    	w = window.open();
    	w.document.write('<html><head><link rel="stylesheet" type="text/css" href="css/stylesheet.css" /></head><body style="padding: 30px";>')
        w.document.write(printContents);
    	w.document.write('</body></html>')
    	w.print();
    	w.close();
    	$('#detail').find('tr.booking_title').children('th').removeClass('clicked_title');
    	$('#detail').find('.parent').hide();
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