package bean;
//プラン旅行の登録
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;

import errors.DuplicateEmailException;

public class TravelAccessBean {
	//検索処理
	 /**
     * 全件検索処理
     *
     * @return UserInfoオブジェクトのコレクション
     * @throws SQLException DB接続関連の障害が発生した場合
     */

	public Collection<TravelBeans> findAllUser() throws SQLException{

		Connection conn=null;
	    PreparedStatement ps=null;
	    ResultSet rs=null;

	   try {

	        String sql="SELECT * FROM Travelaccount";
		   Collection<TravelBeans> ablist=new ArrayList<TravelBeans>();
		    conn=DriverManager.getConnection(
				  "jdbc:oracle:thin:@localhost:1522:userdb","sys as sysdba","password");
		    ps=conn.prepareStatement(sql);
		    // SQL文の実行
		    rs=ps.executeQuery();

		    //検索結果の取得

		    while(rs.next()) {
		    	TravelBeans tb=new TravelBeans();
				// リクエストパラメータから取得した値をBeanの各プロパティにセット



				tb.setTravelId(rs.getString("TravelId"));
				tb.setTravelName(rs.getString("TravelName"));
				tb.setTraveltest(rs.getString("Traveltest"));
				tb.setTraveldate(rs.getString("Traveldate"));
				tb.setTraveldates(rs.getString("Traveldates"));
				tb.setTravelpeople(rs.getString("Travelpeople"));
				tb.setTravelchildren(rs.getNString("Travelchildren"));
				tb.setTravelprice(rs.getString("Travelprice"));
				tb.setTraveldatess(rs.getString("Traveldatess"));
				tb.setTravelCity(rs.getString("TravelCity"));
				tb.setTraveltown(rs.getString("Traveltown"));

				ablist.add(tb);

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

	public void UserInfo(TravelBeans tb)throws SQLException,DuplicateEmailException{

		Connection conn=null;
	    PreparedStatement ps=null;
	    PreparedStatement ps2=null;
	    ResultSet rs=null;
	    String urlString="http://localhost:8080/trip/tripSearch";

		  try {
			//JDBCドライバーのロード
	    	  Class.forName("oracle.jdbc.driver.OracleDriver");
	    	  //Connectionオブジェクトの取得
	    	  conn=DriverManager.getConnection(
	    			  "jdbc:oracle:thin:@localhost:1522:userdb","sys as sysdba","password");
	    	  //PreparedStatementオブジェクトの取得
	    	// データ登録用SQL文
			  String sql="INSERT INTO TravelAccount(TravelId,TravelName,Traveltest,Traveldate,Traveldates,Travelpeople,Travelchildren,Travelprice,Traveldatess,TravelCity,Traveltown) VALUES(?,?,?,?,?,?,?,?,?,?,?)";
			  //二重登録チェック
			  String sqlcheck="SELECT TravelId FROM Travelaccount WHERE TravelId=?";
			  // 二重登録チェック用のPreparedStatementオブジェクトの生成
			  ps2=conn.prepareStatement(sqlcheck);
			// 二重登録チェック用のパラメータ設定
			  ps2.setString(1, tb.getTravelId());
			// 二重登録チェック用の検索
			 rs=ps2.executeQuery();

			  if(rs.next()) {
				  throw new DuplicateEmailException();
			  }
			  ps=conn.prepareStatement(sql);

			    ps.setString(1,tb.getTravelId());
			    ps.setString(2,tb.getTravelName());
			    ps.setString(3,tb.getTraveltest());
			    ps.setString(4,tb.getTraveldate());
			    ps.setString(5,tb.getTraveldates());
			    ps.setString(6,tb.getTravelpeople());
			    ps.setString(7,tb.getTravelchildren());
			    ps.setString(8,tb.getTravelprice());
			    ps.setString(9,tb.getTraveldatess());
			    ps.setString(10,tb.getTravelCity());
			    ps.setString(11,tb.getTraveltown());

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






