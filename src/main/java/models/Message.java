package models;

import java.sql.Timestamp;
import java.util.Date;

public class Message {
    private Client sender;
    private Client receiver;
    private Timestamp createdAt;
    private String text;
    private Annonce annonce;

    public Message() {
    }

    @Override
    public String toString() {
        return "Message{" +
                "sender=" + sender +
                ", receiver=" + receiver +
                ", createdAt=" + createdAt +
                ", text='" + text + '\'' +
                ", annonce=" + annonce +
                '}';
    }

    public Message(Client sender, Client receiver, Timestamp createdAt, String text, Annonce annonce) {
        this.sender = sender;
        this.receiver = receiver;
        this.createdAt = createdAt;
        this.text = text;
        this.annonce = annonce;
    }

    public Message(Client sender, Client receiver, String text, Annonce annonce) {
        this.sender = sender;
        this.receiver = receiver;
        this.createdAt = createdAt;
        this.text = text;
        this.annonce = annonce;
    }

    public Client getSender() {
        return sender;
    }

    public void setSender(Client sender) {
        this.sender = sender;
    }

    public Client getReceiver() {
        return receiver;
    }

    public void setReceiver(Client receiver) {
        this.receiver = receiver;
    }

    public Timestamp getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Timestamp createdAt) {
        this.createdAt = createdAt;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public Annonce getAnnonce() {
        return annonce;
    }

    public void setAnnonce(Annonce annonce) {
        this.annonce = annonce;
    }
}
