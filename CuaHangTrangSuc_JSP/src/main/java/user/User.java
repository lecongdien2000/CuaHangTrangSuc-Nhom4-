package user;


public class User {
    private String username;
    private String password;
    private String email;
    private String gender;
    private Date birthday;
    private String description;
    private String accountName;
    private boolean isAdmin;

    public User(){
        //default value
        this.gender = "Nam";
        this.birthday = new Date(1,1,2000);
        this.description = "";
        this.accountName="";
        isAdmin = false;
    }

    public User(String username, String password, String email, String gender, Date birthday, String description, String accountName, boolean isAdmin) {
        this.username = username;
        this.password = password;
        this.email = email;
        this.gender = gender;
        this.birthday = birthday;
        this.description = description;
        this.accountName = accountName;
        this.isAdmin = isAdmin;
    }




    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getAccountName() {
        return accountName;
    }

    public void setAccountName(String accountName) {
        this.accountName = accountName;
    }

    public boolean isAdmin() {
        return isAdmin;
    }

    public void setAdmin(boolean admin) {
        isAdmin = admin;
    }
}
