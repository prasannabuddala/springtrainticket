<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.List"%>
	<%@ page import="com.mypackage.model.Station"%>
	<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
/* Container */
#container {
    margin: auto;
    width: 50%;
    padding: 40px;
    border-radius: 10px;
    background-color: #f8f9fa;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
}

/* Heading */
h2 {
    text-align: center;
    margin-bottom: 30px;
    color: #333;
}

/* Form */
#search-form {
    display: flex;
    flex-direction: column;
    align-items: center;
}

.from-to {
    margin-bottom: 20px;
    display: flex;
    align-items: center;
}

label {
    font-weight: bold;
    margin-right: 10px;
    width: 80px;
}

select {
    padding: 8px;
    border-radius: 5px;
    border: 1px solid #ccc;
    outline: none;
    flex: 1;
}

button {
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    background-color: #007bff;
    color: #fff;
    cursor: pointer;
    transition: background-color 0.3s;
}

button:hover {
    background-color: #0056b3;
}

</style>
</head>
<body>
<h1>home page</h1>
<div id="container">
        <h2>Train Ticket Booking</h2>
        <div id="first">
            <div class="from-to">
                <label for="from">From: </label>
                <select name="from-stations" id="from" required>
                    <% for (Station station : (List<Station>) request.getAttribute("stationsList")) { %>
                        <option value="<%= station.getSt_name() %>"><%= station.getSt_name() %></option>
                    <% } %>
                </select>
            </div>
            <div class="from-to">
                <label for="to">To: </label>
                <select name="to-stations" id="to" required>
                    <% for (Station station : (List<Station>) request.getAttribute("stationsList")) { %>
                        <option value="<%= station.getSt_name() %>"><%= station.getSt_name() %></option>
                    <% } %>
                </select>
            </div>
            <div>
                <button id="searcht">Search</button>
            </div>
        </div>
        <!-- Other parts of your HTML -->
    </div>
</body>
</html>