<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="EditCat.aspx.cs" Inherits="Ecommerce.EditCat" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 105px;
        }
        .auto-style2 {
            width: 173px;
        }
        .auto-style3 {
            width: 887px;
        }
        .auto-style4 {
            margin-right: 277px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mt-4">
        <h3 class="fw-bold text-primary text-center">Category Management</h3>

        <div class="mb-3">
            <asp:GridView ID="GridView1" runat="server" CssClass="table table-striped w-100" AutoGenerateColumns="False">
                <Columns>
                    <asp:TemplateField HeaderText="Select">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server"
                                CommandArgument='<%# Eval("Category_id") %>' 
                                OnCommand="LinkButton1_Command" CssClass="btn btn-info">
                                Select
                            </asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:ImageField DataImageUrlField="Category_image" HeaderText="Category image">
                        <ControlStyle Height="150px" Width="200px" />
                    </asp:ImageField>
                    <asp:BoundField DataField="Category_id" HeaderText="Category ID" />
                    <asp:BoundField DataField="Category_name" HeaderText="Category Name" />
                    <asp:BoundField DataField="Category_description" HeaderText="Category Description" />
                    <asp:BoundField DataField="Category_status" HeaderText="Category Status" />
                </Columns>
            </asp:GridView>
        </div>

        <div class="mb-3">
            <label class="fw-bold">Category Description</label>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

        <div class="mb-3">
            <label class="fw-bold">Category Image</label>
            <asp:Image ID="Image1" runat="server" Height="120px" Width="174px" CssClass="d-block mb-2" />
            <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control" />
        </div>

        <div class="mb-3">
            <label class="fw-bold">Category Status</label>
            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

        <div class="text-center">
            <asp:Button ID="Button1" runat="server" CssClass="btn btn-success" OnClick="Button1_Click" Text="Update" />
        </div>

        <div class="mt-3 text-center">
            <asp:Label ID="Label1" runat="server" CssClass="fw-bold text-danger" Text="Label"></asp:Label>
        </div>
    </div>
</asp:Content>