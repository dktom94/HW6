﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default3.aspx.vb" Inherits="Default3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Recipe Details</title>
    <link rel="stylesheet" type="text/css" href="StyleSheet.css" />
</head>
<body>
    <form id="form1" runat="server">
    
        <div class =" header">
        <h1> Wicked Easy Recipes</h1>

        <h2> Using 5 ingridents or Less!</h2>
    
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Default.aspx">Home</asp:HyperLink>
    
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default2.aspx">Insert Recipe</asp:HyperLink>
    
        
        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Default5.aspx">About Us</asp:HyperLink>
        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/default4.aspx">Contact</asp:HyperLink>
        

        </div>
        <div>
    

 <br />
        <br /> 
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ddkester-HW6 %>" DeleteCommand="DELETE FROM [ddkester-HW6] WHERE [Recipe_ID] = @Recipe_ID" InsertCommand="INSERT INTO [ddkester-HW6] ([Recipe_Name], [Submitter], [Ingredient1], [Ingredient2], [Ingredient3], [Ingredient4], [Ingredient5], [Preperation], [Notes]) VALUES (@Recipe_Name, @Submitter, @Ingredient1, @Ingredient2, @Ingredient3, @Ingredient4, @Ingredient5, @Preperation, @Notes)" SelectCommand="SELECT * FROM [ddkester-HW6] WHERE ([Recipe_ID] = @Recipe_ID)" UpdateCommand="UPDATE [ddkester-HW6] SET [Recipe_Name] = @Recipe_Name, [Submitter] = @Submitter, [Ingredient1] = @Ingredient1, [Ingredient2] = @Ingredient2, [Ingredient3] = @Ingredient3, [Ingredient4] = @Ingredient4, [Ingredient5] = @Ingredient5, [Preperation] = @Preperation, [Notes] = @Notes WHERE [Recipe_ID] = @Recipe_ID">
            <DeleteParameters>
                <asp:Parameter Name="Recipe_ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Recipe_Name" Type="String" />
                <asp:Parameter Name="Submitter" Type="String" />
                <asp:Parameter Name="Ingredient1" Type="String" />
                <asp:Parameter Name="Ingredient2" Type="String" />
                <asp:Parameter Name="Ingredient3" Type="String" />
                <asp:Parameter Name="Ingredient4" Type="String" />
                <asp:Parameter Name="Ingredient5" Type="String" />
                <asp:Parameter Name="Preperation" Type="String" />
                <asp:Parameter Name="Notes" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:QueryStringParameter Name="Recipe_ID" QueryStringField="Recipe_ID" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Recipe_Name" Type="String" />
                <asp:Parameter Name="Submitter" Type="String" />
                <asp:Parameter Name="Ingredient1" Type="String" />
                <asp:Parameter Name="Ingredient2" Type="String" />
                <asp:Parameter Name="Ingredient3" Type="String" />
                <asp:Parameter Name="Ingredient4" Type="String" />
                <asp:Parameter Name="Ingredient5" Type="String" />
                <asp:Parameter Name="Preperation" Type="String" />
                <asp:Parameter Name="Notes" Type="String" />
                <asp:Parameter Name="Recipe_ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
            <br />
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="Recipe_ID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="50px" Width="413px">
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True" />
            <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="Recipe_Name" HeaderText="Recipe Name" SortExpression="Recipe_Name" />
                <asp:BoundField DataField="Submitter" HeaderText="Submitter" SortExpression="Submitter" />
                <asp:BoundField DataField="Ingredient1" HeaderText="Ingredient1" SortExpression="Ingredient1" />
                <asp:BoundField DataField="Ingredient2" HeaderText="Ingredient2" SortExpression="Ingredient2" />
                <asp:BoundField DataField="Ingredient3" HeaderText="Ingredient3" SortExpression="Ingredient3" />
                <asp:BoundField DataField="Ingredient4" HeaderText="Ingredient4" SortExpression="Ingredient4" />
                <asp:BoundField DataField="Ingredient5" HeaderText="Ingredient5" SortExpression="Ingredient5" />
                <asp:BoundField DataField="Preperation" HeaderText="Preperation" SortExpression="Preperation" />
                <asp:BoundField DataField="Notes" HeaderText="Notes" SortExpression="Notes" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Fields>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        </asp:DetailsView>
        <asp:Label ID="Label1" runat="server"></asp:Label>
    
    </div>
    </form>
</body>
</html>
