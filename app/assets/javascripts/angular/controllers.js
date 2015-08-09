'use strict';

/* Controllers */

var booksApp = angular.module('booksApp', []);

booksApp.controller('BookListCtrl', function($scope) {
  $scope.books = [
    {'title': 'Эпос о Гильгамеше',
     'about': 'Жизнь и мнения Тристрама Шенди, джентльмена',
     'image': 'http://www.kinopoisk.ru/images/film_big/757898.jpg'},
    {'title': 'Книга Иова',
     'about': 'Жизнь и мнения жентльмена',
     'image': 'http://illustrators.ru/illustrations/506389_original.jpg'},
    {'title': 'Тысяча и одна ночь',
     'about': 'Жизнь и мнения Тристрама Шенди',
     'image': 'http://book2.me/f/Slava_Se.jpg'}
  ];
});