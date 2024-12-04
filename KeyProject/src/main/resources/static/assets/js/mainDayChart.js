// Set new default font family and font color to mimic Bootstrap's default styling
Chart.defaults.global.defaultFontFamily = '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
Chart.defaults.global.defaultFontColor = '#292b2c';

// Area Chart Example
(function () {
    const dayUrl = "/daychart";

    axios.get(dayUrl) /* daychart로 요청 보냄 */
        .then(function (res) {

            const dayOrderDate = [];
            const dayOrderTotal = [];

            for (let i = 0; i < res.data.length; i++) {
                dayOrderDate.push(res.data[i].orderMasterDate); /* 날짜데이터를 넣음 */
                dayOrderTotal.push(res.data[i].orderMasterTotal); /* 가격데이터를 넣음 */
            }

var mainTimeCtx = document.getElementById("mainDayChart");

var myLineChart = new Chart(mainTimeCtx, { /* mainDayChart라는 id를 갖고있는 canvas에 차트를 띄움 */
  type: 'line',
  data: {
    labels: dayOrderDate, /* labels는 x축 */
    datasets: [{
      label: "매출", /* y축의 데이터가 뭘 뜻하는지 지정 */
      lineTension: 0.3,
      backgroundColor: "rgba(2,117,216,0.2)",
      borderColor: "rgba(2,117,216,0.3)",
      pointRadius: 5,
      pointBackgroundColor: "rgba(2,117,216,0.5)",
      pointBorderColor: "rgba(255,255,255,1)",
      pointHoverRadius: 5,
      pointHoverBackgroundColor: "rgba(2,117,216,1)",
      pointHitRadius: 50,
      pointBorderWidth: 2,
      data: dayOrderTotal, /* data는 y축 */
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

