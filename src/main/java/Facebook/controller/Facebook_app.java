/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Facebook.controller;

//import facebook4j.*;
//import facebook4j.User.Education;
//import facebook4j.auth.AccessToken;
import java.io.IOException;
import java.net.URL;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.List;
import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.ImageIcon;
import javax.swing.JFrame;
import javax.swing.JLabel;

/**
 *
 * @author RENZO
 */
@WebServlet(name = "Control")
public class Facebook_app extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    private static String appId = "1267233560029719"; //id de su app 
    private static String appSecret = "abd055427b7ebb87966005e7fee9864c"; //id secreto que se genera cuando ponen contraseña
    private static String accessToken = "EAACEdEose0cBAH7taIDtdTA58bwAjqAN7GygdDaRcvVxQsWachttocr8S9pqhd2DZAZByznOcZBw3ZCjpVXWtkvWZBx57Vrk7R6KpzP2jISCT14XTnssmqqfgh4apEtkqeXZBmIt39qZCI58PZAugMlofBbLHXaQJCcVYMQa72O4ZBAZDZD";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, Exception {

        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

    // public static void main(String[] args) throws FacebookException, IOException {
//        Facebook facebook = new FacebookFactory().getInstance();
//        facebook.setOAuthAppId(appId, appSecret);
//        facebook.setOAuthAccessToken(new AccessToken(accessToken, null));
//
////        User user = facebook.getUser("100001269912635");
////        System.out.println(user.getBirthday());
////        System.out.println("Mi nombre: ");
////        System.out.println("\t" + user.getName() + "\n");
////        System.out.println(user.getRelationshipStatus() + "\n");
////        System.out.println(user.getEmail() + "\n");
//
//        List<Friend> amigos = facebook.friends().getFriends();
//        
//        for (int i = 0; i < amigos.size(); i++) {
//            System.out.println(amigos.get(i).getName());
//            System.out.println(amigos.get(i).getBirthday());
//        }
//        System.out.println(amigos.size());
//        List<Education> educacion = user.getEducation();
//        List<IdNameEntity> carrera = new ArrayList<>();
//        System.out.println(educacion.size());
//        for (int i = 0; i < educacion.size(); i++) {
//
////            if ("College".equals(educacion.get(i).getType())) {
////                if (educacion.get(i).getConcentration().toString() != "[]") {
//                    String carrera1 = educacion.get(i).getType();
//                    System.out.println("--wqe " + carrera1);
////                    System.out.println(carrera.get(0).getName());
//                }
//            }
}
//        ResponseList<User> results = facebook.searchUsers("UNIVERSIDAD");
//       
//        System.out.println("CON FE :3");
//        User u = null;
//        for (int i = 0; i < results.size(); i++) {
//            u = results.get(i);
//            System.out.println(u.getName());
//            System.out.println(u.getRelationshipStatus());
//            System.out.println(u.getEmail());
//            System.out.println(u.getGender());   
//            List<Education> educacion = u.getEducation();
//            List<IdNameEntity> carrera = new ArrayList<>();
//            if (educacion.isEmpty()) {
//                System.out.println("nada wey");
//            } else {
//                System.out.println(educacion.get(0));
//
//            }
//        }
//        System.out.println("----> " + results.size() );

//        String userId  = results.get(0).getId();
//        User usuario   = facebook.getUser(userId);
//        System.out.println(usuario.getEmail());
//        URL url = facebook.getPictureURL(userId, PictureSize.large);
//        String foto = String.valueOf(url);
//        System.out.println(foto);
//        java.awt.Image imagen = null;
//        try {
//
//            URL url_foto = new URL(foto);
//
//            imagen = ImageIO.read(url_foto);
//        } catch (IOException e) {
//            System.out.println("vamonos a la verga wey");
//        }
//        //mostramos la imagen
//        JFrame marco = new JFrame();
//        marco.setSize(500, 500);
//        JLabel label = new JLabel(new ImageIcon(imagen));
//        marco.add(label);
//        marco.setVisible(true);
//        ResponseList<Post> results = facebook.searchPosts("Futbol");
//        System.out.println("CON FE :3");
//
//        for (int i = 0; i < results.size(); i++) {
//            Post u = results.get(i);
//            System.out.println(u.getMessage());
//        }
//        id de usuario
//        String userId = "100001073973217";
//        ArrayList idList = new ArrayList();
//        
//        
//        idList.add("1025929618");
//        idList.add("100001311998872");
//        idList.add("10204291493460574");
//
//        JFrame marco = new JFrame();
//        //el "PictureSize.---" te permite cambiar el tamaño de la imgen, pero genera error cuando pones el atributo "thumbnail"
//        for (int i = 0; i < idList.size(); i++) {
//            URL url = facebook.getPictureURL((String) idList.get(i), PictureSize.small);
//            String foto = String.valueOf(url);
//            System.out.println(foto);
//            java.awt.Image imagen = null;
//            try {
//
//                URL url_foto = new URL(foto);
//
//                imagen = ImageIO.read(url_foto);
//            } catch (IOException e) {
//                System.out.println("vamonos a la verga wey");
//            }
//            //mostramos la imagen
//            if (i == 0) {
//                marco.setSize(500, 50 + ((4 * 10) * 10));
//            } else {
//                marco.setSize(500, 50 + ((i * 10) * 10));
//            }
//
//            JLabel label = new JLabel(new ImageIcon(imagen));
//            marco.add(label);
//            marco.setVisible(true);
//        }
 //   }
