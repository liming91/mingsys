package com.ming.controller.sys;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.ming.entity.Module;
import com.ming.entity.User;
import com.ming.service.IModuleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/sys/module")
public class ModuleController {
    @Autowired
    private IModuleService iModuleService;

    @GetMapping(value = "/index", produces = {"application/json;charset=UTF-8"})
    @ResponseBody
    public Map<String, Object> index() {
        Map<String, Object> map = new HashMap<>();
        User user = new User();
        user.setUserAccount("admin");
        PageHelper.startPage(1,10);
        List<Module> moduleList = iModuleService.selectMenusByUser(user);
        PageInfo<Module> pageInfo = new PageInfo<>(moduleList);
        map.put("moduleList", pageInfo);
        return map;
    }

    @PostMapping("/add")
    @ResponseBody
    public Map<String, Object> add(Module module) {
        Map<String, Object> map = new HashMap<>();
        Boolean checkModuleName = iModuleService.checkModuleName(module);
        if (checkModuleName) {
            map.put("msg", "菜单名称已经存在");
            return map;
        }
        int menu = iModuleService.insertMenu(module);
        if (menu > 0) {
            map.put("msg", "菜单名称插入成功");
        }
        return map;
    }

    /**
     * 校验菜单名称
     */
    @GetMapping("/checkModuleName")
    public Boolean checkModuleName(Module module) {
        return iModuleService.checkModuleName(module);
    }
}
