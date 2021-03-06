package cs263w16.model;

import javax.xml.bind.annotation.XmlRootElement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
/**
 * Created by ryanhalbrook on 2/4/16.
 */
@XmlRootElement
public class AppUser {

    // Opaque user id as given by Google account authentication
    private String userId;

    private String emailAddress;

    private String userName;
    private String firstName;
    private String lastName;
    private Date signupDate;

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public AppUser(String userId, String emailAddress, String userName, String firstName, String lastName, Date signupDate) {
        this.userId = userId;
        this.emailAddress = emailAddress;
        this.userName = userName;
        this.firstName = firstName;
        this.lastName = lastName;
        this.signupDate = signupDate;
    }

    public String getId() { return emailAddress; }

    public String getUserId() {
        return userId;
    }

    public String getEmailAddress() {
        return emailAddress;
    }

    public String getUserName() {
        return userName;
    }
    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getFirstName() {
        return firstName;
    }
    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }
    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public Date getSignupDate() {
        return signupDate;
    }

}
