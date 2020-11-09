package bean;

import java.io.Serializable;
import java.util.Date;


@SuppressWarnings("serial")
public class AccountBeans implements Serializable {

	public AccountBeans() {

	}

	private String loginId;
	private String password;
	private String name;
	private String yomi;
	private String sex;
	private String email;
	private String birthday;
	private String tel;
	private String zip;
	private String address;
	private int id;

	Date data=new Date();
	private String start_time=data.toString();



	public String getStart_time() {
		return start_time;
	}
	public void setStart_time(String start_time) {
		this.start_time = start_time;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getLoginId() {
		return loginId;
	}
	public void setLoginId(String loginId) {
		this.loginId = loginId;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getYomi() {
		return yomi;
	}
	public void setYomi(String yomi) {
		this.yomi = yomi;
	}
	public String getSex() {
		return sex;
	}

	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getZip() {
		return zip;
	}
	public void setZip(String zip) {
		this.zip = zip;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}

	public Date getData() {
		return data;
	}
	public void setData(Date data) {
		this.data = data;
	}


}
