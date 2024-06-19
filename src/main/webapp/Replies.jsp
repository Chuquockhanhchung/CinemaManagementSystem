<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 2024/06/19
  Time: 22:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:choose>
    <c:when test="${not empty replies}">
        <c:forEach items="${replies}" var="reply">
            <div class="comment">
                <div class="comment-header">
                    <img src="${reply.getCustomerID().getPicture()}" alt="User Avatar">
                    <span>${reply.getCustomerID().getName()}</span>
                </div>
                <div class="comment-body">
                        ${reply.getFeedback()}
                </div>
                <div class="replies-toggle-btn reply-btn" onclick="toggleReplyForm(${reply.getFeedbackID()})">Reply</div>

                <div class="reply-form" id="reply-form-${reply.getFeedbackID()}" style="display: none;">
                    <textarea id="reply-text-${reply.getFeedbackID()}" rows="3" cols="50" placeholder="Write your reply..."></textarea><br>
                    <button type="button" onclick="submitReply(${reply.getFeedbackID()})">Submit</button>
                </div>

                <!-- Button to toggle replies section -->
                <c:if test="${reply.getRelpies() != null}">
                <div class="replies-toggle-btn reply-btn" onclick="toggleReplies(${reply.getFeedbackID()})">Show/Hide Replies</div>
                </c:if>
                <c:if test="${reply.getCustomerID().getIdCustomer() eq sessionScope.user.getIdCustomer()}">
                    <div class="replies-toggle-btn reply-btn" onclick="deleteFeedback(${reply.getFeedbackID()})">Delete</div>
                </c:if>
                <!-- Nested replies section -->
                <c:set var="replies" value="${reply.getRelpies()}" scope="request"/>
                <div class="replies-section pl-4" id="replies-section-${reply.getFeedbackID()}" style="display: none;">
                    <jsp:include page="Replies.jsp"/>
                </div>
                <!-- End of Nested replies section -->
            </div>
        </c:forEach>
    </c:when>
    <c:otherwise>
        <p>No replies available.</p>
    </c:otherwise>
</c:choose>
