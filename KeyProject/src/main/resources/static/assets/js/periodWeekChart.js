(function () {
    const periodUrl = "/weekchart"; 

    axios.get(periodUrl) /* weekchart로 요청 보냄 */
        .then(function (res) {

            const weekOrderDate = []; 
            const weekOrderTotal = []; 

            for (let i = 0; i < res.data.length; i++) {
                weekOrderDate.push(res.data[i].orderMasterDate); /* 날짜데이터를 넣음 */
                weekOrderTotal.push(res.data[i].orderMasterTotal); /* 가격데이터를 넣음 */
            }

            const periodCtx = document.getElementById('weekChart'); 

            new Chart(periodCtx, { /* weekChart라는 id를 갖고있는 canvas에 차트를 띄움 */
                type: 'line',
                data: {
                    labels: weekOrderDate, /* labels는 x축 */
                    datasets: [{
                        label: '금주 매출', /* label에 해당데이터가 뭘 뜻하는지 지정 */
                        backgroundColor: 'rgba(75, 192, 192, 0.2)',
                        borderColor: 'rgba(75, 192, 192, 1)',
                        data: weekOrderTotal, /* data는 y축 */
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
