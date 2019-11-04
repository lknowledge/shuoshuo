package com.community.service;

import com.community.bean.houseHolder;
import com.community.bean.houseHolderExample;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class houseHolderService {

    @Autowired
    com.community.dao.houseHolderMapper houseHolderMapper;


    /**
     * 查询所有住户
     *
     */
    public List<houseHolder> getAll(){
        return houseHolderMapper.selectByExample(null);
    }

    /**
     * 住户信息保存
     *
     */
    public void saveHolder(houseHolder holder){
        houseHolderMapper.insertSelective(holder);
    }


    /**
     * 按住户的房屋标号查询户主信息
     */
    public houseHolder getHolder(Integer houseId){
        houseHolder holder = houseHolderMapper.selectByPrimaryKey(houseId);
        return holder;
    }

    /**
     *
     * 更新户主信息
     */
    public void updateHolder(houseHolder holder){
        houseHolderMapper.updateByPrimaryKeySelective(holder);
    }


    /**
     * 删除住户信息
     */
    public void deleteHolder(Integer houseId){
        houseHolderMapper.deleteByPrimaryKey(houseId);
    }

    /**
     * 批量删除住户信息
     */
    public void deleteBatch(List<Integer> houseIds){
        houseHolderExample example = new houseHolderExample();
        houseHolderExample.Criteria criteria = example.createCriteria();
        //从xxx表中删除
        criteria.andHouseIdIn(houseIds);
        houseHolderMapper.deleteByExample(example);
    }




}
