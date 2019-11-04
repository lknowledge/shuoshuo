package com.community.service;


import com.community.bean.Cost;
import com.community.bean.CostExample;
import com.community.dao.CostMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class costService {

    @Autowired
    CostMapper costMapper;

    /**
     * 检验costId是否可用
     */
    public boolean checkId(Integer id){
        CostExample example = new CostExample();
        CostExample.Criteria criteria = example.createCriteria();
        criteria.andHouseIdEqualTo(id);
        long count = costMapper.countByExample(example);
        return count == 0;
    }

    /**
     * 查询所有住户
     *
     */
    public List<Cost> getAll(){
        return costMapper.selectByExample(null);
    }

    /**
     * 住户信息保存
     *
     */
    public void saveCost(Cost cost){
        costMapper.insertSelective(cost);
    }


    /**
     * 按住户的房屋标号查询户主信息
     */
    public Cost getCost(Integer costId){
        Cost cost = costMapper.selectByPrimaryKey(costId);
        return cost;
    }

    public Cost getCostByHouseId(Integer houseId){
        Cost cost1 = costMapper.selectByPrimaryKeyWithHouse(houseId);
        return cost1;
    }

    /**
     *
     * 更新户主信息
     */
    public void updateCost(Cost cost){
        costMapper.updateByPrimaryKeySelective(cost);
    }


    /**
     * 删除住户信息
     */
    public void deleteCost(Integer costId){
        costMapper.deleteByPrimaryKey(costId);
    }

    /**
     * 批量删除住户信息
     */
    public void deleteBatch(List<Integer> costIds){
        CostExample example = new CostExample();
        CostExample.Criteria criteria = example.createCriteria();
        //从xxx表中删除
        criteria.andHouseIdIn(costIds);
        costMapper.deleteByExample(example);
    }

}
