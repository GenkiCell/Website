package io.genkicell.service;

import io.genkicell.pojo.User;

public interface UserService {
	public User login(User user);

	public User findByUsername(String email);
}
