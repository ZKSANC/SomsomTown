package com.project.service;

import java.util.List;

import com.project.domain.CodeDTO;
import com.project.domain.PageDTO;

public interface CodeService {

	public List<CodeDTO> getCodeGrpList(PageDTO pageDTO);

	public int getCodeGrpCount();

	public List<CodeDTO> getCodeList(PageDTO pageDTO);

	public int getCodeCount();

	public List<CodeDTO> getCodeList2(String code_grp);


	}

