package dao.upUser;

import entity.UpUser;
import entity.User;

import java.sql.SQLException;
import java.util.List;

public interface UpUserDao {
    /**
     * 查询 up主 信息
     * @return
     */
    List<User> getUpUserList() throws SQLException;

    /**
     * 添加 up主
     * @param upUser
     * @return
     */
    int addUpUser(UpUser upUser);

    /**
     * 修改 up主 信息
     * @param upUser
     * @return
     */
    int updateUpUser(UpUser upUser);

    /**
     * 删除 up主
     * @param upId
     * @return
     */
    int deleteUpUser(Integer upId);

    /**
     * 根据昵称查询 up主 信息
     * @param name
     * @return
     */
    User getUpUserByName(String name) throws SQLException;

    UpUser getUpUser(String name) throws SQLException;
}
