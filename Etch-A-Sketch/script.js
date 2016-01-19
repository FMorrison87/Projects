console.log("BUTTFACE");


$(document).ready(function() {

$('body').append('<div class="wrapper"></div>')
$('.wrapper').append('<div class="container"></div>');
	$('.container').append('<div></div>');
	$('.container').append('<div></div>');
	$('.container').append('<div></div>');
	$('.container').append('<div></div>');
	$('.container').append('<div></div>');
	$('.container').append('<div></div>');
	$('.container').append('<div></div>');
	$('.container').append('<div></div>');
	$('.container').append('<div></div>');
	$('.container').append('<div></div>');
	$('.container').append('<div></div>');
	$('.container').append('<div></div>');
	$('.container').append('<div></div>');
	$('.container').append('<div></div>');
	$('.container').append('<div></div>');
	$('.container').append('<div></div>');

	

	$('div > div > div').hover(function() {
		$(this).addClass('hover');
	});

	$('body').append('<button type="button">Add New</button>')
	$('body').on('click', 'button' ,function(){
		$('.container').remove();
		var number = window.prompt("How many squares?");
		console.log(number);
		$('.container2').remove();
		addBlocks_init();
		addBlocks_next(number);
		addBlocks_next2(number);
	
	

		$('td').mouseenter(function() {
		$(this).addClass('hover');
		$(this).fadeTo(700,.2);
	});
	});
});

function addBlocks_init() {
	$('.wrapper').append('<table class="container2"></table>');
}


function addBlocks_next(number) {
	for(var i=0; i < number; i++) {
		$('.container2').append('<tr class=container3></tr>');
	}
}

function addBlocks_next2(number) {
	for(var i=0; i < number; i++) {
		$('.container3').append('<td></td>');
	}
}

//This is the old version with divs.
/*function addBlocks_init() {
	$('.wrapper').append('<div class="container2"></div>');
}


function addBlocks_next(number) {
	for(var i=0; i < number; i++) {
		$('.container2').append('<div></div>');
	}
}*/


