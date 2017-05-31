package com.grandcircus.spring.controller;


import com.grandcircus.spring.models.ParentPetFormEntity;

import com.grandcircus.spring.models.SittersEntity;

import com.grandcircus.spring.models.*;

import org.apache.http.HttpHost;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.http.util.EntityUtils;

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

import org.hibernate.*;
import org.hibernate.cfg.Configuration;
import org.springframework.web.bind.annotation.RequestMethod;


import java.util.ArrayList;

/**
 * Created by Trina Chowdhury, Lydia Latocki, and Jeremy Villa on 5/22/17.
 */

@Controller
public class HomeController {


    @RequestMapping("/")
    public ModelAndView welcomePage() {


        return new ModelAndView("welcome", "hello", "Welcome to the Pet Sitter App");

    }


    //request Mapping for parent profile/pet registration
    @RequestMapping("/petProfile")
    public ModelAndView parentProfile() {

        return new ModelAndView("petProfile", " ", " ");

    }

    //request Mapping for sitter profile/registration
    @RequestMapping("/sitterProfile")
    public ModelAndView sitterProfile() {

        return new ModelAndView("sitterProfile", " ", " ");

    }

    @RequestMapping("/dogBreedList")

    public ModelAndView dogBreed(Model model, @RequestParam("pettype") String animalType) {
        ArrayList<String> breeds = new ArrayList<String>();

        CloseableHttpResponse resp = null;

        //String result;
        String jsonString = null;

        try {

            //the HttpClient interface represents the contract for HTTP request execution.
            CloseableHttpClient browser = HttpClientBuilder.create().build();

            //creating HttpHost, which will hold variables needed for the HTTP connection/where we want to pull data from
            HttpHost host = new HttpHost("api.petfinder.com", 80, "http");

            String sig = "de89608ca520e04abbb80d795e56dccekey=21b3ceec4e3de3f6f2a332b7f399a721";

            sig = getMD5(sig);

            System.out.println("MD5: " + sig);

            if (animalType.equals("dog")) {
// this will happen if a user chooses a dog
                HttpGet getPage = new HttpGet("/breed.list?format=json&key=21b3ceec4e3de3f6f2a332b7f399a721&animal=dog");

                //this is going to execute the HTTP request, and pull back the HTTP response for us.
                resp = browser.execute(host, getPage);

                //result = "";
                jsonString = EntityUtils.toString(resp.getEntity());

                //System.out.println(jsonString);

                //creating json object
                JSONObject json = new JSONObject(jsonString);

                JSONArray dogBreedArray = json.getJSONObject("petfinder").getJSONObject("breeds").getJSONArray("breed");

                //looping through our array list
                for (int i = 0; i < dogBreedArray.length(); i++) {
                    breeds.add(dogBreedArray.getJSONObject(i).get("$t").toString());
                    //result += dogBreedArray.getJSONObject(i).get("$t") + "<br>";

                }

                model.addAttribute("breeds", breeds);
            } else {

                // this will happen if a user chooses a cat
                HttpGet getPage = new HttpGet("/breed.list?format=json&key=21b3ceec4e3de3f6f2a332b7f399a721&animal=cat");

                resp = browser.execute(host, getPage);

                //result = "";
                jsonString = EntityUtils.toString(resp.getEntity());

                //System.out.println(jsonString2);

                //creating json object
                JSONObject json2 = new JSONObject(jsonString);

                JSONArray catBreedArray = json2.getJSONObject("petfinder").getJSONObject("breeds").getJSONArray("breed");

                for (int i = 0; i < catBreedArray.length(); i++) {
                    breeds.add(catBreedArray.getJSONObject(i).get("$t").toString());
                    //result += catBreedArray.getJSONObject(i).get("$t") ;


                }
                model.addAttribute("breeds", breeds);

            }
        } catch (ClientProtocolException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        } catch (JSONException e) {
            e.printStackTrace();
        } finally {
            try {
                resp.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return new ModelAndView("petProfile", "", "");
    }

    @RequestMapping("/catBreedList")

    public ModelAndView catBreed(Model model) {

        CloseableHttpResponse resp = null;

        String result2;
        String jsonString2 = null;

        try {

            //the HttpClient interface represents the contract for HTTP request execution.
            CloseableHttpClient browser = HttpClientBuilder.create().build();

            //creating HttpHost, which will hold variables needed for the HTTP connection/where we want to pull data from
            HttpHost host = new HttpHost("api.petfinder.com", 80, "http");

            String sig = "de89608ca520e04abbb80d795e56dccekey=21b3ceec4e3de3f6f2a332b7f399a721";

            sig = getMD5(sig);

            System.out.println("MD5: " + sig);

            HttpGet getPage = new HttpGet("/breed.list?format=json&key=21b3ceec4e3de3f6f2a332b7f399a721&animal=cat");

            resp = browser.execute(host, getPage);

            result2 = "";
            jsonString2 = EntityUtils.toString(resp.getEntity());

            //System.out.println(jsonString2);

            //creating json object
            JSONObject json2 = new JSONObject(jsonString2);

            JSONArray catBreedArray = json2.getJSONObject("petfinder").getJSONObject("breeds").getJSONArray("breed");

            for (int i = 0; i < catBreedArray.length(); i++) {
                result2 += catBreedArray.getJSONObject(i).get("$t") + "<br>";

            }
            model.addAttribute("catBreeds", result2);

        } catch (ClientProtocolException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        } catch (JSONException e) {
            e.printStackTrace();
        } finally {
            try {
                resp.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return new ModelAndView("catBreedList", "", "");
    }

    private String getMD5(String str) throws UnsupportedEncodingException,
            NoSuchAlgorithmException {
        byte[] bytesOfMessage = str.getBytes("UTF-8");

        MessageDigest md = MessageDigest.getInstance("MD5");
        byte[] thedigest = md.digest(bytesOfMessage);

        BigInteger hash = new BigInteger(1, thedigest);
        String hashText = hash.toString(16);
        while (hashText.length() < 32) {
            hashText = "0" + hashText;
        }
        return hashText;
    }

    //success page for when parent's pet profile is added.
    @RequestMapping("/petProfileSuccess")
    public ModelAndView addedSuccess(@RequestParam("petName") String petName,
                                     @RequestParam("testBreeds") String testBreeds,
                                     @RequestParam("medType") String medType,
                                     @RequestParam("petWatch") String petWatch,
                                     @RequestParam("activity") String activity) {

        ParentPetFormEntity parentPet = new ParentPetFormEntity();

        //we may not need this.
        parentPet.setUserId(" ");

        parentPet.setPetName(petName);
        parentPet.setBreeds(testBreeds);
        parentPet.setMedType(medType);
        parentPet.setPetWatch(petWatch);
        parentPet.setActivity(activity);

        //design pattern
        SessionFactory factory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();

        Session session = factory.openSession();
        Transaction tx = null;
        try {
            tx = session.beginTransaction();
            session.save(parentPet);
            tx.commit();
        } catch (HibernateException e) {
            if (tx != null) tx.rollback();
            e.printStackTrace();
        } finally {
            session.close();
        }
        return new ModelAndView("dashboard", "stuff2", petName + " " + testBreeds + " " + medType + petWatch + activity
        );
    }

    @RequestMapping("/sitterProfileSuccess")
    public ModelAndView testSitterProfilePage(
            @RequestParam("petSize") String petSize,
            @RequestParam("myHome") byte myHome,
            @RequestParam("yourHome") byte yourHome,
            @RequestParam("temper") String temper,
            @RequestParam("activities") String activities,
            @RequestParam("trav") String trav,
            @RequestParam("experience") String experience, Model model) {
        SittersEntity sitter = new SittersEntity();

        sitter.setPetSize(petSize);
        sitter.setMyHome(myHome);
        sitter.setYourHome(yourHome);
        sitter.setTemper(temper);
        sitter.setActivities(activities);
        sitter.setTrav(trav);
        sitter.setExperience(experience);

//        model.addAttribute("petSize", sitter.getPetSize());
//        model.addAttribute("myHome", sitter.getMyHome());
//        model.addAttribute("yourHome", sitter.getMyHome());
//        model.addAttribute("temper", sitter.getTemper());
//        model.addAttribute("activities", sitter.getActivities());
//        model.addAttribute("trav", sitter.getTrav());
//        model.addAttribute("experience", sitter.getExperience());

        SessionFactory factory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();

        Session session = factory.openSession();
        Transaction tx = null;
//        Integer UserID = null;
        try {
            tx = session.beginTransaction();
            session.save(sitter);
            tx.commit();
        } catch (HibernateException e) {
            if (tx != null) tx.rollback();
            e.printStackTrace();
        } finally {
            session.close();
        }
//        String info = firstName + " " + lastName;

        return new ModelAndView("dashboard", "stuff3", sitter);

    }

    @RequestMapping("/createAccount")

    public ModelAndView createAccount() {
        return new ModelAndView("createAccount", "", "");
    }


    @RequestMapping(value = "/finishAccount", method = RequestMethod.GET)
    public ModelAndView addCreateAccount(@RequestParam("email") String email,
                                         @RequestParam("firstName") String firstName,
                                         @RequestParam("lastName") String lastName,
                                         @RequestParam("address") String address,
                                         @RequestParam("apt") String apt,
                                         @RequestParam("city") String city,
                                         @RequestParam("state") String state,
                                         @RequestParam("zip") int zip,
                                         @RequestParam("password") String password,
                                         @RequestParam("repeatPassword") String repeatPassword,
                                         @RequestParam("parent") byte parent,
                                         @RequestParam("sitter") byte sitter,
                                         @RequestParam("status") String googleID,
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
        user.setGoogleNum(googleID);

//        model.addAttribute("email", user.getEmail());
//        model.addAttribute("firstName", user.getFirstName());
//        model.addAttribute("lastName", user.getLastName());
//        model.addAttribute("address", user.getAddress());
//        model.addAttribute("apt", user.getApt());
//        model.addAttribute("city", user.getCity());
//        model.addAttribute("state", user.getState());
//        model.addAttribute("zip", user.getZip());
//        model.addAttribute("password", user.getPassword());
//        model.addAttribute("repeatPassword", user.getRepeatPassword());
//        model.addAttribute("parent", user.getParent());
//        model.addAttribute("sitter", user.getSitter());
//        System.out.print(user.getFirstName());
        SessionFactory factory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();

        Session session = factory.openSession();
        Transaction tx = null;
        Integer UserID = null;
        try {
            tx = session.beginTransaction();
            //THIS IS WHERE WE ARE SAVING TO DB. USER IS OBJECT CREATED ABOVE. THIS IS SAVING IT
            session.save(user);
            //.COMMIT MAKING SURE THAT IT ACTUALLY GOES THRU TRANSACTION AND SAVES IT
            tx.commit();
        } catch (HibernateException e) {
            if (tx != null) tx.rollback();
            e.printStackTrace();
        } finally {
            session.close();
        }
        String info = firstName + " " + lastName;
        return new ModelAndView("finishAccount", "addUser", info);
    }

    public ArrayList<SittersEntity> getSitterEntity() {
        // this defines the configuration and mapping resources
        Configuration configurationObject = new Configuration().configure("hibernate.cfg.xml");

        SessionFactory sessionFactory = configurationObject.buildSessionFactory();
        

        Session selectSitters = sessionFactory.openSession();


        selectSitters.beginTransaction();

        Criteria c = selectSitters.createCriteria(SittersEntity.class); //pulling the entire list of customers from the database

        // create an entire arraylist to capture complete database instead of only one item
        // also the POJO/casting the 'list' to the arrayList of the type CustomerEntity. CustomerEntity is the Object.
        return (ArrayList<SittersEntity>) c.list();
    }

    @RequestMapping("/addASitter")
    public ModelAndView addASitter (@RequestParam("sName") String sName,
                                    @RequestParam("sEmail") String sEmail,
                                    @RequestParam("status") String status) {

        AddSitterEntity sitters = new AddSitterEntity();

        sitters.setSitterName(sName);
        sitters.setSitterEmail(sEmail);
        sitters.setGoogIdParent(status);


        SessionFactory factory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();

        Session session = factory.openSession();
        Transaction tx = null;
        try {
            tx = session.beginTransaction();
            session.save(sitters);
            tx.commit();
        } catch (HibernateException e) {
            if (tx != null) tx.rollback();
            e.printStackTrace();
        } finally {
            session.close();
        }

        return new ModelAndView("dashboard", "sitterAdded", sitters);
    }


}


