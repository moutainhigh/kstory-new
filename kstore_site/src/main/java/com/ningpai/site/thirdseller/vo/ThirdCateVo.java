/*
 * Copyright 2013 NINGPAI, Inc.All rights reserved.
 * NINGPAI PROPRIETARY / CONFIDENTIAL.USE is subject to licence terms.
 */

package com.ningpai.site.thirdseller.vo;

import java.util.Date;
import java.util.List;

/**
 * 第三方商家分类Vo
 * 
 * @author NINGPAI-YuanKangKang
 * @since 2014年5月6日 下午1:49:43
 * @version
 */
public class ThirdCateVo {
    /**
     * 分类ID
     */
    private Long catId;
    /**
     * 分类名称
     */
    private String catName;
    /**
     * 父分类ID
     */
    private Long catParentId;
    /**
     * 分类排序
     */
    private Integer catSort;
    /**
     * 分类层级
     */
    private Integer catGrade;
    /**
     * 搜索优化标题
     */
    private String catSeoTitle;
    /**
     * 搜索优化关键字
     */
    private String catSeoKeyword;
    /**
     * 搜索优化详细
     */
    private String catSeoDesc;
    /**
     * 是否显示
     */
    private String catIsShow;
    /**
     * 删除标记
     */
    private String catDelflag;
    /**
     * 创建人名称
     */
    private String catCreateName;
    /**
     * 创建时间
     */
    private Date catCreateTime;
    /**
     * 修改名称
     */
    private String catModifiedName;
    /**
     * 修改时间
     */
    private Date catModifiedTime;
    /**
     * 删除名称
     */
    private String catDelName;
    /**
     * 删除时间
     */
    private Date catDelTime;
    /**
     * 分类图片
     */
    private String catImg;
    /**
     * 第三方ID
     */
    private Long thirdId;
    /**
     * 第三方名称
     */
    private String thirdName;
    /**
     * 子类集合
     */
    private List<ThirdCateVo> cateVos;

    /**
     * 父级分类
     */
    private ThirdCateVo parentThirdCateVo;
    
    public Long getCatId() {
        return catId;
    }

    public void setCatId(Long catId) {
        this.catId = catId;
    }

    public String getCatName() {
        return catName;
    }

    public void setCatName(String catName) {
        this.catName = catName;
    }

    public Long getCatParentId() {
        return catParentId;
    }

    public void setCatParentId(Long catParentId) {
        this.catParentId = catParentId;
    }

    public Integer getCatSort() {
        return catSort;
    }

    public void setCatSort(Integer catSort) {
        this.catSort = catSort;
    }

    public Integer getCatGrade() {
        return catGrade;
    }

    public void setCatGrade(Integer catGrade) {
        this.catGrade = catGrade;
    }

    public String getCatSeoTitle() {
        return catSeoTitle;
    }

    public void setCatSeoTitle(String catSeoTitle) {
        this.catSeoTitle = catSeoTitle;
    }

    public String getCatSeoKeyword() {
        return catSeoKeyword;
    }

    public void setCatSeoKeyword(String catSeoKeyword) {
        this.catSeoKeyword = catSeoKeyword;
    }

    public String getCatSeoDesc() {
        return catSeoDesc;
    }

    public void setCatSeoDesc(String catSeoDesc) {
        this.catSeoDesc = catSeoDesc;
    }

    public String getCatIsShow() {
        return catIsShow;
    }

    public void setCatIsShow(String catIsShow) {
        this.catIsShow = catIsShow;
    }

    public String getCatDelflag() {
        return catDelflag;
    }

    public void setCatDelflag(String catDelflag) {
        this.catDelflag = catDelflag;
    }

    public String getCatCreateName() {
        return catCreateName;
    }

    public void setCatCreateName(String catCreateName) {
        this.catCreateName = catCreateName;
    }

    /**
     * 获取创建时间
     * @return
     */
    public Date getCatCreateTime() {
        if (this.catCreateTime != null) {
            return new Date(this.catCreateTime.getTime());
        }
        return null;
    }

    /**
     * 设置创建时间
     * @param catCreateTime
     */
    public void setCatCreateTime(Date catCreateTime) {
        if (catCreateTime != null) {
            Date tEmp = (Date) catCreateTime.clone();
            if (tEmp != null) {
                this.catCreateTime = tEmp;
            }
        }
    }

    public String getCatModifiedName() {
        return catModifiedName;
    }

    public void setCatModifiedName(String catModifiedName) {
        this.catModifiedName = catModifiedName;
    }

    /**
     * 获取修改时间
     * @return
     */
    public Date getCatModifiedTime() {
        if (this.catModifiedTime != null) {
            return new Date(this.catModifiedTime.getTime());
        }
        return null;
    }

    /**
     * 设置修改时间
     * @param catModifiedTime
     */
    public void setCatModifiedTime(Date catModifiedTime) {
        if (catModifiedTime != null) {
            Date tEmp = (Date) catModifiedTime.clone();
            if (tEmp != null) {
                this.catModifiedTime = tEmp;
            }
        }
    }

    public String getCatDelName() {
        return catDelName;
    }

    public void setCatDelName(String catDelName) {
        this.catDelName = catDelName;
    }

    /**
     * 获取删除时间
     * @return
     */
    public Date getCatDelTime() {
        if (this.catDelTime != null) {
            return new Date(this.catDelTime.getTime());
        }
        return null;
    }

    /**
     * 设置删除时间
     * @param catDelTime
     */
    public void setCatDelTime(Date catDelTime) {
        if (catDelTime != null) {
            Date tEmp = (Date) catDelTime.clone();
            if (tEmp != null) {
                this.catDelTime = tEmp;
            }
        }
    }

    public String getCatImg() {
        return catImg;
    }

    public void setCatImg(String catImg) {
        this.catImg = catImg;
    }

    public Long getThirdId() {
        return thirdId;
    }

    public void setThirdId(Long thirdId) {
        this.thirdId = thirdId;
    }

    public String getThirdName() {
        return thirdName;
    }

    public void setThirdName(String thirdName) {
        this.thirdName = thirdName;
    }

    public List<ThirdCateVo> getCateVos() {
        return cateVos;
    }

    public void setCateVos(List<ThirdCateVo> cateVos) {
        this.cateVos = cateVos;
    }

    public ThirdCateVo getParentThirdCateVo() {
        return parentThirdCateVo;
    }

    public void setParentThirdCateVo(ThirdCateVo parentThirdCateVo) {
        this.parentThirdCateVo = parentThirdCateVo;
    }
}
