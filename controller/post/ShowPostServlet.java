package controller.post;

import model.DAO.PostDAO;
import model.DTO.Post;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;

/**
 * Created by Alieyeh on 4/6/19.
 */
@WebServlet(name = "ShowPostServlet")
public class ShowPostServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
        if (session.getAttribute("customer_id")== null){
            request.getRequestDispatcher("login.jsp").forward(request,response);
        }
        else {
            int uid = Integer.parseInt(String.valueOf(session.getAttribute("customer_id")));
            int counter=0;
            PostDAO pdao=new PostDAO();
            ArrayList<Post> posts;
            posts=pdao.getPosts(uid);
        for (int i = 0; i < pdao.getNumOfPosts(uid); i++) {
            counter++;
            if(counter==1){System.out.println("<div class=\"row\">");}
            System.out.print("<div class=\"post resize2\"><img src=");
            System.out.println(posts.get(i).getPic()+'>');
            System.out.print("<div class=\"desc\">");
            System.out.print(posts.get(i).getCaption());
            System.out.print("</div>");
            System.out.print("</div>");
            if(counter==3){System.out.println("</div>");counter=0;}
        }
    }
    }
}
