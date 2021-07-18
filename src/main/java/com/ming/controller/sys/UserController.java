package com.ming.controller.sys;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.ming.entity.User;
import com.ming.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/sys/user")
public class UserController {
    @Autowired
    private IUserService iUserService;

    /**
     * 用户列表
     * @param pageNum
     * @param pageSize
     * @param user
     * @return
     */
    @PostMapping("/userList")
    @ResponseBody
    public Map<String, Object> userList(Integer pageNum, Integer pageSize,User user) {
        PageHelper.startPage(pageNum,pageSize);
        List<User> userList = iUserService.selectUserList(user);
        PageInfo<User> pageInfo = new PageInfo<>(userList);
        HashMap<String, Object> map = new HashMap<>();
        map.put("user", pageInfo);
        return map;
    }



}
