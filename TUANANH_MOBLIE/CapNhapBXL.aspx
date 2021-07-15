<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeBehind="CapNhapBXL.aspx.cs" Inherits="BAN_HANG.CapNhapBXL" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
        
    <div>
    
        <h1>CẬP NHẬT BỘ XỬ LÝ</h1>
        <br />
        Mã bộ xử lý: <asp:TextBox ID="txtMa" runat="server"></asp:TextBox>
        <br />
        <br />
        Tên bộ xử lý:
        <asp:TextBox ID="txtTen" runat="server" Width="459px"></asp:TextBox>
        <br />
        <br />
        Quốc gia:&nbsp;
        <asp:DropDownList ID="ddlNuocSX" runat="server">
            <asp:ListItem Value="1">Việt Nam</asp:ListItem>
            <asp:ListItem Value="2">Mỹ</asp:ListItem>
            <asp:ListItem Value="3">Lào</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <br />
        Nhà sản xuất: <asp:DropDownList ID="ddlNSX" runat="server">
            <asp:ListItem Value="1">Sony</asp:ListItem>
            <asp:ListItem Value="2">Apple</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        Nhà cung cấp:
        <asp:DropDownList ID="ddlNCC" runat="server">
            <asp:ListItem Value="1">fpt</asp:ListItem>
            <asp:ListItem Value="2">Duy Tân</asp:ListItem>
            <asp:ListItem Value="3">Đà Nẵng</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <br />
        Ghi_chú:
        <asp:TextBox ID="txtThongSo" runat="server" Height="107px" TextMode="MultiLine" Width="540px"></asp:TextBox>
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
                <asp:BoundField DataField="MA_BXL" HeaderText="Mã BXL" />
                <asp:BoundField DataField="TEN_BXL" HeaderText="Tên BXL" />
                <asp:BoundField DataField="TEN_NSX" HeaderText="NSX" />
                <asp:BoundField DataField="TEN_NCC" HeaderText="NCC" />
                <asp:BoundField DataField="ID_BXL" Visible="False" />
                <asp:BoundField DataField="TEN_QUOCGIA" HeaderText="Quốc gia" />
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
