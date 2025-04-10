package org.example.oldman_and_sea.servlets;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.example.oldman_and_sea.entity.Quest;

import java.io.IOException;

@WebServlet("/start")
public class StartServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int step = 0;

        Quest quest = new Quest();

        req.setAttribute("title", quest.getSteps().get(step).getTitle());
        req.setAttribute("description", quest.getSteps().get(step).getDescription());
        req.setAttribute("option1", quest.getSteps().get(step).getOption1());
        req.setAttribute("option2", quest.getSteps().get(step).getOption2());

        req.getSession().setAttribute("username", req.getParameter("username"));
        req.getSession().setAttribute("step", step);

        RequestDispatcher dispatcher = req.getRequestDispatcher("views/quest.jsp");
        dispatcher.forward(req, resp);
    }
}
