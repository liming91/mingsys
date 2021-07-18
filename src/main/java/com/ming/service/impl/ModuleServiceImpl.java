package com.ming.service.impl;

import com.ming.entity.Module;
import com.ming.entity.User;
import com.ming.mapper.ModuleMapper;
import com.ming.service.IModuleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@Service
public class ModuleServiceImpl implements IModuleService {

    @Autowired
    private ModuleMapper moduleMapper;

    @Override
    public int insertMenu(Module model) {
        return moduleMapper.insert(model);
    }

    @Override
    public Boolean checkModuleName(Module model) {
        return moduleMapper.checkModuleName(model) > 0;
    }

    @Override
    public List<Module> selectMenusByUser(User user) {
        List<Module> menus = new ArrayList<>();
        if (user.getUserAccount().equals("admin")) {
            menus = moduleMapper.selectAllModule();
        } else {
            menus = moduleMapper.selectModuleByUserId(user.getUserId());
        }

        return getParent(menus);
    }

    /**
     * 获取父类节点（递归算法）
     *
     * @param list 菜单集合
     * @return
     */
    public List<Module> getParent(List<Module> list) {
        if (CollectionUtils.isEmpty(list)) {
            return null;
        }
        List<Module> trees = new ArrayList<Module>();

        for (Module module : list) {
            if (null == module.getParentId() || ""==module.getParentId()) {
                trees.add(findChildren(module, list));
            }
        }
        return trees;
    }

    /**
     * 获取子类节点 https://www.cnblogs.com/summer-chou/p/14977424.html
     *
     * @param parent 父节点
     * @param list   菜单集合
     * @return
     */
    public Module findChildren(Module parent, List<Module> list) {
        for (Module children : list) {
            if (parent.getId().equals(children.getParentId())) {
                parent.getChildren().add(findChildren(children, list));
            }
        }
        return parent;
    }
}
