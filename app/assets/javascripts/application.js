// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .
//= require cocoon
$(document).on('turbolinks:load', function () {

    $('.start').on("click", function () {
      $('.start').hide()
      $('.top-form_season').show()
    });

//  季節を選択
    $('.top-form_season_btn').on("click", function () {
      $('.top-form_season').hide()
      $('.top-form_amenity').show()
    });

//  アメニティを選択
    $('.top-form_amenity_btn').on("click", function () {
      $('.top-form_amenity').hide()
      $('.top-form_transpotation').show()
    });

//  移動方法を選択
    $('.top-form_transpotation_btn').on("click", function () {
      $('.top-form_transpotation').hide()
      $('.top-form_activity_1').show()
    });

//  アクティビティを選択(山・海・その他)
  // 山を選択した場合
    $('.top-form_activity_1_1_btn').on("click", function () {
      $('.top-form_activity_1').hide()
      $('.top-form_activity_2_1').show()
    });

  // 海を選択した場合
    $('.top-form_activity_1_2_btn').on("click", function () {
      $('.top-form_activity_1').hide()
      $('.top-form_activity_2_2').show()
    });
  // その他を選択した場合
    $('.top-form_activity_1_3_btn').on("click", function () {
      $('.top-form_activity_1').hide()
      $('.top-form_activity_2_3').show()
    });

  // アクティビティを選択(詳細)、検索ボタンが表示される
    $('.top-form_activity_2_btn').on("click", function () {
      $('.top-form_activity_2_1').hide()
      $('.top-form_activity_2_2').hide()
      $('.top-form_activity_2_3').hide()
      $('.seach').show()
    });

    // 登山を選択
    $('.top-form_activity_2_1_1').on("click", function () {
      $('.top-form_activity_1_1_btn').after($(`<input value="登山" type="hidden" name="keyword" id="keyword" />`))
    });

    // キャンプを選択
    $('.top-form_activity_2_1_2').on("click", function () {
      $('.top-form_activity_1_1_btn').after($(`<input value="キャンプ" type="hidden" name="keyword" id="keyword" />`))
    });

    // 川遊び
    $('.top-form_activity_2_1_3').on("click", function () {
      $('.top-form_activity_1_1_btn').after($(`<input value="川遊び" type="hidden" name="keyword" id="keyword" />`))
    });

    // 釣りを選択
    $('.top-form_activity_2_2_1').on("click", function () {
      $('.top-form_activity_1_1_btn').after($(`<input value="釣り" type="hidden" name="keyword" id="keyword" />`))
    });

    // 海水浴を選択
    $('.top-form_activity_2_2_2').on("click", function () {
      $('.top-form_activity_1_1_btn').after($(`<input value="海水浴" type="hidden" name="keyword" id="keyword" />`))
    });

    // ダイビング
    $('.top-form_activity_2_2_3').on("click", function () {
      $('.top-form_activity_1_1_btn').after($(`<input value="ダイビング" type="hidden" name="keyword" id="keyword" />`))
    });

    // 遊園地を選択
    $('.top-form_activity_2_3_1').on("click", function () {
      $('.top-form_activity_1_1_btn').after($(`<input value="遊園地" type="hidden" name="keyword" id="keyword" />`))
    });

    // ドライブを選択
    $('.top-form_activity_2_3_2').on("click", function () {
      $('.top-form_activity_1_1_btn').after($(`<input value="ドライブ" type="hidden" name="keyword" id="keyword" />`))
    });

    // 自転車旅
    $('.top-form_activity_2_3_3').on("click", function () {
      $('.top-form_activity_1_1_btn').after($(`<input value="自転車旅" type="hidden" name="keyword" id="keyword" />`))
    });
})