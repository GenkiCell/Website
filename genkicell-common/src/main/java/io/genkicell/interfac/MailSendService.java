package io.genkicell.interfac;

public interface MailSendService {
	public void send(String nickName, String content, String email) ;
	public void sendMail(String to, String subject, String content) ;
	
}
