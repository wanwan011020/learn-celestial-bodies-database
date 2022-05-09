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
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    distance_from_earth numeric(10,5),
    age_in_millions_of_years integer,
    name character varying(30) NOT NULL,
    description text
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet boolean,
    planet_id integer NOT NULL,
    distance_from_earth numeric(10,5),
    age_in_millions_of_years integer,
    name character varying(30) NOT NULL,
    description text,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star boolean,
    star_id integer NOT NULL,
    distance_from_earth numeric(10,5),
    age_in_millions_of_years integer,
    name character varying(30) NOT NULL,
    description text,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: sun; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.sun (
    distance_from_earth numeric(10,5),
    age_in_millions_of_years integer,
    description text,
    name character varying(30) NOT NULL,
    sun_id integer NOT NULL
);


ALTER TABLE public.sun OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'one', 'first galaxy', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'two', 'the second', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'three', 'the third', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'four', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'five', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'six', NULL, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 1.00000, 1, 'A', NULL);
INSERT INTO public.moon VALUES (2, 1.00000, 1, 'B', NULL);
INSERT INTO public.moon VALUES (3, 1.00000, 1, 'C', NULL);
INSERT INTO public.moon VALUES (4, 1.00000, 1, 'D', NULL);
INSERT INTO public.moon VALUES (5, 1.00000, 1, 'E', NULL);
INSERT INTO public.moon VALUES (6, 1.00000, 1, 'F', NULL);
INSERT INTO public.moon VALUES (7, 1.00000, 1, 'G', NULL);
INSERT INTO public.moon VALUES (8, 1.00000, 1, 'Aa', NULL);
INSERT INTO public.moon VALUES (9, 1.00000, 1, 'Bb', NULL);
INSERT INTO public.moon VALUES (10, 1.00000, 1, 'Cc', NULL);
INSERT INTO public.moon VALUES (11, 1.00000, 1, 'Dd', NULL);
INSERT INTO public.moon VALUES (12, 1.00000, 1, 'Ee', NULL);
INSERT INTO public.moon VALUES (13, 1.00000, 1, 'Ff', NULL);
INSERT INTO public.moon VALUES (14, 1.00000, 1, 'Gg', NULL);
INSERT INTO public.moon VALUES (15, 1.00000, 1, 'Aaa', NULL);
INSERT INTO public.moon VALUES (16, 1.00000, 1, 'Bbb', NULL);
INSERT INTO public.moon VALUES (17, 1.00000, 1, 'Ccc', NULL);
INSERT INTO public.moon VALUES (18, 1.00000, 1, 'Ddd', NULL);
INSERT INTO public.moon VALUES (19, 1.00000, 1, 'Eee', NULL);
INSERT INTO public.moon VALUES (20, 1.00000, 1, 'Fff', NULL);
INSERT INTO public.moon VALUES (21, 1.00000, 1, 'Ggg', NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (true, 1, 1.00000, 1, 'planet one', NULL, NULL);
INSERT INTO public.planet VALUES (true, 2, 1.00000, 1, 'planet two', NULL, NULL);
INSERT INTO public.planet VALUES (true, 3, 1.00000, 1, 'planet three', NULL, NULL);
INSERT INTO public.planet VALUES (true, 4, 1.00000, 1, 'planet four', NULL, NULL);
INSERT INTO public.planet VALUES (true, 5, 1.00000, 1, 'planet five', NULL, NULL);
INSERT INTO public.planet VALUES (true, 6, 1.00000, 1, 'planet six', NULL, NULL);
INSERT INTO public.planet VALUES (true, 7, 1.00000, 1, 'planet seven', NULL, NULL);
INSERT INTO public.planet VALUES (true, 8, 1.00000, 1, 'planet eight', NULL, NULL);
INSERT INTO public.planet VALUES (true, 9, 1.00000, 1, 'planet nine', NULL, NULL);
INSERT INTO public.planet VALUES (true, 10, 1.00000, 1, 'planet ten', NULL, NULL);
INSERT INTO public.planet VALUES (true, 11, 1.00000, 1, 'planet elf', NULL, NULL);
INSERT INTO public.planet VALUES (true, 12, 1.00000, 1, 'planet twelve', NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (true, 1, 1.00000, 1, 'star one', NULL, NULL);
INSERT INTO public.star VALUES (true, 2, 1.00000, 1, 'star two', NULL, NULL);
INSERT INTO public.star VALUES (true, 3, 1.00000, 1, 'star three', NULL, NULL);
INSERT INTO public.star VALUES (true, 4, 1.00000, 1, 'star four', NULL, NULL);
INSERT INTO public.star VALUES (true, 5, 1.00000, 1, 'star five', NULL, NULL);
INSERT INTO public.star VALUES (true, 6, 1.00000, 1, 'star six', NULL, NULL);


--
-- Data for Name: sun; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.sun VALUES (1.00000, 1, 'blabla', 'a', 1);
INSERT INTO public.sun VALUES (1.00000, 1, 'blabla', 'b', 2);
INSERT INTO public.sun VALUES (1.00000, 1, 'blabla', 'c', 3);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_galaxy_id_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key1 UNIQUE (galaxy_id);


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
-- Name: moon moon_moon_id_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key1 UNIQUE (moon_id);


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
-- Name: planet planet_planet_id_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key1 UNIQUE (planet_id);


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
-- Name: sun sun_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun
    ADD CONSTRAINT sun_pkey PRIMARY KEY (sun_id);


--
-- Name: sun sun_sun_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun
    ADD CONSTRAINT sun_sun_id_key UNIQUE (sun_id);


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

