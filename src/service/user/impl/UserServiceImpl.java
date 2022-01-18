package service.user.impl;

import dao.user.UserDao;
import dao.user.UserDaoImpl;
import entity.User;
import service.user.UserService;

import java.sql.SQLException;
import java.util.List;

public class UserServiceImpl implements UserService {
    private UserDao userDao;

    public UserServiceImpl() {
        userDao = new UserDaoImpl();
    }

    @Override
    public User login(String phone, String password) throws Exception {
        return userDao.getLoginUser(phone, password);
    }

    @Override
    public boolean register(String userName, String phone, String password) throws Exception {
        if (userDao.registerUser(userName, phone, password) > 0) {
            return true;
        }
        return false;
    }

    @Override
    public boolean update(User user) {
        if (userDao.update(user) > 0) {
            return true;
        }
        return false;
    }

    @Override
    public List<User> getUserList(String userName, String userId) throws SQLException {
        return userDao.getUserList(userName,userId);
    }

    @Override
    public int updateUser(User user) {
        return userDao.updateUser(user);
    }

    @Override
    public int deleteUser(Integer id) {
        return userDao.deleteUser(id);
    }

    @Override
    public User getUserById(Integer id) {
        return userDao.getUserById(id);
    }

    @Override
    public User getUserByName(String name) {
        return userDao.getUserByName(name);
    }

    @Override
    public int getCount(String title, Integer categoryId) {
        return userDao.getCount(title,categoryId);
    }

    @Override
    public int getUserCount() {
        return userDao.getUserCount();
    }
}
