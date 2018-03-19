package com.anxi.code.service.impl;

import com.anxi.code.service.TestService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by LJ on 2018/3/14
 */
@Slf4j
@Service
public class TestServiceImpl implements TestService {

    @Override
    public List<String> test() {
        log.info("test method run........");
        List<String> list = new ArrayList<>();
        list.add("猫");
        list.add("狗");
        return list;
    }
}
