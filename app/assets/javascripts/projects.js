
//drag and drop accross columns
$(function() {
	
	$( ".columns" ).sortable( 
		{ connectWith: ".columns" },
		{ items: ".portlet"}
	);
	
	$( ".columns" ).disableSelection();
	
});


$(function() {
	
	$(".hide-link, #1").click(function() {
		//debugger;
		$(".portlet-content, #project-1").empty();
	});
	
	$("#modal-button").click(function() {
		debugger;
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