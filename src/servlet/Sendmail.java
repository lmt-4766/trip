package servlet;

import java.io.UnsupportedEncodingException;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class Sendmail {

	public static void main(String[] args) {

		Sendmail sm=new Sendmail();

	String to="lmt516437@gmail.com";
	String subject="テストです。";
	String text="https://www.yahoo.co.jp/";
	sm.send(to,subject,text);

	}
	public void send(String to,String subject,String text) {

		String smtpserver="smtp.aries.oneoffice.jp";
		String popserver="pop.aries.oneoffice.jp";

		Properties pp=new Properties();
		pp.put("mail.smtp.host", smtpserver);
		pp.put("mail.smtp.auth", "true");

		pp.put("mail.host", popserver);
		pp.put("mail.smtp.port", String.valueOf("465"));
		pp.put("mail.debug", "true");

		Session session=Session.getDefaultInstance(pp,null);
		MimeMessage mms=new MimeMessage(session);
		try {
			mms.setRecipients(Message.RecipientType.TO,to);
			InternetAddress inter=new InternetAddress("rin_mutei@tsh.co.jp","林");
			mms.setFrom(inter);
			mms.setSubject(subject,"SJIS");
			mms.setText(text,"SJIS");
		    Transport tr=session.getTransport("smtp");
		    tr.connect(null,"lmt516437@gmail.com","Lmt#4766");
		    tr.sendMessage(mms, mms.getAllRecipients());


		}catch(UnsupportedEncodingException e) {
			e.printStackTrace();
		}catch(MessagingException e) {
			e.printStackTrace();
			return;
		}

	}

















}
