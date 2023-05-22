package Model;

import java.sql.Date;
import java.util.List;

public class Post {
    
    private int id;
    private String title;
    private String url;
    private String detail;
    private Date createDate;
    private Date updateDate;
    private Boolean published;
    private Account account;
    private List<Image> image;

    public Post() {
    }

    public Post(int id, String title, String url, String detail, Date createDate, Date updateDate, Boolean published, Account account, List<Image> image) {
        this.id = id;
        this.title = title;
        this.url = url;
        this.detail = detail;
        this.createDate = createDate;
        this.updateDate = updateDate;
        this.published = published;
        this.account = account;
        this.image = image;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public Date getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }

    public Boolean getPublished() {
        return published;
    }

    public void setPublished(Boolean published) {
        this.published = published;
    }

    public Account getAccount() {
        return account;
    }

    public void setAccount(Account account) {
        this.account = account;
    }

    public List<Image> getImage() {
        return image;
    }

    public void setImage(List<Image> image) {
        this.image = image;
    }

    

   
    
    

}
