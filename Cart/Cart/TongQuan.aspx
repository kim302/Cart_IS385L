<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TongQuan.aspx.cs" Inherits="Cart.TongQuan" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link href="bootstrap/css/bootstrap.css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="#"><b>Logo Cửa Hàng</b></a>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <div class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Danh mục sản phẩm
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="#">Điện thoại</a>
                        <a class="dropdown-item" href="#">Laptops</a>
                        <a class="dropdown-item" href="#">Tivi</a>
                    </div>
                </div>
                <div class="form-inline my-2 my-lg-0">
                    <asp:TextBox ID="txtSearch" class="form-control" placeholder="Thông tin tìm kiếm" aria-label="Search" runat="server" Width="700px"></asp:TextBox>
                    <asp:Button ID="btnSearch" class="btn btn-primary" runat="server" Text="Tìm kiếm" Height="38px" Width="120px" />
                </div>
                <div>
                    <asp:Button ID="txtLogin" class="btn btn-info btn-round" data-toggle="modal" data-target="#loginModal" runat="server" Text="Đăng nhập" Height="38px" Width="120px" OnClick="txtLogin_Click" />
                </div>
            </div>
        </nav>
    </form>
    <script src="bootstrap/jquery-3.6.0.min.js"></script>
    <script src="bootstrap/js/bootstrap.js"></script>
    <script src="bootstrap/script.js"></script>
</body>
</html>
