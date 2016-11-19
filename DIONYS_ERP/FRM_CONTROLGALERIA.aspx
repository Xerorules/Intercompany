<%@ Page Title="" Language="C#" MasterPageFile="~/PLANTILLAS/MENU_SUPERIOR.Master" AutoEventWireup="true" CodeBehind="FRM_CONTROLGALERIA.aspx.cs" Inherits="DIONYS_ERP.FRM_CONTROLGALERIA" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 101px;
        }
        
        .auto-style5 {
        }
        .auto-style9 {
            height: 27px;
            width: 30px;
        }
        .auto-style12 {
            height: 27px;
            width: 82px;
        }
        .auto-style15 {
            height: 27px;
            width: 107px;
        }
        .auto-style18 {
            width: 30px;
        }
        .auto-style20 {
            width: 82px;
        }
        .auto-style21 {
            width: 87px;
        }
        .auto-style23 {
            width: 107px;
        }
        .auto-style24 {
            height: 20px;
            width: 76px;
        }
        .auto-style25 {
            height: 27px;
            width: 76px;
        }
        .auto-style26 {
            height: 20px;
        }
        .auto-style27 {
            width: 87px;
            height: 20px;
        }
        .auto-style28 {
            height: 20px;
        }
                        
    </style>
    <link href="ESTILOS/ESTILOS_FRM_PRINCIPAL.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <h2 style="color:white;font-family: Tahoma ">CONTROL DE TIENDAS GALERIA</h2>
    <div>
     <fieldset>
            <legend style="outline-color:white;color:white;font-weight:bold;font-family:Tahoma">FILTROS</legend>
                    <table class="auto-style1" style="background-color:steelblue;border-color:white ">
                        <tr>
                            <td style="text-align: center">
                                <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Names="Tahoma" ForeColor="White" Text="SELECCIONAR GALERIA"></asp:Label>
                            </td>
                            <td style="text-align: center">
                                <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Names="Tahoma" ForeColor="White" Text="PROPIETARIO"></asp:Label>
                            </td>
                            <td style="text-align: center">
                                <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Names="Tahoma" ForeColor="White" Text="TIENDA O STAND"></asp:Label>
                            </td>
                            <td style="text-align: center">
                                <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Names="Tahoma" ForeColor="White" Text="CONDICIÓN"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: center">
                                <asp:RadioButtonList ID="rdbLISTAGALERIAS" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Tahoma" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="White" Width="449px" style="text-align: left" OnSelectedIndexChanged="rdbLISTAGALERIAS_SelectedIndexChanged" AutoPostBack="True">
                                    <asp:ListItem Value="GG">GALERIA VIRGEN GUADALUPE</asp:ListItem>
                                    <asp:ListItem Value="GM">GALERIA VIRGEN NUESTRA SEÑORA LA MERCED</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                            <td style="text-align: center">
                                <asp:DropDownList ID="cboPROPIETARIOS" runat="server" Height="26px" Width="279px" Font-Bold="True" Font-Italic="True" Font-Names="Tahoma" OnSelectedIndexChanged="cboPROPIETARIOS_SelectedIndexChanged" AutoPostBack="True">
                                </asp:DropDownList>
                            </td>
                            <td style="text-align: center">
                                <asp:DropDownList ID="cboTIENDAS" runat="server" Height="26px" Width="259px" Font-Bold="True" Font-Italic="True" Font-Names="Tahoma">
                                </asp:DropDownList>
                            </td>
                            <td style="text-align: center">
                                <asp:DropDownList ID="cboESTADO" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Tahoma" Height="28px" Width="237px">
                                    <asp:ListItem Value="%">TODOS</asp:ListItem>
                                    <asp:ListItem Value="OCUPADO">OCUPADO</asp:ListItem>
                                    <asp:ListItem Value="DISPONIBLE">DISPONIBLE</asp:ListItem>
                                    <asp:ListItem>MANTENIMIENTO</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        </table>
         </fieldset>
    </div>
    <div>
        <fieldset>
           

            <table class="auto-style1">
                <tr>
                    <td style="text-align: center" class="auto-style26">
                        </td>
                    <td style="text-align: center" class="auto-style27">
                        </td>
                    <td style="text-align: center" class="auto-style28" colspan="4">
                        <asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Italic="False" Font-Names="Tahoma" Font-Size="14pt" ForeColor="White" Text="LEYENDA"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center" class="auto-style5" rowspan="2">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:ImageButton ID="imgBtnCONSULTAR" runat="server" AlternateText="CONSULTAR" Height="56px" ImageAlign="Baseline" ImageUrl="~/ICONOS/BUSCAR.png" OnClick="imgBtnCONSULTAR_Click" Width="84px" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:ImageButton ID="imgBtnEXCEL" runat="server" Height="58px" ImageUrl="~/ICONOS/EXPORTAR_EXCEL.png" OnClick="imgBtnEXCEL_Click" Width="83px" />
                        &nbsp;&nbsp;
                        &nbsp;</td>
                    <td style="text-align: center" class="auto-style21" rowspan="2">
                        &nbsp;</td>
                    <td style="text-align: center;background-color:green" class="auto-style23">
                        <asp:Label ID="Label18" runat="server" Font-Bold="True" Font-Names="Tahoma" Font-Size="10pt" ForeColor="White" Text="MES PAGADO"></asp:Label>
                    </td>
                    <td style="text-align: center" class="auto-style24">
                        &nbsp;</td>
                    <td style="text-align: center" class="auto-style18">
                        <asp:Image ID="Image1" runat="server" Height="31px" ImageUrl="~/ICONOS/OCUPADO.png" Width="30px" />
                    </td>
                    <td style="text-align: left" class="auto-style20">
                        <asp:Label ID="Label16" runat="server" Font-Bold="True" Font-Names="Tahoma" ForeColor="White" style="text-align: center" Text="VACIO"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center ;background-color:darkred" class="auto-style15">
                        <asp:Label ID="Label19" runat="server" Font-Bold="True" Font-Names="Tahoma" Font-Size="10pt" ForeColor="White" Text="MES EN PROCESO"></asp:Label>
                    </td>
                    <td style="text-align: center" class="auto-style25">
                        &nbsp;</td>
                    <td style="text-align: center" class="auto-style9">
                        <asp:Image ID="Image2" runat="server" Height="27px" ImageUrl="~/ICONOS/VACIO.png" Width="29px" />
                    </td>
                    <td style="text-align: left" class="auto-style12">
                        <asp:Label ID="Label17" runat="server" Font-Bold="True" Font-Names="Tahoma" ForeColor="White" Text="OCUPADO"></asp:Label>
                    </td>
                </tr>
            </table>
           

        </fieldset>
    </div>
    <br />
 
    
    <div>
        <fieldset>
           <legend style="outline-color:white;color:white;font-weight:bold;font-family:Tahoma">DATOS</legend>

          
           

            <asp:GridView ID="gvDATOSCONTROL_GALERIA" runat="server" CellPadding="3" GridLines="None" Width="100%" AutoGenerateColumns="False" Font-Names="Tahoma" Font-Size="10pt" OnRowDataBound="gvDATOSCONTROL_GALERIA_RowDataBound" Font-Bold="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellSpacing="1" DataKeyNames="CGESTADO,CGTIENDA,CGCLIENTE,CGPROPIETARIO,CGENERO,CGFEBRERO,CGMARZO,CGABRIL,CGMAYO,CGJUNIO,CGJULIO,CGAGOSTO,CGSEPTIEMBRE,CGOCTUBRE,CGNOVIEMBRE,CGDICIEMBRE">
                <Columns>
                    <asp:BoundField DataField="CGCODIGO" HeaderText="CODIGO" />
                    <asp:BoundField DataField="CGTIENDA" HeaderText="TIENDA" />
                    <asp:BoundField DataField="CGCLIENTE" HeaderText="CLIENTE" />
                    <asp:BoundField DataField="CGPROPIETARIO" HeaderText="PROPIETARIO" />
                    <asp:BoundField DataField="CGENERO" HeaderText="ENERO" >
                    <ItemStyle Font-Bold="True" HorizontalAlign="Center" Width="6%" />
                    </asp:BoundField>
                    <asp:BoundField DataField="CGFEBRERO" HeaderText="FEBRERO" >
                    <ItemStyle Font-Bold="True" HorizontalAlign="Center" Width="6%" />
                    </asp:BoundField>
                    <asp:BoundField DataField="CGMARZO" HeaderText="MARZO" >
                    <ItemStyle Font-Bold="True" HorizontalAlign="Center" Width="6%" />
                    </asp:BoundField>
                    <asp:BoundField DataField="CGABRIL" HeaderText="ABRIL" >
                    <ItemStyle Font-Bold="True" HorizontalAlign="Center" Width="6%" />
                    </asp:BoundField>
                    <asp:BoundField DataField="CGMAYO" HeaderText="MAYO">
                    <ItemStyle Font-Bold="True" HorizontalAlign="Center" Width="6%" />
                    </asp:BoundField>
                    <asp:BoundField DataField="CGJUNIO" HeaderText="JUNIO" >
                    <ItemStyle Font-Bold="True" HorizontalAlign="Center" Width="6%" />
                    </asp:BoundField>
                    <asp:BoundField DataField="CGJULIO" HeaderText="JULIO" >
                    <ItemStyle Font-Bold="True" HorizontalAlign="Center" Width="6%" />
                    </asp:BoundField>
                    <asp:BoundField DataField="CGAGOSTO" HeaderText="AGOSTO" >
                    <ItemStyle Font-Bold="True" HorizontalAlign="Center" Width="6%" />
                    </asp:BoundField>
                    <asp:BoundField DataField="CGSEPTIEMBRE" HeaderText="SEPTIEMBRE" >
                    <ItemStyle Font-Bold="True" HorizontalAlign="Center" Width="6%" />
                    </asp:BoundField>
                    <asp:BoundField DataField="CGOCTUBRE" HeaderText="OCTUBRE" >
                    <ItemStyle Font-Bold="True" HorizontalAlign="Center" Width="6%" />
                    </asp:BoundField>
                    <asp:BoundField DataField="CGNOVIEMBRE" HeaderText="NOVIEMBRE" >
                    <ItemStyle Font-Bold="True" HorizontalAlign="Center" Width="6%" />
                    </asp:BoundField>
                    <asp:BoundField DataField="CGDICIEMBRE" HeaderText="DICIEMBRE" >
                    <ItemStyle Font-Bold="True" HorizontalAlign="Center" Width="6%" />
                    </asp:BoundField>
                    <asp:BoundField DataField="CGESTADO" HeaderText="CGESTADO" Visible="False" />
                    <asp:TemplateField HeaderText="ESTADO">
                        <ItemTemplate>
                            <asp:Image ID="imgESTADO" runat="server" Height="31px" Width="33px" />
                        </ItemTemplate>
                        <FooterStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        <ItemStyle Font-Strikeout="False" HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:TemplateField>
                </Columns>
                <EditRowStyle Font-Names="Tahoma" />
                <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="#E7E7FF" Font-Names="Tahoma" Font-Size="8pt" HorizontalAlign="Center" VerticalAlign="Middle" />
                <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#DEDFDE" Height="50px" Font-Names="Tahoma" ForeColor="Black" Font-Bold="False" />
                <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#594B9C" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#33276A" />
            </asp:GridView>

          
           

        </fieldset>
    </div>

    

</asp:Content>
