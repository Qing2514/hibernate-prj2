package cn.edu.zjut.service;

import java.util.List;
import java.util.ArrayList;

import cn.edu.zjut.dao.ItemDAO;

public class ItemService
{
    private List items = new ArrayList();

    public List findByHql()
    {
        ItemDAO dao = new ItemDAO();
        //String hql = "from cn.edu.zjut.po.Item";
        //String hql = "from Item";
        //String hql = "from Item as item";
        //String hql = "select item.title from Item as item";
        //String hql = "select item.title, item.cost from Item as item";

        //String hql = "select sum(item.cost) from Item as item";
        //String hql = "select title from Item as item where item.cost < 20";
        //String hql = "from Item as item order by item.cost desc";
        String hql = "select item.title, item.cost from Item as item where item.cost > (select min(item.cost) from Item as item)";
        List list = dao.findByHql(hql);
        dao.getSession().close();
        return list;
    }
}