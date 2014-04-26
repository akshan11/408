<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/xml" prefix="x" %>

<html>
<head>

<title>Mets Ticket Information Request Form</title>

<link type="text/css" rel="stylesheet" href="./Mets Ticket Information Request Form   mets.com  Tickets_files/global.css">
<link type="text/css" rel="stylesheet" href="./Mets Ticket Information Request Form   mets.com  Tickets_files/global2.css" >
<link type="text/css" rel="stylesheet" href="./Mets Ticket Information Request Form   mets.com  Tickets_files/customCSS.css" >

</head>

<body>

<c:import url="WEB-INF/InternalDTD" var="x" /> 
<x:parse doc="${x}" var="tree"/>

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
		<td><input type="text" name="bill_fname" value="<x:out select="$tree/customer/name/first"/>" size="25"></td>
		<td class="pad3" align="right"><span class="red"><b>*</b></span> Last Name</td>
		<td><input type="text" name="bill_lname" value="<x:out select="$tree/customer/name/last"/>" size="25"></td>
	</tr>

	<tr valign="top">
		<td class="pad3" align="right">Company Name</td>
		<td><input type="text" name="company_name" value="<x:out select="$tree/customer/company"/>" size="25"></td>
		<td class="pad3" align="right">Contact's Name</td>
		<td><input type="text" name="contact_name" value="" size="25"></td>
	</tr>

	<tr valign="top">
		<td class="pad3" align="right"><span class="red"><b>*</b></span> Address</td>
		<td><input type="text" name="bill_addr1" value="<x:out select="$tree/customer/address/street1"/>" size="25"></td>
		<td class="pad3" align="right">Address 2</td>
		<td><input type="text" name="bill_addr2" value="<x:out select="$tree/customer/address/street2"/>" size="25"></td>
	</tr>
    
	<tr valign="top">
		<td class="pad3" align="right"><span class="red"><b>*</b></span> City</td>
		<td><input type="text" name="bill_city" value="<x:out select="$tree/customer/address/city"/>" size="25"></td>
		<td class="pad3" align="right"><span class="red"><b>*</b></span> State/Province</td>
		<td>
		<select name="bill_state" size="1">
			<option value="<x:out select="$tree/customer/address/state"/>"><x:out select="$tree/customer/address/state"/></option>
			<option value="CA">CA - California</option>
			<option value="MA">MA - Massachusetts</option>
			<option value="NY">NY - New York</option>
			<option value="PA">PA - Pennsylvania</option>
			<option value="NA">Non-US</option>
		</select>
		</td>
	</tr>

	<tr valign="top">
		<td class="pad3" align="right"><span class="red"><b>*</b></span> Zip/Postal Code</td>
		<td><input type="text" name="bill_zip" value="<x:out select="$tree/customer/address/zip"/>" size="25"></td>

		<td class="pad3" align="right"><span class="red"><b>*</b></span> Country</td>
		<td>
		<select name="bill_country" size="1">
			<option value="<x:out select="$tree/customer/address/country"/>"><x:out select="$tree/customer/address/country"/></option>
			<option value="US">United States</option>
			<option value="CA">Canada</option>
			<option value="GB">United Kingdom</option>
		</select>
		</td>
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
		<td align="left"><input type="text" name="work_tel" value="<x:out select="$tree/customer/phonenumber/day"/>" size="25"></td>
		<td class="pad3" align="right">Evening Phone</td>
		<td align="left"> <input type="text" name="home_tel" value="<x:out select="$tree/customer/phonenumber/evening"/>" size="25"></td>
	</tr>

	<tr valign="top">
		<td class="pad3" align="right">Mobile Phone</td>
		<td colspan="3" align="left">
		<input type="text" name="mobile_tel" value="<x:out select="$tree/customer/phonenumber/mobile"/>" size="25">
        
		<br><br>
		<input type="checkbox" name="mobile_opt" value="yes"> Enter your mobile phone information to receive text messages &amp; updates from mets.com and MLB.com (Optional, if checked, 'Mobile Phone' must be provided). Msg&amp;Data Rates may Apply. Reply <strong>"Stop"</strong> to cancel. Text <strong>"Help"</strong> or email <a href="mailto:mlb-mobile-cs@mlb.com">mlb-mobile-cs@mlb.com</a> for assistance. Expect 1-2 messages per week.<br><br>
		</td>
	</tr>

	<tr valign="top">
		<td class="pad3" align="right"><span class="red"><b>*</b></span> Birth Date</td>
		<td colspan="3" align="left">
		<select name="birth_mon">
			<option value="<x:out select="$tree/customer/birthday/mm"/>"><x:out select="$tree/customer/birthday/mm"/></option>
			<option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option><option value="6">6</option><option value="7">7</option><option value="8">8</option><option value="9">9</option><option value="10">10</option><option value="11">11</option><option value="12">12</option>
		</select> 
        <select name="birth_day">
			<option value="<x:out select="$tree/customer/birthday/dd"/>"><x:out select="$tree/customer/birthday/dd"/></option>
			<option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option><option value="6">6</option><option value="7">7</option><option value="8">8</option><option value="9">9</option><option value="10">10</option><option value="11">11</option><option value="12">12</option><option value="13">13</option><option value="14">14</option><option value="15">15</option><option value="16">16</option><option value="17">17</option><option value="18">18</option><option value="19">19</option><option value="20">20</option><option value="21">21</option><option value="22">22</option><option value="23">23</option><option value="24">24</option><option value="25">25</option><option value="26">26</option><option value="27">27</option><option value="28">28</option><option value="29">29</option><option value="30">30</option><option value="31">31</option>
		</select> 
        <select name="birth_year">
			<option value="<x:out select="$tree/customer/birthday/yyyy"/>"><x:out select="$tree/customer/birthday/yyyy"/></option>
			<option value="2013">2013</option><option value="2012">2012</option><option value="2011">2011</option><option value="2010">2010</option><option value="2009">2009</option><option value="2008">2008</option><option value="2007">2007</option><option value="2006">2006</option><option value="2005">2005</option><option value="2004">2004</option><option value="2003">2003</option><option value="2002">2002</option><option value="2001">2001</option><option value="2000">2000</option><option value="1999">1999</option><option value="1998">1998</option><option value="1997">1997</option><option value="1996">1996</option><option value="1995">1995</option><option value="1994">1994</option><option value="1993">1993</option><option value="1992">1992</option><option value="1991">1991</option><option value="1990">1990</option>
		</select><br>

		</td>
	</tr>

	<tr valign="top">
		<td class="pad3" align="right"><span class="red"><b>*</b></span> E-mail Address</td>
		<td colspan="3" align="left"><input type="text" name="email_addr" value="<x:out select="$tree/customer/email_addr"/>" size="25"></td>
	</tr>
	<tr valign="top">
		<td class="pad3" align="right">&nbsp;</td>
		<td colspan="3" align="left"><input type="checkbox" name="email_opt" value="yes" <x:out select="$tree/customer/email_opt"/> >&nbsp;I would like to receive commercial e-mails from mets.com and MLB.com.</td>
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
		<select name="num_attended" size="1">
			<option value="<x:out select="$tree/customer/how_many"/>"><x:out select="$tree/customer/how_many"/></option>
			<option value="0">0</option>
			<option value="1-5">1-5</option>
			<option value="6-10">6-10</option>
			<option value="11-20">11-20</option>
			<option value="21-40">21-40</option>
			<option value="41-81">41-81</option>
		</select><br><br>		
		<span class="red">*</span> &nbsp;<strong>I would like more information about:</strong><br>
		<input type="checkbox" name="more_info" value="Group Tickets" <x:out select="$tree/customer/more_info/group"/> > Group Tickets<br>
			<input type="checkbox" name="more_info" value="Season Tickets" <x:out select="$tree/customer/more_info/season"/> > Season Tickets <br>
			<input type="checkbox" name="more_info" value="Individual game tickets" <x:out select="$tree/customer/more_info/individual"/> > Individual game tickets<br>
			<input type="checkbox" name="more_info" value="Ticket Plans" <x:out select="$tree/customer/more_info/ticket_plans"/> > Ticket Plans <br>
		&nbsp;<br><br>		
		<span class="red">*</span> &nbsp;<strong>How would you like to be contacted?</strong><br>
		<select name="how_contact" size="1">
			<option value="<x:out select="$tree/customer/how_contact"/>"><x:out select="$tree/customer/how_contact"/></option>
			<option value="email">By E-mail</option>
			<option value="phone">By Phone</option>
			<option value="mail">By Mail</option>
		</select><br><br>		
		&nbsp;<strong>Comments:</strong><br>
		<textarea cols="50" rows="5" name="comments" id="comments"><x:out select="$tree/customer/comments"/></textarea>
		</td>
	</tr>
	</tbody>
</table>


<div class="second" style="font-size:11px;">
    &nbsp;<br>
	<input type="reset" name="reset" value=" Reset " class="btnGrey" onclick="((typeof displayShippingInfo !== &#39;undefined&#39;) ? setTimeout(&#39;displayShippingInfo()&#39;,1100) : null)" onmouseover="this.className=&#39;btnGreyOn&#39;" onmouseout="this.className=&#39;btnGrey&#39;" >&nbsp;&nbsp;
    <input type="submit" id="submitButton" name="submitButton" value=" Submit " class="btnGreen" onmouseover="this.className=&#39;btnGreenOn&#39;" onmouseout="this.className=&#39;btnGreen&#39;" ><br>
	&nbsp;<br>
</div>

</form>
	
	</div>
</div>

</body>
</html>