<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Cart.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="bootstrap/jquery-3.6.0.min.js"></script>
    <link href="bootstrap/css/bootstrap.css" rel="stylesheet" />
    <script src="bootstrap/js/bootstrap.js"></script>
    <link href="CSS/Styles.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            left: 0px;
            top: 1px;
            height: 41px;
        }
        
        .auto-style3 {
            font-weight: bold;
            font-size: large;
            font-family: "Segoe UI Variable Display";
        }
        .auto-style5 {
            font-family: "Segoe UI Variable Display";
        }
        .auto-style6 {
            font-weight: bold;
        }
        .auto-style7 {
            font-family: "Segoe UI Variable Display";
            font-weight: bold;
        }
        
    </style>
</head>
<body >
    <form id="form1" runat="server">
    <div class="auto-style2">
        <div class="login" >
            <div class="card-body">
                <h2 class="auto-style7"><span class="auto-style6">Đăng nhập</h2>
                </span><span class="auto-style5">
                <div class="form-group">
                    <asp:Label ID="Label1" runat="server" Text="Địa chỉ email"></asp:Label>
                    <asp:TextBox ID="txtEmail" class="form-control" aria-describedby="emailHelp" placeholder="Email" runat="server"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label2" runat="server" Text="Mật khẩu"></asp:Label>
                    <asp:TextBox ID="txtBassword" class="form-control" placeholder="Mật khẩu" runat="server" TextMode="Password"></asp:TextBox>
                </div>
                <div class="form-check">
                    <asp:CheckBox ID="CheckBox1" class="form-check-input" runat="server" Text="Nhớ mật khẩu" CssClass="auto-style1" />
                    </span>
                </div>
                <strong>
                <asp:Button ID="btnLogin" class="btn btn-primary" runat="server" Text="Đăng nhập" Height="58px" Width="160px" CssClass="auto-style3" ForeColor="#666666" OnClick="btnLogin_Click1" />
                <asp:Button ID="btnRegister" class="btn btn-primary" runat="server" Text="Đăng ký" Height="58px" Width="160px" CssClass="auto-style3" ForeColor="#666666" OnClick="btnLogin_Click1" />
                
                </strong>
                
            </div>
        </div>
    </div>
    </form>
</body>
</html>
