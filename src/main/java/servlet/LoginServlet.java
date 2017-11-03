package servlet;

import domain.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Date;

/**
 * Created by xavi on 3/11/17.
 */
public class LoginServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String html = "<html>\n" +
                "   <body>\n" +
                "      <form action = \"login\" method = \"POST\">\n" +
                "         User Name: <input type = \"text\" name = \"username\">\n" +
                "         <br />\n" +
                "         Password: <input type = \"password\" name = \"password\" />\n" +
                "         <input type = \"submit\" value = \"Submit\" />\n" +
                "      </form>\n" +
                "   </body>\n" +
                "</html>";

        resp.getWriter().print(html);
        resp.setContentType("text/html");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String username =  req.getParameter("username");
        String password =  req.getParameter("password");

        if ("xavi".equals(username) && "1234".equals(password)){
            User user =new User();
            user.setName(username);
            user.setLoginDate(new Date());

            req.getSession(true).setAttribute("user",user);
        }
    }
}
