CREATE TABLE messages (
    msgid BIGINT UNSIGNED NOT NULL AUTO_INCREMENT ,
    message TEXT NOT NULL COMMENT 'Message' ,
    inserted TIMESTAMP NOT NULL COMMENT 'When message was inserted to database' ,
    PRIMARY KEY (msgid)
) ENGINE = InnoDB COMMENT = 'Log messages';
