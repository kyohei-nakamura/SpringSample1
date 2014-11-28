<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<html>

<body>
	<form:form modelAttribute="userInfo" action="/SpringSample/output">
		<p>
			<form:label path="username">
			ユーザ名：
			</form:label>
			<form:input path="username" />
		<p>
			<form:label path="password">
			パスワード：
			</form:label>
			<form:password path="password" />
		<p>
			<input type="submit" name="submit" value="送信" />
	</form:form>

</body>
</html>
