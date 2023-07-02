/*
 Navicat Premium Data Transfer

 Source Server         : PGSQL
 Source Server Type    : PostgreSQL
 Source Server Version : 110005
 Source Host           : localhost:5432
 Source Catalog        : movie
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 110005
 File Encoding         : 65001

 Date: 31/03/2020 08:30:59
*/


-- ----------------------------
-- Sequence structure for actor_act_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."actor_act_id_seq";
CREATE SEQUENCE "public"."actor_act_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for director_dir_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."director_dir_id_seq";
CREATE SEQUENCE "public"."director_dir_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for genres_gen_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."genres_gen_id_seq";
CREATE SEQUENCE "public"."genres_gen_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for movie_mov_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."movie_mov_id_seq";
CREATE SEQUENCE "public"."movie_mov_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for reviewer_rev_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."reviewer_rev_id_seq";
CREATE SEQUENCE "public"."reviewer_rev_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Table structure for actor
-- ----------------------------
DROP TABLE IF EXISTS "public"."actor";
CREATE TABLE "public"."actor" (
  "act_id" int4 NOT NULL DEFAULT nextval('actor_act_id_seq'::regclass),
  "act_fname" char(20) COLLATE "pg_catalog"."default" NOT NULL,
  "act_lname" char(20) COLLATE "pg_catalog"."default" NOT NULL,
  "act_gender" char(1) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of actor
-- ----------------------------
INSERT INTO "public"."actor" VALUES (101, 'James               ', 'Stewart             ', 'M');
INSERT INTO "public"."actor" VALUES (102, 'Deborah             ', 'Kerr                ', 'F');
INSERT INTO "public"."actor" VALUES (103, 'Peter               ', 'OToole              ', 'M');
INSERT INTO "public"."actor" VALUES (104, 'Robert              ', 'De Niro             ', 'M');
INSERT INTO "public"."actor" VALUES (105, 'F. Murray           ', 'Abraham             ', 'M');
INSERT INTO "public"."actor" VALUES (106, 'Harrison            ', 'Ford                ', 'M');
INSERT INTO "public"."actor" VALUES (107, 'Nicole              ', 'Kidman              ', 'F');
INSERT INTO "public"."actor" VALUES (108, 'Stephen             ', 'Baldwin             ', 'M');
INSERT INTO "public"."actor" VALUES (109, 'Jack                ', 'Nicholson           ', 'M');
INSERT INTO "public"."actor" VALUES (110, 'Mark                ', 'Wahlberg            ', 'M');
INSERT INTO "public"."actor" VALUES (111, 'Woody               ', 'Allen               ', 'M');
INSERT INTO "public"."actor" VALUES (112, 'Claire              ', 'Danes               ', 'F');
INSERT INTO "public"."actor" VALUES (113, 'Tim                 ', 'Robbins             ', 'M');
INSERT INTO "public"."actor" VALUES (114, 'Kevin               ', 'Spacey              ', 'M');
INSERT INTO "public"."actor" VALUES (115, 'Kate                ', 'Winslet             ', 'F');
INSERT INTO "public"."actor" VALUES (116, 'Robin               ', 'Williams            ', 'M');
INSERT INTO "public"."actor" VALUES (117, 'Jon                 ', 'Voight              ', 'M');
INSERT INTO "public"."actor" VALUES (118, 'Ewan                ', 'McGregor            ', 'M');
INSERT INTO "public"."actor" VALUES (119, 'Christian           ', 'Bale                ', 'M');
INSERT INTO "public"."actor" VALUES (120, 'Maggie              ', 'Gyllenhaal          ', 'F');
INSERT INTO "public"."actor" VALUES (121, 'Dev                 ', 'Patel               ', 'M');
INSERT INTO "public"."actor" VALUES (122, 'Sigourney           ', 'Weaver              ', 'F');
INSERT INTO "public"."actor" VALUES (123, 'David               ', 'Aston               ', 'M');
INSERT INTO "public"."actor" VALUES (124, 'Ali                 ', 'Astin               ', 'M');

-- ----------------------------
-- Table structure for director
-- ----------------------------
DROP TABLE IF EXISTS "public"."director";
CREATE TABLE "public"."director" (
  "dir_id" int4 NOT NULL DEFAULT nextval('director_dir_id_seq'::regclass),
  "dir_fname" char(20) COLLATE "pg_catalog"."default" NOT NULL,
  "dir_lname" char(20) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of director
-- ----------------------------
INSERT INTO "public"."director" VALUES (201, 'Alfred              ', 'Hitchcock           ');
INSERT INTO "public"."director" VALUES (202, 'Jack                ', 'Clayton             ');
INSERT INTO "public"."director" VALUES (203, 'David               ', 'Lean                ');
INSERT INTO "public"."director" VALUES (204, 'Michael             ', 'Cimino              ');
INSERT INTO "public"."director" VALUES (205, 'Milos               ', 'Forman              ');
INSERT INTO "public"."director" VALUES (206, 'Ridley              ', 'Scott               ');
INSERT INTO "public"."director" VALUES (207, 'Stanley             ', 'Kubrick             ');
INSERT INTO "public"."director" VALUES (208, 'Bryan               ', 'Singer              ');
INSERT INTO "public"."director" VALUES (209, 'Roman               ', 'Polanski            ');
INSERT INTO "public"."director" VALUES (210, 'Paul                ', 'Thomas Anderson     ');
INSERT INTO "public"."director" VALUES (211, 'Woody               ', 'Allen               ');
INSERT INTO "public"."director" VALUES (212, 'Hayao               ', 'Miyazaki            ');
INSERT INTO "public"."director" VALUES (213, 'Frank               ', 'Darabont            ');
INSERT INTO "public"."director" VALUES (214, 'Sam                 ', 'Mendes              ');
INSERT INTO "public"."director" VALUES (215, 'James               ', 'Cameron             ');
INSERT INTO "public"."director" VALUES (216, 'Gus                 ', 'Van Sant            ');
INSERT INTO "public"."director" VALUES (217, 'John                ', 'Boorman             ');
INSERT INTO "public"."director" VALUES (218, 'Danny               ', 'Boyle               ');
INSERT INTO "public"."director" VALUES (219, 'Christopher         ', 'Nolan               ');
INSERT INTO "public"."director" VALUES (220, 'Richard             ', 'Kelly               ');
INSERT INTO "public"."director" VALUES (221, 'Kevin               ', 'Spacey              ');
INSERT INTO "public"."director" VALUES (222, 'Andrei              ', 'Tarkovsky           ');
INSERT INTO "public"."director" VALUES (223, 'Peter               ', 'Jackson             ');

-- ----------------------------
-- Table structure for genres
-- ----------------------------
DROP TABLE IF EXISTS "public"."genres";
CREATE TABLE "public"."genres" (
  "gen_id" int4 NOT NULL DEFAULT nextval('genres_gen_id_seq'::regclass),
  "gen_title" char(20) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of genres
-- ----------------------------
INSERT INTO "public"."genres" VALUES (1001, 'Action              ');
INSERT INTO "public"."genres" VALUES (1002, 'Adventure           ');
INSERT INTO "public"."genres" VALUES (1003, 'Animation           ');
INSERT INTO "public"."genres" VALUES (1004, 'Biography           ');
INSERT INTO "public"."genres" VALUES (1005, 'Comedy              ');
INSERT INTO "public"."genres" VALUES (1006, 'Crime               ');
INSERT INTO "public"."genres" VALUES (1007, 'Drama               ');
INSERT INTO "public"."genres" VALUES (1008, 'Horror              ');
INSERT INTO "public"."genres" VALUES (1009, 'Music               ');
INSERT INTO "public"."genres" VALUES (1010, 'Mystery             ');
INSERT INTO "public"."genres" VALUES (1011, 'Romance             ');
INSERT INTO "public"."genres" VALUES (1012, 'Thriller            ');
INSERT INTO "public"."genres" VALUES (1013, 'War                 ');

-- ----------------------------
-- Table structure for movie
-- ----------------------------
DROP TABLE IF EXISTS "public"."movie";
CREATE TABLE "public"."movie" (
  "mov_id" int8 NOT NULL DEFAULT nextval('movie_mov_id_seq'::regclass),
  "mov_title" char(50) COLLATE "pg_catalog"."default" NOT NULL,
  "mov_year" int4,
  "mov_time" int4,
  "mov_lang" char(50) COLLATE "pg_catalog"."default",
  "mov_dt_rel" date,
  "mov_rel_country" char(5) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of movie
-- ----------------------------
INSERT INTO "public"."movie" VALUES (901, 'Vertigo                                           ', 1958, 128, 'English                                           ', '1958-08-24', 'UK   ');
INSERT INTO "public"."movie" VALUES (902, 'The Innocents                                     ', 1961, 100, 'English                                           ', '1962-02-19', 'SW   ');
INSERT INTO "public"."movie" VALUES (903, 'Lawrence of Arabia                                ', 1962, 216, 'English                                           ', '1962-12-11', 'UK   ');
INSERT INTO "public"."movie" VALUES (904, 'The Deer Hunter                                   ', 1978, 183, 'English                                           ', '1979-03-08', 'UK   ');
INSERT INTO "public"."movie" VALUES (905, 'Amadeus                                           ', 1984, 160, 'English                                           ', '1985-01-07', 'UK   ');
INSERT INTO "public"."movie" VALUES (906, 'Blade Runner                                      ', 1982, 117, 'English                                           ', '1982-09-09', 'UK   ');
INSERT INTO "public"."movie" VALUES (907, 'Eyes Wide Shut                                    ', 1999, 159, 'English                                           ', NULL, 'UK   ');
INSERT INTO "public"."movie" VALUES (908, 'The Usual Suspects                                ', 1995, 106, 'English                                           ', '1995-08-25', 'UK   ');
INSERT INTO "public"."movie" VALUES (909, 'Chinatown                                         ', 1974, 130, 'English                                           ', '1974-08-09', 'UK   ');
INSERT INTO "public"."movie" VALUES (910, 'Boogie Nights                                     ', 1997, 155, 'English                                           ', '1998-02-16', 'UK   ');
INSERT INTO "public"."movie" VALUES (911, 'Annie Hall                                        ', 1977, 93, 'English                                           ', '1977-04-20', 'USA  ');
INSERT INTO "public"."movie" VALUES (912, 'Princess Mononoke                                 ', 1997, 134, 'Japanese                                          ', '2001-10-19', 'UK   ');
INSERT INTO "public"."movie" VALUES (913, 'The Shawshank Redemption                          ', 1994, 142, 'English                                           ', '1995-02-17', 'UK   ');
INSERT INTO "public"."movie" VALUES (914, 'American Beauty                                   ', 1999, 122, 'English                                           ', NULL, 'UK   ');
INSERT INTO "public"."movie" VALUES (915, 'Titanic                                           ', 1997, 194, 'English                                           ', '1998-01-23', 'UK   ');
INSERT INTO "public"."movie" VALUES (916, 'Good Will Hunting                                 ', 1997, 126, 'English                                           ', '1998-06-03', 'UK   ');
INSERT INTO "public"."movie" VALUES (917, 'Deliverance                                       ', 1972, 109, 'English                                           ', '1982-10-05', 'UK   ');
INSERT INTO "public"."movie" VALUES (918, 'Trainspotting                                     ', 1996, 94, 'English                                           ', '1996-02-23', 'UK   ');
INSERT INTO "public"."movie" VALUES (919, 'The Prestige                                      ', 2006, 130, 'English                                           ', '2006-11-10', 'UK   ');
INSERT INTO "public"."movie" VALUES (920, 'Donnie Darko                                      ', 2001, 113, 'English                                           ', NULL, 'UK   ');
INSERT INTO "public"."movie" VALUES (921, 'Slumdog Millionaire                               ', 2008, 120, 'English                                           ', '2009-01-09', 'UK   ');
INSERT INTO "public"."movie" VALUES (922, 'Aliens                                            ', 1986, 137, 'English                                           ', '1986-08-29', 'UK   ');
INSERT INTO "public"."movie" VALUES (923, 'Beyond the Sea                                    ', 2004, 118, 'English                                           ', '2004-11-26', 'UK   ');
INSERT INTO "public"."movie" VALUES (924, 'Avatar                                            ', 2009, 162, 'English                                           ', '2009-12-17', 'UK   ');
INSERT INTO "public"."movie" VALUES (925, 'Seven Samurai                                     ', 1954, 207, 'Japanese                                          ', '1954-04-26', 'JP   ');
INSERT INTO "public"."movie" VALUES (926, 'Spirited Away                                     ', 2001, 125, 'Japanese                                          ', '2003-09-12', 'UK   ');
INSERT INTO "public"."movie" VALUES (927, 'Back to the Future                                ', 1985, 116, 'English                                           ', '1985-12-04', 'UK   ');
INSERT INTO "public"."movie" VALUES (928, 'Braveheart                                        ', 1995, 178, 'English                                           ', '1995-09-08', 'UK   ');

-- ----------------------------
-- Table structure for movie_cast
-- ----------------------------
DROP TABLE IF EXISTS "public"."movie_cast";
CREATE TABLE "public"."movie_cast" (
  "act_id" int4 NOT NULL,
  "mov_id" int8 NOT NULL,
  "role" char(30) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of movie_cast
-- ----------------------------
INSERT INTO "public"."movie_cast" VALUES (101, 901, 'John Scottie Ferguson         ');
INSERT INTO "public"."movie_cast" VALUES (102, 902, 'Miss Giddens                  ');
INSERT INTO "public"."movie_cast" VALUES (103, 903, 'T.E. Lawrence                 ');
INSERT INTO "public"."movie_cast" VALUES (104, 904, 'Michael                       ');
INSERT INTO "public"."movie_cast" VALUES (105, 905, 'Antonio Salieri               ');
INSERT INTO "public"."movie_cast" VALUES (106, 906, 'Rick Deckard                  ');
INSERT INTO "public"."movie_cast" VALUES (107, 907, 'Alice Harford                 ');
INSERT INTO "public"."movie_cast" VALUES (108, 908, 'McManus                       ');
INSERT INTO "public"."movie_cast" VALUES (110, 910, 'Eddie Adams                   ');
INSERT INTO "public"."movie_cast" VALUES (111, 911, 'Alvy Singer                   ');
INSERT INTO "public"."movie_cast" VALUES (112, 912, 'San                           ');
INSERT INTO "public"."movie_cast" VALUES (113, 913, 'Andy Dufresne                 ');
INSERT INTO "public"."movie_cast" VALUES (114, 914, 'Lester Burnham                ');
INSERT INTO "public"."movie_cast" VALUES (115, 915, 'Rose DeWitt Bukater           ');
INSERT INTO "public"."movie_cast" VALUES (116, 916, 'Sean Maguire                  ');
INSERT INTO "public"."movie_cast" VALUES (117, 917, 'Ed                            ');
INSERT INTO "public"."movie_cast" VALUES (118, 918, 'Renton                        ');
INSERT INTO "public"."movie_cast" VALUES (120, 920, 'Elizabeth Darko               ');
INSERT INTO "public"."movie_cast" VALUES (121, 921, 'Older Jamal                   ');
INSERT INTO "public"."movie_cast" VALUES (122, 922, 'Ripley                        ');
INSERT INTO "public"."movie_cast" VALUES (114, 923, 'Bobby Darin                   ');
INSERT INTO "public"."movie_cast" VALUES (109, 909, 'J.J. Gittes                   ');
INSERT INTO "public"."movie_cast" VALUES (119, 919, 'Alfred Borden                 ');

-- ----------------------------
-- Table structure for movie_direction
-- ----------------------------
DROP TABLE IF EXISTS "public"."movie_direction";
CREATE TABLE "public"."movie_direction" (
  "dir_id" int4 NOT NULL,
  "mov_id" int8 NOT NULL
)
;

-- ----------------------------
-- Records of movie_direction
-- ----------------------------
INSERT INTO "public"."movie_direction" VALUES (201, 901);
INSERT INTO "public"."movie_direction" VALUES (202, 902);
INSERT INTO "public"."movie_direction" VALUES (203, 903);
INSERT INTO "public"."movie_direction" VALUES (204, 904);
INSERT INTO "public"."movie_direction" VALUES (205, 905);
INSERT INTO "public"."movie_direction" VALUES (206, 906);
INSERT INTO "public"."movie_direction" VALUES (207, 907);
INSERT INTO "public"."movie_direction" VALUES (208, 908);
INSERT INTO "public"."movie_direction" VALUES (209, 909);
INSERT INTO "public"."movie_direction" VALUES (210, 910);
INSERT INTO "public"."movie_direction" VALUES (211, 911);
INSERT INTO "public"."movie_direction" VALUES (212, 912);
INSERT INTO "public"."movie_direction" VALUES (213, 913);
INSERT INTO "public"."movie_direction" VALUES (214, 914);
INSERT INTO "public"."movie_direction" VALUES (215, 915);
INSERT INTO "public"."movie_direction" VALUES (216, 916);
INSERT INTO "public"."movie_direction" VALUES (217, 917);
INSERT INTO "public"."movie_direction" VALUES (218, 918);
INSERT INTO "public"."movie_direction" VALUES (219, 919);
INSERT INTO "public"."movie_direction" VALUES (220, 920);
INSERT INTO "public"."movie_direction" VALUES (218, 921);
INSERT INTO "public"."movie_direction" VALUES (215, 922);
INSERT INTO "public"."movie_direction" VALUES (221, 923);

-- ----------------------------
-- Table structure for movie_genres
-- ----------------------------
DROP TABLE IF EXISTS "public"."movie_genres";
CREATE TABLE "public"."movie_genres" (
  "mov_id" int8 NOT NULL,
  "gen_id" int4 NOT NULL
)
;

-- ----------------------------
-- Records of movie_genres
-- ----------------------------
INSERT INTO "public"."movie_genres" VALUES (922, 1001);
INSERT INTO "public"."movie_genres" VALUES (917, 1002);
INSERT INTO "public"."movie_genres" VALUES (903, 1002);
INSERT INTO "public"."movie_genres" VALUES (912, 1003);
INSERT INTO "public"."movie_genres" VALUES (911, 1005);
INSERT INTO "public"."movie_genres" VALUES (908, 1006);
INSERT INTO "public"."movie_genres" VALUES (913, 1006);
INSERT INTO "public"."movie_genres" VALUES (926, 1007);
INSERT INTO "public"."movie_genres" VALUES (928, 1007);
INSERT INTO "public"."movie_genres" VALUES (918, 1007);
INSERT INTO "public"."movie_genres" VALUES (921, 1007);
INSERT INTO "public"."movie_genres" VALUES (902, 1008);
INSERT INTO "public"."movie_genres" VALUES (923, 1009);
INSERT INTO "public"."movie_genres" VALUES (907, 1010);
INSERT INTO "public"."movie_genres" VALUES (927, 1010);
INSERT INTO "public"."movie_genres" VALUES (901, 1010);
INSERT INTO "public"."movie_genres" VALUES (914, 1011);
INSERT INTO "public"."movie_genres" VALUES (906, 1012);
INSERT INTO "public"."movie_genres" VALUES (904, 1013);

-- ----------------------------
-- Table structure for rating
-- ----------------------------
DROP TABLE IF EXISTS "public"."rating";
CREATE TABLE "public"."rating" (
  "rev_id" int4 NOT NULL,
  "mov_id" int8 NOT NULL,
  "rev_stars" int4,
  "num_o_ratings" int4
)
;

-- ----------------------------
-- Records of rating
-- ----------------------------
INSERT INTO "public"."rating" VALUES (9001, 901, 8, 263575);
INSERT INTO "public"."rating" VALUES (9002, 902, 8, 20207);
INSERT INTO "public"."rating" VALUES (9003, 903, 8, 202778);
INSERT INTO "public"."rating" VALUES (9005, 906, 8, 484746);
INSERT INTO "public"."rating" VALUES (9006, 924, 7, NULL);
INSERT INTO "public"."rating" VALUES (9007, 908, 9, 779489);
INSERT INTO "public"."rating" VALUES (9008, 909, NULL, 227235);
INSERT INTO "public"."rating" VALUES (9009, 910, 3, 195961);
INSERT INTO "public"."rating" VALUES (9010, 911, 8, 203875);
INSERT INTO "public"."rating" VALUES (9011, 912, 8, NULL);
INSERT INTO "public"."rating" VALUES (9013, 914, 7, 862618);
INSERT INTO "public"."rating" VALUES (9001, 915, 8, 830095);
INSERT INTO "public"."rating" VALUES (9014, 916, 4, 642132);
INSERT INTO "public"."rating" VALUES (9015, 925, 8, 81328);
INSERT INTO "public"."rating" VALUES (9016, 918, NULL, 80301);
INSERT INTO "public"."rating" VALUES (9017, 920, 8, 609451);
INSERT INTO "public"."rating" VALUES (9018, 921, 8, 667758);
INSERT INTO "public"."rating" VALUES (9019, 922, 8, 511613);
INSERT INTO "public"."rating" VALUES (9020, 923, 7, 13091);

-- ----------------------------
-- Table structure for reviewer
-- ----------------------------
DROP TABLE IF EXISTS "public"."reviewer";
CREATE TABLE "public"."reviewer" (
  "rev_id" int4 NOT NULL DEFAULT nextval('reviewer_rev_id_seq'::regclass),
  "rev_name" char(30) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of reviewer
-- ----------------------------
INSERT INTO "public"."reviewer" VALUES (9001, 'Righty Sock                   ');
INSERT INTO "public"."reviewer" VALUES (9002, 'Jack Malvern                  ');
INSERT INTO "public"."reviewer" VALUES (9003, 'Flagrant Baronessa            ');
INSERT INTO "public"."reviewer" VALUES (9004, 'Alec Shaw                     ');
INSERT INTO "public"."reviewer" VALUES (9005, NULL);
INSERT INTO "public"."reviewer" VALUES (9006, 'Victor Woeltjen               ');
INSERT INTO "public"."reviewer" VALUES (9007, 'Simon Wright                  ');
INSERT INTO "public"."reviewer" VALUES (9008, 'Neal Wruck                    ');
INSERT INTO "public"."reviewer" VALUES (9009, 'Paul Monks                    ');
INSERT INTO "public"."reviewer" VALUES (9010, 'Mike Salvati                  ');
INSERT INTO "public"."reviewer" VALUES (9011, NULL);
INSERT INTO "public"."reviewer" VALUES (9012, 'Wesley S. Walker              ');
INSERT INTO "public"."reviewer" VALUES (9013, 'Sasha Goldshtein              ');
INSERT INTO "public"."reviewer" VALUES (9014, 'Josh Cates                    ');
INSERT INTO "public"."reviewer" VALUES (9015, 'Krug Stillo                   ');
INSERT INTO "public"."reviewer" VALUES (9016, 'Scott LeBrun                  ');
INSERT INTO "public"."reviewer" VALUES (9017, 'Hannah Steele                 ');
INSERT INTO "public"."reviewer" VALUES (9018, 'Vincent Cadena                ');
INSERT INTO "public"."reviewer" VALUES (9019, 'Brandt Sponseller             ');
INSERT INTO "public"."reviewer" VALUES (9020, 'Richard Adams                 ');

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."actor_act_id_seq"
OWNED BY "public"."actor"."act_id";
SELECT setval('"public"."actor_act_id_seq"', 125, true);
ALTER SEQUENCE "public"."director_dir_id_seq"
OWNED BY "public"."director"."dir_id";
SELECT setval('"public"."director_dir_id_seq"', 224, true);
ALTER SEQUENCE "public"."genres_gen_id_seq"
OWNED BY "public"."genres"."gen_id";
SELECT setval('"public"."genres_gen_id_seq"', 1014, true);
ALTER SEQUENCE "public"."movie_mov_id_seq"
OWNED BY "public"."movie"."mov_id";
SELECT setval('"public"."movie_mov_id_seq"', 985, true);
ALTER SEQUENCE "public"."reviewer_rev_id_seq"
OWNED BY "public"."reviewer"."rev_id";
SELECT setval('"public"."reviewer_rev_id_seq"', 9021, true);

-- ----------------------------
-- Indexes structure for table actor
-- ----------------------------
CREATE UNIQUE INDEX "actor_pk" ON "public"."actor" USING btree (
  "act_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table actor
-- ----------------------------
ALTER TABLE "public"."actor" ADD CONSTRAINT "pk_actor" PRIMARY KEY ("act_id");

-- ----------------------------
-- Indexes structure for table director
-- ----------------------------
CREATE UNIQUE INDEX "director_pk" ON "public"."director" USING btree (
  "dir_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table director
-- ----------------------------
ALTER TABLE "public"."director" ADD CONSTRAINT "pk_director" PRIMARY KEY ("dir_id");

-- ----------------------------
-- Indexes structure for table genres
-- ----------------------------
CREATE UNIQUE INDEX "genres_pk" ON "public"."genres" USING btree (
  "gen_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table genres
-- ----------------------------
ALTER TABLE "public"."genres" ADD CONSTRAINT "pk_genres" PRIMARY KEY ("gen_id");

-- ----------------------------
-- Indexes structure for table movie
-- ----------------------------
CREATE UNIQUE INDEX "movie_pk" ON "public"."movie" USING btree (
  "mov_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table movie
-- ----------------------------
ALTER TABLE "public"."movie" ADD CONSTRAINT "pk_movie" PRIMARY KEY ("mov_id");

-- ----------------------------
-- Indexes structure for table movie_cast
-- ----------------------------
CREATE INDEX "relationship_1_fk" ON "public"."movie_cast" USING btree (
  "act_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE UNIQUE INDEX "relationship_1_pk" ON "public"."movie_cast" USING btree (
  "act_id" "pg_catalog"."int4_ops" ASC NULLS LAST,
  "mov_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "relationship_2_fk" ON "public"."movie_cast" USING btree (
  "mov_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table movie_cast
-- ----------------------------
ALTER TABLE "public"."movie_cast" ADD CONSTRAINT "pk_movie_cast" PRIMARY KEY ("act_id", "mov_id");

-- ----------------------------
-- Indexes structure for table movie_direction
-- ----------------------------
CREATE UNIQUE INDEX "relationship_4_pk" ON "public"."movie_direction" USING btree (
  "dir_id" "pg_catalog"."int4_ops" ASC NULLS LAST,
  "mov_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "relationship_7_fk" ON "public"."movie_direction" USING btree (
  "dir_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "relationship_8_fk" ON "public"."movie_direction" USING btree (
  "mov_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table movie_direction
-- ----------------------------
ALTER TABLE "public"."movie_direction" ADD CONSTRAINT "pk_movie_direction" PRIMARY KEY ("dir_id", "mov_id");

-- ----------------------------
-- Indexes structure for table movie_genres
-- ----------------------------
CREATE UNIQUE INDEX "relationship_2_pk" ON "public"."movie_genres" USING btree (
  "mov_id" "pg_catalog"."int8_ops" ASC NULLS LAST,
  "gen_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "relationship_3_fk" ON "public"."movie_genres" USING btree (
  "mov_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "relationship_4_fk" ON "public"."movie_genres" USING btree (
  "gen_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table movie_genres
-- ----------------------------
ALTER TABLE "public"."movie_genres" ADD CONSTRAINT "pk_movie_genres" PRIMARY KEY ("mov_id", "gen_id");

-- ----------------------------
-- Indexes structure for table rating
-- ----------------------------
CREATE UNIQUE INDEX "relationship_3_pk" ON "public"."rating" USING btree (
  "rev_id" "pg_catalog"."int4_ops" ASC NULLS LAST,
  "mov_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "relationship_5_fk" ON "public"."rating" USING btree (
  "rev_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "relationship_6_fk" ON "public"."rating" USING btree (
  "mov_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table rating
-- ----------------------------
ALTER TABLE "public"."rating" ADD CONSTRAINT "pk_rating" PRIMARY KEY ("rev_id", "mov_id");

-- ----------------------------
-- Indexes structure for table reviewer
-- ----------------------------
CREATE UNIQUE INDEX "reviewer_pk" ON "public"."reviewer" USING btree (
  "rev_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table reviewer
-- ----------------------------
ALTER TABLE "public"."reviewer" ADD CONSTRAINT "pk_reviewer" PRIMARY KEY ("rev_id");

-- ----------------------------
-- Foreign Keys structure for table movie_cast
-- ----------------------------
ALTER TABLE "public"."movie_cast" ADD CONSTRAINT "fk_movie_ca_relations_actor" FOREIGN KEY ("act_id") REFERENCES "public"."actor" ("act_id") ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE "public"."movie_cast" ADD CONSTRAINT "fk_movie_ca_relations_movie" FOREIGN KEY ("mov_id") REFERENCES "public"."movie" ("mov_id") ON DELETE RESTRICT ON UPDATE RESTRICT;

-- ----------------------------
-- Foreign Keys structure for table movie_direction
-- ----------------------------
ALTER TABLE "public"."movie_direction" ADD CONSTRAINT "fk_movie_di_relations_director" FOREIGN KEY ("dir_id") REFERENCES "public"."director" ("dir_id") ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE "public"."movie_direction" ADD CONSTRAINT "fk_movie_di_relations_movie" FOREIGN KEY ("mov_id") REFERENCES "public"."movie" ("mov_id") ON DELETE RESTRICT ON UPDATE RESTRICT;

-- ----------------------------
-- Foreign Keys structure for table movie_genres
-- ----------------------------
ALTER TABLE "public"."movie_genres" ADD CONSTRAINT "fk_movie_ge_relations_genres" FOREIGN KEY ("gen_id") REFERENCES "public"."genres" ("gen_id") ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE "public"."movie_genres" ADD CONSTRAINT "fk_movie_ge_relations_movie" FOREIGN KEY ("mov_id") REFERENCES "public"."movie" ("mov_id") ON DELETE RESTRICT ON UPDATE RESTRICT;

-- ----------------------------
-- Foreign Keys structure for table rating
-- ----------------------------
ALTER TABLE "public"."rating" ADD CONSTRAINT "fk_rating_relations_movie" FOREIGN KEY ("mov_id") REFERENCES "public"."movie" ("mov_id") ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE "public"."rating" ADD CONSTRAINT "fk_rating_relations_reviewer" FOREIGN KEY ("rev_id") REFERENCES "public"."reviewer" ("rev_id") ON DELETE RESTRICT ON UPDATE RESTRICT;
