package handler;

import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.SimpleTagSupport;

import bean.FormBean;

public class MetsHandler extends SimpleTagSupport
{
	private FormBean b;
	
	public void doTag() throws JspException, IOException
	{
		if(b != null)
		{
			try 
			{
				Class c = Class.forName("bean.FormBean");
				Field[] fields = c.getDeclaredFields();
				for (Field f : fields) 
				{
					String name = f.getName();
					String camelName = "get" + (name.substring(0,1).toUpperCase() + name.substring(1));
					getJspContext().setAttribute("name", name);
					Method m = c.getMethod(camelName);
					getJspContext().setAttribute("value", m.invoke(b));
					getJspBody().invoke(null);
				}
			} 
			catch (ClassNotFoundException e) 
			{
				e.printStackTrace();
			}
			catch (SecurityException e) 
			{
				e.printStackTrace();
			} 
			catch (NoSuchMethodException e) 
			{
				e.printStackTrace();
			}
			catch (InvocationTargetException e)
			{
				e.printStackTrace();
			}
			catch (IllegalAccessException e)
			{
				e.printStackTrace();
			}
		}
	}
	
	public void setBean(String bean)
	{
		PageContext pageContext = (PageContext) getJspContext();
		HttpServletRequest request = (HttpServletRequest)pageContext.getRequest();  
        HttpSession session = request.getSession();  
        ServletContext servletContext = session.getServletContext();
        FormBean b = (FormBean) servletContext.getAttribute("OracleForm");
        this.b = b;
	}
}
