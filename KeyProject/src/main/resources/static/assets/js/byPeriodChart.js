// 날짜 데이터를 서버로 전송하는 함수
function sendPeriodData(dateInput) {
    // 선택된 날짜 값을 가져옴
    const date = dateInput.value;
    
    // 서버로 데이터 전송
    axios.get('bydatechart' + '?date=' + date)
    .then(response => {
        // 서버에서 받은 데이터를 사용해 차트를 업데이트
        updateChart(response.data);
    })
}

// 차트를 업데이트하는 함수
let chartInstance = null;

function updateChart(data) {
    const ctx = document.getElementById('periodChart');
    
    const dayOrderDate = [];
    const dayOrderTotal = [];

    // 서버 응답 데이터를 처리
    for (let i = 0; i < data.length; i++) {
        dayOrderDate.push(data[i].orderMasterDate);
        dayOrderTotal.push(data[i].orderMasterTotal);
    }
    
    // 기존 차트가 존재하면 삭제
    if (chartInstance) {
        chartInstance.destroy();
    }

    // 새로운 차트 생성
    chartInstance = new Chart(ctx, {
        type: 'line',
        data: {
            labels: dayOrderDate, // 서버에서 받은 날짜 데이터
            datasets: [{
                label: '매출',
                data: dayOrderTotal, // 서버에서 받은 매출 데이터
                backgroundColor: 'rgba(75, 192, 192, 0.2)',
                borderColor: 'rgba(75, 192, 192, 1)',
                borderWidth: 1
            }]
        },
        options: {
            responsive: true,
            scales: {
                y: {
                    beginAtZero: true
                }
            }
        }
    });
}
