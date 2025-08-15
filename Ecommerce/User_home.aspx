<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="User_home.aspx.cs" Inherits="Ecommerce.User_home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 29px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .category-grid {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            justify-content: center;
            padding: 20px;
        }

        .category-card {
            width: 230px;
            border: 1px solid #ddd;
            border-radius: 8px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            transition: transform 0.2s ease;
            text-align: center;
            background-color: #fff;
        }

        .category-card:hover {
            transform: translateY(-5px);
        }

        .category-image {
            width: 100%;
            height: 160px;
            object-fit: cover;
        }

        .category-body {
            padding: 10px;
        }

        .category-title {
            font-weight: bold;
            font-size: 16px;
            margin-bottom: 5px;
            color: #333;
        }

        .category-description {
            font-size: 14px;
            color: #666;
        }

        .message-label {
            text-align: center;
            margin-top: 30px;
            color: #d00;
            font-weight: bold;
        }
    </style>

    <div class="category-grid">
        <asp:DataList ID="DataList1" runat="server" RepeatColumns="6" RepeatDirection="Horizontal">
            <ItemTemplate>
                <div class="category-card">
                    <asp:ImageButton 
                        ID="ImageButton1" 
                        runat="server" 
                        CommandArgument='<%# Eval("Category_id") %>' 
                        ImageUrl='<%# Eval("Category_image") %>' 
                        OnCommand="ImageButton1_Command"
                        CssClass="category-image" />

                    <div class="category-body">
                        <div class="category-title">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Category_name") %>' />
                        </div>
                        <div class="category-description">
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Category_description") %>' />
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:DataList>
    </div>

    <div class="message-label">
        <asp:Label ID="lblMessage" runat="server" Text="" />
    </div>
</asp:Content>
