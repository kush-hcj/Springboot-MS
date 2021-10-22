package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.XiaoshoubuEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.XiaoshoubuVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.XiaoshoubuView;


/**
 * 销售部
 */
public interface XiaoshoubuService extends IService<XiaoshoubuEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<XiaoshoubuVO> selectListVO(Wrapper<XiaoshoubuEntity> wrapper);
   	
   	XiaoshoubuVO selectVO(@Param("ew") Wrapper<XiaoshoubuEntity> wrapper);
   	
   	List<XiaoshoubuView> selectListView(Wrapper<XiaoshoubuEntity> wrapper);
   	
   	XiaoshoubuView selectView(@Param("ew") Wrapper<XiaoshoubuEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<XiaoshoubuEntity> wrapper);
   	
}

