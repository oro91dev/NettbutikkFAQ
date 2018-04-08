<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminMailspørsmål.aspx.cs" Inherits="NettbutikkFAQ.AdminMailspørsmål" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="lblUtData" runat="server"></asp:Label>
        <br />
        <br />
        <div>
            <h1>Kontaktskjema</h1>
            <table style="height: 181px; width: 678px; margin-bottom: 18px;">
                <tr>
                    <td class="auto-style3">ID: </td>
                    <td>
                        <asp:TextBox ID="txtId" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:RegularExpressionValidator ID="testId" runat="server" ErrorMessage="Må være mellom 2 og 20 tegn" ValidationExpression="[0-9.-]{1,20}" ControlToValidate="txtId"></asp:RegularExpressionValidator></td>
                </tr>

                <tr>
                    <td class="auto-style2">Henvendelse: </td>
                    <td class="auto-style1">
                        <asp:DropDownList ID="DDlhenv" runat="server" OnSelectedIndexChanged="Henvendelselist" AutoPostBack="true" Height="16px">
                            <asp:ListItem>Frakt</asp:ListItem>
                            <asp:ListItem>Levering</asp:ListItem>
                            <asp:ListItem>Betaling</asp:ListItem>
                            <asp:ListItem>Retur</asp:ListItem>
                            <asp:ListItem>Support</asp:ListItem>
                            <asp:ListItem>Informasjon</asp:ListItem>
                            <asp:ListItem>Generelt</asp:ListItem>
                        </asp:DropDownList></td>


                </tr>

                <tr>
                    <td class="auto-style3">Fullt navn: </td>
                    <td>
                        <asp:TextBox ID="txtNavn" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:RegularExpressionValidator ID="testnavn" runat="server" ErrorMessage="Må være mellom 2 og 20 tegn" ValidationExpression="[a-zA-ZæøåÆØÅ .-]{2,20}" ControlToValidate="txtNavn"></asp:RegularExpressionValidator></td>
                </tr>

                <tr>
                    <td class="auto-style3">E-postadresse: </td>
                    <td>
                        <asp:TextBox ID="txtEpost" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:RegularExpressionValidator ID="testadresse" runat="server" ErrorMessage="Må være mailnavn @ hotmail,gmail etc . com/net etc" ValidationExpression="^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,4})$" ControlToValidate="txtEpost"></asp:RegularExpressionValidator></td>
                </tr>

                <tr>
                    <td class="auto-style3">Mobilnummer: </td>
                    <td>
                        <asp:TextBox ID="txtMob" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:RegularExpressionValidator ID="testmob" runat="server" ErrorMessage="" ValidationExpression="^[0-9]{8}$" ControlToValidate="txtMob"></asp:RegularExpressionValidator></td>
                </tr>

            </table>
            <table>
                <tr>
                    <td>
                        <br />
                        Beskriv din henvendelse her. Husk å ta med alle relevante detaljer - f.eks. fakturanummer, tidspunkt, frakt o.l.</td>
                    <br />
                    <td>&nbsp;</td>

                </tr>

                <tr>
                    <td>
                        <textarea id="txtaspørsmål" name="S1" runat="server" style="height: 113px; width: 593px"></textarea></td>
                </tr>
            </table>

            <br />

            <asp:Button ID="btnVis" runat="server" Text="Vis" OnClick="Vis" />&nbsp;
        <asp:Button ID="btnEndre" runat="server" Text="Endre" OnClick="Endre" />&nbsp;
        <asp:Button ID="btnSlett" runat="server" Text="Slett" OnClick="Slett" />
            <br />

        </div>
    </form>
</body>
</html>
