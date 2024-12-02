// Set new default font family and font color to mimic Bootstrap's default styling
Chart.defaults.global.defaultFontFamily = '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
Chart.defaults.global.defaultFontColor = '#292b2c';

// Area Chart Example
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

var mainTimeCtx = document.getElementById("mainTimeChart");

var myLineChart = new Chart(mainTimeCtx, {
  type: 'line',
  data: {
    labels: timeOrderDate,
    datasets: [{
      label: "매출",
      lineTension: 0.3,
      backgroundColor: "rgba(2,117,216,0.2)",
      borderColor: "rgba(2,117,216,1)",
      pointRadius: 5,
      pointBackgroundColor: "rgba(2,117,216,1)",
      pointBorderColor: "rgba(255,255,255,0.8)",
      pointHoverRadius: 5,
      pointHoverBackgroundColor: "rgba(2,117,216,1)",
      pointHitRadius: 50,
      pointBorderWidth: 2,
      data: timeOrderTotal,
    }],
  },
  options: {
    scales: {
      xAxes: [{
        gridLines: {
          display: true
        },
      }],
      yAxes: [{
        gridLines: {
          color: "rgba(0, 0, 0, .125)",
        }
      }],
    },
    legend: {
      display: false
    }
  }
});
        });
})();

