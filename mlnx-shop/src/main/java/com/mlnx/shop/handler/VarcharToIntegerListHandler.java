package com.mlnx.shop.handler;

import java.sql.CallableStatement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.apache.ibatis.type.JdbcType;
import org.apache.ibatis.type.MappedJdbcTypes;
import org.apache.ibatis.type.MappedTypes;
import org.apache.ibatis.type.TypeHandler;

@MappedTypes({Integer[].class })
@MappedJdbcTypes({ JdbcType.VARCHAR })
public class VarcharToIntegerListHandler implements TypeHandler<Integer[]> {

	@Override
	public void setParameter(PreparedStatement ps, int i, Integer[] parameter,
			JdbcType jdbcType) throws SQLException {
		StringBuilder sb = new StringBuilder();
		for(int j = 0;i<parameter.length-1;i++){
			sb.append(parameter[j]+",");
		}
		sb.append(parameter[parameter.length]);
		ps.setString(i, sb.toString());
	}

	@Override
	public Integer[] getResult(ResultSet rs, String columnName)
			throws SQLException {
		String strs = rs.getString(columnName);
		String[] str = strs.split(",");
		Integer[] integer = new Integer[str.length];
		for(int i = 0;i < str.length;i++){
			integer[i] = Integer.parseInt(str[i]);
		}
		return integer;
	}

	@Override
	public Integer[] getResult(ResultSet rs, int columnIndex)
			throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Integer[] getResult(CallableStatement cs, int columnIndex)
			throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}


}
