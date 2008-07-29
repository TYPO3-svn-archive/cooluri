
#
# Table structure for table 'link_cache'
# (c) 2007 Jan Bednarik, info@bednarik.org
# (c) 2008 Tomas J Stehlik, tomas@stehlik.sk
#
DROP TABLE IF EXISTS link_cache;
CREATE TABLE `link_cache` (
	`id` int(10) unsigned NOT NULL auto_increment,
	`params` blob,
	`url` char(255),
	`tstamp` TIMESTAMP default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
	`crdatetime` datetime default NULL,
	`sticky` tinyint(1) unsigned default 0,

	PRIMARY KEY (`id`),
	KEY `url` (`url`(64)),
	KEY `params` (`params`(64))
) ENGINE = MyISAM;

#
# Table structure for table 'link_oldlinks'
# (c) 2007 Jan Bednarik, info@bednarik.org
# (c) 2008 Tomas J Stehlik, tomas@stehlik.sk
#
DROP TABLE IF EXISTS link_oldlinks;
CREATE TABLE `link_oldlinks` (
	`id` int(10) unsigned NOT NULL auto_increment,
	`link_id` int(10) unsigned NOT NULL default 0,
	`url` char(255),
	`tstamp` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,

	PRIMARY KEY (`id`),
	UNIQUE KEY `id` (`id`),
	KEY `url` (`url`(64))
) ENGINE = MyISAM;
