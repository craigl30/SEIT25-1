package io.cucumber.pages;

import io.appium.java_client.pagefactory.AppiumFieldDecorator;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.Select;

import java.time.Duration;

public class Dropdown {

  protected static ChromeDriver driver;

  public Dropdown(ChromeDriver driver) {
    this.driver = driver;
    PageFactory.initElements(new AppiumFieldDecorator(driver, Duration.ofSeconds(5)), this);
    waitForPageLoad();
  }

  public void waitForPageLoad() {
    try {
      Thread.sleep(Duration.ofSeconds(5));
    } catch (InterruptedException e) {
      throw new RuntimeException(e);
    }
  }
  public static void main(String[] args) throws InterruptedException {
  //Click Dropdown Link
  driver.findElement(By.linkText("Dropdown")).click();

  WebElement dropdown = driver.findElement(By.id("dropdown"));

  Select dd = new Select(dropdown);

  dd.selectByVisibleText("Option 1");

  Thread.sleep(1000);

  dd.selectByVisibleText("Option 2");

  driver.quit();

  }

}