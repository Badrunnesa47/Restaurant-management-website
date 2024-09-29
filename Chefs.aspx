<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Chefs.aspx.cs" Inherits="ResturantManagement1.Chefs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-8 mx-auto">
                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h5>Chef's Details</h5>

                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" src="imgs/chefs%20icon1.jpg" />

                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <label>Chef's Id</label>
                                <div class="form-group">
                                    <div class="input-group">

                                        <asp:TextBox CssClass="form-control" ID="TextBox1"
                                            runat="server" placeholder="Chef's Id">
                                        </asp:TextBox>
                                        <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Go" OnClick="Button1_Click" />
                                    </div>
                                </div>

                            </div>
                            <div class="col-md-8">

                                <label>Chef's Name</label>
                                <div class="form-group">

                                    <asp:TextBox CssClass="form-control" ID="TextBox2"
                                        runat="server" placeholder="Chef's Name" >
                                    </asp:TextBox>

                                </div>
                            </div>

                        </div>
                        <div class="row">
                            <div class="col-4">
                                <center>
                                    <div class="form-group">
                                        <asp:Button class="btn btn-primary btn-block btn-lg" ID="Button2" runat="server" Text="Add" OnClick="Button2_Click" />


                                    </div>
                                </center>

                            </div>
                            <div class="col-4">
                                <center>
                                    <div class="form-group">
                                        <asp:Button class="btn btn-warning btn-block btn-lg" ID="Button3" runat="server" Text="Update" OnClick="Button3_Click" />


                                    </div>
                                </center>

                            </div>
                            <div class="col-4">
                                <center>
                                    <div class="form-group">
                                        <asp:Button class="btn btn-danger btn-block btn-lg" ID="Button4" runat="server" Text="Delete" OnClick="Button4_Click" />


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
