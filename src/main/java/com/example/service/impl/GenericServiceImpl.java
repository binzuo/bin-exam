package com.example.service.impl;

import com.example.dao.GenericDao;
import com.example.service.GenericService;
import com.example.util.Pagination;

import java.io.Serializable;

/**
 *
 * Created by Administrator on 2015/12/27.
 */
public abstract class GenericServiceImpl<T extends Serializable, ID extends Serializable> implements GenericService<T, ID> {

    GenericDao<T, ID> genericDao;

    protected abstract void setGenericDao(GenericDao<T, ID> genericDao);

    @Override
    public void add(T t) {
        genericDao.add(t);
    }

    @Override
    public void remove(ID id) {
        genericDao.remove(id);
    }

    @Override
    public void modify(T model) {
        genericDao.modify(model);
    }

    @Override
    public Pagination<T> list(int page) {
        return genericDao.list(page);
    }

    @Override
    public Pagination<T> query(int page, String statement, Object parameter) {
        return genericDao.query(page, statement, parameter);
    }

    @Override
    public T query(T t) {
        return genericDao.query(t);
    }

    @Override
    public T search(ID id) {
        return genericDao.search(id);
    }
}
