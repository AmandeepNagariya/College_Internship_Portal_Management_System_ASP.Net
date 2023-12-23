<%@ Page Title="" Language="C#" MasterPageFile="~/Student_Panel.Master" AutoEventWireup="true" CodeBehind="Internship.aspx.cs" Inherits="Internship_Portal.Internship" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Welcome :
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <br />
    &nbsp;
    Student Id :
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
</p>
<p>
    &nbsp;&nbsp;
    Name :
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
</p>
<p>
    &nbsp;&nbsp;
    Branch :
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
</p>
<p>
    &nbsp;&nbsp;
    Section :
    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
</p>
<p>
    &nbsp;&nbsp;
    Company :
    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
</p>
<p>
    &nbsp;&nbsp;
    City :
    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
</p>
<p>
    &nbsp;&nbsp;
    Internship Type :
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
        <asp:ListItem Value="2-Week"></asp:ListItem>
        <asp:ListItem Value="3-Month"></asp:ListItem>
        <asp:ListItem Value="6-Month"></asp:ListItem>
    </asp:DropDownList>
</p>
<p>
    &nbsp;&nbsp;&nbsp;
    Status :
    <asp:Label ID="Label2" runat="server" Text="Submitted"></asp:Label>
</p>
<p>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button6" runat="server" Text="Submit" Width="219px" OnClick="Button6_Click" />
    &nbsp;</p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
</asp:Content>
