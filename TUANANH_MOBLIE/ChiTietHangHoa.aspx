<%@ Page Title="" Language="C#" MasterPageFile="~/MasterHome.Master" AutoEventWireup="true" CodeBehind="ChiTietHangHoa.aspx.cs" Inherits="BAN_HANG.ChiTietHangHoa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


<form id="form1" runat="server">
     <div class="quangcao1home  wow fadeInUpBig">
    <div class="container">
      <div class="row">
        <div class="col-sm-12">
          <div class="qchome text-xs-center">
            <h2>Tuấn Anh Mobile</h2>
            <h4>THÍCH THÌ MUA, KHÔNG THÍCH THÌ MUA</h4>
            <a href="#" class=" btn btn-outline-secondary"> MUA NGAY <i class="fa fa-long-arrow-right"></i> </a>
          </div>
        </div>
      </div>
    </div>
  </div> <!--  HET QUANG CAO TRANG HOME -->
    <div class="sanpham">
		<div class="container">
            <h3>Thông tin sản phẩm </h3>
    <p>
        <br />
              <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="White" BorderColor="White" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" Height="506px" Width="1141px">
            <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <FooterStyle BackColor="White" />
            <FooterTemplate>
                <div class="row">
               
				<div class="images col-sm-6 wow fadeInLeftBig">
                    
                    <a href="#" class="bigimage"> <asp:Image ID="Image2" runat="server" Height="517px" ImageUrl='<%# "./Images/HangHoa/" + Eval("HINH_ANH_LON") %>' /> </a>
					<div class="thumbnails">
						<a href="#" class="anhnho""> <asp:Image ID="Image3" class="anhnho" runat="server" Height="100px" ImageUrl='<%# "./Images/HangHoa/" + Eval("HINH_ANH_NHO1") %>' /> </a>
                        <a href="#" class="anhnho""> <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl='<%# "./Images/HangHoa/" + Eval("HINH_ANH_NHO2") %>' /> </a>
						<a href="#" class="anhnho""> <asp:Image ID="Image4" runat="server" Height="100px" ImageUrl='<%# "./Images/HangHoa/" + Eval("HINH_ANH_NHO3") %>' /> </a>
                        <a href="#" class="anhnho""> <asp:Image ID="Image5" runat="server" Height="100px" ImageUrl='<%# "./Images/HangHoa/" + Eval("HINH_ANH_NHO4") %>' /> </a>
					</div>
        </div> <!-- HET IMAGES TRAI -->
                    <div class="summary col-sm-6 wow fadeInRightBig">
					<h1 class="product-title"><%# Eval("TEN_HANG") %> 	</h1>
					<p class="price"><%# Eval("GIA_HIEN_THI") %> đ</p>
					<div class="description"><%# Eval("KHUYEN_MAI") %></div>
       
					<div class="in-stock">Còn 15 sản phẩm trong kho</div>
					<form action="" class="cart">
						<div class="quantity">
							<span class="label">
                            <br />
                            Màu sắc: </span>
							<img src="/images/mau.png" alt="">
							
                            
                            <br />
							
                            
                            <asp:Button ID="btnMuaHang" class="button btn btn-primaryg" runat="server" OnClick="btnMuaHang_Click" Text="Thêm vào giỏ hàng"  />
							
						</div>
						
					</form>
				</div> 		<!-- HET NOI DUNG CHI TIET SP -->

      
    
            <div class="tabspchitiet col-sm-6">
					<ul class="tabs">
            <h3>Đánh giá </h3>
					</ul>
					<iframe width="500" height="315" src="<%# Eval("BAI_DANH_GIA") %>" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>

			<div class="tabspchitiet col-sm-6">
					<ul class="tabs">
            <h3>Thông số kỹ thuật </h3>
					</ul>
						<span>Màn hình: <%# Eval("MAN_HINH") %></span>
                    <br></br>
						<span>Hệ điều hành: <%# Eval("HE_DIEU_HANH") %></span>
                    <br></br>
						<span>Camera sau: <%# Eval("CAMERA_SAU") %></span>
                    <br></br>
						<span>Camera trước: <%# Eval("CAMERA_TRUOC") %></span>
                    <br></br>
						<span>CPU: <%# Eval("CPU") %></span>
                    <br></br>
						<span>RAM:<%# Eval("RAM") %></span><br></br>
                        <span>ROM: <%# Eval("ROM") %></span>
                    <br></br>
          </div>
     
				<div class="related-products col-sm-12 mt-100">
					<div class="row">
						<div class="col-sm-8 push-sm-2 text-xs-center wow fadeInDownBig">
			 				<h2 class="kieuchuto">Sản phẩm đã xem</h2>
			 				 
			 			</div>
					</div>
            </div> <!-- HET ROW -->
		
            </FooterTemplate>
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
        </asp:DetailsView>
        </div>	<!-- HET CONTAINER -->
        </div>
   
    </form>


</asp:Content>
