package com.finalProject.usrMngmnt;

import com.finalProject.usrMngmnt.model.RoleNames;
import com.finalProject.usrMngmnt.model.User;
import com.finalProject.usrMngmnt.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import javax.annotation.PostConstruct;

@Component
public class InitialSetup {

    @Autowired
    private UserService userService;

    @Value("${admin.first.name}")
    private String firstName;

    @Value("${admin.last.name}")
    private String lastName;

    @Value("${admin.email.address}")
    private String emailAddress;

    @Value("${admin.password}")
    private String password;



    @PostConstruct
    public void initIt() throws Exception {

        User dbUser = userService.findUserByEmail(emailAddress);

        if (dbUser == null) {
            User user = new User();
            user.setFirstName(firstName);
            user.setLastName(lastName);
            user.setEmail(emailAddress);
            user.setPassword(password);
            user.setActive(Boolean.TRUE);
            user.setRoleName(RoleNames.ADMIN.name());
            userService.saveUser(user);
        }
        loadUsers();
    }



    private void loadUsers() {
        User user1 = new User("alisher", "kachykeev",
                "alisher@gmail.com", "admin", RoleNames.ADMIN.name(), Boolean.TRUE);
        userService.saveUser(user1);
        User user2 = new User("zhanbolot", "bakytbek uulu",
                "znabo  @gmail.com", "admin", RoleNames.ADMIN.name(), Boolean.TRUE);
        userService.saveUser(user2);
    }
}
