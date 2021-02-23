package com.util;

import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.util.ByteSource;

public class ShiroMd5 {

    public static String md5(String password, String loginname) {

        //md5 加密 分为级别的
        //进行一次加密运算  还可进行多次加密运算  可选
        //盐值：提高加密安全的级别  可选
        String algorithmName = "MD5";
        Object source = password;
        Object salt = ByteSource.Util.bytes(loginname);
        int hashIterations = 1024; //进行1024次 MD5的加密运算
        Object privacy = new SimpleHash(algorithmName, source, salt, hashIterations);
        String privacypassword = privacy.toString();
        return privacypassword;

    }

}
