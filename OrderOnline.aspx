<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="OrderOnline.aspx.cs" Inherits="ResturantManagement1.OnlineOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-8 mx-auto">
                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Orders</h4>
                                    <img  width="100px" src="imgs/adminordericon.jpg" />
                                </center>
                            </div>
                        </div>
                        <%--<div class="row">
                            <div class="col">
                                <center>
                                    <img  width="100px" src="imgs/adminordericon.jpg" />
                                    

                                </center>
                            </div>
                        </div>--%>
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>
                        <div class="row">

                            <div class="col-md-6">

                                <label>Member Id</label>
                                <div class="form-group">

                                    <asp:TextBox CssClass="form-control" ID="TextBox2"
                                        runat="server" placeholder="Member Id">
                                    </asp:TextBox>

                                </div>
                            </div>

                            <div class="col-md-6">
                                <label>Item Id</label>
                                <div class="form-group">
                                    <div class="input-group">

                                        <asp:TextBox CssClass="form-control" ID="TextBox1"
                                            runat="server" placeholder="Item Id">
                                        </asp:TextBox>
                                        <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Go" OnClick="Button1_Click" />
                                    </div>
                                </div>

                            </div>

                        </div>

                        <div class="row">

                            <div class="col-md-6">

                                <label>Member Name</label>
                                <div class="form-group">

                                    <asp:TextBox CssClass="form-control" ID="TextBox3"
                                        runat="server" placeholder="Member Name">
                                    </asp:TextBox>

                                </div>
                            </div>

                            <div class="col-md-6">

                                <label>Item Price</label>
                                <div class="form-group">

                                    <asp:TextBox CssClass="form-control" ID="TextBox4"
                                        runat="server" ReadOnly="True" placeholder="Item Price">
                                    </asp:TextBox>

                                </div>
                            </div>



                        </div>

                        <div class="row">

                            <div class="col">

                                <label>Member Address</label>
                                <div class="form-group">

                                    <asp:TextBox CssClass="form-control" ID="TextBox5"
                                        runat="server" TextMode="MultiLine" Rows="2" placeholder="Member Address">
                                    </asp:TextBox>

                                </div>
                            </div>





                        </div>

                        <div class="row">

                            <div class="col-md-4">

                                <label>Order Date</label>
                                <div class="form-group">

                                    <asp:TextBox CssClass="form-control" ID="TextBox6"
                                        runat="server" TextMode="Date" placeholder="Order Date">
                                    </asp:TextBox>

                                </div>
                            </div>
                            <div class="col-md-4">

                                <label>Order Time</label>
                                <div class="form-group">

                                    <asp:TextBox CssClass="form-control" ID="TextBox8"
                                        runat="server" TextMode="Time" placeholder="Order Time">
                                    </asp:TextBox>

                                </div>
                            </div>

                            <div class="col-md-4">

                                <label>Delivery Time</label>
                                <div class="form-group">

                                    <asp:TextBox CssClass="form-control" ID="TextBox7"
                                        runat="server" TextMode="Time" placeholder="Delivery Time">
                                    </asp:TextBox>

                                </div>
                            </div>



                        </div>


                        <div class="row">
                            <div class="col-6">
                                <center>
                                    <div class="form-group">
                                        <asp:Button class="btn btn-success btn-block btn-lg" ID="Button2" runat="server" OnClick="Button2_Click" Text="Order Confirm" />
                                    </div>
                                </center>

                            </div>

                            <div class="col-6">
                                <center>
                                    <div class="form-group">
                                        <a href="homepage.aspx">
                                            <input id="Button2" class="btn btn-danger btn-block " type="button" value="Cancel" /></a>

                                    </div>
                                </center>

                            </div>
                        </div>


                    </div>
                </div>

                <a href="homepage.aspx"><< Back to home</a>
                <br />
                <br />
            </div>


        </div>
    </div>

</asp:Content>
