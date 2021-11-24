package com.bookstore.dao;

import com.bookstore.beans.Login;
import com.bookstore.beans.User;

public interface UserDao {

  void register(User user);

  User validateUser(Login login);
}