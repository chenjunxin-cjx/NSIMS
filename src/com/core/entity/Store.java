package com.core.entity;

import java.io.Serializable;
import java.sql.Date;
import java.util.List;

/**
 * 书架
 *
 * @author 1034683568@qq.com
 *         project_name ssm-demo
 * @date 2015-8-17
 * @time 下午2:06:48
 */
public class Store implements Serializable {
    /**
     * 20150821更新
     */
    private static final long serialVersionUID = 1L;
    private String id;// 主鍵id
    private String category;// 这个是一个type字段，为了以后可能出现多个不同仓库
    private String number;// 书架编号
    private String level;// 书架层数
    private String page;// 目前书架上书本的总页数，阀值固定
    private int status;// 该书架状态，是否已满
    private String name; //姓名
    private String sex;//性别
    private Date  csny; //出生年月
    

	
    private List<Book> books;

   
    @Override
	public String toString() {
		return "Store [id=" + id + ", category=" + category + ", number=" + number + ", level=" + level + ", page="
				+ page + ", status=" + status + ", name=" + name + ", sex=" + sex + ", csny=" + csny + ", books="
				+ books + "]";
	}

	

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getPage() {
        return page;
    }

    public void setPage(String page) {
        this.page = page;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public String getLevel() {
        return level;
    }

    public void setLevel(String level) {
        this.level = level;
    }

    public List<Book> getBooks() {
        return books;
    }

    public void setBooks(List<Book> books) {
        this.books = books;
    }

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public Date getCsny() {
		return csny;
	}

	public void setCsny(Date csny) {
		this.csny = csny;
	}
    

}
