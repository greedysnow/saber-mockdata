define(function (require) {

    var Resolver = require('saber-promise');

    var config = {};

    config.fetch = function () {
        return Resolver.resolved({name: 'foo'});
    };

    return config;
});
