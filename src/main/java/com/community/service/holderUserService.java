package com.community.service;

import com.community.bean.holderUser;
import com.community.bean.holderUserExample;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class holderUserService {


    @Autowired
    com.community.dao.holderUserMapper holderUserMapper;


    /**
     * 检验houseId是否存在
     */
    public boolean checkId(Integer id){
        holderUserExample example = new holderUserExample();
        holderUserExample.Criteria criteria = example.createCriteria();
        criteria.andHouseIdEqualTo(id);
        long count = holderUserMapper.countByExample(example);
        return count == 1;
    }


    //查询所有用户的信息
    public List<holderUser> getAll(){
        return holderUserMapper.selectByExample(null);
    }

    //查询用户
    public holderUser getUser(Integer deptId){
        holderUser users = holderUserMapper.selectByPrimaryKey(deptId);
        return users;
    }


    //保存用户信息
    public void saveUser(holderUser user){
        holderUserMapper.insertSelective(user);
    }


    //更新用户信息
    public void updateUser(holderUser user){
        holderUserMapper.updateByPrimaryKeySelective(user);
    }

    //删除
    public void deleteUser(Integer userId){
        holderUserMapper.deleteByPrimaryKey(userId);

    }

    /**
     * 批量用户信息
     */
    public void deleteBatch(List<Integer> hosueIds){
        holderUserExample example = new holderUserExample();
        holderUserExample.Criteria criteria = example.createCriteria();
        //从xxx表中删除
        criteria.andHouseIdIn(hosueIds);
        holderUserMapper.deleteByExample(example);
    }
}
