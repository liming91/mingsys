package com.ming.service;

import com.ming.entity.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface IUserService {
     List<User>  selectUserList(User user);
}
