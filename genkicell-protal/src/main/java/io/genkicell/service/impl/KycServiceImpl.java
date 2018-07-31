package io.genkicell.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import io.genkicell.dao.KycMapper;
import io.genkicell.pojo.Verification;
import io.genkicell.service.KycService;

@Service
@Transactional
public class KycServiceImpl implements KycService {
	
	@Autowired
	private KycMapper kycMapper;

	public Integer save(Verification verification) {
		return kycMapper.save(verification);
	}

}
