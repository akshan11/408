<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>

<title>Mets Ticket Information Request Form</title>

<link type="text/css" rel="stylesheet" href="./Mets Ticket Information Request Form   mets.com  Tickets_files/global.css">
<link type="text/css" rel="stylesheet" href="./Mets Ticket Information Request Form   mets.com  Tickets_files/global2.css" >
<link type="text/css" rel="stylesheet" href="./Mets Ticket Information Request Form   mets.com  Tickets_files/customCSS.css" >

</head>

<body 
<% 
	String id = request.getParameter("id"); 
	if(id.equals("false")) 
	{ 
%> 
	onload="alert('The form data is incomplete and/or incorrect. Please correctly fill out the fields highlighted in red.')" 
<% 
	}
	else if(id.equals("true"))
	{
%> 
	onload="alert('Congrats! All the form fields are correctly filled.')" 
<% 
	}
%>
>

<jsp:useBean id="OracleForm" class="bean.FormBean" scope="application" />

<p class="first"><img src="Mets Ticket Information Request Form   mets.com  Tickets_files/nym.png" alt=""><p>

<div id="mc_container">
	<div id="mc">
        <br>
        
<p class="second">Thank you for your request for additional Mets information. Please fill out and submit the form below. A Mets representative will contact you within one business day. We look forward to seeing you at Citi Field!</p>

<p class="second">During the offseason, the Mets Ticket office is open Monday through Friday from 9:00am until 5:30pm. </p>

<p class="disclaimer center">Please note that all fields marked with an asterisk (<span class="red">*</span>) are required.</p>

<form name="nym_2011_ticket_info_request" id="nym_2011_ticket_info_request" action="MetsServlet" method="get">

<table width="581" border="0" cellpadding="0" cellspacing="3" class="textSm">
    <tbody>
    <tr><td><img src="./Mets Ticket Information Request Form   mets.com  Tickets_files/trans.gif" width="118" height="1" alt=""></td>
		<td><img src="./Mets Ticket Information Request Form   mets.com  Tickets_files/trans.gif" width="165" height="1" alt=""></td>
		<td><img src="./Mets Ticket Information Request Form   mets.com  Tickets_files/trans.gif" width="118" height="1" alt=""></td>
		<td><img src="./Mets Ticket Information Request Form   mets.com  Tickets_files/trans.gif" width="165" height="1" alt=""></td>
        </tr>

	<tr valign="top">
		<td class="pad3" align="right"><span class="red"><b>*</b></span> First Name</td>
		<% 
			if(!OracleForm.getFirstName().isEmpty()) 
			{
		%>
				<td><input type="text" name="bill_fname" value="${OracleForm.firstName}" size="25"></td>
		<% 
			}
			else
			{
		%>
				<td><input class="error" type="text" name="bill_fname" value="" size="25"></td>
		<%
			}
		%>
		
		<td class="pad3" align="right"><span class="red"><b>*</b></span> Last Name</td>
		<% 
			if(!OracleForm.getLastName().isEmpty()) 
			{
		%>
				<td><input type="text" name="bill_lname" value="<%= OracleForm.getLastName() %>" size="25"></td>
		<% 
			}
			else
			{
		%>
				<td><input class="error" type="text" name="bill_lname" value="" size="25"></td>
		<%
			}
		%>
	</tr>

	<tr valign="top">
		<td class="pad3" align="right">Company Name</td>
		<td><input type="text" name="company_name" value="${OracleForm.companyName}" size="25"></td>
		<td class="pad3" align="right">Contact's Name</td>
		<td><input type="text" name="contact_name" value="${OracleForm.contactName}" size="25"></td>
	</tr>

	<tr valign="top">
		<td class="pad3" align="right"><span class="red"><b>*</b></span> Address</td>
		<% 
			if(!OracleForm.getAddress().isEmpty()) 
			{
		%>
				<td><input type="text" name="bill_addr1" value="<%= OracleForm.getAddress() %>" size="25"></td>
		<% 
			}
			else
			{
		%>
				<td><input class="error" type="text" name="bill_addr1" value="" size="25"></td>
		<%
			}
		%>
		<td class="pad3" align="right">Address 2</td>
		<td><input type="text" name="bill_addr2" value="${OracleForm.address2}" size="25"></td>
	</tr>
    
	<tr valign="top">
		<td class="pad3" align="right"><span class="red"><b>*</b></span> City</td>
		<% 
			if(!OracleForm.getCity().isEmpty()) 
			{
		%>
				<td><input type="text" name="bill_city" value="<%= OracleForm.getCity() %>" size="25"></td>
		<% 
			}
			else
			{
		%>
				<td><input class="error" type="text" name="bill_city" value="" size="25"></td>
		<%
			}
		%>
		
		<td class="pad3" align="right"><span class="red"><b>*</b></span> State/Province</td>
		<% 
			if(!OracleForm.getState().isEmpty()) 
			{
		%>
				<td>
				<select name="bill_state" size="1">
					<option value="<%= OracleForm.getState() %>" selected="selected"> <%= OracleForm.getState() %> </option>
					<option value="CA">CA - California</option>
					<option value="MA">MA - Massachusetts</option>
					<option value="NY">NY - New York</option>
					<option value="PA">PA - Pennsylvania</option>
					<option value="NA">Non-US</option>
				</select>
				</td>
		<% 
			}
			else
			{
		%>
				<td>
				<select class="error" name="bill_state" size="1">
					<option value="">- Select One -------------</option>
					<option value="CA">CA - California</option>
					<option value="MA">MA - Massachusetts</option>
					<option value="NY">NY - New York</option>
					<option value="PA">PA - Pennsylvania</option>
					<option value="NA">Non-US</option>
				</select>
				</td>
		<%
			}
		%>
	</tr>

	<tr valign="top">
		<td class="pad3" align="right"><span class="red"><b>*</b></span> Zip/Postal Code</td>
		<% 
			if(!OracleForm.getZip().isEmpty()) 
			{
		%>
				<td><input type="text" name="bill_zip" value="${OracleForm.zip}" size="25"></td>
		<% 
			}
			else
			{
		%>
				<td><input class="error" type="text" name="bill_zip" value="" size="25"></td>
		<%
			}
		%>
		
		<td class="pad3" align="right"><span class="red"><b>*</b></span> Country</td>
		<% 
			if(!OracleForm.getCountry().isEmpty()) 
			{
		%>
				<td>
				<select name="bill_country" size="1">
					<option value="<%= OracleForm.getCountry() %>" selected="selected"> <%= OracleForm.getCountry() %> </option>
					<option value="US">United States</option>
					<option value="CA">Canada</option>
					<option value="GB">United Kingdom</option>
				</select>
				</td>
		<% 
			}
			else
			{
		%>
				<td>
				<select class="error" name="bill_country" size="1">
					<option value="">- Select One -------------</option>
					<option value="US">United States</option>
					<option value="CA">Canada</option>
					<option value="GB">United Kingdom</option>
				</select>
				</td>
		<%
			}
		%>
	</tr>
    </tbody>
</table>


<table width="581" border="0" cellpadding="0" cellspacing="3" class="textSm">
	<tbody>
    <tr>
    <td><img src="./Mets Ticket Information Request Form   mets.com  Tickets_files/trans.gif" width="116" height="1" alt="" ></td>
	<td><img src="./Mets Ticket Information Request Form   mets.com  Tickets_files/trans.gif" width="165" height="1" alt="" ></td>
	<td><img src="./Mets Ticket Information Request Form   mets.com  Tickets_files/trans.gif" width="116" height="1" alt="" ></td>
	<td><img src="./Mets Ticket Information Request Form   mets.com  Tickets_files/trans.gif" width="165" height="1" alt="" ></td>
     </tr>
				
	<tr valign="top">
		<td class="pad3" align="right"><span class="red"><b>*</b></span> Day Phone</td>
		<% 
			if(!OracleForm.getDayPhone().isEmpty()) 
			{
		%>
				<td><input type="text" name="work_tel" value="<%= OracleForm.getDayPhone() %>" size="25"></td>
		<% 
			}
			else
			{
		%>
				<td><input class="error" type="text" name="work_tel" value="" size="25"></td>
		<%
			}
		%>
		<td class="pad3" align="right">Evening Phone</td>
		<td align="left"> <input type="text" name="home_tel" value="${OracleForm.eveningPhone}" size="25"></td>
	</tr>

	<tr valign="top">
		<td class="pad3" align="right">Mobile Phone</td>
		<td colspan="3" align="left">
		<input type="text" name="mobile_tel" value="${OracleForm.mobilePhone}" size="25">
        
		<br><br>
		<input type="checkbox" name="mobile_opt" value="yes"> Enter your mobile phone information to receive text messages &amp; updates from mets.com and MLB.com (Optional, if checked, 'Mobile Phone' must be provided). Msg&amp;Data Rates may Apply. Reply <strong>"Stop"</strong> to cancel. Text <strong>"Help"</strong> or email <a href="mailto:mlb-mobile-cs@mlb.com">mlb-mobile-cs@mlb.com</a> for assistance. Expect 1-2 messages per week.<br><br>
		</td>
	</tr>

	<tr valign="top">
		<td class="pad3" align="right"><span class="red"><b>*</b></span> Birth Date</td>
		<% 
			if(!OracleForm.getBirthMonth().isEmpty() && !OracleForm.getBirthDay().isEmpty() && !OracleForm.getBirthYear().isEmpty()) 
			{
		%>
				<td colspan="3" align="left">
				<select name="birth_mon">
					<option value="<%= OracleForm.getBirthMonth() %>">- <%= OracleForm.getBirthMonth() %> -</option>
					<option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option><option value="6">6</option><option value="7">7</option><option value="8">8</option><option value="9">9</option><option value="10">10</option><option value="11">11</option><option value="12">12</option>
				</select> 
        		<select name="birth_day">
					<option value="<%= OracleForm.getBirthDay() %>">- <%= OracleForm.getBirthDay() %> -</option>
					<option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option><option value="6">6</option><option value="7">7</option><option value="8">8</option><option value="9">9</option><option value="10">10</option><option value="11">11</option><option value="12">12</option><option value="13">13</option><option value="14">14</option><option value="15">15</option><option value="16">16</option><option value="17">17</option><option value="18">18</option><option value="19">19</option><option value="20">20</option><option value="21">21</option><option value="22">22</option><option value="23">23</option><option value="24">24</option><option value="25">25</option><option value="26">26</option><option value="27">27</option><option value="28">28</option><option value="29">29</option><option value="30">30</option><option value="31">31</option>
				</select> 
        		<select name="birth_year">
					<option value="<%= OracleForm.getBirthYear() %>">- <%= OracleForm.getBirthYear() %> -</option>
					<option value="2013">2013</option><option value="2012">2012</option><option value="2011">2011</option><option value="2010">2010</option><option value="2009">2009</option><option value="2008">2008</option><option value="2007">2007</option><option value="2006">2006</option><option value="2005">2005</option><option value="2004">2004</option><option value="2003">2003</option><option value="2002">2002</option><option value="2001">2001</option><option value="2000">2000</option><option value="1999">1999</option><option value="1998">1998</option><option value="1997">1997</option><option value="1996">1996</option><option value="1995">1995</option><option value="1994">1994</option><option value="1993">1993</option><option value="1992">1992</option><option value="1991">1991</option><option value="1990">1990</option>
				</select><br>
				</td>
		<% 
			}
			else
			{
		%>
				<td colspan="3" align="left">
				<select name="birth_mon" class="error">
					<option value="">- mm -</option>
					<option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option><option value="6">6</option><option value="7">7</option><option value="8">8</option><option value="9">9</option><option value="10">10</option><option value="11">11</option><option value="12">12</option>
				</select> 
        		<select name="birth_day" class="error">
					<option value="">- dd -</option>
					<option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option><option value="6">6</option><option value="7">7</option><option value="8">8</option><option value="9">9</option><option value="10">10</option><option value="11">11</option><option value="12">12</option><option value="13">13</option><option value="14">14</option><option value="15">15</option><option value="16">16</option><option value="17">17</option><option value="18">18</option><option value="19">19</option><option value="20">20</option><option value="21">21</option><option value="22">22</option><option value="23">23</option><option value="24">24</option><option value="25">25</option><option value="26">26</option><option value="27">27</option><option value="28">28</option><option value="29">29</option><option value="30">30</option><option value="31">31</option>
				</select> 
        		<select name="birth_year" class="error">
					<option value="">- yyyy -</option>
					<option value="2013">2013</option><option value="2012">2012</option><option value="2011">2011</option><option value="2010">2010</option><option value="2009">2009</option><option value="2008">2008</option><option value="2007">2007</option><option value="2006">2006</option><option value="2005">2005</option><option value="2004">2004</option><option value="2003">2003</option><option value="2002">2002</option><option value="2001">2001</option><option value="2000">2000</option><option value="1999">1999</option><option value="1998">1998</option><option value="1997">1997</option><option value="1996">1996</option><option value="1995">1995</option><option value="1994">1994</option><option value="1993">1993</option><option value="1992">1992</option><option value="1991">1991</option><option value="1990">1990</option>
				</select><br>
				</td>
		<%
			}
		%>
	</tr>

	<tr valign="top">
		<td class="pad3" align="right"><span class="red"><b>*</b></span> E-mail Address</td>
		<% 
			if(!OracleForm.getEmail().isEmpty()) 
			{
				if(!OracleForm.emailError()) 
				{
				%>
					<td colspan="3" align="left"><input class="error" type="text" name="email_addr" value="" size="25"></td>
				<% 
				}
				else
				{
				%>
					<td colspan="3" align="left"><input type="text" name="email_addr" value="<%= OracleForm.getEmail() %>" size="25"></td>
				<%
				}
			}
			else
			{
		%>
				<td colspan="3" align="left"><input class="error" type="text" name="email_addr" value="" size="25"></td>
		<%
			}
		%>
	</tr>
	<tr valign="top">
		<td class="pad3" align="right">&nbsp;</td>
		<td colspan="3" align="left"><input type="checkbox" name="email_opt" value="yes">&nbsp;I would like to receive commercial e-mails from mets.com and MLB.com.</td>
	</tr>
	</tbody>
</table>


<table width="649" border="0" cellpadding="0" cellspacing="3" class="textSm">
	<tbody>
    <tr>
    <td width="151"><img src="./Mets Ticket Information Request Form   mets.com  Tickets_files/trans.gif" width="118" height="1" alt="" ></td>
	<td width="165"><img src="./Mets Ticket Information Request Form   mets.com  Tickets_files/trans.gif" width="165" height="1" alt="" ></td>
	<td width="132"><img src="./Mets Ticket Information Request Form   mets.com  Tickets_files/trans.gif" width="118" height="1" alt="" ></td>
	<td width="186"><img src="./Mets Ticket Information Request Form   mets.com  Tickets_files/trans.gif" width="165" height="1" alt="" ></td>
    </tr>
    
	<tr valign="top">
		<td class="pad3" align="right">&nbsp;</td>
		<td colspan="3">
		<span class="red">*</span> &nbsp;<strong>About how many Mets games did you attend in 2012:</strong><br>
		<% 
			if(!OracleForm.getNumAttended().isEmpty()) 
			{
			%>
				<select name="num_attended" size="1">
					<option value="<%= OracleForm.getNumAttended() %>"> <%= OracleForm.getNumAttended() %></option>
					<option value="0">0</option>
					<option value="1-5">1-5</option>
					<option value="6-10">6-10</option>
					<option value="11-20">11-20</option>
					<option value="21-40">21-40</option>
					<option value="41-81">41-81</option>
				</select>				
			<% 
			}
			else
			{
			%>
				<select class="error" name="num_attended" size="1">
					<option value="">- Select One ------------------</option>
					<option value="0">0</option>
					<option value="1-5">1-5</option>
					<option value="6-10">6-10</option>
					<option value="11-20">11-20</option>
					<option value="21-40">21-40</option>
					<option value="41-81">41-81</option>
				</select>							
			<%
			}
		%>
		<br><br>	
	
		<% 
			String[] moreInfo = OracleForm.getMoreInfo();
			if(moreInfo == null)
			{
		%>
			<span class="red">*</span> &nbsp;<strong><span class="red"><u>I would like more information about:</u></span></strong><br>
			<input type="checkbox" name="more_info" value="Group Tickets" > Group Tickets<br>
			<input type="checkbox" name="more_info" value="Season Tickets" > Season Tickets <br>
			<input type="checkbox" name="more_info" value="Individual game tickets" > Individual game tickets<br>
			<input type="checkbox" name="more_info" value="Ticket Plans" > Ticket Plans <br>
			<input type="checkbox" name="more_info" value="Suites" > Suites<br>
			<input type="checkbox" name="more_info" value="Group Hospitality Areas" > Group Hospitality Areas<br>
			<input type="checkbox" name="more_info" value="Mets Gift Certificates" > Mets Gift Certificates<br>
		<%
			}
			else
			{
		%>
			<span class="red">*</span> &nbsp;<strong>I would like more information about:</strong><br>
			<input type="checkbox" name="more_info" value="Group Tickets" <% for(int i = 0; i < moreInfo.length; i++) { if(moreInfo[i].equals("Group Tickets")){ %> checked <% }} %>> Group Tickets<br>
			<input type="checkbox" name="more_info" value="Season Tickets" <% for(int i = 0; i < moreInfo.length; i++) { if(moreInfo[i].equals("Season Tickets")){ %> checked <% }} %> > Season Tickets <br>
			<input type="checkbox" name="more_info" value="Individual game tickets" <% for(int i = 0; i < moreInfo.length; i++) { if(moreInfo[i].equals("Individual game tickets")){ %> checked <% }} %>> Individual game tickets<br>
			<input type="checkbox" name="more_info" value="Ticket Plans" <% for(int i = 0; i < moreInfo.length; i++) { if(moreInfo[i].equals("Ticket Plans")){ %> checked <% }} %>> Ticket Plans <br>
			<input type="checkbox" name="more_info" value="Suites" <% for(int i = 0; i < moreInfo.length; i++) { if(moreInfo[i].equals("Suites")){ %> checked <% }} %>> Suites<br>
			<input type="checkbox" name="more_info" value="Group Hospitality Areas" <% for(int i = 0; i < moreInfo.length; i++) { if(moreInfo[i].equals("Group Hospitality Areas")){ %> checked <% }} %>> Group Hospitality Areas<br>
			<input type="checkbox" name="more_info" value="Mets Gift Certificates" <% for(int i = 0; i < moreInfo.length; i++) { if(moreInfo[i].equals("Mets Gift Certificates")){ %> checked <% }} %>> Mets Gift Certificates<br>
		<% 
			}
		%>
		&nbsp;<br><br>		
		
		<span class="red">*</span> &nbsp;<strong>How would you like to be contacted?</strong><br>
		<% 
			if(!OracleForm.getHowContact().isEmpty()) 
			{
		%>
				<select name="how_contact" size="1">
					<option value="<%= OracleForm.getHowContact() %>"> <%= OracleForm.getHowContact() %></option>
					<option value="email">By E-mail</option>
					<option value="phone">By Phone</option>
					<option value="mail">By Mail</option>
				</select>				
		<% 
			}
			else
			{
		%>
				<select class="error" name="how_contact" size="1">
					<option value="">- Select One ------------------</option>
					<option value="email">By E-mail</option>
					<option value="phone">By Phone</option>
					<option value="mail">By Mail</option>
				</select>
		<%
			}
		%>
		<br><br>		
		&nbsp;<strong>Comments:</strong><br>
		<textarea cols="50" rows="5" name="comments" id="comments"><%= OracleForm.getComments() %></textarea>
		</td>
	</tr>
	</tbody>
</table>


<div class="second" style="font-size:11px;">
    &nbsp;<br>
	<input type="button" name="reset" value=" Reset " class="btnGrey" onclick="window.location='index.html'" onmouseover="this.className=&#39;btnGreyOn&#39;" onmouseout="this.className=&#39;btnGrey&#39;" >&nbsp;&nbsp;
    <input type="submit" id="submitButton" name="submitButton" value=" Submit " class="btnGreen" onmouseover="this.className=&#39;btnGreenOn&#39;" onmouseout="this.className=&#39;btnGreen&#39;" ><br>
	&nbsp;<br>
</div>

</form>
	
	</div>
</div>

</body>
</html>