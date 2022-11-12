package com.module.casemodule3.service;

import com.module.casemodule3.model.Category;
import com.module.casemodule3.model.Color;

import java.util.List;

public interface ICategoryService {
    List<Category> selectAllCategory();
    Category selectByIdCategory(int id);
}
