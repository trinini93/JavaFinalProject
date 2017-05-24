package com.grandcircus.spring.controller;

import com.grandcircus.spring.models.UserProfileEntity;
import org.hibernate.*;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;

/**
 * Created by trina2 on 5/22/17.
 */


@Controller //first: do this annotation, when red, import class.
public class HomeController {

    //second: do this annotation, and import class again.
    @RequestMapping("/")

    //third:create method, import ModelAndView. Must return ModelAndView
    public ModelAndView helloWorld() {
        return new ModelAndView("welcome", "hello", "Hello, World!");
    }


    //second: do this annotation, and import class again.
    @RequestMapping("/createAccount")

    //third:create method, import ModelAndView. Must return ModelAndView
    public ModelAndView createAccount() {
        return new ModelAndView("createAccount", "", "");
    }


    @RequestMapping(value = "/finishAccount", method = RequestMethod.GET)
    public ModelAndView addCreateAccount(@RequestParam("email" )String email,
                                         @RequestParam("firstName")String firstName,
                                         @RequestParam("lastName")String lastName,
                                         @RequestParam("address")String address,
                                         @RequestParam("apt")String apt,
                                         @RequestParam("city")String city,
                                         @RequestParam("state")String state,
                                         @RequestParam("zip")int zip,
                                         @RequestParam("password")String password,
                                         @RequestParam("repeatPassword")String repeatPassword,
                                         @RequestParam("parent")byte parent,
                                         @RequestParam("sitter")byte sitter,
                                         Model model) {
        UserProfileEntity user = new UserProfileEntity();
        user.setEmail(email);
        user.setFirstName(firstName);
        user.setLastName(lastName);
        user.setAddress(address);
        user.setApt(apt);
        user.setCity(city);
        user.setState(state);
        user.setZip(zip);
        user.setPassword(password);
        user.setRepeatPassword(repeatPassword);
        user.setParent(parent);
        user.setSitter(sitter);

        model.addAttribute("email", user.getEmail());
        model.addAttribute("firstName", user.getFirstName());
        model.addAttribute("lastName", user.getLastName());
        model.addAttribute("address", user.getAddress());
        model.addAttribute("apt", user.getApt());
        model.addAttribute("city", user.getCity());
        model.addAttribute("state", user.getState());
        model.addAttribute("zip", user.getZip());
        model.addAttribute("password", user.getPassword());
        model.addAttribute("repeatPassword", user.getRepeatPassword());
        model.addAttribute("parent", user.getParent());
        model.addAttribute("sitter", user.getSitter());
        System.out.print(user.getFirstName());
        SessionFactory factory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();


        Session session = factory.openSession();
        Transaction tx = null;
        Integer UserID = null;
        try{
            tx = session.beginTransaction();
            session.save(user);
            tx.commit();
        }catch (HibernateException e) {
            if (tx!=null) tx.rollback();
            e.printStackTrace();
        }finally {
            session.close();
        }
        String info =  firstName + " " + lastName;
        return new ModelAndView("finishAccount", "addUser", info);
    }



    @RequestMapping("listUserProfile")
    public ModelAndView listUserProfile(){

        org.hibernate.cfg.Configuration cfg = new org.hibernate.cfg.Configuration().configure("hibernate.cfg.xml");

        SessionFactory sessionFact = cfg.buildSessionFactory();

        Session selectUserProfile = sessionFact.openSession();

        selectUserProfile.beginTransaction();

        Criteria c = selectUserProfile.createCriteria(UserProfileEntity.class);

        ArrayList<UserProfileEntity>userList = (ArrayList<UserProfileEntity>)c.list();
        return new ModelAndView("userList", "cList", userList);
    }


}


