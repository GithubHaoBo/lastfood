package com.util;

import java.text.SimpleDateFormat;
import java.util.Date;

public class FormatDate {

    public static String formateDate1(Date date){

        SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日");
        String strDate = sdf.format(date);
        return strDate;
    }

    public static String formateDate2(Date date){

        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        String strDate = sdf.format(date);
        return strDate;
    }

    public static String formateDate3(Date date){

        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String strDate = sdf.format(date);
        return strDate;
    }
}
