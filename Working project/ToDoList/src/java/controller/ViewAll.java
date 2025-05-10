/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import entities.Tasks;
import entities.TasksFacadeLocal;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Student
 */
@WebServlet(name = "ViewAll", urlPatterns = {"/ViewAll"})
public class ViewAll extends HttpServlet {

    @EJB
    private TasksFacadeLocal tfl;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        List<Tasks> tasks = tfl.findAll();
        
        
        request.setAttribute("tasks", tasks);
        RequestDispatcher rd = request.getRequestDispatcher("tasks.jsp");
        rd.forward(request, response);
    }

    

}
