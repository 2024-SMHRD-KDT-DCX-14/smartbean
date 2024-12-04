(function () {
    const periodUrl = "/monthchart";

    axios.get(periodUrl) /* monthchart로 요청 보냄 */
        .then(function (res) {

            const monthOrderDate = [];
            const monthOrderTotal = [];

            for (let i = 0; i < res.data.length; i++) {
                monthOrderDate.push(res.data[i].orderMasterDate); /* 날짜데이터를 넣음 */
                monthOrderTotal.push(res.data[i].orderMasterTotal); /* 가격데이터를 넣음 */
            }

            const periodCtx = document.getElementById('monthChart'); 

            new Chart(periodCtx, { /* monthChart라는 id를 갖고있는 canvas에 차트를 띄움 */
                type: 'line',
                data: {
                    labels: monthOrderDate, /* labels는 x축 */
                    datasets: [{
                        label: '월별 매출', /* label에 해당데이터가 뭘 뜻하는지 지정 */
                        backgroundColor: 'rgba(75, 192, 192, 0.2)',
                        borderColor: 'rgba(75, 192, 192, 1)',
                        data: monthOrderTotal, /* data는 y축 */
                        borderWidth: 1
                    }]
                },
                options: {
                    scales: {
                        y: { beginAtZero: true }
                    }
                }
            });
        });
})();
