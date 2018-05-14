<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Footer.aspx.cs" Inherits="DesignerPortfolio.Footer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <hr />
    <footer>
        <p>&copy; <%: DateTime.Now.Year %> - Applicazione ASP.NET</p>
    </footer>

</asp:Content>
