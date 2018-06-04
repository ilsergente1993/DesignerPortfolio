<%@ Page Title="Portfolio" Language="C#" MaintainScrollPositionOnPostback="true" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Portfolio.aspx.cs" Inherits="DesignerPortfolio.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <!-- About -->
    <section class="content-section bg-light" id="about">
        <div class="container text-center">
            <div class="row">
                <div class="col-lg-10 mx-auto">
                    <h2>Stylish Portfolio is the perfect theme for your next project!</h2>
                    <p class="lead mb-5">
                        This theme features a flexible, UX friendly sidebar menu and stock photos from our friends at
             
                        <a href="https://unsplash.com/">Unsplash</a>!
                    </p>
                    <a class="btn btn-dark btn-xl js-scroll-trigger" href="#services">What We Offer</a>
                </div>
            </div>
        </div>
    </section>

    <!-- Services -->
    <section class="content-section bg-primary text-white text-center" id="services">
        <div class="container">
            <div class="content-section-heading">
                <h3 class="text-secondary mb-0">Services</h3>
                <h2 class="mb-5">What We Offer</h2>
            </div>
            <div class="row">
                <div class="col-lg-3 col-md-6 mb-5 mb-lg-0">
                    <span class="service-icon rounded-circle mx-auto mb-3">
                        <i class="icon-screen-smartphone"></i>
                    </span>
                    <h4>
                        <strong>Responsive</strong>
                    </h4>
                    <p class="text-faded mb-0">Looks great on any screen size!</p>
                </div>
                <div class="col-lg-3 col-md-6 mb-5 mb-lg-0">
                    <span class="service-icon rounded-circle mx-auto mb-3">
                        <i class="icon-pencil"></i>
                    </span>
                    <h4>
                        <strong>Redesigned</strong>
                    </h4>
                    <p class="text-faded mb-0">Freshly redesigned for Bootstrap 4.</p>
                </div>
                <div class="col-lg-3 col-md-6 mb-5 mb-md-0">
                    <span class="service-icon rounded-circle mx-auto mb-3">
                        <i class="icon-like"></i>
                    </span>
                    <h4>
                        <strong>Favorited</strong>
                    </h4>
                    <p class="text-faded mb-0">
                        Millions of users
             
                        <i class="fa fa-heart"></i>
                        Start Bootstrap!
                    </p>
                </div>
                <div class="col-lg-3 col-md-6">
                    <span class="service-icon rounded-circle mx-auto mb-3">
                        <i class="icon-mustache"></i>
                    </span>
                    <h4>
                        <strong>Question</strong>
                    </h4>
                    <p class="text-faded mb-0">I mustache you a question...</p>
                </div>
            </div>
        </div>
    </section>

    <!-- Portfolio -->
    <section class="content-section bg-light text-center" id="portfolio">
        <div class="row">
            <div class="container">
                <div class="content-section-heading">
                    <h3 class="text-secondary mb-0">Portfolio</h3>
                    <h2 class="mb-5">Our work is our reputation</h2>
                </div>
                <div class="col-lg-12 col-md-12 mb-5 mb-lg-0">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Title], [Description], [Date], [Id] FROM [Table]"></asp:SqlDataSource>
                    <asp:GridView ID="GridView1" runat="server" CssClass="table table-hover table-striped text-left" GridLines="None" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="Id" OnRowCreated="GridView1_RowCreated">
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" ButtonType="Button" ></asp:CommandField>
                            <asp:BoundField DataField="Id" Visible="false" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" DataFormatString="{0:MMMM yyyy}" />
                        </Columns>
                    </asp:GridView>


                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [ImgName], [Id], [ExtendedDescription] FROM [Table] WHERE ([Id] = @Id)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="GridView1" Name="Id" PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>

                    <asp:DetailsView ID="DetailsView1" runat="server" CssClass="" AlternatingRowStyle-HorizontalAlign="Center" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="SqlDataSource2" Height="50px" Width="125px" HorizontalAlign="Center" BorderStyle="None">
                        <Fields>
                            <asp:BoundField Visible="false" DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                            <asp:BoundField DataField="ExtendedDescription" HeaderText="Description" SortExpression="Description" />
                            <asp:ImageField DataImageUrlField="ImgName"
                                NullDisplayText="No image on file."
                                ReadOnly="true" ControlStyle-Height="300" >
<ControlStyle Height="300px"></ControlStyle>
                            </asp:ImageField>
                        </Fields<%-->--%>
                        <RowStyle BorderStyle="None" />
                    </asp:DetailsView>

                </div>

            </div>
        </div>

    </section>
</asp:Content>

