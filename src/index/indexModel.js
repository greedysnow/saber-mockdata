/**
 * @file 
 * @author ()
 */

define(function (require) {

    var Resolver = require('saber-promise');

    var config = {};

    config.fetch = function (query) {
    	
        var ajax = require('saber-ajax/ejson');

		var request = ajax.get('/mock/test.json');

		return request;

    };

    return config;

});
