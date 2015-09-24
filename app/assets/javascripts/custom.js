(function (user) {
    user(window.jQuery, window, document);
}(function ($, window, document) {
    $(function () {
		/*
		/* Radio & Checkbox */
		$cust_lbl='label';$cust_chk='checked';$cust_opt_wrp='.custom-opt';$cust_chk_wrp='.custom-chk';	$cust_input_chk="input[type='checkbox']";
		$cust_input_opt="input[type='radio']";
		$($cust_chk_wrp + ' ' + $cust_lbl + ', ' + $cust_opt_wrp + ' ' + $cust_lbl).each(function(){		
			$(this).find('input:checked').parent(this).addClass($cust_chk);		
		});
		$($cust_chk_wrp).delegate($cust_input_chk, "change", function (event) {
			$(this).parents('label').toggleClass($cust_chk);
			event.stopImmediatePropagation();
		});
		$($cust_opt_wrp).delegate($cust_input_opt, "change", function (event) {				
			$($cust_opt_wrp).find(("input:not(:checked)")).parents($cust_lbl).removeClass($cust_chk);
			$(this).parents($cust_lbl).addClass($cust_chk);
			event.stopImmediatePropagation();
		});
		/**********************************************/

		
		/*
		/* SEARCH CONTAINER INPUT ICON ON FOCUS CHANGE */
		$('.form-container .input-box input').focus(function(){
			$(this).parent().addClass('active');		
		});
		$('.form-container .input-box input').focusout(function(){
			$(this).parent().removeClass('active');		
		});
		/**********************************************/
		
		/*
		/* SEARCH CONTAINER INPUT ICON ON FOCUS CHANGE */
		$searchContainer=$('.search-container');
		$searchContainer.find('input').focus(function () {
			$(this).parent().addClass('active');
			$searchContainer.find('input').bind('focusout.hidePanel', function () {
				$(this).parent().removeClass('active');	
			});
		});		
		/**********************************************/
		
		
		/*
		/* CUSTOM SELECT BOX */
		$(".custom-select-box").append('<span></span>');
		$(".custom-select-box").each(function()
		{
			$(this).find('span').text($(this).find("select option:selected").text());
		});
		$('.custom-select-box select').change(function()
		{
			$selected_val=($(this).val());
			$(this).closest('.custom-select-box').find('span').text($(this).closest('.custom-select-box').find("select option:selected").text());
		});
		/**********************************************/

			
    });
	
	

}));

