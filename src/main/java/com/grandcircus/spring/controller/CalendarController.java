package com.grandcircus.spring.controller;


import com.grandcircus.spring.models.AddSitterEntity;
import com.grandcircus.spring.models.PetNetworkEntity;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import org.hibernate.*;
import org.hibernate.cfg.Configuration;

import java.util.ArrayList;

/**
 * Created by Trina Chowdhury, Lydia Latocki, and Jeremy Villa on 5/22/17.
 */

@Controller
public class  CalendarController {

    // controller to result all sitters related to logged-in-user pulled by ref to googIDParent
    @RequestMapping("seeSitterNetwork")
    public ModelAndView listNetworkMatch(@RequestParam("googIDParent") String googIDParent) {
System.out.print(googIDParent);
        //we must first create a session so that we can interact with the database
        Configuration configurationObject = new Configuration().configure("hibernate.cfg.xml");

        SessionFactory sessionFactory = configurationObject.buildSessionFactory();

        Session friendSession = sessionFactory.openSession();

        // opening a transaction
        Transaction myNetwork = friendSession.beginTransaction();

        //create a criteria for the entity type you'll be searching through
        Criteria myNetwkFriends = friendSession.createCriteria(AddSitterEntity.class);//.setProjection(Projections.projectionList().add( Projections.distinct(Projections.property("sitterEmail"))));
        //List list = friendSession.createCriteria(AddSitterEntity.class).add(Restrictions.eq("googIdParent", googIdParent)).setProjection(Projections.projectionList().add(Projections.distinct(Projections.property("sitterEmail")))).list();
        myNetwkFriends.add(Restrictions.eq("googIdParent", googIDParent));

        ArrayList<AddSitterEntity> list = (ArrayList<AddSitterEntity>) myNetwkFriends.list(); // get the list
        friendSession.getTransaction().commit(); // telling transaction to go

        //creates a criteria requirement, and says if an item in column "sitterEmail" matches the family of "googIDParent", to pull a single result. Use .list() for multiple results.
        for(AddSitterEntity p: list){
            System.out.println(p.getSitterEmail());
        }
        // passes the family object to the jsp page as an EL tag
        return new ModelAndView("dashboard", "sitterEmail", list);

    }
}



//    @RequestMapping("dashboard")
//    public ModelAndView listNetworkMatch(@RequestParam("parentName") String parentEmail){
//        System.out.print(parentEmail);
//        //we must first create a session so that we can interact with the database
//        Configuration configurationObject = new Configuration().configure("hibernate.cfg.xml");
//
//        SessionFactory sessionFactory = configurationObject.buildSessionFactory();
//
//        Session friendSession = sessionFactory.openSession();
//
//        // opening a transaction (I'm not sure if this part is necessary)
//        Transaction myNetwork = friendSession.beginTransaction();
//
//        //create a criteria for the entity type you'll be searching through
//       Criteria myNetwkFriends = friendSession.createCriteria(PetNetworkEntity.class);//.setProjection(Projections.projectionList().add( Projections.distinct(Projections.property("sitterEmail"))));
//        //List list = friendSession.createCriteria(PetNetworkEntity.class).add(Restrictions.eq("parentEmail", parentEmail)).setProjection(Projections.projectionList().add(Projections.distinct(Projections.property("sitterEmail")))).list();
//        myNetwkFriends.add(Restrictions.eq("parentEmail",    parentEmail));
//
//        ArrayList<PetNetworkEntity> list = (ArrayList<PetNetworkEntity>) myNetwkFriends.list(); // get the list
//        friendSession.getTransaction().commit(); // telling transaction to go
//
//        //creates a criteria requirement, and says if an item in column "sitterEmail" matches the family of "UserIDnum", to pull a single result. Use .list() for multiple results.
////        for(PetNetworkEntity p: list){
////            System.out.println(p.getSitterEmail());
////        }
//        // passes the family object to the jsp page as an EL tag
//        return new ModelAndView("dashboard", "sitterEmail", list);
//
//    }


//    //req Mapping for welcome page
//    @RequestMapping("dashboard")
//    public ModelAndView dashboard() {
//
//        return new ModelAndView("dashboard", "hello", "Hello, World!");
//
//    }
//}