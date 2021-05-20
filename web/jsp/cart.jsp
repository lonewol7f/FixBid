<%--
  Created by IntelliJ IDEA.
  User: Methmini
  Date: 3/20/2021
  Time: 11:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <meta charset="UTF-8">
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>


    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
    <div class="container">
        <table id="cart" class="table table-hover table-condensed">
            <thead>
            <h1>Shopping Cart</h1>

            <tr>
                <th style="width:50%">Product</th>
                <th style="width:10%">Price</th>
                <th style="width:8%">Quantity</th>
                <th style="width:22%" class="text-center">Subtotal</th>
                <th style="width:10%"></th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td data-th="Product">
                    <div class="row">
                        <div class="col-sm-2 hidden-xs"><img src="../images/Products/watch2.jpg" alt="..." class="img-responsive"/></div>
                        <div class="col-sm-10">
                            <h4 class="nomargin">Product 1</h4>
                        </div>
                    </div>
                </td>
                <td data-th="Price">Rs:1000</td>
                <td data-th="Quantity">
                    <input type="number" class="form-control text-center" value="2">
                </td>
                <td data-th="Subtotal" class="text-center">Rs:2000</td>
                <td class="actions" data-th="">
                    <button class="btn btn-danger btn-sm"><i class="fa fa-trash-o"></i></button>
                </td>
            </tr>
            <tr>
                <td data-th="Product">
                    <div class="row">
                        <div class="col-sm-2 hidden-xs"><img src="../images/Products/pen1.jpg" alt="..." class="img-responsive"/></div>
                        <div class="col-sm-10">
                            <h4 class="nomargin">Product 2</h4>
                        </div>
                    </div>
                </td>
                <td data-th="Price">Rs:100</td>
                <td data-th="Quantity">
                    <input type="number" class="form-control text-center" value="1">
                </td>
                <td data-th="Subtotal" class="text-center">Rs:100</td>
                <td class="actions" data-th="">
                    <button class="btn btn-danger btn-sm"><i class="fa fa-trash-o"></i></button>
                </td>
            </tr>
            </tr>
            <tr>
                <td data-th="Product">
                    <div class="row">
                        <div class="col-sm-2 hidden-xs"><img src="../images/Products/timberland.jpg"  alt="..." class="img-responsive"/></div>
                        <div class="col-sm-10">
                            <h4 class="nomargin">Product 3</h4>
                        </div>
                    </div>
                </td>
                <td data-th="Price">Rs:2000</td>
                <td data-th="Quantity">
                    <input type="number" class="form-control text-center" value="2">
                </td>
                <td data-th="Subtotal" class="text-center">Rs:4000</td>
                <td class="actions" data-th="">
                    <button class="btn btn-danger btn-sm"><i class="fa fa-trash-o"></i></button>
                </td>
            </tr>

            </tbody>
            <tfoot>
            <tr class="visible-xs">
                <td class="text-center"><strong>Total 6100</strong></td>
            </tr>
            <tr>
                <td><a href="#" class="btn btn-warning"><i class="fa fa-angle-left"></i> Continue Shopping</a></td>
                <td colspan="2" class="hidden-xs"></td>
                <td class="hidden-xs text-center"><strong>Total Rs:6100</strong></td>
                <td><a href="#" class="btn btn-success btn-block">Checkout <i class="fa fa-angle-right"></i></a></td>
            </tr>
            </tfoot>
        </table>
    </div>
    </body>
</html>