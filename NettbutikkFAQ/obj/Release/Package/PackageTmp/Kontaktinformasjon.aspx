<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="Kontaktinformasjon.aspx.cs" Inherits="NettbutikkFAQ.Kontaktinformasjon" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="CSS/Text.css" rel="stylesheet" type="text/css" />
<style type="text/css">

ul {list-style-type:none; margin:120px; padding:0;}
li {padding:5px;}
.submitButton {margin-top:120px;margin-left:120px;}

.validationControl {
display:block;
background-color:Red;
padding:5px;
margin:5px;
}
</style>

</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <h2>Kontaktinformasjon</h2>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="lblUtData" runat="server"></asp:Label>
    <br />
    <br />
    <div>
        <h1>Kontaktskjema</h1>
        <table style="height: 181px; width: 678px; margin-bottom: 18px;">
            <tr>
                <td class="auto-style2">Henvendelse: </td>
                <td class="auto-style1">
                    <asp:DropDownList ID="DDlhenv" runat="server" OnSelectedIndexChanged="Henvendelselist" AutoPostBack="true" Height="16px">
                        <asp:ListItem Value="-1">Velg henvendelse</asp:ListItem>
                        <asp:ListItem >Frakt</asp:ListItem>
                        <asp:ListItem >Levering</asp:ListItem>
                        <asp:ListItem >Betaling</asp:ListItem>
                        <asp:ListItem >Retur</asp:ListItem>
                        <asp:ListItem >Support</asp:ListItem>
                        <asp:ListItem >Informasjon</asp:ListItem>
                        <asp:ListItem >Generelt</asp:ListItem>
                    </asp:DropDownList></td>
                <td>
                <asp:RequiredFieldValidator runat="server" ID="testddl" ControlToValidate="DDlhenv" InitialValue="-1" CssClass="validationControl" ForeColor="White" Display="Dynamic" ErrorMessage="Velg henvendelse">Du må velge henvendelse</asp:RequiredFieldValidator></td>

            </tr>

            <tr>
                <td class="auto-style3">Fullt navn: </td>
                <td>
                    <asp:TextBox ID="txtNavn" runat="server"></asp:TextBox></td>
                <td>
                    <asp:RegularExpressionValidator ID="testnavn" runat="server" ErrorMessage="Må være mellom 2 og 25 bokstaver" ValidationExpression="[a-zA-ZæøåÆØÅ .-]{2,25}" ControlToValidate="txtNavn"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ControlToValidate="txtNavn" ID="requireTextBox" CssClass="validationControl" ForeColor="White" runat="server" Display="Dynamic" ErrorMessage="Du mangler navn<br/>"></asp:RequiredFieldValidator></td>

            </tr>

            <tr>
                <td class="auto-style3">E-postadresse: </td>
                <td>
                    <asp:TextBox ID="txtEpost" runat="server"></asp:TextBox></td>
                <td>
                    <asp:RegularExpressionValidator ID="testadresse" runat="server" ErrorMessage="Må være mailnavn @ hotmail,gmail etc . com/net etc" ValidationExpression="^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,4})$" ControlToValidate="txtEpost"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ControlToValidate="txtEpost" ID="requireTextBox1" CssClass="validationControl" ForeColor="White" runat="server"  Display="Dynamic" ErrorMessage="Du mangler mailadresse<br/>"></asp:RequiredFieldValidator></td>
                 </tr>

            <tr>
                <td class="auto-style3">Mobilnummer: </td>
                <td>
                    <asp:TextBox ID="txtMob" runat="server"></asp:TextBox></td>
                <td>
                    <asp:RegularExpressionValidator ID="testmob" runat="server" ErrorMessage="Må være åtte sifferet tall" ValidationExpression="^^\s*\+?\s*([0-9][\s-]*){8,}$" ControlToValidate="txtMob"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ControlToValidate="txtMob" ID="requireTextBox2" CssClass="validationControl" ForeColor="White" runat="server" Display="Dynamic" ErrorMessage="Du mangler mobilnummer"></asp:RequiredFieldValidator></td>
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
                    <textarea id="txtaspørsmål" name="S1" runat="server" style="height: 113px; width: 593px"></textarea>
                     <asp:RequiredFieldValidator ControlToValidate="txtaspørsmål" ID="requireTextBox3" CssClass="validationControl" ForeColor="White" runat="server" Display="Dynamic" ErrorMessage="Du må fylle ut textboxen"></asp:RequiredFieldValidator>

                </td>
            
            </tr>
        </table>

        <br />

        <asp:Button ID="btnReg" runat="server" Text="Registrer" OnClick="registrert" />
        <br />

    </div>
    <script type="text/javascript">
        function ValidatorUpdateDisplay(val) {
            if (typeof (val.display) == "string") {
                if (val.display == "None") {
                    return;
                }
                if (val.display == "Dynamic") {
                    val.style.display = val.isvalid ? "none" : "block";
                    return;
                }
            }
            if ((navigator.userAgent.indexOf("Mac") > -1) &&
            (navigator.userAgent.indexOf("MSIE") > -1)) {
                val.style.display = "inline";
            }
            val.style.visibility = val.isvalid ? "hidden" : "visible";
        }
</script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>

