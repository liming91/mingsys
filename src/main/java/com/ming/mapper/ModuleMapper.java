package com.ming.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.ming.entity.Module;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ModuleMapper extends BaseMapper<Module> {
      /**
       * 查询所有的菜单
       * @return
       */
      List<Module> selectAllModule();

      /**
       * 根据用户id查询所有的菜单
       * @param userId
       * @return
       */
      List<Module> selectModuleByUserId(String userId);


      /**
       * 检查菜单名称是否重复
       * @param model
       * @return
       */
      int checkModuleName(Module model);
}
