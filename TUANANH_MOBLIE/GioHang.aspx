<%@ Page Title="" Language="C#" MasterPageFile="~/MasterHome.Master" AutoEventWireup="true" CodeBehind="GioHang.aspx.cs" Inherits="BAN_HANG.GioHang1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">

   <div class="giohangchitiet">
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<h1> Tóm tắt giỏ hàng</h1>
				</div>
				<div class="col-sm-12 ">

        <table  class="shop_table table  table-hover  ">
           <thead>
				<tr>
                <td rowspan="3" style="text-align: center">
                    <br />
                    <asp:GridView ID="GridView1" runat="server" Height="125px" Width="1085px" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand">
                        <Columns>
                            <asp:BoundField DataField="TEN_HANG" HeaderText="Tên Hàng" />
                            <asp:BoundField DataField="DON_GIA" HeaderText="Đơn Giá" />
                            <asp:BoundField DataField="SO_LUONG" HeaderText="Số Lượng" />
                            
                            <asp:BoundField DataField="THANH_TIEN" HeaderText="Thành Tiền" />
                            <asp:BoundField DataField="ID_HANG_HOA" Visible="False" />
                            
                            <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
                                <asp:Button ID="btnxoa" runat="server" Text="Xóa"
                                    CommandName="xoa" CommandArgument="UserName"/>
                            </ItemTemplate>          
             </asp:TemplateField> 
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
            </thead>
        </table>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>

    <div class="actions">
						<div class="row">
							<div class="col-sm-2">
								<input type="submit" class="update_cart" value="UPDATE CART &#8594;">

							</div>
							<div class="col-sm-3">
								<a href="Home.aspx" class="nutslide btn btn-outline-secondary"> Mua tiếp <i class="fa fa-long-arrow-right"></i> </a>
							</div>
							<div class="col-sm-7">
								<div class="cpc">
									<span class="label">Mã giảm giá</span>
									<input type="text" class="couponcode" placeholder="Điền mã giảm giá của bạn">
									<input type="submit" class="apply_coupon" value="Apply Coupon">
								</div>
							</div>
						</div>
					</div> <!-- HET ACTION -->


        <div class="cart_total">
						<div class="container">
							<div class="row">
								<div class="col-sm-5 push-sm-7">
									<h2>Tổng tiền</h2>
									 
									<table class="table shop_table ">
										
										<tbody>
											
											<tr class="shipping">
												<th> Shipping </th>
												<td> 
													<ul class="shipping_method">
														<li>
															<input type="radio" class="shipping_method">
															<label for=""> Miễn phí giao hàng </label>
														</li>

													</ul>		
												</td>
											</tr>
											<tr class="order-total">
												<th> Tổng tiền </th>
												<th> <asp:Label ID="lblTongtien" runat="server"></asp:Label> đ</th>
											</tr>
										

										</tbody>
									</table>
									<div class="thanhtoan">
										<a href="ThanhToan.aspx" class="checkout-button"> Thanh toán <i class="fa fa-long-arrow-right"></i></a>
									</div>
								</div>
							</div>
						</div>
					</div>   <!-- HET CART_TOTAL -->

        
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>

        </form>
</asp:Content>
