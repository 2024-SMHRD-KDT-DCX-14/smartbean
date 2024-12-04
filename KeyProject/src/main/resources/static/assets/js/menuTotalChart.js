(function () {
    const menuUrl = "/menutotalchart";

    axios.get(menuUrl) /* menutotalchart로 요청 보냄 */
        .then(function (res) {
            console.log(res.data);

            const menu = [];
            const price = [];

            for (let i = 0; i < res.data.length; i++) {
                menu.push(res.data[i].menuName); /* 메뉴데이터를 넣음 */
                price.push(res.data[i].orderDetailPrice); /* 가격데이터를 넣음 */
            }

            const menuCtx = document.getElementById('menuTotalChart');

            new Chart(menuCtx, { /* menuTotalChart라는 id를 갖고있는 canvas에 차트를 띄움 */
                type: 'bar',
                data: {
                    labels: menu, /* labels는 x축 */
                    datasets: [{
                        label: '메뉴별 전체기간 매출', /* 어떤 그래프인지 설명 */
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
