package com.grandcircus.spring.controller;

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
import java.util.ArrayList;

/**
 * Created by Trina Chowdhury, Lydia Latocki, and Jeremy Villa on 5/22/17.
 */

@Controller
public class HomeController {

    //req Mapping for welcome page
    @RequestMapping("/")
    public ModelAndView welcomePage() {

        return new ModelAndView("welcome", "hello", "Hello, World!");

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

                for (int i = 0; i< catBreedArray.length(); i++) {
                    breeds.add(catBreedArray.getJSONObject(i).get("$t").toString());
                    //result += catBreedArray.getJSONObject(i).get("$t") ;


                }
                model.addAttribute("breeds",breeds);

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

            for (int i = 0; i< catBreedArray.length(); i++) {
                result2 += catBreedArray.getJSONObject(i).get("$t") + "<br>";

            }
            model.addAttribute("catBreeds",result2);

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

    @RequestMapping("/success")
    public ModelAndView addedSuccess(@RequestParam("petName") String petName,
                                     @RequestParam("testBreeds") String testBreeds,
                                     @RequestParam("medtype") String medtype,
                                     @RequestParam("petwatch") String petwatch,
                                     @RequestParam("stuff") String stuff) {

        return new ModelAndView("success", "stuff2", petName +" "+ testBreeds + " " + medtype + petwatch + stuff
        );
    }
}


