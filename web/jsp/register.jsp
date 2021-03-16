<%--
  Created by IntelliJ IDEA.
  User: RuwanaraT
  Date: 3/15/2021
  Time: 11:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>FixBid Registration</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
          integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/headerFooter.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/FixBid_Registration.css">
    <title> FixBid Registration </title>
</head>
<body>
<%@ include file="/includes/header.jsp" %>

<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>


<div class="container mt-5" style="background-color: whitesmoke; width : 50%">

    <form action="" method="">

        <center><h1> FixBid Registration </h1></center>
        <hr>

        <div class="row">
            <div class="col">
                <label for="exampleFormControlTextarea1"> First Name </label>
                <input type="text" class="form-control" placeholder="Enter Your First Name" required>
            </div>
            <div class="col">
                <label for="exampleFormControlTextarea1"> Last Name </label>
                <input type="text" class="form-control" placeholder="Enter Your Last Name" required>
            </div>
        </div>

        <div class="form-group">
            <label for="exampleFormControlTextarea1"> Home Address </label>
            <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"
                      placeholder="Enter Your Home Address " required></textarea>
        </div>

        <div class="row">
            <div class="col">
                <label for="exampleFormControlTextarea1"> Mobile Number </label>
                <input type="text" class="form-control" placeholder="Enter Your Mobile Number" required>
            </div>
            <div class="col">
                <label for="exampleFormControlTextarea1"> E-mail </label>
                <input type="text" class="form-control" placeholder="Enter Your E-mail Address"
                       pattern="[a-zA-Z0-9.%+-]*{8}" required>
            </div>
        </div>

        <div class="form-group">
            <label for="exampleInputPassword1"> Password </label>
            <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Enter Your Password"
                   required>
        </div>

        <div class="form-group">
            <label for="exampleInputPassword1"> Re-Enter Password </label>
            <input type="password" class="form-control" id="exampleInputPassword1"
                   placeholder="Enter Your Password Again" required>
        </div>

        <div class="form-check">
            <input type="checkbox" class="form-check-input" id="exampleCheck1" required>
            <label class="form-check-label" for="exampleCheck1"> Accept Privacy & Policy Terms </label>
        </div>

        <br>

        <button type="submit" class="btn btn-primary" style="background-color:#02457A;">Submit</button>

        <button type="submit" class="btn btn-primary" style="background-color:tomato;">Cancel</button>

    </form>

</div>
<%@ include file="/includes/footer.jsp" %>
</body>
</html>
