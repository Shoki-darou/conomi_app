console.log("なんでも");

function setupClickEvents() {
  var notificationIcon = document.getElementById("notification-icon");
  var notificationBox = document.querySelector(".notification-box");
  var menu = document.querySelector(".menu-item"); // メニューの要素を取得
  var menuBox = document.querySelector(".menu-box");

  // 通知アイコンをクリックしたときの処理
  notificationIcon.addEventListener("mousedown", function() {
    notificationIcon.classList.add("clicked");

  // クリックが離されたときの処理
  notificationIcon.addEventListener("mouseup", function() {
    notificationIcon.classList.remove("clicked");
  });
  
  // 通知ボックスが表示されている場合
  if (notificationBox.classList.contains("show")) {
    notificationBox.classList.remove("show"); // 通知ボックスを非表示にする
  } else {
    // 通知ボックスが非表示の場合に表示させるコードを追加
    notificationBox.classList.add("show");
    // 通知ボックスを最前面に表示する
    notificationBox.style.zIndex = "2";
    // メニューボックスを最背面に表示する
    menuBox.style.zIndex = "1";
  }
  });

  // メニューをクリックしたときの処理
    menu.addEventListener("mousedown", function() {
    menu.classList.add("clicked");
  
  menu.addEventListener("mouseup", function() {
  menu.classList.remove("clicked");
  });
  
  // メニューボックスが表示されている場合
  if (menuBox.classList.contains("show")) {
    menuBox.classList.remove("show"); // メニューボックスを非表示にする
  } else {
    // メニューボックスが非表示の場合に表示させるコードを追加
    menuBox.classList.add("show");
    // メニューボックスを最前面に表示する
    menuBox.style.zIndex = "2";
    // 通知ボックスを最背面に表示する
    notificationBox.style.zIndex = "1";
  }
  });
}

document.addEventListener("turbo:load", setupClickEvents);
document.addEventListener("turbo:render", setupClickEvents);