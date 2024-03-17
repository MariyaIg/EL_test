package com.ignateva.el_test;

import com.ignateva.el_test.entity.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name="TestServlet", value = "/test-servlet")
public class TestServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/user.jsp").forward(req,resp);
        Cookie cookie=new Cookie("userFName",req.getParameter("F_name"));
        resp.addCookie(cookie);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//через лист
        List<String> user = new ArrayList<>();
       user.add(req.getParameter("F_name"));
       user.add(req.getParameter("S_name"));
       user.add(req.getParameter("age"));
       user.add(req.getParameter("e_mail"));
       req.setAttribute("user",user);
//вариант через объект
        User user1 = new User();
       user1.setF_name(req.getParameter("F_name"));
       user1.setS_name(req.getParameter("S_name"));
       user1.setAge(Integer.parseInt(req.getParameter("age")));
       user1.setE_mail(req.getParameter("e_mail"));
        req.setAttribute("user1",user1.toString());
        getServletContext().getRequestDispatcher("/user.jsp").forward(req,resp);
    }
}
