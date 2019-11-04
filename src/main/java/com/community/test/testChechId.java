package com.community.test;

import com.community.bean.HouseExample;
import org.junit.Test;

public class testChechId {

    @Test
    public void checkId(){
        HouseExample example = new HouseExample();
        HouseExample.Criteria criteria = example.createCriteria();
        criteria.andHouseIdEqualTo(557);

    }



}
