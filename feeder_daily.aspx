<%@ Page Language="VB" AutoEventWireup="false" CodeFile="feeder_daily.aspx.vb" Inherits="feeder_daily" %><%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html>
<%@ Register TagPrefix="poy" TagName="header" Src="~/UCghead2.ascx" %>
<%@ Register TagPrefix="poy" TagName="footer" Src="~/UCgfooter.ascx" %>
<%@ Register TagPrefix="poy" TagName="css" Src="~/UCgcss.ascx" %>
<%@ Register TagPrefix="poy" TagName="js" Src="~/UCgjs.ascx" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Scada Graph C1</title>
     <poy:css ID="UCcss" runat="server" />
</head>
<body>  <div class="col-md-12" align="center">
                                  <h2 >  Daily Load
                        </h2>
                                      </div> 
    <poy:header ID="UCmenu1" runat="server" />
    <div class="container">
     
         
    <form id="form1" runat="server">
    <div>
       <div class="form-group">
             <br/>
            <div class="col-md-3">
                Substation : 
            <asp:DropDownList ID="DropDownList1" runat="server" Height="30px" Width="100px" AutoPostBack="True"
                                            DataSourceID="SqlDataSource2" DataTextField="sub_name" DataValueField="sub_name">
                                        </asp:DropDownList>
            
                </div> 
            <div class="col-md-2">
                 Feeder : 
            <asp:DropDownList ID="DropDownList2" runat="server" Height="30px" Width="100px" AutoPostBack="True"
                                            DataSourceID="SqlDataSource4" DataTextField="feedername" DataValueField="feedername">
                                        </asp:DropDownList>
            
                </div>
        

                                        <div class="col-md-4">
                                           
											<div class="input-group input-large date-picker input-daterange" data-date="10/11/2012" data-date-format="mm/dd/yyyy">
												<input id="textbox1" name="textbox1" runat="server" type="text" class="form-control" placeholder="จากวันที่" />
												<span class="input-group-addon">
												to </span>
												<input  id="textbox2" name="textbox2" runat="server" type="text" class="form-control" placeholder="ถึงวันที่" />
											
                                            </div>
											<!-- /input-group -->
										</div>
										  <div class="col-md-2">
                                            
                                            <asp:Button ID="Button1" runat="server" Text="ตกลง" Width="96px" Height="35px" />
                                                 </div>
                                              <div class="col-md-2">
                                             <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/Excel2.jpg" Visible="False" />
                                              </div>
                                            <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
   
                                            <asp:Label ID="Label2" runat="server" Visible="False"></asp:Label>
                                          
										&nbsp;
           
           

		</div>								
										

    </div>
        <br />
 
        <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1" Width="1241px" Height="500px" Palette="None" PaletteCustomColors="Lime; Olive; Red; Yellow; Blue" Visible="False">
            <series>

                   
                           <asp:Series ChartType="Spline" Name="Active Power(MW)" XValueMember="Date1" YValueMembers="MW" BorderWidth="2" Legend="Legend1" XValueType="DateTime" ChartArea="ChartArea1" LabelToolTip="#VALX" ToolTip="Real Power :#VALX{dd/MM/yyy HH:mm}= #VAL{D} MW" YValueType="Int32" LegendToolTip="#VAL" MapAreaAttributes="#VAL">
                               <EmptyPointStyle IsValueShownAsLabel="True" />
                </asp:Series>
                       
                            <asp:Series BorderWidth="2" ChartArea="ChartArea1" ChartType="Spline" LabelFormat="{0:F2}" Legend="Legend1" Name="UN" XValueMember="Date1" XValueType="DateTime" YValueMembers="UN" ToolTip="UN :#VALX{dd/MM/yyy HH:mm}= #VAL{D} %">
                </asp:Series>
                      
                           <asp:Series BorderWidth="2" ChartArea="ChartArea1" ChartType="Spline" LabelFormat="{0:F2}" Legend="Legend1" Name="Current(A)" XValueMember="Date1" XValueType="DateTime" YValueMembers="Ia" ToolTip="I A :#VALX{dd/MM/yyy HH:mm}= #VAL{D} A">
                </asp:Series>
                     
                           <asp:Series BorderWidth="2" ChartArea="ChartArea1" ChartType="Spline" LabelFormat="{0:F2}" Legend="Legend1" Name="Current(B)" XValueMember="Date1" XValueType="DateTime" YValueMembers="Ib" ToolTip="I B :#VALX{dd/MM/yyy HH:mm}= #VAL{D} A">
                </asp:Series>
                      
                           <asp:Series BorderWidth="2" ChartArea="ChartArea1" ChartType="Spline" LabelFormat="{0:F2}" Legend="Legend1" Name="Current(C)" XValueMember="Date1" XValueType="DateTime" YValueMembers="Ic" ToolTip="I C :#VALX{dd/MM/yyy HH:mm}= #VAL{D} A">
                </asp:Series>

  
            </series>
            <MapAreas>
                <asp:MapArea Coordinates="0,0,0,0" />
            </MapAreas>
            <chartareas>
                <asp:ChartArea Name="ChartArea1">
                    <AxisX  Title="Date">
                        <LabelStyle Format="dd/MM/yyyy HH:mm" ForeColor="Blue" Interval="Auto" IntervalOffset="Auto" IntervalOffsetType="Auto" IntervalType="Auto" IsStaggered="True" TruncatedLabels="True" />
                    </AxisX>
                                         <AxisY Title="Power" TextOrientation="Auto">
                    </AxisY>
                </asp:ChartArea>
            </chartareas>
            <Legends>
                <asp:Legend Name="Legend1">
                </asp:Legend>
            </Legends>
            <Titles>
                <asp:Title Name="Title1" Text="กราฟแสดงปริมาณไฟฟ้าต่างๆตามช่วงเวลา" Font="Angsana New, 16pt">
                </asp:Title>
            </Titles>
        </asp:Chart>


         <table  align="center">
                        <tr>
                            <td class="auto-style1">
                 <br />
  <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Horizontal" Width="792px" DataKeyNames="Substation,Feeder,Date1" Visible="False">
      <AlternatingRowStyle BackColor="#F7F7F7" />
      <Columns>
          <asp:BoundField DataField="Substation" HeaderText="Substation" ReadOnly="True" SortExpression="Substation" >
          <ItemStyle HorizontalAlign="Center" />
          </asp:BoundField>
          <asp:BoundField DataField="Feeder" HeaderText="Feeder" ReadOnly="True" SortExpression="Feeder" >
          <ItemStyle HorizontalAlign="Center" />
          </asp:BoundField>
          <asp:BoundField DataField="Ia" HeaderText="Ia" SortExpression="Ia" DataFormatString="{0:F2}" >
          <ItemStyle HorizontalAlign="Center" />
          </asp:BoundField>
          <asp:BoundField DataField="Ib" HeaderText="Ib" SortExpression="Ib" DataFormatString="{0:F2}" >
          <ItemStyle HorizontalAlign="Center" />
          </asp:BoundField>
          <asp:BoundField DataField="Ic" HeaderText="Ic" SortExpression="Ic" DataFormatString="{0:F2}" >
          <ItemStyle HorizontalAlign="Center" />
          </asp:BoundField>
          <asp:BoundField DataField="MW" HeaderText="MW" SortExpression="MW" DataFormatString="{0:F2}" >
          <ItemStyle HorizontalAlign="Center" />
          </asp:BoundField>
          <asp:BoundField DataField="MVAR" HeaderText="MVAR" SortExpression="MVAR" DataFormatString="{0:F2}" >
          <ItemStyle HorizontalAlign="Center" />
          </asp:BoundField>
          <asp:BoundField DataField="UN" HeaderText="UN" SortExpression="UN" DataFormatString="{0:F2}" >
          <ItemStyle HorizontalAlign="Center" />
          </asp:BoundField>
          <asp:BoundField DataField="PF" HeaderText="PF" SortExpression="PF" DataFormatString="{0:F2}" >
          <ItemStyle HorizontalAlign="Center" />
          </asp:BoundField>
          <asp:BoundField DataField="Date1" HeaderText="Date1" ReadOnly="True" SortExpression="Date1" DataFormatString="{0:dd-MMM-yyyy HH:mm:ss}"   >
          <ItemStyle HorizontalAlign="Center" />
          </asp:BoundField>
      </Columns>
      <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
      <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
      <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
      <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
      <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
      <SortedAscendingCellStyle BackColor="#F4F4FD" />
      <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
      <SortedDescendingCellStyle BackColor="#D8D8F0" />
      <SortedDescendingHeaderStyle BackColor="#3E3277" />
        </asp:GridView>
                   </td>
                        </tr>
            
        </table>




        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dw_scada_c1ConnectionString %>" SelectCommand="SELECT DISTINCT sub_name AS sub_name FROM scada_c1.sub_name_daily"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:stagingConnectionString %>" SelectCommand="SELECT Area, Substation, Type, Feeder, Date1, Ia, Ib, Ic, MW, MWq, MVAR, PF, UN, CONVERT (TIME, Date1) AS time1 FROM stg.feeder_daily_c1 WHERE (Substation = @subname) AND (Feeder = @feeder) AND (Date1 &gt;= CONVERT (DATETIME, @date1, 102)) AND (Date1 &lt;= CONVERT (DATETIME, @date2, 102))">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" DefaultValue="BSH" Name="subname" PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="DropDownList2" Name="feeder" PropertyName="SelectedValue" DefaultValue="" />
                <asp:ControlParameter ControlID="Label1" DefaultValue="" Name="date1" PropertyName="Text" />
                <asp:ControlParameter ControlID="Label2" Name="date2" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
       
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:dw_scada_c1ConnectionString %>" SelectCommand="SELECT feedername, sub_name FROM scada_c1.sub_name_daily WHERE (sub_name = @subname) ORDER BY feedername">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="subname" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
       
    </form>
    


    </div>
    <poy:footer ID="UCfooter" runat="server" />
    <poy:js ID="UCjs" runat="server" />
</body>
</html>
