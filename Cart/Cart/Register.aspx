<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Cart.Register" %>

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
    <form id="form1" runat="server">
        <div class="container-fluid d-flex align-items-center justify-content-center">
            <div class="register" >
                <div class="card-body">
                    <h2 class="auto-style7">Đăng ký</h2>
                    <div class="form-group">
                        <asp:Label ID="Label1" runat="server" Text="Địa chỉ email"></asp:Label>
                        <asp:TextBox ID="txtEmail" class="form-control" aria-describedby="emailHelp" placeholder="Email" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-inline">
                        <asp:Label ID="Label2" runat="server" Text="Mật khẩu"></asp:Label>
                        <asp:TextBox ID="txtBassword" class="form-control" placeholder="Mật khẩu" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:Label ID="Label3" runat="server" Text="Nhập lại mật khẩu"></asp:Label>
                        <asp:TextBox ID="txtRePass" class="form-control" placeholder="Nhập lại mật khẩu" runat="server" TextMode="Password"></asp:TextBox>
                    </div>
                    <h4 class="auto-style7">Thông tin
                        </h4>
                    <div class="form-inline">
                        <asp:Label ID="Label4" runat="server" Text="Họ và tên"></asp:Label>
                        <asp:TextBox ID="txtFullName" class="form-control" placeholder="Họ và tên" runat="server"></asp:TextBox>
                        <asp:Label ID="Label5" runat="server" Text="Ngày sinh"></asp:Label>
                        <asp:TextBox ID="txtBirthday" class="form-control" placeholder="Ngày sinh" runat="server" TextMode="Date"></asp:TextBox>
                    </div>
                    <div class="form-inline">
                        <asp:Label ID="Label6" runat="server" Text="Giới tính"></asp:Label>
                        <asp:TextBox ID="txtGender" class="form-control" placeholder="Giới tính" runat="server" ></asp:TextBox>
                        <asp:Label ID="Label8" runat="server" Text="Số điện thoại"></asp:Label>
                        <asp:TextBox ID="TextBox1" class="form-control" placeholder="Số điện thoại" runat="server" ></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label7" runat="server" Text="Địa chỉ"></asp:Label>
                        <asp:TextBox ID="txtAddress" class="form-control" placeholder="Địa chỉ" runat="server" ></asp:TextBox>
                    </div>
                    <strong>
                        <asp:Button ID="btnLogin" class="btn btn-primary" runat="server" Text="Đăng nhập" Height="58px" Width="160px" />
                        <asp:Button ID="btnRegister" class="btn btn-primary" runat="server" Text="Đăng ký" Height="58px" Width="160px"/>
                    </strong>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
