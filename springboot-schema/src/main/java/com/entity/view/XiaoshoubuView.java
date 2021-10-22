package com.entity.view;

import com.entity.XiaoshoubuEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 销售部
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 */
@TableName("xiaoshoubu")
public class XiaoshoubuView  extends XiaoshoubuEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public XiaoshoubuView(){
	}
 
 	public XiaoshoubuView(XiaoshoubuEntity xiaoshoubuEntity){
 	try {
			BeanUtils.copyProperties(this, xiaoshoubuEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
