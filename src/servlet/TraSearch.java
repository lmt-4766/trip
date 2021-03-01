package servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.TripAccount;

@WebServlet(name="TraSearch" ,urlPatterns="/traSearch")

public class TraSearch extends HttpServlet {

	private static final long seriaVersionUID=1L;

	protected void doPost(HttpServletRequest request,HttpServletResponse response)
	                      throws ServletException, IOException{

		try {
			String TravelId=request.getParameter("TravelId");
			String TravelName=request.getParameter("TravelName");

			TripAccount ta=new TripAccount();

			if(ta.travel(TravelId, TravelName)) {
				request.setAttribute("TravelId", TravelId);
				// 認証成功の場合

				// 次の画面で表示するために、入力されたユーザ名をrequestスコープに入れる
				RequestDispatcher rd=request.getRequestDispatcher("/Tra_details.jsp");
				rd.forward(request, response);

				//プランIＤとプラン名データは空の場合

			}else if(TravelId==null || TravelId.length()<1 || TravelName==null || TravelName.length()<1) {
				request.setAttribute("message", "　　プランID＆名前を入力してください");
				RequestDispatcher rd=request.getRequestDispatcher("/TraSearch.jsp");
				rd.forward(request, response);
			}else {
				// 認証失敗の場合
				// ログインエラーのメッセージ文字列をrequestスコープに入れる
				request.setAttribute("message", "　　入力しているIDが見つからない");
				RequestDispatcher rd=request.getRequestDispatcher("/TraSearch.jsp");
				rd.forward(request, response);
			}


		}catch (SQLException e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
			throw new ServletException(e);

		}


	}


}
