


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "bmic", value = "/bmi")
public class BMIC extends HttpServlet {


    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.setAttribute("contentPage", "bmi/bmi_in.jsp");
        request.getRequestDispatcher("main.jsp").forward(request, response);

    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        System.out.println("doPost");
        com.bmi.plum.bmi.BmiModel.calc(request);

        request.setAttribute("contentPage", "bmi/bmi.jsp");
        request.getRequestDispatcher("main.jsp").forward(request,response);


    }

    public void destroy() {
    }
}