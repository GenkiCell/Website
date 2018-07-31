package io.genkicell.dao;

import org.springframework.stereotype.Repository;

import io.genkicell.pojo.User;

@Repository
public interface UserMapper {
	/**登录
	 * @param user
	 * @return
	 */
	public User login(User user);

	/**注册
	 * 返回主键
	 * @param user
	 */
	public Integer regist(User user);

	/**根据用户名查找用户
	 * @param email
	 * @return
	 */
	public User findByUsername(String email);
}
