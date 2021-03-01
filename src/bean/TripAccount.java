package bean;
//ブラウザからの入力値を検索画面
import java.io.Serializable;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class TripAccount implements Serializable {

	Connection conn=null;
	PreparedStatement ps=null;
	ResultSet rs=null;
	String sql="SELECT TravelId,TravelName from TravelAccount WHERE TravelId=? AND TravelName=?";

	public boolean travel(String TravelId,String TravelName)throws SQLException{
		// 全件検索処理
	    try{

	    	  //JDBCドライバーのロード
	    	  Class.forName("oracle.jdbc.driver.OracleDriver");
	    	  conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1522:userdb","sys as sysdba","password");

	    	  //PreparedStatementオブジェクトの取得
	    	  ps=conn.prepareStatement(sql);
		      //パラメーターの設定
	    	  ps.setString(1,TravelId );
	    	  ps.setString(2,TravelName);


	    	//SQL文を実行
	    	  rs=ps.executeQuery();

	       //検索結果の取得

	    	if(rs.next()) {
	    		String id=rs.getString("TravelId");
	    		String name=rs.getString("TravelName");

				//idとnameは空欄であれば、
	    		if(!TravelId.equals(id) || !TravelName.equals(name)) {
	    			return false;
	    		}
	    		else if(id==null || name==null) {
	    			return false;
	    		}
	    		else {
	    			return true;
	    		}

	    	}



	    }catch(ClassNotFoundException ex) {
	    		ex.printStackTrace();
	    		throw new SQLException(ex);
	    }
	      finally {
	    	  if(rs!=null) {
	    		  rs.close();
	    	  }
	    	  if(ps!=null) {
	    		  ps.close();
	    	  }if(conn!=null) {
	    		  conn.close();
	    	  }
	      }
		return false;

	}


}
