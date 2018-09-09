<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<c:set value="${pageContext.request.contextPath}" var="path"/>

<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>

<head>

<title>Insert title here</title>

<link href="${path }/resources/bootstrap/css/bootstrap.css" rel="stylesheet">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link href="${path }/resources/css/datepicker.css" rel="stylesheet" type="text/css">
<link href="${path }/resources/css/datepicker.min.css" rel="stylesheet" type="text/css">
<script src="${path }/resources/js/datepicker.min.js"></script>
<script src="${path }/resources/js/i18n/datepicker.en.js"></script>

<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>


<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.4/jquery.js"></script> 
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 

<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote.css" rel="stylesheet">

<script src="${path }/resources/js/summernote.js"></script>
<script src="${path }/resources/js/summernote.min.js"></script>
<script src="${path }/resources/js/summernote-ko-KR.js"></script>



</head>

<script type="text/javascript">
	//summernote
	$(document).ready(function() {
  	    $('#summernote').summernote({
            height : 300,                 // set editor height
            lang : 'ko-KR', // default: 'en-US'
      		callbacks : {
      			onImageUpload : function(files, editor, welEditable){
      				alert(files[0]);
      				console.log(editor);
      				console.log(welEditable);
      				
      				sendFile(files[0], editor, welEditable);
      			}
      		}
  	    });
  	});
	
	function sendFile(file, editor, welEditable){
		
		data = new FormData();
		data.append("uploadFile", file);
		console.log(data);
		$.ajax({
			data:data,
			url:"${path}/imageUpload.do",
			type:"POST",
			cache:false,
			contentType:false,
			processData:false,
			success:function(data){
				//$image.attr('src', url + filename);
				$(editor).summernote('editor.insertImage', data.url, files);
				//editor.insertImage(welEditable, data.url);
			}
		});
	}
	/* function sendFile(file, editor) {
        // 파일 전송을 위한 폼생성
 		data = new FormData();
 	    data.append("uploadFile", file);
 	    $.ajax({ // ajax를 통해 파일 업로드 처리
 	        data : data,
 	        type : "POST",
 	        url : "./summernote_imageUpload.jsp",
 	        cache : false,
 	        contentType : false,
 	        processData : false,
 	        success : function(data) { // 처리가 성공할 경우
                // 에디터에 이미지 출력
 	        	$(editor).summernote('editor.insertImage', data.url);
 	        }
 	    });
 	}
	$(document).ready(function() {
        $('#summernote').summernote({ // summernote를 사용하기 위한 선언
            height: 400,
			callbacks: { // 콜백을 사용
                // 이미지를 업로드할 경우 이벤트를 발생
			    onImageUpload: function(files, editor, welEditable) {
				    sendFile(files[0], this);
				}
			}
		});
	}); */
	
	
	//datepicker
	// Initialization
	$('#my-element').datepicker([options]);
	// Access instance of plugin
	$('#my-element').data('datepicker');
	
</script>

<section class="container">
	<br><br><br><br><br><br><br><br><br>
	<div class="container">
		<div class="card mb-4">
	        <div class="card-header bg-white font-weight-bold">번개모집</div>
	        <div class="card-body">
	            <form action="" enctype="multipart/form-data" method="POST" accept-charset="UTF-8" enctype="multipart/">
	                <div class="form-group row">
	                    <label for="제목" class="col-sm-2 col-form-label">제목</label>
	                    <div class="col-sm-8">
	                        <input type="text" class="form-control" id="inputEmail3" placeholder="제목">
	                    </div>
	                </div>
	                <div class="form-group row">
	                    <label for="area" class="col-sm-2 col-form-label">지역</label>
	                    <div class="col-sm-8">
	                        <input type="text" class="form-control" id="area" name="area" placeholder="동/읍/면">
	                    </div>
	                </div>
	                <div class="form-group row">
	                    <label for="area" class="col-sm-2 col-form-label">주소</label>
	                    <div class="col-sm-8">
	                        <input type="text" class="form-control" id="address" name="address" placeholder="상세주소">
	                    </div>
	                </div>
	                <div class="form-group row">
	                    <label for="inputPassword3" class="col-sm-2 col-form-label">작성자</label>
	                    <div class="col-sm-3">
	                        <input type="text" class="form-control" id="inputPassword3" placeholder="작성자">
	                    </div>
	                </div>
					<div class="form-group row">
					   	<label for="gender" class="col-sm-2 col-form-label">성별</label>
					   	<div class="col-sm-3">
					       	<!-- memberLoggedIn.gender -->
					    </div>
					</div>
	              	
	                <!-- 날자 정하기 -->
	                <div class="form-group row">
	                	<label for="date" class="col-sm-2 col-form-label">날짜</label>
	                	<div class="col-sm-3">
	                		<input type='text' class='form-control datepicker-here' data-language='en' 
	                		data-timepicker="true" data-time-format='hh:ii'/>
	                	</div>
	                </div>
	                <!-- 썸머노트 에디터 사용 -->
					<div class="form-group row">
	                    <label for="제목" class="col-sm-2 col-form-label">내용</label>
	                    <textarea id="summernote" name="content" class="col-sm-8" style="resize: none;"></textarea>
	                    
	                </div>
	                <div class="justify-content-center" align="center">
				        <div class="card-footer bg-white" style="align-content:center;">
				            <button type="submit" class="btn btn-primary">확인</button>
				            &nbsp;&nbsp;
				            <button type="reset" class="btn">취소</button>
				        </div>
			        </div>
	            </form>
	        </div>
	    </div>
	</div>
	
	
	
</section>


<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>

















