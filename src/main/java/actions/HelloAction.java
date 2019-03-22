package main.java.actions;

import main.java.model.MessageStore;

import com.opensymphony.xwork2.ActionSupport;

public class HelloAction extends ActionSupport {
    private MessageStore messageStore;
    private static int helloCount = 0;

    public String execute() {
        messageStore = new MessageStore();
        helloCount++;

        return SUCCESS;
    }

    public MessageStore getMessageStore() {
        return messageStore;
    }

    public int getHelloCount() {
        return helloCount;
    }
}