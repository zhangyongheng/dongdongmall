package com.dongdongmall.core.service.product;

import com.dongdongmall.core.bean.product.Img;
import com.dongdongmall.core.query.product.ImgQuery;

import java.util.List;


/**
 * 
 * @author lixu
 * @Date [2014-3-28 下午01:50:28]
 */
public interface ImgService {
	/**
	 * 基本插入
	 * 
	 * @return
	 */
	public Integer addImg(Img img);

	/**
	 * 根据主键查询
	 */
	public Img getImgByKey(Integer id);

	/**
	 * 根据主键批量查询
	 */
	public List<Img> getImgsByKeys(List<Integer> idList);

	/**
	 * 根据主键删除
	 * 
	 * @return
	 */
	public Integer deleteByKey(Integer id);

	/**
	 * 根据主键批量删除
	 * 
	 * @return
	 */
	public Integer deleteByKeys(List<Integer> idList);

	/**
	 * 根据主键更新
	 * 
	 * @return
	 */
	public Integer updateImgByKey(Img img);

	/**
	 * 根据条件查询分页查询
	 * 
	 * @param imgQuery
	 *            查询条件
	 * @return
	 */

	/**
	 * 根据条件查询
	 * 
	 * @param imgQuery
	 *            查询条件
	 * @return
	 */
	public List<Img> getImgList(ImgQuery imgQuery);
}
