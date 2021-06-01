package article.service;

import java.util.List;

import article.model.Article;

public class ArticlePage {

	private int total;  // 2
	private int currentPage;  // 1
	private List<Article> content;  // 2개 Article 객체 포함한 리스트
	private int totalPages;  // 1
	private int startPage;  // 1
	private int endPage;  // 1

	public ArticlePage(int total, int currentPage, int size, List<Article> content) {
		this.total = total;
		this.currentPage = currentPage;
		this.content = content;
		if (total == 0) {
			totalPages = 0;
			startPage = 0;
			endPage = 0;
		} else {
			totalPages = total / size;  // 2/10=0
			if (total % size > 0) {		// 2%10=2
				totalPages++;			// 0+1=1
			}
			int modVal = currentPage % 5;  // 1%5=1
			startPage = currentPage / 5 * 5 + 1;  // 1/5*5+1 = 1
			if (modVal == 0) startPage -= 5;
			
			endPage = startPage + 4;  // 1+4=5
			if (endPage > totalPages) endPage = totalPages;
		}
	}

	public int getTotal() {
		return total;
	}

	public boolean hasNoArticles() {
		return total == 0;
	}

	public boolean hasArticles() {
		return total > 0;
	}
	
	public int getCurrentPage() {
		return currentPage;
	}

	public int getTotalPages() {
		return totalPages;
	}

	public List<Article> getContent() {
		return content;
	}

	public int getStartPage() {
		return startPage;
	}
	
	public int getEndPage() {
		return endPage;
	}
}
