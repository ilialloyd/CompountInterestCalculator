package com.example.calculator;
/*
 *           Leave your comment below if you have
 --------------------------------------------------------
 *
 */


import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import jdk.jshell.execution.Util;

import java.io.IOException;

@WebServlet(name = "CalculatorServlet", urlPatterns = {"", "/"})
public class CalculatorServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String principleAmount = request.getParameter("principleAmount");
        String interestPercentage = request.getParameter("interest");
        String years = request.getParameter("years");
        String compoundingPeriod = request.getParameter("compoundingPeriod");

        String error;

        //isBlank() is a new method and it is like a null
        if (principleAmount == null || interestPercentage == null || years == null ||
                compoundingPeriod == null || principleAmount.isBlank() || interestPercentage.isBlank() ||
                years.isBlank() || compoundingPeriod.isBlank()) {
            error = "One or more of the input boxes were blank. try again!";
            request.setAttribute("error", error);
        } else {
            double result = Utils.calculateCompoundInterest(Double.parseDouble(principleAmount),
                    (Double.parseDouble(interestPercentage) / 100), Integer.parseInt(years),
                    Integer.parseInt(compoundingPeriod));

            request.setAttribute("result", result);
        }

        request.setAttribute("principle",principleAmount);
        request.setAttribute("interest",interestPercentage);
        request.setAttribute("years",years);
        request.setAttribute("compoundingPeriod",compoundingPeriod);

        getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);


    }
}
