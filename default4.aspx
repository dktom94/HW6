﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="_default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Contact US </title>
    <link rel="stylesheet" type="text/css" href="StyleSheet.css" />
</head>

<body>


    <div class =" header">
    <h1> Wicked Easy Recipes</h1>

        <h2> Using 5 ingridents or Less!</h2>
    
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Default.aspx">Home  </asp:HyperLink>
    
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default2.aspx">Insert Recipe  </asp:HyperLink>
    
        
        <asp:HyperLink ID="HyperLink3" runat="server" ClientIDMode="Static" NavigateUrl="~/Default5.aspx">About Us  </asp:HyperLink>
        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/default4.aspx">Contact  </asp:HyperLink>
    
    </div>
    <form id="form1" runat="server">

        <!-- Check to see if you are in postback.  If not, display the contact form. -->
        <% If Not IsPostBack Then%>

        Your name:<br />
        <asp:TextBox ID="senderName" runat="server" placeholder="First and last name" ></asp:TextBox>
        <br />
        <br />

        Your email address:<br />
        <asp:TextBox ID="senderAddress" runat="server" placeholder="Preferred email address" ></asp:TextBox>
        <br />
        <br />
       
        Your subject:<br />
        <asp:TextBox ID="senderSubject" runat="server"></asp:TextBox>
        <br />
        <br />

         Your message:<br /> 
        <!-- to make your box bigger add rows, columns, and textmode -->
        <asp:TextBox ID="senderMessage" runat="server" Rows="20" Columns="30" TextMode="MultiLine" placeholder="Please enter your message." ></asp:TextBox>
        
        <br />
        <br />
        <asp:Button ID="sendMail" runat="server" Text="Send" />

        <!-- If you are in postback, display the confirmation label. -->
        <%Else%>

        <asp:Label ID="confirmSent" runat="server" Text=""></asp:Label>

        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>

        <!-- End your 'If' statement. -->
        <%End If%>

    </form>
</body>
</html>
