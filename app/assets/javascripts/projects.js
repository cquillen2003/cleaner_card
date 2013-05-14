
//drag and drop accross columns
$(function() {
	
	$( ".columns" ).sortable( 
		{ connectWith: ".columns" },
		{ items: ".portlet"}
	);
	
	$(".columns").on("sortstop", function( event, ui ) {
		//alert(ui.item.context.id)
		/* Attempt to change status with jQuery ajax call (couldn't get to work)
		var status = "hello status!"
		$.ajax({
				type: "POST",
				url: "/projects/1",
				data: { status: status },
				dataType: 'json',
				processData: false
		});
		
		$("#edit_project_4").submit(function() {
			alert('handler for submit called');
			return false;
		});
		*/
		
		$("#jquery_submit_0").trigger('click');	
		 
	});
	
	$( ".columns" ).disableSelection();
	
	
	
});


$(function() {
	
	$(".hide-link, #1").click(function() {
		//debugger;
		$(".portlet-content, #project-1").empty();
	});
	
	$("#modal-button").click(function() {
		//debugger;
		$("#myModal").modal('show');
	});
	
});

//This isn't working for some reason
$(function() {
	$("#due-date").datepicker();
});

//Stying and interaction for portlets

/*
$(function() {

	$( ".portlet" ).addClass( "ui-widget ui-widget-content ui-helper-clearfix ui-corner-all" )
		.find( ".portlet-header" )
			.addClass( "ui-widget-header ui-corner-all" )
			.prepend( "<span class='ui-icon ui-icon-minusthick'></span>")
			.end()
		.find( ".portlet-content" );
 
	$( ".portlet-header .ui-icon" ).click(function() {
		$( this ).toggleClass( "ui-icon-minusthick" ).toggleClass( "ui-icon-plusthick" );
		$( this ).parents( ".portlet:first" ).find( ".portlet-content" ).toggle();
	});
	  
});
*/