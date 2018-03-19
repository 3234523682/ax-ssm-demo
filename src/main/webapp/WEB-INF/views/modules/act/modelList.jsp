<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>流程列表</title>
</head>
<body>
	<div style="text-align: right"><button id="create">创建</button></div>
	<table width="100%" class="need-border">
		<thead>
			<tr>
				<th>ID</th>
				<th>KEY</th>
				<th>Name</th>
				<th>Version</th>
				<th>创建时间</th>
				<th>最后更新时间</th>
				<th>元数据</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list }" var="model">
				<tr>
					<td>${model.id }</td>
					<td>${model.key }</td>
					<td>${model.name}</td>
					<td>${model.version}</td>
					<td>${model.createTime}</td>
					<td>${model.lastUpdateTime}</td>
					<td>${model.metaInfo}</td>
					<td>
						<a href="${ctx}/act/process-editor/modeler.jsp?modelId=${model.id}" target="_blank">编辑</a>
						<a href="${ctx}/workflow/model/deploy/${model.id}">部署</a>
						导出(<a href="${ctx}/workflow/model/export/${model.id}/bpmn" target="_blank">BPMN</a>
						|&nbsp;<a href="${ctx}/workflow/model/export/${model.id}/json" target="_blank">JSON</a>
						|&nbsp;<a href="javascript:;" onclick='showSvgTip()'>SVG</a>)
                        <a href="${ctx}/workflow/model/delete/${model.id}">删除</a>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>