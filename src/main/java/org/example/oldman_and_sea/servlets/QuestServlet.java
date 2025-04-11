package org.example.oldman_and_sea.servlets;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.example.oldman_and_sea.entity.Quest;

import java.io.IOException;

@WebServlet("/quest")
public class QuestServlet extends HttpServlet {
    Quest quest = new Quest();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int step = (int) req.getSession().getAttribute("step");
        String answer = req.getParameter("answer");

        System.out.println(answer);

        if(answer != null && answer.equals(quest.getSteps().get(step).getCorrectAnswer())){
            step++;
            req.getSession().setAttribute("step", step);

            if(step < quest.getSteps().size()){
                req.setAttribute("title", quest.getSteps().get(step).getTitle());
                req.setAttribute("description", quest.getSteps().get(step).getDescription());
                req.setAttribute("option1", quest.getSteps().get(step).getOption1());
                req.setAttribute("option2", quest.getSteps().get(step).getOption2());

                RequestDispatcher dispatcher = req.getRequestDispatcher("views/quest.jsp");
                dispatcher.forward(req, resp);
            } else {
                req.setAttribute("win", quest.congratulation((String) req.getSession().getAttribute("username")));

                RequestDispatcher dispatcher = req.getRequestDispatcher("views/win.jsp");
                dispatcher.forward(req, resp);
            }
        } else {
            req.setAttribute("loose", quest.defeat((String) req.getSession().getAttribute("username")));

            req.setAttribute("wrongAnswer", quest.getSteps().get(step).getWrongAnswer());

            RequestDispatcher dispatcher = req.getRequestDispatcher("views/loose.jsp");
            dispatcher.forward(req, resp);
        }
    }
}
