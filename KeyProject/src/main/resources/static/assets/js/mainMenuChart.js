// Set new default font family and font color to mimic Bootstrap's default styling
Chart.defaults.global.defaultFontFamily = '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
Chart.defaults.global.defaultFontColor = '#292b2c';

// Bar Chart Example
(function () {
    const menuUrl = "/menuchart";

    axios.get(menuUrl)
        .then(function (res) {
            console.log(res.data);

            const menu = [];
            const price = [];

            for (let i = 0; i < res.data.length; i++) {
                menu.push(res.data[i].orderDetailCode);
                price.push(res.data[i].orderDetailPrice);
            }

var mainMenuCtx = document.getElementById("mainMenuChart");
var myBarChart = new Chart(mainMenuCtx, {
  type: 'bar',
  data: {
    labels: menu,
    datasets: [{
      label: "매출",
      backgroundColor: "rgba(2,117,216,1)",
      borderColor: "rgba(2,117,216,1)",
      data: price,
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

