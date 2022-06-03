package models;

public class MessageCustom {
    private int posterId;
    private int annonceId;
    private String text;

    public MessageCustom(int posterId, int annonceId, String text) {
        this.posterId = posterId;
        this.annonceId = annonceId;
        this.text = text;
    }

    @Override
    public String toString() {
        return "MessageCustom{" +
                "posterId=" + posterId +
                ", annonceId=" + annonceId +
                ", text='" + text + '\'' +
                '}';
    }

    public int getPosterId() {
        return posterId;
    }

    public void setPosterId(int posterId) {
        this.posterId = posterId;
    }

    public int getAnnonceId() {
        return annonceId;
    }

    public void setAnnonceId(int annonceId) {
        this.annonceId = annonceId;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }
}
