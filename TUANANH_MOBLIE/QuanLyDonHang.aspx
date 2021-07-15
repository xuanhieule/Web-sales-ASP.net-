<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeBehind="QuanLyDonHang.aspx.cs" Inherits="BAN_HANG.QuanLyDonHang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        ĐƠN HÀNG</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="776px">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:BoundField DataField="TAI_KHOAN" HeaderText="Tài khoản" />
                <asp:BoundField DataField="NGUOI_NHAN" HeaderText="Tên người nhận" />
                <asp:BoundField DataField="SDT_NHAN" HeaderText="Sđt" />
                <asp:BoundField DataField="DIA_CHI_NHAN" HeaderText="Địa chỉ" />
                <asp:BoundField DataField="id" Visible="False" />
                <asp:BoundField DataField="GHI_CHU_HANG" HeaderText="Ghi chú" /> 
                <asp:BoundField DataField="THOI_GIAN_DAT_HANG" HeaderText="Thời gian" />
               <asp:BoundField DataField="GIA_TIEN" HeaderText="Đơn giá" />
            </Columns>
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        </asp:GridView>
    </p>
    <p>
        &nbsp;</p>
</asp:Content>
