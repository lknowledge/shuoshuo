package com.community.service;

import com.community.bean.Repairs;
import com.community.bean.RepairsExample;
import com.community.dao.RepairsMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class repairsService {

    @Autowired
    RepairsMapper repairsMapper;

    //查询所有维修信息
    public List<Repairs> getAll(){
        return repairsMapper.selectByExample(null);
    }

    //以维修的编号查询
    public Repairs getRepairs(Integer repairsId){
        Repairs news = repairsMapper.selectByPrimaryKey(repairsId);
        return news;
    }


    //保存维修订单信息
    public void saveRepairs(Repairs re){
        repairsMapper.insertSelective(re);
    }


    //更新维修信息
    public void updateRepairs(Repairs repairs){
        repairsMapper.updateByPrimaryKeySelective(repairs);
    }

    //删除维修订单信息
    public void deleteRepairs(Integer repairsId){
        repairsMapper.deleteByPrimaryKey(repairsId);

    }

    /**
     * 批量维修订单信息
     */
    public void deleteBatch(List<Integer> repairsIds){
        RepairsExample example = new RepairsExample();
        RepairsExample.Criteria criteria = example.createCriteria();
        //从xxx表中删除
        criteria.andRepairsIdIn(repairsIds);
        repairsMapper.deleteByExample(example);
    }
}
