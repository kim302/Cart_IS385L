<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ThongTinChiTiet.aspx.cs" Inherits="Cart.ThongTinChiTiet" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="bootstrap/css/bootstrap.css" rel="stylesheet" />
    <link href="CSS/Styles.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-expand-lg navbar-light bg-dark">
            <a class="navbar-brand pl-3" href="/tongquan">
                <img src="Images/logo.png" /></a>
            <div class="collapse navbar-collapse pl-5" id="navbarSupportedContent">
                <!-- Propeller Dropdown -->
                <div class="dropdown pmd-dropdown ">
                    <button class="btn pmd-ripple-effect btn-primary dropdown-toggle" type="button" id="dropdownMenu2" data-toggle="dropdown" aria-expanded="true">Danh mục sản phẩm</button>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="/DanhsachTivi.aspx">TiVi</a>
                        <a class="dropdown-item" href="/DanhSachDienThoai.aspx">Điện thoạt</a>
                        <a class="dropdown-item" href="/DanhSachLaptops.aspx">lapTop</a>
                    </div>
                </div>
                <div class="form-inline my-2 my-lg-0 pl-3">
                    <asp:TextBox ID="txtSearch" class="form-control" placeholder="Thông tin tìm kiếm" aria-label="Search" runat="server" Width="500px"></asp:TextBox>
                    <asp:Button ID="btnSearch" class="btn btn-primary" runat="server" Text="Tìm kiếm" Height="38px" Width="120px" />
                </div>
                <div class="form-inline my-2 my-lg-0 pl-5">
                    <i class="fa-regular fa-circle-user fa-2xl"></i>
                    <asp:Label ID="user" Class="pl-3" runat="server"></asp:Label>
                </div>
                <div class="form-inline my-2 my-lg-0 pl-5">
                    <button type="button" class="btn btn-primary">
                        <i class="fa-solid fa-cart-shopping fa-xl pr-2"></i>
                        Giỏ Hàng</button>
                </div>
            </div>
        </nav>
        <div class="container-fluid" style="width: 95%; margin-top: 2%">
            <div class=" justify-content-right text-left">
                <div>
                    <asp:Label ID="Label1" runat="server" ForeColor="White"></asp:Label>
                    <asp:Label ID="Label2" runat="server" ForeColor="White"></asp:Label>
                    <asp:DataList ID="DataList1" runat="server" DataSourceID="QUERY_SELECT" RepeatColumns="1" RepeatDirection="Horizontal">
                        <ItemTemplate>
                            <div class="card mb-3 pl-5" style="max-width: 840px; max-height: 1000px">
                                <div class="row g-0">
                                    <div class="col-md-6">
                                        <asp:Image ID="Image1" class="img-fluid rounded-start" runat="server" Height="335px" ImageUrl='<%# Eval("HinhAnh") %>' Width="335px" /><br />
                                    </div>
                                    <div class="col-md-6">
                                        <div class="card-body">
                                            <h2>
                                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("Tensp") %>' /><br />
                                            </h2>
                                            Giá: 
                                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("DonGia") %>' /><br />
                                            Màn hình: 
                                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("ManHinh") %>' /><br />
                                            Cam sau: 
                                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("CamSau") %>' /><br />
                                            Cam trước: 
                                            <asp:Label ID="Label7" runat="server" Text='<%# Eval("CamTruoc") %>' /><br />
                                            CPU:
                                            <asp:Label ID="Label8" runat="server" Text='<%# Eval("CPU") %>' /><br />
                                            Ram/Rom: 
                                            <asp:Label ID="Label9" runat="server" Text='<%# Eval("Ram") %>' />/
                                            <asp:Label ID="Label10" runat="server" Text='<%# Eval("ROM") %>' /><br />
                                            Sim: 
                                            <asp:Label ID="Label11" runat="server" Text='<%# Eval("Sim") %>' /><br />
                                            Pin: 
                                            <asp:Label ID="Label12" runat="server" Text='<%# Eval("Pin") %>' /><br />
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--<div class="row">
                                <div class="imagess col-md-6">
                                    <asp:Image ID="Image2" runat="server" Height="335px" ImageUrl='<%# Eval("HinhAnh") %>' Width="335px" /><br />
                                </div>
                                <div class="infor col-md-6">
                                    <h2>
                                        <asp:Label ID="TenspLabel" runat="server" Text='<%# Eval("Tensp") %>' /><br />
                                    </h2>
                                    Giá: 
                        <asp:Label ID="DonGiaLabel" runat="server" Text='<%# Eval("DonGia") %>' /><br />
                                    Màn hình: 
                        <asp:Label ID="ManHinhLabel" runat="server" Text='<%# Eval("ManHinh") %>' /><br />
                                    Cam sau: 
                        <asp:Label ID="CamSauLabel" runat="server" Text='<%# Eval("CamSau") %>' /><br />
                                    Cam trước: 
                        <asp:Label ID="CamTruocLabel" runat="server" Text='<%# Eval("CamTruoc") %>' /><br />
                                    CPU:
                        <asp:Label ID="CPULabel" runat="server" Text='<%# Eval("CPU") %>' /><br />
                                    Ram/Rom: 
                        <asp:Label ID="RamLabel" runat="server" Text='<%# Eval("Ram") %>' />/
                        <asp:Label ID="ROMLabel" runat="server" Text='<%# Eval("ROM") %>' /><br />
                                    Sim: 
                        <asp:Label ID="SimLabel" runat="server" Text='<%# Eval("Sim") %>' /><br />
                                    Pin: 
                        <asp:Label ID="PinLabel" runat="server" Text='<%# Eval("Pin") %>' /><br />
                                </div>
                            </div> -->
                        </ItemTemplate>
                    </asp:DataList>
                    <asp:SqlDataSource ID="QUERY_SELECT" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Masp], [Tensp], [HinhAnh], [DonGia], [ManHinh], [CamSau], [CamTruoc], [CPU], [Ram], [ROM], [Sim], [Pin] FROM [DienThoai] WHERE ([Masp] = @Masp)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="Label1" Name="Masp" PropertyName="Text" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>
            </div>
        </div>
    </form>
    <script src="bootstrap/jquery-3.6.0.min.js"></script>
    <script src="bootstrap/js/bootstrap.js"></script>
    <script src="https://kit.fontawesome.com/45128a02cf.js" crossorigin="anonymous"></script>
</body>
</html>
