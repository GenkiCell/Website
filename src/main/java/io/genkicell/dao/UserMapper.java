package io.genkicell.dao;

import org.springframework.stereotype.Repository;

import io.genkicell.pojo.User;

@Repository
public interface UserMapper {
	public User login(User user);

	public void regist(User user);

	public User findByUsername(String email);
}
