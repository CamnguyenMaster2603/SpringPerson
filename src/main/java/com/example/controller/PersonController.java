package com.example.controller;

import com.example.entity.Person;
import com.example.service.PersonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class PersonController {

    @Autowired
    PersonService personService;

    @RequestMapping("/")
    public String getList(Model model){
        model.addAttribute("persons" , personService.getList());
        return "index";
    }
    @RequestMapping("/addForm")
    public String formAdd(Model model){
        model.addAttribute("person" , new Person());
        return "form";
    }
    @RequestMapping(value = "/add" , method = RequestMethod.POST)
    public  String addPerson(Person person){
        personService.addPerson(person);
        return "redirect:/" ;
    }
    @RequestMapping(value = "/delete")
    public String delete(@RequestParam("id") int id){
        personService.delete(id);
        return "redirect:/" ;
    }
    @RequestMapping("/edit")
    public String showEditForm(@RequestParam("id") int id , Model model){
        Person person = personService.getPerson(id);
        model.addAttribute("person" , person);
        model.addAttribute("type" , "update");
        return "form";
    }
    @RequestMapping(value = "/search" , method = RequestMethod.POST)
    public String searchByName(@RequestParam("name") String name , Model model){

        model.addAttribute("persons" , personService.searchByName(name));
        return "index";
     }
}
