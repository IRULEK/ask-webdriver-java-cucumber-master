package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;

import javax.sound.midi.Soundbank;

public class MyJava {
    @Given("I print {string}")
    public void iPrint(String sString) {
        System.out.println(sString);
    }

    @Given("I print {string} and {string} and {string}")
    public void iPrintAndAnd(String sString1, String sString2, String sString3) {
        String sSpace = " ";
        String sExMark = "!";
        System.out.println(sString1+sString2+sString3);
        System.out.println(sString1+" "+sString2+" "+sString3);
        System.out.printf(sString1+sSpace+sString2+sSpace+sString3+sExMark);
        System.out.printf(sString1+sSpace+sString2+sSpace+sString3.toUpperCase()+sExMark);
    }

    @Given("I work with number {int} and number {int}")
    public void iWorkWithNumberAndNumber(int iNum1, int iNum2) {
        int iSum =iNum1 + iNum2;
        int iDif =iNum1 - iNum2;
        int iPro =iNum1 * iNum2;
        int iDiv =iNum1 / iNum2;
        System.out.println(iNum1 + "+" + iNum2 + "=" + iSum);
        System.out.println("The difference between "+ iNum1 + " and " + iNum2 + " is " + iDif);
        System.out.println(iPro);
        System.out.println("Division " + iDiv);
    }

    @Then("I identify that the number {int} is odd or even")
    public void iIdentifyThatNumberIsOddOrEven(int iNum) {
        if (iNum%2 == 0) {
            System.out.println(iNum + " is even number");
        }
        else{
            System.out.println(iNum + " is odd number");
        }
    }

    @Given("I want to print all days of the week")
    public void iWantToPrintAllDaysOfTheWeek() {
        String[] aDaysOfWeek ={"Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"};
        int[] aDateofWeek = new int[]{20, 21, 22, 23, 24, 25, 26};
        System.out.println(aDaysOfWeek[3]);
        for (String element:aDaysOfWeek) {
            System.out.println(element);
        }
        for (int i=0; i<=aDateofWeek.length; i++)
            System.out.println(aDaysOfWeek[i] + " " + aDateofWeek[i]);}

    @Given("I convert {int} foot to centimeters")
    public void iConvertFootToCentimeters(int feet) {
        double centimeters = 30.48 * feet;
        System.out.println(centimeters);
    }

    @And("I convert {int} US gallon to liters")
    public void iConvertUSGallonToLiters(int gallons) {
        double liters = 3.78 * gallons;
        System.out.println(liters);
    }

    @And("I convert {int} Celsius to Fahrenheit")
    public void iConvertCelsiusToFahrenheitFormulaCToFCF(int celsius) {
        int Fahrenheit = (celsius * 9/5) + 32;
        System.out.println(Fahrenheit);
    }

    @And("I check if number “{int}” is odd or even")
    public void iCheckIfNumberIsOddOrEven(int iNum) {
        if (iNum%2 == 0) {
            System.out.println(iNum + " is even number");
        }
        else {
            System.out.println(iNum + " is odd number");
        }
    }

    @Given("I got {int} percent on my test")
    public void iGotPercentOnMyTest(int percent) {
        if(percent >= 90 && percent <= 100){
            System.out.println("Grade A");
        } else if(percent >= 80 && percent <= 89){
            System.out.println("Grade B");
        } else if(percent >= 70 && percent <= 79){
            System.out.println("Grade C");
        } else if(percent >= 60 && percent <= 69){
            System.out.println("Grade D");
        } else {
            System.out.println("Grade F");
        }
    }

    @Given("I find the cost of {int} pounds of {string}")
    public void iFindTheCostOfPoundsOfGrapefruit(int pounds, String fruit) {
        double cost = 0;

        switch (fruit){
            case "apples":
                cost = 2;
                break;
            case "cherry":
                cost = 3;
                break;
            case "grapefruit":
                cost = 4;
                break;
            case "oranges":
                cost = 5;
        }

        cost *= pounds;

        System.out.println("Cost of grapefruit = $ " + (cost > 0 ? cost : "This product is unavailable."));
    }

    @Given("I want to print all days in the week")
    public void iWantToPrintAllDaysInTheWeek() {
        String[] week = {"Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"};

        for (String day : week) {
            System.out.println(day);
        }
    }
}

