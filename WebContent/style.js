const weeks = ["日", "月", "火", "水", "木", "金", "土"]; //一週間
let now = new Date(); //日付のオブジェクト
let year = now.getFullYear(); //今日の年
let month = now.getMonth() + 1; //今日の月
let date = now.getDate(); //今日の日
let day = now.getDay(); //今日の曜日
let count = 1; //カウントアップ用
let carender = ""; //カレンダーの表示部分
const setMonth = now.getMonth() + 1; //今月の値（比較用）
const setYear = now.getFullYear(); //今年の値（比較用）

//本日の日付を表示
//カレンダーの表示
showCarender = () => {
  count = 1;
  let carenderHtml = createCarender();
  document.getElementById("calender").innerHTML = carenderHtml;
};

// 今月のカレンダーを作成
createCarender = () => {
  let startDate = new Date(year, month - 1, 1).getDay(); //月の最初の日を取得
  let lastDate = new Date(year, month, 0).getDate(); //月の最後の日を取得
  let lastMonthDate = new Date(year, month - 1, 0).getDate(); //先月の月末

  document.getElementById("show").innerText =
    year + "年" + month + "月のカレンダー";

  carender += "<table>";
  for (let i = 0; i < weeks.length; i++) {
    carender += "<td>" + weeks[i] + "</td>";
  }
  for (let w = 0; w < 6; w++) {
    carender += "<tr>";
    for (let d = 0; d < 7; d++) {
      let num = lastMonthDate - startDate + d + 1;
      if (w == 0 && d < startDate) {
        carender += "<td class='last-nextMonthDate'>" + num + "</td>";
      } else if (count > lastDate) {
        num = count - lastDate;
        carender += "<td class='last-nextMonthDate'>" + num + "</td>";
        count++;
      } else if (count === date && setMonth === month && setYear === year) {
        carender += "<td class='today'>" + count + "</td>";
        count++;
      } else {
        carender += "<td>" + count + "</td>";
        count++;
      }
    }
  }
  carender += "</table>";
  return carender;
};

//来月へ
nextCarender = () => {
  carender = "";
  month = month + 1;
  if (month > 12) {
    month = 1;
    year++;
  }
  showCarender(year, month);
};
// 先月へ
prevCarender = () => {
  carender = "";
  month = month - 1;
  if (month < 1) {
    month = 12;
    year--;
  }
  showCarender(year, month);
};

document.getElementById("next").addEventListener("click", nextCarender);
document.getElementById("prev").addEventListener("click", prevCarender);
showCarender(year, month);