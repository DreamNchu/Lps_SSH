package com.lps.action.jsonresult;

public interface JsonResult {
	
	String MSG= "msg";
	
	/**
	 * 返回json数据结果
	 * @return
	 */
	String getResult();
	
	void setResult(String result);
	
}
