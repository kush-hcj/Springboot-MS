package com.entity.view;

import com.entity.CaigoubuEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 采购部
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 */
@TableName("caigoubu")
public class CaigoubuView  extends CaigoubuEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public CaigoubuView(){
	}
 
 	public CaigoubuView(CaigoubuEntity caigoubuEntity){
 	try {
			BeanUtils.copyProperties(this, caigoubuEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
