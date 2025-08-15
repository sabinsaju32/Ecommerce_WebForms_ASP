<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ViewAllProduts.aspx.cs" Inherits="Ecommerce.ViewAllProduts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .product-card {
            width: 230px;
            margin: 15px;
            box-shadow: 0 2px 6px rgba(0,0,0,0.1);
            border-radius: 10px;
            overflow: hidden;
            transition: transform 0.2s ease;
            background-color: #fff;
        }

        .product-card:hover {
            transform: scale(1.03);
        }

        .product-image {
            width: 100%;
            height: 200px;
            object-fit: cover;
            display: block;
        }

        .product-info {
            padding: 10px;
            text-align: center;
        }

        .product-price {
            color: #28a745;
            font-weight: bold;
            font-size: 16px;
        }

        .product-name {
            color: #333;
            font-size: 15px;
        }

        .product-grid {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
        }
    </style>

    <div class="product-grid">
        <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" RepeatColumns="4">
            <ItemTemplate>
                <div class="product-card">
                    <asp:ImageButton 
                        ID="ImageButton1" 
                        runat="server" 
                        CssClass="product-image"
                        ImageUrl='<%# Eval("Product_image") %>' 
                        CommandArgument='<%# Eval("Product_id") %>' 
                        OnCommand="ImageButton1_Command" />

                    <div class="product-info">
                        <div class="product-price">
                            Rs <asp:Label ID="Label1" runat="server" Text='<%# Eval("Product_price") %>' />
                        </div>
                        <div class="product-name">
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Product_name") %>' />
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:DataList>
    </div>

    <div class="text-center mt-4">
        <asp:Label ID="Label3" runat="server" CssClass="text-danger" />
    </div>
</asp:Content>
