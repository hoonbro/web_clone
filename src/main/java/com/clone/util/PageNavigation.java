package com.clone.util;

public class PageNavigation {
	/** PageNation 에서 보여줄 페이지 목록의 시작 번호 */
	private int startPage;
	
	/** PageNation 에서 보여줄 페이지 목록의 마지막 번호 */
	private int endPage;
	
	/** PageNation 의 '이전'버튼이 클릭될 때 1 페이지로 갈 것인지, startPage 의 앞으로 갈것인지 */
	private boolean startRange;
	
	/** PageNation 의 '다음'버튼이 클릭될 때 마지막 페이지로 갈 것인지, endPage 의 뒤로 갈것인지 */
	private boolean endRange;
	
	/** 검색된 전체 데이터의 개수 */
	private int totalCount;
	
	/** 전체 페이지 개수 */
	private int totalPageCount;
	
	/** 현재 페이지 번호 */
	private int currentPage;
	
	/** 한 페이지에 보여줄 데이터의 개수 */
	private int countPerPage;
	
	/** 한 페이지에 보여줄 아이템의 개수이다.*/
	int itemPerPage = 10;
	
	/** 한 화면에 만들 navigation link 의 최대 개수를 설정한다.*/
	int maxDisplayNavCnt = 10;

	public PageNavigation(int currentPage, int totalCount) {
		makePageNavigation(currentPage, totalCount);
	}
	
	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public boolean isStartRange() {
		return startRange;
	}

	public void setStartRange(boolean startRange) {
		this.startRange = startRange;
	}

	public boolean isEndRange() {
		return endRange;
	}

	public void setEndRange(boolean endRange) {
		this.endRange = endRange;
	}

	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}

	public int getTotalPageCount() {
		return totalPageCount;
	}

	public void setTotalPageCount(int totalPageCount) {
		this.totalPageCount = totalPageCount;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getCountPerPage() {
		return countPerPage;
	}

	public void setCountPerPage(int countPerPage) {
		this.countPerPage = countPerPage;
	}

	public int getItemPerPage() {
		return itemPerPage;
	}

	public void setItemPerPage(int itemPerPage) {
		this.itemPerPage = itemPerPage;
	}

	public int getMaxDisplayNavCnt() {
		return maxDisplayNavCnt;
	}

	public void setMaxDisplayNavCnt(int maxDisplayNavCnt) {
		this.maxDisplayNavCnt = maxDisplayNavCnt;
	}

	private void makePageNavigation(int currentPage, int totalCount) {
		// pageNation 의 currentPage 를 설정한다.
		this.setCurrentPage(currentPage);
		
		// pageNation 의 totalCount 를 설정한다.
		this.setTotalCount(totalCount);
		
		// pageNation 의 countPerPage 를 설정한다.
		this.setCountPerPage(itemPerPage);
		
		// totalPageCount 를 계산한다.
		int totalPageCount = (totalCount - 1) / itemPerPage + 1;
		
		// pageNation 의 totalPageCount 를 설정한다.
		this.setTotalPageCount(totalPageCount);
		
		
		// pageNavigation 의 시작 페이지를 계산해서 설정한다.
		this.setStartPage((currentPage - 1) / itemPerPage * itemPerPage + 1);
		
		
		// pageNavigation 의 endPage 를 계산해서 설정한다.
		this.setEndPage(this.getStartPage() + maxDisplayNavCnt - 1);
		
		// 만약 totalPageCount 가 위에서 계산한 값보다 작다면 totalPageCount 로 설정한다.
		if (totalPageCount < this.getEndPage()) {
			this.setEndPage(totalPageCount);
		}
		
		// pageNation 의 startRange 를 계산해서 설정한다.
		this.setStartRange(currentPage <= itemPerPage);
		
		// pageNation 의 endRange 를 계산해서 설정한다.
		boolean endRange = (totalPageCount - 1) / itemPerPage * itemPerPage < currentPage;
		
		this.setEndRange(endRange);
	}

}
