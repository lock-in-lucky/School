package com.ecut.utils;

import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

public class GetId {
    private static Map<String,String> map=new HashMap<>();
    static {
        map.put("软件学院", "213");
        map.put("信工学院", "214");
        map.put("理学院", "215");
        map.put("艺术学院", "216");
        map.put("体育学院", "217");
        map.put("文法学院", "218");
        map.put("测绘工程学院", "219");
        map.put("马克思主义学院", "220");
        map.put("国防教育学院", "221");
    }
    GetId(){

    }
    public static String getTeacherId(String dept){


        String name="";
        for (String key:map.keySet()){
            if (key.equals(dept)){
                name=key;
                break;
            }
        }
        String id=map.get(name);
        return id;
    }

    /**
     * 生成一个32位的UUID
     * @return
     */
    public static String getUUID(){
        return UUID.randomUUID().toString().replace("-","").toUpperCase();
    }


    public static String[] chars = new String[] { "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o",
            "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9",
            "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U",
            "V", "W", "X", "Y", "Z" };
    /**
     * 将UUID随机截取
     * @return
     */
    public static String getCourseId(){
        StringBuffer shortBuffer = new StringBuffer();
        String uuid = getUUID();
        for (int i = 0; i < 8; i++) {
            String str = uuid.substring(i * 4, i * 4 + 4);
            int x = Integer.parseInt(str, 16);
            shortBuffer.append(chars[x % 0x3E]);
        }
        return shortBuffer.toString();
    }


}
