package com.module.casemodule3.service;

import com.module.casemodule3.model.Color;

import java.util.List;

public interface IColorService {
    List<Color> selectAllColor();
    Color selectByIdColor(int id);


}
