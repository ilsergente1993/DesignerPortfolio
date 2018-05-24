<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="DesignerPortfolio.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Call to Action -->
    <section class="content-section bg-primary text-white">
        <div class="container text-center">
            <h2 class="mb-4">Fill the form to send a request</h2>
            <div class="messages"></div>

            <div class="controls">

                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <asp:Label ID="FirstName" runat="server" for="form_name">Firstname *</asp:Label>
                            <asp:TextBox runat="server" ID="form_name" type="text" name="name" class="form-control" placeholder="Please enter your firstname *" required="required" data-error="Firstname is required."></asp:TextBox>
                            <div class="help-block with-errors"></div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <asp:Label ID="Lastname" runat="server" for="form_lastname">Lastname *</asp:Label>
                            <asp:TextBox runat="server" ID="form_lastname" type="text" name="surname" class="form-control" placeholder="Please enter your lastname *" required="required" data-error="Lastname is required."></asp:TextBox>
                            <div class="help-block with-errors"></div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <asp:Label ID="Email" runat="server" for="form_email">Email *</asp:Label>
                            <asp:TextBox runat="server" ID="form_email" type="email" name="email" class="form-control" placeholder="Please enter your email *" required="required" data-error="Valid email is required."></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <asp:Label ID="Phone" runat="server" for="form_phone">Phone</asp:Label>
                            <asp:TextBox runat="server" ID="form_phone" type="tel" name="phone" class="form-control" placeholder="Please enter your phone"></asp:TextBox>
                            <div class="help-block with-errors"></div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            <asp:Label ID="Message" runat="server" for="form_message">Message *</asp:Label>
                            <asp:TextBox runat="server" ID="form_message" name="message" class="form-control" placeholder="Message for me *" Rows="4" required="required" data-error="Please,leave us a message."></asp:TextBox>
                            <div class="help-block with-errors"></div>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <asp:Button lass="btn btn-success btn-send" ID="SendEmail" runat="server" Text="Button" Value="Send message" OnClick="SendEmail_Click" />
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <asp:Label ID="SendMailResult" runat="server"></asp:Label>
                    </div>
                </div>
            </div>

        </div>
    </section>

    <!-- Map -->
    <section id="contact" class="map">
        <iframe width="100%" height="100%" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Twitter,+Inc.,+Market+Street,+San+Francisco,+CA&amp;aq=0&amp;oq=twitter&amp;sll=28.659344,-81.187888&amp;sspn=0.128789,0.264187&amp;ie=UTF8&amp;hq=Twitter,+Inc.,+Market+Street,+San+Francisco,+CA&amp;t=m&amp;z=15&amp;iwloc=A&amp;output=embed"></iframe>
        <br />
        <small>
            <a href="https://maps.google.com/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=Twitter,+Inc.,+Market+Street,+San+Francisco,+CA&amp;aq=0&amp;oq=twitter&amp;sll=28.659344,-81.187888&amp;sspn=0.128789,0.264187&amp;ie=UTF8&amp;hq=Twitter,+Inc.,+Market+Street,+San+Francisco,+CA&amp;t=m&amp;z=15&amp;iwloc=A"></a>
        </small>
    </section>

</asp:Content>
