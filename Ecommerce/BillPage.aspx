<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="BillPage.aspx.cs" Inherits="Ecommerce.BillPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 95px;
        }
        .auto-style2 {
            margin-left: 0px;
            margin-right: 228px;
        }
        .auto-style3 {
            width: 503px;
        }

    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container text-center mt-4">
        <h3 class="fw-bold text-primary">Billing Summary</h3>

        <asp:GridView ID="GridView1" runat="server" CssClass="table table-striped mt-3 w-100"></asp:GridView>

        <p class="fw-bold text-danger mt-3">
            Total Amount:
            <asp:Label ID="Label1" runat="server" CssClass="fw-bold ms-2" Text="Label"></asp:Label>
        </p>

        <asp:Button ID="Button1" runat="server" CssClass="btn btn-success mt-3" OnClick="Button1_Click" Text="Pay" />
    </div>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</asp:Content>