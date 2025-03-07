package com.app;

public class Result {
	private boolean redirect;
	private String path;
	
	public Result() {;}
	public Result(boolean redirect, String path) {
		this.redirect = redirect;
		this.path = path;
	}
	public boolean isRedirect() {
		return redirect;
	}
	public void setRedirect(boolean redirect) {
		this.redirect = redirect;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	@Override
	public String toString() {
		return "Result [redirect=" + redirect + ", path=" + path + "]";
	}
}
