package com.app;

import java.util.Objects;

public class Result {
//	어떻게?
	private boolean isRedirect;
//	어디로?
	private String path;
	
	public Result() {;}
	public Result(boolean isRedirect, String path) {
		this.isRedirect = isRedirect;
		this.path = path;
	}
	
	public boolean isRedirect() {
		return isRedirect;
	}
	public void setRedirect(boolean isRedirect) {
		this.isRedirect = isRedirect;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	@Override
	public String toString() {
		return "Result [isRedirect=" + isRedirect + ", path=" + path + "]";
	}
	@Override
	public int hashCode() {
		return Objects.hash(isRedirect, path);
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Result other = (Result) obj;
		return isRedirect == other.isRedirect && Objects.equals(path, other.path);
	}
	
}
