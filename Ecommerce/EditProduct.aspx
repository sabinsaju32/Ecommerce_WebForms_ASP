<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="EditProduct.aspx.cs" Inherits="Ecommerce.EditProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 794px;
        }
        .auto-style2 {
            width: 253px;
        }
        .auto-style3 {
            margin-right: 163px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mt-4">
        <h3 class="fw-bold text-primary text-center">Product Management</h3>

        <div class="mb-3">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-striped w-100">
                <Columns>
                    <asp:TemplateField HeaderText="Select">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server"
                                CommandArgument='<%# Eval("Product_id") %>' 
                                OnCommand="LinkButton1_Command" CssClass="btn btn-info">
                                Select
                            </asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="Product_id" HeaderText="Product ID" />
                    <asp:BoundField DataField="Product_name" HeaderText="Product Name" />
                    <asp:BoundField DataField="Category_id" HeaderText="Category ID" />
                    <asp:BoundField DataField="Product_price" HeaderText="Price" />
                    <asp:ImageField DataImageUrlField="Product_image" HeaderText="Image">
                        <ControlStyle Height="150px" Width="150px" />
                    </asp:ImageField>
                    <asp:BoundField DataField="Product_description" HeaderText="Description" />
                    <asp:BoundField DataField="Product_status" HeaderText="Status" />
                </Columns>
            </asp:GridView>
        </div>

        <div class="mb-3">
            <label class="fw-bold">Product Description</label>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

        <div class="mb-3">
            <label class="fw-bold">Product Status</label>
            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

        <div class="mb-3">
            <label class="fw-bold">Product Image</label>
            <asp:Image ID="Image1" runat="server" Height="117px" Width="191px" CssClass="d-block mb-2" />
            <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control" />
        </div>

        <div class="mb-3">
            <label class="fw-bold">Product Price</label>
            <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

        <div class="text-center">
            <asp:Button ID="Button1" runat="server" CssClass="btn btn-success mt-3" OnClick="Button1_Click" Text="Update" />
        </div>

        <div class="mt-3 text-center">
            <asp:Label ID="Label1" runat="server" CssClass="fw-bold text-danger" Text="Label"></asp:Label>
        </div>
    </div>
</asp:Content>