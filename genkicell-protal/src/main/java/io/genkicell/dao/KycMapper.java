package io.genkicell.dao;

import org.springframework.stereotype.Repository;

import io.genkicell.pojo.Verification;

@Repository
public interface KycMapper {

	public Integer save(Verification verification);

}
