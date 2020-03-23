package com.sunjian.service;

import com.sunjian.entity.User;

import java.util.List;

public interface UserService {
    public User findById(Long id);
    public List<User> findAll();
    public void add(User user);
    public void deleteById(Long id);
    public void update(User user);
}
