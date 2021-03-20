<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AllQueriesAdmin.aspx.cs" Inherits="Student_Query_System.AllQueriesAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
       .AllQueriesA{
           width:70%;
           margin:auto;
           background-color:darkturquoise;
           color:darkslategrey;
           justify-content:center;
           align-items:center;
       }
        .auto-style1 {
            width: 100%;
            background-color:lavender;
        }
        .auto-style2 {
            width: 214px;
        }
        .auto-style3 {
            display: block;
            font-size: 1rem;
            font-weight: 400;
            line-height: 1.5;
            color: #212529;
            background-clip: padding-box;
            -webkit-appearance: none;
            -moz-appearance: none;
            appearance: none;
            border-radius: 0.25rem;
            transition: none;
            border: 1px solid #ced4da;
            background-color: #fff;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="AllQueriesA">
        <asp:Label ID="MainLbl" runat="server" Text="All Queries"></asp:Label><br />
        <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1" Height="346px" Width="655px" AllowPaging="True" DataKeyNames="QueryId">
            <EditItemTemplate>
                QueryId:
                <asp:DynamicControl ID="QueryIdDynamicControl" runat="server" DataField="QueryId" Mode="ReadOnly" />
                <br />
                QueryData:
                <asp:DynamicControl ID="QueryDataDynamicControl" runat="server" DataField="QueryData" Mode="Edit" />
                <br />
                QueryAnswer:
                <asp:DynamicControl ID="QueryAnswerDynamicControl" runat="server" DataField="QueryAnswer" Mode="Edit" />
                <br />
                QueryAnswered:
                <asp:DynamicControl ID="QueryAnsweredDynamicControl" runat="server" DataField="QueryAnswered" Mode="Edit" />
                <br />
                QueryBy:
                <asp:DynamicControl ID="QueryByDynamicControl" runat="server" DataField="QueryBy" Mode="Edit" />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" ValidationGroup="Insert" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                QueryId:
                <asp:DynamicControl ID="QueryIdDynamicControl" runat="server" DataField="QueryId" Mode="Insert" ValidationGroup="Insert" />
                <br />
                QueryData:
                <asp:DynamicControl ID="QueryDataDynamicControl" runat="server" DataField="QueryData" Mode="Insert" ValidationGroup="Insert" />
                <br />
                QueryAnswer:
                <asp:DynamicControl ID="QueryAnswerDynamicControl" runat="server" DataField="QueryAnswer" Mode="Insert" ValidationGroup="Insert" />
                <br />
                QueryAnswered:
                <asp:DynamicControl ID="QueryAnsweredDynamicControl" runat="server" DataField="QueryAnswered" Mode="Insert" ValidationGroup="Insert" />
                <br />
                QueryBy:
                <asp:DynamicControl ID="QueryByDynamicControl" runat="server" DataField="QueryBy" Mode="Insert" ValidationGroup="Insert" />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" ValidationGroup="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                <table cellpadding="2" class="auto-style1">
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Query Id</td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style3" Text='<%# Bind("QueryId") %>' Width="89px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Query data</td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" Text='<%# Bind("QueryData") %>' TextMode="MultiLine"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Query Answer</td>
                        <td>
                            <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" Text='<%# Bind("QueryAnswer") %>' TextMode="MultiLine"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Query Answered?</td>
                        <td>
                            <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" Text='<%# Bind("QueryAnswered") %>' Width="75px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Query By</td>
                        <td>
                            <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" Text='<%# Bind("QueryBy") %>' Width="123px"></asp:TextBox>
                        </td>
                    </tr>
                </table>
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
&nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
&nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [AllQueries] WHERE [QueryId] = @original_QueryId AND [QueryData] = @original_QueryData AND [QueryAnswer] = @original_QueryAnswer AND [QueryAnswered] = @original_QueryAnswered AND [QueryBy] = @original_QueryBy" InsertCommand="INSERT INTO [AllQueries] ([QueryId], [QueryData], [QueryAnswer], [QueryAnswered], [QueryBy]) VALUES (@QueryId, @QueryData, @QueryAnswer, @QueryAnswered, @QueryBy)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [AllQueries] ORDER BY [QueryId]" UpdateCommand="UPDATE [AllQueries] SET [QueryData] = @QueryData, [QueryAnswer] = @QueryAnswer, [QueryAnswered] = @QueryAnswered, [QueryBy] = @QueryBy WHERE [QueryId] = @original_QueryId AND [QueryData] = @original_QueryData AND [QueryAnswer] = @original_QueryAnswer AND [QueryAnswered] = @original_QueryAnswered AND [QueryBy] = @original_QueryBy">
            <DeleteParameters>
                <asp:Parameter Name="original_QueryId" Type="Int32" />
                <asp:Parameter Name="original_QueryData" Type="String" />
                <asp:Parameter Name="original_QueryAnswer" Type="String" />
                <asp:Parameter Name="original_QueryAnswered" Type="String" />
                <asp:Parameter Name="original_QueryBy" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="QueryId" Type="Int32" />
                <asp:Parameter Name="QueryData" Type="String" />
                <asp:Parameter Name="QueryAnswer" Type="String" />
                <asp:Parameter Name="QueryAnswered" Type="String" />
                <asp:Parameter Name="QueryBy" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="QueryData" Type="String" />
                <asp:Parameter Name="QueryAnswer" Type="String" />
                <asp:Parameter Name="QueryAnswered" Type="String" />
                <asp:Parameter Name="QueryBy" Type="String" />
                <asp:Parameter Name="original_QueryId" Type="Int32" />
                <asp:Parameter Name="original_QueryData" Type="String" />
                <asp:Parameter Name="original_QueryAnswer" Type="String" />
                <asp:Parameter Name="original_QueryAnswered" Type="String" />
                <asp:Parameter Name="original_QueryBy" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />


    </div>
</asp:Content>
