(function () {
    const menuUrl = "/menumonthchart";

    axios.get(menuUrl)
        .then(function (res) {
            console.log(res.data);

            const menu = [];
            const price = [];

            for (let i = 0; i < res.data.length; i++) {
                menu.push(res.data[i].orderDetailCode);
                price.push(res.data[i].orderDetailPrice);
            }

            const menuCtx = document.getElementById('menuMonthChart').getContext('2d');

            new Chart(menuCtx, {
                type: 'bar',
                data: {
                    labels: menu,
                    datasets: [{
                        label: '메뉴별 30일간 매출',
                        backgroundColor: 'rgba(75, 192, 192, 0.2)',
                        borderColor: 'rgba(75, 192, 192, 1)',
                        data: price,
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
