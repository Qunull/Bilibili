package service.upUser;

import entity.UpUser;
import entity.User;

import java.sql.SQLException;
import java.util.List;

public interface UpUserService {
    /**
     * 查询所有 up主 信息
     * @return
     */
    List<User> getUpUserList() throws SQLException;

    /**
     * 添加 up主
     * @param upUser
     * @return
     */
    boolean addUpUser(UpUser upUser);

    /**
     * 修改 up主 信息
     * @param upUser
     * @return
     */
    boolean updateUpUser(UpUser upUser);

    /**
     * 删除 up主
     * @param upId
     */
    void deleteUpUser(Integer upId);

    /**
     * 根据昵称查询 up主 信息
     * @param name
     * @return
     */
    User getUpUserByName(String name) throws SQLException;

    UpUser getUpUser(String name) throws SQLException;
}
