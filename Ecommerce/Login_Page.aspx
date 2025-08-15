<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login_Page.aspx.cs" Inherits="Ecommerce.Login_Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 <style type="text/css">
        .form-label {
            font-weight: bold;
            padding-right: 10px;
            font-size: 16px;
        }

        .form-input {
            width: 100%;
            padding: 10px;
            font-size: 14px;
            border-radius: 5px;
            border: 1px solid #ccc;
        }

        .form-button {
            padding: 10px 25px;
            background-color: #4CAF50;
            color: white;
            font-size: 16px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .form-button:hover {
            background-color: #45a049;
        }

        .center-table {
            margin: 80px auto;
            width: 500px;
            border-spacing: 15px;
        }

        .error-message {
            color: red;
            font-size: 13px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mt-4">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-header text-center">
                        <h4>Login</h4>
                    </div>
                    <div class="card-body">
                        <div class="mb-3">
                            <label for="TextBox1" class="form-label">Username</label>
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter the Username" CssClass="text-danger"></asp:RequiredFieldValidator>
                        </div>

                        <div class="mb-3">
                            <label for="TextBox2" class="form-label">Password</label>
                            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter the Password" CssClass="text-danger"></asp:RequiredFieldValidator>
                        </div>

                        <div class="d-grid">
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" CssClass="btn btn-primary" />
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