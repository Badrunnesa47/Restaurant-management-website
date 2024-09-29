<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="ResturantManagement1.homepage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <center>
             <img src="imgs/home2.jpg" class="img-fluid" width="1400px" />
        </center>
       

    </section>
    <section>
        <div class="container">
            <a href="table_booking.aspx">  << Reserve a table</a>
        </div>
    </section>
    <section>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <center>
                        <h2>Our features</h2>
                        <hr />
                        <p>Our three primary features</p>
                    </center>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <center>
                        <img width="150px" src="imgs/freshfood.jpg" />
                        <h4>Serving fresh Food</h4>
                        <p class="text-justify">
                            Fresh conjures up newly baked, picked or cooked foods.
                        It usually means unprocessed and suggests a new-ness, 
                        a time when food is at its very best and hasn't been 
                        travelling far or sitting too long on a shelf.
                        </p>
                    </center>
                </div>
                <div class="col-md-4">
                    <center>
                        <img width="150px" src="imgs/decoration.jpg" />
                        <h4>Eye soothing decoration</h4>
                        <p class="text-justify">
                            Flat white walls and smooth white furnishings are soothing decor ideas, but they can readily blend into boredom, so layer in various fabrics and subtle patterns. Add shades of warmth, such as gold, pale tan, or faded yellow, to keep white from looking too sterile.
                        </p>
                    </center>
                </div>
                <div class="col-md-4">
                    <center>
                        <img width="150px" src="imgs/special%20menu.jpg" />
                        <h4>special menu on special Day</h4>
                        <p class="text-justify">
                            Browse our collection of daily special menus to create one-of-a-kind daily special menus for our restaurant. Each template allows rapid text .    Fresh conjures up newly baked, picked or cooked foods.
It usually means unprocessed and suggests a new-ness, 
a time when food is at its very best and hasn't been 
travelling far or sitting too long on a shelf.

                        </p>
                    </center>
                </div>
            </div>
        </div>
    </section>
    <%-- <section>
        <img src="imgs/banner.jpg" class="img-fluid" />

    </section>--%>


    <section>
        <center>
            <img src="imgs/banner2.jpg" class="img-fluid"  width="1500px" hight="50px" />
        </center>
        
    </section>
    <section>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <center>
                        <h2>Our process</h2>
                        <p>Our three primary process</p>
                    </center>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <center>
                        <img width="150px" src="imgs/signin.jpg" />

                        <h4>Sign Up</h4>
                        <p class="text-justify">
                            In computer security, logging in (or logging on, signing in, or signing on) is the process by which an individual gains access to a computer system or program by identifying and authenticating themselves.
                        </p>
                    </center>
                </div>
                <div class="col-md-4">
                    <center>
                        <img width="150px" src="imgs/delivery.jpg" />

                        <h4>Order Online</h4>
                        <p class="text-justify">
                            QuickBite offers an online food ordering system with website, app, EPOS, and digital marketing platform helping restaurants feed their valuable customers.
                        </p>
                    </center>
                </div>
                <div class="col-md-4">
                    <center>
                        <img width="150px" src="imgs/visit1.jpg" />

                        <h4>Visit us</h4>
                        <p class="text-justify">
                            People love having the delectable dishes conjured up by highly talented and creative chefs.The address is South central Road,In front of Khulna medical college,khulna.
                        </p>
                    </center>
                </div>
            </div>
        </div>
    </section>


</asp:Content>
