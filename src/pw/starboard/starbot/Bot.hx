package pw.starboard.starbot;

import com.raidandfade.haxicord.types.User;
import com.raidandfade.haxicord.types.Message;
import com.raidandfade.haxicord.types.structs.Emoji;
import com.raidandfade.haxicord.DiscordClient as Client;

class Bot {
    private var client: Client;
    private var token: String;
    
    public function new(token: String) {
        this.token = token;
    }

    public function init() {
        this.client = new Client(this.token);
    }

    public function run() {
        this.client.start();
    }

    public function registerEvents() {
        this.client.onReady = this.onReady;
        this.client.onReactionAdd = this.onReactionAdd;
    }

    private function onReactionAdd(m: Message, u: User, e: Emoji) {
        if (e.id == null && e.name == "⭐") {
            trace('A STARRY BOI HAS BEEN SEEN AT ${m.getGuild().name}');
        }
    }

    private function onReady() {
        trace("Hi dad");
    }
}
