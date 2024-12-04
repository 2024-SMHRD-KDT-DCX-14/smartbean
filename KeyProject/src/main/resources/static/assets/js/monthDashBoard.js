(function () {
    const monthUrl = "/monthchart";

    axios.get(monthUrl)
        .then(function (res) {
            console.log(res.data);

            const monthOrderDate = [];
            const monthOrderTotal = [];

            for (let i = 0; i < res.data.length; i++) {
                monthOrderDate.push(res.data[i].orderMasterDate);
                monthOrderTotal.push(res.data[i].orderMasterTotal);
            }

            const monthCtx = document.getElementById('monthChart').getContext('2d');

            new Chart(monthCtx, {
                type: 'line',
                data: {
                    labels: monthOrderDate,
                    datasets: [{
                        label: '월별 매출',
                        backgroundColor: 'rgba(75, 192, 192, 0.2)',
                        borderColor: 'rgba(75, 192, 192, 1)',
                        data: monthOrderTotal,
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
