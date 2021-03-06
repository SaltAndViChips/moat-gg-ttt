CREATE TABLE IF NOT EXISTS `player_servers` (
	`id` int(10) unsigned NOT NULL AUTO_INCREMENT,
	`name` varchar(255) NOT NULL,
	`full_ip` varchar(45) DEFAULT NULL,
	`map` varchar(255) DEFAULT 'NULL',
	`players` int(10) unsigned DEFAULT NULL,
	`staff` int(10) unsigned DEFAULT NULL,
	`ip` varchar(255) NOT NULL,
	`port` varchar(10) NOT NULL,
	`custom_ip` varchar(255) NOT NULL,
	`join_url` varchar(255) DEFAULT NULL,
	`hostname` varchar(255) DEFAULT 'NULL',
	`map_changed` int(10) unsigned DEFAULT NULL,
	`max_players` int(10) unsigned DEFAULT NULL,
	`rounds_left` int(10) unsigned DEFAULT NULL,
	`round_state` varchar(50) NOT NULL,
	`time_left` int(10) unsigned DEFAULT NULL,
	`map_time_left` int(10) unsigned DEFAULT NULL,
	`traitors_alive` int(10) unsigned DEFAULT NULL,
	`innocents_alive` int(10) unsigned DEFAULT NULL,
	`others_alive` int(10) unsigned DEFAULT NULL,
	`spectators` int(10) unsigned DEFAULT NULL,
	`traitor_wins` int(10) unsigned DEFAULT NULL,
	`innocent_wins` int(10) unsigned DEFAULT NULL,
	`top_player_steamid` bigint(20) unsigned DEFAULT NULL,
	`top_player_name` varchar(255) DEFAULT NULL,
	`top_player_score` int(10) unsigned DEFAULT NULL,
	`special_round` varchar(255) DEFAULT NULL,
	`map_event` varchar(255) DEFAULT NULL,
	`last_update` timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	PRIMARY KEY (`id`),
	UNIQUE KEY `ip` (`ip`,`port`),
	UNIQUE KEY `full_ip` (`full_ip`)
);