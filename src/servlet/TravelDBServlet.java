package servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.TravelAccessBean;
import bean.TravelBeans;
import errors.DuplicateEmailException;

@WebServlet(name="TravelDBServlet",urlPatterns="/tripdbSearch")
//旅行プラン表示・一覧表示表示
public class TravelDBServlet extends HttpServlet{

	private static final long seriaVersionUID=1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
	                        throws ServletException,IOException{
		try {

			// リクエストパラメータの値を取得
			String TravelId=request.getParameter("TravelId");
			String TravelName=request.getParameter("TravelName");
			String Traveldate=request.getParameter("Traveldate");
			String Traveldates=request.getParameter("Traveldates");
			String Traveldatess=request.getParameter("Traveldatess");
			String TravelCity=request.getParameter("TravelCity");
			String Traveltest=request.getParameter("Traveltest");
			String Travelpeople=request.getParameter("Travelpeople");
			String Travelchildren=request.getParameter("Travelchildren");
			String Travelprice=request.getParameter("Travelprice");
			String Traveltown=request.getParameter("Traveltown");


			TravelBeans tb=new TravelBeans();
			// リクエストパラメータから取得した値をBeanの各プロパティにセット

			tb.setTravelId(TravelId);
			tb.setTravelName(TravelName);
			tb.setTraveltest(Traveltest);
			tb.setTraveldate(Traveldate);
			tb.setTraveldates(Traveldates);
			tb.setTravelpeople(Travelpeople);
			tb.setTravelchildren(Travelchildren);
			tb.setTravelprice(Travelprice);
			tb.setTraveldatess(Traveldatess);
			tb.setTravelCity(TravelCity);
			tb.setTraveltown(Traveltown);
			request.setAttribute("tb",tb);

			TravelAccessBean ta=new TravelAccessBean();
			ta.UserInfo(tb);
			RequestDispatcher rd=request.getRequestDispatcher("");
			rd.forward(request, response);

		}catch(SQLException e) {
			e.printStackTrace();
		//DuplicateEmailException 同じキーのレコードが既に登録されている場合の情報を提供する例外
		}catch(DuplicateEmailException ex) {
			request.setAttribute("message", "このIDは存在していません。");
			RequestDispatcher rd=request.getRequestDispatcher("/TraSearch.jsp");
			rd.forward(request, response);
		}
	}

}
