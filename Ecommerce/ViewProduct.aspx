<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ViewProduct.aspx.cs" Inherits="Ecommerce.ViewProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 29px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .product-detail {
            max-width: 700px;
            margin: 50px auto;
            padding: 30px;
            background-color: #fff;
            border-radius: 15px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        }

        .product-image {
            width: 100%;
            max-height: 350px;
            object-fit: cover;
            border-radius: 10px;
        }

        .product-title {
            font-size: 22px;
            font-weight: bold;
            margin-top: 20px;
        }

        .product-price {
            color: #28a745;
            font-size: 18px;
            margin: 10px 0;
        }

        .quantity-controls {
            display: flex;
            align-items: center;
            gap: 10px;
            margin-bottom: 20px;
        }

        .quantity-label {
            min-width: 30px;
            text-align: center;
            font-size: 18px;
            font-weight: bold;
        }

        .action-buttons .btn {
            margin-right: 10px;
        }
    </style>

    <div class="product-detail text-center">
        <asp:Image ID="Image1" runat="server" CssClass="product-image" />

        <div class="product-title">
            <asp:Label ID="Label2" runat="server" Text="Product Name" />
        </div>

        <div class="product-price">
            Price: Rs <asp:Label ID="Label1" runat="server" Text="999" />
        </div>

        <div class="mb-3">
            <asp:Label ID="Label3" runat="server" Text="Product Description goes here." />
        </div>

        <div class="quantity-controls justify-content-center">
            <asp:Button ID="Button1" runat="server" CssClass="btn btn-outline-danger" Text="-" OnClick="Button1_Click" />
            <asp:Label ID="Label4" runat="server" Text="1" CssClass="quantity-label" />
            <asp:Button ID="Button2" runat="server" CssClass="btn btn-outline-success" Text="+" OnClick="Button2_Click" />
        </div>

        <div class="action-buttons">
            <asp:Button ID="Button3" runat="server" CssClass="btn btn-primary" Text="Add to Cart" OnClick="Button3_Click" />
            <asp:Button ID="Button4" runat="server" CssClass="btn btn-secondary" Text="Continue" OnClick="Button4_Click" />
            <asp:Button ID="Button5" runat="server" CssClass="btn btn-info text-white" Text="View Cart" OnClick="Button5_Click" />
        </div>
    </div>
</asp:Content>
