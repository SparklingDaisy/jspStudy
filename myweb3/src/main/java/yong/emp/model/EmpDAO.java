package yong.emp.model;

import java.util.*;

public interface EmpDAO {
	
	public int empAdd(EmpDTO dto);
	public int empDel(String name);
	public List<EmpDTO> empList();
	public List<EmpDTO> empSearchList(String name);
	public List<EmpDTO> empSearchIdx(String idx);
	public int empUpdate(EmpDTO dto);
}
