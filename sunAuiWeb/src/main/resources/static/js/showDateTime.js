function showTime(){
    nowtime=new Date();
    year=nowtime.getFullYear();
    month=nowtime.getMonth()+1;
    date=nowtime.getDate();
    document.getElementById("mytime").innerText=year+"年"+month+"月"+date+"日  "+nowtime.toLocaleTimeString();
}

setInterval("showTime()",1000);
/**
 * 使用方法：
 * 1.在jsp页面引入该js文件：
 * 
 * 		<script type="text/javascript" src="<%=path%>/effect/js/showDateTime.js"></script>
 * 
 * 2.在jsp页面创建id为mytime的元素：
 * 
 * 		<span id="mytime"></span>
 */