(function () {
    const dessertUrl = "/dessertchart";

    axios.get(dessertUrl)
        .then(function (res) {
            console.log(res.data);

            const dessertMenu = [];
            const dessertPrice = [];

            for (let i = 0; i < res.data.length; i++) {
                dessertMenu.push(res.data[i].orderDetailCode);
                dessertPrice.push(res.data[i].orderDetailPrice);
            }

            const dessertCtx = document.getElementById('dessertChart').getContext('2d');

            new Chart(dessertCtx, {
                type: 'bar',
                data: {
                    labels: dessertMenu,
                    datasets: [{
                        label: '디저트별 매출',
                        backgroundColor: 'rgba(75, 192, 192, 0.2)',
                        borderColor: 'rgba(75, 192, 192, 1)',
                        data: dessertPrice,
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
