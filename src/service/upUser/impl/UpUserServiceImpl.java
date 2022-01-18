package service.upUser.impl;

import dao.upUser.UpUserDao;
import dao.upUser.UpUserDaoImpl;
import entity.UpUser;
import entity.User;
import service.upUser.UpUserService;

import java.sql.SQLException;
import java.util.List;

public class UpUserServiceImpl implements UpUserService {
    private UpUserDao upUserDao;

    public UpUserServiceImpl() {
        upUserDao = new UpUserDaoImpl();
    }

    /**
     * 查询所有 up主 信息
     * @return
     * @throws SQLException
     */
    @Override
    public List<User> getUpUserList() throws SQLException {
        return upUserDao.getUpUserList();
    }

    /**
     * 添加 up主
     * @param upUser
     * @return
     */
    @Override
    public boolean addUpUser(UpUser upUser) {
        if (upUserDao.addUpUser(upUser) > 0) {
            return true;
        }
        return false;
    }

    /**
     * 修改 up主 信息
     * @param upUser
     * @return
     */
    @Override
    public boolean updateUpUser(UpUser upUser) {
        if (upUserDao.updateUpUser(upUser) > 0) {
            return true;
        }
        return false;
    }

    /**
     * 删除 up主
     * @param upId
     */
    @Override
    public void deleteUpUser(Integer upId) {
        upUserDao.deleteUpUser(upId);
    }

    /**
     * 根据昵称查询 up主 信息
     * @param name
     * @return
     */
    @Override
    public User getUpUserByName(String name) throws SQLException {
        return upUserDao.getUpUserByName(name);
    }

    @Override
    public UpUser getUpUser(String name) throws SQLException {
        return upUserDao.getUpUser(name);
    }
}
