package asm.service.imple;

import asm.entity.User;
import asm.entity.Video;
import asm.service.EmailService;
import asm.util.SendEmailUtil;

public class EmailServiceImple implements EmailService {

	private static final String ShareVideo = "Mehub Entertaiment - New Video";	
	private static final String WelcomeMail = "Mehub Entertaiment - Welcome";
	
	@Override
	public void sendMail(User recipient, String type) {      
        try {
			String content = null;
			String subject = null;
			if(type.equals("welcome")) {
				content = "Hi " + recipient.getHoten() + ", enjoy your wonderful time with Mehub <3 .";
				subject = WelcomeMail;			
				SendEmailUtil.sendEmail(recipient.getEmail(), subject, content);
			}else if(type.equals("shareVideo")){
				content = "Hi My Friend, Im " + recipient.getHoten() + ", you need to try this amzing song" ;
				subject = ShareVideo;	
				SendEmailUtil.sendEmail(recipient.getEmail(), subject, content);
			}		
			System.out.println("Send Success");		
		} catch (Exception e) {
			System.out.println("Send Fail !");
		}		
	}
	
	public void sendMailShare(String email, Video video, String type) {      
        try {
			String content = null;
			String subject = null;
			if(type.equals("shareVideo")){
				content = "Hi My Friend, Im thing you need to try this amzing song: " + video.getTitle() + "/n Link Video: http://localhost:8080/J4.09.949.ThanhDat.ASM/detail?action=watch&id=" + video.getLink();
				subject = ShareVideo;	
				SendEmailUtil.sendEmail(email, subject, content);
			}		
			System.out.println("Send Success");		
		} catch (Exception e) {
			System.out.println("Send Fail !");
		}
		
	}

}
