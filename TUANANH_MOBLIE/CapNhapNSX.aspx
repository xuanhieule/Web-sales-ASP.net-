<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeBehind="CapNhapNSX.aspx.cs" Inherits="BAN_HANG.CapNhapNSX" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    
        <h1>CẬP NHẬT NHÀ SẢN XUẤT</h1>
        <br />
        Mã NSX: <asp:TextBox ID="txtMa" runat="server"></asp:TextBox>
        <br />
        <br />
        Tên NSX:
        <asp:TextBox ID="txtTen" runat="server" Width="459px"></asp:TextBox>
        <br />
        <br />
        Quốc gia:&nbsp;
        <asp:DropDownList ID="ddlNuocSX" runat="server">
            <asp:ListItem Value="1">Việt Nam</asp:ListItem>
            <asp:ListItem Value="2">Mỹ</asp:ListItem>
            <asp:ListItem Value="3">Trung Quốc</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        
        <asp:Button ID="btnThemMoi" runat="server" OnClick="btnThemMoi_Click" Text="Luu mới" Width="90px" />
    
    &nbsp;
        <asp:Button ID="btnHieuChinh" runat="server" Text="Thay đổi" Width="90px" OnClick="btnHieuChinh_Click" />
    
    &nbsp;&nbsp;&nbsp;&nbsp;
            
        <br />
        <br />
        <asp:Label ID="lblThongBao" runat="server" Font-Italic="True"></asp:Label>
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="776px">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:BoundField DataField="MA_NSX" HeaderText="Mã NSX" />
                <asp:BoundField DataField="TEN_NSX" HeaderText="Tên NSX" />
   
                <asp:BoundField DataField="ID_NSX" Visible="False" />
                <asp:BoundField DataField="TEN_QUOC_GIA" HeaderText="Quốc gia" />
            </Columns>
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        </asp:GridView>
    
        <br />
        <br />
    
    </div>
</asp:Content>
