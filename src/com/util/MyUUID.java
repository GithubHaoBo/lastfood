package com.util;

import java.util.UUID;

public class MyUUID {

    public static String getUUID9(){
        return UUID.randomUUID().toString().substring(0,8).toUpperCase();
    }
}
