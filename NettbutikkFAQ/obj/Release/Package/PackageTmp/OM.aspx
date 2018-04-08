<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="OM.aspx.cs" Inherits="NettbutikkFAQ.OM" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <h2>Om oss</h2>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Om Mobaton</h1>
    <p>
        I Oktober 2013 lanserte Mobaton Norges første rendyrkete internettbaserte mobiltelefon salg av Kinesiske toppmodeller.
     Vår målsetting er, og har alltid vært, å tilby de beste Mobilbaserte Telefoner samt å være en tilbyder som alltid er konkurransedyktig på pris.
     Vi er en av de første til å introdusere Kinesiske toppmodeller som: Xiaomi, Huawei, Zoppo, Oppo- telefoner og tjenester. Vi er også opptatt av å gjøre det enkelt for våre kunder.
     Er du derfor prisbevisst, tilbyr vi deg gode priser med full garanti og reklamasjonsrett, og konkurransedyktige i markedet.
    </p>
    <br />
    <br />
    <br /><br /><br /><br /><br /><br />
    <h3>Våre priser</h3>
    <p>
        I motsetning til andre nettbutikker tilbyr Vi kun mobiltelefoner og tilbehør til mobiltelefoner. Dette fordi vi ikke ønsker å forvirre deg som kunde og for at du skal kunne velge den perfekte telefonen som passer deg. Våre mobiler er kåret til &quot;best i test&quot; på gizchina.com, og bør være et veldig godt alternativ for deg som ønsker litt mer for pengene.
    </p>
    <br />
    <br /><br />
      <h3>Pressekontakt</h3>
    <p>
        Daglig leder: Felipe Coutinho<br/>
        E-post: FC@Mobaton.no
    </p>
    

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h3>Log inn</h3>
<asp:Login ID="Login1" runat="server" LoginButtonText="Logg inn" PasswordLabelText="Passord:" RememberMeText="Husk meg til neste gang" TitleText="" UserNameLabelText="Epost"></asp:Login>
     <h5>Ikke bruker?, glemt passord</h5>
    <asp:Button ID="Reg" runat="server" Text="Registrer" Width="88px" /> 
    &nbsp;&nbsp;&nbsp; 
    <asp:Button ID="Glemt" runat="server" Text="Passord" Width="88px" /> 


    </asp:Content>


