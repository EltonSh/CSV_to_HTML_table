# An awk script that creates an html table from csv data and then launches it in the browser

@include "csvmode1";
BEGIN{
	CSVMODE = 1;
	title="AWK FOR CSV TO HTML";
	print "<html>\n<title>"title"</title><body bgcolor=\"#ffffff\">\n<table border=1><th  colspan=2 align=centre>Data Table</th>";
}

{
	print "<tr>";
	for (i=1; i<=NF; i++){
		val=$i;
		print "<td>"val"</td>";	
	}
	print "</tr>";
}

END {
	print "</table></body>\n</html>";
}
