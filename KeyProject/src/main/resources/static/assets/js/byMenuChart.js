// JavaScript에서 메뉴 데이터를 처리하는 함수
function sendMenuData(button) {
    // 버튼의 data-menu 속성 값을 가져옴
    const menu = button.getAttribute('data-menu');
	console.log(menu)
    
    // 서버로 데이터 전송
    axios.get('bymenuchart' + "?menu=" + menu)
        .then(response => {
            console.log('서버 응답:', response.data);
            // 차트를 업데이트하거나 페이지에 결과 표시 가능
            updateChart(response.data);
        })
        .catch(error => {
            console.error('에러 발생:', error);
        });
}

// 차트를 업데이트하는 함수
let chartInstance = null;

function updateChart(data) {
	
    const ctx = document.getElementById('menuChart');

	const dayOrderDate = [];
    const dayOrderTotal = [];

    for (let i = 0; i < data.length; i++) {
        dayOrderDate.push(data[i].orderDetailCode);
        dayOrderTotal.push(data[i].orderDetailPrice);
    }
	
    if (chartInstance) {
    chartInstance.destroy();
    }

    chartInstance = new Chart(ctx, {
        type: 'line',
        data: {
            labels: dayOrderDate, // 서버에서 받은 라벨
            datasets: [{
                label: '매출',
                data: dayOrderTotal, // 서버에서 받은 데이터 값
                backgroundColor: 'rgba(75, 192, 192, 0.2)',
                borderColor: 'rgba(75, 192, 192, 1)',
                borderWidth: 1
            }]
        },
        options: {
            scales: {
                y: {
                    beginAtZero: true
                }
            }
        }
    });
}