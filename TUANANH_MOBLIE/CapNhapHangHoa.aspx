<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeBehind="CapNhapHangHoa.aspx.cs" Inherits="BAN_HANG.CapNhapHangHoa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <strong>CẬP NHẬT HÀNG HÓA</strong></p>
    <p>
        Mã Hàng:
        <asp:TextBox ID="txtMahang" runat="server" Width="335px"></asp:TextBox>
    </p>
    <p>
        Tên Hàng: :<asp:TextBox ID="txtTenHang" runat="server" Width="323px"></asp:TextBox>
    </p>
    <p>
        ID Quốc Gia :<asp:TextBox ID="txtQuocGia" runat="server" Width="302px"></asp:TextBox>
    </p>
    <p>
        ID Bộ Xử Lý:<asp:TextBox ID="txtBXL" runat="server" Width="295px"></asp:TextBox>
    </p>
    <p>
        ID Nhà Sản Xuất:<asp:TextBox ID="txtNSX" runat="server" Width="278px"></asp:TextBox>
    </p>
    <p>
        ID Nhà Cung Cấp:
        <asp:TextBox ID="txtNCC" runat="server" Width="260px"></asp:TextBox>
    </p>
    <p>
        Màn Hình:
        <asp:TextBox ID="txtMH" runat="server" Width="306px"></asp:TextBox>
    </p>
    <p>
        Ram:
        <asp:TextBox ID="TxtRam" runat="server" Width="331px"></asp:TextBox>
    </p>
    <p>
        Đơn Giá:<asp:TextBox ID="txtGia" runat="server" Width="310px"></asp:TextBox>
    </p>
    <p>
        Hình Ảnh:<asp:FileUpload ID="FileUpload1" runat="server" Width="309px" />
    </p>
    <p>
        Thông Số:
        <asp:TextBox ID="txtThongSo" runat="server" Height="175px" TextMode="MultiLine" Width="615px"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="btnLuu" runat="server" OnClick="btnLuu_Click" Text="Lưu" />
&nbsp;
        <asp:Button ID="btnThayDoi" runat="server" OnClick="btnThayDoi_Click" Text="Thay đổi" />
&nbsp;
    </p>
    <p>
        <asp:Label ID="lblTB" runat="server"></asp:Label>
    </p>
    <p>
        &nbsp;</p>
</asp:Content>
