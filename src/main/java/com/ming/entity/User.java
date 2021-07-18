package com.ming.entity;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;

@Data
public class User implements Serializable {
    private String userId;
    private String userAccount;
    private String userName;
    private String userPass;
    /**
     * 角色ID
     */
    private String roleId;
    private Date createTime;
    private String createBy;
    /**
     * 是否删除（0 可用  1已删除）
     */
    private Integer delnot;
    private Integer phone;
    /**
     * 工作科室
     */
    private String woekDepartment;
    private String userCode;
    private String email;
    /**
     * 头像
     */
    private String avatar;
    private Integer sex;
    private Integer enableFlag;
    /**
     * 部门ID
     */
    private String deptId;


}
