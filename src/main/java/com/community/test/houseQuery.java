package com.community.test;

import com.community.bean.HouseExample;
import com.community.dao.HouseMapper;
import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

public class houseQuery {

    @Autowired
    HouseMapper houseMapper;

    @Autowired
    SqlSession sqlSession;

    @Test
    public void testHouseQuery(){

        HouseExample example = new HouseExample();
        HouseExample.Criteria criteria = example.createCriteria();
        criteria.andTypeLike("两室一厅");

        houseMapper.selectByExample(example);

//        for (House house:
//             ) {
//             System.out.println(house);
//        }



    }



}
