package servlet;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Enumeration;

/**
 * Created by xavi on 30/10/17.
 */
public class HelloWorld extends HttpServlet {

    private Integer contador = null;

    @Override
    public void init() throws ServletException {

        contador = new Integer(0);


    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        contador += 1;

        String var1Value = req.getParameter("var1");

        Enumeration enumeration = req.getParameterNames();
        while (enumeration.hasMoreElements()) {
            String paramName = (String) enumeration.nextElement();
            resp.getWriter().print("<h6>" + paramName + "</h6><br/>");

            String[] valuesEnumeration = req.getParameterValues(paramName);
            for (String value : valuesEnumeration){
                resp.getWriter().print(value + "<br/>");
            }


        }

        Cookie[] cookies = req.getCookies();

        if (cookies != null)
        for (Cookie cookie: cookies){
            resp.getWriter().print(cookie.getName() + " " + cookie.getValue() + "<br/>");
        }

        resp.setContentType("text/html");
        resp.getWriter().flush();
        resp.getWriter().close();

    }
}
