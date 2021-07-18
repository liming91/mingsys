package com.ming.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Data
@TableName("P_SYS_MODULE")
public class Module implements Serializable {
    private String id;
    private String moduleCode;
    private String moduleName;
    private String moduleDesc;
    private String moduleSort;
    private Date updateTime;
    private String updateBy;
    private Date createTime;
    private String createBy;
    private Integer moduleType;
    private String pCode;
    private Integer enableFlag;
    private String menuPath;
    private String menuIcon;
    private String parentId;
    @TableField(exist = false)
    /** 子菜单 */
    private List<Module> children = new ArrayList<Module>();
}
