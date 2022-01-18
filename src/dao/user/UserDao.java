package dao.user;



import entity.User;

import java.sql.SQLException;
import java.util.List;

public interface UserDao{
    /**
     * 获取登录用户的信息
     * @param phone
     * @return
     * @throws Exception
     */
    public User getLoginUser(String phone, String password) throws Exception;

    /**
     * 用户注册
     * @param phone
     * @param password
     * @param userName
     * @return
     * @throws Exception
     */
    public Integer registerUser(String phone, String password, String userName) throws Exception;

    // 查询新闻信息
    public List<User> getUserList();

    // 修改用户信息
    public int update(User user);

    /**
     * 查询用户
     *
     * @return
     */
    List<User> getUserList(String userName,String userId) throws SQLException;

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

    int getCount(String title,Integer id);

    /**
     * 查询普通用户数量
     * @return
     */
    int getUserCount();
}
