package com.community.dao;

import com.community.bean.House;
import com.community.bean.HouseExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface HouseMapper {
    long countByExample(HouseExample example);

    int deleteByExample(HouseExample example);

    int deleteByPrimaryKey(Integer houseId);

    int insert(House record);

    int insertSelective(House record);

    List<House> selectByExample(HouseExample example);

    House selectByPrimaryKey(Integer houseId);

    List<House> selectByKeyWord(HouseExample example);

    House selectByPrimaryKeyKeyWord(@Param("building") Integer building, @Param("floor") Integer floor,
                                    @Param("area") Integer area, @Param("statement") String statement);

    int updateByExampleSelective(@Param("record") House record, @Param("example") HouseExample example);

    int updateByExample(@Param("record") House record, @Param("example") HouseExample example);

    int updateByPrimaryKeySelective(House record);

    int updateByPrimaryKey(House record);
}