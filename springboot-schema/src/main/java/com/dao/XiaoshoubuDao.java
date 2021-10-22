package com.dao;

import com.entity.XiaoshoubuEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.XiaoshoubuVO;
import com.entity.view.XiaoshoubuView;


/**
 * 销售部
 * 
 */
public interface XiaoshoubuDao extends BaseMapper<XiaoshoubuEntity> {
	
	List<XiaoshoubuVO> selectListVO(@Param("ew") Wrapper<XiaoshoubuEntity> wrapper);
	
	XiaoshoubuVO selectVO(@Param("ew") Wrapper<XiaoshoubuEntity> wrapper);
	
	List<XiaoshoubuView> selectListView(@Param("ew") Wrapper<XiaoshoubuEntity> wrapper);

	List<XiaoshoubuView> selectListView(Pagination page,@Param("ew") Wrapper<XiaoshoubuEntity> wrapper);
	
	XiaoshoubuView selectView(@Param("ew") Wrapper<XiaoshoubuEntity> wrapper);
	
}
