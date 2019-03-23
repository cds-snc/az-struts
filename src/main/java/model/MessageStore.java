package model;

public class MessageStore {
    private String message;

    public MessageStore() {
        message = "Bonjour! Comment ça va?";
    }

    public String getMessage() {
        return this.message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}