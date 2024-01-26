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
-- Name: customer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customer (
    id integer NOT NULL,
    name text NOT NULL,
    age integer NOT NULL,
    email text NOT NULL,
    mobile bigint NOT NULL,
    eid integer
);


ALTER TABLE public.customer OWNER TO postgres;

--
-- Data for Name: customer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customer (id, name, age, email, mobile, eid) FROM stdin;
110	Musta Karim	35	m_karim@gmail.com	8055089912	102
111	Lilian Jaiya	43	i_jaiye@gmail.com	8055023012	100
112	Arthur Musa	50	a_musa@gmail.com	8055024512	107
113	Philip Akonjo	41	p_akonjo@gmail.com	8055024423	100
114	Marylene	33	m_mapa@gmail.com	8050391423	120
115	Oghene Agor	50	o_agor@gmail.com	8048291423	117
116	Adams Bree	33	a_bree@gmail.com	8028991423	102
117	Okafor Mathias	33	o_mathias@gmail.com	8028991478	120
118	Samson Adeleke	65	s_adeleke@gmail.com	8022291478	117
119	Lawal Tamire	35	l_tamire@gmail.com	8022292578	107
120	James Job	35	j_job@gmail.com	8022012578	100
121	Mathew Jakande	21	m_jakande@gmail.com	8022012521	120
122	Jimila Adegboye	20	j_adegboye@gmail.com	8029012578	107
\.


--
-- Name: customer customer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

