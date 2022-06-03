package dao;

import models.Message;

import java.util.List;

public interface MessageDao {
    boolean addMessage(Message c);
    boolean deleteMessage(int idc);
//    boolean deleteMessages(String ids);
    Message getMessage(int idc);
    List<Message> getMessages();
}
