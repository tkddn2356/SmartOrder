package com.example.controller;


import com.example.domain.Menu;
import com.example.repository.MenuMapper;
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

    @Autowired
    private MenuMapper menuMapper;

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
    @RequestMapping(value = "/menu/id/{id}", method= RequestMethod.GET)
    public ResponseEntity<Menu> getMenuById(@PathVariable("id") Long id) throws IOException {
        return new ResponseEntity<Menu>(menuMapper.getMenuById(id), HttpStatus.OK);
    }

    @ResponseBody
    @RequestMapping(value = "/menus/search/is_spicy/{is_spicy}", method= RequestMethod.GET)
    public ResponseEntity<List<Menu>> getMenuListByIs_spicy(@PathVariable("is_spicy") int is_spicy) throws IOException {
        return new ResponseEntity<List<Menu>>(menuService.getListByIs_spicy(is_spicy), HttpStatus.OK);
    }

    @ResponseBody
    @RequestMapping(value = "/menus/search/is_hot/{is_hot}", method= RequestMethod.GET)
    public ResponseEntity<List<Menu>> getMenuListByIs_hot(@PathVariable("is_hot") int is_hot) throws IOException {
        return new ResponseEntity<List<Menu>>(menuService.getListByIs_hot(is_hot), HttpStatus.OK);
    }

    @ResponseBody
    @RequestMapping(value = "/menus/search/how_much/under/{number}", method= RequestMethod.GET)
    public ResponseEntity<List<Menu>> getMenuListByHow_muchUnder(@PathVariable("number") int number) throws IOException {
        return new ResponseEntity<List<Menu>>(menuService.getListByHow_muchUnder(number), HttpStatus.OK);
    }

    @ResponseBody
    @RequestMapping(value = "/menus/search/how_much/over/{number}", method= RequestMethod.GET)
    public ResponseEntity<List<Menu>> getMenuListByHow_muchOver(@PathVariable("number") int number) throws IOException {
        return new ResponseEntity<List<Menu>>(menuService.getListByHow_muchOver(number), HttpStatus.OK);
    }





}
