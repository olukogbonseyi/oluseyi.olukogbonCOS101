--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1
-- Dumped by pg_dump version 16.1

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
-- Name: dataplan; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dataplan (
    id integer NOT NULL,
    data_size text NOT NULL,
    data_duration text NOT NULL,
    data_price text
);


ALTER TABLE public.dataplan OWNER TO postgres;

--
-- Data for Name: dataplan; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.dataplan (id, data_size, data_duration, data_price) FROM stdin;
1	350mb	2days	200naira
2	1.8gb	14days	500naira
3	3.9gb	30days	1000naira
4	7.5gb	30days	1500naira
5	9.2gb	30days	2000naira
6	10.8gb	30days	2500naira
7	14gb	30days	3000naira
8	18gb	30days	4000naira
9	24gb	30days	5000naira
10	29.9gb	30days	8000naira
11	50gb	30days	10000naira
\.


--
-- Name: dataplan dataplan_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dataplan
    ADD CONSTRAINT dataplan_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

