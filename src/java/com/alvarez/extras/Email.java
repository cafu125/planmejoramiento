package com.alvarez.extras;
import java.util.Date;
import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

/**
 *
 * @author SENA
 */
public class Email {
    public static void sendModificacion(String para, String Nombres, String nombUsu, String clave) {
        final String user = "calombo1903@gmail.com";//cambiará en consecuencia al servidor utilizado
        final String pass = "Carlos19030";

//1st paso) Obtener el objeto de sesión
        Properties props = new Properties();
        props.setProperty("mail.smtp.host", "smtp.gmail.com"); // envia 
        props.setProperty("mail.smtp.starttls.enable", "true");
        props.setProperty("mail.smtp.port", "25");
        props.setProperty("mail.smtp.starttls.required", "false");
        props.setProperty("mail.smtp.auth", "true");
        props.setProperty("mail.smtp.ssl.trust", "smtp.gmail.com");

        Session session = Session.getInstance(props, new javax.mail.Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(user, pass);
            }
        });

//2nd paso)compose message
        try {
            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress(user));
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(para));
            message.setSubject("Bienbvenido grandes-ofertas");
            java.util.Date fecha = new Date();

            message.setContent(
                    "<center><img src='http://https://www.elcarrocolombiano.com/wp-content/uploads/2018/07/20180705-SUZUKI-JIMNY-2019-CARACTERISTICAS-INFORMACION-COMPLETA-01A-750x375.jpg' title='tuauto.com'></center>"
                    + "<h3> promocion del 50% en camperos de todas las marcas "
                    + Nombres
                    + "</h3>"
                    + "Datos de Ingreso: "
                    + "<h4> Nombre Usuario : "
                    + nombUsu
                    + "</h4>"
                    + "<h4> Documento Usuario : "
                    + clave
                    + " </h4>"
                    + "Ultima Modificacion"
                    + fecha.getHours() + ":" + fecha.getMinutes() + ":" + fecha.getSeconds() + " - "
                    + fecha.getDay() + "/" + fecha.getMonth() + "/" + fecha.getYear(), "text/html");

            //3rd paso)send message
            Transport.send(message);

            System.out.println("Done");

        } catch (MessagingException e) {
            throw new RuntimeException(e);
        }

    }

    public static void sendClaves(String para, String Nombres, String correoUsu, String clave) {
        final String user = "calombo1903@gmail.com";//cambiará en consecuencia al servidor utilizado
        final String pass = "Carlos19030";
        
//1st paso) Obtener el objeto de sesión
        Properties props = new Properties();
        props.setProperty("mail.smtp.host", "smtp.gmail.com"); // envia 
        props.setProperty("mail.smtp.starttls.enable", "true");
        props.setProperty("mail.smtp.port", "25");
        props.setProperty("mail.smtp.starttls.required", "false");
        props.setProperty("mail.smtp.auth", "true");
        props.setProperty("mail.smtp.ssl.trust", "smtp.gmail.com");

        Session session = Session.getInstance(props, new javax.mail.Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(user, pass);
            }
        });

//2nd paso)compose message
        try {
            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress(user));
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(para));
            message.setSubject("Recordatorio Claves ");

            message.setContent(
                    "<center><img src='https://https://www.google.com/url?sa=i&url=https%3A%2F%2Fglobbsecurity.com%2Fdia-mundial-de-las-contrasenas-ataques-mas-comunes-y-como-evitarlos-44565%2F&psig=AOvVaw1l50u95eZpHCURYuM11lm3&ust=1617465558789000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCOjZ3_f23-8CFQAAAAAdAAAAABAD' title='Recordatorio Claves tuauto.com'></center>"
                    + "<h3> Recordatorio Claves. "
                    + Nombres
                    + "</h3>"
                    + "Datos de Ingreso: "
                    + "<h4> Correo Usuario : "
                    + correoUsu
                    + "</h4>"
                    + "<h4> Clave Usuario : "
                    + clave
                    + " </h4>", "text/html");

            //3rd paso)send message
            Transport.send(message);

            System.out.println("Done");

        } catch (MessagingException e) {
            throw new RuntimeException(e);
        }

    }

    public static void sendBienvenido(String para, String Nombres, String nombUsu, String clave) {
         final String user = "adsiwebjava@gmail.com";//cambiará en consecuencia al servidor utilizado
        final String pass = "adsi2020";

//1st paso) Obtener el objeto de sesión
        Properties props = new Properties();
        props.setProperty("mail.smtp.host", "smtp.gmail.com"); // envia 
        props.setProperty("mail.smtp.starttls.enable", "true");
        props.setProperty("mail.smtp.port", "25");
        props.setProperty("mail.smtp.starttls.required", "false");
        props.setProperty("mail.smtp.auth", "true");
        props.setProperty("mail.smtp.ssl.trust", "smtp.gmail.com");

        Session session = Session.getInstance(props, new javax.mail.Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(user, pass);
            }
        });

//2nd paso)compose message
        try {
            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress(user));
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(para));
            message.setSubject("Bienvenido Banco-Pedagogico");

            message.setContent(
                    "<center><img src='https://i.pinimg.com/originals/21/b5/10/21b510a268fc4f7e46607bf482995ae9.png' title='Bienvenidos'></center>"
                    + "<h3> Bienvenido. "
                    + Nombres
                    + "</h3>"
                    + "Datos de Ingreso: "
                    + "<h4> Correo Usuario : "
                    + nombUsu
                    + "</h4>"
                    + "<h4> Clave Usuario : "
                    + clave
                    + " </h4>", "text/html");

            //3rd paso)send message
            Transport.send(message);

            System.out.println("Done");

        } catch (MessagingException e) {
            throw new RuntimeException(e);
        }

    }

    public static void send(String para, String sujeto, String mensaje) {

        final String user = "adsiwebjava@gmail.com";//cambiará en consecuencia al servidor utilizado
        final String pass = "adsi2020";

//1st paso) Obtener el objeto de sesión
        Properties props = new Properties();
        props.setProperty("mail.smtp.host", "smtp.gmail.com"); // envia 
        props.setProperty("mail.smtp.starttls.enable", "true");
        props.setProperty("mail.smtp.port", "25");
        props.setProperty("mail.smtp.starttls.required", "false");
        props.setProperty("mail.smtp.auth", "true");
        props.setProperty("mail.smtp.ssl.trust", "smtp.gmail.com");

        Session session = Session.getInstance(props, new javax.mail.Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(user, pass);
            }
        });

//2nd paso)compose message
        try {
            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress(user));
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(para));
            message.setSubject(sujeto);
            message.setContent(mensaje, "text/html;");
            //3rd paso)send message
            Transport.send(message);

            System.out.println("Done");

        } catch (MessagingException e) {
            throw new RuntimeException(e);
        }

    }
} 