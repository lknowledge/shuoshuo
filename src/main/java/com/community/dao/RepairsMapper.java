package com.community.dao;

import com.community.bean.Repairs;
import com.community.bean.RepairsExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface RepairsMapper {
    long countByExample(RepairsExample example);

    int deleteByExample(RepairsExample example);

    int deleteByPrimaryKey(Integer repairsId);

    int insert(Repairs record);

    int insertSelective(Repairs record);

    List<Repairs> selectByExample(RepairsExample example);

    Repairs selectByPrimaryKey(Integer repairsId);

    int updateByExampleSelective(@Param("record") Repairs record, @Param("example") RepairsExample example);

    int updateByExample(@Param("record") Repairs record, @Param("example") RepairsExample example);

    int updateByPrimaryKeySelective(Repairs record);

    int updateByPrimaryKey(Repairs record);
}