// JavaScript Document
	var cal1;
	
	function goToToday()
	{
		var t = new Date();
		cal1.setCalendarDate(t.getUTCFullYear(), t.getUTCMonth());
		//cal1.removeClassName(cal1.getFocusedElement(), cal1.focusedCellClass);
		//cal1.focusedCell = null;
		return false;
	}
	
	function viewSelected()
	{
		if(cal1.getSelectedDate()){
			cal1.setCalendarDate(cal1.getSelectedDate().getUTCFullYear(),cal1.getSelectedDate().getUTCMonth());
			cal1.removeClassName(cal1.getFocusedElement(), cal1.focusedCellClass);
			cal1.focusedCell = null;
			return false;
		}
	}
	
	var cb = function(val)
	{
		v = cal1.calendarMonths[val.getUTCMonth()] + " " + val.getUTCDate() + ", " + val.getUTCFullYear();
		//alert("You clicked on " + v + ".");
		// gvp modified to use on any page... need to call text box 'theDate' to paste in calendar date.
		document.getElementById('theDate').value = v;
		return false;
	}