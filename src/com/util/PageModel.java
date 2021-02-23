package com.util;

public class PageModel {
    /**
     * 分页总数据条数
     */
    private int recordCount;
    /**
     * 当前页面
     */
    private int pageIndex = 1;
    /**
     * 每页分多少条数据
     */
    private int pageSize = Contant.PAGERECORD;

    /**
     * 总页数
     */
    private int totalSize;

    public int getRecordCount() {
        return recordCount;
    }

    public void setRecordCount(int recordCount) {
        this.recordCount = recordCount;
    }

    public int getPageIndex() {
        return pageIndex;
    }

    public void setPageIndex(int pageIndex) {
        //如果上一页 一旦到了第一页 再点上一页 0页  -1 页 -2页  让他停留在 第一页
        this.pageIndex = this.pageIndex <= 0 ? 1 : this.pageIndex;
        /** 判断当前页面是否超过了总页数:如果超过了默认给最后一页作为当前页  */
        this.pageIndex = this.pageIndex >= this.getTotalSize() ? this.getTotalSize() : this.pageIndex;
        this.pageIndex = pageIndex;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public int getTotalSize() {
        return totalSize;
    }

    public void setTotalSize(int totalSize) {
        this.totalSize = totalSize;
    }


}
