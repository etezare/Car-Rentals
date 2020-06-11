package edu.miu.cs425.eCarRental.controller;

import edu.miu.cs425.eCarRental.model.Category;
import edu.miu.cs425.eCarRental.service.CategoryService;
import edu.miu.cs425.eCarRental.service.SearchService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.time.LocalDate;
import java.util.List;

public class SearchController {

    @Autowired
    private SearchService searchService;

    @Autowired
    private CategoryService categoryService;

    private RequestPeriod temp = new RequestPeriod();

    public RequestPeriod getTemp() {
        return temp;
    }

    public void setTemp(RequestPeriod temp) {
        this.temp = temp;
    }

    @GetMapping(value = "/company/search")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    public ModelAndView searchVehicles(@RequestParam("start") @DateTimeFormat(pattern = "yyyy-MM-dd") LocalDate start,
                                       @RequestParam("end") @DateTimeFormat(pattern = "yyyy-MM-dd")LocalDate end) {
        ModelAndView modelAndView = new ModelAndView();
        List<Category> availableCategories = searchService.findAvailableCategories(start, end);
        modelAndView.addObject("availableCategories", availableCategories);
        modelAndView.setViewName("public/search/results");
        temp.setStart(start);
        temp.setEnd(end);
        return modelAndView;
}