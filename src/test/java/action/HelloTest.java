package action;


import com.opensymphony.xwork2.ActionProxy;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.StrutsTestCase;

import org.junit.Test;

public class HelloTest extends StrutsTestCase {

    @Test
    public void testExecuteValidationPasses() throws Exception {

        ActionProxy actionProxy = getActionProxy("/hello.action") ;

        HelloAction action = (HelloAction) actionProxy.getAction();

        assertNotNull("The action is null but should not be.", action);

        String result = actionProxy.execute();

        assertEquals("The execute method did not return " + ActionSupport.SUCCESS + " but should have.", ActionSupport.SUCCESS, result);
    }
}
