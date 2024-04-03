package asm.service;

import asm.entity.User;
import asm.entity.Video;

public interface EmailService {
	void sendMail(User recipient,String type);
	void sendMailShare(String email, Video video, String type);
}
