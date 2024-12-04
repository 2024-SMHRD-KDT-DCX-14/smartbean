(function () {
    const menuUrl = "/menuweekchart";

    axios.get(menuUrl) /* menuweekchart로 요청 보냄 */
        .then(function (res) {
            console.log(res.data);

            const menu = [];
            const price = [];

            for (let i = 0; i < res.data.length; i++) {
                menu.push(res.data[i].menuName); /* 메뉴데이터를 넣음 */
                price.push(res.data[i].orderDetailPrice); /* 가격데이터를 넣음 */
            }

            const menuCtx = document.getElementById('menuWeekChart');

            new Chart(menuCtx, { /* menuWeekChart라는 id를 갖고있는 canvas에 차트를 띄움 */
                type: 'bar',
                data: {
                    labels: menu, /* labels는 x축 */
                    datasets: [{
                        label: '메뉴별 7일간 매출', /* 어떤 그래프인지 설명 */
                        backgroundColor: 'rgba(75, 192, 192, 0.2)',
                        borderColor: 'rgba(75, 192, 192, 1)',
                        data: price, /* data는 y축 */
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
