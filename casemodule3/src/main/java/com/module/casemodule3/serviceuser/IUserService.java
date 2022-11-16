package com.module.casemodule3.serviceuser;

import com.module.casemodule3.model.Product;
import com.module.casemodule3.model.User;

import java.util.List;

public interface IUserService {
    void insertUser(User user);

    User selectUser(int id);

    List<User> selectAllUser();

    boolean deleteUser(int id);
}
