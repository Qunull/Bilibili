package dao.upUser;

import dao.BaseDaoImpl;
import entity.UpUser;
import entity.User;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UpUserDaoImpl extends BaseDaoImpl implements UpUserDao {
    /**
     * 查询所有 up主 信息
     * @return
     * @throws SQLException
     */
    @Override
    public List<User> getUpUserList() throws SQLException {
        String sql = "select * from user inner join up on user.userId = up.upId";
        List<User> userList = new ArrayList<>(); //创建 up主 集合
        ResultSet rs = executeSelect(sql); //执行 SQL，获得结果集

        while (rs.next()) {
            User user = new User();
            user.setUserId(rs.getInt("userId"));
            user.setUserName(rs.getString("userName"));
            user.setPhone(rs.getString("phone"));
            user.setPassword(rs.getString("password"));
            user.setGender(rs.getInt("gender"));
            user.setUserRole(rs.getInt("userRole"));
            user.setSignature(rs.getString("signature"));
            user.setHeadPic(rs.getString("headPic"));
            user.setContribution(rs.getInt("contribution"));
            user.setFans(rs.getInt("fans"));
            user.setConcern(rs.getInt("concern"));
            user.setNotice(rs.getString("notice"));
            user.setBirthday(rs.getString("birthDay"));

            //将该 user 添加到集合
            userList.add(user);
        }
        //执行关闭资源
        closeResource();
        return userList;
    }

    /**
     * 添加 up主
     * @param upUser
     * @return
     */
    @Override
    public int addUpUser(UpUser upUser) {
        String sql = "insert into up(upId, upName) values(?, ?)";
        int count = executeModify(sql, upUser.getUpId(), upUser.getUpName());
        return count;
    }

    /**
     * 修改 up主 信息
     * @param upUser
     * @return
     */
    @Override
    public int updateUpUser(UpUser upUser) {
        String sql = "update up set upId = ?, upName = ?";
        int count = executeModify(sql, upUser.getUpId(), upUser.getUpName());
        return count;
    }

    /**
     * 删除 up主
     * @param upId
     * @return
     */
    @Override
    public int deleteUpUser(Integer upId) {
        String sql = "delete from up where upId = ?";
        int count = executeModify(sql, upId);
        return count;
    }

    /**
     * 根据昵称查询 up主 信息
     * @param name
     * @return
     */
    @Override
    public User getUpUserByName(String name) throws SQLException {
        String sql = "select * from user inner join up on user.userId = up.upId\n" +
                "where upName = ?";
        ResultSet rs = executeSelect(sql, name);
        User user = new User();
        while (rs.next()) {
            user.setUserId(rs.getInt("userId"));
            user.setUserName(rs.getString("userName"));
            user.setPhone(rs.getString("phone"));
            user.setPassword(rs.getString("password"));
            user.setGender(rs.getInt("gender"));
            user.setUserRole(rs.getInt("userRole"));
            user.setSignature(rs.getString("signature"));
            user.setHeadPic(rs.getString("headPic"));
            user.setContribution(rs.getInt("contribution"));
            user.setFans(rs.getInt("fans"));
            user.setConcern(rs.getInt("concern"));
            user.setBirthday(rs.getString("birthDay"));
            user.setNotice(rs.getString("notice"));
        }
        return user;
    }

    @Override
    public UpUser getUpUser(String name) throws SQLException {
        String sql = "select * from up where upName = ?";
        ResultSet rs = executeSelect(sql, name);
        UpUser up = new UpUser();
        while (rs.next()) {
            up.setUpId(rs.getInt("upId"));
            up.setUpName(rs.getString("upName"));
        }
        return up;
    }


}
