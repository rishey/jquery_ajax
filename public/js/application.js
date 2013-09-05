$(document).ready(function(){
	$(document).find("#get_color").click(function(data){
					console.log(self);

		$.post('/colors', function(data){
			$('.result').html(data);
		});
		console.log(data.inspect)
	});
});