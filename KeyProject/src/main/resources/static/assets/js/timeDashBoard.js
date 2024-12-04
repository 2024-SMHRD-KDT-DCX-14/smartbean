(function () {
    const timeUrl = "/timechart";

    axios.get(timeUrl)
        .then(function (res) {
            console.log(res.data);

            const timeOrderDate = [];
            const timeOrderTotal = [];

            for (let i = 0; i < res.data.length; i++) {
                timeOrderDate.push(res.data[i].orderMasterDate);
                timeOrderTotal.push(res.data[i].orderMasterTotal);
            }

            const timeCtx = document.getElementById('timeChart').getContext('2d');

            new Chart(timeCtx, {
                type: 'line',
                data: {
                    labels: timeOrderDate,
                    datasets: [{
                        label: '금일 매출',
                        backgroundColor: 'rgba(75, 192, 192, 0.2)',
                        borderColor: 'rgba(75, 192, 192, 1)',
                        data: timeOrderTotal,
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
