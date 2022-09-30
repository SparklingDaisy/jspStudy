package yong.bbs.model;

import java.util.*;

public interface BbsService {
	
	public int bbsWrite(BbsDTO dto);
	public List<BbsDTO> bbsList(int cp, int ls);
	public BbsDTO bbsContent(int idx);
	public int bbsTotalCnt();
}
