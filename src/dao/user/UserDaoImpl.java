package dao.user;

import com.mysql.cj.util.StringUtils;
import dao.BaseDaoImpl;
import entity.User;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserDaoImpl extends BaseDaoImpl implements UserDao {
    /**
     * 获取登录用户的信息
     * @param phone
     * @return
     * @throws Exception
     */
    @Override
    public User getLoginUser(String phone, String password) throws Exception {
        String sql = "select * from user where phone = ? and password = ?";
        ResultSet rs = executeSelect(sql, phone, password);
        User user = null;
        while (rs.next()) {
            user = new User();
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
            user.setBirthday(rs.getString("birthday"));
            user.setNotice(rs.getString("notice"));
        }
        closeResource();
        return user;
    }

    /**
     * 用户注册
     * @param phone
     * @param password
     * @param userName
     * @return
     */
    @Override
    public Integer registerUser(String userName, String phone, String password) throws SQLException {
        String sql = "select * from user where userName = ? and phone = ?";
        ResultSet rs = executeSelect(sql, userName, phone);
        if (!rs.next()) {
            sql = "insert into user(userName, phone, password) values(?, ?, ?)";
            int count = executeModify(sql, userName, phone, password);
            return count;
        }else {
            return 0;
        }
    }

    @Override
    public List<User> getUserList() {
        List<User> userList = new ArrayList<>();

        try {
            // 3 获取Statement对象，执行sql语句
            String sql = "select * from User_detail where 1 = 1 ";
            List<Object> params = new ArrayList<>();

            rs = this.executeSelect(sql, params.toArray());
            // 4 处理执行结果集ResultSet
            while (rs.next()) {
                User user = new User();
                int userId = rs.getInt("userId");
                String userName = rs.getString("userName");
                String signature = rs.getString("signature");
                int gender = rs.getInt("gender");
                int userRole = rs.getInt("userRole");
                String birthday = rs.getString("birthday");
                int contribution =rs.getInt("contribution");
                int fans =rs.getInt("fans");
                int concern =rs.getInt("concern");


                user.setUserId(userId);
                user.setUserName(userName);
                user.setSignature(signature);
                user.setGender(gender);
                user.setUserRole(userRole);
                user.setBirthday(birthday);
                user.setContribution(contribution);
                user.setFans(fans);
                user.setConcern(concern);

                userList.add(user);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            this.closeResource();
        }
        return userList;
    }

    @Override
    public int update(User user) {
        int count = 0;
        try {
            String sql = "update user set userName = ?, signature = ?, gender = ?, birthday = ?";
            Object[] params = {user.getUserName(), user.getSignature(), user.getGender(), user.getBirthday()};
            count = this.executeModify(sql, params);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            this.closeResource();
        }
        return count;
    }

    @Override
    public List<User> getUserList(String userName, String userId) throws SQLException {
        String sql = "select * from user where userRole=1 ";
        List<Object> params = new ArrayList<>();
        if(!StringUtils.isNullOrEmpty(userId)){
            sql+= " and userId = ? ";
            params.add(userId);
        }
        if(!StringUtils.isNullOrEmpty(userName)){
            sql+= " and userName like CONCAT('%',?,'%')";
            params.add(userName);
        }
        List<User> userList = new ArrayList<>();

        ResultSet rs = executeSelect(sql,params.toArray());

        while (rs.next()) {
            User user = new User();
            user.setUserId(rs.getInt("userId"));
            user.setUserName(rs.getString("userName"));
            user.setPassword(rs.getString("password"));
            user.setGender(rs.getInt("gender"));
            user.setPhone(rs.getString("phone"));
            user.setUserRole(rs.getInt("userRole"));
            user.setSignature(rs.getString("signature"));
            user.setHeadPic(rs.getString("headPic"));
            user.setContribution(rs.getInt("contribution"));
            user.setFans(rs.getInt("fans"));
            user.setConcern(rs.getInt("concern"));
            user.setBirthday(rs.getString("birthday"));
            user.setNotice(rs.getString("notice"));

            userList.add(user);
        }
        closeResource();
        return userList;
    }

    @Override
    public int updateUser(User user) {
        String sql = "update user set userName=?,password=?,gender=?,phone=?," +
                "userRole=?,signature=?,headPic=?,contribution=?,fans=?,concern=?" +
                ",birthday=?,notice=? where userId=?";
        int count = executeModify(sql, user.getUserName(), user.getPassword(), user.getGender(),
                user.getPhone(), user.getUserRole(), user.getSignature(), user.getHeadPic()
                , user.getContribution(), user.getFans(), user.getConcern(),user.getBirthday()
                ,user.getNotice(),user.getUserId());
        return count;
    }

    @Override
    public int deleteUser(Integer id) {
        String sql = "delete from user where userId=?";
        int count = executeModify(sql, id);
        return count;
    }

    @Override
    public User getUserById(Integer id) {
        User user = null;
        try {
            String sql = "select * from user where userId=?";
            rs = this.executeSelect(sql, id);
            if (rs.next()) {
                user = new User();
                user.setUserId(rs.getInt("userId"));
                user.setUserName(rs.getString("userName"));
                user.setPassword(rs.getString("password"));
                user.setGender(rs.getInt("gender"));
                user.setPhone(rs.getString("phone"));
                user.setUserRole(rs.getInt("userRole"));
                user.setSignature(rs.getString("signature"));
                user.setHeadPic(rs.getString("headPic"));
                user.setContribution(rs.getInt("contribution"));
                user.setFans(rs.getInt("fans"));
                user.setConcern(rs.getInt("concern"));
                user.setBirthday(rs.getString("birthday"));
                user.setNotice(rs.getString("notice"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            this.closeResource();
        }
        return user;
    }

    @Override
    public User getUserByName(String name) {
        User user = null;
        try {
            String sql = "select * from user where userName like concat('%',?,'%')";
            rs = this.executeSelect(sql, name);
            if (rs.next()) {
                user = new User();
                user.setUserId(rs.getInt("userId"));
                user.setUserName(rs.getString("userName"));
                user.setPassword(rs.getString("password"));
                user.setGender(rs.getInt("gender"));
                user.setPhone(rs.getString("phone"));
                user.setUserRole(rs.getInt("userRole"));
                user.setSignature(rs.getString("signature"));
                user.setHeadPic(rs.getString("headPic"));
                user.setContribution(rs.getInt("contribution"));
                user.setFans(rs.getInt("fans"));
                user.setConcern(rs.getInt("concern"));
                user.setBirthday(rs.getString("birthday"));
                user.setNotice(rs.getString("notice"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            this.closeResource();
        }
        return user;
    }

    @Override
    public int getCount(String title, Integer id) {
        ResultSet rs = null;
        int count = 0;
        String sql = "select count(1) from user where 1=1 ";
        List<Object> params = new ArrayList<>();
        if (title != null && !title.equals("")){
            sql += " and userName like CONCAT('%',?,'%') ";
            params.add(title);
        }
        if (id != null && id !=0){
            sql += " and userId = ? ";
            params.add(id);
        }
        try {
            rs = executeSelect(sql,params.toArray());
            if (rs.next()) {
                count = rs.getInt(1);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } finally {
            this.closeResource();
        }
        return count;
    }

    @Override
    public int getUserCount() {
        int count = 0;
        String sql = "select count(userId) from user where userRole=1";
        rs = this.executeSelect(sql);
        try {
            if (rs.next()){
                count = rs.getInt(1);
            }

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }finally {
            closeResource();
        }
        return count;
    }
}

