$(document).ready(function()
	{
		$('.time').bootstrapMaterialDatePicker
		({
			date: false,
			shortTime: false,
			format: 'HH:mm'
		});
                               
                $('.date').bootstrapMaterialDatePicker
                ({
			format: 'DD/MM/YYYY',
			lang: 'pt',
			time: false,
			clearButton: false,
                        nowButton: true,
                        cancelText: 'Cancelar',
                        clearText: 'Limpar',
                        okText: 'Confirmar',
                        nowText: 'Hoje',
                        minDate : new Date()
		});
                
                $('#date-end-event').bootstrapMaterialDatePicker
                ({ 
                       format: 'DD/MM/YYYY',
			lang: 'pt',
			time: false,
			clearButton: false,
                        nowButton: true,
                        cancelText: 'Cancelar',
                        clearText: 'Limpar',
                        okText: 'Confirmar',
                        nowText: 'Hoje',
                        minDate : new Date()  
                });
                
                $('#date-start-event').bootstrapMaterialDatePicker
                ({
                        format: 'DD/MM/YYYY',
			lang: 'pt',
			time: false,
			clearButton: false,
                        nowButton: true,
                        cancelText: 'Cancelar',
                        clearText: 'Limpar',
                        okText: 'Confirmar',
                        nowText: 'Hoje',
                        minDate : new Date()
                }).on('change', function(e, date)        
                    {
                        $('#date-end-event').bootstrapMaterialDatePicker('setMinDate', date);
                    });
                    
                $('#date-end-in').bootstrapMaterialDatePicker
                ({ 
                       format: 'DD/MM/YYYY',
			lang: 'pt',
			time: false,
			clearButton: false,
                        nowButton: true,
                        cancelText: 'Cancelar',
                        clearText: 'Limpar',
                        okText: 'Confirmar',
                        nowText: 'Hoje',
                        minDate : new Date()  
                });
                
                $('#date-start-in').bootstrapMaterialDatePicker
                ({
                        format: 'DD/MM/YYYY',
			lang: 'pt',
			time: false,
			clearButton: false,
                        nowButton: true,
                        cancelText: 'Cancelar',
                        clearText: 'Limpar',
                        okText: 'Confirmar',
                        nowText: 'Hoje',
                        minDate : new Date()
                }).on('change', function(e, date)        
                    {
                        $('#date-end-in').bootstrapMaterialDatePicker('setMinDate', date);
                    });
                
		$.material.init()
	});