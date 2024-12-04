// Set new default font family and font color to mimic Bootstrap's default styling
Chart.defaults.global.defaultFontFamily = '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
Chart.defaults.global.defaultFontColor = '#292b2c';

// Bar Chart Example
(function () {
    const menuUrl = "/menutotalchart";

    axios.get(menuUrl) /* menutotalchart로 요청 보냄 */
        .then(function (res) {

            const menu = [];
            const price = [];

            for (let i = 0; i < res.data.length; i++) {
                menu.push(res.data[i].menuName); /* 메뉴데이터를 넣음 */
                price.push(res.data[i].orderDetailPrice); /* 가격데이터를 넣음 */
            }

var mainMenuCtx = document.getElementById("mainMenuChart");
var myBarChart = new Chart(mainMenuCtx, { /* mainMenuChart라는 id를 갖고있는 canvas에 차트를 띄움 */
  type: 'bar',
  data: {
    labels: menu, /* labels는 x축 */
    datasets: [{
      label: "매출", /* y축의 데이터가 뭘 뜻하는지 지정 */
      backgroundColor: "rgba(2,117,216,1)",
      borderColor: "rgba(2,117,216,1)",
      data: price, /* data는 y축 */
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
          display: true
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

