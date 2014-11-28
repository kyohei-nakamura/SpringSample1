<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<html>
<header>
	<script type="text/javascript">
		function supports_input_autofocus() {
			var i = document.createElement('input');
			return 'autofocus' in i;
		}
	</script>
</header>
<body>
	<h1>SpringMVC example output</h1>

	<form:form modelAttribute="userInfo" action="/SpringSample/output">
		<jsp:useBean id="specialChar" scope="request"
			class="sample.springmvc.component.SpecialChar" />
		<p>
			ユーザ名：
			<c:out value="${userInfo.username}"></c:out>
		<p>
			パスワード：
			<c:out value="${userInfo.password}"></c:out>
		<p>
			jsp:getPropertyのname属性に存在しないIdを指定した場合：
			<jsp:getProperty property="dunnyProp" name="dummyObj" />
		<p>
			c:outのvalue属性に存在しないBeanを指定した場合：
			<c:out value="${dummyObj.dummyProp}"></c:out>
		<p>
			jsp:getPropertyでHTML特殊文字を表示した場合
			<jsp:getProperty property="specialChar" name="specialChar" />
		<p>fn:escapeXmlタグでHTML特殊文字を表示した場合： ${fn:escapeXml('11<22>33&aa=')}
		
		<p>
			escapeXml属性にtrueを設定した場合：
			<c:out value="${specialChar.specialChar}" escapeXml="true"></c:out>
		<p>
			escapeXml属性にfalseを設定した場合：
			<c:out value="${specialChar.specialChar}" escapeXml="false"></c:out>
		<p>
			autofocus属性を設定した場合（autofocus属性非対応の場合の対処方も追加）
			<form:input path="username" id="focus_target" autofocus="true" />
			<script>
				if (!supports_input_autofocus()) {
					document.getElementById("focus_target").focus()
				};
			</script>
		<p>
			showPassword属性にtrueを設定した場合：
			<form:password path="password" showPassword="true" />
		<p>
			showPassword属性にfalseを設定した場合：
			<form:password path="password" showPassword="false" />
		<p>
			<input type="submit" name="submit" value="ReSUBMIT" />
	</form:form>
</body>
</html>
