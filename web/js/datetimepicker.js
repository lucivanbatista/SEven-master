$(document).ready(function()
	{
		$('#timeI').bootstrapMaterialDatePicker
		({
			date: false,
			shortTime: false,
			format: 'HH:mm'
		});
                
                $('#timeF').bootstrapMaterialDatePicker
		({
			date: false,
			shortTime: false,
			format: 'HH:mm'
		});
                
                $('#date').bootstrapMaterialDatePicker
                ({
			format: 'DD/MM/YYYY',
			lang: 'pt',
			time: false,
			clearButton: true
		});
                
		$.material.init()
	});