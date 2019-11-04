package com.community.service;

import com.community.bean.News;
import com.community.bean.NewsExample;
import com.community.dao.NewsMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class newsService {

    @Autowired
    NewsMapper newsMapper;

    //查询所有新闻信息
    public List<News> getAll(){
        return newsMapper.selectByExample(null);
    }

    //以新闻的编号查询
    public News getNews(Integer newsId){
        News news = newsMapper.selectByPrimaryKey(newsId);
        return news;
    }


    //保存新闻信息
    public void saveNews(News news){
        newsMapper.insertSelective(news);
    }


    //更新新闻信息
    public void updateNews(News news){
        newsMapper.updateByPrimaryKeySelective(news);
    }

    //删除新闻信息
    public void deleteNews(Integer newsId){
        newsMapper.deleteByPrimaryKey(newsId);

    }

    /**
     * 批量新闻信息
     */
    public void deleteBatch(List<Integer> hosueIds){
        NewsExample example = new NewsExample();
        NewsExample.Criteria criteria = example.createCriteria();
        //从xxx表中删除
        criteria.andNewsIdIn(hosueIds);
        newsMapper.deleteByExample(example);
    }


}
