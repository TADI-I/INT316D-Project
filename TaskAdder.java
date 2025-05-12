/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import entiies.Tasks;
import entiies.TasksFacadeLocal;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import javafx.concurrent.Task;
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
@WebServlet(name = "TaskAdder", urlPatterns = {"/TaskAdder"})
public class TaskAdder extends HttpServlet {
    
    @EJB
    private TasksFacadeLocal tfl;
    
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String title = request.getParameter("title");
        String desc = request.getParameter("description");
        String status = request.getParameter("status");
        
        Tasks task = new Tasks(title, desc, status, new Date());
        tfl.create(task);
        
        RequestDispatcher rd = request.getRequestDispatcher("successfully-added.html");
        rd.forward(request, response);
    }

}
