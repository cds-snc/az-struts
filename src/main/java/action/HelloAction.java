package action;

import model.MessageStore;

import com.opensymphony.xwork2.ActionSupport;

public class HelloAction extends ActionSupport {
    private MessageStore messageStore;

    private static int helloCount = 0;

    private String name;

    public String execute() throws Exception {
        messageStore = new MessageStore();

        helloCount++;

        if (this.name != null) {
            messageStore.setMessage("Bonjour " + this.name + "! Comment ça va?");
        }

        return SUCCESS;
    }

    public MessageStore getMessageStore() {
        return messageStore;
    }

    public int getHelloCount() {
        return helloCount;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}