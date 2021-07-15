<%@ Page Title="" Language="C#" MasterPageFile="~/MasterHome.Master" AutoEventWireup="true" CodeBehind="ThanhToan.aspx.cs" Inherits="BAN_HANG.ThanhToan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <div class="checkout">
            <div class="container">

                <div class="row">
                    <div class="col-sm-6 trai">
                        <h3>Thông tin hóa đơn</h3>

                        <p class="form-row form-row-first">
                            <label>Tên người nhận</label>
                            <asp:TextBox ID="txtTen" class="input-text  " runat="server" Width="543px"></asp:TextBox>

                        </p>

                        <div class="clear"></div>

                        <p class="form-row form-row-wide">
                            <label>Địa chỉ</label>

                            <asp:TextBox class="input-text  " ID="txtDC" runat="server" Width="543px"></asp:TextBox>
                        </p>

                        <div class="clear"></div>

                        <p class="form-row form-row-first">
                            <label>Email</label>
                            <input type="text" class="input-text  ">
                        </p>
                        <p class="form-row form-row-last">
                            <label>Số điện thoại</label>

                            <asp:TextBox class="input-text  " ID="txtSDT" runat="server" Width="253px"></asp:TextBox>

                        </p>

                        <div class="clear"></div>
                        <p class="form-row form-row-first">
                            <label>Thời gian đặt hàng </label>

                            <asp:Label ID="lblTime" runat="server"></asp:Label>

                        </p>
                        <div class="clear"></div>

                        <div class="giaohang">
                            <h3>
                                <label>Ghi chú</label>

                            </h3>


                        </div>
                        <p class="form-row form-row-wide">
                            &nbsp;<asp:TextBox ID="txtGhiChu" runat="server" Height="107px" TextMode="MultiLine" Width="543px"></asp:TextBox>
                        </p>



                    </div>
                    <div class="col-sm-6 phai">
                        <h3>Thông tin đơn hàng</h3>
                        <div id="order_review" class="xemlaidonhang">
                            <table class="shop_table table  table-hover  " style="height: 291px; width: 42%;">
                                <thead>
                                    <tr>
                                        <td rowspan="3" style="border: 1px; text-align: center; width: 75px;">
                                            <br />
                                            <asp:GridView ID="GridView1" runat="server" Height="50px" Width="468px" AutoGenerateColumns="False">
                                                <Columns>
                                                    <asp:BoundField DataField="TEN_HANG" HeaderText="Tên Hàng" />
                                                    <asp:BoundField DataField="SO_LUONG" HeaderText="Số Lượng" />
                                                    <asp:BoundField DataField="DON_GIA" HeaderText="Đơn Giá" />


                                                    <asp:BoundField DataField="ID_HANG_HOA" Visible="False" />
                                                </Columns>

                                            </asp:GridView>
                                            <br />
&nbsp;&nbsp;&nbsp;
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>&nbsp;&nbsp;&nbsp;&nbsp; Tổng tiền:</strong> <asp:Label ID="lblTT" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    
                                </thead>
                            </table>
                           
						<div id="payment" class="payment_method">
                            <ul>
                                <li>
                                    <input type="radio" class="input-radio">
                                    <label>Thanh toán Khi nhận hàng</label>
                                    
                                </li>

                                <li>
                                    <input type="radio" class="input-radio">
                                    <label>Thanh toán bẳng ví airpay</label>
                                    
                                </li>

                                <li>
                                    <input type="radio" class="input-radio">
                                    <label>Thanh toán bằng thẻ tín dụng/ ghi nợ</label>
                                    
                                </li>
                                
                                <li>
                                    <input type="radio" class="input-radio">
                                    <label>Thanh toán bằng thẻ ATM nội địa (Internet Banking)</label>
                                    
                                </li>


                            </ul>
                        </div>

                        </div>
                        <!-- HET ORDER REVIEW -->

                        <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                        <asp:Button ID="btnDH" class=" btn btn-dark" runat="server" OnClick="btnDH_Click" Text="ĐẶT HÀNG" Height="82px" style="font-size: x-large; background-color: #666666;" Width="541px" CssClass="text-white" />
                                      
                    &nbsp;&nbsp;&nbsp; </strong>
                         <asp:Label ID="lblTB" runat="server"></asp:Label>
                                      
                    </div>

                </div>
            </div>
        </div>
        <!-- HET CHECKOUT -->


    </form>
</asp:Content>
