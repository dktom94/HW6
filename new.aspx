<%@ Page Language="VB" AutoEventWireup="false" CodeFile="new.aspx.vb" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ddkester-HW6 %>" DeleteCommand="DELETE FROM [ddkester-HW6] WHERE [Recipe_ID] = @Recipe_ID" InsertCommand="INSERT INTO [ddkester-HW6] ([Recipe_ID], [Recipe_Name], [Sumbmitter], [Ingredient1], [Ingredient2], [Ingredient3], [Ingredient4], [Ingredient5], [Preperation], [Notes]) VALUES (@Recipe_ID, @Recipe_Name, @Sumbmitter, @Ingredient1, @Ingredient2, @Ingredient3, @Ingredient4, @Ingredient5, @Preperation, @Notes)" SelectCommand="SELECT * FROM [ddkester-HW6]" UpdateCommand="UPDATE [ddkester-HW6] SET [Recipe_Name] = @Recipe_Name, [Sumbmitter] = @Sumbmitter, [Ingredient1] = @Ingredient1, [Ingredient2] = @Ingredient2, [Ingredient3] = @Ingredient3, [Ingredient4] = @Ingredient4, [Ingredient5] = @Ingredient5, [Preperation] = @Preperation, [Notes] = @Notes WHERE [Recipe_ID] = @Recipe_ID">
            <DeleteParameters>
                <asp:Parameter Name="Recipe_ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Recipe_ID" Type="Int32" />
                <asp:Parameter Name="Recipe_Name" Type="String" />
                <asp:Parameter Name="Sumbmitter" Type="String" />
                <asp:Parameter Name="Ingredient1" Type="String" />
                <asp:Parameter Name="Ingredient2" Type="String" />
                <asp:Parameter Name="Ingredient3" Type="String" />
                <asp:Parameter Name="Ingredient4" Type="String" />
                <asp:Parameter Name="Ingredient5" Type="String" />
                <asp:Parameter Name="Preperation" Type="String" />
                <asp:Parameter Name="Notes" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Recipe_Name" Type="String" />
                <asp:Parameter Name="Sumbmitter" Type="String" />
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
    
    </div>
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="Recipe_ID" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" Width="125px">
            <Fields>
                <asp:BoundField DataField="Recipe_ID" HeaderText="Recipe_ID" ReadOnly="True" SortExpression="Recipe_ID" />
                <asp:BoundField DataField="Recipe_Name" HeaderText="Recipe_Name" SortExpression="Recipe_Name" />
                <asp:BoundField DataField="Sumbmitter" HeaderText="Sumbmitter" SortExpression="Sumbmitter" />
                <asp:BoundField DataField="Ingredient1" HeaderText="Ingredient1" SortExpression="Ingredient1" />
                <asp:BoundField DataField="Ingredient2" HeaderText="Ingredient2" SortExpression="Ingredient2" />
                <asp:BoundField DataField="Ingredient3" HeaderText="Ingredient3" SortExpression="Ingredient3" />
                <asp:BoundField DataField="Ingredient4" HeaderText="Ingredient4" SortExpression="Ingredient4" />
                <asp:BoundField DataField="Ingredient5" HeaderText="Ingredient5" SortExpression="Ingredient5" />
                <asp:BoundField DataField="Preperation" HeaderText="Preperation" SortExpression="Preperation" />
                <asp:BoundField DataField="Notes" HeaderText="Notes" SortExpression="Notes" />
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
    </form>
</body>
</html>
