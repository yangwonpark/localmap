<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="templates/header.jsp"%>
<style>
    #login-form > div {
        margin: 15px 0;
    }
</style>

<div class="container h-100">
    <div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
        <div class="panel panel-success" style="margin-left: auto; margin-right: auto;">
            <div class="panel-heading">
                <div class="panel-title">환영합니다!</div>
            </div>
            <div class="panel-body">
                <form id="login-form" method="POST">
                    <div>
                        <input type="text" class="form-control" name="id" placeholder="Username" autofocus>
                    </div>
                    <div>
                        <input type="password" class="form-control" name="password" placeholder="Password">
                    </div>
                    <div>
                        <button type="submit" class="form-control btn btn-primary">로그인</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>	
<%@include file="templates/footer.jsp" %>