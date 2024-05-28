<script type="text/javascript">
  function siteRuntime() {
    var startDate = new Date("2024-05-26T00:00:00"); // 你网站的创建时间
    var now = new Date();

    var diff = now - startDate;
    var days = Math.floor(diff / (1000 * 60 * 60 * 24));
    var hours = Math.floor((diff % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
    var minutes = Math.floor((diff % (1000 * 60 * 60)) / (1000 * 60));
    var seconds = Math.floor((diff % (1000 * 60)) / 1000);

    return {
      days: days,
      hours: hours,
      minutes: minutes,
      seconds: seconds
    };
  }

  function updateRuntime() {
    var runtime = siteRuntime();
    var runtimeElement = document.getElementById('runtime');
    if (runtimeElement) {
      runtimeElement.innerHTML = '本站安全运行 '
                                + runtime.days + ' 天 '
                                + runtime.hours.toString().padStart(2, '0') + ' 小时 '
                                + runtime.minutes.toString().padStart(2, '0') + ' 分 '
                                + runtime.seconds.toString().padStart(2, '0') + ' 秒';
    }
  }

  document.addEventListener('DOMContentLoaded', function () {
    updateRuntime(); // 初始化时先调用一次
    setInterval(updateRuntime, 1000); // 每秒更新一次
  });
</script>
<div id="runtime"></div>