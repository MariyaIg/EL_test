package com.ignateva.el_test.entity;

public class User {

    public String F_name;
    public String S_name;
   public static Integer age;
   public static String e_mail;
   public static String pass;

    public User(String F_name,String S_name,Integer age,String e_mail,String pass) {
        this.F_name= F_name;
        this.S_name = S_name;
        this.age =age;
        this.e_mail =e_mail;
        this.pass = pass;
    }

    @Override
    public String toString() {
        return "Имя: " + F_name + "\n"+
                "Фамилия: " + S_name + "\n"+
                "Возраст: " + age + "\n" +
                "Почта: " + e_mail + "\n";
    }

    public User() {
    }

    public String getF_name() {
        return F_name;
    }

    public void setF_name(String f_name) {
        F_name = f_name;
    }

    public String getS_name() {
        return S_name;
    }

    public void setS_name(String s_name) {
        S_name = s_name;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        User.age = age;
    }

    public String getE_mail() {
        return e_mail;
    }

    public void setE_mail(String e_mail) {
        User.e_mail = e_mail;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        User.pass = pass;
    }
}
