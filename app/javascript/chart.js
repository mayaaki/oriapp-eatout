const ctx = document.getElementById('myChart');
const budget = document.getElementById('budget').textContent;
const sum = document.getElementById('record-sum').textContent;


const myChart = new Chart(ctx, {
  type: 'pie',
  data: {
    labels: [
         '合計金額',
         '予算残高'
    ],
    datasets: [{
      data: [sum, budget-sum],
      backgroundColor: [
        'rgb(156, 89, 12)',
        'rgba(255, 184, 103, 0.2)',
      ]
    }]
  }
});

myChart.canvas.parentNode.style.height = '28vh';
myChart.canvas.parentNode.style.width = '15.5vw';
myChart.canvas.parentNode.style.margin = 'auto';

window.addEventListener("turbo:load", myChart);
