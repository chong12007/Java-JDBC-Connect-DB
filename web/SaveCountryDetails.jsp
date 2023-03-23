<%-- 
    Document   : SaveCountryDetails
    Created on : Mar 23, 2023, 6:05:48 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="country" class="model.Country" scope="session"></jsp:useBean>
<jsp:useBean id="countryDa" class="model.Country" scope="session"></jsp:useBean>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SaveCountryDetails</title>
    </head>
    <body>
        <h1>Save Country Detail</h1>
        
        //save to db code
        Your Country : <%= country.getName() %> has been saved in database
    
    </body>
</html>
