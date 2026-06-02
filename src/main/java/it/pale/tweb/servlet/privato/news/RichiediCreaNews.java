package it.pale.tweb.servlet.privato.news;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import it.pale.tweb.dao.beans.News;
import it.pale.tweb.dao.beans.NewsDAO;
import it.pale.tweb.dao.beans.Palestra;

/**
 * Servlet implementation class RichiediCreaNews
 */
@WebServlet("/privato/news/RichiediCreaNews")
public class RichiediCreaNews extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RichiediCreaNews() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		int idPalestra=(int)session.getAttribute("Palestra");
		Palestra p= new Palestra();
		p.setId(idPalestra);
		
		//per impostare l'id di una news
		
//		NewsDAO newsDAO= new NewsDAO();
//		News news= new News();
//		
//		int prossimoID=NewsDAO.get(news);
//		news.setId(prossimoID);
//		
		//per la data di oggi:
//		java.util.Date dataOggi = new java.util.Date();
//	    news.setData(dataOggi);
		
		request.setAttribute("Palestra", p);
//		request.setAttribute("News", news);

		request.getRequestDispatcher("/WEB-INF/privato/news/creaNews.jsp").forward(request, response);
	}

}
