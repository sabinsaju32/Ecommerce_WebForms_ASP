<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="User_Reg.aspx.cs" Inherits="Ecommerce.User_Reg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 235px;
        }
        .auto-style3 {
            width: 388px;
        }
        .auto-style4 {
            width: 547px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mt-4">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header text-center">
                        <h4>User Registration</h4>
                    </div>
                    <div class="card-body">
                        <div class="mb-3">
                            <label for="TextBox1" class="form-label">Name</label>
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter the name" CssClass="text-danger"></asp:RequiredFieldValidator>
                        </div>

                        <div class="mb-3">
                            <label for="TextBox2" class="form-label">Email</label>
                            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
                        </div>

                        <div class="mb-3">
                            <label for="TextBox3" class="form-label">Phone Number</label>
                            <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" TextMode="Phone"></asp:TextBox>
                        </div>

                        <div class="mb-3">
                            <label for="TextBox4" class="form-label">Address</label>
                            <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>

                        <div class="mb-3">
                            <label for="TextBox5" class="form-label">Pincode</label>
                            <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <div class="mb-3">
                                    <label for="TextBox6" class="form-label">Location</label>
                                    <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="mb-3">
                                    <label for="TextBox7" class="form-label">Landmark</label>
                                    <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <div class="mb-3">
                                    <label for="TextBox8" class="form-label">District</label>
                                    <asp:TextBox ID="TextBox8" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="mb-3">
                                    <label for="TextBox9" class="form-label">State</label>
                                    <asp:TextBox ID="TextBox9" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="mb-3">
                            <label for="FileUpload1" class="form-label">Photo</label>
                            <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="FileUpload1" ErrorMessage="Choose an image" CssClass="text-danger"></asp:RequiredFieldValidator>
                        </div>

                        <div class="mb-3">
                            <label for="TextBox10" class="form-label">Username</label>
                            <asp:TextBox ID="TextBox10" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>

                        <div class="mb-3">
                            <label for="TextBox11" class="form-label">Password</label>
                            <asp:TextBox ID="TextBox11" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                        </div>

                        <div class="mb-3">
                            <label for="TextBox12" class="form-label">Confirm Password</label>
                            <asp:TextBox ID="TextBox12" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
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