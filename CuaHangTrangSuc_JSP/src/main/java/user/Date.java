package user;

import java.util.StringTokenizer;

public class Date {
    private int day;
    private int month;
    private int year;


    public Date(){

    }

    public Date(int day, int month, int year) {
        this.day = day;
        this.month = month;
        this.year = year;
    }

    public static Date convertStringToDate(String dateString){
        StringTokenizer st = new StringTokenizer(dateString, "/");
        Date date = new Date();
        try {
            date.setDay(Integer.parseInt(st.nextToken()));
            date.setMonth(Integer.parseInt(st.nextToken()));
            date.setYear(Integer.parseInt(st.nextToken()));
        } catch(NumberFormatException e){
            return null;
        }
        return date;
    }
    public String convertDateToSqlString(){
        String monthString = month<10? "0" + month: month + "";
        String dayString = day<10? "0" + day: day + "";
        return year + "-" + monthString + "-" + dayString;
    }
    public static Date convertSqlStringToDate(String dateString){
        StringTokenizer st = new StringTokenizer(dateString, "-");
        Date date = new Date();
        try {
            date.setYear(Integer.parseInt(st.nextToken()));
            date.setMonth(Integer.parseInt(st.nextToken()));
            date.setDay(Integer.parseInt(st.nextToken()));
        } catch(NumberFormatException e){
            return null;
        }
        return date;
    }
    public String convertDateToString(){
        return this.day + "/" + this.month + "/" + this.year;
    }

    public int getDay() {
        return day;
    }

    public void setDay(int day) {
        this.day = day;
    }

    public int getMonth() {
        return month;
    }

    public void setMonth(int month) {
        this.month = month;
    }

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }
}
