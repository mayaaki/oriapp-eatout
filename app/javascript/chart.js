const ctx = document.getElementById('myChart');
const budget = document.getElementById('budget').textContent;
const sum = document.getElementById('record-sum').textContent;


const myChart = new Chart(ctx, {
  type: 'doughnut',
  data: {
    datasets: [{
      data: [sum, budget-sum],
      backgroundColor: [
        'rgb(156, 89, 12)',
        'rgba(255, 184, 103, 0.2)',
      ]
    }]
  }
});

myChart.canvas.parentNode.style.height = '290px';
myChart.canvas.parentNode.style.width = '290px';
myChart.canvas.parentNode.style.margin = 'auto';

