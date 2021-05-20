<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../include/header.jspf" %>




		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<h1>
					동아일보 게시판 <small>it all starts here</small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
					<li><a href="#">Examples</a></li>
					<li class="active">Blank page</li>
				</ol>
			</section>

			<!-- Main content -->
			<section class="content">

				<!-- Default box -->
				<div class="box">
					<div class="box-header with-border">
						<h3 class="box-title">Title</h3>

						<div class="box-tools pull-right">
							<button type="button" class="btn btn-box-tool"
								data-widget="collapse" data-toggle="tooltip" title="Collapse">
								<i class="fa fa-minus"></i>
							</button>
							<button type="button" class="btn btn-box-tool"
								data-widget="remove" data-toggle="tooltip" title="Remove">
								<i class="fa fa-times"></i>
							</button>
						</div>
					</div>
					<div class="box-body">
						<!-- Start creating your amazing application! -->







						<link rel="stylesheet" type="text/css"
							href="css/DataTables/jquery.dataTables.min.css">
						<link rel="stylesheet" type="text/css"
							href="https://cdn.datatables.net/1.10.15/css/jquery.dataTables.min.css">

						<script type="text/javascript" language="javascript"
							src="https://code.jquery.com/jquery-1.12.4.js"></script>
						<!-- <script type="text/javascript" language="javascript" src="https://cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script> -->
						<script type="text/javascript" language="javascript"
							src="js/DataTables/jquery.dataTables.min.js"></script>


						<script type="text/javascript" class="init">
							$(document).ready(function() {
								
								function formatDate(d) {
									var year = "" + d.getFullYear(),
										month = "" + (d.getMonth() + 1),
										day = "" + d.getDate(),
										hour = "" + d.getHours(),
										minute = "" + d.getMinutes();

									if (month.length < 2) month = "0" + month;
									if (day.length < 2) day = "0" + day;
									if (hour.length < 2) hour = "0" + hour;
									if (minute.length < 2) minute = "0" + minute;

									return year + "-" + month + "-" + day + " " + hour + ":" + minute;
								}
								
								var g = "https://api.rss2json.com/v1/api.json?rss_url=";
								var dongaNews = "https://it.donga.com/feeds/rss/news/";
								var keys = "&api_key=bdl3lrsxdpnhqm6hhhler7hufnnecux4bwztd19b";
								var counts = "&count=200";
								
								$.ajax({
									url : g + dongaNews + keys + counts, //요청할 데이터 경로.
									dataType : "json", //요청할 데이터에 타입.
									success : function(data) { //성공적으로 요청했왔을 때...
										//obj = JSONtoString(data);
										// JSON.stringify()는 json 객체를 String 객체로 변환시킨다.
										// JSON.parse()는 string 객체를 json 객체로 변환시킨다.
										var obj = JSON.stringify(data);
										//alert(obj);
										
										$.each(data.items, function(i, d) {
											var no = i + 1;
											var date = formatDate(new Date(new Date(d["pubDate"]).getTime() + 32400000));
											var title = d["title"]; //title 키의 값을 가져옵니다.
											var lk = d["link"];
											var thumbnail = d["thumbnail"];
											var author = d["author"];
											//var ass = author.search("(");
											//var ae = author.search(")");
											//var aname = author.substring(a,b);
											//alert(ass);
											//앞서 구해온 데이터를 이용해 정보 목록 태그를 생성합니다.
											$("tbody").append('<tr><td>'+no+'</td><td><img src="'+thumbnail+'" width="100px"></td><td><a href="'+lk+'" target="_blank">'
															+ title + '</a></td><td>'+author+'</td><td>'+date+'</td></tr>');
										}); // “$.each” 메서드에 종료
									}, // “success: function”에 종료
									
									error : function(data) {
										alert("에러 발생하였습니다.");	
									},
									
									complete : function(data) {
										var data_table = $('#example').DataTable({
											"language" : {
												"sEmptyTable" : "데이터가 없습니다",
												"sInfo" : "_START_ - _END_ / _TOTAL_",
												"sInfoEmpty" : "0 - 0 / 0",
												"sInfoFiltered" : "(총 _MAX_ 개)",
												"sInfoPostFix" : "",
												"sInfoThousands" : ",",
												"sLengthMenu" : "페이지당 줄수 _MENU_",
												"sLoadingRecords" : "읽는중...",
												"sProcessing" : "처리중...",
												"sSearch" : "검색:",
												"sZeroRecords" : "검색 결과가 없습니다",
												"oPaginate" : {
													"sFirst" : "처음",
													"sLast" : "마지막",
													"sNext" : "다음",
													"sPrevious" : "이전"
												},
												"oAria" : {
													"sSortAscending" : ": 오름차순 정렬",
													"sSortDescending" : ": 내림차순 정렬"
												}
											}
										
										});
									} 
									
									
								}); // $.ajax() 메서드에 종료


							}); // end of $(document).ready(function()
						</script>




						<div class="content">
							<table id="example" class="display" cellspacing="0" width="100%">
								<thead>
									<tr>
										<th width="5%">번호</th>
										<th width="5%">썸네일</th>
										<th width="60%">제목</th>
										<th width="5%">작성자</th>
										<th width="25%">날짜</th>
									</tr>
								</thead>
								<tfoot>
									<hr>
								</tfoot>
								<tbody>
								</tbody>
							</table>
						</div>









					</div>
					<!-- /.box-body -->
					<div class="box-footer">Footer</div>
					<!-- /.box-footer-->
				</div>
				<!-- /.box -->

			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->



<%@ include file="../include/footer.jspf" %>