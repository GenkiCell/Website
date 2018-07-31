package io.genkicell.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import io.genkicell.dao.CityMapper;
import io.genkicell.pojo.Citys;
import io.genkicell.service.CitySerivce;

@Service
public class CitySerivceImpl implements CitySerivce{

	@Autowired
	private CityMapper cityMapper;
	
	public Citys findByNid(String nationalityid) {
		return cityMapper.findyByNid(nationalityid);
	}

}
