--
-- PostgreSQL database dump
--

-- Dumped from database version 13.0
-- Dumped by pg_dump version 13.0

-- Started on 2021-01-05 17:48:50

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 200 (class 1259 OID 17176)
-- Name: ign_ratings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ign_ratings (
    game_title character varying NOT NULL,
    platform character varying,
    ign_game_rating character varying,
    genre character varying
);


ALTER TABLE public.ign_ratings OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 17290)
-- Name: kickstarter_stats; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.kickstarter_stats (
    game_title character varying NOT NULL,
    ks_campaign_deadline date,
    ks_campaign_launch_date timestamp without time zone,
    total_usd_raised numeric,
    backers numeric,
    ks_campaign_goal numeric
);


ALTER TABLE public.kickstarter_stats OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 17309)
-- Name: ks_games_on_steam; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ks_games_on_steam (
    game_title character varying NOT NULL,
    steam_store_url character varying
);


ALTER TABLE public.ks_games_on_steam OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 17334)
-- Name: metacritic_stats; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.metacritic_stats (
    game_title character varying NOT NULL,
    developer character varying,
    genre character varying,
    release_date character varying,
    positive_critics character varying,
    neutral_critics character varying,
    negative_critics character varying,
    positive_users character varying,
    neutral_users character varying,
    negative_users character varying,
    metascore character varying,
    userscore character varying
);


ALTER TABLE public.metacritic_stats OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 17342)
-- Name: steam_stats; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.steam_stats (
    game_title character varying NOT NULL,
    recent_reviews character varying,
    all_reviews character varying,
    release_date character varying,
    developer character varying,
    publisher character varying,
    genre character varying,
    original_price character varying
);


ALTER TABLE public.steam_stats OWNER TO postgres;

--
-- TOC entry 2870 (class 2606 OID 17183)
-- Name: ign_ratings ign_ratings_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ign_ratings
    ADD CONSTRAINT ign_ratings_pkey PRIMARY KEY (game_title);


--
-- TOC entry 2872 (class 2606 OID 17297)
-- Name: kickstarter_stats kickstarter_stats_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.kickstarter_stats
    ADD CONSTRAINT kickstarter_stats_pkey PRIMARY KEY (game_title);


--
-- TOC entry 2874 (class 2606 OID 17316)
-- Name: ks_games_on_steam ks_games_on_steam_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ks_games_on_steam
    ADD CONSTRAINT ks_games_on_steam_pkey PRIMARY KEY (game_title);


--
-- TOC entry 2876 (class 2606 OID 17341)
-- Name: metacritic_stats metacritic_stats_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.metacritic_stats
    ADD CONSTRAINT metacritic_stats_pkey PRIMARY KEY (game_title);


--
-- TOC entry 2878 (class 2606 OID 17349)
-- Name: steam_stats steam_stats_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.steam_stats
    ADD CONSTRAINT steam_stats_pkey PRIMARY KEY (game_title);


-- Completed on 2021-01-05 17:48:51

--
-- PostgreSQL database dump complete
--

