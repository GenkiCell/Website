package io.genkicell.service;

import io.genkicell.pojo.User;

public interface UserService {
	
	
	/**登录
	 * @param user
	 * @return
	 */
	public User login(User user);

	/**根据用户名查找用户
	 * @param email
	 * @return
	 */
	public User findByUsername(String email);

	/**注册
	 * @param user
	 * @return 
	 */
	public Integer regist(User user);
}
