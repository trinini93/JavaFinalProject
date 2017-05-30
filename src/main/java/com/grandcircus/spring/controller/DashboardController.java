package com.grandcircus.spring.controller;

import com.grandcircus.spring.models.UserProfileEntity;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;

/**
 * Created by Admin on 5/29/2017.
 */
@Controller
public class DashboardController {

//    @RequestMapping("/dashboard")
//    public ModelAndView welcome()
//    {
//        return new ModelAndView("dashboard", "hello", "helloWorld!");
//    }

//    @RequestMapping("/getStatus")
//    public String getStatus(Model model, @RequestParam("status") String id)
//    {
//        model.addAttribute("something", id);
//
//        return "dashboard";
//    }

    @RequestMapping("/dashboard")
    public String listUsers(Model model, @RequestParam("status") String id)
    {
        model.addAttribute("something", id);
        ArrayList<UserProfileEntity> userProfile = search(id);

        model.addAttribute ("firstName", userProfile.getFirstName());
        model.addAttribute("");

        return "/dashboard";
    }

//    public ArrayList<UserProfileEntity> getUserProfileEntity() {
//        // importing this class, you also need to chain the method of configure to properly bootstrap hibernate. This adds the configuration and mapping of the resources
//        Configuration cfg = new Configuration().configure("hibernate.cfg.xml");
//
//        // This factory creates Sessions for the user. In this case, this builds a session based around the foundation laid by the bootstrapping from the previous statement
//        SessionFactory sessionFact = cfg.buildSessionFactory();
//
//        // The next step is to create an actual session instance from the factory.
//        Session selectUsers = sessionFact.openSession();
//
//        selectUsers.beginTransaction();
//
//        // Now we reference a simple mapping that was created by hibernate to facilitate the search function from the database. Criteria performs the queries for us
//        Criteria u = selectUsers.createCriteria(UserProfileEntity.class);
//
//        // Now it's time to populate the data with our POJO or Bean. We are casting the list from the DB to an ArrayList
//
//        ArrayList<UserProfileEntity> userList = (ArrayList<UserProfileEntity>) u.list();
//
//        return userList;
//    }

    public ArrayList<UserProfileEntity> search(@RequestParam("id") String id) {
        Configuration cfg = new Configuration().configure("hibernate.cfg.xml");
        SessionFactory sessionFact = cfg.buildSessionFactory();
        Session session = sessionFact.openSession();

        session.beginTransaction();
        Criteria u = session.createCriteria(UserProfileEntity.class);

        // adds restrictions to filter to match the city entered into the form on the JSP page
        u.add(Restrictions.like("id", "%" + id + "%"));

        ArrayList<UserProfileEntity> userList = (ArrayList<UserProfileEntity>) u.list();

        return userList;
    }
}
