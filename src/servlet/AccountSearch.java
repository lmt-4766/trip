package servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.AccountBeans;
import bean.DataAccessBean;
import errors.DuplicateEmailException;

@WebServlet(name="AccountSearch",urlPatterns="/accountSearch")
public class AccountSearch extends HttpServlet {
	private static final long seriaVersionUID=1L;

protected void doPost(HttpServletRequest request,HttpServletResponse response)
			throws  ServletException,IOException{

	try {


		// リクエストパラメータの値を取得
		String loginId=request.getParameter("loginId");
		String password=request.getParameter("password");
		String name=request.getParameter("name");
		String yomi=request.getParameter("yomi");
		String sex=request.getParameter("sex");
		String email=request.getParameter("email");
		String birthday=request.getParameter("birthday");
		String tel=request.getParameter("tel");
		String zip=request.getParameter("zip");
		String address=request.getParameter("address");
		Date now=new Date();
        String start_time=now.toString();




		AccountBeans ab=new AccountBeans();
		// リクエストパラメータから取得した値をBeanの各プロパティにセット
		ab.setLoginId(loginId);
		ab.setPassword(password);
		ab.setName(name);
		ab.setYomi(yomi);
		ab.setSex(sex);
		ab.setEmail(email);
		ab.setBirthday(birthday);
		ab.setTel(tel);
		ab.setZip(zip);
		ab.setAddress(address);
		ab.setStart_time(start_time);


		request.setAttribute("ab", ab);

		//DBにデータを取込
		DataAccessBean rdo=new DataAccessBean();
		rdo.UserInfo(ab);
		RequestDispatcher rd=request.getRequestDispatcher("/Comfirm.jsp");
		rd.forward(request, response);





	}catch(SQLException e) {
		e.printStackTrace();
     //DuplicateEmailException 同じキーのレコードが既に登録されている場合の情報を提供する例外
	}catch(DuplicateEmailException e) {
		request.setAttribute("message","このIDが既に登録済でありますので、他のIDを入力してください。" );
		RequestDispatcher rd=request.getRequestDispatcher("/newUser.jsp");
		rd.forward(request, response);

	}
}

}

