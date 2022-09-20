--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_age_years integer,
    galaxy_has_life boolean,
    galaxy_distance integer,
    galaxy_type numeric
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    moon_version text,
    moon_distance integer,
    moon_life_years integer,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: more_info_universe; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.more_info_universe (
    more_info_universe_id integer NOT NULL,
    name character varying NOT NULL,
    relation_among text
);


ALTER TABLE public.more_info_universe OWNER TO freecodecamp;

--
-- Name: more_info_universe_more_info_universe_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.more_info_universe_more_info_universe_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.more_info_universe_more_info_universe_id_seq OWNER TO freecodecamp;

--
-- Name: more_info_universe_more_info_universe_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.more_info_universe_more_info_universe_id_seq OWNED BY public.more_info_universe.more_info_universe_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_is_spherical boolean,
    planet_age integer,
    planet_has_life boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    star_age integer,
    star_life_years numeric,
    star_distance integer,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: more_info_universe more_info_universe_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info_universe ALTER COLUMN more_info_universe_id SET DEFAULT nextval('public.more_info_universe_more_info_universe_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'a', 23, true, 345, 54.2);
INSERT INTO public.galaxy VALUES (2, 'b', 43, false, 7654, 34.5);
INSERT INTO public.galaxy VALUES (3, 'c', 87, true, 6383, 98.33);
INSERT INTO public.galaxy VALUES (4, 'd', 54, true, 574619, 87.45);
INSERT INTO public.galaxy VALUES (5, 'e', 56, false, 579689, 45.6);
INSERT INTO public.galaxy VALUES (6, 'f', 67, true, 8765, 67.98);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (41, 'bk', 'as', 62, 31, 12);
INSERT INTO public.moon VALUES (42, 'bl', 'fd', 87, 67, 12);
INSERT INTO public.moon VALUES (43, 'bm', 'fd', 45, 65, 12);
INSERT INTO public.moon VALUES (44, 'bn', 'as', 27, 37, 12);
INSERT INTO public.moon VALUES (45, 'bo', 'as', 39, 49, 12);
INSERT INTO public.moon VALUES (46, 'bp', 'fd', 78, 68, 12);
INSERT INTO public.moon VALUES (47, 'bq', 'as', 45, 75, 12);
INSERT INTO public.moon VALUES (48, 'br', 'fd', 46, 96, 12);
INSERT INTO public.moon VALUES (49, 'bs', 'fd', 80, 70, 12);
INSERT INTO public.moon VALUES (50, 'bt', 'as', 89, 79, 12);
INSERT INTO public.moon VALUES (31, 'ba', 'as', 345, 45, 19);
INSERT INTO public.moon VALUES (32, 'bb', 'as', 45, 87, 19);
INSERT INTO public.moon VALUES (33, 'bc', 'as', 67, 83, 19);
INSERT INTO public.moon VALUES (34, 'bd', 'as', 82, 73, 19);
INSERT INTO public.moon VALUES (35, 'be', 'ds', 901, 80, 19);
INSERT INTO public.moon VALUES (36, 'bf', 'fd', 82, 71, 19);
INSERT INTO public.moon VALUES (37, 'bg', 'fd', 20, 47, 19);
INSERT INTO public.moon VALUES (38, 'bh', 'as', 82, 53, 19);
INSERT INTO public.moon VALUES (39, 'bi', 'ds', 90, 60, 21);
INSERT INTO public.moon VALUES (40, 'bj', 'as', 36, 63, 16);


--
-- Data for Name: more_info_universe; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.more_info_universe VALUES (1, 'z', 'far');
INSERT INTO public.more_info_universe VALUES (2, 'y', 'near');
INSERT INTO public.more_info_universe VALUES (3, 'x', 'far');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (16, 'af', false, 76, false, NULL);
INSERT INTO public.planet VALUES (17, 'ag', true, 54, true, 2);
INSERT INTO public.planet VALUES (18, 'ah', false, 65, true, 2);
INSERT INTO public.planet VALUES (19, 'ai', true, 76, true, 2);
INSERT INTO public.planet VALUES (20, 'aj', true, 76, true, 2);
INSERT INTO public.planet VALUES (21, 'ak', false, 98, false, 2);
INSERT INTO public.planet VALUES (22, 'al', true, 71, true, 2);
INSERT INTO public.planet VALUES (15, 'ae', true, 32, true, 3);
INSERT INTO public.planet VALUES (11, 'aa', true, 12, false, 4);
INSERT INTO public.planet VALUES (12, 'ab', true, 23, true, 4);
INSERT INTO public.planet VALUES (13, 'ac', true, 34, false, 4);
INSERT INTO public.planet VALUES (14, 'ad', true, 34, true, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'g', 56, 34.5, 34536, 2);
INSERT INTO public.star VALUES (2, 'h', 23, 45.5, 3456, 1);
INSERT INTO public.star VALUES (3, 'i', 12, 23.5, 1234, 4);
INSERT INTO public.star VALUES (4, 'j', 98, 78.9, 9876, 3);
INSERT INTO public.star VALUES (5, 'k', 45, 65.2, 5647, 6);
INSERT INTO public.star VALUES (6, 'l', 32, 32.1, 32109, 5);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: more_info_universe_more_info_universe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.more_info_universe_more_info_universe_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: more_info_universe more_info_universe_more_info_universe_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info_universe
    ADD CONSTRAINT more_info_universe_more_info_universe_id_key UNIQUE (more_info_universe_id);


--
-- Name: more_info_universe more_info_universe_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info_universe
    ADD CONSTRAINT more_info_universe_pkey PRIMARY KEY (more_info_universe_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

