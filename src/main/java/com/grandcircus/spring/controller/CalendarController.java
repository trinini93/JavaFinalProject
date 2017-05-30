package com.grandcircus.spring.controller;


import com.grandcircus.spring.models.PetNetworkEntity;
import org.apache.http.HttpHost;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.http.util.EntityUtils;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.hibernate.transform.DistinctRootEntityResultTransformer;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

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
import java.util.List;

/**
 * Created by Trina Chowdhury, Lydia Latocki, and Jeremy Villa on 5/22/17.
 */

@Controller
public class  CalendarController {


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


    //req Mapping for welcome page
    @RequestMapping("/dashboard")
    public ModelAndView dashboard() {

        return new ModelAndView("dashboard", "hello", "Hello, World!");

    }
}