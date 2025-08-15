<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ProductAdd.aspx.cs" Inherits="Ecommerce.ProductAdd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 456px;
    }
    .auto-style2 {
        width: 176px;
    }
    .auto-style3 {
        width: 252px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mt-4">
        <h3 class="fw-bold text-primary text-center">Add New Product</h3>

        <div class="mb-3">
            <label class="fw-bold">Category Name</label>
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-select"></asp:DropDownList>
        </div>

        <div class="mb-3">
            <label class="fw-bold">Product Name</label>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="TextBox1" ErrorMessage="Enter the Product Name" CssClass="text-danger"></asp:RequiredFieldValidator>
        </div>

        <div class="mb-3">
            <label class="fw-bold">Product Price</label>
            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="TextBox2" ErrorMessage="Enter the Product Price" CssClass="text-danger"></asp:RequiredFieldValidator>
        </div>

        <div class="mb-3">
            <label class="fw-bold">Product Image</label>
            <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="FileUpload1" ErrorMessage="Choose an Image" CssClass="text-danger"></asp:RequiredFieldValidator>
        </div>

        <div class="mb-3">
            <label class="fw-bold">Product Description</label>
            <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="TextBox4" ErrorMessage="Enter the Product Description" CssClass="text-danger"></asp:RequiredFieldValidator>
        </div>

        <div class="text-center">
            <asp:Button ID="Button1" runat="server" CssClass="btn btn-success mt-3" OnClick="Button1_Click" Text="Add Product" />
        </div>

        <div class="mt-3 text-center">
            <asp:Label ID="Label1" runat="server" CssClass="fw-bold text-danger" Visible="False" Text="Label"></asp:Label>
        </div>
    </div>
</asp:Content>