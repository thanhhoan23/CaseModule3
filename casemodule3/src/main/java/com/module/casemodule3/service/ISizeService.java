package com.module.casemodule3.service;

import com.module.casemodule3.model.Color;
import com.module.casemodule3.model.Size;

import java.util.List;

public interface ISizeService {
    List<Size> selectAllSize();
    Size selectByIdSize(int id);
}
