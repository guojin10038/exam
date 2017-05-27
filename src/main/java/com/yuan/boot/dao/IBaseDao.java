package com.yuan.boot.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
@Repository("baseDao")
public interface IBaseDao {
	
	public List<Map<String,Object>> baseFindByKey(@Param(value="table")String table,@Param(value="key")String key,@Param(value="value")String value);
	public List<Map<String,Object>> baseFindList(@Param(value="table")String table);
	public List<Map<String,Object>> baseFindParam(@Param(value=("table"))String table,@Param(value="map")Map<String,String> map);
	public List<Map<String,Object>> baseFindSql(@Param(value=("sql"))String sql);
	public int baseInsert(@Param(value=("table"))String table,@Param(value="map")Map<String,String> map);
	public int baseUpdate(@Param(value=("table"))String table,@Param(value="map")Map<String,String> map,@Param(value="params")Map<String,String> params);
	public int baseUpdateByKey(@Param(value=("table"))String table,@Param(value="map")Map<String,String> map,@Param(value="key")String key,@Param(value="value")String value);
	public int baseDelete(@Param(value=("table"))String table,@Param(value="map")Map<String,String> map);
	public int baseDeleteByKey(@Param(value=("table"))String table,@Param(value="key")String key,@Param(value="value")String value);
	public long baseCount(@Param(value=("table"))String table,@Param(value="map")Map<String,String> map);
	public long baseCountByKey(@Param(value=("table"))String table,@Param(value="key")String key,@Param(value="value")String value);
}
