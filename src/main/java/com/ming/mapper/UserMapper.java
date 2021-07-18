package com.ming.mapper;

import com.ming.entity.User;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface UserMapper {
    /**
     * 根据条件查询分页
     * @param user 用户信息
     * @return
     */
    List<User>  selectUserList(User user);
}
