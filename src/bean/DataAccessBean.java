package bean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Collection;

import errors.DuplicateEmailException;

public class DataAccessBean {
	//検索処理
	 /**
     * 全件検索処理
     *
     * @return UserInfoオブジェクトのコレクション
     * @throws SQLException DB接続関連の障害が発生した場合
     */

	public Collection<AccountBeans> findAllUser() throws SQLException{

		Connection conn=null;
	    PreparedStatement ps=null;
	    ResultSet rs=null;

	   try {

	        String sql="SELECT * FROM account";
		   Collection<AccountBeans> ablist=new ArrayList<AccountBeans>();
		    conn=DriverManager.getConnection(
				  "jdbc:oracle:thin:@localhost:1522:userdb","sys as sysdba","password");
		    ps=conn.prepareStatement(sql);
		    // SQL文の実行
		    rs=ps.executeQuery();

		    //検索結果の取得

		    while(rs.next()) {
		    	AccountBeans ab=new AccountBeans();
				// リクエストパラメータから取得した値をBeanの各プロパティにセット
				ab.setLoginId(rs.getString("loginId"));
				ab.setPassword(rs.getString("password"));
				ab.setName(rs.getString("name"));
				ab.setYomi(rs.getString("yomi"));
				ab.setSex(rs.getString("sex"));
				ab.setEmail(rs.getString("email"));
				ab.setBirthday(rs.getString("birthday"));
				ab.setTel(rs.getString("tel"));
				ab.setZip(rs.getString("zip"));
				ab.setAddress(rs.getString("address"));
				ab.setStart_time(rs.getString("start_time"));
				ablist.add(ab);

		    }
		    return ablist;
	  }catch(SQLException e) {
		  e.printStackTrace();

	  }finally {
	    	  //オブジェクトをcloseする
	    	  if(rs!=null) {
	    		  rs.close();
	    	  }if(ps!=null) {
	    		  ps.close();
	    	  }if(conn!=null) {
	     		  conn.close();
	    	  }
	      }
	return null;



	  }


	//新規登録処理
	/**
    * 新規登録処理
    *
    * @param userInfo 登録するユーザ情報
    * @throws SQLException DB接続関連の障害が発生した場合
    * @throws DuplicateEmailException 既に存在するメールアドレスを挿入しようとした場合
    */

	public void UserInfo(AccountBeans ab)throws SQLException,DuplicateEmailException{

		Connection conn=null;
	    PreparedStatement ps=null;
	    PreparedStatement ps2=null;
	    ResultSet rs=null;
	    String urlString="http://localhost:8080/trip/accountSearch";

		  try {
			//JDBCドライバーのロード
	    	  Class.forName("oracle.jdbc.driver.OracleDriver");
	    	  //Connectionオブジェクトの取得
	    	  conn=DriverManager.getConnection(
	    			  "jdbc:oracle:thin:@localhost:1522:userdb","sys as sysdba","password");
	    	  //PreparedStatementオブジェクトの取得
	    	// データ登録用SQL文
			  String sql="INSERT INTO account(loginId,password,name,yomi,sex,email,birthday,tel,zip,address,start_time) VALUES(?,?,?,?,?,?,?,?,?,?,?)";
			  //二重登録チェック
			  String sqlcheck="SELECT loginId FROM account WHERE loginId=?";
			  // 二重登録チェック用のPreparedStatementオブジェクトの生成
			  ps2=conn.prepareStatement(sqlcheck);
			// 二重登録チェック用のパラメータ設定
			  ps2.setString(1, ab.getLoginId());
			// 二重登録チェック用の検索
			 rs=ps2.executeQuery();

			  if(rs.next()) {
				  throw new DuplicateEmailException();
			  }
			  ps=conn.prepareStatement(sql);

				ps.setString(1,ab.getLoginId());
				ps.setString(2,ab.getPassword());
				ps.setString(3,ab.getName());
				ps.setString(4,ab.getYomi());
				ps.setString(5,ab.getSex());
				ps.setString(6,ab.getEmail());
				ps.setString(7,ab.getBirthday());
				ps.setString(8,ab.getTel());
				ps.setString(9,ab.getZip());
				ps.setString(10,ab.getAddress());
				ps.setTimestamp(11, new Timestamp(System.currentTimeMillis()));
			ps.executeUpdate();



		  }catch (ClassNotFoundException e ) {
				// TODO 自動生成された catch ブロック
				e.printStackTrace();
				throw new SQLException(e);
		}


		  finally {
		    	  //オブジェクトをcloseする

		    	  if(rs!=null) {
		        	  rs.close();
		          }if(ps2!=null) {
		        	  ps2.close();
		          }if(ps!=null) {
		    		  ps.close();
		          }if(conn!=null){
		    		  conn.close();
		    	  }
		      }
	  }
}






