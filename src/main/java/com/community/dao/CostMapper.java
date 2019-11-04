package com.community.dao;

import com.community.bean.Cost;
import com.community.bean.CostExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CostMapper {
    long countByExample(CostExample example);

    int deleteByExample(CostExample example);

    int deleteByPrimaryKey(Integer costId);

    int insert(Cost record);

    int insertSelective(Cost record);

    List<Cost> selectByExample(CostExample example);

    Cost selectByPrimaryKey(Integer costId);

    List<Cost> selectByExampleWithHouse(CostExample example);

    Cost selectByPrimaryKeyWithHouse(Integer HouseId);

    int updateByExampleSelective(@Param("record") Cost record, @Param("example") CostExample example);

    int updateByExample(@Param("record") Cost record, @Param("example") CostExample example);

    int updateByPrimaryKeySelective(Cost record);

    int updateByPrimaryKey(Cost record);
}