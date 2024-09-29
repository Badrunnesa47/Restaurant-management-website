<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UserLogin.aspx.cs" Inherits="ResturantManagement1.UserLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" src="imgs/usericon.jpg" />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Member Login</h3>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <label>Member Id</label>
                                <div class="form-group">

                                    <asp:TextBox CssClass="form-control" ID="TextBox1"
                                        runat="server" placeholder="Member Id"></asp:TextBox>
                                </div>
                                <label>Password</label>
                                <div class="form-group">

                                    <asp:TextBox CssClass="form-control" ID="TextBox2"
                                        runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:Button ID="Button1" class="btn btn-primary btn-block " runat="server" Text="Login"  OnClick="Button1_Click"/>

                                </div>
                                <div class="form-group">
                                    <a href="UserSignUp.aspx" ><input id="Button2" class="btn btn-success btn-block "  type="button" value="Sign Up" /></a>

                                </div>
                            </div>
                        </div>


                    </div>
                </div>
                <a href="homepage.aspx"> << Back to home</a> <br/><br />
            </div>
        </div>
    </div>
</asp:Content>
