package guestbook.service;

import java.util.List;

import guestbook.model.Message;

public class MessageListView {

	private int messageTotalCount;  // 4
	private int currentPageNumber;  // 1
	private List<Message> messageList;
	private int pageTotalCount;
	private int messageCountPerPage;  // 3
	private int firstRow;  // 1
	private int endRow;	   // 3

	public MessageListView(List<Message> messageList, int messageTotalCount, 
			int currentPageNumber, int messageCountPerPage, 
			int startRow, int endRow) {
		this.messageList = messageList;
		this.messageTotalCount = messageTotalCount;  // 0
		this.currentPageNumber = currentPageNumber;  // 0
		this.messageCountPerPage = messageCountPerPage;  // 3
		this.firstRow = startRow;  // 0
		this.endRow = endRow;	   // 0

		calculatePageTotalCount();
	}

	private void calculatePageTotalCount() {
		if (messageTotalCount == 0) {
			pageTotalCount = 0;
		} else {
			pageTotalCount = messageTotalCount / messageCountPerPage;  // 4/3=1
			if (messageTotalCount % messageCountPerPage > 0) {
				pageTotalCount++;  // 1+1=2
			}
		}
	}

	public int getMessageTotalCount() {
		return messageTotalCount;
	}

	public int getCurrentPageNumber() {
		return currentPageNumber;
	}

	public List<Message> getMessageList() {
		return messageList;
	}

	public int getPageTotalCount() {
		return pageTotalCount;
	}

	public int getMessageCountPerPage() {
		return messageCountPerPage;
	}

	public int getFirstRow() {
		return firstRow;
	}

	public int getEndRow() {
		return endRow;
	}

	public boolean isEmpty() {
		return messageTotalCount == 0;
	}
}