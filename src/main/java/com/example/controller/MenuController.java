package com.example.controller;


import com.example.domain.Board;
import com.example.domain.Menu;
import com.example.service.MenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.io.IOException;
import java.util.List;
import java.util.Map;

@Controller
public class MenuController {
    @Autowired
    private MenuService menuService;

    @ResponseBody
    @RequestMapping(value = "/menus/{category}", method= RequestMethod.GET)
    public ResponseEntity<List<Menu>> getMenuList(@PathVariable("category") String category) throws IOException {
        return new ResponseEntity<List<Menu>>(menuService.getListByCategory(category), HttpStatus.OK);
    }

    @ResponseBody
    @RequestMapping(value = "/menu/{name}", method= RequestMethod.GET)
    public ResponseEntity<Menu> getMenu(@PathVariable("name") String name) throws IOException {
        return new ResponseEntity<Menu>(menuService.getMenuByName(name), HttpStatus.OK);
    }

    @ResponseBody
    @RequestMapping(value = "/menus/search/is_spicy/{is_spicy}", method= RequestMethod.GET)
    public ResponseEntity<List<Menu>> getMenuListByIs_spicy(@PathVariable("is_spicy") Boolean is_spicy) throws IOException {
        return new ResponseEntity<List<Menu>>(menuService.getListByIs_spicy(is_spicy), HttpStatus.OK);
    }



}
