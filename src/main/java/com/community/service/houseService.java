package com.community.service;

import com.community.bean.House;
import com.community.bean.HouseExample;
import com.community.dao.HouseMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class houseService {

    @Autowired
    HouseMapper houseMapper;


    /**
     * 检验houseId是否可用
     */
    public boolean checkId(Integer houseId){
        System.out.println(houseId);
        HouseExample example = new HouseExample();
        HouseExample.Criteria criteria = example.createCriteria();
        criteria.andHouseIdEqualTo(houseId);
        long count = houseMapper.countByExample(example);
        System.out.println(count);
        return count == 1;
    }



    //查询所有房屋的信息
    public List<House> getAll(){
        return houseMapper.selectByExample(null);
    }

    //以房屋的编号查询
    public House getHouse(Integer houseId){
        House hs = houseMapper.selectByPrimaryKey(houseId);
        return hs;
    }

    //查询某部分房屋信息
    public List<House> getHouses(House house){
        String type = house.getType();
        String statement = house.getStatement();

        HouseExample example = new HouseExample();
        HouseExample.Criteria criteria = example.createCriteria();
        criteria.andTypeLike(type).andStatementLike(statement);
        return houseMapper.selectByExample(example);
    }

    //保存房屋信息
    public void saveHouse(House house){
        houseMapper.insertSelective(house);
    }


    //更新房屋信息
    public void updateHouse(House house){
        houseMapper.updateByPrimaryKeySelective(house);
    }

    //删除房屋信息
    public void deleteHouse(Integer houseId){
        houseMapper.deleteByPrimaryKey(houseId);

    }

    /**
     * 批量房屋信息
     */
    public void deleteBatch(List<Integer> hosueIds){
        HouseExample example = new HouseExample();
        HouseExample.Criteria criteria = example.createCriteria();
        //从xxx表中删除
        criteria.andHouseIdIn(hosueIds);
        houseMapper.deleteByExample(example);
    }
}
