<%@ Page Title="" Language="C#" MasterPageFile="~/studentView.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="Student_Query_System.ContactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style>
    .ContactUs{
        width:70%;
        margin:auto;
        padding:10px;
        background-color:black;
        display:flex;
        color:aliceblue;
        font-weight:600;
        flex-direction:column;
        
      
    }
    .mainData{
      
    }
    .auto-style1 {
        height: 107px;
    }
    .auto-style2 {
        height: 43px;
    }
    .auto-style3 {
        height: 44px;
    }
    .auto-style4 {
        height: 107px;
        width: 108px;
    }
    .auto-style5 {
        height: 43px;
        width: 108px;
    }
    .auto-style6 {
        height: 44px;
        width: 108px;
    }
    .auto-style7 {
        width: 108px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="ContactUs">
       <label style="width:200px; margin:auto; font-size:40px; color:burlywood; text-shadow:5px 5px 7px yellow" >contact us</label><br /><br />
        <div class="mainData">
            <table style="width:80%;margin:auto;">
                <tr>
                    <td class="auto-style4">Address : </td>
                    <td class="auto-style1"><asp:Label runat="server" ID="addresslbl" Text="MCMSR college , 3 tower , tirupati market ,visnagar."></asp:Label></td>
                </tr>
                <tr>
                    <td class="auto-style5">Phone No :</td>
                    <td class="auto-style2"><label>9898989898</label></td>
                </tr>
                <tr>
                    <td class="auto-style6">Email Id:</td>
                    <td class="auto-style3"><label>sample@gmail.com</label></td>
                </tr>
                <tr>
                    <td class="auto-style7"></td>
                    <td></td>
                </tr>

            </table>
        </div>
    </div>
</asp:Content>
