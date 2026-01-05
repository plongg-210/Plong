<%-- 
    Document   : index
    Created on : Jan 5, 2026, 4:33:50 PM
    Author     : PHI LONG
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HTML Forms</title>
    </head>
    <body>
        <h1>HTML Forms</h1>
    <from>
        Textbox:
        <input type="text">
        <br><br>
        
        Password:
        <input type="password">
        <br>
        Male:
        <input type="checkbox">
        <br><br>
        
        Status:
        <br>
        <input type="radio" name="status"> Single
        <br>
        <input type="radio" name="status"> Married
        <br>
        <input type="radio" name="status"> Divorsed
        <br><br>
        
        ComboBox:
        <select>
            <option>JSP and Servlet</option>
            <option>EJB</option>
        </select>
        <br><br>
        
        Multiple Select:
        <br>
        <select multiple>
            <option>JSP and Servlet</option>
            <option>EJB</option>
            <option>Core Java</option>
        </select>
        <br><br>
        
        TextArea:
        <br>
        <textarea row="4" cols="20">
        this is a form parameters demo!!!
        </textarea>
        <br><br>
        
        <input type="submit" value="Submit Query">
        <input type="button" value="Register">
        <input type="reset" value="Reset">
        <input type="button" value="JavaScript">
        
    </from>
    </body>
</html>
