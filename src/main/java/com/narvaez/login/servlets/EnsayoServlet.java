package com.narvaez.login.servlets;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author H0LNAR.SA
 */
@WebServlet(name = "EnsayoServlet", urlPatterns = {"/login"})
public class EnsayoServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(EnsayoServlet.class.getName()).log(Level.SEVERE, null, ex);
        }

        String url = "jdbc:mysql://localhost:3306/servletlogin";
        Connection conexion;
        Statement statement;
        ResultSet rs;

        try {
            conexion = DriverManager.getConnection(url, "root", "");
            statement = conexion.createStatement();
            rs = statement.executeQuery("SELECT * FROM usuarios WHERE username = '" + username + "' AND password = '" + password + "'");
            if (rs.next()) {
                request.getSession().setAttribute(username, username);
                response.sendRedirect("panel.jsp");
            } else {
                response.sendRedirect("index.html");
            }
        } catch (SQLException ex) {
            Logger.getLogger(EnsayoServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}