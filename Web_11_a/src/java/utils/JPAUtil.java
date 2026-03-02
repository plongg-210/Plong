/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package utils;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

/**
 *
 * @author PHI LONG
 */
public class JPAUtil {
    private static final EntityManagerFactory emf =
            Persistence.createEntityManagerFactory("Web_11_a_IPAPU");
    
    public static  EntityManager getEntityManager(){
        return emf.createEntityManager();
    }
}
