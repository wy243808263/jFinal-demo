package com.ikkong.system.controller.base;

import com.ikkong.core.base.BaseController;
import org.apache.shiro.authz.annotation.Logical;
import org.apache.shiro.authz.annotation.RequiresRoles;

import static com.ikkong.core.constant.ConstShiro.ADMIN;
import static com.ikkong.core.constant.ConstShiro.ADMINISTRATOR;

/**
 * 权限仅开放 管理员角色
 */
@RequiresRoles(value = { ADMINISTRATOR, ADMIN },logical = Logical.OR)
public class AdminBaseController extends BaseController {

}
