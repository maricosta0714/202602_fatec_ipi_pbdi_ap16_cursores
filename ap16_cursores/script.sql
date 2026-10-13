CREATE TABLE tb_top_youtubers(
	cod_top_youtubers SERIAL PRIMARY KEY NOT NULL,
	rank INT NULL,
	youtuber VARCHAR(200) NULL,
	subcribers INT NULL,
	video_views INT NULL,
	video_count INT NULL,
	category VARCHAR (200) NULL,
	started INT NULL
);