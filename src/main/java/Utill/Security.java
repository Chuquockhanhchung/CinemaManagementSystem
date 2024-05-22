/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Utill;

import java.util.Base64;

/**
 *
 * @author Chi
 */
public class Security {

    public String encode(String pass) {
        String secret = "HPC";
        String newCode = secret + pass;
        String code = Base64.getEncoder().encodeToString(newCode.getBytes());
        return code;

    }

    public String decode(String pass){
        byte[] s = Base64.getDecoder().decode(pass);
        String code = new String(s);
        if(code.substring(0,3).compareTo("HPC") == 0){
            return code.substring(3);
        }
        return null; 
    }

}
