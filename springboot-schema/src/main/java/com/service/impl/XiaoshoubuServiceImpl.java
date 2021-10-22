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


import com.dao.XiaoshoubuDao;
import com.entity.XiaoshoubuEntity;
import com.service.XiaoshoubuService;
import com.entity.vo.XiaoshoubuVO;
import com.entity.view.XiaoshoubuView;

@Service("xiaoshoubuService")
public class XiaoshoubuServiceImpl extends ServiceImpl<XiaoshoubuDao, XiaoshoubuEntity> implements XiaoshoubuService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<XiaoshoubuEntity> page = this.selectPage(
                new Query<XiaoshoubuEntity>(params).getPage(),
                new EntityWrapper<XiaoshoubuEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<XiaoshoubuEntity> wrapper) {
		  Page<XiaoshoubuView> page =new Query<XiaoshoubuView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<XiaoshoubuVO> selectListVO(Wrapper<XiaoshoubuEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public XiaoshoubuVO selectVO(Wrapper<XiaoshoubuEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<XiaoshoubuView> selectListView(Wrapper<XiaoshoubuEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public XiaoshoubuView selectView(Wrapper<XiaoshoubuEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
