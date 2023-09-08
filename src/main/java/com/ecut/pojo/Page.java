package com.ecut.pojo;

import java.util.List;
/**
 * 分页实体类
 * @author 虞宇明

 */
@SuppressWarnings("all")
public class Page<T> {

    public final static Integer PAGE_SIZES=5;//每页显示的记录数
    private int currPage;//当前页数
    private int totalCount;//总记录数
    private int totalPage;//总页数
    private List<T> lists;//每页的显示的数据


    public Page() {
        super();
    }

    public int getCurrPage() {
        return currPage;
    }

    public void setCurrPage(int currPage) {
        this.currPage = currPage;
    }



    public int getTotalCount() {
        return totalCount;
    }

    public void setTotalCount(int totalCount) {
        this.totalCount = totalCount;
    }

    public int getTotalPage() {
        return totalPage;
    }

    public void setTotalPage(int totalPage) {
        this.totalPage = totalPage;
    }

    public List<T> getLists() {
        return lists;
    }

    public void setLists(List<T> lists) {
        this.lists = lists;
    }

}