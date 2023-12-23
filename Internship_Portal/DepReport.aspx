<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Panel.Master" AutoEventWireup="true" CodeBehind="DepReport.aspx.cs" Inherits="Internship_Portal.DepReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Welcome :
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        &nbsp;</p>
    <p>
        Select Section :
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Width="86px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            <asp:ListItem>Select Section</asp:ListItem>
            <asp:ListItem Value="A"></asp:ListItem>
            <asp:ListItem Value="B"></asp:ListItem>
            <asp:ListItem Value="C"></asp:ListItem>
            <asp:ListItem Value="D"></asp:ListItem>
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="515px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:TemplateField HeaderText="Sr.No">
                    <ItemTemplate>
                        <%# Container.DataItemIndex+1 %>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="studentid" HeaderText="Student Id" />
                <asp:BoundField DataField="name" HeaderText="Name" />
                <asp:BoundField DataField="branch" HeaderText="Branch" />
                <asp:BoundField DataField="section" HeaderText="Section" />
                <asp:BoundField DataField="company" HeaderText="Company" />
                <asp:BoundField DataField="city" HeaderText="City" />
                <asp:BoundField DataField="type" HeaderText="Internship Type" />
                <asp:TemplateField HeaderText="Certificate">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" NavigateUrl='<%#"~/"+ "upload/" + Eval("certificate_filename") %>'  runat="server">Download</asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>
                
            </Columns>
        </asp:GridView>
    </p>
</asp:Content>
