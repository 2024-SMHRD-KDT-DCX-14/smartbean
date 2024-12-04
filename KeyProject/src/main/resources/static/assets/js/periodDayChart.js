(function () {
    const periodUrl = "/daychart";

    axios.get(periodUrl) /* daychart로 요청 보냄 */
        .then(function (res) {

            const dayOrderDate = [];
            const dayOrderTotal = [];

            for (let i = 0; i < res.data.length; i++) {
                dayOrderDate.push(res.data[i].orderMasterDate); /* 날짜데이터를 넣음 */
                dayOrderTotal.push(res.data[i].orderMasterTotal); /* 가격데이터를 넣음 */
            }

            const periodCtx = document.getElementById('dayChart');

            new Chart(periodCtx, { /* dayChart라는 id를 갖고있는 canvas에 차트를 띄움 */
                type: 'line',
                data: {
                    labels: dayOrderDate, /* labels는 x축 */
                    datasets: [{
                        label: '금일 매출', /* label에 해당데이터가 뭘 뜻하는지 지정 */
                        backgroundColor: 'rgba(75, 192, 192, 0.2)',
                        borderColor: 'rgba(75, 192, 192, 1)',
                        data: dayOrderTotal, /* data는 y축 */
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
