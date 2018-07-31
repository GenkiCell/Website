package io.genkicell.service;

import java.util.List;

import io.genkicell.pojo.Verification;

public interface VerficationService {

	public List<Verification> findUncheck();

	public Verification findByUserId(Integer userId);

}
