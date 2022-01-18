package util;

/**
 * 分页工具
 */
public class PageUtil {
    private int pageSize; //页面容量
    private int totalCount; //数据的总数量
    private int currentPageNo; //当前的页码
    private int totalPageCount; //总页数

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public int getTotalCount() {
        return totalCount;
    }

    public void setTotalCount(int totalCount) {
        this.totalCount = totalCount;
        this.setTotalPageCount();
    }

    public int getCurrentPageNo() {
        return currentPageNo;
    }

    public void setCurrentPageNo(int currentPageNo) {
        this.currentPageNo = currentPageNo;
    }

    public int getTotalPageCount() {
        return totalPageCount;
    }

    //根据 页面容量 和 总数量 计算出 总页码
    private void setTotalPageCount() {
        if (totalCount % pageSize == 0) {
            this.totalPageCount = totalCount / pageSize;
        }else {
            this.totalPageCount = totalCount / pageSize + 1;
        }
    }
}
