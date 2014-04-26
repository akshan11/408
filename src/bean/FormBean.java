package bean;

import java.io.Serializable;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * @author Akshan
 *
 */
public class FormBean implements Serializable 
{
	//Instance Variables
	private String firstName, lastName, companyName, contactName, address, address2, city, state, 
						zip, country, dayPhone, eveningPhone, mobilePhone, email,
						birthMonth, birthDay, birthYear, numAttended, howContact, comments;	
	private String[] moreInfo;

	/**
	 * Empty Constructor
	 */
	public FormBean() {
		// TODO Auto-generated constructor stub
	}
	
	/**
	 * Checks for form validity
	 */
	public boolean isValid(){
		
		if(getFirstName().isEmpty() || getLastName().isEmpty() || getAddress().isEmpty()
				|| getCity().isEmpty() || getState().isEmpty() || getZip().isEmpty()
				|| getCountry().isEmpty() || getDayPhone().isEmpty() || getEmail().isEmpty()
				|| getBirthMonth().isEmpty() || getBirthDay().isEmpty() || getBirthYear().isEmpty()
				|| getNumAttended().isEmpty() || getHowContact().isEmpty() 
				|| getMoreInfo() == null)
		{
			return false;
		}
		else 
		{
			return emailError();
		}
	}
	
	/**
	 * Checks for email error
	 */
	public boolean emailError()
	{
		CharSequence input = getEmail();
		String str = "^[\\w\\-]([\\.\\w])+[\\w]+@([\\w\\-]+\\.)+[A-Z]{2,4}$";
		Pattern p = Pattern.compile(str, Pattern.CASE_INSENSITIVE);
		Matcher m = p.matcher(input);
		return m.matches();
	}
	
	public boolean validZip()
	{
		String regex = "^\\d{5}(-\\d{4})?$";
		String zip = getZip();
		return Pattern.matches(regex, zip);
	}
	
	public boolean validPhone()
	{
		String regex = "^\\(?([0-9]{3})\\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$";
		String phone = getDayPhone();
		return Pattern.matches(regex, phone);
	}

	/**
	 * @return the firstName
	 */
	public String getFirstName() {
		return firstName;
	}

	/**
	 * @param firstName the firstName to set
	 */
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	/**
	 * @return the lastName
	 */
	public String getLastName() {
		return lastName;
	}

	/**
	 * @param lastName the lastName to set
	 */
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	/**
	 * @return the companyName
	 */
	public String getCompanyName() {
		return companyName;
	}

	/**
	 * @param companyName the companyName to set
	 */
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	/**
	 * @return the contactName
	 */
	public String getContactName() {
		return contactName;
	}

	/**
	 * @param contactName the contactName to set
	 */
	public void setContactName(String contactName) {
		this.contactName = contactName;
	}

	/**
	 * @return the address
	 */
	public String getAddress() {
		return address;
	}

	/**
	 * @param address the address to set
	 */
	public void setAddress(String address) {
		this.address = address;
	}

	/**
	 * @return the address2
	 */
	public String getAddress2() {
		return address2;
	}

	/**
	 * @param address2 the address2 to set
	 */
	public void setAddress2(String address2) {
		this.address2 = address2;
	}

	/**
	 * @return the city
	 */
	public String getCity() {
		return city;
	}

	/**
	 * @param city the city to set
	 */
	public void setCity(String city) {
		this.city = city;
	}

	/**
	 * @return the state
	 */
	public String getState() {
		return state;
	}

	/**
	 * @param state the state to set
	 */
	public void setState(String state) {
		this.state = state;
	}

	/**
	 * @return the zip
	 */
	public String getZip() {
		return zip;
	}

	/**
	 * @param zip the zip to set
	 */
	public void setZip(String zip) {
		this.zip = zip;
	}

	/**
	 * @return the country
	 */
	public String getCountry() {
		return country;
	}

	/**
	 * @param country the country to set
	 */
	public void setCountry(String country) {
		this.country = country;
	}

	/**
	 * @return the dayPhone
	 */
	public String getDayPhone() {
		return dayPhone;
	}

	/**
	 * @param dayPhone the dayPhone to set
	 */
	public void setDayPhone(String dayPhone) {
		this.dayPhone = dayPhone;
	}

	/**
	 * @return the eveningPhone
	 */
	public String getEveningPhone() {
		return eveningPhone;
	}

	/**
	 * @param eveningPhone the eveningPhone to set
	 */
	public void setEveningPhone(String eveningPhone) {
		this.eveningPhone = eveningPhone;
	}

	/**
	 * @return the mobilePhone
	 */
	public String getMobilePhone() {
		return mobilePhone;
	}

	/**
	 * @param mobilePhone the mobilePhone to set
	 */
	public void setMobilePhone(String mobilePhone) {
		this.mobilePhone = mobilePhone;
	}

	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}

	/**
	 * @param email the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}

	/**
	 * @return the birthMonth
	 */
	public String getBirthMonth() {
		return birthMonth;
	}

	/**
	 * @param birthMonth the birthMonth to set
	 */
	public void setBirthMonth(String birthMonth) {
		this.birthMonth = birthMonth;
	}

	/**
	 * @return the birthDay
	 */
	public String getBirthDay() {
		return birthDay;
	}

	/**
	 * @param birthDay the birthDay to set
	 */
	public void setBirthDay(String birthDay) {
		this.birthDay = birthDay;
	}

	/**
	 * @return the birthYear
	 */
	public String getBirthYear() {
		return birthYear;
	}

	/**
	 * @param birthYear the birthYear to set
	 */
	public void setBirthYear(String birthYear) {
		this.birthYear = birthYear;
	}

	/**
	 * @return the numAttended
	 */
	public String getNumAttended() {
		return numAttended;
	}

	/**
	 * @param numAttended the numAttended to set
	 */
	public void setNumAttended(String numAttended) {
		this.numAttended = numAttended;
	}

	/**
	 * @return the howContact
	 */
	public String getHowContact() {
		return howContact;
	}

	/**
	 * @param howContact the howContact to set
	 */
	public void setHowContact(String howContact) {
		this.howContact = howContact;
	}

	/**
	 * @return the moreInfo
	 */
	public String[] getMoreInfo() {
		return moreInfo;
	}

	/**
	 * @param moreInfo the moreInfo to set
	 */
	public void setMoreInfo(String[] moreInfo) {
		this.moreInfo = moreInfo;
	}

	/**
	 * @return the comments
	 */
	public String getComments() {
		return comments;
	}

	/**
	 * @param comments the comments to set
	 */
	public void setComments(String comments) {
		this.comments = comments;
	}

}
