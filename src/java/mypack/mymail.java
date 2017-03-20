package mypack;

import javax.mail.*;
import javax.mail.internet.*;
import java.util.Properties;
import org.apache.catalina.Session.*;

public class mymail
{
    String email;
    String password;
    private static final String SMTP_HOST_NAME = "smtp.gmail.com";
    private static final int SMTP_HOST_PORT = 465;
    private static final String SMTP_AUTH_USER = "compare.hub@gmail.com";
    private static final String SMTP_AUTH_PWD  = "sharmasharma";

    public mymail(String password, String email)
    {
        this.email = email;
        this.password = password;
    try
    {
    Properties props = new Properties();
    props.put("mail.transport.protocol", "smtps");
    props.put("mail.smtps.host", SMTP_HOST_NAME);
    props.put("mail.smtps.auth", "true");
        // props.put("mail.smtps.quitwait", "false");

    Session mailSession = Session.getDefaultInstance(props);
    mailSession.setDebug(true);
    Transport transport = mailSession.getTransport();

    MimeMessage message = new MimeMessage(mailSession);
    message.setSubject("Retreive password");
    message.setContent("Your password is : "+this.password , "text/plain");
    message.addRecipient(Message.RecipientType.TO,new InternetAddress(this.email));
    transport.connect(SMTP_HOST_NAME, SMTP_HOST_PORT, SMTP_AUTH_USER, SMTP_AUTH_PWD);
    transport.sendMessage(message,message.getRecipients(Message.RecipientType.TO));
    transport.close();
    }
    catch(Exception ex)
    {
        ex.getStackTrace();
    }
}
   
}
