<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ViewCart.aspx.cs" Inherits="Ecommerce.ViewCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 43px;
        }
        .auto-style2 {
            width: 43px;
            height: 30px;
        }
        .auto-style3 {
            height: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .cart-container {
            max-width: 900px;
            margin: 50px auto;
            background-color: #fff;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 5px 20px rgba(0,0,0,0.1);
        }

        .cart-heading {
            font-size: 24px;
            font-weight: bold;
            margin-bottom: 25px;
        }

        .gridview th, .gridview td {
            padding: 10px !important;
            text-align: center;
        }

        .btn-order {
            margin-top: 20px;
        }
    </style>

    <div class="cart-container">
        <div class="cart-heading text-center">🛒 Your Shopping Cart</div>

        <asp:GridView ID="GridView1" runat="server" CssClass="table table-bordered gridview" AutoGenerateColumns="False"
            DataKeyNames="cart_id"
            OnRowCancelingEdit="GridView1_RowCancelingEdit"
            OnRowDeleting="GridView1_RowDeleting"
            OnRowEditing="GridView1_RowEditing"
            OnRowUpdating="GridView1_RowUpdating">
            <Columns>
                <asp:BoundField DataField="Product_name" HeaderText="Product" />
                <asp:BoundField DataField="Product_price" HeaderText="Price (Rs)" />
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
                <asp:BoundField DataField="Sub_total" HeaderText="Subtotal (Rs)" />
                <asp:CommandField ShowDeleteButton="True" ButtonType="Button" />
                <asp:CommandField ShowEditButton="True" ButtonType="Button" />
            </Columns>
        </asp:GridView>

        <asp:Label ID="Label1" runat="server" CssClass="text-danger" Visible="False" />

        <asp:Button ID="Button1" runat="server" Text="Place Order" CssClass="btn btn-success btn-order" OnClick="Button1_Click" />
    </div>
</asp:Content>
