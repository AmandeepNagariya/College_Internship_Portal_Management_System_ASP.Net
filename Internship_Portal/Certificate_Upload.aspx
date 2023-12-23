<%@ Page Title="" Language="C#" MasterPageFile="~/Student_Panel.Master" AutoEventWireup="true" CodeBehind="Certificate_Upload.aspx.cs" Inherits="Internship_Portal.Certificate_Upload" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Welcome :
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
    <br />
&nbsp;
    <asp:FileUpload ID="FileUpload1" runat="server" />
</p>
<p>
    Enter Student Id :
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
</p>
<p>
    Status :
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
</p>
<p>
&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button6" runat="server" Text="Upload Certificate" OnClick="Button6_Click" />
</p>
<p>
    <asp:Label ID="Label1" runat="server" Text="FileName"></asp:Label>
</p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
</asp:Content>
