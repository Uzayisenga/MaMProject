package stepdefinitions;

import io.cucumber.java.en.*;

public class LoginSteps {
    @Given("the user is on the login page")
    public void userOnLoginPage() {
        System.out.println("User navigates to login page");
    }

    @When("they enter valid credentials")
    public void enterValidCredentials() {
        System.out.println("User enters valid username and password");
    }

    @Then("they should be redirected to the dashboard")
    public void redirectedToDashboard() {
        System.out.println("User is redirected to the dashboard");
    }
}
