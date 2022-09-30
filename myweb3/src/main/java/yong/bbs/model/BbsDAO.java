package yong.bbs.model;

import java.util.*;

public interface BbsDAO {
	
	public int bbsWrite(BbsDTO dto);
	public List<BbsDTO> bbsList(Map map);
	public BbsDTO bbsContent(int idx);
	public int bbsTotalCnt();
}
