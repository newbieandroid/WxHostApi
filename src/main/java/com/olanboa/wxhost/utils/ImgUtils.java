package com.olanboa.wxhost.utils;

import net.coobird.thumbnailator.Thumbnailator;
import net.coobird.thumbnailator.Thumbnails;
import net.coobird.thumbnailator.geometry.Position;
import net.coobird.thumbnailator.geometry.Positions;
import org.springframework.util.ResourceUtils;

import javax.imageio.ImageIO;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.URL;

public class ImgUtils {


    /*背景图片的宽高*/
    private static final int tempImgW = 1920;
    private static final int tempImgH = 1080;

    /*背景图片的宽高*/
    private static final int resultImgW = 900;
    private static final int resultImgH = 900;

    private static final String tempDirName = "temp";

    private static File dir;

    /*获取项目运行的根目录*/
    public static String getRootPath() {
        try {
            File path = new File(ResourceUtils.getURL("classpath:").getPath());

            if (!path.exists()) path = new File("");
            return path.getAbsolutePath();
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
        return null;
    }

    /*在项目运行的根目录下建立一个图片缓存的文件夹*/
    public static void init() {
        dir = new File(getRootPath() + File.separator + tempDirName);
        if (!dir.exists()) {
            dir.mkdirs();
        }
        generateImg("http://www.olanboa.com/uploads/181123/1-1Q123142345336.png");
    }

    public static void generateImg(String imgUrl) {
        try {

            File temp = new File(dir, "temp.png");

            if (temp.exists()) {
                temp.delete();
            }
            temp.createNewFile();
            BufferedImage bufferedImage = new BufferedImage(
                    tempImgW,
                    tempImgH,
                    BufferedImage.TYPE_INT_RGB);

            Graphics2D gg = bufferedImage.createGraphics();

            //铺满整张图片,不这样做图片是黑色的背景
            gg.fillRect(0, 0, tempImgW, tempImgH);
            gg.setBackground(Color.WHITE);

            //生成一张空的图片
            ImageIO.write(bufferedImage, "png", temp);
            gg.dispose();
            bufferedImage.flush();

            BufferedImage imageLocal = ImageIO.read(temp);//本地作为模板的图片
            BufferedImage imageCode = ImageIO.read(new URL(imgUrl));//需要被融合的图片

            // 以本地图片为模板
            Graphics2D g = imageLocal.createGraphics();
            g.drawImage(imageCode, (tempImgH - resultImgH) / 2, (tempImgH - resultImgH) / 2, resultImgW, resultImgH, null);

            File result = new File(dir, "abc.png");
            result.createNewFile();
            ImageIO.write(imageLocal, "png", result);


            g.setColor(Color.WHITE);


            // 设置文本样式
//            g.setFont(font);
//            g.setColor(Color.BLACK);
//            // 截取用户名称的最后一个字符
//            String lastChar = userName.substring(userName.length() - 1);
//            // 拼接新的用户名称
//            String newUserName = userName.substring(0, 1) + "**" + lastChar + " 的邀请二维码";
//            // 添加用户名称
//            g.drawString(newUserName, 620, imageLocal.getHeight() - 530);
            // 完成模板修改
            g.dispose();
            imageLocal.flush();
            imageCode.flush();
            // 获取新文件的地址

        } catch (IOException e) {
            e.printStackTrace();
        }
    }

}
