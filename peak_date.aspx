<%@ Page Language="VB" AutoEventWireup="false" CodeFile="peak_date.aspx.vb" Inherits="peak_date" %>

<!DOCTYPE html>
<%@ Register TagPrefix="poy" TagName="header" Src="~/UCghead2.ascx" %>
<%@ Register TagPrefix="poy" TagName="footer" Src="~/UCgfooter.ascx" %>
<%@ Register TagPrefix="poy" TagName="css" Src="~/UCgcss.ascx" %>
<%@ Register TagPrefix="poy" TagName="js" Src="~/UCgjs.ascx" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Scada Graph</title>
    <poy:css ID="UCcss" runat="server" />
</head>
<body>
    <div class="col-md-12" align="center">
        <h2>Peak by Date
        </h2>
    </div>
    <poy:header ID="UCmenu1" runat="server" />
    <div class="container">



        <form id="form1" runat="server">
            <div>


                <div class="form-group">
                    <br />

                    <div class="row">
                        <div class="col-md-3">
                            Substation :
            <asp:DropDownList ID="DropDownList1" runat="server" Height="30px" Width="130px" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Substation" DataValueField="Substation">
            </asp:DropDownList>

                        </div>
                        <div class="col-md-3">
                            Feeder : 
            <asp:DropDownList ID="DropDownList2" runat="server" Height="30px" Width="152px" AutoPostBack="True"
                DataSourceID="SqlDataSource3" DataTextField="Feeder" DataValueField="Feeder">
            </asp:DropDownList>

                        </div>


                        <div class="col-md-4">

                            <div class="input-group input-large date-picker input-daterange" data-date="10/11/2012" data-date-format="mm/dd/yyyy">

                                <input placeholder="จากวันที่" id="textbox1" name="textbox1" runat="server" type="text" class="form-control" />
                                <span class="input-group-addon">to </span>
                                <input placeholder="ถึงวันที่" id="textbox2" name="textbox2" runat="server" type="text" class="form-control" />
                            </div>
                            <!-- /input-group -->
                        </div>
                        <div class="col-md-2">

                            <asp:Button ID="Button1" runat="server" Text="ตกลง" Width="96px" Height="35px" />
                        </div>



                        &nbsp;&nbsp;
                                            <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
                        &nbsp;&nbsp;
                                            <asp:Label ID="Label2" runat="server" Visible="False"></asp:Label>


                    </div>


                </div>

           <table align="center">

<tr>
    <td>
          <asp:Chart ID="Chart1" runat="server" Width="1240px" Height="500px" DataSourceID="SqlDataSource1" SuppressExceptions="True" TextAntiAliasingQuality="SystemDefault" Visible="False">
                        <Series>
                            <asp:Series Name="Active Power(MW)" XValueMember="Date1" YValueMembers="MW" ChartArea="ChartArea1" LabelFormat="{0:F1}" IsValueShownAsLabel="True" XValueType="Date">
                            </asp:Series>
                            <asp:Series ChartArea="ChartArea1" LabelFormat="{0:F1}" Legend="Legend1" Name="Reactive Power(MVAR)" XValueMember="Date1" YValueMembers="MVAR" IsValueShownAsLabel="True" XValueType="Date" YValueType="Int64">
                            </asp:Series>
                            <asp:Series ChartArea="ChartArea1" LabelFormat="{0:F1}" Legend="Legend1" Name="UN(%)" XValueMember="Date1" YValueMembers="UN" IsValueShownAsLabel="True" XValueType="Date" YValueType="Int64">
                            </asp:Series>
                        </Series>
                        <ChartAreas>
                             <asp:ChartArea Name="ChartArea1">
                    <AxisX Title="Date">
                    </AxisX>
                      <AxisY Title="Power" TextOrientation="Auto">
                    </AxisY>
                </asp:ChartArea>
                        </ChartAreas>
                        <Legends>
                            <asp:Legend Name="Legend1">
                            </asp:Legend>
                        </Legends>
                        <Titles>
                            <asp:Title Name="Title1" Text="กราฟแสดงโหลดสูงสุดรายฟีดเดอร์ตามช่วงเวลา " Font="Angsana New, 16pt">
                            </asp:Title>
                        </Titles>
                    </asp:Chart>

    </td>

</tr>

                  

            

          
                <tr>

                    <td>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" Width="486px" BorderStyle="None">
                        <Columns>
                            <asp:BoundField DataField="Date1" HeaderText="Date/Time" SortExpression="Date1" HeaderStyle-HorizontalAlign="Center" DataFormatString="{0:dd-MMM-yyyy HH:mm:ss}"></asp:BoundField>
                            <asp:BoundField DataField="MW" HeaderText="MW" SortExpression="MW" HeaderStyle-HorizontalAlign="Center" DataFormatString="{0:F2}"></asp:BoundField>
                            <asp:BoundField DataField="MVAR" HeaderText="MVAR" SortExpression="MVAR" HeaderStyle-HorizontalAlign="Center" DataFormatString="{0:F2}"></asp:BoundField>
                            <asp:BoundField DataField="UN" HeaderText="UN" SortExpression="UN" HeaderStyle-HorizontalAlign="Center" DataFormatString="{0:F2}"></asp:BoundField>
                        </Columns>
                        <FooterStyle BackColor="White" ForeColor="#000066" />
                        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                        <RowStyle ForeColor="#000066" />
                        <SelectedRowStyle BackColor="#669999" ForeColor="White" Font-Bold="True" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#007DBB" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#00547E" />
                    </asp:GridView>


                    </td>

                </tr>


            </table>
            </div>        

                    <br />


               
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:stagingConnectionString %>" SelectCommand="SELECT MW, MVAR, UN, Date1 FROM stg.feeder_peak WHERE (Substation = @subname) AND (Feeder = @feeder) AND (Date1 &gt; CONVERT (DATETIME, @date1, 102)) AND (Date1 &lt; CONVERT (DATETIME, @date2, 102)) ORDER BY Date1">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" DefaultValue="BSH" Name="subname" PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="DropDownList2" DefaultValue="" Name="feeder" PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="Label1" DefaultValue="" Name="date1" PropertyName="Text" />
                        <asp:ControlParameter ControlID="Label2" Name="date2" PropertyName="Text" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dw_scadaConnectionString %>" SelectCommand="SELECT        Substation
FROM            scada.View_subname"></asp:SqlDataSource>

                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:stagingConnectionString %>" SelectCommand="SELECT Feeder, Substation FROM stg.feeder_peak GROUP BY Feeder, Substation HAVING (Substation LIKE + @sub + '%') ORDER BY Feeder">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="sub" PropertyName="SelectedValue" />
                    </SelectParameters>
                </asp:SqlDataSource>
   
        </form>


    </div>

    <poy:footer ID="UCfooter" runat="server" />
    <poy:js ID="UCjs" runat="server" />
</body>
</html>
