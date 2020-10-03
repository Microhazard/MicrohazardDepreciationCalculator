<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DepreciationCalculator.aspx.cs" Inherits="Tamano_DepreciationCalculator.DepreciationCalculator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="lib/twitter-bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <title>Depreciation Calculator</title>
    <script src="lib/jquery/jquery.min.js"></script>
    <script src="lib/twitter-bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
    <div class="container p-3 my-3 border rounded-top">
        <center><h2>Depreciation Calculator</h2></center>
        <form runat ="server">
            <div class ="row">
                <div class ="col">
                    <div class="form-group">
                        <label for="InitialCost">Initial Cost:</label>
                        <asp:TextBox ID="initialCost" type="number" class="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="SalvageValue">Salvage Value:</label>
                        <asp:TextBox ID="salvageValue" type="number" class="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="Life">Life:</label>
                        <div class="col-xs-5 selectContainer">

                            <select class="form-control" name="size" runat="server" id="life">
                                <option value="">Select the lifespan</option>
                            </select>
                        </div>
                    </div>
                    <div class ="container ">
                        <h5>Depreciation</h5>
                        <asp:RadioButton ID="straightLine" GroupName="Depreciation" runat="server" />
                        <label for="SumOfYears">Straight Line</label>
                        <br />
                        <asp:RadioButton ID="sumOfYears" GroupName="Depreciation" runat="server"/>
                        <label for="SumOfYears">Sum of Years</label>
                    </div>
                    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                    <asp:UpdatePanel ID="up_list" runat="server">
                        <ContentTemplate>
                    <asp:Button ID="UpdateSchedule" class="btn btn-primary" runat="server" Text="Update Schedule" OnClick="UpdateSchedule_Click"/>
                    <div class="modal fade" id="errorModal" role="dialog">
                        <div class="modal-dialog">    
                          <!-- Modal content-->
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h4>Error</h4>
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                </div>
                            <div class="modal-body">
                                <center><asp:Label ID="errorText" runat="server" Text="Label"></asp:Label></center>
                            </div>
                            <div class="modal-footer">
                                <div class ="text-center"><button type="button" class="btn btn-default" data-dismiss="modal">Close</button></div>
                            </div>
                          </div>
                        </div>
                    </div>
                   <div class ="container p-3 my-3 border">
                        <center><h3>Depreciation Schedule</h3></center>
                            <asp:table runat="server" cssClass="table" id ="scheduleResults">
                              <asp:TableHeaderRow CssClass ="thead-dark">
                                  <asp:TableHeaderCell>Year</asp:TableHeaderCell>
                                  <asp:TableHeaderCell>Depreciation</asp:TableHeaderCell>
                                  <asp:TableHeaderCell>Book Value</asp:TableHeaderCell>
                              </asp:TableHeaderRow>
                                </asp:table>
                                </div>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                   <!-- END Modal content-->
                </div>
            </div>
        </form>
    </div>
</body>
</html>
