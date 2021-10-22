package com.dao;

import com.entity.XiaoshoudingdanEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.XiaoshoudingdanVO;
import com.entity.view.XiaoshoudingdanView;


/**
 * 销售订单
 */
public interface XiaoshoudingdanDao extends BaseMapper<XiaoshoudingdanEntity> {
	
	List<XiaoshoudingdanVO> selectListVO(@Param("ew") Wrapper<XiaoshoudingdanEntity> wrapper);
	
	XiaoshoudingdanVO selectVO(@Param("ew") Wrapper<XiaoshoudingdanEntity> wrapper);
	
	List<XiaoshoudingdanView> selectListView(@Param("ew") Wrapper<XiaoshoudingdanEntity> wrapper);

	List<XiaoshoudingdanView> selectListView(Pagination page,@Param("ew") Wrapper<XiaoshoudingdanEntity> wrapper);
	
	XiaoshoudingdanView selectView(@Param("ew") Wrapper<XiaoshoudingdanEntity> wrapper);
	
}
