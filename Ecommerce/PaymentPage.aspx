<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="PaymentPage.aspx.cs" Inherits="Ecommerce.PaymentPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="text-align: center; margin-top: 50px;">
        <h2 style="color: green;">Thank you!</h2>
        <p style="font-size: 18px;">Your order has been placed and payment was successful.</p>
        <p>You will receive a confirmation email shortly.</p>
        <a href="User_home.aspx" style="display: inline-block; margin-top: 20px; padding: 10px 20px; background-color: #28a745; color: white; text-decoration: none; border-radius: 5px;">Return to Home</a>
    </div>
</asp:Content>
