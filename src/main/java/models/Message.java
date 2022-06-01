package models;

import java.util.Date;

public class Message {
    private Client sender;
    private Client receiver;
    private Date createdAt;
    private String text;
    private int id_annonce;

    public Message() {
    }

    public Message(Client sender, Client receiver, Date createdAt, String text, int id_annonce) {
        this.sender = sender;
        this.receiver = receiver;
        this.createdAt = createdAt;
        this.text = text;
        this.id_annonce = id_annonce;
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

    public Date getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Date createdAt) {
        this.createdAt = createdAt;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public int getId_annonce() {
        return id_annonce;
    }

    public void setId_annonce(int id_annonce) {
        this.id_annonce = id_annonce;
    }
}
