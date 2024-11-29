(function () {
    const dayUrl = "/daychart";

    axios.get(dayUrl)
        .then(function (res) {
            console.log(res.data);

            const dayOrderDate = [];
            const dayOrderTotal = [];

            for (let i = 0; i < res.data.length; i++) {
                dayOrderDate.push(res.data[i].orderMasterDate);
                dayOrderTotal.push(res.data[i].orderMasterTotal);
            }

            const dayCtx = document.getElementById('dayChart').getContext('2d');

            new Chart(dayCtx, {
                type: 'line',
                data: {
                    labels: dayOrderDate,
                    datasets: [{
                        label: '하루별 매출',
                        backgroundColor: 'rgba(75, 192, 192, 0.2)',
                        borderColor: 'rgba(75, 192, 192, 1)',
                        data: dayOrderTotal,
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
