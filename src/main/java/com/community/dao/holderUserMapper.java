package com.community.dao;

import com.community.bean.holderUser;
import com.community.bean.holderUserExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface holderUserMapper {
    long countByExample(holderUserExample example);

    int deleteByExample(holderUserExample example);

    int deleteByPrimaryKey(Integer houseId);

    int insert(holderUser record);

    int insertSelective(holderUser record);

    List<holderUser> selectByExample(holderUserExample example);

    holderUser selectByPrimaryKey(Integer houseId);

    int updateByExampleSelective(@Param("record") holderUser record, @Param("example") holderUserExample example);

    int updateByExample(@Param("record") holderUser record, @Param("example") holderUserExample example);

    int updateByPrimaryKeySelective(holderUser record);

    int updateByPrimaryKey(holderUser record);
}