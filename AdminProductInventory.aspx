<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminProductInventory.aspx.cs" Inherits="ResturantManagement1.AdminProductInventory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
       <script type="text/javascript">
       $(document).ready(function () {
           $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
       });
</script>
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
                                    <h5>Product Details</h5>

                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                   
                                    <img width="100px" src="imgs/producticon2.png" />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-3">

                                <label>Item Id</label>
                                <div class="form-group">

                                    <asp:TextBox CssClass="form-control" ID="TextBox4"
                                        runat="server" placeholder="Item Id">
                                    </asp:TextBox>

                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Item Category</label>
                                <div class="form-group">
                                    <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                                        <asp:ListItem Text="select" Value="select" />
                                        <asp:ListItem Text="Fries" Value="Fries" />
                                        <asp:ListItem Text="Apetizer" Value="Apetizer" />
                                        <asp:ListItem Text="set Menu" Value="Set Menu" />
                                        <asp:ListItem Text="Drinks" Value="Drinks" />
                                        <asp:ListItem Text="Deserts" Value="Deserts" />

                                    </asp:DropDownList>
                                </div>

                            </div>

                            <div class="col-md-5">
                                <label>Item Name</label>
                                <div class="form-group">

                                    <asp:TextBox CssClass="form-control" ID="TextBox2"
                                        runat="server" placeholder="Item Name">
                                    </asp:TextBox>

                                </div>
                            </div>
                        </div>
<%--                        <div class="row">
                            <div class="col">
                                <label>Item Available Status </label>
                                <div class="form-group">
                                    <div class="input-group">

                                        <asp:TextBox CssClass="form-control mr-1" ID="TextBox9"
                                            runat="server" ReadOnly="True" placeholder="status">
                                        </asp:TextBox>
                                        <asp:LinkButton class="btn btn-success mr-1" ID="LinkButton1" runat="server" OnClick="LinkButton1_Click"><i class="fas fa-circle-check"></i></asp:LinkButton>
                                        <asp:LinkButton class="btn btn-danger mr-1" ID="LinkButton3" runat="server" OnClick="LinkButton3_Click"><i class="fas fa-times-circle"></i></asp:LinkButton>





                                    </div>
                                </div>

                            </div>
                        </div>--%>
                        <div class="row">
                            <div class="col-md-5">

                                <label>Item Price</label>
                                <div class="form-group">

                                    <asp:TextBox CssClass="form-control" ID="TextBox10"
                                        runat="server" TextMode="Number" placeholder="Price">
                                    </asp:TextBox>

                                </div>
                            </div>

                            <div class="col-md-7">

                                <label>Ordered Quantity</label>
                                <div class="form-group">

                                    <asp:TextBox CssClass="form-control" ID="TextBox3"
                                        runat="server" TextMode="Number" placeholder="Ordered Quantity">
                                    </asp:TextBox>

                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col_md_7">
                                <label>Current Stock</label>
                                <div class="form-group">

                                    <asp:TextBox CssClass="form-control" ID="TextBox1"
                                        runat="server" placeholder="Current stock">
                                    </asp:TextBox>

                                </div>
                            </div>
                        </div>



                        <div class="row">

                            <div class="col-6">

                                <asp:Button class="btn btn-success btn-block btn-lg" ID="Button4" runat="server" Text="Update Item" OnClick="Button4_Click" />

                            </div>
                            <div class="col-6">

                                <asp:Button class="btn btn-danger btn-block btn-lg" ID="Button1" runat="server" Text="Add Item" OnClick="Button1_Click" />

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
