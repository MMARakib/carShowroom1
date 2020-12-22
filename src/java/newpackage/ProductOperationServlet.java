/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package newpackage;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author rakib
 */
public class ProductOperationServlet extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            String op=request.getParameter("operation");
            if(op.trim().equals("addProduct")){
            String brand=request.getParameter("catBrand");
            String color=request.getParameter("catColor");
            String pic=request.getParameter("catPic");
            
            prpduct prpduct= new prpduct(brand,color,pic);
            
             
           prpductDatabase regPru= new  prpductDatabase(ConnectionPro.getConnection());
                boolean savePrpduct = regPru.savePrpduct(prpduct);
           
           if (savePrpduct==true) {
           response.sendRedirect("about.jsp");
}
           
            
            }
            
            
            else if(op.trim().equals("addCat")){
                 String cat=request.getParameter("cat");
            }
            
            else if(op.trim().equals("addReview")){
                String review=request.getParameter("review");
                reviewP reviewP=new reviewP(review);
                reviewDatabase regRev=new reviewDatabase(ConnectionPro.getConnection());
                boolean saveReview=regRev.saveReview(reviewP);
                if (saveReview==true) {
           response.sendRedirect("review.jsp");
}
                
            }
           
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
