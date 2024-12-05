/*// 이메일 중복 체크
const input = document.getElementById("memId");

const p = document.getElementById("checkResult");
// change : input 태그의 값이 변했을 때
// input : input 태그에 입력이 발생했을 때
input.addEventListener("input", request );

function request() {
	
	let url = "check";
	
	let memId = input.value;
	
	axios.get(url + "?memId=" + memId)
		 .then( function(res){
			
			console.log(res.data);
			
			if(res.data == 't'){
				p.innerHTML="사용가능한 아이디 입니다.";
				p.style="color : green";
			}else{
				p.innerHTML="중복된 아이디 입니다.";
				p.style="color : red";
			}
			
			
		 });
	
}


*/

// 이메일 중복 체크
const input = document.getElementById("memId");
const resultSpan = document.getElementById("checkResult");

input.addEventListener("input", request);

function request() {
    const url = "check";
    const memId = input.value.trim();

    if (!memId) {
        resultSpan.innerHTML = ""; // 입력이 없으면 초기화
        return;
    }

    axios.get(`${url}?memId=${memId}`)
        .then((res) => {
            if (res.data === 't') {
                resultSpan.innerHTML = "사용가능한 아이디 입니다.";
                resultSpan.style.color = "green";
            } else {
                resultSpan.innerHTML = "중복된 아이디 입니다.";
                resultSpan.style.color = "red";
            }
        })
        .catch((error) => {
            console.error("Error checking ID:", error);
            resultSpan.innerHTML = "오류가 발생했습니다. 다시 시도해주세요.";
            resultSpan.style.color = "red";
        });
}