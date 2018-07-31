package io.genkicell.utils;

import java.util.Random;

public class RandomIdCode {

    
    //去掉了1,0,i,o几个容易混淆的字符
    public static final String VERIFY_CODES = "23456789";
    
    public static String generateRandomIdCode(int verifySize){
        return generateRandomIdCode(verifySize, VERIFY_CODES);
    }
    
    public static String generateRandomIdCode(int verifySize, String sources){
        if(sources == null || sources.length() == 0){
            sources = VERIFY_CODES;
        }
        int codesLen = sources.length();
        Random rand = new Random(System.currentTimeMillis());
        StringBuilder verifyCode = new StringBuilder(verifySize);
        for(int i = 0; i < verifySize; i++){
            verifyCode.append(sources.charAt(rand.nextInt(codesLen-1)));
        }
        return verifyCode.toString();
    }
}
