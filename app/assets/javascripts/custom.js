/*------------------------------------------------------------------
Project:    Mosaic
Author:     Simpleqode
URL:        http://simpleqode.com/
            https://twitter.com/YevSim
            https://www.facebook.com/simpleqode
Version:    1.3.3
Created:        20/01/2014
Last change:    20/06/2016
-------------------------------------------------------------------*/

/* ===== Sticky Navbar ===== */

var setSticky = function() {
  $(".navbar").sticky({ topSpacing: 0 });
};
$(document).ready(setSticky);

/* ====== Search box toggle ===== */

$('#nav-search').on('click', function() {
  $(this).toggleClass('show hidden').removeClass('animated flipInX');;
  $("#nav-search-close").toggleClass('show hidden');
  $("#nav-search-form").toggleClass('show hidden animated flipInX');
  return false;
});

$('#nav-search-close').on('click', function() {
  $(this).toggleClass('show hidden');
  $("#nav-search").toggleClass('show hidden animated flipInX');
  $("#nav-search-form").toggleClass('show hidden animated flipInX');
  return false;
});

/* Navbar dropdown link bug fix */

$('.navbar-nav > li > a').hover (function() {
  $(this).toggleClass("nav-hover-fix");
  return false;
});

// Style Toggle
// ============

$('.style-toggle-btn').on('click', function() {
  $(".style-toggle").toggleClass("style-toggle-show");
  $(this).toggleClass("fa-gears fa-angle-double-right");
  return false;
});

// Navbar Style Change
// =================

$('#opt-navbar-dark').on('change', function() {
  $(".mini-navbar").addClass("mini-navbar-dark").removeClass("mini-navbar-white");
  $(".navbar").addClass("navbar-dark").removeClass("navbar-white");
  return false;
});

$('#opt-navbar-white').on('change', function() {
  $(".mini-navbar").addClass("mini-navbar-white").removeClass("mini-navbar-dark");
  $(".navbar").addClass("navbar-white").removeClass("navbar-dark");
  return false;
});

$('#opt-navbar-mixed').on('change', function() {
  $(".mini-navbar").addClass("mini-navbar-dark").removeClass("mini-navbar-white");
  $(".navbar").addClass("navbar-white").removeClass("navbar-dark");
  return false;
});

// Footer Style Change
// =================

$('#opt-footer-dark').on('change', function() {
  $("footer").addClass("footer-dark").removeClass("footer-white");
  return false;
});

$('#opt-footer-white').on('change', function() {
  $("footer").addClass("footer-white").removeClass("footer-dark");
  return false;
});

// Body Style Change
// =================

$('.style-toggle-body .colors > .green').on('click', function() {
  $("body").addClass("body-green").removeClass("body-blue body-orange body-red");
  return false;
});

$('.style-toggle-body .colors > .blue').on('click', function() {
  $("body").addClass("body-blue").removeClass("body-green body-orange body-red");
  return false;
});

$('.style-toggle-body .colors > .orange').on('click', function() {
  $("body").addClass("body-orange").removeClass("body-green body-blue body-red");
  return false;
});

$('.style-toggle-body .colors > .red').on('click', function() {
  $("body").addClass("body-red").removeClass("body-green body-blue body-orange");
  return false;
});

/* ===== Our Services ===== */

$('.services-item').hover (function() {
  $(this).children("i").toggleClass("fa-rotate-90");
  return false;
});

/* ===== Sign Up popovers ===== */

$(function(){
  $('#name').popover();
});

$(function(){
  $('#username').popover();
});

$(function(){
  $('#email').popover();
});

$(function(){
  $('#password').popover();
});

$(function(){
  $('#repeat-password').popover();
});

