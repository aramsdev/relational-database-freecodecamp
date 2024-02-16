--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: black_holes; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.black_holes (
    blackhole_id integer NOT NULL,
    mass numeric,
    name character varying(255),
    galaxy_id integer NOT NULL,
    size numeric
);


ALTER TABLE public.black_holes OWNER TO freecodecamp;

--
-- Name: black_holes_blacholeid_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.black_holes_blacholeid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.black_holes_blacholeid_seq OWNER TO freecodecamp;

--
-- Name: black_holes_blacholeid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.black_holes_blacholeid_seq OWNED BY public.black_holes.blackhole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(255),
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    confirmed_solar_systems integer,
    has_black_holes boolean NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxyid_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxyid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxyid_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxyid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxyid_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(255),
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    planet_id integer NOT NULL,
    distance_from_planet integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moonid_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moonid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moonid_seq OWNER TO freecodecamp;

--
-- Name: moon_moonid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moonid_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(255),
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    moons boolean,
    star_id integer NOT NULL,
    num_moons integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planetid_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planetid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planetid_seq OWNER TO freecodecamp;

--
-- Name: planet_planetid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planetid_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(255),
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    galaxy_id integer NOT NULL,
    temperature integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_starid_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_starid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_starid_seq OWNER TO freecodecamp;

--
-- Name: star_starid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_starid_seq OWNED BY public.star.star_id;


--
-- Name: black_holes blackhole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_holes ALTER COLUMN blackhole_id SET DEFAULT nextval('public.black_holes_blacholeid_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxyid_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moonid_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planetid_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_starid_seq'::regclass);


--
-- Data for Name: black_holes; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_holes VALUES (1, 140, 'Andromeda A', 1, 40);
INSERT INTO public.black_holes VALUES (2, 200, 'Whirpool Prime', 2, 50);
INSERT INTO public.black_holes VALUES (3, 4.3, 'Sagittarius A', 4, 24);
INSERT INTO public.black_holes VALUES (4, 300, 'Sombrero Major', 6, 60);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda(M31)', 10000, 2.537, 1000, true);
INSERT INTO public.galaxy VALUES (2, 'Whirpool Galaxy(M51)', 23000, 31, 500, true);
INSERT INTO public.galaxy VALUES (3, 'Triangulum Galaxy(M33)', 8000, 3, 300, false);
INSERT INTO public.galaxy VALUES (4, 'Milky Way', 13200, 0, 1, true);
INSERT INTO public.galaxy VALUES (5, 'Large Magellanic Cloud(LMC)', 12000, 163000, 200, false);
INSERT INTO public.galaxy VALUES (6, 'Sombrero Galaxy (M104)', 10500, 29.3, 400, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 4000, 0.384, 1, 384400);
INSERT INTO public.moon VALUES (2, 'Phobos', 4500, 0.009, 2, 9378);
INSERT INTO public.moon VALUES (3, 'Deimos', 4200, 0.023, 2, 23460);
INSERT INTO public.moon VALUES (4, 'Titan', 3000, 1.2, 3, 1200000);
INSERT INTO public.moon VALUES (5, 'Europa', 3500, 0.628, 4, 628710);
INSERT INTO public.moon VALUES (6, 'Ganymede', 3800, 1.07, 4, 1070412);
INSERT INTO public.moon VALUES (7, 'Callisto', 3600, 1.882, 4, 1882123);
INSERT INTO public.moon VALUES (8, 'Io', 3200, 0.421, 4, 421700);
INSERT INTO public.moon VALUES (9, 'Triton', 3400, 0.354, 5, 354759);
INSERT INTO public.moon VALUES (10, 'Charon', 3700, 0.038, 6, 379239);
INSERT INTO public.moon VALUES (11, 'Enceladus', 3100, 0.238, 7, 238042);
INSERT INTO public.moon VALUES (12, 'Mimas', 2900, 0.185, 7, 185539);
INSERT INTO public.moon VALUES (13, 'Rhea', 3300, 0.527, 7, 527068);
INSERT INTO public.moon VALUES (14, 'Dione', 3200, 0.377, 7, 377396);
INSERT INTO public.moon VALUES (15, 'Iapetus', 3500, 3.56, 8, 3560820);
INSERT INTO public.moon VALUES (16, 'Miranda', 3100, 0.129, 9, 129390);
INSERT INTO public.moon VALUES (17, 'Ariel', 3400, 0.191, 10, 191020);
INSERT INTO public.moon VALUES (18, 'Umbriel', 3200, 0.266, 11, 266300);
INSERT INTO public.moon VALUES (19, 'Titania', 3600, 0.436, 12, 436300);
INSERT INTO public.moon VALUES (20, 'Oberon', 3700, 0.584, 13, 584000);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Andromeda Alpha I', 4500, 2.5, true, 1, 2);
INSERT INTO public.planet VALUES (2, 'Whirpool Alpha I', 10000, 31, true, 2, 3);
INSERT INTO public.planet VALUES (3, 'Triangulum Alpha I', 3500, 3, true, 3, 1);
INSERT INTO public.planet VALUES (4, 'Earth', 4600, 0, true, 4, 1);
INSERT INTO public.planet VALUES (5, 'LMC Alpha I', 7500, 163, false, 5, 0);
INSERT INTO public.planet VALUES (6, 'Sombrero Alpha I', 6500, 29.3, true, 6, 2);
INSERT INTO public.planet VALUES (7, 'Aurora', 300, 12.5, true, 1, 2);
INSERT INTO public.planet VALUES (8, 'Terra Nova', 600, 25.8, false, 2, 0);
INSERT INTO public.planet VALUES (9, 'Veridian III', 450, 40.2, true, 3, 1);
INSERT INTO public.planet VALUES (10, 'New Eden', 800, 10.3, false, 4, 0);
INSERT INTO public.planet VALUES (11, 'Gaia', 200, 5.6, true, 5, 3);
INSERT INTO public.planet VALUES (12, 'Nova Prime', 700, 30.9, false, 6, 0);
INSERT INTO public.planet VALUES (13, 'Eden Prime', 400, 20.7, true, 1, 2);
INSERT INTO public.planet VALUES (14, 'Arboria', 550, 15.4, false, 2, 0);
INSERT INTO public.planet VALUES (15, 'Tranquility', 350, 18.2, true, 3, 1);
INSERT INTO public.planet VALUES (16, 'Serenity', 900, 50.6, false, 4, 0);
INSERT INTO public.planet VALUES (17, 'Elysium', 250, 8.9, true, 5, 3);
INSERT INTO public.planet VALUES (18, 'Pandora', 600, 22.3, false, 6, 0);
INSERT INTO public.planet VALUES (19, 'Nirvana', 500, 11.1, true, 1, 2);
INSERT INTO public.planet VALUES (20, 'Atlantis', 750, 35.5, false, 2, 0);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Andromeda Alpha', 5000, 2.5, 1, 7000);
INSERT INTO public.star VALUES (2, 'Whirpool Alpha', 12000, 31, 2, 5000);
INSERT INTO public.star VALUES (3, 'Triangulum Alpha', 4000, 3, 3, 6500);
INSERT INTO public.star VALUES (4, 'Sun', 4600, 0, 4, 5500);
INSERT INTO public.star VALUES (5, 'LMC Alpha', 8000, 163, 5, 4500);
INSERT INTO public.star VALUES (6, 'Sombrero Alpha', 7000, 29.3, 6, 6000);


--
-- Name: black_holes_blacholeid_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.black_holes_blacholeid_seq', 4, true);


--
-- Name: galaxy_galaxyid_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxyid_seq', 6, true);


--
-- Name: moon_moonid_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moonid_seq', 20, true);


--
-- Name: planet_planetid_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planetid_seq', 20, true);


--
-- Name: star_starid_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_starid_seq', 6, true);


--
-- Name: black_holes black_holes_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_holes
    ADD CONSTRAINT black_holes_pkey PRIMARY KEY (blackhole_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxyid; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxyid UNIQUE (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moonid; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moonid UNIQUE (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planetid; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planetid UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star starid; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT starid UNIQUE (star_id);


--
-- Name: black_holes uniqueid; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_holes
    ADD CONSTRAINT uniqueid UNIQUE (blackhole_id);


--
-- Name: black_holes black_holes_galaxyid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_holes
    ADD CONSTRAINT black_holes_galaxyid_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon moon_planetid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planetid_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_starid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_starid_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxyid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxyid_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

