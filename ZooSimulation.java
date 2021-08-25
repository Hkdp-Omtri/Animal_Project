/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.animal_project;

/**
 *
 * @author S544929
 */
public class ZooSimulation {
    
    static String greeting = "Welcome to Maryville Zoo!";
    static String format = "ONE OF THE FINEST ZOO IN MISSOURI";
        
    /*
    * Execution begins here
    */
    public static void main(String args[]) {

      System.out.println(greeting.toUpperCase());
      System.out.println(format.toLowerCase());
      
      Aardvark alice = new Aardvark();
      Hippopotamus Hippo = new Hippopotamus();
      alice.speak();
      alice.eat();
      alice.move();
      Hippo.call();
      Hippo.move();
      Hippo.weight();
      
    }
}