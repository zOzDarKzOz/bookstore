
<%@page import="entity.book.Category"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<spring:url value="/resources/image/thumb" var="image" />
<!--<section class="clearfix wrapper">-->
    <%@include file="../template/header.jsp" %>
    <%@include file="inc/topHeader.jsp" %>
    <%@include file="inc/navigation.jsp" %>

    <section class="inside clearfix mg">
        <section class="content">
            <h1>&clubs; <spring:message code="book.category"/>:</h1>
            <c:if test="${!empty scCategory}">
                <ul class="allct">
                    <% int rowsScCtIndex = 0;%>
                    <c:forEach items="${scCategory}" var="rowsScCt">
                        <li>
                            <a href="<%=request.getContextPath()%>/category/<%=rowsScCtIndex%>-${rowsScCt.sortLink}.html">
                                <h2>&raquo; ${rowsScCt.name}</h2>
                            </a>
                        </li>
                        <% rowsScCtIndex++;%>
                    </c:forEach>
                    <% rowsScCtIndex = 0;
                    %>
                </ul>
            </c:if>
        </section>
        <%@include file="inc/rightAside.jsp" %>
    </section>
    <%@include file="inc/seenBook.jsp" %>

    <%@include file="../template/footer.jsp" %>
<!--</section>-->