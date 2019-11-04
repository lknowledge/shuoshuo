package com.community.dao;

import com.community.bean.houseHolder;
import com.community.bean.houseHolderExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface houseHolderMapper {
    long countByExample(houseHolderExample example);

    int deleteByExample(houseHolderExample example);

    int deleteByPrimaryKey(Integer houseId);

    int insert(houseHolder record);

    int insertSelective(houseHolder record);

    List<houseHolder> selectByExample(houseHolderExample example);

    houseHolder selectByPrimaryKey(Integer houseId);

    int updateByExampleSelective(@Param("record") houseHolder record, @Param("example") houseHolderExample example);

    int updateByExample(@Param("record") houseHolder record, @Param("example") houseHolderExample example);

    int updateByPrimaryKeySelective(houseHolder record);

    int updateByPrimaryKey(houseHolder record);
}