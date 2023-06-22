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
    name character varying(30),
    diameter_in_mly numeric(4,1) NOT NULL,
    constellation character varying(30) NOT NULL,
    apparent_magnitude numeric(4,1),
    absolute_magnitude numeric(4,1)
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
    name character varying(30),
    planet_id integer NOT NULL,
    habitable boolean NOT NULL,
    rebel_bases integer
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
    name character varying(30),
    star_id integer NOT NULL,
    habitable boolean NOT NULL,
    rebel_bases integer
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
-- Name: pls; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.pls (
    pls_id integer NOT NULL,
    name character varying(30) NOT NULL,
    isthischeating integer NOT NULL
);


ALTER TABLE public.pls OWNER TO freecodecamp;

--
-- Name: pls_isthischeating_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.pls_isthischeating_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pls_isthischeating_seq OWNER TO freecodecamp;

--
-- Name: pls_isthischeating_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.pls_isthischeating_seq OWNED BY public.pls.isthischeating;


--
-- Name: pls_pls_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.pls_pls_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pls_pls_id_seq OWNER TO freecodecamp;

--
-- Name: pls_pls_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.pls_pls_id_seq OWNED BY public.pls.pls_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    galaxy_id integer NOT NULL,
    flavor_text text,
    extraneous integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_extraneous_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_extraneous_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_extraneous_seq OWNER TO freecodecamp;

--
-- Name: star_extraneous_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_extraneous_seq OWNED BY public.star.extraneous;


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
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: pls pls_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.pls ALTER COLUMN pls_id SET DEFAULT nextval('public.pls_pls_id_seq'::regclass);


--
-- Name: pls isthischeating; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.pls ALTER COLUMN isthischeating SET DEFAULT nextval('public.pls_isthischeating_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star extraneous; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN extraneous SET DEFAULT nextval('public.star_extraneous_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'andromeda', 2.5, 'andromeda', 3.4, -21.5);
INSERT INTO public.galaxy VALUES (2, 'antennae', 45.0, 'corvus', 11.2, NULL);
INSERT INTO public.galaxy VALUES (3, 'NGC 4622', 200.0, 'centaurus', 12.6, NULL);
INSERT INTO public.galaxy VALUES (4, 'Black Eye Galaxy', 17.3, 'Coma Berenices', 8.5, 9.4);
INSERT INTO public.galaxy VALUES (5, 'Messier 81', 12.0, 'Ursa Major', 6.9, NULL);
INSERT INTO public.galaxy VALUES (6, 'Butterfly Galaxies', 62.0, 'Virgo', 10.9, -13.3);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon A', 1, false, 0);
INSERT INTO public.moon VALUES (2, 'moon A', 2, false, 0);
INSERT INTO public.moon VALUES (3, 'moon A', 3, false, 0);
INSERT INTO public.moon VALUES (4, 'moon A', 4, false, 0);
INSERT INTO public.moon VALUES (5, 'moon A', 5, false, 0);
INSERT INTO public.moon VALUES (6, 'moon A', 6, false, 0);
INSERT INTO public.moon VALUES (7, 'moon A', 7, false, 0);
INSERT INTO public.moon VALUES (8, 'moon A', 8, false, 0);
INSERT INTO public.moon VALUES (9, 'moon A', 9, false, 0);
INSERT INTO public.moon VALUES (10, 'moon A', 10, false, 0);
INSERT INTO public.moon VALUES (11, 'moon A', 11, false, 0);
INSERT INTO public.moon VALUES (12, 'moon A', 12, false, 0);
INSERT INTO public.moon VALUES (13, 'moon B', 1, false, 0);
INSERT INTO public.moon VALUES (14, 'moon B', 2, false, 0);
INSERT INTO public.moon VALUES (15, 'moon B', 3, false, 0);
INSERT INTO public.moon VALUES (16, 'moon B', 4, false, 0);
INSERT INTO public.moon VALUES (17, 'moon B', 5, false, 0);
INSERT INTO public.moon VALUES (18, 'moon B', 6, false, 0);
INSERT INTO public.moon VALUES (19, 'moon B', 7, false, 0);
INSERT INTO public.moon VALUES (20, 'moon B', 8, false, 0);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planet1', 1, true, 3);
INSERT INTO public.planet VALUES (2, 'planet2', 1, true, 3);
INSERT INTO public.planet VALUES (3, 'planet3', 2, true, 3);
INSERT INTO public.planet VALUES (4, 'planet4', 2, true, 1);
INSERT INTO public.planet VALUES (5, 'planet5', 3, true, 1);
INSERT INTO public.planet VALUES (6, 'planet6', 3, true, 7);
INSERT INTO public.planet VALUES (7, 'planet7', 4, false, 0);
INSERT INTO public.planet VALUES (8, 'planet8', 4, false, 0);
INSERT INTO public.planet VALUES (9, 'planet9', 5, false, 0);
INSERT INTO public.planet VALUES (10, 'planet10', 5, false, 0);
INSERT INTO public.planet VALUES (11, 'planet11', 6, false, 0);
INSERT INTO public.planet VALUES (12, 'planet12', 6, false, 0);


--
-- Data for Name: pls; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.pls VALUES (1, '1', 1);
INSERT INTO public.pls VALUES (2, '2', 2);
INSERT INTO public.pls VALUES (3, '3', 3);
INSERT INTO public.pls VALUES (4, '4', 4);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star boy', 1, NULL, 1);
INSERT INTO public.star VALUES (2, 'star boy', 2, NULL, 2);
INSERT INTO public.star VALUES (3, 'asdf', 3, NULL, 3);
INSERT INTO public.star VALUES (4, 'star boy', 4, NULL, 4);
INSERT INTO public.star VALUES (5, 'asdf', 5, NULL, 5);
INSERT INTO public.star VALUES (6, 'fdsa', 6, NULL, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 33, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: pls_isthischeating_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.pls_isthischeating_seq', 4, true);


--
-- Name: pls_pls_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.pls_pls_id_seq', 4, true);


--
-- Name: star_extraneous_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_extraneous_seq', 6, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: pls pls_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.pls
    ADD CONSTRAINT pls_pkey PRIMARY KEY (pls_id);


--
-- Name: pls pls_pls_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.pls
    ADD CONSTRAINT pls_pls_id_key UNIQUE (pls_id);


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

