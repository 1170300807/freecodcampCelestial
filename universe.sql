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
    weight numeric(3,2) NOT NULL,
    radius numeric(3,2) NOT NULL,
    age integer NOT NULL,
    has_life boolean,
    description text
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
-- Name: homo; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.homo (
    homo_id integer NOT NULL,
    is_homo boolean,
    name character varying(20) NOT NULL,
    planet_id integer NOT NULL,
    description text
);


ALTER TABLE public.homo OWNER TO freecodecamp;

--
-- Name: homo_homo_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.homo_homo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.homo_homo_id_seq OWNER TO freecodecamp;

--
-- Name: homo_homo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.homo_homo_id_seq OWNED BY public.homo.homo_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    weight numeric(3,2) NOT NULL,
    radius numeric(3,2) NOT NULL,
    age integer NOT NULL,
    has_life boolean,
    planet_id integer,
    description text
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
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    weight numeric(3,2) NOT NULL,
    radius numeric(3,2) NOT NULL,
    age integer NOT NULL,
    has_life boolean,
    star_id integer,
    description text
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
    weight numeric(3,2) NOT NULL,
    radius numeric(3,2) NOT NULL,
    age integer NOT NULL,
    has_life boolean,
    galaxy_id integer,
    description text
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
-- Name: homo homo_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.homo ALTER COLUMN homo_id SET DEFAULT nextval('public.homo_homo_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'Li-Tian-Suo', 1.14, 5.14, 1919810, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'VAN', 1.14, 5.14, 1919810, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'MUJI', 1.14, 5.14, 1919810, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Billy', 1.14, 5.14, 1919810, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'wangye', 1.14, 5.14, 1919810, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'woxiuyuan', 1.14, 5.14, 1919810, NULL, NULL);


--
-- Data for Name: homo; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.homo VALUES (2, true, 'tiansuo', 6, 'beast-like human');
INSERT INTO public.homo VALUES (4, true, 'VAN', 7, 'Darkest Artist');
INSERT INTO public.homo VALUES (6, true, 'Billy', 2, 'Ruler of the planet');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (3, 'VAN-m1', 1.14, 5.14, 1919810, NULL, 6, NULL);
INSERT INTO public.moon VALUES (4, 'VAN-m2', 1.14, 5.14, 1919810, NULL, 6, NULL);
INSERT INTO public.moon VALUES (5, 'VAN-m3', 1.14, 5.14, 1919810, NULL, 6, NULL);
INSERT INTO public.moon VALUES (6, 'VAN-m4', 1.14, 5.14, 1919810, NULL, 6, NULL);
INSERT INTO public.moon VALUES (7, 'VAN-m5', 1.14, 5.14, 1919810, NULL, 6, NULL);
INSERT INTO public.moon VALUES (8, 'VAN-m6', 1.14, 5.14, 1919810, NULL, 6, NULL);
INSERT INTO public.moon VALUES (9, 'VAN-m7', 1.14, 5.14, 1919810, NULL, 6, NULL);
INSERT INTO public.moon VALUES (10, 'VAN-m8', 1.14, 5.14, 1919810, NULL, 6, NULL);
INSERT INTO public.moon VALUES (11, 'VAN-m9', 1.14, 5.14, 1919810, NULL, 6, NULL);
INSERT INTO public.moon VALUES (12, 'VAN-m10', 1.14, 5.14, 1919810, NULL, 6, NULL);
INSERT INTO public.moon VALUES (13, 'VAN-m11', 1.14, 5.14, 1919810, NULL, 6, NULL);
INSERT INTO public.moon VALUES (14, 'VAN-m12', 1.14, 5.14, 1919810, NULL, 6, NULL);
INSERT INTO public.moon VALUES (15, 'VAN-m13', 1.14, 5.14, 1919810, NULL, 6, NULL);
INSERT INTO public.moon VALUES (16, 'VAN-m14', 1.14, 5.14, 1919810, NULL, 6, NULL);
INSERT INTO public.moon VALUES (17, 'VAN-m15', 1.14, 5.14, 1919810, NULL, 6, NULL);
INSERT INTO public.moon VALUES (18, 'VAN-m16', 1.14, 5.14, 1919810, NULL, 6, NULL);
INSERT INTO public.moon VALUES (19, 'VAN-m17', 1.14, 5.14, 1919810, NULL, 6, NULL);
INSERT INTO public.moon VALUES (20, 'VAN-m18', 1.14, 5.14, 1919810, NULL, 6, NULL);
INSERT INTO public.moon VALUES (21, 'VAN-m19', 1.14, 5.14, 1919810, NULL, 6, NULL);
INSERT INTO public.moon VALUES (22, 'VAN-m20', 1.14, 5.14, 1919810, NULL, 6, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, 'Billy-p1', 1.14, 5.14, 1919810, NULL, 8, NULL);
INSERT INTO public.planet VALUES (3, 'Billy-p2', 1.14, 5.14, 1919810, NULL, 8, NULL);
INSERT INTO public.planet VALUES (4, 'VAN-p3', 1.14, 5.14, 1919810, NULL, 8, NULL);
INSERT INTO public.planet VALUES (5, 'VAN-p2', 1.14, 5.14, 1919810, NULL, 8, NULL);
INSERT INTO public.planet VALUES (6, 'VAN-p1', 1.14, 5.14, 1919810, NULL, 8, NULL);
INSERT INTO public.planet VALUES (7, 'VAN-p4', 1.14, 5.14, 1919810, NULL, 8, NULL);
INSERT INTO public.planet VALUES (8, 'VAN-p5', 1.14, 5.14, 1919810, NULL, 8, NULL);
INSERT INTO public.planet VALUES (9, 'VAN-p6', 1.14, 5.14, 1919810, NULL, 8, NULL);
INSERT INTO public.planet VALUES (10, 'VAN-p7', 1.14, 5.14, 1919810, NULL, 8, NULL);
INSERT INTO public.planet VALUES (11, 'VAN-p8', 1.14, 5.14, 1919810, NULL, 8, NULL);
INSERT INTO public.planet VALUES (12, 'VAN-t9', 1.14, 5.14, 1919810, NULL, 8, NULL);
INSERT INTO public.planet VALUES (13, 'VAN-t10', 1.14, 5.14, 1919810, NULL, 8, NULL);
INSERT INTO public.planet VALUES (14, 'VAN-t11', 1.14, 5.14, 1919810, NULL, 8, NULL);
INSERT INTO public.planet VALUES (15, 'VAN-t12', 1.14, 5.14, 1919810, NULL, 8, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (7, 'wangye-star', 1.14, 5.14, 1919810, NULL, 1, NULL);
INSERT INTO public.star VALUES (8, 'Li-Tian_Suo-star', 1.14, 5.14, 1919810, NULL, 1, NULL);
INSERT INTO public.star VALUES (9, 'MUJI-star', 1.14, 5.14, 1919810, NULL, 1, NULL);
INSERT INTO public.star VALUES (10, 'VAN-star', 1.14, 5.14, 1919810, NULL, 1, NULL);
INSERT INTO public.star VALUES (11, 'woxiuyuan-star', 1.14, 5.14, 1919810, NULL, 1, NULL);
INSERT INTO public.star VALUES (12, 'Billy-star', 1.14, 5.14, 1919810, NULL, 1, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: homo_homo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.homo_homo_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 15, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 12, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: homo homo_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.homo
    ADD CONSTRAINT homo_pkey PRIMARY KEY (homo_id);


--
-- Name: homo homo_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.homo
    ADD CONSTRAINT homo_planet_id_key UNIQUE (planet_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: homo homo_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.homo
    ADD CONSTRAINT homo_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

