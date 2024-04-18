<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CRMpage.aspx.cs" Inherits="ProtechCRM.CRMpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet"/>
    <link href="assets/css/style.css" rel="stylesheet"/>
</head>
<body>
    <%--<form id="form1" runat="server">
        <div>
        </div>
    </form>--%>

    <main id="main" class="main">
 
    <div class="pagetitle">
      <h1>Welcome To Protech</h1>
     
    </div>
    <section class="section">
      <div class="row">
        <div class="col-lg-10">
 
         
 
          <div class="card">
            <div class="card-body">
             
              <form class="row g-3" id="form1" runat="server">
                <div class="col-md-3">
                  <label for="lblPhone" class="form-label">Phone</label>
                  <%--<input type="text" class="form-control" id="txtPhone" runat="server"/>--%>
                  <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-md-3">
                 
                </div>
                <div class="col-md-3">
                  <label for="lblCaseId" class="form-label">Case ID</label>
                  <%--<input type="text" class="form-control" id="txtCaseId" runat="server"/>--%>
                  <asp:TextBox ID="txtCaseId" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-md-3">
                </div>
                <%--<div class="col-md-4">
                  <label for="lblCaseType" class="form-label">Case Type</label>
                 
    <asp:DropDownList ID="ddlCaseType" class="form-select" runat="server"  >
    <asp:ListItem Value="">-- select a Case --</asp:ListItem>
    <asp:ListItem Value="Stop">Stop Now</asp:ListItem>
    <asp:ListItem Value="Visit">Visit Soon</asp:ListItem>
    <asp:ListItem Value="Crash">Crash Alert</asp:ListItem>
    </asp:DropDownList>
                </div>--%>
                <%--<div class="col-md-2">
                </div>--%>
                <div class="col-md-4">
                  <label for="lblAltnumberDri" class="form-label">Alternate Number (Driver)</label>
                  <%--<input type="text" class="form-control" id="txtaltNumberDri" runat="server"/>--%>
                  <asp:TextBox ID="txtaltNumberDri" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-md-2">
                </div>
                <div class="col-md-4">
                  <label for="lblAltNumberOwn" class="form-label">Alternate Number (Owner)</label>
                  <%--<input type="text" class="form-control" id="txtAltNumberOwn" runat="server"/>--%>
                  <asp:TextBox ID="txtAltNumberOwn" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-md-2">
                </div>
                <div class="col-md-3">
                  <label for="lblCallertype" class="form-label">Caller Type</label>
                 
    <asp:DropDownList Id="ddlCallerType" runat="server" class="form-select" AutoPostBack="True" >
    <asp:ListItem >SELECT</asp:ListItem>
    <asp:ListItem Value="Driver"></asp:ListItem>
    <asp:ListItem Value="Owner"></asp:ListItem>
    <asp:ListItem Value="Kam Owner"></asp:ListItem>
    <asp:ListItem Value="Fleet Manager"></asp:ListItem>
    <asp:ListItem Value="Site In-charge"></asp:ListItem>
    <asp:ListItem Value="Kam Manager"></asp:ListItem>
    <asp:ListItem Value="Technical Supervisor"></asp:ListItem>
    <asp:ListItem Value="ASE"></asp:ListItem>
    <asp:ListItem Value="WM"></asp:ListItem>
    <asp:ListItem Value="MD"></asp:ListItem>
    <asp:ListItem Value="CSM"></asp:ListItem>
    <asp:ListItem Value="ASM"></asp:ListItem>
    <asp:ListItem Value="RSM"></asp:ListItem>
    <asp:ListItem Value="EV VECV 1st Member"></asp:ListItem>
    <asp:ListItem Value="EV VECV 2nd Member"></asp:ListItem>
    <asp:ListItem Value="EV VECV 3rd Member"></asp:ListItem>
    </asp:DropDownList>
                </div>
                <div class="col-md-3">
                </div>
                <div class="col-md-3">
                  <label for="lblContactSource" class="form-label">Contact Source</label>
                
        <asp:DropDownList Id="ddlContact" runat="server" class="form-select" AutoPostBack="True" >
        <asp:ListItem>SELECT</asp:ListItem>
        <asp:ListItem Value="CMT"></asp:ListItem>
        <asp:ListItem Value="EOS"></asp:ListItem>
        <asp:ListItem Value="Eicher Live"></asp:ListItem>
        <asp:ListItem Value="HD DATA"></asp:ListItem>
        <asp:ListItem Value="Kam Data"></asp:ListItem>
        <asp:ListItem Value="CDM PORTAL"></asp:ListItem>
        </asp:DropDownList>

                </div>
                <div class="col-md-3">
                </div>
                <div class="col-md-3">
                  <label for="lblConnectivity" class="form-label">Connectivity</label>
                 

<asp:DropDownList Id="ddlConnect" runat="server" class="form-select" AutoPostBack="True" >
<asp:ListItem>SELECT</asp:ListItem>
<asp:ListItem Value="YES"></asp:ListItem>
<asp:ListItem Value="NO"></asp:ListItem>
</asp:DropDownList>

                </div>
                <div class="col-md-3">
                </div>
                <div class="col-md-3">
                  <label for="lblIssueVerified" class="form-label">Issue Verified</label>
                  

<asp:DropDownList Id="ddlIssue" runat="server" class="form-select" AutoPostBack="True" >
<asp:ListItem>SELECT</asp:ListItem>
<asp:ListItem Value="YES"></asp:ListItem>
<asp:ListItem Value="NO"></asp:ListItem>
</asp:DropDownList>

                </div>
                <div class="col-md-3">
                </div>
                <div class="col-md-3">
                  <label for="lblCaseStatus" class="form-label">Case Status</label>
                  

<asp:DropDownList Id="ddlCaseStatus" runat="server" class="form-select" AutoPostBack="True" >
<asp:ListItem>SELECT</asp:ListItem>
<asp:ListItem Value="OPEN"></asp:ListItem>
<asp:ListItem Value="IN PROGRESS"></asp:ListItem>
<asp:ListItem Value="CLOSED"></asp:ListItem>
</asp:DropDownList>
                </div>
                <div class="col-md-3">
                </div>
                <div class="col-md-4">
                  <label for="lblDSR" class="form-label">DealerShip Support Required</label>
                 
<asp:DropDownList Id="ddlDealer" runat="server" class="form-select" AutoPostBack="True" >
<asp:ListItem>SELECT</asp:ListItem>
<asp:ListItem Value="YES"></asp:ListItem>
<asp:ListItem Value="NO"></asp:ListItem>
<asp:ListItem Value="NA"></asp:ListItem>
</asp:DropDownList>

                </div>
                <div class="col-md-2">
                </div>
                <div class="col-md-4">
                  <label for="lblConCall" class="form-label">Con Call Done With Driver</label>
                
<asp:DropDownList Id="ddlConCall" runat="server" class="form-select" AutoPostBack="True" >
<asp:ListItem>SELECT</asp:ListItem>
<asp:ListItem Value="YES"></asp:ListItem>
<asp:ListItem Value="NO"></asp:ListItem>
<asp:ListItem Value="NA"></asp:ListItem>
</asp:DropDownList>

                </div>
                <div class="col-md-2">
                </div>
                <div class="col-md-4">
                  <label for="lblASR" class="form-label">Ambulance Support Required</label>
                  
<asp:DropDownList Id="ddlAmbulanceSupport" runat="server" class="form-select" AutoPostBack="True" >
<asp:ListItem>SELECT</asp:ListItem>
<asp:ListItem Value="YES"></asp:ListItem>
<asp:ListItem Value="NO"></asp:ListItem>
<asp:ListItem Value="NA"></asp:ListItem>
</asp:DropDownList>
                </div>
                <div class="col-md-2">
                </div>
                <div class="col-md-4">
                  <label for="lblABR" class="form-label">Ambulance Booking Required</label>
            
<asp:DropDownList Id="ddlAmbulanceBooking" runat="server" class="form-select" AutoPostBack="True" >
<asp:ListItem>SELECT</asp:ListItem>
<asp:ListItem Value="YES"></asp:ListItem>
<asp:ListItem Value="NO"></asp:ListItem>
<asp:ListItem Value="NA"></asp:ListItem>
</asp:DropDownList>
                </div>
                <div class="col-md-2">
                </div>

                              <div class="col-md-2">
                                <label for="lblCaseType" class="form-label">Case Type</label>
             
                                    <asp:DropDownList ID="ddlCaseType" class="form-select" runat="server"  >
                                    <asp:ListItem Value="">-- Select --</asp:ListItem>
                                    <asp:ListItem Value="Stop">Stop Now</asp:ListItem>
                                    <asp:ListItem Value="Visit">Visit Soon</asp:ListItem>
                                    <asp:ListItem Value="Crash">Crash Alert</asp:ListItem>
                                    </asp:DropDownList>
                              </div>

                <div class="col-md-6">
                  <label for="lblDisp" class="form-label">Select Disposition</label>
                 

     <asp:DropDownList ID="ddlSelectDispose" runat="server" class="form-select">
    <asp:ListItem Value=""> -- select a Disp -- </asp:ListItem>
    <asp:ListItem data-value="Stop" Value="Stop_ISSUE_VERIFIED">Stop-Now_ISSUE VERIFIED</asp:ListItem>
    <asp:ListItem data-value="Stop" Value="Stop_ISSUE_NOT_VERIFIED">Stop-Now_ISSUE NOT VERIFIED</asp:ListItem>
    <asp:ListItem data-value="Stop" Value="Stop_INCORRECT_CONTACT">Stop-Now_INCORRECT CONTACT PERSON</asp:ListItem>
    <asp:ListItem data-value="Stop" Value="Stop_SITE_VEHICLE">Stop-Now_SITE VEHICLE</asp:ListItem>
    <asp:ListItem data-value="Stop" Value="Stop_INCOMPLETE_CALL">Stop-Now_INCOMPLETE CALL</asp:ListItem>
    <asp:ListItem data-value="Stop" Value="Stop_CALL_BACK">Stop-Now_CALL BACK</asp:ListItem>
    <asp:ListItem data-value="Stop" Value="Stop_FOLLOW">Stop-Now_FOLLOW UP</asp:ListItem>
    <asp:ListItem data-value="Stop" Value="Stop_LANGUAGE">Stop-Now_LANGUAGE BARRIER</asp:ListItem>

    <asp:ListItem data-value="Visit" Value="Visit_ISSUE_VERIFIED">Visit-Soon_ISSUE VERIFIED</asp:ListItem>
    <asp:ListItem data-value="Visit" Value="Visit_ISSUE_NOT_VERIFIED">Visit-Soon_ISSUE NOT VERIFIED</asp:ListItem>
    <asp:ListItem data-value="Visit" Value="Visit_INCORRECT_CONTACT">Visit-Soon_INCORRECT CONTACT PERSON</asp:ListItem>
    <asp:ListItem data-value="Visit" Value="Visit_SITE_VEHICLE">Visit-Soon_SITE VEHICLE</asp:ListItem>
    <asp:ListItem data-value="Visit" Value="Visit_INCOMPLETE_CALL">Visit-Soon_INCOMPLETE CALL</asp:ListItem>
    <asp:ListItem data-value="Visit" Value="Visit_CALL_BACK">Visit-Soon_CALL BACK</asp:ListItem>
    <asp:ListItem data-value="Visit" Value="Visit_FOLLOW">Visit-Soon_FOLLOW UP</asp:ListItem>
    <asp:ListItem data-value="Visit" Value="Visit_LANGUAGE">Visit-Soon_LANGUAGE BARRIER</asp:ListItem>

    <asp:ListItem data-value="Crash" Value="Crash_ISSUE_VERIFIED">Crash-Alert_ISSUE VERIFIED</asp:ListItem>
    <asp:ListItem data-value="Crash" Value="Crash_ISSUE_NOT_VERIFIED">Crash-Alert_ISSUE NOT VERIFIED</asp:ListItem>
    <asp:ListItem data-value="Crash" Value="Crash_INCORRECT_CONTACT">Crash-Alert_INCORRECT CONTACT PERSON</asp:ListItem>
    <asp:ListItem data-value="Crash" Value="Crash_SITE_VEHICLE">Crash-Alert_SITE VEHICLE</asp:ListItem>
    <asp:ListItem data-value="Crash" Value="Crash_INCOMPLETE_CALL">Crash-Alert_INCOMPLETE CALL</asp:ListItem>
    <asp:ListItem data-value="Crash" Value="Crash_CALL_BACK">Crash-Alert_CALL BACK</asp:ListItem>
    <asp:ListItem data-value="Crash" Value="Crash_FOLLOW">Crash-Alert_FOLLOW UP</asp:ListItem>
    <asp:ListItem data-value="Crash" Value="Crash_LANGUAGE">Crash-Alert_LANGUAGE BARRIER</asp:ListItem>
</asp:DropDownList>

                </div>
                <div class="col-md-6">
                  <label for="lblSubDisp" class="form-label">Select Sub-Disposition</label>
                 

    <asp:DropDownList ID="ddlSubDisposition" runat="server" class="form-select">
    <asp:ListItem Value=""> -- select a Sub-Disp -- </asp:ListItem>
    <asp:ListItem data-value="Visit_ISSUE_VERIFIED">Ask to Call back</asp:ListItem>
    <asp:ListItem data-value="Visit_ISSUE_VERIFIED">Breakdown Registered</asp:ListItem>
    <asp:ListItem data-value="Visit_ISSUE_VERIFIED">EOS Already Registered</asp:ListItem>
    <asp:ListItem data-value="Visit_ISSUE_VERIFIED">Vehicle Need to Visit Dealership</asp:ListItem>
    <asp:ListItem data-value="Visit_ISSUE_VERIFIED">Denied to Visit Workshop</asp:ListItem>
    <asp:ListItem data-value="Visit_ISSUE_VERIFIED">Accidental Vehicle</asp:ListItem>
    <asp:ListItem data-value="Visit_ISSUE_VERIFIED">Vehicle Already Visit to Workshop</asp:ListItem>
    <asp:ListItem data-value="Visit_ISSUE_VERIFIED">Vehicle in Dealership</asp:ListItem>

    <asp:ListItem data-value="Visit_ISSUE_NOT_VERIFIED">Ask to Call back</asp:ListItem>
    <asp:ListItem data-value="Visit_ISSUE_NOT_VERIFIED">Denied to Visit Dealership</asp:ListItem>
    <asp:ListItem data-value="Visit_ISSUE_NOT_VERIFIED">Already Vehicle Visited</asp:ListItem>
    <asp:ListItem data-value="Visit_ISSUE_NOT_VERIFIED">Vehicle is in Accidental Condition</asp:ListItem>
    <asp:ListItem data-value="Visit_ISSUE_NOT_VERIFIED">EOS registered for another Issue</asp:ListItem>
    <asp:ListItem data-value="Visit_ISSUE_NOT_VERIFIED">No Issue in Vehicle</asp:ListItem>

    <asp:ListItem data-value="Visit_INCORRECT_CONTACT">Wrong Number</asp:ListItem>
    <asp:ListItem data-value="Visit_INCORRECT_CONTACT">Need to call Another Person</asp:ListItem>

    <asp:ListItem data-value="Visit_SITE_VEHICLE">Ask to Call back</asp:ListItem>
    <asp:ListItem data-value="Visit_SITE_VEHICLE">Work in Progress</asp:ListItem>
    <asp:ListItem data-value="Visit_SITE_VEHICLE">No Issue in Vehicle</asp:ListItem>

    <asp:ListItem data-value="Visit_INCOMPLETE_CALL">Call Drop</asp:ListItem>
    <asp:ListItem data-value="Visit_INCOMPLETE_CALL">Immediate Drop</asp:ListItem>
    <asp:ListItem data-value="Visit_INCOMPLETE_CALL">Call Drop During Conversation</asp:ListItem>
    <asp:ListItem data-value="Visit_INCOMPLETE_CALL">Call Disconnect by Customer</asp:ListItem>

    <asp:ListItem data-value="Visit_CALL_BACK">CALL BACK</asp:ListItem>

    <asp:ListItem data-value="Visit_FOLLOW">Call to Driver</asp:ListItem>
    <asp:ListItem data-value="Visit_FOLLOW">Call to Owner</asp:ListItem>
    <asp:ListItem data-value="Visit_FOLLOW">Call to Site Incharge/Dealer/ WM</asp:ListItem>
    <asp:ListItem data-value="Visit_FOLLOW">Call to CSM/ASM/RSM</asp:ListItem>
    <asp:ListItem data-value="Visit_FOLLOW">Call to Technical Supervisor/ASE</asp:ListItem>
    <asp:ListItem data-value="Visit_FOLLOW">Call to Fleet / KAM Manager</asp:ListItem>
    <asp:ListItem data-value="Visit_FOLLOW">Opportunity Lost</asp:ListItem>
    <asp:ListItem data-value="Visit_FOLLOW">Closed</asp:ListItem>

    <asp:ListItem data-value="Visit_LANGUAGE">Hindi</asp:ListItem>
    <asp:ListItem data-value="Visit_LANGUAGE">English</asp:ListItem>
    <asp:ListItem data-value="Visit_LANGUAGE">Tamil</asp:ListItem>
    <asp:ListItem data-value="Visit_LANGUAGE">Telugu</asp:ListItem>
    <asp:ListItem data-value="Visit_LANGUAGE">Kannada</asp:ListItem>
    <asp:ListItem data-value="Visit_LANGUAGE">Other Language</asp:ListItem>
    <asp:ListItem data-value="Visit_LANGUAGE">Malayalam</asp:ListItem>

 


<asp:ListItem data-value="Stop_ISSUE_VERIFIED">Ask to Call back</asp:ListItem>
<asp:ListItem data-value="Stop_ISSUE_VERIFIED">Breakdown Registered</asp:ListItem>
<asp:ListItem data-value="Stop_ISSUE_VERIFIED">EOS Already Registered</asp:ListItem>
<asp:ListItem data-value="Stop_ISSUE_VERIFIED">Customer Denied to Raise EOS Ticket</asp:ListItem>
<asp:ListItem data-value="Stop_ISSUE_VERIFIED">Moving to Workshop</asp:ListItem>
<asp:ListItem data-value="Stop_ISSUE_VERIFIED">Customer want to Visit Workshop</asp:ListItem>
<asp:ListItem data-value="Stop_ISSUE_VERIFIED">Vehicle in Dealership</asp:ListItem>

<asp:ListItem data-value="Stop_ISSUE_NOT_VERIFIED">Ask to Call back</asp:ListItem>
<asp:ListItem data-value="Stop_ISSUE_NOT_VERIFIED">Escalate to L2</asp:ListItem>
<asp:ListItem data-value="Stop_ISSUE_NOT_VERIFIED">Vehicle is in Accidental Condition</asp:ListItem>
<asp:ListItem data-value="Stop_ISSUE_NOT_VERIFIED">EOS registered for another Issue</asp:ListItem>
<asp:ListItem data-value="Stop_ISSUE_NOT_VERIFIED">No Issue in Vehicle</asp:ListItem>

<asp:ListItem data-value="Stop_INCORRECT_CONTACT">Wrong Number</asp:ListItem>
<asp:ListItem data-value="Stop_INCORRECT_CONTACT">Need to call Another Person</asp:ListItem>
<asp:ListItem data-value="Stop_INCORRECT_CONTACT">Vehicle Sale out</asp:ListItem>
<asp:ListItem data-value="Stop_INCORRECT_CONTACT">Escalate to L2</asp:ListItem>

<asp:ListItem data-value="Stop_SITE_VEHICLE">Ask to Call back</asp:ListItem>
<asp:ListItem data-value="Stop_SITE_VEHICLE">Work in Progress</asp:ListItem>
<asp:ListItem data-value="Stop_SITE_VEHICLE">No Issue in Vehicle</asp:ListItem>

<asp:ListItem data-value="Stop_INCOMPLETE_CALL">Call Drop</asp:ListItem>
<asp:ListItem data-value="Stop_INCOMPLETE_CALL">Call Drop During Conversation</asp:ListItem>
<asp:ListItem data-value="Stop_INCOMPLETE_CALL">Call Disconnect by Customer</asp:ListItem>
<asp:ListItem data-value="Stop_INCOMPLETE_CALL">Immidiate Drop</asp:ListItem>

<asp:ListItem data-value="Stop_CALL_BACK">CALL BACK</asp:ListItem>

<asp:ListItem data-value="Stop_FOLLOW">Call to Driver</asp:ListItem>
<asp:ListItem data-value="Stop_FOLLOW">Call to Owner</asp:ListItem>
<asp:ListItem data-value="Stop_FOLLOW">Call to Dealer/ WM</asp:ListItem>
<asp:ListItem data-value="Stop_FOLLOW">Call to CSM/ASM/RSM</asp:ListItem>
<asp:ListItem data-value="Stop_FOLLOW">Call to Fleet / KAM Manager</asp:ListItem>
<asp:ListItem data-value="Stop_FOLLOW">Call to Technical Supervisior/ASE</asp:ListItem>
<asp:ListItem data-value="Stop_FOLLOW">Opportunity Lost</asp:ListItem>
<asp:ListItem data-value="Stop_FOLLOW">Closed</asp:ListItem>

<asp:ListItem data-value="Stop_LANGUAGE">Hindi</asp:ListItem>
<asp:ListItem data-value="Stop_LANGUAGE">English</asp:ListItem>
<asp:ListItem data-value="Stop_LANGUAGE">Tamil</asp:ListItem>
<asp:ListItem data-value="Stop_LANGUAGE">Telugu</asp:ListItem>
<asp:ListItem data-value="Stop_LANGUAGE">Kannada</asp:ListItem>
<asp:ListItem data-value="Stop_LANGUAGE">Other Language</asp:ListItem>
<asp:ListItem data-value="Stop_LANGUAGE">Malayalam</asp:ListItem>

<asp:ListItem data-value="Crash_ISSUE_VERIFIED">Ask to Call back</asp:ListItem>
<asp:ListItem data-value="Crash_ISSUE_VERIFIED">Breakdown Registered</asp:ListItem>
<asp:ListItem data-value="Crash_ISSUE_VERIFIED">EOS Already Registered</asp:ListItem>
<asp:ListItem data-value="Crash_ISSUE_VERIFIED">Will visit to Dealership</asp:ListItem>
<asp:ListItem data-value="Crash_ISSUE_VERIFIED">Dealership Detail Shared - Ambulance Required</asp:ListItem>
<asp:ListItem data-value="Crash_ISSUE_VERIFIED">Dealership Detail Shared - Ambulance Not Required</asp:ListItem>
<asp:ListItem data-value="Crash_ISSUE_VERIFIED">Vehicle in Dealership</asp:ListItem>

<asp:ListItem data-value="Crash_ISSUE_NOT_VERIFIED">Ask to Call back</asp:ListItem>
<asp:ListItem data-value="Crash_ISSUE_NOT_VERIFIED">No issue in Vehicle</asp:ListItem>

<asp:ListItem data-value="Crash_INCORRECT_CONTACT">Wrong Number</asp:ListItem>
<asp:ListItem data-value="Crash_INCORRECT_CONTACT">Need to call Another Person</asp:ListItem>

<asp:ListItem data-value="Crash_SITE_VEHICLE">Will check then update</asp:ListItem>
<asp:ListItem data-value="Crash_SITE_VEHICLE">Work in Progress</asp:ListItem>
<asp:ListItem data-value="Crash_SITE_VEHICLE">No issue in Vehicle</asp:ListItem>

<asp:ListItem data-value="Crash_INCOMPLETE_CALL">Call Drop During Conversation</asp:ListItem>
<asp:ListItem data-value="Crash_INCOMPLETE_CALL">Call Disconnect by Customer</asp:ListItem>

<asp:ListItem data-value="Crash_CALL_BACK">CALL BACK</asp:ListItem>

<asp:ListItem data-value="Crash_FOLLOW">Call to Driver</asp:ListItem>
<asp:ListItem data-value="Crash_FOLLOW">Call to Owner</asp:ListItem>
<asp:ListItem data-value="Crash_FOLLOW">Call to Dealer/ WM</asp:ListItem>
<asp:ListItem data-value="Crash_FOLLOW">Call to CSM/ASM/RSM</asp:ListItem>
<asp:ListItem data-value="Crash_FOLLOW">Call to Fleet / KAM Manager</asp:ListItem>
<asp:ListItem data-value="Crash_FOLLOW">Opportunity Lost</asp:ListItem>
<asp:ListItem data-value="Crash_FOLLOW">Closed</asp:ListItem>

<asp:ListItem data-value="Crash_LANGUAGE">Hindi</asp:ListItem>
<asp:ListItem data-value="Crash_LANGUAGE">English</asp:ListItem>
<asp:ListItem data-value="Crash_LANGUAGE">Tamil</asp:ListItem>
<asp:ListItem data-value="Crash_LANGUAGE">Telugu</asp:ListItem>
<asp:ListItem data-value="Crash_LANGUAGE">Kannada</asp:ListItem>
<asp:ListItem data-value="Crash_LANGUAGE">Other Language</asp:ListItem>
<asp:ListItem data-value="Crash_LANGUAGE">Malayalam</asp:ListItem> 

</asp:DropDownList>
                </div>
               
                <div class="col-12">
                  <label for="lblComment" class="form-label">Comments</label>
                  <%--<input type="text" class="form-control" id="txtComment" placeholder="Comments..." runat="server"/>--%>
                  <asp:TextBox ID="txtComment" runat="server" CssClass="form-control" placeholder="Comments..."></asp:TextBox>
                </div>
               
                <div class="text-center">
                  <asp:Button ID="btnSubmit" runat="server" Text="Submit"  class="btn btn-primary" OnClick="btnSubmit_Click"/>
                  <%--<button type="submit" class="btn btn-primary">Submit</button>--%>
                </div>
              </form>
 
            </div>
          </div>
 
        </div>
 
      </div>
    </section>
 
  </main>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <script>
        $(document).ready(function () {

            // Save all selects' id in an array 
            // to determine which select's option and value would be changed
            // after you select an option in another select.
            var selectors = ['ddlCaseType', 'ddlSelectDispose', 'ddlSubDisposition']

            $('select').on('change', function () {
                var index = selectors.indexOf(this.id)
                var value = this.value

                // check if is the last one or not
                if (index < selectors.length - 1) {
                    var next = $('#' + selectors[index + 1])

                    // Show all the options in next select
                    $(next).find('option').show()
                    if (value != "") {
                        // if this select's value is not empty
                        // hide some of the options 
                        $(next).find('option[data-value!=' + value + ']').hide()
                    }

                    // set next select's value to be the first option's value 
                    // and trigger change()
                    $(next).val($(next).find("option:first").val()).change()
                }
            })
        });
    </script>
    <script src="assets/js/main.js"></script>
</body>
</html>