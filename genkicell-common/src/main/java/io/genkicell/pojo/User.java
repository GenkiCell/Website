package io.genkicell.pojo;

import java.sql.Timestamp;

public class User {
	private Integer id;
	private String username;
	private String password;
	private Integer idcode;
	private Timestamp registtime;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Integer getIdcode() {
		return idcode;
	}

	public void setIdcode(Integer i) {
		this.idcode = i;
	}

	public Timestamp getRegisttime() {
		return registtime;
	}

	public void setRegisttime(Timestamp registtime) {
		this.registtime = registtime;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", username=" + username + ", password=" + password + ", idcode=" + idcode
				+ ", registtime=" + registtime + "]";
	}

}
