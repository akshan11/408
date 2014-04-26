

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
 * Servlet implementation class ValidationServlet
 */
@WebServlet("/ValidationServlet")
public class ValidationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ValidationServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		ServletContext sc = this.getServletContext();
		FormBean b = (FormBean) sc.getAttribute("OracleForm");
		if (b == null) 
		{
			b = new FormBean();
			sc.setAttribute("OracleForm", b);
		}
		
		b.setEmail(request.getParameter("input1"));
		b.setFirstName(request.getParameter("input2"));
		b.setLastName(request.getParameter("input3"));
		b.setAddress(request.getParameter("input4"));
		b.setCity(request.getParameter("input5"));
		b.setZip(request.getParameter("input6"));
		b.setDayPhone(request.getParameter("input7"));
		
		if (b.getEmail() != null) 
		{
			if (!b.emailError())
				out.println("<span style='color:red'>* E-mail format is incorrect</span>");
		}
			
		if(b.getFirstName() != null)
		{
			if (b.getFirstName().isEmpty())
				out.println("<span style='color:red'>* First Name cannot be empty</span>");
		}
		
		if(b.getLastName() != null)
		{
			if (b.getLastName().isEmpty())
				out.println("<span style='color:red'>* Last Name cannot be empty</span>");
		}
		
		if(b.getAddress() != null)
		{
			if (b.getAddress().isEmpty())
				out.println("<span style='color:red'>* Address cannot be empty</span>");
		}
		
		if(b.getCity() != null)
		{
			if (b.getCity().isEmpty())
				out.println("<span style='color:red'>* City cannot be empty</span>");
		}
		
		if(b.getZip() != null)
		{
			if (!b.validZip())
				out.println("<span style='color:red'>* Zip code is invalid</span>");
		}
		
		if(b.getDayPhone() != null)
		{
			if (!b.validPhone())
				out.println("<span style='color:red'>* Phone is invalid</span>");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
