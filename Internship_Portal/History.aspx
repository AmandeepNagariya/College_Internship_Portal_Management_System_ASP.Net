<%@ Page Title="" Language="C#" MasterPageFile="~/Student_Panel.Master" AutoEventWireup="true" CodeBehind="History.aspx.cs" Inherits="Internship_Portal.History" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Welcome :
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
&nbsp;&nbsp;<asp:Button ID="Button6" runat="server" Text="Check Application History" Width="280px" OnClick="Button6_Click" />
    </p>
    <p>
&nbsp;<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:TemplateField HeaderText="Sr.No">
                    <ItemTemplate>
                         <%# Container.DataItemIndex+1 %>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="studentid" HeaderText="Student Id" />
                <asp:BoundField DataField="name" HeaderText="Name" />
                <asp:BoundField DataField="company" HeaderText="Company" />
                <asp:BoundField DataField="city" HeaderText="City" />
                <asp:BoundField DataField="type" HeaderText="Type" />
                <asp:BoundField DataField="status" HeaderText="Status" />
                <asp:TemplateField HeaderText="Delete Internship Application">
                    <ItemTemplate>
                        <asp:Button ID="Button1" runat="server" Text="Delete" />
                    </ItemTemplate>
                </asp:TemplateField>
                
            </Columns>
        </asp:GridView>
    </p>
</asp:Content>
