<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Cart.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="bootstrap/css/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <section class="vh-100" style="background-color: #eee;">
            <div class="container h-100">
                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col-lg-12 col-xl-11">
                        <div class="card text-black" style="border-radius: 25px;">
                            <div class="card-body p-md-5">
                                <div class="row justify-content-center">
                                    <div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">

                                        <p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Đăng nhập</p>

                                        <div class="mx-1 mx-md-4">

                                            <div class="d-flex flex-row align-items-center mb-4">
                                                <i class="fas fa-user fa-lg me-3 fa-fw"></i>
                                                <div class="form-outline flex-fill mb-0">
                                                    <asp:TextBox ID="txtEmail" class="form-control" aria-describedby="emailHelp" placeholder="Email" runat="server" TextMode="Email"></asp:TextBox>
                                                </div>
                                            </div>

                                            <div class="d-flex flex-row align-items-center mb-4">
                                                <i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
                                                <div class="form-outline flex-fill mb-0">
                                                    <asp:TextBox ID="txtPassword" class="form-control" placeholder="Mật khẩu" runat="server" TextMode="Password"></asp:TextBox>
                                                </div>
                                            </div>



                                            <div class="form-check d-flex mb-3">
                                                <asp:CheckBox ID="nhomatkhau" class="form-check-input" runat="server" Text="Nhớ mật khẩu" CssClass="auto-style1" />

                                            </div>

                                            <div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
                                                <asp:Button ID="btnLogin" class="btn btn-primary mr-3" runat="server" Text="Đăng Nhập" Width="130px" OnClick="btnLogin_Click" />
                                                <asp:Button ID="btnRegister" class="btn btn-primary" runat="server" Text="Đăng ký" Width="130px" OnClick="btnRegister_Click1" />
                                            </div>
                                            <div class=" mx-4 mb-3 mb-lg-4">
                                                <label class="form-check-label" for="form2Example3">
                                                    <a href="#!"><b>Quên mật khẩu?</b></a>
                                                </label>
                                            </div>

                                        </div>

                                    </div>
                                    <div class="col-md-10 col-lg-6 col-xl-7 d-flex align-items-center order-1 order-lg-2">

                                        <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/draw1.webp" class="img-fluid" alt="Sample image">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </form>
    <script src="bootstrap/jquery-3.6.0.min.js"></script>

    <script src="bootstrap/js/bootstrap.js"></script>

</body>
</html>
