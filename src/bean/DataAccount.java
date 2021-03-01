package bean;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@SuppressWarnings("serial")
public class DataAccount implements Serializable{
	 Connection conn=null;
     PreparedStatement ps=null;
     ResultSet rs=null;
     String sql="SELECT loginId, password FROM Account WHERE loginId=?";


  public boolean authebtication(String loginId,String password) throws SQLException{
 // 全件検索処理
      try{

    	  //JDBCドライバーのロード
    	  Class.forName("oracle.jdbc.driver.OracleDriver");


    	  //Connectionオブジェクトの取得
    	  conn=DriverManager.getConnection(
    			  "jdbc:oracle:thin:@localhost:1522:userdb","sys as sysdba","password");
    	  //PreparedStatementオブジェクトの取得
    	  ps=conn.prepareStatement(sql);

    	  //パラメータの設定
    	  ps.setString(1, loginId);
    	  //SQL文を実行
    	  rs=ps.executeQuery();

    	  //検索結果の取得

    	 if(rs.next()) {
    		  //検索結果から、パスワードを取得
    		  String pass=rs.getString("password");
    		  //入力したパスワードとDBのパスワードが一致？を調べる
    		  if(!password.equals(pass)) {
    			//パスワードは一致しなかった
    			  return false;
    			  //ログイン＆パスワードが空
    		  }
    		 //検索結果がなかった
    	  }else {
			  return false;
		  }
    	 // 検索結果もあり、パスワードも一致した場合は認証成功。trueを返す。
    	  return true;

      } catch (ClassNotFoundException e) {
		// TODO 自動生成された catch ブロック
		e.printStackTrace();
		throw new SQLException(e);
	}
      finally {
    	  //オブジェクトをcloseする
    	  if(rs!=null) {
    		  rs.close();
    	  }if(ps!=null) {
    		  ps.close();
    	  }if(conn!=null) {
     		  conn.close();
    	  }
      }

  }
}
