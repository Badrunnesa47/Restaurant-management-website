<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="ResturantManagement1.Payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="heading_container">
            
                <center>
                    <h2>Payment</h2>
                    <%--<img src="imgs/paymenticon.jpg"  /><hr />--%>
                    <img src="imgs/pay.png" width="80px" height="80px"/><hr />
                </center>
            

        </div>
        <div class="row">

            <div class="col">
                <label>Name</label>
                <div class="form-group">

                    <asp:TextBox CssClass="form-control" ID="TextBox1"
                        runat="server" placeholder="Your Name"></asp:TextBox>
                </div>
                <label>Item Name</label>
                <div class="form-group">

                    <asp:DropDownList class="form-control" ID="DropDownList2" runat="server">
                        <asp:ListItem Text="select" Value="select" />
                        <asp:ListItem Text="Pizza" Value="Pizza" />
                        <asp:ListItem Text="Burger" Value="Burger" />
                        <asp:ListItem Text="Pasta" Value="Pasta" />
                        <asp:ListItem Text="Set Menu" Value="Set Menu" />
                        <asp:ListItem Text="Deserts" Value="Deserts" />
                    </asp:DropDownList>



                </div>
                <label>Payment Id</label>
                <div class="form-group">

                    <asp:TextBox CssClass="form-control" ID="TextBox9"
                        runat="server" placeholder="Payment Id" TextMode="Number"></asp:TextBox>
                </div>



                <label>Payment Mode</label>
                <div class="form-group">

                    <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                        <asp:ListItem Text="select" Value="select" />
                        <asp:ListItem Text="Card" Value="Card" />
                        <asp:ListItem Text="Bkash" Value="Bkash" />
                        <asp:ListItem Text="Nagad" Value="Nagad" />
                        <asp:ListItem Text="Rocket" Value="Rocket" />
                    </asp:DropDownList>



                </div>
                <label>Card No.</label>
                <div class="form-group">
                    <asp:TextBox CssClass="form-control" ID="TextBox4"
                        runat="server" placeholder="Card No." TextMode="Number"></asp:TextBox>
                </div>
                <label>Bkash/Nagad/Rocket No.</label>
                <div class="form-group">

                    <asp:TextBox CssClass="form-control" ID="TextBox5"
                        runat="server" TextMode="Number" placeholder="Number"></asp:TextBox>
                </div>
                <label>Address</label>
                <div class="form-group">

                    <asp:TextBox CssClass="form-control" ID="TextBox6"
                        runat="server" TextMode="MultiLine" Rows="2" placeholder="Address"></asp:TextBox>
                </div>


                <label>Tnx. Id</label>
                <div class="form-group">

                    <asp:TextBox CssClass="form-control" ID="TextBox3"
                        runat="server" placeholder="Tnx. Id" TextMode="Number"></asp:TextBox>
                </div>

                <div class="form-group">
                    <asp:Button ID="Button1" class="btn btn-primary  " runat="server" Text="Confirm" OnClick="Button1_Click" />

                </div>



                <a href="homepage.aspx"><<  Back to home</a>
                <br />
                <br />

            </div>


        </div>

    </div>

</asp:Content>
