package it.pale.tweb.servlet.privato.abbonamento;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import it.pale.tweb.dao.beans.Abbonamento;
import it.pale.tweb.dao.beans.AbbonamentoDAO;
import it.pale.tweb.dao.beans.join.FrequentaDAO;

/**
 * Servlet implementation class AggiungiAbbonamento
 */
@WebServlet("/privato/abbonamento/AggiungiAbbonamento")
public class AggiungiAbbonamento extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AggiungiAbbonamento() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int matricola=Integer.parseInt(request.getParameter("matricola"));
		int fattura=Integer.parseInt(request.getParameter("fattura"));
		String tipo=request.getParameter("tipo");
		String corsiSelezionati =request.getParameter("corsi");
		
		Abbonamento a= new Abbonamento(fattura, tipo, matricola);
		AbbonamentoDAO aDAO= new AbbonamentoDAO();
		
		
		boolean esitoA=aDAO.salva(a);
		
		
		
	}

}
