package com.dao;

import com.entity.CaigoubuEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.CaigoubuVO;
import com.entity.view.CaigoubuView;


/**
 * 采购部
 */
public interface CaigoubuDao extends BaseMapper<CaigoubuEntity> {
	
	List<CaigoubuVO> selectListVO(@Param("ew") Wrapper<CaigoubuEntity> wrapper);
	
	CaigoubuVO selectVO(@Param("ew") Wrapper<CaigoubuEntity> wrapper);
	
	List<CaigoubuView> selectListView(@Param("ew") Wrapper<CaigoubuEntity> wrapper);

	List<CaigoubuView> selectListView(Pagination page,@Param("ew") Wrapper<CaigoubuEntity> wrapper);
	
	CaigoubuView selectView(@Param("ew") Wrapper<CaigoubuEntity> wrapper);
	
}
