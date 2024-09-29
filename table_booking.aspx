<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="table_booking.aspx.cs" Inherits="ResturantManagement1.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="book_section layout_padding">
        <div class="container">
            <div class="heading_container">
                <center>
                    <h2>Table Reservation</h2>
                    <img src="imgs/tr.png" width="70px" height="70px" /><hr />
                </center>
            </div>
            <div class="row">

                <div class="col">
                    <label>Name</label>
                    <div class="form-group">

                        <asp:TextBox CssClass="form-control" ID="TextBox1"
                            runat="server" placeholder="Your Name"></asp:TextBox>
                    </div>
                    <label>Phone Number</label>
                    <div class="form-group">

                        <asp:TextBox CssClass="form-control" ID="TextBox2"
                            runat="server" placeholder="Phone Number" TextMode="Number"></asp:TextBox>
                    </div>

                    <label>Email</label>
                    <div class="form-group">

                        <asp:TextBox CssClass="form-control" ID="TextBox3"
                            runat="server" placeholder="Your Email" TextMode="Email"></asp:TextBox>
                    </div>

                    <label>Number of Persons</label>
                    <div class="form-group">

                        <asp:TextBox CssClass="form-control" ID="TextBox4"
                            runat="server" placeholder="How Many Persons?" TextMode="Number"></asp:TextBox>
                    </div>


                    <label>Booking Date</label>
                    <div class="form-group">

                        <asp:TextBox CssClass="form-control" ID="TextBox5"
                            runat="server" TextMode="Date" placeholder="Date"></asp:TextBox>
                    </div>


                    <div class="form-group">
                        <asp:Button ID="Button1" class="btn btn-primary  " runat="server" Text="Confirm Reservation" OnClick="Button1_Click" />
                         <%--<a href="homepage.aspx" ><input id="Button2" class="btn btn-primary "  type="button" value="Confirm Reservation" /></a>--%>
                   </div>
                    <%--<div class="form-group">
                        <asp:Button ID="Button2" class="btn btn-primary  " runat="server" Text="Confirm" OnClick="Button2_Click" />

                    </div>--%>

                    <a href="homepage.aspx"><< Back to home</a>
                    <br />
                    <br />

                </div>


            </div>

        </div>
    </section>
</asp:Content>
