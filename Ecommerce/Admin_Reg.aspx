<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Admin_Reg.aspx.cs" Inherits="Ecommerce.Admin_Reg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 334px;
        }
        .auto-style2 {
            width: 513px;
        }
        .auto-style3 {
            width: 339px;
        }
        .auto-style4 {
            width: 210px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mt-4">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-header text-center">
                        <h4>Admin Registration</h4>
                    </div>
                    <div class="card-body">
                        <div class="mb-3">
                            <label for="TextBox1" class="form-label">Name</label>
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter the name" CssClass="text-danger"></asp:RequiredFieldValidator>
                        </div>

                        <div class="mb-3">
                            <label for="TextBox2" class="form-label">Email</label>
                            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>

                        <div class="mb-3">
                            <label for="TextBox3" class="form-label">Username</label>
                            <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>

                        <div class="mb-3">
                            <label for="TextBox4" class="form-label">Password</label>
                            <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                        </div>

                        <div class="mb-3">
                            <label for="TextBox5" class="form-label">Confirm Password</label>
                            <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                        </div>

                        <div class="d-grid">
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Register" CssClass="btn btn-primary" />
                        </div>

                        <div class="mt-3 text-center">
                            <asp:Label ID="Label1" runat="server" Text="Label" Visible="False" CssClass="text-danger"></asp:Label>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>