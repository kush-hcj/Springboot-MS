package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.CaigoubuDao;
import com.entity.CaigoubuEntity;
import com.service.CaigoubuService;
import com.entity.vo.CaigoubuVO;
import com.entity.view.CaigoubuView;

@Service("caigoubuService")
public class CaigoubuServiceImpl extends ServiceImpl<CaigoubuDao, CaigoubuEntity> implements CaigoubuService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<CaigoubuEntity> page = this.selectPage(
                new Query<CaigoubuEntity>(params).getPage(),
                new EntityWrapper<CaigoubuEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<CaigoubuEntity> wrapper) {
		  Page<CaigoubuView> page =new Query<CaigoubuView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<CaigoubuVO> selectListVO(Wrapper<CaigoubuEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public CaigoubuVO selectVO(Wrapper<CaigoubuEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<CaigoubuView> selectListView(Wrapper<CaigoubuEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public CaigoubuView selectView(Wrapper<CaigoubuEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
