package service.user;

import entity.User;

import java.sql.SQLException;
import java.util.List;

public interface UserService {
    /**
     * 用户登录
     * @param phone
     * @param password
     * @return
     */
    public User login(String phone, String password) throws Exception;

    /**
     * 用户注册
     * @param userName
     * @param phone
     * @param password
     * @return
     */
    public boolean register(String userName, String phone, String password) throws Exception;

    public boolean update(User user);

    /**
     * 查询用户
     *
     * @return
     */
    List<User> getUserList(String userName, String userId) throws SQLException;

    /**
     * 修改用户
     * @param user
     * @return
     */
    int updateUser(User user);

    /**
     * 删除用户
     * @param id
     * @return
     */
    int deleteUser(Integer id);

    /**
     * 根据Id查询用户信息
     * @param id
     * @return
     */
    User getUserById(Integer id);

    /**
     * 根据name查询用户信息
     * @param name
     * @return
     */
    User getUserByName(String name);

    int getCount(String title, Integer categoryId);

    int getUserCount();
}
