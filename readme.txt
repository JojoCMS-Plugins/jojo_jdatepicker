
To Use:
    Login as an admin.
    Go to the Content -> Edit Pages -> page.

add this line into the page that will use date fields

[[jdatepicker]]

class any date fields that will use the date picker with class="date-pick" or class="date-pick-nw" to disallow selecting weekend dates

to link start and end date fields, id them with "start-date" and "end-date"
if you have two, id the second pair with "start-date2" and "end-date2"


eg <input type="text" name="accommodation_finish"  id="start-date" class="date-pick" />