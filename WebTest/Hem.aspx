<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Hem.aspx.cs" Inherits="WebTest.Hem" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        Namn<asp:TextBox ID="txtNamn" runat="server"></asp:TextBox>
        <p>
            Ålder<asp:TextBox ID="txtÅlder" runat="server"></asp:TextBox>
        </p>
        <p>
            Smeknamn<asp:TextBox ID="txtSmeknamn" runat="server"></asp:TextBox>
        </p>
        <asp:Button ID="btnSpara" runat="server" OnClick="Button1_Click" Text="Spara" />
        <asp:Button ID="btnRadera" runat="server" Text="Radera" />
        <asp:Button ID="btnAvbry" runat="server" Text="Avbryt" />
        <asp:Label ID="LblJa" runat="server" Text="Label" ForeColor="Green" Visible="False"></asp:Label>
        <asp:Label ID="LblNej" runat="server" Text="Label" ForeColor="Red" Visible="False"></asp:Label>
        <asp:GridView ID="grdData" runat="server" AutoGenerateColumns="false">
            <Columns>
                <asp:BoundField DataField="Namn" HeaderText="Namn" />
                <asp:BoundField DataField="Ålder" HeaderText="Ålder" />
                <asp:BoundField DataField="Smeknamn" HeaderText="Smeknamn" />
                <asp:TemplateField>
                    <ItemTemplate>
                        <%--<asp:LinkButton ID="lnkView" runat="server" CommandArgument='<%# Eval("Id")%>'>View</asp:LinkButton>--%>
                    </ItemTemplate>
                </asp:TemplateField>


            </Columns>

        </asp:GridView>
    </form>
</body>
</html>
