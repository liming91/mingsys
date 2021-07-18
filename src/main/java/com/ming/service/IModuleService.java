package com.ming.service;

import com.ming.entity.Module;
import com.ming.entity.User;

import java.util.List;

public interface IModuleService {
    /**
     * 新增保存菜单信息
     *
     * @param model 菜单信息
     * @return 结果
     */
    public int insertMenu(Module model);

    public Boolean checkModuleName(Module model);

    /**
     * 根据用户id查询菜单
     * @param user
     * @return
     */
    List<Module> selectMenusByUser(User user);
}
