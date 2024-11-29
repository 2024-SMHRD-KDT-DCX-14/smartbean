(function () {
    const quaterUrl = "/quaterchart";

    axios.get(quaterUrl)
        .then(function (res) {
            console.log(res.data);

            const quaterOrderDate = [];
            const quaterOrderTotal = [];

            for (let i = 0; i < res.data.length; i++) {
                quaterOrderDate.push(res.data[i].orderMasterDate);
                quaterOrderTotal.push(res.data[i].orderMasterTotal);
            }

            const quaterCtx = document.getElementById('quaterChart').getContext('2d');

            new Chart(quaterCtx, {
                type: 'line',
                data: {
                    labels: quaterOrderDate,
                    datasets: [{
                        label: '분기별 매출',
                        backgroundColor: 'rgba(75, 192, 192, 0.2)',
                        borderColor: 'rgba(75, 192, 192, 1)',
                        data: quaterOrderTotal,
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
