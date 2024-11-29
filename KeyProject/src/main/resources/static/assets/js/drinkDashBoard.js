(function () {
    const drinkUrl = "/drinkchart";

    axios.get(drinkUrl)
        .then(function (res) {
            console.log(res.data);

            const drinkMenu = [];
            const drinkPrice = [];

            for (let i = 0; i < res.data.length; i++) {
                drinkMenu.push(res.data[i].orderDetailCode);
                drinkPrice.push(res.data[i].orderDetailPrice);
            }

            const drinkCtx = document.getElementById('drinkChart').getContext('2d');

            new Chart(drinkCtx, {
                type: 'bar',
                data: {
                    labels: drinkMenu,
                    datasets: [{
                        label: '음료별 매출',
                        backgroundColor: 'rgba(75, 192, 192, 0.2)',
                        borderColor: 'rgba(75, 192, 192, 1)',
                        data: drinkPrice,
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
