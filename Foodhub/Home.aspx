<%@ Page Title="" Language="C#" MasterPageFile="~/Mainmaster.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Foodhub.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div id="story" class="light-wrapper">
        <section class="ss-style-top"></section>
        <div class="container inner">
            <h2 class="section-title text-center">Our Story</h2>
           
            
            <div class="row text-center story">
                <div class="col-sm-4">
                    <div class="col-wrapper">
                        <div class="icon-wrapper"> <i class="fa fa-anchor"></i> </div>
                        <h3>Our Goal</h3>
                        <p>
                        We connecting food donor and food needer in proper network</p>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="col-wrapper">
                        <div class="icon-wrapper"> <i class="fa  fa-cutlery"></i> </div>
                        <h3>Secure Login</h3>
                        <p> Our admin verify the registered charity member then only allow to access system
                            </p>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="col-wrapper">
                        <div class="icon-wrapper"> <i class="fa fa-coffee"></i> </div>
                        <h3>Food Donation</h3>
                        <p>
                        Food Donation is an art of humanity</p>
                    </div>
                </div>
            </div>
            <!-- /.services --> 
        </div>
        <!-- /.container -->
        <section class="ss-style-bottom"></section>
    </div><!-- #story -->


    <div id="facts" class="parallax parallax2 facts">
        <div class="container inner">
            <div class="row text-center services-3">
                <div class="col-sm-6" style="text-align:right;">
                    <div class="col-wrapper">
                    <div class="icon-border bm10"> <i class="fa fa-beer"></i> </div>
                    
                    <p>Register to Network</p>
                </div>
            </div>
            
            
            <div class="col-sm-6" style="text-align:left;padding-left:100px;">
                <div class="col-wrapper">
                    <div class="icon-border bm10"> <i class="fa fa-users"></i> </div>
                    
                    <p>Connecting people..get food donation</p>
                    </div>
                </div>
            </div>
        </div>
        <!-- /.container --> 
    </div><!-- #facts -->




    <div id="food-menu" class="light-wrapper">
        <section class="ss-style-top"></section>
        <div class="container inner">
            <h2 class="section-title text-center">Our Users</h2>
            <p class="lead main text-center">There is no sincerer love than the love of food donation!</p>

                        <div class="row">
                <div class="col-sm-3 col-md-3">
                    <div class="menu-images "><img src="img/menu/admin.jpg" alt="Hot Drinks" height="100" width="250"></div>
                    <div class="menu-titles"><h1 class="">Admin</h1></div>
                   
                </div>
                <div class="col-sm-3 col-md-3">
                    <div class="menu-images "><img src="img/menu/donor.jpg" alt="Ice Drinks" height="100" width="250"></div>
                    <div class="menu-titles"><h1 class="">Donor</h1></div>
                   
                </div>
                <div class="col-sm-3 col-md-3">
                    <div class="menu-images "><img src="img/menu/charity.png" alt="Smoothies" height="100" width="250"></div>
                    <div class="menu-titles"><h1 class="">Charity</h1></div>
                   
                </div>
                <div class="col-sm-3 col-md-3">
                    <div class="menu-images "><img src="img/menu/public.jpg" alt="Deserts" height="100" width="250"></div>
                    <div class="menu-titles"><h1 class="">Public</h1></div>
                    
                </div>
            </div>
            
            
            
        </div>
        <!-- /.container -->
        <section class="ss-style-bottom"></section>
    </div><!--/#food-menu-->



    <div id="chefs" class="parallax pricing">
        <div class="container inner">

            <h2 class="section-title text-center">Food Donation</h2>
            <p class="lead main text-center">There is no sincere love than the love of food donation!</p>
            
            <div class="row text-center chefs">
                
            </div>

        </div>
        <!-- /.container --> 
    </div><!-- /#chefs -->


</asp:Content>
