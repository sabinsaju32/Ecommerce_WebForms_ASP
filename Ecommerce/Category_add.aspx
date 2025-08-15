
<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Category_add.aspx.cs" Inherits="Ecommerce.Category_add" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 350px;
        }
        .auto-style2 {
            width: 393px;
        }
    .auto-style3 {
        width: 301px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mt-4">
        <h3 class="fw-bold text-primary text-center">Add Category</h3>

        <div class="mb-3">
            <label class="fw-bold">Category Name</label>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control w-50"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                ControlToValidate="TextBox1" ErrorMessage="Enter the Category name" CssClass="text-danger"></asp:RequiredFieldValidator>
        </div>

        <div class="mb-3">
            <label class="fw-bold">Category Image</label>
            <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control w-50" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                ControlToValidate="FileUpload1" ErrorMessage="Select an image" CssClass="text-danger"></asp:RequiredFieldValidator>
        </div>

        <div class="mb-3">
            <label class="fw-bold">Category Description</label>
            <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" CssClass="form-control w-50"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                ControlToValidate="TextBox2" ErrorMessage="Enter Category Description" CssClass="text-danger"></asp:RequiredFieldValidator>
        </div>

        <div class="text-center">
            <asp:Button ID="Button1" runat="server" CssClass="btn btn-success mt-3" OnClick="Button1_Click" Text="Add Category" />
        </div>

        <div class="mt-3 text-center">
            <asp:Label ID="Label1" runat="server" CssClass="fw-bold text-danger" Visible="False" Text="Label"></asp:Label>
        </div>
    </div>
</asp:Content>