#!/usr/bin/node

var request = require("request");
var cheerio = require("cheerio");
var _ = require("lodash");
var fs = require("fs");


request("https://news.ycombinator.com/active", function (error, response, inputhtml) {

    if (!error && response.statusCode == 200) {

        $ = cheerio.load(inputhtml);
        items = JSON.parse(fs.readFileSync("/var/www/hn.abyjames.com/html/hn.json"));
        let outputhtml = "";

        $(".athing").each(function(i, e) {

            id = $(this).attr("id");
            title = $(this).find(".title").find(".titleline").text();
            link = $(this).find(".title").find(".titleline").find("a").attr("href"); if (link.includes(id)) link = 'https://news.ycombinator.com/item?id=' + id;
            points = $(this).next().find(".subtext").find(".score").text().split(/\s/)[0];
            date = $(this).next().find(".subtext").find(".age").attr("title");
            comments = $(this).next().find(".subtext").find("a").eq(2).text().split(/\s/)[0];


            items[id] = {"title": title, "link": link, "points": points, "date": date, "comments": comments};
        });

        fs.writeFileSync("/var/www/hn.abyjames.com/html/hn.json", JSON.stringify(items));

        _.eachRight(items, function(value, key) {

            outputhtml +=
                '<tr class="item"' + ' ' + 'id=' + '"' + key + '"' + '>' +
                    '<td class="date">' + value["date"].split("T")[0] + '</td>' +
                    '<td class="points">' + value["points"] + ' ' + 'points' + '</td>' +
                    '<td class="comments"><a href="https://news.ycombinator.com/item?id=' + key + '"' + ' ' + 'target="_blank">' + value["comments"] + ' ' + 'comments' + '</a></td>' +
                    '<td class="link"><a href="' + value["link"] + '"' + ' ' + 'target="_blank">' + value["title"] + '</a></td>' +
                '</tr>';

        });

        $ = cheerio.load(fs.readFileSync("/var/www/hn.abyjames.com/html/hn.html"));

        $("#read").html(outputhtml);

        fs.writeFileSync('/var/www/hn.abyjames.com/html/hn.html', $.html());

    }
});

request("https://news.ycombinator.com/best", function (error, response, inputhtml) {

    if (!error && response.statusCode == 200) {

        $ = cheerio.load(inputhtml);
        items = JSON.parse(fs.readFileSync("/var/www/hn.abyjames.com/html/hn.json"));
        let outputhtml = "";

        $(".athing").each(function(i, e) {

            id = $(this).attr("id");
            title = $(this).find(".title").find(".titleline").text();
            link = $(this).find(".title").find(".titleline").find("a").attr("href"); if (link.includes(id)) link = 'https://news.ycombinator.com/item?id=' + id;
            points = $(this).next().find(".subtext").find(".score").text().split(/\s/)[0];
            date = $(this).next().find(".subtext").find(".age").attr("title");
            comments = $(this).next().find(".subtext").find("a").eq(2).text().split(/\s/)[0];


            items[id] = {"title": title, "link": link, "points": points, "date": date, "comments": comments};
        });

        fs.writeFileSync("/var/www/hn.abyjames.com/html/hn.json", JSON.stringify(items));

        _.eachRight(items, function(value, key) {

            outputhtml +=
                '<tr class="item"' + ' ' + 'id=' + '"' + key + '"' + '>' +
                    '<td class="date">' + value["date"].split("T")[0] + '</td>' +
                    '<td class="points">' + value["points"] + ' ' + 'points' + '</td>' +
                    '<td class="comments"><a href="https://news.ycombinator.com/item?id=' + key + '"' + ' ' + 'target="_blank">' + value["comments"] + ' ' + 'comments' + '</a></td>' +
                    '<td class="link"><a href="' + value["link"] + '"' + ' ' + 'target="_blank">' + value["title"] + '</a></td>' +
                '</tr>';

        });

        $ = cheerio.load(fs.readFileSync("/var/www/hn.abyjames.com/html/hn.html"));

        $("#read").html(outputhtml);

        fs.writeFileSync('/var/www/hn.abyjames.com/html/hn.html', $.html());

    }
});
