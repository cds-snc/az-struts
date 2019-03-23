package action;


import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.StrutsTestCase;


public class HelloTest extends StrutsTestCase {

    public void testGetDefaultMessage() throws Exception {

        HelloAction ha = container.inject(HelloAction.class);

        String result = ha.execute();

        assertEquals("The execute method did not return " + ActionSupport.SUCCESS + " but should have.", ActionSupport.SUCCESS, result);

        assertEquals("Expected the default message!", ha.getMessageStore().getMessage(), "Bonjour! Comment ça va?");
    }

    public void testSetNameInMessage() throws Exception {

        HelloAction ha = container.inject(HelloAction.class);

        ha.setName("Paul");

        String result = ha.execute();

        assertEquals("The execute method did not return " + ActionSupport.SUCCESS + " but should have.", ActionSupport.SUCCESS, result);

        assertEquals("A message including the name ‘Paul’!", ha.getMessageStore().getMessage(), "Bonjour Paul! Comment ça va?");
    }
}
