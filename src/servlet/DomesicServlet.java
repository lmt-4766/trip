package servlet;


import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.DataAccount;

@SuppressWarnings("serial")
@WebServlet(name="DomesicServlet", urlPatterns="/DomesticTravel")
public class DomesicServlet extends HttpServlet {

   private static final  long seriaVersion=1L;

   protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException,IOException{

	   try {

	   String loginId=request.getParameter("loginId");
	   String password=request.getParameter("password");

	   DataAccount da=new DataAccount();
	 //ログインを認証成功の場合
	   if(da.authebtication(loginId, password)) {
		   request.setAttribute("loginId",loginId);

		   RequestDispatcher rd=request.getRequestDispatcher("/login.jsp");
		    rd.forward(request, response);
		  //ログインID＆passwordデータは空の場合
	   }else if(loginId==null ||password==null ||loginId.length() < 1 || password.length()<1 ) {
		   request.setAttribute("message", "ユーザー又はパスワードを入力してください。");
		   RequestDispatcher rd=request.getRequestDispatcher("/DomesticTravel.jsp");
		   rd.forward(request, response);

	   }else {
		// 認証失敗の場合
			// ログインエラーのメッセージ文字列をrequestスコープに入れる
		   request.setAttribute("message", "ユーザーまたはパスワードが間違っている");
		   RequestDispatcher rd=request.getRequestDispatcher("/DomesticTravel.jsp");
		   rd.forward(request, response);

	   }


	   }catch(SQLException e) {
		   e.printStackTrace();
		   throw new ServletException(e);
	   }


   }
}
