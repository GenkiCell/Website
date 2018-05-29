package io.genkicell.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import io.genkicell.dao.UserMapper;
import io.genkicell.pojo.User;
import io.genkicell.service.UserService;

@Service
@Transactional
public class UserServiceImpl implements UserService{

	@Autowired
	private UserMapper userMapper;

	public User login(User user) {
		return userMapper.login(user);
	}
	
	public void registe(User user) {
		userMapper.regist(user);
	}

	public User findByUsername(String email) {
	
		return userMapper.findByUsername(email);
	}

	public Integer regist(User user) {
		return userMapper.regist(user);
		
	}
	

}
