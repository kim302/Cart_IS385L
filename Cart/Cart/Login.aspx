<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Cart.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="bootstrap/jquery-3.6.0.min.js"></script>
    <link href="bootstrap/css/bootstrap.css" rel="stylesheet" />
    <script src="bootstrap/js/bootstrap.js"></script>
    <link href="CSS/Styles.css" rel="stylesheet" />
</head>
<body>
    <div class="container-fluid">
        <div class="login" >
            <div class="card-body">
                <h2>Login</h2>
                <div class="form-group">
                    <label for="exampleInputEmail1">Email address</label>
                    <input type="email" class="form-control" id="txtEmail" aria-describedby="emailHelp" placeholder="Enter email" runat="server"/>
                    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1">Password</label>
                    <input type="password" class="form-control" id="txtPassword" placeholder="Password" runat="server"/>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault" runat="server"/>
                    <label class="form-check-label" for="flexCheckDefault">
                        Default checkbox
                    </label>
                </div>
                <button type="submit" id="btnLogin" class="btn btn-primary">Login</button>
            </div>
        </div>
    </div>
</body>
</html>
