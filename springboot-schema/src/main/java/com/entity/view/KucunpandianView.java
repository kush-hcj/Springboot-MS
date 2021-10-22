package com.entity.view;

import com.entity.KucunpandianEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 库存盘点
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用） 
 */
@TableName("kucunpandian")
public class KucunpandianView  extends KucunpandianEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public KucunpandianView(){
	}
 
 	public KucunpandianView(KucunpandianEntity kucunpandianEntity){
 	try {
			BeanUtils.copyProperties(this, kucunpandianEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
