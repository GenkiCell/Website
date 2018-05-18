package io.genkicell.utils;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

@Component
public class CommonConfig {

	@Value("#{config['download.filename']}")
	public String DOWNLOAD_FILENAME;

	@Value("#{config['mail.smtp.auth']}")
	public String MAIL_SMTP_AUTH;
	
	@Value("#{config['mail.host']}")
	public String MAIL_HOST;
	
	@Value("#{config['mail.transport.protocol']}")
	public String MAIL_TRANSPORT_PROTOCOL;
	
	@Value("#{config['mail.sender']}")
	public String MAIL_SENDER;
	
	@Value("#{config['mail.password']}")
	public String MAIL_PASSWORD;

}
