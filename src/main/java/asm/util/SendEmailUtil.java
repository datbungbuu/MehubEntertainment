package asm.util;

import java.util.Date;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class SendEmailUtil {
	 public static void sendEmail(String toAddress, String subject, String message) throws AddressException, MessagingException {
	 
	        // sets SMTP server properties
	        Properties p = new Properties();
	        p.put("mail.smtp.auth","true");
	        p.put("mail.smtp.starttls.enable", "true");
	        p.put("mail.smtp.ssl.protocols", "TLSv1.2");
	        p.put("mail.smtp.host", "smtp.gmail.com");
	        p.put("mail.smtp.port", "587"); 
	 
	        // creates a new session with an authenticator
	        String user = "dattdtps26949@fpt.edu.vn";
	        String pass = "spcb wyue bvmn ntvv";
	        Session s = Session.getInstance(p, new javax.mail.Authenticator(){ 
	                    protected javax.mail.PasswordAuthentication getPasswordAuthentication(){
	                          return new javax.mail.PasswordAuthentication(user, pass);
	                    }
	                });
	 
	        try {
	        	// creates a new e-mail message
		        MimeMessage msg = new MimeMessage(s);
		 
		        msg.setFrom(new InternetAddress(user));
		        msg.setRecipient(Message.RecipientType.TO,  new InternetAddress(toAddress));
		        msg.setSubject(subject);
		        msg.setSentDate(new Date());
		        msg.setText(message);
		 
		        // sends the e-mail
		        Transport.send(msg);
		        System.out.println("Send Success");
			} catch (MessagingException ex) {
				System.out.println("Send Fail !");
				ex.printStackTrace();
			}		 
	    }
}
