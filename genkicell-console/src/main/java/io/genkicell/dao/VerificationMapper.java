package io.genkicell.dao;

import java.util.List;

import io.genkicell.pojo.Verification;

public interface VerificationMapper {

	public List<Verification> findUncheck();

	public Verification findeByUserId(Integer userId);

}
