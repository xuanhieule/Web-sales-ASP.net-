<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeBehind="QuanLyTaiKhoan.aspx.cs" Inherits="BAN_HANG.QuanLyTaiKhoan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <strong>QUẢN LÝ TÀI KHOẢN</strong></p>
<p>
    Tên Đăng Nhập:
    <asp:TextBox ID="txtTK" runat="server" Width="335px"></asp:TextBox>
</p>
<p>
    Set Quyền&nbsp; :&nbsp;
    <asp:TextBox ID="txtQuyen" runat="server" Width="331px"></asp:TextBox>
</p>
<p>
    <strong>(Nhập số vào set quyền tương ứng: 1. ADMIN 2.MOD 3. KHÁCH HÀNG 4 . KHÓA TÀI KHOẢN)</strong></p>
<p>
    <asp:Button ID="btnLuu" runat="server" OnClick="btnLuu_Click" Text="Lưu" />
&nbsp;
        &nbsp;
    </p>
<p>
    <asp:Label ID="lblTB" runat="server"></asp:Label>
</p>
</asp:Content>
