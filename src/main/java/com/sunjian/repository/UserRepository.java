package com.sunjian.repository;

import com.sunjian.entity.User;

import java.util.List;

public interface UserRepository {
    public User findById(Long id);
    public List<User> findAll();
    public void add(User user);
    public void deleteById(Long id);
    public void update(User user);
}
