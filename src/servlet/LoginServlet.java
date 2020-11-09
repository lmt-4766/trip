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
//ブラウザからの入力値を取得 Top画面
@SuppressWarnings("serial")

@WebServlet(name=" LoginServlet",urlPatterns="/login")
public class LoginServlet extends HttpServlet {

	private static final long seriaVersionUID=1L;


	protected void doPost(HttpServletRequest request,HttpServletResponse response)
	                throws ServletException,IOException{

		try {
			//クライアントからデータを入力
			String loginId=request.getParameter("loginId");
			String password=request.getParameter("password");


			DataAccount da=new DataAccount();

			//ログインを認証成功の場合
			if(da.authebtication(loginId, password)){
				request.setAttribute("loginId",loginId);
				// 認証成功の場合

				// 次の画面で表示するために、入力されたユーザ名をrequestスコープに入れる
				RequestDispatcher rd=request.getRequestDispatcher("/login.jsp");
				rd.forward(request, response);

				//ログインID＆passwordデータは空の場合

			}else if(loginId==null || loginId.length()<1 || password==null || password.length()<1){
				request.setAttribute("message", "ユーザーID＆パスワードを入力してください");
				RequestDispatcher rd=request.getRequestDispatcher("/home.jsp");
				rd.forward(request, response);
			}else {
				// 認証失敗の場合
				// ログインエラーのメッセージ文字列をrequestスコープに入れる
				request.setAttribute("message", "ユーザ名またはパスワードが間違っています");
				RequestDispatcher rd=request.getRequestDispatcher("/home.jsp");
				rd.forward(request, response);
			}


		} catch (SQLException e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
			throw new ServletException(e);

		}


	}

}
