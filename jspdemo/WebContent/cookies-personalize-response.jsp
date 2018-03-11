<html>

<head><title>Confirmation</title></head>

<%

	//read from data
	String favLang = request.getParameter("favoriteLanguage");
	
	//create the cookie
	Cookie theCookie = new Cookie("myApp.favoriteLanguage", favLang);
	
	//set the life of the cookie in seconds
	theCookie.setMaxAge(60*60*24*365);
	
	//send the cookie to the browser
	response.addCookie(theCookie);

%>

<body>

Thanks! We set your favorite language to: ${param.favoriteLanguage}

<br/><br/>

<a href="cookies-homepage.jsp">Return to homepage</a>

</body>

</html>