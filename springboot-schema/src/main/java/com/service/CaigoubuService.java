package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.CaigoubuEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.CaigoubuVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.CaigoubuView;


/**
 * 采购部
 */
public interface CaigoubuService extends IService<CaigoubuEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<CaigoubuVO> selectListVO(Wrapper<CaigoubuEntity> wrapper);
   	
   	CaigoubuVO selectVO(@Param("ew") Wrapper<CaigoubuEntity> wrapper);
   	
   	List<CaigoubuView> selectListView(Wrapper<CaigoubuEntity> wrapper);
   	
   	CaigoubuView selectView(@Param("ew") Wrapper<CaigoubuEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<CaigoubuEntity> wrapper);
   	
}

