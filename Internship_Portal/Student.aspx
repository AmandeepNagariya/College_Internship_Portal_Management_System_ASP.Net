<%@ Page Title="" Language="C#" MasterPageFile="~/Hod_Panel.Master" AutoEventWireup="true" CodeBehind="Student.aspx.cs" Inherits="Internship_Portal.Student" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Welcome :
    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
    &nbsp;</p>
<p>
    Student Id :
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;
    <asp:Label ID="Label4" runat="server" Text="Label" Visible="False"></asp:Label>
</p>
<p>
    Name :
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
</p>
<p>
    Branch :
    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
</p>
<p>
    Section :
    <asp:DropDownList ID="DropDownList1" runat="server" Width="90px">
        <asp:ListItem Value="A"></asp:ListItem>
        <asp:ListItem Value="B"></asp:ListItem>
        <asp:ListItem Value="C"></asp:ListItem>
        <asp:ListItem Value="D"></asp:ListItem>
    </asp:DropDownList>
</p>
<p>
    Mobile Number :
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
</p>
<p>
    Session :
    <asp:Label ID="Label3" runat="server" Text="2023-24"></asp:Label>
</p>
<p>
    Password :
    <asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
</p>
<p>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button6" runat="server" Text="Submit" Width="132px" OnClick="Button6_Click" />
    &nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button7" runat="server" Text="Show" Width="128px" OnClick="Button7_Click" />
</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="studentid" HeaderText="Student Id" />
                <asp:BoundField DataField="name" HeaderText="Name" />
                <asp:BoundField DataField="branch" HeaderText="Branch" />
                <asp:BoundField DataField="section" HeaderText="Section" />
                <asp:BoundField DataField="mobile" HeaderText="Mobile" />
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
    &nbsp;</p>
</asp:Content>
