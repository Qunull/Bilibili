package util;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

/**
 * 采用  单例模式
 */

public class ConfigManager {
    private static Properties p; //配置属性对象 -- 静态 共享
    //1.创建私有构造函数 --
    private ConfigManager() {
        //读取 数据库配置文件
        String path = "database.properties";
        p = new Properties();
        //以输入流的方式读取到配置信息
        InputStream is = ConfigManager.class.getClassLoader().getResourceAsStream(path);
        try {
            p.load(is); //将流的内容加载到 Properties 对象中
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    //2.提供静态的私有对象（自身）
    private static ConfigManager configManager;
    /*//饿汉模式 : 线程安全
    private static ConfigManager configManager = new ConfigManager(); */

    //3.自行创建实例 -- 公开的静态方法 : 有且仅有一个ConfigManager对象
    public static synchronized ConfigManager getInstance() {
        //懒汉模式 : 线程不安全
        if (configManager == null) {
            configManager = new ConfigManager();
        }
        
        return configManager;
    }

    //4.提供公开的方法输出 value 的值
    public String getProperties(String key) {
        return p.getProperty(key);
    }
}
