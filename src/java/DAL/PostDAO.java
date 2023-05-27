/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAL;

import Model.Image;
import Model.Post;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class PostDAO extends DBContext {

    public List<Post> getAllPost() {

        List<Post> list = new ArrayList<>();

        try {

            String sql = "SELECT [id]\n"
                    + "      ,[title]\n"
                    + "      ,[detail]\n"
                    + "      ,[link]\n"
                    + "      ,[createDate]\n"
                    + "      ,[updateDate]\n"
                    + "      ,[isPublished]\n"
                    + "      ,[like]\n"
                    + "      ,[view]\n"
                    + "      ,[ownerID]\n"
                    + "  FROM [dbo].[Post]";

            PreparedStatement st = connection.prepareStatement(sql);

            ResultSet rs = st.executeQuery();

            while (rs.next()) {
                int postID = rs.getInt("id");

                Post p = new Post();
                p.setId(postID);
                p.setTitle(rs.getString("title"));
                p.setDetail(rs.getString("detail"));
                p.setUrl(rs.getString("link"));
                p.setCreateDate(rs.getDate("createDate"));
                p.setUpdateDate(rs.getDate("updateDate"));
                p.setPublished(rs.getBoolean("isPublished"));
                p.setLike(rs.getInt("like"));
                p.setView(rs.getInt("view"));
                p.setOwnerID(rs.getInt("ownerID"));

                List<Image> image = new ArrayList<>();
                String sql1 = "SELECT [id]\n"
                        + "      ,[title]\n"
                        + "      ,[url]\n"
                        + "      ,[createDate]\n"
                        + "      ,[updateDate]\n"
                        + "      ,[isActive]\n"
                        + "  FROM [dbo].[Post_Image]\n"
                        + "  WHERE pid = ?";

                PreparedStatement st1 = connection.prepareStatement(sql1);
                st1.setInt(1, postID);

                ResultSet rs1 = st1.executeQuery();

                while (rs1.next()) {
                    Image i = new Image();
                    i.setId(rs1.getInt("id"));
                    i.setTitle(rs1.getString("title"));
                    i.setUrl(rs1.getString("url"));
                    i.setPid(postID);
                    i.setCreateDate(rs1.getDate("createDate"));
                    i.setUpdateDate(rs1.getDate("updateDate"));
                    i.setActive(rs1.getBoolean("isActive"));

                    image.add(i);
                }

                p.setImage(image);

                list.add(p);
            }

        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }
    
    public List<Post> getListByPage(List<Post> list,
            int start, int end) {
        List<Post> arr = new ArrayList<>();
        for (int i = start; i < end; i++) {
            arr.add(list.get(i));
        }
        return arr;
    }
}
