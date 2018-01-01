package pw.starboard.starbot;

import yaml.Yaml;

import pw.starboard.starbot.Bot;

class Main {
    static function main() {
        var bot: Bot = bootstrap();
        bot.run();
    }

    static function bootstrap(): Bot {
        var credentials: Map<Dynamic, Dynamic> = Yaml.read("./credentials.yml");
        var bot: Bot = new Bot(credentials.get("token"));

        bot.init();
        bot.registerEvents();

        return bot;
    }
}
