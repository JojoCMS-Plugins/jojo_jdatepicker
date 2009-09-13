{literal}
<script type="text/javascript" src="js/date.js"></script>
<script type="text/javascript" src="js/jquery.datePicker.js"></script>
<script type="text/javascript" >
$(function()
{
	$('.date-pick-nw').datePicker(
			{
				renderCallback:function($td, thisDate, month, year)
				{
					if (thisDate.isWeekend()) {
						$td.addClass('weekend');
						$td.addClass('disabled');
					}
				}
			}
	)

	$('.date-pick').datePicker()

	$('#start-date').bind(
		'dpClosed',
		function(e, selectedDates)
		{
			var d = selectedDates[0];
			if (d) {
				d = new Date(d);
				$('#end-date').dpSetStartDate(d.addDays(1).asString());
			}
		}
	);
	$('#end-date').bind(
		'dpClosed',
		function(e, selectedDates)
		{
			var d = selectedDates[0];
			if (d) {
				d = new Date(d);
				$('#start-date').dpSetEndDate(d.addDays(-1).asString());
			}
		}
	);
	$('#start-date2').bind(
		'dpClosed',
		function(e, selectedDates)
		{
			var d = selectedDates[0];
			if (d) {
				d = new Date(d);
				$('#end-date2').dpSetStartDate(d.addDays(1).asString());
			}
		}
	);
	$('#end-date2').bind(
		'dpClosed',
		function(e, selectedDates)
		{
			var d = selectedDates[0];
			if (d) {
				d = new Date(d);
				$('#start-date2').dpSetEndDate(d.addDays(-1).asString());
			}
		}
	);
});</script>
{/literal}
