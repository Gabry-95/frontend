package it.pale.tweb.servlet.privato.news;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import it.pale.tweb.dao.beans.News;
import it.pale.tweb.dao.beans.NewsDAO;
import it.pale.tweb.dao.beans.Palestra;
import it.pale.tweb.dao.utils.Utils;
import java.io.IOException;
import java.text.ParseException;
import java.util.Date;

/**
 * Servlet implementation class CreaNews
 */
@WebServlet("/privato/news/CreaNews")
public class CreaNews extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreaNews() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	//ADATTAMENTO DELL'INSERIMENTO DELL'ID DELLA PALESTRA NEL CASO IN CUI SI VOGLIA USARE IN QUESTA SERVLET:
	//HttpSession session= reques.getSession();
	//int id=(int) session.getAttribute("Palestra");
	
	//lettura input
	String ids=request.getParameter("id");
	String testo=request.getParameter("testo");
	String dataNascitaS=request.getParameter("data");
	String palestras=request.getParameter("palestra");
	
	//elaborazione
	int id=Integer.parseInt(ids);
	int palestra=Integer.parseInt(palestras);
	Date dataNascita= null;
	try {
		dataNascita=Utils.stringToDate(dataNascitaS);
	}
	catch (ParseException e){
	e.printStackTrace();
	}
	News news= new News();
	NewsDAO newsDAO= new NewsDAO();
	
	news.setId(id);
	news.setTesto(testo);
	news.setData(dataNascita);
	news.setPalestra(palestra);
	//news.setPalestra(id); FINE ADATTAMENTO
	boolean esito=newsDAO.salva(news);
	
	if(esito) {
		response.sendRedirect("RichiediCreaNews");
		
	}
	else
	{
		request.getRequestDispatcher("/WEB-INF/errore1.jsp").forward(request, response);
	}
	
	}

}
