<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="Kundesenter.aspx.cs" Inherits="NettbutikkFAQ.Kundesenter" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <h2>Kundesenter</h2>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>Om kundesenteret</h3>

    <p>Har du noen spørsmål du lurer på så sjekk ut Ofte stilte spørsmål. Finner du ikke svar der så se om du kan finne svar på
    alle spørsmål som har blitt gitt.</p>
    <br />
    <h5>Du kan stille spørsmål direkte</h5>
    <p>Ved å stille spørsmål per epost så kan det gjøres ved å klikke seg inn på kontaktinformasjon og fylle ut skjemaet,
    vi prøver så godt vi kan på å svare på alle spørsmål, så vær tålmodig.</p>

    <br />
      <h5>Kontakt oss</h5>
    <p>Kontakt oss på Telefon:22114455</p>

  
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
      <h5>Login</h5>
    
     <asp:Login ID="Login" runat="server" OnAuthenticate="Login_Authenticat" LoginButtonText="Logg Inn" PasswordLabelText="Passord:" RememberMeText="Husk meg neste gang" TitleText="" UserNameLabelText="Epost:">
     </asp:Login>
     <h5>Ikke bruker?, glemt passord</h5>
    <asp:Button ID="Reg" runat="server" Text="Registrer" Width="88px" /> 
    &nbsp;&nbsp;&nbsp; 
    <asp:Button ID="Glemt" runat="server" Text="Passord" Width="88px" /> 
    

</asp:Content>
