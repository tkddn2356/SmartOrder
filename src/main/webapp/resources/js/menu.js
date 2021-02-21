console.log("board Module.....");
var menuService = (function () {
    function getListByCategory(category, callback, error) {
        console.log("category = " + category);
        $.ajax({
            type: 'get',
            url: '/menus/' + category,
            contentType: "application/json; charset=utf-8",
            success: function (result, status, xhr) {
                if (callback) {
                    callback(result);
                }
            },
            error: function (xhr, status, er) {

            }
        });
    }


    function getMenuByName(name, callback, error) {
        console.log("name = " + name);
        $.ajax({
            type: 'get',
            url: '/menu/' + name,
            async: false,
            contentType: "application/json; charset=utf-8",
            success: function (result, status, xhr) {
                if (callback) {
                    callback(result);
                }
            },
            error: function (xhr, status, er) {

            }
        });
    }

    function getListByIs_spicy(is_spicy, callback, error) {
        console.log("is_spicy = " + is_spicy);
        $.ajax({
            type: 'get',
            url: '/menus/search/is_spicy/' + is_spicy,
            async: false,
            contentType: "application/json; charset=utf-8",
            success: function (result, status, xhr) {
                if (callback) {
                    callback(result);
                }
            },
            error: function (xhr, status, er) {

            }
        });
    }
    function getListByIs_hot(is_hot, callback, error) {
        console.log("is_hot = " + is_hot);
        $.ajax({
            type: 'get',
            url: '/menus/search/is_hot/' + is_hot,
            async: false,
            contentType: "application/json; charset=utf-8",
            success: function (result, status, xhr) {
                if (callback) {
                    callback(result);
                }
            },
            error: function (xhr, status, er) {

            }
        });
    }
    function getListByHow_muchUnder(number, callback, error) {
        console.log("number = " + number);
        $.ajax({
            type: 'get',
            url: '/menus/search/how_much/under/' + number,
            async: false,
            contentType: "application/json; charset=utf-8",
            success: function (result, status, xhr) {
                if (callback) {
                    callback(result);
                }
            },
            error: function (xhr, status, er) {

            }
        });
    }
    function getListByHow_muchOver(number, callback, error) {
        console.log("number = " + number);
        $.ajax({
            type: 'get',
            url: '/menus/search/how_much/over/' + number,
            async: false,
            contentType: "application/json; charset=utf-8",
            success: function (result, status, xhr) {
                if (callback) {
                    callback(result);
                }
            },
            error: function (xhr, status, er) {

            }
        });
    }


    return {
        getListByCategory:getListByCategory,
        getMenuByName:getMenuByName,
        getListByIs_spicy:getListByIs_spicy,
        getListByIs_hot: getListByIs_hot,
        getListByHow_muchUnder: getListByHow_muchUnder,
        getListByHow_muchOver: getListByHow_muchOver
    };

})();