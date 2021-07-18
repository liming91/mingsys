package com.ming.service.impl;

import com.ming.entity.User;
import com.ming.mapper.UserMapper;
import com.ming.service.IUserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class UserServiceImpl implements IUserService {

    private static final Logger log = LoggerFactory.getLogger(UserServiceImpl.class);

    @Autowired
    private UserMapper userMapper;
    @Override
    public List<User> selectUserList(User user) {
        log.info("查询用户信息带分页==={user:}"+user);
        return userMapper.selectUserList(user);
    }
}
