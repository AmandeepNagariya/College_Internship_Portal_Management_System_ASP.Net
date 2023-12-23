<%@ Page Title="" Language="C#" MasterPageFile="~/Hod_Panel.Master" AutoEventWireup="true" CodeBehind="Incharge.aspx.cs" Inherits="Internship_Portal.Incharge" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Welcome :
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Incharge Registration</p>
    <p>
        &nbsp; Incharge Id :
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        &nbsp;</p>
    <p>
        &nbsp; Name :
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    </p>
    <p>
        &nbsp; Branch :
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        &nbsp;</p>
    <p>
        Mobile Number :
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
    </p>
    <p>
        &nbsp; Section Allotment :
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Height="16px" Width="116px">
            <asp:ListItem Value="A"></asp:ListItem>
            <asp:ListItem Value="B"></asp:ListItem>
            <asp:ListItem Value="C"></asp:ListItem>
            <asp:ListItem Value="D"></asp:ListItem>
        </asp:DropDownList>
        &nbsp;</p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button6" runat="server" Text="Submit" Width="172px" OnClick="Button6_Click" />
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button7" runat="server" Text="Show" Width="155px" OnClick="Button7_Click" />
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="inchargeid" HeaderText="Id" />
                <asp:BoundField DataField="name" HeaderText="Name" />
                <asp:BoundField DataField="branch" HeaderText="Branch" />
                <asp:BoundField DataField="mobile" HeaderText="Mobile" />
                <asp:BoundField DataField="section" HeaderText="Section" />
                <asp:TemplateField HeaderText="Edit">
                    <ItemTemplate>
                        <asp:Button ID="Button1" runat="server" Text="Edit" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Delete">
                    <ItemTemplate>
                        <asp:Button ID="Button2" runat="server" Text="Delete" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</p>
</asp:Content>
