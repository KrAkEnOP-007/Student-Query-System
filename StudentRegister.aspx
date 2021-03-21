<%@ Page Title="" Language="C#" MasterPageFile="~/studentView.Master" AutoEventWireup="true" CodeBehind="StudentRegister.aspx.cs" Inherits="Student_Query_System.StudentRegister" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
          .auto-style1 {
            width: 224px;
        }
            .studReg{
            background-color:gray;
            width:80%;
            margin:auto;
            display:flex;
            justify-content:center;
            align-items:center;
            flex-direction:column;
        }
        .auto-style2 {
            width: 220px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container studReg">
              <table style="width:100%; margin:5px; padding:5px;">
                  
                  <tbody>
                      <tr>
                          <td colspan="3"><h1>Student Registration</h1></td>
                         
                      </tr>
                      <tr>
                          <td class="auto-style1">Name: -</td>
                          <td class="auto-style2">
                              <div class="form-floating mb-3">
                                  <asp:TextBox runat="server" type="Text" class="form-control" ID="Name" placeholder="Name"></asp:TextBox>
                                  <label for="Name">Name</label>
                              </div>
                          </td>
                          <td>
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Name" ErrorMessage="Enter Student Name*"></asp:RequiredFieldValidator>
                          </td>
                      </tr>
                      <tr>
                          <td class="auto-style1">Username:-</td>
                          <td class="auto-style2">
                              <div class="form-floating mb-3">
                                  <asp:TextBox runat="server" type="Text" class="form-control" id="floatingEmail" placeholder="name@example.com"></asp:TextBox>
                                  <label for="floatingEmail">Email address</label>
                              </div>
                          </td>
                          <td>
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="floatingEmail" ErrorMessage="Enter Username*"></asp:RequiredFieldValidator>
                          </td>
                      </tr>
                      <tr>
                          <td class="auto-style1">Password:-</td>
                          <td class="auto-style2">
                              <div class="form-floating">
                                  <asp:TextBox runat="server" type="password" class="form-control" id="floatingPassword" placeholder="Password"></asp:TextBox>
                                  <label for="floatingPassword">Password</label>
                              </div>
                          </td>
                          <td>
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="floatingPassword" ErrorMessage="Enter Password*"></asp:RequiredFieldValidator>
                          </td>
                      </tr>
                      <tr>
                          <td class="auto-style1"></td>
                          <td class="auto-style2">&nbsp;</td>
                          <td>&nbsp;</td>
                      </tr>
                      <tr>
                          <td colspan="3" style="display:flex; justify-content:center;">
                              <asp:Button runat="server" ID="Signupbtn" Text="Sign Up" CssClass="btn btn-primary" OnClick="Signupbtn_Click"/>
                          </td>
                      </tr>

                  </tbody>
              </table>
            </div>
</asp:Content>
