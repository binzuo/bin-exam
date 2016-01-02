package com.bdc.service.impl;

import com.bdc.dao.GenericDao;
import com.bdc.model.User;
import com.bdc.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

/**
 * Created by Administrator on 2015/12/27.
 */
@Service
public class UserServiceImpl extends GenericServiceImpl<User, Integer> implements UserService {

    @Override
    @Autowired
    @Qualifier("userDaoImpl")
    public void setGenericDao(GenericDao<User, Integer> genericDao) {
        super.genericDao = genericDao;
    }

    @Override
    public User login(User user) {
        user = genericDao.query(user);
        if (user != null) {
            return user;
        } else {
            return null;
        }
    }
}
