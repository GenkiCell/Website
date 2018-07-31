package io.genkicell.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import io.genkicell.dao.VerificationMapper;
import io.genkicell.pojo.Verification;
import io.genkicell.service.VerficationService;

@Service
public class VerficationServiceImpl implements VerficationService{

	@Autowired
	private VerificationMapper verificationMapper;
	
	public List<Verification> findUncheck() {
		return verificationMapper.findUncheck();
	}

	public Verification findByUserId(Integer userId) {
		return verificationMapper.findeByUserId(userId);
	}

}
