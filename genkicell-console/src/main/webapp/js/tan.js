onload=function(){ 
		var modal = document.getElementById('myModal');
		var modal = document.getElementById('myModal2');
		var modal = document.getElementById('myModal3');
		 
		// 获取图片插入到弹窗 - 使用 "alt" 属性作为文本部分的内容
		var img = document.getElementById('myImg');
		var modalImg = document.getElementById("img01");

		var img = document.getElementById('myImg2');
		var modalImg = document.getElementById("img02");

		var img = document.getElementById('myImg3');
		var modalImg = document.getElementById("img03");

		var captionText = document.getElementById("caption");
		myImg.onclick = function(){
		    modal.style.display = "block";
		    modalImg.src = this.src;
		    captionText.innerHTML = this.alt;
		}
		 
		myImg2.onclick = function(){
		    modal.style.display = "block";
		    modalImg.src = this.src;
		    captionText.innerHTML = this.alt;
		}

		myImg3.onclick = function(){
		    modal.style.display = "block";
		    modalImg.src = this.src;
		    captionText.innerHTML = this.alt;
		}


		// 获取 <span> 元素，设置关闭按钮
		var span = document.getElementsByClassName("close")[0];
		 
		// 当点击 (x), 关闭弹窗
		span.onclick = function() { 
		  modal.style.display = "none";
		}
    }