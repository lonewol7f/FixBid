<%--
  Created by IntelliJ IDEA.
  User: Sachintha
  Date: 22-May-21
  Time: 12:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/headerFooter.css">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
          integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Products</title>
</head>
<body>
<%@ include file="/includes/header.jsp" %>



<!--start of form-->

<center>
<form class="form-horizontal">
    <fieldset>

        <!-- Form Name -->
        <legend>PRODUCTS</legend>


        <!-- Text input-->
        <div class="form-group">
            <label class="col-md-4 control-label" for="product_name">PRODUCT NAME</label>
            <div class="col-md-4">
                <input id="product_name" name="product_name" placeholder="PRODUCT NAME" class="form-control input-md" required="" type="text">

            </div>
        </div>


        <!-- Select Basic -->
        <div class="form-group">
            <label class="col-md-4 control-label" for="product_categorie">PRODUCT CATEGORY</label>
            <div class="col-md-4">
                <select id="product_categorie" name="product_categorie" class="form-control">
                </select>
            </div>
        </div>

        <!-- Text input-->
        <div class="form-group">
            <label class="col-md-4 control-label" for="start_price">START PRICE</label>
            <div class="col-md-4">
                <input id="start_price" name="start_price" placeholder="START PRICE" class="form-control input-md" required="" type="text">

            </div>
        </div>

        <!-- Textarea -->
        <div class="form-group">
            <label class="col-md-4 control-label" for="product_description">PRODUCT DESCRIPTION</label>
            <div class="col-md-4">
                <textarea class="form-control" id="product_description" name="product_description"></textarea>
            </div>
        </div>

        <!-- Text input-->
        <div class="form-group">
            <label class="col-md-4 control-label" for="online_date">ONLINE DATE</label>
            <div class="col-md-4">
                <input id="online_date" name="online_date" placeholder="DD/MM/YYYY" class="form-control input-md" required="" type="text">

            </div>
        </div>

        <!-- Text input-->
        <div class="form-group">
            <label class="col-md-4 control-label" for="author">AUTHOR</label>
            <div class="col-md-4">
                <input id="author" name="author" placeholder="AUTHOR" class="form-control input-md" required="" type="text">

            </div>
        </div>

        <!-- Text input-->
        <div class="form-group">
            <label class="col-md-4 control-label" for="enable_display">ENABLE DISPLAY</label>
            <div class="col-md-4">
                <input id="enable_display" name="enable_display" placeholder="ENABLE DISPLAY" class="form-control input-md" required="" type="text">

            </div>
        </div>

        <!-- Text input-->
        <div class="form-group">
            <label class="col-md-4 control-label" for="comment">COMMENT</label>
            <div class="col-md-4">
                <input id="comment" name="comment" placeholder="COMMENT" class="form-control input-md" required="" type="text">

            </div>
        </div>

        <!-- Text input-->
        <div class="form-group">
            <label class="col-md-4 control-label" for="approuved_by">APPROUVED BY</label>
            <div class="col-md-4">
                <input id="approuved_by" name="approuved_by" placeholder="APPROUVED BY" class="form-control input-md" required="" type="text">

                <!-- File Button -->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="filebutton">main_image</label>
                    <div class="col-md-4">
                        <input id="filebutton" name="filebutton" class="input-file" type="file">
                    </div>
                </div>

                <!-- Button -->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="singlebutton">Single Button</label>
                    <div class="col-md-4">
                        <button id="singlebutton" name="singlebutton" class="btn btn-primary">Submit Product</button>
                    </div>
                </div>

    </fieldset>
</form>
</center>


<!--end of form-->

<%@ include file="/includes/footer.jsp" %>
</body>
</html>
