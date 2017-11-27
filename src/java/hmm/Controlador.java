/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hmm;

import com.google.gson.Gson;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author tads
 */
@WebServlet(name = "Controlador", urlPatterns = {"/Controlador"})
public class Controlador extends HttpServlet {

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

        String contains = request.getParameter("valor");

        String json = "";

        if (!contains.isEmpty()) {
            Frase[] frases = {
                new Frase("mitos e lendas indígenas provocaram mudanças na cultura religiosa portuguesa do século XVI, em Portugal.", 'a'),
                new Frase("a pesca, a caça e os frutos do Brasil serviram como base alimentar na culinária colonial luso-brasileira.", 'b'),
                new Frase("o uso do algodão entre os nativos brasileiros para a fabricação de redes foi reutilizado pelos colonos portugueses para a confecção de tecidos rústicos.", 'c'),
                new Frase("o cultivo entre algumas tribos brasileiras de frutas, milho e tubérculos foi rapidamente incorporado à agricultura de subsistência entre colonos portugueses.", 'd'),
                new Frase("a cultura do fumo utilizada por nativos brasileiros tornou-se um dos hábitos culturais mais apreciados pelos europeus.", 'e')
            };

            List<String> respostas = new ArrayList<String>();

            for (Frase frase : frases) {
                if (frase.getFrase().contains(contains)) {
                    respostas.add(frase.getFrase());
                }
            }

            json = new Gson().toJson(respostas, ArrayList.class);
            
        }
        
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write(json);
        
        //request.setAttribute("valores", frasesContendo);

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
