package io.genkicell.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import io.genkicell.dao.UserMapper;
import io.genkicell.pojo.User;
import io.genkicell.service.UserService;

@Service
public class UserServiceImple implements UserService {

	
	@Autowired
	private UserMapper userMapper;
	
	public User findById(Integer userid) {
		return userMapper.findById(userid);
	}

}
