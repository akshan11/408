

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.FormBean;

/**
 * Servlet implementation class MetsServlet
 */
@WebServlet("/MetsServlet")
public class MetsServlet extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MetsServlet() 
    {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		ServletContext sc = this.getServletContext();
		FormBean b = (FormBean) sc.getAttribute("OracleForm");
		if (b == null) 
		{
			b = new FormBean();
			sc.setAttribute("OracleForm", b);
		}
		
		//Calling setter methods from the FormBean Class
		b.setFirstName(request.getParameter("bill_fname"));
		b.setLastName(request.getParameter("bill_lname"));
		b.setCompanyName(request.getParameter("company_name"));
		b.setContactName(request.getParameter("contact_name"));
		b.setAddress(request.getParameter("bill_addr1"));
		b.setAddress2(request.getParameter("bill_addr2"));
		b.setCity(request.getParameter("bill_city"));
		b.setState(request.getParameter("bill_state"));
		b.setZip(request.getParameter("bill_zip"));
		b.setCountry(request.getParameter("bill_country"));
		b.setDayPhone(request.getParameter("work_tel"));
		b.setEveningPhone(request.getParameter("home_tel"));
		b.setMobilePhone(request.getParameter("mobile_tel"));
		b.setEmail(request.getParameter("email_addr"));
		b.setBirthMonth(request.getParameter("birth_mon"));
		b.setBirthDay(request.getParameter("birth_day"));
		b.setBirthYear(request.getParameter("birth_year"));
		b.setNumAttended(request.getParameter("num_attended"));
		b.setHowContact(request.getParameter("how_contact"));
		b.setMoreInfo(request.getParameterValues("more_info"));
		b.setComments(request.getParameter("comments"));
		
		if(b.isValid())
		{
			//response.sendRedirect("redirect_form.jsp?id=true");
			//String url = "debugger.jsp";
			String url = "congratulations.jsp";
			RequestDispatcher dispatcher = request.getRequestDispatcher(url);
			dispatcher.forward(request, response);
		}
		else
		{
			//response.sendRedirect("redirect_form.jsp?id=false");
			//String url = "debugger.jsp";
			String url = "redirect_form.jsp?id=false";
			RequestDispatcher dispatcher = request.getRequestDispatcher(url);
			dispatcher.forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {}

}
