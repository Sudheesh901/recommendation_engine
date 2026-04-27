--
-- PostgreSQL database dump
--

\restrict SUikXJE6fjvrYsSgYEg72b1Zmf9lEBC9W5YhPizzviwlNDYn6C3DfIqz3a5DibM

-- Dumped from database version 18.1
-- Dumped by pg_dump version 18.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- Name: content; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.content (
    id integer NOT NULL,
    title character varying,
    type character varying,
    category character varying,
    difficulty character varying,
    tags character varying
);


ALTER TABLE public.content OWNER TO postgres;

--
-- Name: content_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.content_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.content_id_seq OWNER TO postgres;

--
-- Name: content_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.content_id_seq OWNED BY public.content.id;


--
-- Name: interactions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.interactions (
    id integer NOT NULL,
    user_id integer,
    content_id integer,
    event_type character varying,
    "timestamp" timestamp without time zone
);


ALTER TABLE public.interactions OWNER TO postgres;

--
-- Name: interactions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.interactions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.interactions_id_seq OWNER TO postgres;

--
-- Name: interactions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.interactions_id_seq OWNED BY public.interactions.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    goal character varying,
    level character varying,
    created_at timestamp without time zone
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: content id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.content ALTER COLUMN id SET DEFAULT nextval('public.content_id_seq'::regclass);


--
-- Name: interactions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.interactions ALTER COLUMN id SET DEFAULT nextval('public.interactions_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: content; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.content (id, title, type, category, difficulty, tags) FROM stdin;
1	Content 0	article	Environment	Advanced	History
2	Content 1	course	Polity	Advanced	Environment
3	Content 2	article	History	Beginner	Economy
4	Content 3	course	Economy	Intermediate	Environment
5	Content 4	course	Geography	Advanced	Economy
6	Content 5	article	Geography	Intermediate	Economy
7	Content 6	course	Environment	Advanced	History
8	Content 7	course	History	Advanced	Environment
9	Content 8	course	Economy	Advanced	Environment
10	Content 9	article	History	Advanced	History
11	Content 10	article	Polity	Advanced	Geography
12	Content 11	course	Polity	Intermediate	Environment
13	Content 12	article	Polity	Advanced	Environment
14	Content 13	course	Geography	Advanced	Geography
15	Content 14	course	Geography	Beginner	Economy
16	Content 15	article	Geography	Beginner	Economy
17	Content 16	article	Polity	Beginner	Economy
18	Content 17	course	Economy	Advanced	History
19	Content 18	article	History	Intermediate	History
20	Content 19	article	Environment	Beginner	Polity
21	Content 20	article	History	Beginner	Geography
22	Content 21	article	Geography	Intermediate	Polity
23	Content 22	course	Polity	Advanced	Economy
24	Content 23	article	Polity	Advanced	History
25	Content 24	course	Polity	Advanced	Environment
26	Content 25	course	Environment	Intermediate	Geography
27	Content 26	course	Geography	Beginner	History
28	Content 27	course	History	Intermediate	Economy
29	Content 28	article	Geography	Advanced	Economy
30	Content 29	article	Geography	Beginner	Geography
31	Content 30	course	Polity	Advanced	Economy
32	Content 31	article	Economy	Advanced	Geography
33	Content 32	course	Economy	Intermediate	Economy
34	Content 33	course	Environment	Intermediate	History
35	Content 34	course	Geography	Intermediate	Polity
36	Content 35	article	History	Advanced	Environment
37	Content 36	course	Environment	Advanced	History
38	Content 37	article	Environment	Intermediate	Geography
39	Content 38	article	Geography	Intermediate	Geography
40	Content 39	course	Environment	Intermediate	Polity
41	Content 40	article	History	Advanced	Polity
42	Content 41	article	History	Intermediate	History
43	Content 42	course	Polity	Advanced	Polity
44	Content 43	article	Polity	Advanced	History
45	Content 44	article	Geography	Intermediate	History
46	Content 45	article	Economy	Advanced	History
47	Content 46	article	Economy	Advanced	Environment
48	Content 47	article	Polity	Beginner	Economy
49	Content 48	article	Environment	Beginner	Polity
50	Content 49	article	Environment	Advanced	History
51	Content 50	article	Polity	Intermediate	History
52	Content 51	article	History	Intermediate	Environment
53	Content 52	article	Polity	Advanced	Economy
54	Content 53	article	Polity	Intermediate	Polity
55	Content 54	article	Geography	Beginner	Environment
56	Content 55	course	Polity	Intermediate	Geography
57	Content 56	article	Environment	Advanced	Geography
58	Content 57	article	Environment	Advanced	Economy
59	Content 58	course	Economy	Advanced	Economy
60	Content 59	article	Environment	Advanced	Geography
61	Content 60	course	Polity	Intermediate	Geography
62	Content 61	article	Geography	Intermediate	History
63	Content 62	course	Environment	Beginner	History
64	Content 63	article	Environment	Intermediate	History
65	Content 64	article	Polity	Intermediate	History
66	Content 65	course	Polity	Advanced	Polity
67	Content 66	course	Polity	Intermediate	Polity
68	Content 67	course	Geography	Beginner	Polity
69	Content 68	course	Polity	Advanced	Economy
70	Content 69	article	History	Advanced	History
71	Content 70	course	Environment	Intermediate	Environment
72	Content 71	article	History	Intermediate	Polity
73	Content 72	course	Geography	Beginner	Environment
74	Content 73	article	History	Beginner	Economy
75	Content 74	article	Economy	Intermediate	Economy
76	Content 75	course	History	Beginner	Environment
77	Content 76	course	Economy	Beginner	Economy
78	Content 77	course	Environment	Beginner	Economy
79	Content 78	article	History	Beginner	Environment
80	Content 79	article	Environment	Intermediate	Economy
81	Content 80	article	Polity	Intermediate	History
82	Content 81	article	Geography	Intermediate	Polity
83	Content 82	article	Environment	Advanced	Geography
84	Content 83	course	Environment	Advanced	Environment
85	Content 84	course	Environment	Intermediate	Environment
86	Content 85	course	Environment	Intermediate	Environment
87	Content 86	course	History	Intermediate	Polity
88	Content 87	article	Environment	Advanced	Economy
89	Content 88	course	History	Advanced	Economy
90	Content 89	article	Economy	Intermediate	Environment
91	Content 90	article	Economy	Beginner	Environment
92	Content 91	article	Polity	Advanced	Polity
93	Content 92	course	History	Intermediate	Polity
94	Content 93	article	Economy	Intermediate	Geography
95	Content 94	course	Economy	Intermediate	Environment
96	Content 95	article	Environment	Advanced	Geography
97	Content 96	article	Economy	Intermediate	Economy
98	Content 97	article	Geography	Advanced	Geography
99	Content 98	article	History	Intermediate	Geography
100	Content 99	course	Environment	Advanced	Polity
101	Content 100	course	Polity	Beginner	History
102	Content 101	course	Environment	Beginner	Economy
103	Content 102	course	Polity	Advanced	Environment
104	Content 103	course	Geography	Intermediate	History
105	Content 104	article	Polity	Intermediate	Environment
106	Content 105	article	Polity	Intermediate	Geography
107	Content 106	article	Polity	Intermediate	History
108	Content 107	course	History	Intermediate	Polity
109	Content 108	course	Geography	Advanced	Economy
110	Content 109	article	Environment	Beginner	Environment
111	Content 110	course	History	Intermediate	History
112	Content 111	article	Polity	Advanced	Polity
113	Content 112	course	Environment	Intermediate	History
114	Content 113	article	History	Advanced	Economy
115	Content 114	article	Environment	Advanced	Economy
116	Content 115	article	History	Beginner	Environment
117	Content 116	article	Economy	Intermediate	History
118	Content 117	article	Environment	Intermediate	Geography
119	Content 118	course	Economy	Intermediate	History
120	Content 119	article	Environment	Intermediate	Polity
121	Content 120	course	Environment	Beginner	Geography
122	Content 121	article	Polity	Intermediate	History
123	Content 122	article	Environment	Intermediate	Environment
124	Content 123	course	Economy	Intermediate	History
125	Content 124	article	Polity	Intermediate	Environment
126	Content 125	course	Economy	Advanced	Economy
127	Content 126	article	Economy	Intermediate	Geography
128	Content 127	course	Environment	Intermediate	Polity
129	Content 128	article	Polity	Beginner	Economy
130	Content 129	course	Geography	Intermediate	Geography
131	Content 130	course	Polity	Advanced	Environment
132	Content 131	course	Economy	Beginner	Geography
133	Content 132	article	History	Advanced	Environment
134	Content 133	course	History	Intermediate	Economy
135	Content 134	article	Economy	Intermediate	Geography
136	Content 135	course	Economy	Beginner	Polity
137	Content 136	course	Geography	Beginner	Polity
138	Content 137	course	Polity	Advanced	Geography
139	Content 138	article	History	Advanced	Environment
140	Content 139	article	History	Beginner	Economy
141	Content 140	article	Economy	Beginner	History
142	Content 141	course	Geography	Beginner	Environment
143	Content 142	course	Economy	Beginner	Polity
144	Content 143	article	Polity	Advanced	Economy
145	Content 144	article	Geography	Intermediate	History
146	Content 145	article	History	Advanced	Environment
147	Content 146	article	Environment	Beginner	History
148	Content 147	course	History	Advanced	History
149	Content 148	article	History	Beginner	Polity
150	Content 149	article	Economy	Advanced	History
151	Content 150	course	Environment	Beginner	History
152	Content 151	article	History	Advanced	Economy
153	Content 152	article	Polity	Advanced	Environment
154	Content 153	course	History	Beginner	Polity
155	Content 154	course	Economy	Beginner	Geography
156	Content 155	course	Polity	Advanced	Polity
157	Content 156	course	History	Advanced	Economy
158	Content 157	course	Geography	Intermediate	Economy
159	Content 158	course	Geography	Intermediate	Polity
160	Content 159	article	History	Intermediate	Economy
161	Content 160	course	Economy	Advanced	Economy
162	Content 161	course	Polity	Advanced	Environment
163	Content 162	course	Environment	Intermediate	History
164	Content 163	course	Geography	Intermediate	History
165	Content 164	course	Economy	Advanced	Environment
166	Content 165	article	Environment	Advanced	Environment
167	Content 166	article	Economy	Advanced	Environment
168	Content 167	course	Environment	Beginner	Geography
169	Content 168	article	Polity	Intermediate	Geography
170	Content 169	course	Environment	Beginner	History
171	Content 170	article	Geography	Intermediate	Geography
172	Content 171	course	Geography	Intermediate	Polity
173	Content 172	article	History	Beginner	Economy
174	Content 173	course	Geography	Advanced	History
175	Content 174	course	Geography	Advanced	History
176	Content 175	course	Geography	Advanced	Polity
177	Content 176	article	Polity	Advanced	Geography
178	Content 177	course	History	Beginner	Geography
179	Content 178	article	Geography	Intermediate	Polity
180	Content 179	article	History	Beginner	Economy
181	Content 180	article	History	Advanced	Environment
182	Content 181	article	History	Beginner	Geography
183	Content 182	course	History	Intermediate	Economy
184	Content 183	course	Geography	Beginner	Economy
185	Content 184	article	Geography	Advanced	Economy
186	Content 185	article	Polity	Advanced	Polity
187	Content 186	course	Economy	Advanced	History
188	Content 187	article	Environment	Advanced	Environment
189	Content 188	article	Geography	Advanced	Polity
190	Content 189	course	History	Intermediate	Environment
191	Content 190	article	Economy	Intermediate	Economy
192	Content 191	course	Environment	Advanced	Geography
193	Content 192	article	Environment	Advanced	Polity
194	Content 193	article	History	Intermediate	History
195	Content 194	course	Geography	Intermediate	History
196	Content 195	course	Polity	Beginner	Economy
197	Content 196	article	Environment	Intermediate	Economy
198	Content 197	course	Polity	Intermediate	Environment
199	Content 198	article	Geography	Beginner	Geography
200	Content 199	article	History	Intermediate	Geography
201	Content 200	article	Geography	Beginner	Economy
202	Content 201	article	Environment	Beginner	Polity
203	Content 202	course	Environment	Intermediate	History
204	Content 203	course	Economy	Intermediate	Economy
205	Content 204	article	Polity	Advanced	Economy
206	Content 205	course	Geography	Intermediate	Polity
207	Content 206	course	Geography	Intermediate	Economy
208	Content 207	course	Geography	Beginner	Geography
209	Content 208	article	History	Intermediate	Polity
210	Content 209	article	Geography	Beginner	Economy
211	Content 210	article	Geography	Beginner	Environment
212	Content 211	article	Polity	Advanced	History
213	Content 212	course	History	Beginner	Polity
214	Content 213	article	Environment	Beginner	Geography
215	Content 214	article	Polity	Intermediate	Geography
216	Content 215	course	Economy	Beginner	Economy
217	Content 216	course	Geography	Advanced	History
218	Content 217	course	Economy	Advanced	History
219	Content 218	course	Polity	Intermediate	Polity
220	Content 219	course	Geography	Beginner	Environment
221	Content 220	article	Polity	Beginner	Polity
222	Content 221	article	Polity	Advanced	Polity
223	Content 222	article	Economy	Beginner	History
224	Content 223	course	Economy	Beginner	History
225	Content 224	course	Economy	Beginner	History
226	Content 225	article	Geography	Intermediate	Economy
227	Content 226	course	Economy	Intermediate	Geography
228	Content 227	article	Polity	Intermediate	Polity
229	Content 228	article	History	Beginner	Environment
230	Content 229	course	History	Intermediate	Polity
231	Content 230	course	Environment	Advanced	History
232	Content 231	article	Geography	Beginner	Economy
233	Content 232	article	Polity	Beginner	Environment
234	Content 233	article	Polity	Intermediate	Polity
235	Content 234	course	Economy	Intermediate	Economy
236	Content 235	course	Environment	Intermediate	Polity
237	Content 236	article	Polity	Beginner	History
238	Content 237	course	Economy	Intermediate	Polity
239	Content 238	article	Polity	Beginner	Geography
240	Content 239	article	History	Advanced	Environment
241	Content 240	course	Economy	Intermediate	Geography
242	Content 241	course	Environment	Beginner	Environment
243	Content 242	article	Economy	Beginner	History
244	Content 243	article	Polity	Intermediate	Polity
245	Content 244	course	Geography	Intermediate	Economy
246	Content 245	article	Geography	Advanced	Geography
247	Content 246	course	Geography	Beginner	Environment
248	Content 247	article	Geography	Beginner	Environment
249	Content 248	article	History	Intermediate	Economy
250	Content 249	article	Polity	Beginner	Environment
251	Content 250	article	Polity	Intermediate	Economy
252	Content 251	article	Economy	Beginner	Polity
253	Content 252	course	History	Intermediate	Polity
254	Content 253	article	Polity	Advanced	Economy
255	Content 254	course	Environment	Advanced	Geography
256	Content 255	course	History	Intermediate	Economy
257	Content 256	article	Geography	Intermediate	History
258	Content 257	article	Environment	Advanced	Geography
259	Content 258	article	Economy	Advanced	Environment
260	Content 259	course	Polity	Intermediate	History
261	Content 260	article	Environment	Advanced	Polity
262	Content 261	article	Geography	Advanced	Polity
263	Content 262	article	Polity	Advanced	Environment
264	Content 263	course	Polity	Beginner	Environment
265	Content 264	article	Environment	Beginner	Geography
266	Content 265	course	Geography	Advanced	Geography
267	Content 266	course	Economy	Intermediate	Polity
268	Content 267	article	History	Beginner	Environment
269	Content 268	article	Economy	Intermediate	Economy
270	Content 269	course	History	Intermediate	Polity
271	Content 270	article	Environment	Beginner	Geography
272	Content 271	article	Geography	Intermediate	Geography
273	Content 272	article	Polity	Advanced	Geography
274	Content 273	course	Geography	Beginner	History
275	Content 274	course	Geography	Beginner	Polity
276	Content 275	course	Polity	Advanced	Polity
277	Content 276	course	Economy	Beginner	Polity
278	Content 277	course	Geography	Beginner	Environment
279	Content 278	course	Geography	Beginner	Geography
280	Content 279	course	Environment	Advanced	Geography
281	Content 280	article	Polity	Beginner	History
282	Content 281	course	Polity	Beginner	Geography
283	Content 282	course	Environment	Advanced	Geography
284	Content 283	article	Geography	Intermediate	Polity
285	Content 284	course	Environment	Beginner	Polity
286	Content 285	course	History	Intermediate	Polity
287	Content 286	course	Polity	Intermediate	History
288	Content 287	article	Environment	Intermediate	Economy
289	Content 288	course	Geography	Advanced	Economy
290	Content 289	article	Polity	Beginner	Geography
291	Content 290	article	Economy	Beginner	Economy
292	Content 291	article	Geography	Intermediate	Geography
293	Content 292	course	Geography	Beginner	History
294	Content 293	course	Polity	Advanced	History
295	Content 294	article	Economy	Advanced	Polity
296	Content 295	course	History	Beginner	Geography
297	Content 296	article	Polity	Advanced	Polity
298	Content 297	article	Polity	Advanced	Economy
299	Content 298	article	Environment	Intermediate	History
300	Content 299	course	Environment	Advanced	Geography
301	Content 300	article	History	Beginner	Polity
302	Content 301	article	Geography	Intermediate	Geography
303	Content 302	article	Polity	Intermediate	Geography
304	Content 303	course	Economy	Advanced	Economy
305	Content 304	course	Geography	Beginner	Polity
306	Content 305	course	History	Beginner	History
307	Content 306	article	Geography	Beginner	Economy
308	Content 307	course	History	Beginner	History
309	Content 308	course	History	Intermediate	Environment
310	Content 309	course	Economy	Advanced	Economy
311	Content 310	article	Economy	Beginner	History
312	Content 311	article	Geography	Beginner	Geography
313	Content 312	article	Environment	Beginner	History
314	Content 313	article	Environment	Intermediate	History
315	Content 314	article	History	Intermediate	Polity
316	Content 315	course	Environment	Beginner	Geography
317	Content 316	course	Economy	Beginner	Geography
318	Content 317	course	Economy	Intermediate	Environment
319	Content 318	article	History	Beginner	Polity
320	Content 319	article	Geography	Intermediate	Geography
321	Content 320	article	Polity	Advanced	Geography
322	Content 321	course	Environment	Intermediate	Economy
323	Content 322	course	Polity	Intermediate	Polity
324	Content 323	article	Geography	Intermediate	Economy
325	Content 324	course	Polity	Intermediate	Polity
326	Content 325	article	Geography	Advanced	History
327	Content 326	article	History	Intermediate	History
328	Content 327	article	Economy	Advanced	Economy
329	Content 328	article	History	Beginner	History
330	Content 329	article	History	Advanced	Economy
331	Content 330	course	Geography	Intermediate	Economy
332	Content 331	course	Environment	Advanced	History
333	Content 332	article	History	Advanced	Geography
334	Content 333	article	History	Beginner	History
335	Content 334	course	Polity	Advanced	History
336	Content 335	article	Geography	Intermediate	Geography
337	Content 336	course	Economy	Advanced	Environment
338	Content 337	course	History	Advanced	Geography
339	Content 338	course	Environment	Intermediate	Geography
340	Content 339	course	History	Advanced	Economy
341	Content 340	article	Polity	Beginner	Geography
342	Content 341	course	Polity	Beginner	History
343	Content 342	article	Economy	Intermediate	Economy
344	Content 343	article	Geography	Advanced	Economy
345	Content 344	article	Geography	Advanced	Environment
346	Content 345	course	Polity	Beginner	Polity
347	Content 346	course	Environment	Beginner	Polity
348	Content 347	course	Economy	Beginner	History
349	Content 348	course	Economy	Intermediate	Polity
350	Content 349	article	Environment	Intermediate	Polity
351	Content 350	course	Environment	Beginner	Economy
352	Content 351	article	Economy	Beginner	Environment
353	Content 352	article	Environment	Intermediate	Polity
354	Content 353	article	Economy	Beginner	Economy
355	Content 354	article	Polity	Advanced	Environment
356	Content 355	course	History	Intermediate	Environment
357	Content 356	course	Geography	Beginner	History
358	Content 357	article	Environment	Advanced	Geography
359	Content 358	article	Geography	Beginner	Environment
360	Content 359	article	Environment	Intermediate	Economy
361	Content 360	course	Economy	Advanced	Environment
362	Content 361	course	History	Intermediate	Economy
363	Content 362	article	Economy	Advanced	Geography
364	Content 363	article	Environment	Beginner	Geography
365	Content 364	article	Polity	Advanced	Environment
366	Content 365	article	Geography	Intermediate	Environment
367	Content 366	article	History	Advanced	Environment
368	Content 367	article	Geography	Beginner	Economy
369	Content 368	course	Polity	Advanced	Polity
370	Content 369	course	Polity	Beginner	Polity
371	Content 370	article	Economy	Beginner	Economy
372	Content 371	article	History	Intermediate	Economy
373	Content 372	course	Environment	Intermediate	Economy
374	Content 373	course	History	Advanced	Environment
375	Content 374	course	Polity	Advanced	Economy
376	Content 375	article	Polity	Beginner	Polity
377	Content 376	article	Geography	Intermediate	History
378	Content 377	course	Geography	Beginner	Geography
379	Content 378	article	Environment	Advanced	Economy
380	Content 379	course	Economy	Advanced	Polity
381	Content 380	article	Polity	Beginner	History
382	Content 381	article	Environment	Advanced	Economy
383	Content 382	course	Polity	Advanced	Polity
384	Content 383	course	Polity	Beginner	Economy
385	Content 384	article	Economy	Beginner	Environment
386	Content 385	article	History	Advanced	Polity
387	Content 386	article	Environment	Beginner	Economy
388	Content 387	article	Economy	Beginner	Geography
389	Content 388	article	Polity	Intermediate	Polity
390	Content 389	course	Geography	Beginner	Environment
391	Content 390	article	Economy	Intermediate	Economy
392	Content 391	article	Polity	Advanced	Polity
393	Content 392	course	Environment	Intermediate	Economy
394	Content 393	course	Economy	Beginner	Polity
395	Content 394	course	History	Beginner	Economy
396	Content 395	course	Polity	Beginner	History
397	Content 396	course	Economy	Beginner	History
398	Content 397	course	Polity	Beginner	Environment
399	Content 398	course	Economy	Intermediate	Environment
400	Content 399	course	History	Intermediate	History
401	Content 400	article	Geography	Intermediate	Geography
402	Content 401	course	Geography	Beginner	Environment
403	Content 402	course	Geography	Advanced	Polity
404	Content 403	course	Economy	Intermediate	Economy
405	Content 404	course	Polity	Beginner	Polity
406	Content 405	article	Geography	Advanced	Geography
407	Content 406	article	Environment	Beginner	Polity
408	Content 407	article	Geography	Intermediate	Environment
409	Content 408	article	History	Beginner	Polity
410	Content 409	course	Economy	Beginner	Polity
411	Content 410	course	History	Advanced	Polity
412	Content 411	article	History	Advanced	Environment
413	Content 412	course	Geography	Advanced	History
414	Content 413	course	Geography	Advanced	Polity
415	Content 414	course	History	Beginner	History
416	Content 415	course	Geography	Intermediate	Polity
417	Content 416	course	Economy	Advanced	Environment
418	Content 417	course	History	Intermediate	Polity
419	Content 418	article	Economy	Beginner	History
420	Content 419	article	Economy	Advanced	Economy
421	Content 420	article	Geography	Intermediate	Geography
422	Content 421	course	Environment	Advanced	Economy
423	Content 422	course	History	Intermediate	Environment
424	Content 423	article	Economy	Intermediate	Environment
425	Content 424	course	Geography	Advanced	Polity
426	Content 425	course	Economy	Beginner	Environment
427	Content 426	article	History	Intermediate	History
428	Content 427	course	Economy	Intermediate	Environment
429	Content 428	course	Geography	Intermediate	Economy
430	Content 429	course	Environment	Beginner	Geography
431	Content 430	article	Polity	Beginner	Economy
432	Content 431	course	Environment	Advanced	Economy
433	Content 432	course	Environment	Intermediate	History
434	Content 433	article	Polity	Beginner	Economy
435	Content 434	course	Geography	Beginner	Geography
436	Content 435	article	Economy	Advanced	Economy
437	Content 436	article	History	Intermediate	History
438	Content 437	course	Polity	Intermediate	Geography
439	Content 438	article	Environment	Advanced	Environment
440	Content 439	article	Economy	Beginner	Environment
441	Content 440	course	Geography	Beginner	Polity
442	Content 441	course	Geography	Advanced	Polity
443	Content 442	article	History	Beginner	Environment
444	Content 443	article	Polity	Beginner	Environment
445	Content 444	course	Environment	Beginner	History
446	Content 445	course	Economy	Beginner	Environment
447	Content 446	course	Polity	Intermediate	Environment
448	Content 447	course	Environment	Advanced	History
449	Content 448	course	Environment	Intermediate	Geography
450	Content 449	course	Polity	Intermediate	Geography
451	Content 450	course	Environment	Advanced	Economy
452	Content 451	course	History	Intermediate	Economy
453	Content 452	article	History	Advanced	History
454	Content 453	article	Polity	Beginner	Economy
455	Content 454	article	Geography	Advanced	Environment
456	Content 455	article	Polity	Intermediate	Geography
457	Content 456	course	Geography	Beginner	Polity
458	Content 457	article	History	Intermediate	History
459	Content 458	article	Polity	Beginner	Polity
460	Content 459	article	Polity	Advanced	Environment
461	Content 460	article	Economy	Intermediate	Economy
462	Content 461	course	History	Intermediate	History
463	Content 462	article	Polity	Advanced	Polity
464	Content 463	article	Polity	Intermediate	Polity
465	Content 464	article	Geography	Intermediate	Polity
466	Content 465	course	Geography	Intermediate	Environment
467	Content 466	article	Economy	Intermediate	Geography
468	Content 467	article	Environment	Advanced	History
469	Content 468	course	Polity	Advanced	Geography
470	Content 469	article	Polity	Beginner	Polity
471	Content 470	course	History	Intermediate	Geography
472	Content 471	article	History	Beginner	Economy
473	Content 472	course	Polity	Intermediate	Economy
474	Content 473	article	Economy	Advanced	Economy
475	Content 474	article	Polity	Advanced	Environment
476	Content 475	article	Geography	Intermediate	Polity
477	Content 476	article	History	Beginner	Geography
478	Content 477	course	Geography	Advanced	Polity
479	Content 478	article	History	Beginner	History
480	Content 479	article	Geography	Beginner	Environment
481	Content 480	article	Polity	Advanced	Polity
482	Content 481	article	History	Beginner	History
483	Content 482	article	History	Advanced	History
484	Content 483	course	Geography	Beginner	Polity
485	Content 484	course	History	Intermediate	Economy
486	Content 485	article	Environment	Intermediate	Environment
487	Content 486	course	Geography	Intermediate	History
488	Content 487	course	Geography	Beginner	History
489	Content 488	course	Geography	Intermediate	History
490	Content 489	course	Economy	Intermediate	Polity
491	Content 490	course	Polity	Advanced	Polity
492	Content 491	course	Environment	Advanced	Economy
493	Content 492	course	Economy	Intermediate	Environment
494	Content 493	article	Polity	Intermediate	Environment
495	Content 494	article	Environment	Beginner	Polity
496	Content 495	course	Economy	Beginner	History
497	Content 496	article	Economy	Advanced	Environment
498	Content 497	course	History	Intermediate	Polity
499	Content 498	course	Environment	Intermediate	Economy
500	Content 499	course	Economy	Beginner	Geography
501	Content 0	course	Polity	Beginner	Environment
502	Content 1	course	Geography	Intermediate	Environment
503	Content 2	article	Environment	Advanced	Polity
504	Content 3	course	History	Intermediate	Geography
505	Content 4	course	History	Intermediate	Environment
506	Content 5	article	Polity	Beginner	History
507	Content 6	course	History	Advanced	History
508	Content 7	course	Polity	Intermediate	Polity
509	Content 8	article	Environment	Advanced	Geography
510	Content 9	course	History	Intermediate	History
511	Content 10	course	Polity	Beginner	Economy
512	Content 11	article	Geography	Advanced	History
513	Content 12	article	Polity	Intermediate	Geography
514	Content 13	article	Environment	Advanced	Geography
515	Content 14	course	Polity	Beginner	Environment
516	Content 15	article	Geography	Beginner	Geography
517	Content 16	article	Polity	Intermediate	Polity
518	Content 17	course	Economy	Intermediate	History
519	Content 18	article	Polity	Advanced	Economy
520	Content 19	course	History	Intermediate	History
521	Content 20	article	Economy	Intermediate	Economy
522	Content 21	article	Geography	Beginner	Polity
523	Content 22	course	Environment	Intermediate	Environment
524	Content 23	article	History	Advanced	Polity
525	Content 24	article	Economy	Beginner	Economy
526	Content 25	article	Geography	Beginner	History
527	Content 26	article	Geography	Advanced	Polity
528	Content 27	article	Economy	Beginner	Economy
529	Content 28	course	Geography	Advanced	Geography
530	Content 29	course	Geography	Advanced	Environment
531	Content 30	article	History	Advanced	Economy
532	Content 31	course	Polity	Intermediate	Polity
533	Content 32	article	Environment	Advanced	History
534	Content 33	course	Polity	Advanced	History
535	Content 34	course	Geography	Advanced	Polity
536	Content 35	article	Polity	Beginner	Environment
537	Content 36	article	Polity	Advanced	History
538	Content 37	article	Environment	Beginner	Geography
539	Content 38	article	Economy	Advanced	Economy
540	Content 39	article	Environment	Beginner	Environment
541	Content 40	article	Polity	Beginner	History
542	Content 41	article	Environment	Intermediate	Environment
543	Content 42	article	Polity	Intermediate	History
544	Content 43	article	Environment	Advanced	Polity
545	Content 44	article	Geography	Advanced	Economy
546	Content 45	article	Economy	Advanced	Environment
547	Content 46	article	Economy	Intermediate	Geography
548	Content 47	course	Environment	Beginner	Economy
549	Content 48	course	Geography	Advanced	Polity
550	Content 49	article	Environment	Intermediate	Geography
551	Content 50	course	Environment	Intermediate	Economy
552	Content 51	article	Polity	Beginner	Polity
553	Content 52	course	Polity	Beginner	History
554	Content 53	course	Polity	Advanced	Geography
555	Content 54	course	Economy	Intermediate	Environment
556	Content 55	course	Economy	Intermediate	Economy
557	Content 56	course	Geography	Beginner	History
558	Content 57	course	Environment	Advanced	History
559	Content 58	course	History	Beginner	Environment
560	Content 59	course	Economy	Beginner	Economy
561	Content 60	article	Polity	Beginner	Environment
562	Content 61	article	Environment	Advanced	Environment
563	Content 62	course	Environment	Intermediate	Polity
564	Content 63	article	Economy	Intermediate	Economy
565	Content 64	article	Environment	Beginner	Environment
566	Content 65	course	Polity	Intermediate	History
567	Content 66	article	Polity	Intermediate	Polity
568	Content 67	article	History	Advanced	History
569	Content 68	course	History	Intermediate	History
570	Content 69	course	Polity	Intermediate	Economy
571	Content 70	course	Economy	Intermediate	History
572	Content 71	course	Polity	Beginner	Geography
573	Content 72	article	History	Intermediate	History
574	Content 73	course	Geography	Intermediate	Environment
575	Content 74	article	Economy	Advanced	Economy
576	Content 75	course	Geography	Beginner	Economy
577	Content 76	article	Geography	Advanced	Environment
578	Content 77	course	Geography	Intermediate	Polity
579	Content 78	article	Geography	Advanced	Environment
580	Content 79	course	Environment	Intermediate	Environment
581	Content 80	article	Polity	Intermediate	Geography
582	Content 81	article	History	Intermediate	History
583	Content 82	article	Geography	Advanced	Economy
584	Content 83	course	Geography	Beginner	Geography
585	Content 84	article	Environment	Intermediate	Environment
586	Content 85	course	Environment	Beginner	Environment
587	Content 86	course	Environment	Advanced	Economy
588	Content 87	course	Geography	Beginner	History
589	Content 88	course	Polity	Intermediate	Geography
590	Content 89	article	History	Beginner	Geography
591	Content 90	article	Geography	Intermediate	Polity
592	Content 91	course	History	Beginner	History
593	Content 92	course	Polity	Advanced	Geography
594	Content 93	article	Geography	Beginner	Economy
595	Content 94	article	History	Intermediate	History
596	Content 95	article	Economy	Intermediate	Environment
597	Content 96	article	Geography	Beginner	History
598	Content 97	article	Environment	Beginner	Geography
599	Content 98	course	Environment	Advanced	Polity
600	Content 99	course	Environment	Advanced	Polity
601	Content 100	article	Polity	Beginner	Environment
602	Content 101	course	Economy	Intermediate	Environment
603	Content 102	course	Geography	Advanced	Environment
604	Content 103	article	Environment	Intermediate	Economy
605	Content 104	article	Geography	Beginner	History
606	Content 105	course	Economy	Advanced	History
607	Content 106	article	Economy	Intermediate	History
608	Content 107	course	Polity	Beginner	Economy
609	Content 108	article	Economy	Beginner	Economy
610	Content 109	course	Polity	Beginner	Geography
611	Content 110	article	Geography	Intermediate	Environment
612	Content 111	article	Geography	Advanced	Geography
613	Content 112	course	History	Intermediate	Environment
614	Content 113	course	Polity	Advanced	Geography
615	Content 114	article	Environment	Advanced	Polity
616	Content 115	article	Geography	Beginner	Environment
617	Content 116	article	Economy	Beginner	History
618	Content 117	article	Polity	Advanced	Economy
619	Content 118	article	Geography	Advanced	History
620	Content 119	article	Environment	Intermediate	Economy
621	Content 120	course	Environment	Advanced	Economy
622	Content 121	article	Economy	Advanced	Economy
623	Content 122	course	Environment	Advanced	History
624	Content 123	course	Polity	Advanced	Economy
625	Content 124	article	Environment	Advanced	History
626	Content 125	course	Polity	Beginner	Polity
627	Content 126	article	Geography	Beginner	Environment
628	Content 127	course	Economy	Intermediate	Geography
629	Content 128	course	Environment	Beginner	Economy
630	Content 129	course	Polity	Beginner	Economy
631	Content 130	course	Economy	Intermediate	Environment
632	Content 131	article	Geography	Advanced	History
633	Content 132	article	Polity	Advanced	Environment
634	Content 133	article	Polity	Beginner	Polity
635	Content 134	course	History	Intermediate	Polity
636	Content 135	article	History	Beginner	Environment
637	Content 136	course	Environment	Beginner	Economy
638	Content 137	article	History	Intermediate	Polity
639	Content 138	course	Environment	Intermediate	History
640	Content 139	article	History	Advanced	Environment
641	Content 140	course	Geography	Advanced	Polity
642	Content 141	course	Geography	Beginner	Polity
643	Content 142	article	History	Advanced	Polity
644	Content 143	course	Polity	Intermediate	Polity
645	Content 144	article	Economy	Beginner	History
646	Content 145	course	Economy	Advanced	Polity
647	Content 146	course	Polity	Beginner	Environment
648	Content 147	course	Economy	Advanced	Geography
649	Content 148	article	Environment	Intermediate	Environment
650	Content 149	course	Polity	Beginner	Economy
651	Content 150	course	History	Beginner	History
652	Content 151	course	Economy	Intermediate	Polity
653	Content 152	course	Economy	Advanced	Economy
654	Content 153	course	Economy	Beginner	Economy
655	Content 154	course	Environment	Advanced	Environment
656	Content 155	article	Environment	Beginner	Geography
657	Content 156	article	History	Advanced	Geography
658	Content 157	article	Polity	Advanced	Polity
659	Content 158	course	Polity	Beginner	History
660	Content 159	course	Geography	Intermediate	History
661	Content 160	article	Polity	Advanced	Polity
662	Content 161	course	History	Intermediate	History
663	Content 162	course	Polity	Advanced	Economy
664	Content 163	course	History	Intermediate	Economy
665	Content 164	article	Environment	Intermediate	Geography
666	Content 165	article	History	Intermediate	Economy
667	Content 166	course	Geography	Intermediate	Environment
668	Content 167	course	Economy	Beginner	Economy
669	Content 168	course	History	Beginner	Economy
670	Content 169	course	Environment	Advanced	Environment
671	Content 170	article	Environment	Beginner	Environment
672	Content 171	course	Geography	Intermediate	Environment
673	Content 172	article	Economy	Advanced	Polity
674	Content 173	course	Economy	Advanced	Economy
675	Content 174	course	Economy	Intermediate	Geography
676	Content 175	course	Environment	Advanced	Geography
677	Content 176	course	Environment	Intermediate	Environment
678	Content 177	article	History	Advanced	Economy
679	Content 178	course	Polity	Intermediate	Geography
680	Content 179	course	Geography	Intermediate	History
681	Content 180	course	History	Advanced	Geography
682	Content 181	course	Economy	Intermediate	History
683	Content 182	course	Geography	Beginner	Environment
684	Content 183	article	Geography	Intermediate	Polity
685	Content 184	article	Economy	Beginner	Economy
686	Content 185	course	History	Beginner	Environment
687	Content 186	article	Geography	Advanced	History
688	Content 187	article	Economy	Intermediate	Economy
689	Content 188	article	Economy	Beginner	Economy
690	Content 189	course	Economy	Beginner	Geography
691	Content 190	course	Environment	Advanced	History
692	Content 191	course	Geography	Intermediate	Economy
693	Content 192	article	Geography	Intermediate	History
694	Content 193	course	Economy	Intermediate	History
695	Content 194	course	History	Intermediate	Economy
696	Content 195	course	Polity	Intermediate	Polity
697	Content 196	article	Economy	Beginner	Economy
698	Content 197	course	Geography	Beginner	Economy
699	Content 198	course	History	Beginner	Geography
700	Content 199	article	History	Beginner	Polity
701	Content 200	article	Polity	Intermediate	Geography
702	Content 201	course	Environment	Beginner	Polity
703	Content 202	course	Polity	Advanced	Polity
704	Content 203	article	History	Beginner	Geography
705	Content 204	course	Polity	Intermediate	Polity
706	Content 205	article	Polity	Advanced	Environment
707	Content 206	article	History	Intermediate	Polity
708	Content 207	course	Polity	Beginner	Environment
709	Content 208	article	Economy	Intermediate	Economy
710	Content 209	article	Economy	Intermediate	Economy
711	Content 210	course	Economy	Advanced	History
712	Content 211	article	Environment	Advanced	Economy
713	Content 212	article	Environment	Beginner	Economy
714	Content 213	article	History	Advanced	Environment
715	Content 214	course	Geography	Beginner	Economy
716	Content 215	course	History	Beginner	Environment
717	Content 216	course	Environment	Advanced	Polity
718	Content 217	course	Polity	Beginner	Environment
719	Content 218	course	Polity	Advanced	Polity
720	Content 219	article	Environment	Advanced	Economy
721	Content 220	course	Geography	Advanced	Polity
722	Content 221	course	Economy	Beginner	Environment
723	Content 222	course	History	Beginner	Environment
724	Content 223	course	Environment	Intermediate	Environment
725	Content 224	course	History	Intermediate	Economy
726	Content 225	course	Geography	Advanced	Economy
727	Content 226	course	Environment	Intermediate	Economy
728	Content 227	course	Economy	Advanced	History
729	Content 228	course	Polity	Advanced	Geography
730	Content 229	article	Environment	Intermediate	Environment
731	Content 230	article	History	Beginner	Geography
732	Content 231	article	History	Beginner	Polity
733	Content 232	article	Polity	Beginner	Geography
734	Content 233	course	Polity	Beginner	Polity
735	Content 234	course	Environment	Beginner	History
736	Content 235	course	Economy	Beginner	History
737	Content 236	course	Geography	Beginner	Geography
738	Content 237	article	History	Beginner	Geography
739	Content 238	article	History	Intermediate	Polity
740	Content 239	article	History	Beginner	History
741	Content 240	course	Environment	Intermediate	History
742	Content 241	article	Geography	Advanced	Polity
743	Content 242	article	Economy	Intermediate	Geography
744	Content 243	article	Environment	Beginner	Environment
745	Content 244	article	Polity	Beginner	Geography
746	Content 245	course	Environment	Advanced	Environment
747	Content 246	course	Geography	Intermediate	Geography
748	Content 247	article	Environment	Advanced	Environment
749	Content 248	article	History	Advanced	Polity
750	Content 249	course	Economy	Advanced	History
751	Content 250	course	Economy	Advanced	Polity
752	Content 251	course	History	Advanced	Geography
753	Content 252	course	History	Intermediate	Economy
754	Content 253	course	Environment	Advanced	Economy
755	Content 254	course	Polity	Advanced	Environment
756	Content 255	course	Economy	Intermediate	History
757	Content 256	article	Environment	Beginner	Polity
758	Content 257	course	Environment	Intermediate	Economy
759	Content 258	course	History	Beginner	Polity
760	Content 259	article	Environment	Advanced	Polity
761	Content 260	course	Geography	Advanced	Geography
762	Content 261	article	Economy	Beginner	Environment
763	Content 262	article	Geography	Intermediate	Environment
764	Content 263	article	History	Intermediate	Environment
765	Content 264	article	Economy	Advanced	Economy
766	Content 265	course	Environment	Advanced	Environment
767	Content 266	course	Geography	Intermediate	History
768	Content 267	course	Economy	Advanced	History
769	Content 268	article	Economy	Advanced	Polity
770	Content 269	article	Polity	Intermediate	History
771	Content 270	article	Geography	Advanced	Geography
772	Content 271	article	Geography	Beginner	Environment
773	Content 272	course	Geography	Advanced	Polity
774	Content 273	course	History	Advanced	History
775	Content 274	article	Polity	Advanced	History
776	Content 275	course	History	Intermediate	Economy
777	Content 276	article	Environment	Advanced	Polity
778	Content 277	article	Economy	Advanced	Environment
779	Content 278	article	Polity	Intermediate	Polity
780	Content 279	course	Geography	Intermediate	Geography
781	Content 280	course	Geography	Intermediate	Geography
782	Content 281	article	Economy	Intermediate	Geography
783	Content 282	article	Environment	Advanced	History
784	Content 283	article	Economy	Advanced	Economy
785	Content 284	course	History	Intermediate	Polity
786	Content 285	article	Economy	Beginner	Environment
787	Content 286	course	Polity	Beginner	Environment
788	Content 287	course	Environment	Beginner	Geography
789	Content 288	article	Geography	Beginner	History
790	Content 289	article	Geography	Intermediate	Polity
791	Content 290	article	Polity	Beginner	History
792	Content 291	course	Environment	Intermediate	Polity
793	Content 292	course	Environment	Advanced	Economy
794	Content 293	course	History	Intermediate	History
795	Content 294	article	Environment	Beginner	History
796	Content 295	article	History	Advanced	Geography
797	Content 296	article	Polity	Intermediate	Environment
798	Content 297	course	History	Advanced	Polity
799	Content 298	article	Geography	Beginner	Economy
800	Content 299	course	History	Beginner	Polity
801	Content 300	course	History	Beginner	Economy
802	Content 301	course	Environment	Beginner	Polity
803	Content 302	course	Polity	Beginner	Geography
804	Content 303	article	Polity	Advanced	Geography
805	Content 304	article	Geography	Intermediate	Geography
806	Content 305	course	Economy	Intermediate	Geography
807	Content 306	article	Geography	Beginner	Economy
808	Content 307	course	Economy	Intermediate	Environment
809	Content 308	article	Geography	Intermediate	Polity
810	Content 309	course	Economy	Intermediate	Polity
811	Content 310	course	History	Advanced	History
812	Content 311	article	Environment	Intermediate	History
813	Content 312	course	History	Beginner	Economy
814	Content 313	article	Polity	Advanced	Economy
815	Content 314	course	Environment	Intermediate	History
816	Content 315	course	Polity	Intermediate	Geography
817	Content 316	article	Economy	Advanced	Polity
818	Content 317	article	History	Beginner	Environment
819	Content 318	article	Environment	Advanced	Economy
820	Content 319	course	Environment	Beginner	Polity
821	Content 320	article	Economy	Advanced	Polity
822	Content 321	article	Economy	Advanced	Environment
823	Content 322	article	Polity	Advanced	Environment
824	Content 323	course	Polity	Advanced	History
825	Content 324	course	Economy	Advanced	Geography
826	Content 325	article	Environment	Intermediate	Geography
827	Content 326	course	Geography	Advanced	Geography
828	Content 327	article	Polity	Advanced	Environment
829	Content 328	article	Economy	Advanced	History
830	Content 329	course	Geography	Advanced	Economy
831	Content 330	course	History	Beginner	Geography
832	Content 331	article	Economy	Beginner	Geography
833	Content 332	course	Geography	Intermediate	Geography
834	Content 333	article	History	Advanced	Geography
835	Content 334	article	History	Advanced	Environment
836	Content 335	course	Polity	Intermediate	Geography
837	Content 336	course	Polity	Intermediate	Geography
838	Content 337	course	Polity	Beginner	Polity
839	Content 338	article	Environment	Intermediate	Environment
840	Content 339	course	Environment	Advanced	History
841	Content 340	article	Geography	Beginner	History
842	Content 341	course	Environment	Advanced	Economy
843	Content 342	course	Economy	Beginner	Economy
844	Content 343	course	Geography	Intermediate	Economy
845	Content 344	course	Polity	Advanced	History
846	Content 345	course	Geography	Intermediate	Economy
847	Content 346	article	Polity	Intermediate	Geography
848	Content 347	article	History	Beginner	Environment
849	Content 348	article	Geography	Advanced	Geography
850	Content 349	article	Economy	Beginner	Polity
851	Content 350	article	Environment	Intermediate	Geography
852	Content 351	course	Polity	Advanced	History
853	Content 352	article	Economy	Beginner	Geography
854	Content 353	course	Geography	Beginner	Environment
855	Content 354	article	Polity	Intermediate	Economy
856	Content 355	course	History	Intermediate	Polity
857	Content 356	course	Polity	Intermediate	History
858	Content 357	course	Geography	Intermediate	Geography
859	Content 358	course	Economy	Advanced	History
860	Content 359	course	Geography	Beginner	Economy
861	Content 360	course	Geography	Advanced	History
862	Content 361	article	Environment	Intermediate	Polity
863	Content 362	course	Polity	Beginner	History
864	Content 363	course	Geography	Beginner	Polity
865	Content 364	course	Environment	Advanced	Polity
866	Content 365	course	Economy	Beginner	Polity
867	Content 366	course	Environment	Beginner	Economy
868	Content 367	course	Geography	Advanced	Geography
869	Content 368	course	Geography	Advanced	Geography
870	Content 369	article	History	Intermediate	History
871	Content 370	article	Polity	Beginner	Polity
872	Content 371	course	Economy	Beginner	Geography
873	Content 372	course	Polity	Advanced	Environment
874	Content 373	article	Economy	Advanced	History
875	Content 374	article	Polity	Beginner	History
876	Content 375	course	Polity	Beginner	History
877	Content 376	course	Economy	Beginner	History
878	Content 377	course	Economy	Intermediate	Economy
879	Content 378	article	History	Intermediate	History
880	Content 379	article	History	Advanced	Economy
881	Content 380	course	Polity	Advanced	Geography
882	Content 381	article	Environment	Advanced	Polity
883	Content 382	course	History	Advanced	Environment
884	Content 383	article	Polity	Beginner	Environment
885	Content 384	article	Polity	Beginner	Polity
886	Content 385	course	Economy	Intermediate	Geography
887	Content 386	article	Polity	Beginner	Geography
888	Content 387	article	History	Advanced	Polity
889	Content 388	article	History	Advanced	Polity
890	Content 389	course	History	Intermediate	Environment
891	Content 390	article	Economy	Beginner	Environment
892	Content 391	course	History	Beginner	History
893	Content 392	course	Economy	Intermediate	History
894	Content 393	article	History	Beginner	Geography
895	Content 394	article	History	Beginner	Environment
896	Content 395	article	Environment	Advanced	Polity
897	Content 396	article	Economy	Advanced	Polity
898	Content 397	article	Geography	Advanced	History
899	Content 398	course	Environment	Intermediate	Geography
900	Content 399	article	History	Intermediate	History
901	Content 400	article	Geography	Advanced	Economy
902	Content 401	article	Environment	Beginner	Economy
903	Content 402	article	Polity	Beginner	Polity
904	Content 403	course	Environment	Advanced	Polity
905	Content 404	course	Geography	Beginner	Economy
906	Content 405	course	Polity	Beginner	Environment
907	Content 406	course	Economy	Intermediate	History
908	Content 407	course	History	Beginner	Geography
909	Content 408	article	Environment	Intermediate	Polity
910	Content 409	course	Economy	Beginner	Environment
911	Content 410	course	Polity	Beginner	Environment
912	Content 411	course	Economy	Intermediate	History
913	Content 412	course	Environment	Intermediate	Economy
914	Content 413	article	Polity	Advanced	Geography
915	Content 414	course	Environment	Intermediate	Polity
916	Content 415	course	Environment	Advanced	Polity
917	Content 416	course	History	Advanced	Economy
918	Content 417	course	Polity	Intermediate	Economy
919	Content 418	course	Geography	Intermediate	Geography
920	Content 419	course	Economy	Advanced	Environment
921	Content 420	article	Environment	Intermediate	History
922	Content 421	article	Polity	Beginner	Environment
923	Content 422	course	Economy	Intermediate	Environment
924	Content 423	article	Economy	Intermediate	Economy
925	Content 424	article	Environment	Advanced	Polity
926	Content 425	article	Polity	Advanced	Polity
927	Content 426	article	Economy	Advanced	Economy
928	Content 427	article	History	Intermediate	Economy
929	Content 428	course	Economy	Beginner	Economy
930	Content 429	course	Polity	Advanced	History
931	Content 430	course	Geography	Intermediate	Geography
932	Content 431	course	Geography	Advanced	History
933	Content 432	course	Environment	Intermediate	Geography
934	Content 433	article	Economy	Beginner	Environment
935	Content 434	article	Economy	Advanced	Environment
936	Content 435	article	Polity	Advanced	History
937	Content 436	course	Economy	Beginner	History
938	Content 437	course	Polity	Intermediate	History
939	Content 438	article	Environment	Intermediate	Geography
940	Content 439	course	Economy	Intermediate	Economy
941	Content 440	article	Economy	Beginner	Economy
942	Content 441	article	Geography	Beginner	History
943	Content 442	article	Environment	Intermediate	History
944	Content 443	article	Environment	Beginner	History
945	Content 444	course	Polity	Advanced	Polity
946	Content 445	article	Geography	Beginner	Environment
947	Content 446	course	Environment	Advanced	Economy
948	Content 447	course	Economy	Intermediate	Polity
949	Content 448	article	Economy	Beginner	Geography
950	Content 449	course	Geography	Beginner	Geography
951	Content 450	course	History	Intermediate	Polity
952	Content 451	article	Economy	Beginner	Economy
953	Content 452	course	Environment	Advanced	Polity
954	Content 453	article	Environment	Beginner	Environment
955	Content 454	article	Economy	Intermediate	History
956	Content 455	course	Polity	Intermediate	Environment
957	Content 456	article	History	Advanced	Polity
958	Content 457	article	Geography	Advanced	Environment
959	Content 458	course	Geography	Advanced	Environment
960	Content 459	course	Environment	Advanced	Environment
961	Content 460	course	History	Intermediate	Economy
962	Content 461	course	Economy	Beginner	Environment
963	Content 462	course	History	Beginner	Environment
964	Content 463	course	Polity	Intermediate	Geography
965	Content 464	article	Economy	Intermediate	Environment
966	Content 465	article	Environment	Intermediate	Economy
967	Content 466	course	Polity	Advanced	Economy
968	Content 467	article	Economy	Advanced	Geography
969	Content 468	article	History	Beginner	Geography
970	Content 469	article	Geography	Advanced	Polity
971	Content 470	article	History	Beginner	History
972	Content 471	article	Polity	Beginner	Polity
973	Content 472	article	Polity	Beginner	Environment
974	Content 473	course	Environment	Beginner	Economy
975	Content 474	article	Polity	Intermediate	Polity
976	Content 475	course	Economy	Beginner	Polity
977	Content 476	article	Economy	Intermediate	History
978	Content 477	course	Geography	Advanced	Economy
979	Content 478	course	History	Beginner	Polity
980	Content 479	course	History	Advanced	Polity
981	Content 480	article	Geography	Beginner	Geography
982	Content 481	article	Polity	Beginner	Geography
983	Content 482	course	History	Advanced	Polity
984	Content 483	article	Environment	Advanced	History
985	Content 484	course	Polity	Advanced	History
986	Content 485	course	Geography	Advanced	Economy
987	Content 486	course	Economy	Advanced	Geography
988	Content 487	course	Environment	Beginner	Polity
989	Content 488	course	Environment	Advanced	Environment
990	Content 489	article	Geography	Advanced	Economy
991	Content 490	article	Economy	Advanced	Environment
992	Content 491	course	Environment	Intermediate	Economy
993	Content 492	article	Economy	Advanced	Polity
994	Content 493	course	Economy	Intermediate	Economy
995	Content 494	course	Economy	Beginner	Geography
996	Content 495	article	Polity	Beginner	Economy
997	Content 496	course	Polity	Advanced	Environment
998	Content 497	course	Economy	Advanced	Environment
999	Content 498	course	Economy	Advanced	Geography
1000	Content 499	course	Environment	Beginner	Economy
\.


--
-- Data for Name: interactions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.interactions (id, user_id, content_id, event_type, "timestamp") FROM stdin;
1	144	686	read	2026-04-26 13:48:57.08465
2	79	803	click	2026-04-26 13:48:57.08465
3	37	152	read	2026-04-26 13:48:57.08465
4	45	840	click	2026-04-26 13:48:57.08465
5	161	6	enroll	2026-04-26 13:48:57.08465
6	69	425	click	2026-04-26 13:48:57.08465
7	10	441	read	2026-04-26 13:48:57.08465
8	185	459	read	2026-04-26 13:48:57.08465
9	175	781	click	2026-04-26 13:48:57.08465
10	3	843	like	2026-04-26 13:48:57.08465
11	195	675	enroll	2026-04-26 13:48:57.08465
12	20	998	like	2026-04-26 13:48:57.08465
13	3	932	like	2026-04-26 13:48:57.08465
14	131	902	read	2026-04-26 13:48:57.08465
15	16	53	read	2026-04-26 13:48:57.08465
16	11	722	enroll	2026-04-26 13:48:57.08465
17	34	546	click	2026-04-26 13:48:57.08465
18	55	353	like	2026-04-26 13:48:57.08465
19	32	653	like	2026-04-26 13:48:57.08465
20	161	713	enroll	2026-04-26 13:48:57.08465
21	31	790	click	2026-04-26 13:48:57.08465
22	57	913	like	2026-04-26 13:48:57.08465
23	39	528	click	2026-04-26 13:48:57.08465
24	183	761	read	2026-04-26 13:48:57.08465
25	96	666	read	2026-04-26 13:48:57.08465
26	144	235	read	2026-04-26 13:48:57.08465
27	64	668	click	2026-04-26 13:48:57.08465
28	47	324	click	2026-04-26 13:48:57.08465
29	29	558	click	2026-04-26 13:48:57.08465
30	154	181	click	2026-04-26 13:48:57.08465
31	84	882	click	2026-04-26 13:48:57.08465
32	104	477	read	2026-04-26 13:48:57.08465
33	46	946	like	2026-04-26 13:48:57.08465
34	8	820	like	2026-04-26 13:48:57.08465
35	132	150	click	2026-04-26 13:48:57.08465
36	49	405	read	2026-04-26 13:48:57.08465
37	125	91	click	2026-04-26 13:48:57.08465
38	82	24	enroll	2026-04-26 13:48:57.08465
39	191	210	read	2026-04-26 13:48:57.08465
40	101	503	like	2026-04-26 13:48:57.08465
41	60	240	enroll	2026-04-26 13:48:57.08465
42	11	794	read	2026-04-26 13:48:57.08465
43	68	887	enroll	2026-04-26 13:48:57.08465
44	138	334	enroll	2026-04-26 13:48:57.08465
45	8	997	enroll	2026-04-26 13:48:57.08465
46	99	191	click	2026-04-26 13:48:57.08465
47	97	72	like	2026-04-26 13:48:57.08465
48	49	33	click	2026-04-26 13:48:57.08465
49	64	316	click	2026-04-26 13:48:57.08465
50	16	346	click	2026-04-26 13:48:57.08465
51	119	120	read	2026-04-26 13:48:57.08465
52	80	187	like	2026-04-26 13:48:57.08465
53	126	170	like	2026-04-26 13:48:57.08465
54	154	504	like	2026-04-26 13:48:57.08465
55	115	894	enroll	2026-04-26 13:48:57.08465
56	106	184	click	2026-04-26 13:48:57.08465
57	33	560	click	2026-04-26 13:48:57.08465
58	67	630	read	2026-04-26 13:48:57.08465
59	62	350	like	2026-04-26 13:48:57.08465
60	93	68	click	2026-04-26 13:48:57.08465
61	85	892	like	2026-04-26 13:48:57.08465
62	75	86	enroll	2026-04-26 13:48:57.08465
63	74	250	click	2026-04-26 13:48:57.08465
64	84	187	enroll	2026-04-26 13:48:57.08465
65	78	453	read	2026-04-26 13:48:57.08465
66	28	344	like	2026-04-26 13:48:57.08465
67	38	491	enroll	2026-04-26 13:48:57.08465
68	105	366	click	2026-04-26 13:48:57.08465
69	134	533	click	2026-04-26 13:48:57.08465
70	128	278	read	2026-04-26 13:48:57.08465
71	199	674	click	2026-04-26 13:48:57.08465
72	57	530	like	2026-04-26 13:48:57.08465
73	28	552	click	2026-04-26 13:48:57.08465
74	165	379	read	2026-04-26 13:48:57.08465
75	181	136	read	2026-04-26 13:48:57.08465
76	96	127	enroll	2026-04-26 13:48:57.08465
77	154	937	enroll	2026-04-26 13:48:57.08465
78	4	390	read	2026-04-26 13:48:57.08465
79	9	598	click	2026-04-26 13:48:57.08465
80	180	408	enroll	2026-04-26 13:48:57.08465
81	131	635	read	2026-04-26 13:48:57.08465
82	106	212	read	2026-04-26 13:48:57.08465
83	7	906	read	2026-04-26 13:48:57.08465
84	81	949	click	2026-04-26 13:48:57.08465
85	57	271	enroll	2026-04-26 13:48:57.08465
86	45	466	enroll	2026-04-26 13:48:57.08465
87	106	607	enroll	2026-04-26 13:48:57.08465
88	197	722	read	2026-04-26 13:48:57.08465
89	87	740	click	2026-04-26 13:48:57.08465
90	103	903	click	2026-04-26 13:48:57.08465
91	4	149	click	2026-04-26 13:48:57.08465
92	164	382	read	2026-04-26 13:48:57.08465
93	188	816	read	2026-04-26 13:48:57.08465
94	81	828	click	2026-04-26 13:48:57.08465
95	142	315	enroll	2026-04-26 13:48:57.08465
96	184	616	like	2026-04-26 13:48:57.08465
97	67	129	read	2026-04-26 13:48:57.08465
98	86	767	enroll	2026-04-26 13:48:57.08465
99	151	720	like	2026-04-26 13:48:57.08465
100	168	886	enroll	2026-04-26 13:48:57.08465
101	152	42	like	2026-04-26 13:48:57.08465
102	28	55	like	2026-04-26 13:48:57.08465
103	136	466	like	2026-04-26 13:48:57.08465
104	46	502	like	2026-04-26 13:48:57.08465
105	143	923	enroll	2026-04-26 13:48:57.08465
106	126	587	click	2026-04-26 13:48:57.08465
107	13	83	read	2026-04-26 13:48:57.08465
108	113	816	enroll	2026-04-26 13:48:57.08465
109	80	784	click	2026-04-26 13:48:57.08465
110	174	462	like	2026-04-26 13:48:57.08465
111	17	350	read	2026-04-26 13:48:57.08465
112	140	250	enroll	2026-04-26 13:48:57.08465
113	173	702	click	2026-04-26 13:48:57.08465
114	200	449	click	2026-04-26 13:48:57.08465
115	21	969	enroll	2026-04-26 13:48:57.08465
116	83	947	click	2026-04-26 13:48:57.08465
117	126	210	like	2026-04-26 13:48:57.08465
118	161	681	like	2026-04-26 13:48:57.08465
119	116	368	read	2026-04-26 13:48:57.08465
120	52	457	like	2026-04-26 13:48:57.08465
121	53	643	like	2026-04-26 13:48:57.08465
122	2	315	enroll	2026-04-26 13:48:57.08465
123	7	632	enroll	2026-04-26 13:48:57.08465
124	75	586	like	2026-04-26 13:48:57.08465
125	132	430	read	2026-04-26 13:48:57.08465
126	80	536	click	2026-04-26 13:48:57.08465
127	18	551	click	2026-04-26 13:48:57.08465
128	63	368	enroll	2026-04-26 13:48:57.08465
129	197	870	like	2026-04-26 13:48:57.08465
130	182	684	enroll	2026-04-26 13:48:57.08465
131	197	222	like	2026-04-26 13:48:57.08465
132	41	866	read	2026-04-26 13:48:57.08465
133	15	363	like	2026-04-26 13:48:57.08465
134	130	843	enroll	2026-04-26 13:48:57.08465
135	38	396	read	2026-04-26 13:48:57.08465
136	73	133	read	2026-04-26 13:48:57.08465
137	116	278	click	2026-04-26 13:48:57.08465
138	15	653	enroll	2026-04-26 13:48:57.08465
139	78	523	enroll	2026-04-26 13:48:57.08465
140	65	523	enroll	2026-04-26 13:48:57.08465
141	106	123	click	2026-04-26 13:48:57.08465
142	123	529	enroll	2026-04-26 13:48:57.08465
143	30	928	read	2026-04-26 13:48:57.08465
144	169	947	enroll	2026-04-26 13:48:57.08465
145	188	59	like	2026-04-26 13:48:57.08465
146	107	966	enroll	2026-04-26 13:48:57.08465
147	124	424	click	2026-04-26 13:48:57.08465
148	67	268	click	2026-04-26 13:48:57.08465
149	99	131	enroll	2026-04-26 13:48:57.08465
150	68	826	click	2026-04-26 13:48:57.08465
151	149	244	like	2026-04-26 13:48:57.08465
152	71	207	click	2026-04-26 13:48:57.08465
153	38	808	like	2026-04-26 13:48:57.08465
154	42	534	enroll	2026-04-26 13:48:57.08465
155	163	54	like	2026-04-26 13:48:57.08465
156	107	951	read	2026-04-26 13:48:57.08465
157	143	262	like	2026-04-26 13:48:57.08465
158	130	138	enroll	2026-04-26 13:48:57.08465
159	127	781	click	2026-04-26 13:48:57.08465
160	56	969	read	2026-04-26 13:48:57.08465
161	171	64	like	2026-04-26 13:48:57.08465
162	28	968	like	2026-04-26 13:48:57.08465
163	102	955	like	2026-04-26 13:48:57.08465
164	116	614	read	2026-04-26 13:48:57.08465
165	81	6	read	2026-04-26 13:48:57.08465
166	159	991	click	2026-04-26 13:48:57.08465
167	92	100	enroll	2026-04-26 13:48:57.08465
168	58	791	enroll	2026-04-26 13:48:57.08465
169	133	778	enroll	2026-04-26 13:48:57.08465
170	75	695	enroll	2026-04-26 13:48:57.08465
171	164	657	like	2026-04-26 13:48:57.08465
172	64	428	read	2026-04-26 13:48:57.08465
173	147	815	enroll	2026-04-26 13:48:57.08465
174	145	352	click	2026-04-26 13:48:57.08465
175	174	30	like	2026-04-26 13:48:57.08465
176	19	194	enroll	2026-04-26 13:48:57.08465
177	107	131	like	2026-04-26 13:48:57.08465
178	148	278	click	2026-04-26 13:48:57.08465
179	126	926	click	2026-04-26 13:48:57.08465
180	49	929	read	2026-04-26 13:48:57.08465
181	78	452	read	2026-04-26 13:48:57.08465
182	145	386	enroll	2026-04-26 13:48:57.08465
183	162	346	click	2026-04-26 13:48:57.08465
184	122	879	enroll	2026-04-26 13:48:57.08465
185	25	815	click	2026-04-26 13:48:57.08465
186	124	882	read	2026-04-26 13:48:57.08465
187	40	208	click	2026-04-26 13:48:57.08465
188	60	586	read	2026-04-26 13:48:57.08465
189	20	785	click	2026-04-26 13:48:57.08465
190	81	338	click	2026-04-26 13:48:57.08465
191	84	873	click	2026-04-26 13:48:57.08465
192	30	450	read	2026-04-26 13:48:57.08465
193	155	8	click	2026-04-26 13:48:57.08465
194	119	9	enroll	2026-04-26 13:48:57.08465
195	162	957	click	2026-04-26 13:48:57.08465
196	72	526	enroll	2026-04-26 13:48:57.08465
197	96	655	like	2026-04-26 13:48:57.08465
198	188	182	like	2026-04-26 13:48:57.08465
199	93	775	read	2026-04-26 13:48:57.08465
200	18	70	enroll	2026-04-26 13:48:57.08465
201	63	55	enroll	2026-04-26 13:48:57.08465
202	198	569	like	2026-04-26 13:48:57.08465
203	153	99	like	2026-04-26 13:48:57.08465
204	183	752	read	2026-04-26 13:48:57.08465
205	2	484	like	2026-04-26 13:48:57.08465
206	184	74	click	2026-04-26 13:48:57.08465
207	173	691	like	2026-04-26 13:48:57.08465
208	150	836	click	2026-04-26 13:48:57.08465
209	178	826	read	2026-04-26 13:48:57.08465
210	155	971	read	2026-04-26 13:48:57.08465
211	154	282	enroll	2026-04-26 13:48:57.08465
212	101	561	read	2026-04-26 13:48:57.08465
213	102	25	like	2026-04-26 13:48:57.08465
214	13	853	like	2026-04-26 13:48:57.08465
215	188	877	click	2026-04-26 13:48:57.08465
216	24	577	click	2026-04-26 13:48:57.08465
217	93	351	like	2026-04-26 13:48:57.08465
218	50	35	read	2026-04-26 13:48:57.08465
219	72	819	click	2026-04-26 13:48:57.08465
220	186	73	like	2026-04-26 13:48:57.08465
221	18	817	like	2026-04-26 13:48:57.08465
222	133	956	enroll	2026-04-26 13:48:57.08465
223	159	432	read	2026-04-26 13:48:57.08465
224	111	716	like	2026-04-26 13:48:57.08465
225	140	887	click	2026-04-26 13:48:57.08465
226	133	158	click	2026-04-26 13:48:57.08465
227	158	265	like	2026-04-26 13:48:57.08465
228	49	426	enroll	2026-04-26 13:48:57.08465
229	185	997	enroll	2026-04-26 13:48:57.08465
230	11	408	click	2026-04-26 13:48:57.08465
231	103	244	click	2026-04-26 13:48:57.08465
232	100	366	click	2026-04-26 13:48:57.08465
233	174	8	like	2026-04-26 13:48:57.08465
234	11	958	read	2026-04-26 13:48:57.08465
235	73	146	read	2026-04-26 13:48:57.08465
236	172	172	read	2026-04-26 13:48:57.08465
237	123	530	click	2026-04-26 13:48:57.08465
238	60	572	read	2026-04-26 13:48:57.08465
239	41	713	like	2026-04-26 13:48:57.08465
240	6	226	click	2026-04-26 13:48:57.08465
241	154	965	click	2026-04-26 13:48:57.08465
242	172	543	read	2026-04-26 13:48:57.08465
243	110	457	read	2026-04-26 13:48:57.08465
244	28	485	enroll	2026-04-26 13:48:57.08465
245	155	592	enroll	2026-04-26 13:48:57.08465
246	157	303	like	2026-04-26 13:48:57.08465
247	165	126	like	2026-04-26 13:48:57.08465
248	180	646	click	2026-04-26 13:48:57.08465
249	20	271	click	2026-04-26 13:48:57.08465
250	42	115	enroll	2026-04-26 13:48:57.08465
251	25	706	like	2026-04-26 13:48:57.08465
252	69	693	like	2026-04-26 13:48:57.08465
253	73	649	enroll	2026-04-26 13:48:57.08465
254	166	961	enroll	2026-04-26 13:48:57.08465
255	124	268	like	2026-04-26 13:48:57.08465
256	96	291	enroll	2026-04-26 13:48:57.08465
257	108	105	click	2026-04-26 13:48:57.08465
258	190	788	click	2026-04-26 13:48:57.08465
259	90	66	click	2026-04-26 13:48:57.08465
260	8	88	like	2026-04-26 13:48:57.08465
261	152	533	click	2026-04-26 13:48:57.08465
262	8	814	enroll	2026-04-26 13:48:57.08465
263	89	99	click	2026-04-26 13:48:57.08465
264	10	581	read	2026-04-26 13:48:57.08465
265	19	258	enroll	2026-04-26 13:48:57.08465
266	50	883	enroll	2026-04-26 13:48:57.08465
267	195	538	click	2026-04-26 13:48:57.08465
268	171	291	like	2026-04-26 13:48:57.08465
269	7	276	click	2026-04-26 13:48:57.08465
270	43	372	read	2026-04-26 13:48:57.08465
271	96	10	enroll	2026-04-26 13:48:57.08465
272	151	397	read	2026-04-26 13:48:57.08465
273	12	591	like	2026-04-26 13:48:57.08465
274	9	85	click	2026-04-26 13:48:57.08465
275	90	34	like	2026-04-26 13:48:57.08465
276	168	955	enroll	2026-04-26 13:48:57.08465
277	134	978	click	2026-04-26 13:48:57.08465
278	159	247	click	2026-04-26 13:48:57.08465
279	18	384	enroll	2026-04-26 13:48:57.08465
280	130	381	click	2026-04-26 13:48:57.08465
281	59	191	click	2026-04-26 13:48:57.08465
282	86	706	click	2026-04-26 13:48:57.08465
283	23	53	read	2026-04-26 13:48:57.08465
284	56	594	click	2026-04-26 13:48:57.08465
285	153	598	read	2026-04-26 13:48:57.08465
286	170	830	enroll	2026-04-26 13:48:57.08465
287	100	55	like	2026-04-26 13:48:57.08465
288	59	154	read	2026-04-26 13:48:57.08465
289	178	306	read	2026-04-26 13:48:57.08465
290	170	902	enroll	2026-04-26 13:48:57.08465
291	119	898	like	2026-04-26 13:48:57.08465
292	56	235	read	2026-04-26 13:48:57.08465
293	108	936	read	2026-04-26 13:48:57.08465
294	44	181	read	2026-04-26 13:48:57.08465
295	149	109	enroll	2026-04-26 13:48:57.08465
296	131	358	read	2026-04-26 13:48:57.08465
297	186	681	enroll	2026-04-26 13:48:57.08465
298	96	208	click	2026-04-26 13:48:57.08465
299	84	544	enroll	2026-04-26 13:48:57.08465
300	189	205	like	2026-04-26 13:48:57.08465
301	27	466	enroll	2026-04-26 13:48:57.08465
302	186	292	read	2026-04-26 13:48:57.08465
303	181	933	click	2026-04-26 13:48:57.08465
304	119	488	read	2026-04-26 13:48:57.08465
305	147	541	click	2026-04-26 13:48:57.08465
306	76	252	click	2026-04-26 13:48:57.08465
307	82	177	enroll	2026-04-26 13:48:57.08465
308	186	17	like	2026-04-26 13:48:57.08465
309	148	122	like	2026-04-26 13:48:57.08465
310	190	54	click	2026-04-26 13:48:57.08465
311	5	908	like	2026-04-26 13:48:57.08465
312	46	880	click	2026-04-26 13:48:57.08465
313	150	67	like	2026-04-26 13:48:57.08465
314	126	122	like	2026-04-26 13:48:57.08465
315	122	838	like	2026-04-26 13:48:57.08465
316	157	491	read	2026-04-26 13:48:57.08465
317	119	861	like	2026-04-26 13:48:57.08465
318	192	422	read	2026-04-26 13:48:57.08465
319	142	377	enroll	2026-04-26 13:48:57.08465
320	22	43	enroll	2026-04-26 13:48:57.08465
321	26	716	read	2026-04-26 13:48:57.08465
322	69	816	read	2026-04-26 13:48:57.08465
323	69	150	like	2026-04-26 13:48:57.08465
324	182	25	read	2026-04-26 13:48:57.08465
325	114	953	enroll	2026-04-26 13:48:57.08465
326	26	680	enroll	2026-04-26 13:48:57.08465
327	127	205	enroll	2026-04-26 13:48:57.08465
328	180	124	enroll	2026-04-26 13:48:57.08465
329	79	186	enroll	2026-04-26 13:48:57.08465
330	24	915	click	2026-04-26 13:48:57.08465
331	36	117	read	2026-04-26 13:48:57.08465
332	100	75	like	2026-04-26 13:48:57.08465
333	159	2	enroll	2026-04-26 13:48:57.08465
334	139	542	read	2026-04-26 13:48:57.08465
335	193	553	read	2026-04-26 13:48:57.08465
336	12	783	read	2026-04-26 13:48:57.08465
337	138	949	click	2026-04-26 13:48:57.08465
338	102	440	click	2026-04-26 13:48:57.08465
339	151	340	click	2026-04-26 13:48:57.08465
340	36	619	enroll	2026-04-26 13:48:57.08465
341	74	813	click	2026-04-26 13:48:57.08465
342	29	332	click	2026-04-26 13:48:57.08465
343	109	124	read	2026-04-26 13:48:57.08465
344	121	906	like	2026-04-26 13:48:57.08465
345	153	67	click	2026-04-26 13:48:57.08465
346	13	54	click	2026-04-26 13:48:57.08465
347	34	435	like	2026-04-26 13:48:57.08465
348	90	498	read	2026-04-26 13:48:57.08465
349	108	760	click	2026-04-26 13:48:57.08465
350	42	14	enroll	2026-04-26 13:48:57.08465
351	161	723	enroll	2026-04-26 13:48:57.08465
352	41	564	enroll	2026-04-26 13:48:57.08465
353	97	404	read	2026-04-26 13:48:57.08465
354	104	102	click	2026-04-26 13:48:57.08465
355	155	896	click	2026-04-26 13:48:57.08465
356	36	260	like	2026-04-26 13:48:57.08465
357	10	482	read	2026-04-26 13:48:57.08465
358	171	735	enroll	2026-04-26 13:48:57.08465
359	9	216	enroll	2026-04-26 13:48:57.08465
360	169	899	read	2026-04-26 13:48:57.08465
361	145	881	read	2026-04-26 13:48:57.08465
362	32	437	click	2026-04-26 13:48:57.08465
363	24	3	read	2026-04-26 13:48:57.08465
364	129	532	like	2026-04-26 13:48:57.08465
365	88	671	enroll	2026-04-26 13:48:57.08465
366	91	324	enroll	2026-04-26 13:48:57.08465
367	103	174	read	2026-04-26 13:48:57.08465
368	109	642	click	2026-04-26 13:48:57.08465
369	19	15	enroll	2026-04-26 13:48:57.08465
370	39	982	enroll	2026-04-26 13:48:57.08465
371	88	730	like	2026-04-26 13:48:57.08465
372	113	616	read	2026-04-26 13:48:57.08465
373	198	951	click	2026-04-26 13:48:57.08465
374	118	492	click	2026-04-26 13:48:57.08465
375	189	12	enroll	2026-04-26 13:48:57.08465
376	178	489	enroll	2026-04-26 13:48:57.08465
377	177	499	click	2026-04-26 13:48:57.08465
378	153	39	read	2026-04-26 13:48:57.08465
379	5	305	click	2026-04-26 13:48:57.08465
380	200	469	read	2026-04-26 13:48:57.08465
381	169	660	like	2026-04-26 13:48:57.08465
382	169	430	click	2026-04-26 13:48:57.08465
383	56	671	read	2026-04-26 13:48:57.08465
384	147	962	like	2026-04-26 13:48:57.08465
385	56	389	enroll	2026-04-26 13:48:57.08465
386	156	265	read	2026-04-26 13:48:57.08465
387	74	932	enroll	2026-04-26 13:48:57.08465
388	127	9	click	2026-04-26 13:48:57.08465
389	55	679	read	2026-04-26 13:48:57.08465
390	93	414	like	2026-04-26 13:48:57.08465
391	30	196	click	2026-04-26 13:48:57.08465
392	110	705	enroll	2026-04-26 13:48:57.08465
393	49	414	like	2026-04-26 13:48:57.08465
394	87	925	enroll	2026-04-26 13:48:57.08465
395	17	376	like	2026-04-26 13:48:57.08465
396	150	126	like	2026-04-26 13:48:57.08465
397	97	360	click	2026-04-26 13:48:57.08465
398	89	267	enroll	2026-04-26 13:48:57.08465
399	134	511	click	2026-04-26 13:48:57.08465
400	42	594	read	2026-04-26 13:48:57.08465
401	170	589	like	2026-04-26 13:48:57.08465
402	60	263	enroll	2026-04-26 13:48:57.08465
403	76	786	read	2026-04-26 13:48:57.08465
404	33	850	enroll	2026-04-26 13:48:57.08465
405	168	483	read	2026-04-26 13:48:57.08465
406	84	918	enroll	2026-04-26 13:48:57.08465
407	194	4	read	2026-04-26 13:48:57.08465
408	85	83	enroll	2026-04-26 13:48:57.08465
409	50	787	click	2026-04-26 13:48:57.08465
410	164	194	click	2026-04-26 13:48:57.08465
411	138	823	read	2026-04-26 13:48:57.08465
412	88	962	enroll	2026-04-26 13:48:57.08465
413	31	92	enroll	2026-04-26 13:48:57.08465
414	196	235	like	2026-04-26 13:48:57.08465
415	112	572	click	2026-04-26 13:48:57.08465
416	54	86	click	2026-04-26 13:48:57.08465
417	68	670	read	2026-04-26 13:48:57.08465
418	5	160	enroll	2026-04-26 13:48:57.08465
419	27	147	click	2026-04-26 13:48:57.08465
420	98	501	like	2026-04-26 13:48:57.08465
421	74	156	like	2026-04-26 13:48:57.08465
422	48	623	like	2026-04-26 13:48:57.08465
423	57	476	enroll	2026-04-26 13:48:57.08465
424	181	99	click	2026-04-26 13:48:57.08465
425	112	679	like	2026-04-26 13:48:57.08465
426	160	322	like	2026-04-26 13:48:57.08465
427	87	280	read	2026-04-26 13:48:57.08465
428	54	184	enroll	2026-04-26 13:48:57.08465
429	53	115	enroll	2026-04-26 13:48:57.08465
430	42	366	like	2026-04-26 13:48:57.08465
431	200	175	read	2026-04-26 13:48:57.08465
432	55	623	read	2026-04-26 13:48:57.08465
433	27	402	like	2026-04-26 13:48:57.08465
434	173	425	read	2026-04-26 13:48:57.08465
435	153	973	read	2026-04-26 13:48:57.08465
436	24	919	click	2026-04-26 13:48:57.08465
437	112	883	enroll	2026-04-26 13:48:57.08465
438	81	384	read	2026-04-26 13:48:57.08465
439	38	48	read	2026-04-26 13:48:57.08465
440	68	590	enroll	2026-04-26 13:48:57.08465
441	167	475	read	2026-04-26 13:48:57.08465
442	161	485	like	2026-04-26 13:48:57.08465
443	142	503	click	2026-04-26 13:48:57.08465
444	54	454	click	2026-04-26 13:48:57.08465
445	138	645	click	2026-04-26 13:48:57.08465
446	110	583	read	2026-04-26 13:48:57.08465
447	61	850	enroll	2026-04-26 13:48:57.08465
448	30	37	enroll	2026-04-26 13:48:57.08465
449	142	931	click	2026-04-26 13:48:57.08465
450	54	671	click	2026-04-26 13:48:57.08465
451	132	72	like	2026-04-26 13:48:57.08465
452	123	655	click	2026-04-26 13:48:57.08465
453	145	829	enroll	2026-04-26 13:48:57.08465
454	194	904	like	2026-04-26 13:48:57.08465
455	143	774	click	2026-04-26 13:48:57.08465
456	166	246	click	2026-04-26 13:48:57.08465
457	44	28	enroll	2026-04-26 13:48:57.08465
458	30	311	click	2026-04-26 13:48:57.08465
459	161	93	click	2026-04-26 13:48:57.08465
460	110	757	read	2026-04-26 13:48:57.08465
461	52	929	like	2026-04-26 13:48:57.08465
462	73	406	read	2026-04-26 13:48:57.08465
463	99	957	like	2026-04-26 13:48:57.08465
464	129	378	click	2026-04-26 13:48:57.08465
465	159	271	click	2026-04-26 13:48:57.08465
466	39	107	enroll	2026-04-26 13:48:57.08465
467	82	652	read	2026-04-26 13:48:57.08465
468	14	445	read	2026-04-26 13:48:57.08465
469	65	367	click	2026-04-26 13:48:57.08465
470	78	57	enroll	2026-04-26 13:48:57.08465
471	49	747	read	2026-04-26 13:48:57.08465
472	195	413	click	2026-04-26 13:48:57.08465
473	98	800	read	2026-04-26 13:48:57.08465
474	73	351	click	2026-04-26 13:48:57.08465
475	197	280	enroll	2026-04-26 13:48:57.08465
476	29	247	enroll	2026-04-26 13:48:57.08465
477	50	90	enroll	2026-04-26 13:48:57.08465
478	40	100	like	2026-04-26 13:48:57.08465
479	184	785	enroll	2026-04-26 13:48:57.08465
480	124	35	read	2026-04-26 13:48:57.08465
481	29	617	read	2026-04-26 13:48:57.08465
482	90	24	like	2026-04-26 13:48:57.08465
483	71	571	enroll	2026-04-26 13:48:57.08465
484	158	77	enroll	2026-04-26 13:48:57.08465
485	104	204	read	2026-04-26 13:48:57.08465
486	148	219	like	2026-04-26 13:48:57.08465
487	101	765	enroll	2026-04-26 13:48:57.08465
488	53	872	like	2026-04-26 13:48:57.08465
489	1	269	enroll	2026-04-26 13:48:57.08465
490	104	826	click	2026-04-26 13:48:57.08465
491	33	522	read	2026-04-26 13:48:57.08465
492	77	845	click	2026-04-26 13:48:57.08465
493	33	460	read	2026-04-26 13:48:57.08465
494	142	620	like	2026-04-26 13:48:57.08465
495	178	53	read	2026-04-26 13:48:57.08465
496	3	737	like	2026-04-26 13:48:57.08465
497	49	344	like	2026-04-26 13:48:57.08465
498	175	735	read	2026-04-26 13:48:57.08465
499	200	497	like	2026-04-26 13:48:57.08465
500	61	957	enroll	2026-04-26 13:48:57.08465
501	32	674	read	2026-04-26 13:48:57.08465
502	133	631	click	2026-04-26 13:48:57.08465
503	186	107	click	2026-04-26 13:48:57.08465
504	90	65	enroll	2026-04-26 13:48:57.08465
505	152	999	click	2026-04-26 13:48:57.08465
506	85	959	click	2026-04-26 13:48:57.08465
507	200	272	click	2026-04-26 13:48:57.08465
508	188	706	click	2026-04-26 13:48:57.08465
509	32	601	enroll	2026-04-26 13:48:57.08465
510	90	468	click	2026-04-26 13:48:57.08465
511	25	297	like	2026-04-26 13:48:57.08465
512	115	662	click	2026-04-26 13:48:57.08465
513	73	999	enroll	2026-04-26 13:48:57.08465
514	83	791	read	2026-04-26 13:48:57.08465
515	1	579	click	2026-04-26 13:48:57.08465
516	4	532	like	2026-04-26 13:48:57.08465
517	119	181	like	2026-04-26 13:48:57.08465
518	139	219	like	2026-04-26 13:48:57.08465
519	8	306	click	2026-04-26 13:48:57.08465
520	128	5	like	2026-04-26 13:48:57.08465
521	58	702	enroll	2026-04-26 13:48:57.08465
522	145	43	read	2026-04-26 13:48:57.08465
523	120	18	click	2026-04-26 13:48:57.08465
524	86	975	click	2026-04-26 13:48:57.08465
525	118	622	read	2026-04-26 13:48:57.08465
526	19	78	read	2026-04-26 13:48:57.08465
527	34	406	like	2026-04-26 13:48:57.08465
528	13	177	enroll	2026-04-26 13:48:57.08465
529	134	783	enroll	2026-04-26 13:48:57.08465
530	122	665	click	2026-04-26 13:48:57.08465
531	35	106	enroll	2026-04-26 13:48:57.08465
532	36	674	like	2026-04-26 13:48:57.08465
533	159	595	read	2026-04-26 13:48:57.08465
534	122	940	like	2026-04-26 13:48:57.08465
535	129	99	like	2026-04-26 13:48:57.08465
536	45	920	read	2026-04-26 13:48:57.08465
537	25	521	enroll	2026-04-26 13:48:57.08465
538	63	511	like	2026-04-26 13:48:57.08465
539	67	14	enroll	2026-04-26 13:48:57.08465
540	40	871	click	2026-04-26 13:48:57.08465
541	150	322	read	2026-04-26 13:48:57.08465
542	59	316	like	2026-04-26 13:48:57.08465
543	29	507	enroll	2026-04-26 13:48:57.08465
544	76	922	like	2026-04-26 13:48:57.08465
545	98	554	read	2026-04-26 13:48:57.08465
546	90	216	read	2026-04-26 13:48:57.08465
547	185	253	enroll	2026-04-26 13:48:57.08465
548	44	89	click	2026-04-26 13:48:57.08465
549	71	200	enroll	2026-04-26 13:48:57.08465
550	94	947	read	2026-04-26 13:48:57.08465
551	109	608	enroll	2026-04-26 13:48:57.08465
552	198	304	enroll	2026-04-26 13:48:57.08465
553	10	907	like	2026-04-26 13:48:57.08465
554	37	111	like	2026-04-26 13:48:57.08465
555	58	79	read	2026-04-26 13:48:57.08465
556	41	420	read	2026-04-26 13:48:57.08465
557	165	694	enroll	2026-04-26 13:48:57.08465
558	37	981	like	2026-04-26 13:48:57.08465
559	195	659	read	2026-04-26 13:48:57.08465
560	110	948	read	2026-04-26 13:48:57.08465
561	85	743	enroll	2026-04-26 13:48:57.08465
562	93	568	enroll	2026-04-26 13:48:57.08465
563	83	323	like	2026-04-26 13:48:57.08465
564	126	369	read	2026-04-26 13:48:57.08465
565	14	735	enroll	2026-04-26 13:48:57.08465
566	159	47	click	2026-04-26 13:48:57.08465
567	111	584	enroll	2026-04-26 13:48:57.08465
568	116	647	read	2026-04-26 13:48:57.08465
569	18	156	enroll	2026-04-26 13:48:57.08465
570	162	700	click	2026-04-26 13:48:57.08465
571	140	504	like	2026-04-26 13:48:57.08465
572	14	855	read	2026-04-26 13:48:57.08465
573	198	594	enroll	2026-04-26 13:48:57.08465
574	154	777	read	2026-04-26 13:48:57.08465
575	142	160	click	2026-04-26 13:48:57.08465
576	39	628	read	2026-04-26 13:48:57.08465
577	65	579	read	2026-04-26 13:48:57.08465
578	173	826	click	2026-04-26 13:48:57.08465
579	195	809	click	2026-04-26 13:48:57.08465
580	147	644	read	2026-04-26 13:48:57.08465
581	110	505	read	2026-04-26 13:48:57.08465
582	172	400	click	2026-04-26 13:48:57.08465
583	175	860	read	2026-04-26 13:48:57.08465
584	9	470	enroll	2026-04-26 13:48:57.08465
585	9	612	read	2026-04-26 13:48:57.08465
586	126	17	click	2026-04-26 13:48:57.08465
587	71	163	enroll	2026-04-26 13:48:57.08465
588	1	145	enroll	2026-04-26 13:48:57.08465
589	197	172	like	2026-04-26 13:48:57.08465
590	63	851	enroll	2026-04-26 13:48:57.08465
591	40	442	read	2026-04-26 13:48:57.08465
592	89	748	read	2026-04-26 13:48:57.08465
593	150	395	like	2026-04-26 13:48:57.08465
594	118	653	enroll	2026-04-26 13:48:57.08465
595	6	320	read	2026-04-26 13:48:57.08465
596	90	128	click	2026-04-26 13:48:57.08465
597	160	564	click	2026-04-26 13:48:57.08465
598	146	768	enroll	2026-04-26 13:48:57.08465
599	17	171	click	2026-04-26 13:48:57.08465
600	75	397	like	2026-04-26 13:48:57.08465
601	58	943	enroll	2026-04-26 13:48:57.08465
602	159	440	like	2026-04-26 13:48:57.08465
603	106	178	read	2026-04-26 13:48:57.08465
604	129	669	read	2026-04-26 13:48:57.08465
605	142	399	enroll	2026-04-26 13:48:57.08465
606	50	680	enroll	2026-04-26 13:48:57.08465
607	94	183	like	2026-04-26 13:48:57.08465
608	73	710	enroll	2026-04-26 13:48:57.08465
609	52	534	read	2026-04-26 13:48:57.08465
610	42	235	click	2026-04-26 13:48:57.08465
611	151	832	click	2026-04-26 13:48:57.08465
612	114	886	enroll	2026-04-26 13:48:57.08465
613	130	924	click	2026-04-26 13:48:57.08465
614	78	127	click	2026-04-26 13:48:57.08465
615	3	706	like	2026-04-26 13:48:57.08465
616	59	253	click	2026-04-26 13:48:57.08465
617	184	11	like	2026-04-26 13:48:57.08465
618	200	571	click	2026-04-26 13:48:57.08465
619	162	579	read	2026-04-26 13:48:57.08465
620	90	356	read	2026-04-26 13:48:57.08465
621	169	914	click	2026-04-26 13:48:57.08465
622	193	196	like	2026-04-26 13:48:57.08465
623	72	735	enroll	2026-04-26 13:48:57.08465
624	182	564	click	2026-04-26 13:48:57.08465
625	34	970	read	2026-04-26 13:48:57.08465
626	59	375	click	2026-04-26 13:48:57.08465
627	13	999	like	2026-04-26 13:48:57.08465
628	161	906	click	2026-04-26 13:48:57.08465
629	33	928	like	2026-04-26 13:48:57.08465
630	11	874	click	2026-04-26 13:48:57.08465
631	38	424	enroll	2026-04-26 13:48:57.08465
632	14	682	like	2026-04-26 13:48:57.08465
633	15	403	enroll	2026-04-26 13:48:57.08465
634	118	999	enroll	2026-04-26 13:48:57.08465
635	117	34	enroll	2026-04-26 13:48:57.08465
636	78	879	enroll	2026-04-26 13:48:57.08465
637	95	892	read	2026-04-26 13:48:57.08465
638	171	38	like	2026-04-26 13:48:57.08465
639	149	957	like	2026-04-26 13:48:57.08465
640	40	305	read	2026-04-26 13:48:57.08465
641	26	155	read	2026-04-26 13:48:57.08465
642	153	131	read	2026-04-26 13:48:57.08465
643	191	336	click	2026-04-26 13:48:57.08465
644	107	77	like	2026-04-26 13:48:57.08465
645	47	950	like	2026-04-26 13:48:57.08465
646	117	679	enroll	2026-04-26 13:48:57.08465
647	56	381	enroll	2026-04-26 13:48:57.08465
648	193	202	like	2026-04-26 13:48:57.08465
649	74	777	click	2026-04-26 13:48:57.08465
650	164	973	read	2026-04-26 13:48:57.08465
651	169	737	read	2026-04-26 13:48:57.08465
652	42	762	read	2026-04-26 13:48:57.08465
653	191	355	click	2026-04-26 13:48:57.08465
654	125	436	click	2026-04-26 13:48:57.08465
655	4	171	click	2026-04-26 13:48:57.08465
656	93	101	enroll	2026-04-26 13:48:57.08465
657	76	589	enroll	2026-04-26 13:48:57.08465
658	183	873	click	2026-04-26 13:48:57.08465
659	104	606	like	2026-04-26 13:48:57.08465
660	58	583	like	2026-04-26 13:48:57.08465
661	94	146	enroll	2026-04-26 13:48:57.08465
662	72	228	enroll	2026-04-26 13:48:57.08465
663	33	691	enroll	2026-04-26 13:48:57.08465
664	50	320	read	2026-04-26 13:48:57.08465
665	118	940	click	2026-04-26 13:48:57.08465
666	182	820	click	2026-04-26 13:48:57.08465
667	115	642	enroll	2026-04-26 13:48:57.08465
668	90	356	read	2026-04-26 13:48:57.08465
669	109	98	enroll	2026-04-26 13:48:57.08465
670	198	704	like	2026-04-26 13:48:57.08465
671	5	138	enroll	2026-04-26 13:48:57.08465
672	3	862	enroll	2026-04-26 13:48:57.08465
673	40	141	click	2026-04-26 13:48:57.08465
674	105	835	like	2026-04-26 13:48:57.08465
675	123	404	enroll	2026-04-26 13:48:57.08465
676	87	305	enroll	2026-04-26 13:48:57.08465
677	129	681	like	2026-04-26 13:48:57.08465
678	53	953	read	2026-04-26 13:48:57.08465
679	30	965	click	2026-04-26 13:48:57.08465
680	71	373	read	2026-04-26 13:48:57.08465
681	67	151	enroll	2026-04-26 13:48:57.08465
682	123	908	enroll	2026-04-26 13:48:57.08465
683	49	378	click	2026-04-26 13:48:57.08465
684	82	275	like	2026-04-26 13:48:57.08465
685	165	30	enroll	2026-04-26 13:48:57.08465
686	41	717	click	2026-04-26 13:48:57.08465
687	147	744	click	2026-04-26 13:48:57.08465
688	47	132	enroll	2026-04-26 13:48:57.08465
689	23	474	read	2026-04-26 13:48:57.08465
690	118	382	read	2026-04-26 13:48:57.08465
691	93	234	enroll	2026-04-26 13:48:57.08465
692	33	675	click	2026-04-26 13:48:57.08465
693	194	320	click	2026-04-26 13:48:57.08465
694	189	319	enroll	2026-04-26 13:48:57.08465
695	194	505	like	2026-04-26 13:48:57.08465
696	51	597	read	2026-04-26 13:48:57.08465
697	59	690	enroll	2026-04-26 13:48:57.08465
698	131	809	click	2026-04-26 13:48:57.08465
699	120	363	enroll	2026-04-26 13:48:57.08465
700	86	242	like	2026-04-26 13:48:57.08465
701	7	73	enroll	2026-04-26 13:48:57.08465
702	104	613	read	2026-04-26 13:48:57.08465
703	21	94	like	2026-04-26 13:48:57.08465
704	149	914	click	2026-04-26 13:48:57.08465
705	13	973	enroll	2026-04-26 13:48:57.08465
706	195	197	read	2026-04-26 13:48:57.08465
707	10	748	read	2026-04-26 13:48:57.08465
708	4	186	read	2026-04-26 13:48:57.08465
709	65	510	enroll	2026-04-26 13:48:57.08465
710	183	477	read	2026-04-26 13:48:57.08465
711	142	716	like	2026-04-26 13:48:57.08465
712	146	406	enroll	2026-04-26 13:48:57.08465
713	162	703	click	2026-04-26 13:48:57.08465
714	60	83	enroll	2026-04-26 13:48:57.08465
715	165	392	like	2026-04-26 13:48:57.08465
716	16	800	click	2026-04-26 13:48:57.08465
717	47	976	enroll	2026-04-26 13:48:57.08465
718	50	723	enroll	2026-04-26 13:48:57.08465
719	43	453	read	2026-04-26 13:48:57.08465
720	90	827	enroll	2026-04-26 13:48:57.08465
721	23	756	click	2026-04-26 13:48:57.08465
722	3	765	like	2026-04-26 13:48:57.08465
723	195	169	enroll	2026-04-26 13:48:57.08465
724	64	460	read	2026-04-26 13:48:57.08465
725	67	952	like	2026-04-26 13:48:57.08465
726	28	508	click	2026-04-26 13:48:57.08465
727	181	309	read	2026-04-26 13:48:57.08465
728	41	978	like	2026-04-26 13:48:57.08465
729	119	539	read	2026-04-26 13:48:57.08465
730	104	802	enroll	2026-04-26 13:48:57.08465
731	76	612	enroll	2026-04-26 13:48:57.08465
732	23	471	click	2026-04-26 13:48:57.08465
733	193	714	enroll	2026-04-26 13:48:57.08465
734	200	713	enroll	2026-04-26 13:48:57.08465
735	87	767	click	2026-04-26 13:48:57.08465
736	142	942	enroll	2026-04-26 13:48:57.08465
737	56	604	enroll	2026-04-26 13:48:57.08465
738	106	768	click	2026-04-26 13:48:57.08465
739	176	316	read	2026-04-26 13:48:57.08465
740	172	15	read	2026-04-26 13:48:57.08465
741	141	927	read	2026-04-26 13:48:57.08465
742	181	601	like	2026-04-26 13:48:57.08465
743	50	197	like	2026-04-26 13:48:57.08465
744	60	900	like	2026-04-26 13:48:57.08465
745	24	322	enroll	2026-04-26 13:48:57.08465
746	186	620	click	2026-04-26 13:48:57.08465
747	20	647	enroll	2026-04-26 13:48:57.08465
748	21	189	read	2026-04-26 13:48:57.08465
749	32	332	read	2026-04-26 13:48:57.08465
750	51	681	enroll	2026-04-26 13:48:57.08465
751	178	246	read	2026-04-26 13:48:57.08465
752	127	966	click	2026-04-26 13:48:57.08465
753	5	302	enroll	2026-04-26 13:48:57.08465
754	112	768	click	2026-04-26 13:48:57.08465
755	142	208	read	2026-04-26 13:48:57.08465
756	106	786	enroll	2026-04-26 13:48:57.08465
757	7	674	enroll	2026-04-26 13:48:57.08465
758	176	963	enroll	2026-04-26 13:48:57.08465
759	125	992	like	2026-04-26 13:48:57.08465
760	99	641	enroll	2026-04-26 13:48:57.08465
761	8	76	read	2026-04-26 13:48:57.08465
762	80	55	read	2026-04-26 13:48:57.08465
763	156	357	read	2026-04-26 13:48:57.08465
764	65	93	like	2026-04-26 13:48:57.08465
765	16	59	click	2026-04-26 13:48:57.08465
766	164	441	like	2026-04-26 13:48:57.08465
767	151	917	click	2026-04-26 13:48:57.08465
768	93	808	click	2026-04-26 13:48:57.08465
769	153	593	like	2026-04-26 13:48:57.08465
770	5	782	like	2026-04-26 13:48:57.08465
771	106	692	click	2026-04-26 13:48:57.08465
772	196	179	enroll	2026-04-26 13:48:57.08465
773	12	206	read	2026-04-26 13:48:57.08465
774	20	468	read	2026-04-26 13:48:57.08465
775	17	63	click	2026-04-26 13:48:57.08465
776	58	583	enroll	2026-04-26 13:48:57.08465
777	180	353	read	2026-04-26 13:48:57.08465
778	27	126	like	2026-04-26 13:48:57.08465
779	77	55	click	2026-04-26 13:48:57.08465
780	161	278	enroll	2026-04-26 13:48:57.08465
781	98	336	read	2026-04-26 13:48:57.08465
782	151	229	read	2026-04-26 13:48:57.08465
783	93	901	like	2026-04-26 13:48:57.08465
784	200	998	read	2026-04-26 13:48:57.08465
785	78	770	read	2026-04-26 13:48:57.08465
786	57	350	read	2026-04-26 13:48:57.08465
787	42	656	click	2026-04-26 13:48:57.08465
788	45	817	like	2026-04-26 13:48:57.08465
789	62	169	read	2026-04-26 13:48:57.08465
790	162	891	like	2026-04-26 13:48:57.08465
791	162	51	read	2026-04-26 13:48:57.08465
792	92	275	read	2026-04-26 13:48:57.08465
793	78	536	enroll	2026-04-26 13:48:57.08465
794	174	156	enroll	2026-04-26 13:48:57.08465
795	89	142	enroll	2026-04-26 13:48:57.08465
796	130	886	read	2026-04-26 13:48:57.08465
797	99	216	click	2026-04-26 13:48:57.08465
798	76	70	like	2026-04-26 13:48:57.08465
799	3	810	read	2026-04-26 13:48:57.08465
800	194	205	like	2026-04-26 13:48:57.08465
801	103	381	click	2026-04-26 13:48:57.08465
802	58	89	enroll	2026-04-26 13:48:57.08465
803	92	785	click	2026-04-26 13:48:57.08465
804	101	615	click	2026-04-26 13:48:57.08465
805	3	178	enroll	2026-04-26 13:48:57.08465
806	56	873	like	2026-04-26 13:48:57.08465
807	31	138	click	2026-04-26 13:48:57.08465
808	77	596	like	2026-04-26 13:48:57.08465
809	170	257	enroll	2026-04-26 13:48:57.08465
810	13	963	read	2026-04-26 13:48:57.08465
811	152	525	enroll	2026-04-26 13:48:57.08465
812	14	391	click	2026-04-26 13:48:57.08465
813	162	841	click	2026-04-26 13:48:57.08465
814	160	300	read	2026-04-26 13:48:57.08465
815	169	619	enroll	2026-04-26 13:48:57.08465
816	133	906	enroll	2026-04-26 13:48:57.08465
817	193	199	enroll	2026-04-26 13:48:57.08465
818	41	46	enroll	2026-04-26 13:48:57.08465
819	76	575	enroll	2026-04-26 13:48:57.08465
820	159	578	like	2026-04-26 13:48:57.08465
821	37	996	like	2026-04-26 13:48:57.08465
822	103	698	click	2026-04-26 13:48:57.08465
823	133	589	like	2026-04-26 13:48:57.08465
824	143	867	like	2026-04-26 13:48:57.08465
825	169	406	read	2026-04-26 13:48:57.08465
826	48	290	enroll	2026-04-26 13:48:57.08465
827	67	400	read	2026-04-26 13:48:57.08465
828	65	288	read	2026-04-26 13:48:57.08465
829	11	467	like	2026-04-26 13:48:57.08465
830	19	150	enroll	2026-04-26 13:48:57.08465
831	181	376	read	2026-04-26 13:48:57.08465
832	27	387	click	2026-04-26 13:48:57.08465
833	128	407	read	2026-04-26 13:48:57.08465
834	192	872	like	2026-04-26 13:48:57.08465
835	3	984	click	2026-04-26 13:48:57.08465
836	13	283	click	2026-04-26 13:48:57.08465
837	177	986	click	2026-04-26 13:48:57.08465
838	31	927	enroll	2026-04-26 13:48:57.08465
839	107	363	enroll	2026-04-26 13:48:57.08465
840	182	608	enroll	2026-04-26 13:48:57.08465
841	76	127	read	2026-04-26 13:48:57.08465
842	17	978	like	2026-04-26 13:48:57.08465
843	163	471	click	2026-04-26 13:48:57.08465
844	14	747	read	2026-04-26 13:48:57.08465
845	17	360	like	2026-04-26 13:48:57.08465
846	27	64	click	2026-04-26 13:48:57.08465
847	82	459	click	2026-04-26 13:48:57.08465
848	81	329	enroll	2026-04-26 13:48:57.08465
849	186	57	like	2026-04-26 13:48:57.08465
850	75	234	read	2026-04-26 13:48:57.08465
851	135	128	enroll	2026-04-26 13:48:57.08465
852	43	838	like	2026-04-26 13:48:57.08465
853	162	983	like	2026-04-26 13:48:57.08465
854	14	152	enroll	2026-04-26 13:48:57.08465
855	95	893	read	2026-04-26 13:48:57.08465
856	143	577	enroll	2026-04-26 13:48:57.08465
857	197	316	like	2026-04-26 13:48:57.08465
858	177	544	click	2026-04-26 13:48:57.08465
859	195	389	read	2026-04-26 13:48:57.08465
860	100	114	enroll	2026-04-26 13:48:57.08465
861	71	870	like	2026-04-26 13:48:57.08465
862	194	301	like	2026-04-26 13:48:57.08465
863	187	496	click	2026-04-26 13:48:57.08465
864	56	658	read	2026-04-26 13:48:57.08465
865	199	349	read	2026-04-26 13:48:57.08465
866	44	263	read	2026-04-26 13:48:57.08465
867	191	737	click	2026-04-26 13:48:57.08465
868	44	550	like	2026-04-26 13:48:57.08465
869	79	865	enroll	2026-04-26 13:48:57.08465
870	135	570	click	2026-04-26 13:48:57.08465
871	138	783	read	2026-04-26 13:48:57.08465
872	65	117	click	2026-04-26 13:48:57.08465
873	147	946	like	2026-04-26 13:48:57.08465
874	75	943	like	2026-04-26 13:48:57.08465
875	61	179	like	2026-04-26 13:48:57.08465
876	194	966	like	2026-04-26 13:48:57.08465
877	93	881	like	2026-04-26 13:48:57.08465
878	187	422	enroll	2026-04-26 13:48:57.08465
879	131	663	click	2026-04-26 13:48:57.08465
880	18	399	like	2026-04-26 13:48:57.08465
881	181	764	read	2026-04-26 13:48:57.08465
882	136	942	enroll	2026-04-26 13:48:57.08465
883	46	616	like	2026-04-26 13:48:57.08465
884	168	359	click	2026-04-26 13:48:57.08465
885	22	70	read	2026-04-26 13:48:57.08465
886	183	672	click	2026-04-26 13:48:57.08465
887	141	239	enroll	2026-04-26 13:48:57.08465
888	47	193	read	2026-04-26 13:48:57.08465
889	48	524	like	2026-04-26 13:48:57.08465
890	80	907	click	2026-04-26 13:48:57.08465
891	86	576	click	2026-04-26 13:48:57.08465
892	135	533	click	2026-04-26 13:48:57.08465
893	61	580	click	2026-04-26 13:48:57.08465
894	65	731	read	2026-04-26 13:48:57.08465
895	74	116	click	2026-04-26 13:48:57.08465
896	179	919	read	2026-04-26 13:48:57.08465
897	103	269	read	2026-04-26 13:48:57.08465
898	199	442	click	2026-04-26 13:48:57.08465
899	115	834	click	2026-04-26 13:48:57.08465
900	72	432	enroll	2026-04-26 13:48:57.08465
901	93	682	like	2026-04-26 13:48:57.08465
902	185	998	click	2026-04-26 13:48:57.08465
903	187	49	like	2026-04-26 13:48:57.08465
904	69	745	read	2026-04-26 13:48:57.08465
905	80	973	enroll	2026-04-26 13:48:57.08465
906	25	878	enroll	2026-04-26 13:48:57.08465
907	80	247	enroll	2026-04-26 13:48:57.08465
908	104	544	like	2026-04-26 13:48:57.08465
909	55	673	enroll	2026-04-26 13:48:57.08465
910	48	823	like	2026-04-26 13:48:57.08465
911	162	983	read	2026-04-26 13:48:57.08465
912	129	243	like	2026-04-26 13:48:57.08465
913	162	837	like	2026-04-26 13:48:57.08465
914	34	922	enroll	2026-04-26 13:48:57.08465
915	176	727	click	2026-04-26 13:48:57.08465
916	50	144	enroll	2026-04-26 13:48:57.08465
917	6	554	click	2026-04-26 13:48:57.08465
918	102	603	like	2026-04-26 13:48:57.08465
919	1	401	click	2026-04-26 13:48:57.08465
920	130	530	like	2026-04-26 13:48:57.08465
921	90	108	click	2026-04-26 13:48:57.08465
922	127	1	like	2026-04-26 13:48:57.08465
923	78	714	read	2026-04-26 13:48:57.08465
924	103	285	read	2026-04-26 13:48:57.08465
925	155	291	like	2026-04-26 13:48:57.08465
926	26	791	enroll	2026-04-26 13:48:57.08465
927	169	665	read	2026-04-26 13:48:57.08465
928	154	383	like	2026-04-26 13:48:57.08465
929	124	708	read	2026-04-26 13:48:57.08465
930	14	806	click	2026-04-26 13:48:57.08465
931	99	330	read	2026-04-26 13:48:57.08465
932	35	284	read	2026-04-26 13:48:57.08465
933	169	854	like	2026-04-26 13:48:57.08465
934	16	759	like	2026-04-26 13:48:57.08465
935	64	298	read	2026-04-26 13:48:57.08465
936	47	932	enroll	2026-04-26 13:48:57.08465
937	172	442	click	2026-04-26 13:48:57.08465
938	19	701	like	2026-04-26 13:48:57.08465
939	82	682	click	2026-04-26 13:48:57.08465
940	25	787	enroll	2026-04-26 13:48:57.08465
941	160	74	read	2026-04-26 13:48:57.08465
942	20	488	click	2026-04-26 13:48:57.08465
943	97	433	like	2026-04-26 13:48:57.08465
944	73	437	enroll	2026-04-26 13:48:57.08465
945	85	544	enroll	2026-04-26 13:48:57.08465
946	104	957	read	2026-04-26 13:48:57.08465
947	66	80	read	2026-04-26 13:48:57.08465
948	20	712	like	2026-04-26 13:48:57.08465
949	130	398	like	2026-04-26 13:48:57.08465
950	79	398	like	2026-04-26 13:48:57.08465
951	161	174	like	2026-04-26 13:48:57.08465
952	78	931	like	2026-04-26 13:48:57.08465
953	26	119	read	2026-04-26 13:48:57.08465
954	54	943	like	2026-04-26 13:48:57.08465
955	72	534	enroll	2026-04-26 13:48:57.08465
956	143	802	read	2026-04-26 13:48:57.08465
957	54	873	like	2026-04-26 13:48:57.08465
958	15	772	click	2026-04-26 13:48:57.08465
959	127	538	like	2026-04-26 13:48:57.08465
960	124	392	click	2026-04-26 13:48:57.08465
961	23	945	like	2026-04-26 13:48:57.08465
962	169	57	like	2026-04-26 13:48:57.08465
963	14	463	click	2026-04-26 13:48:57.08465
964	7	616	enroll	2026-04-26 13:48:57.08465
965	141	319	read	2026-04-26 13:48:57.08465
966	35	396	like	2026-04-26 13:48:57.08465
967	67	740	click	2026-04-26 13:48:57.08465
968	40	493	enroll	2026-04-26 13:48:57.08465
969	33	544	click	2026-04-26 13:48:57.08465
970	94	76	read	2026-04-26 13:48:57.08465
971	4	590	click	2026-04-26 13:48:57.08465
972	148	945	enroll	2026-04-26 13:48:57.08465
973	6	619	read	2026-04-26 13:48:57.08465
974	20	100	like	2026-04-26 13:48:57.08465
975	116	205	click	2026-04-26 13:48:57.08465
976	195	848	click	2026-04-26 13:48:57.08465
977	189	189	enroll	2026-04-26 13:48:57.08465
978	124	755	like	2026-04-26 13:48:57.08465
979	48	98	read	2026-04-26 13:48:57.08465
980	81	513	enroll	2026-04-26 13:48:57.08465
981	91	659	read	2026-04-26 13:48:57.08465
982	67	557	like	2026-04-26 13:48:57.08465
983	171	565	enroll	2026-04-26 13:48:57.08465
984	29	511	read	2026-04-26 13:48:57.08465
985	20	708	click	2026-04-26 13:48:57.08465
986	145	690	like	2026-04-26 13:48:57.08465
987	164	545	enroll	2026-04-26 13:48:57.08465
988	122	967	click	2026-04-26 13:48:57.08465
989	25	677	click	2026-04-26 13:48:57.08465
990	179	717	like	2026-04-26 13:48:57.08465
991	49	598	like	2026-04-26 13:48:57.08465
992	125	872	click	2026-04-26 13:48:57.08465
993	59	216	enroll	2026-04-26 13:48:57.08465
994	44	589	enroll	2026-04-26 13:48:57.08465
995	57	789	click	2026-04-26 13:48:57.08465
996	81	62	read	2026-04-26 13:48:57.08465
997	47	130	enroll	2026-04-26 13:48:57.08465
998	193	623	read	2026-04-26 13:48:57.08465
999	91	911	like	2026-04-26 13:48:57.08465
1000	96	623	like	2026-04-26 13:48:57.08465
1001	1	1	click	2026-04-26 13:48:57.08465
1002	139	11	read	2026-04-26 13:48:57.08465
1003	159	482	like	2026-04-26 13:48:57.08465
1004	136	190	like	2026-04-26 13:48:57.08465
1005	186	721	click	2026-04-26 13:48:57.08465
1006	182	7	like	2026-04-26 13:48:57.08465
1007	17	998	read	2026-04-26 13:48:57.08465
1008	180	585	click	2026-04-26 13:48:57.08465
1009	77	94	enroll	2026-04-26 13:48:57.08465
1010	162	207	enroll	2026-04-26 13:48:57.08465
1011	68	733	click	2026-04-26 13:48:57.08465
1012	94	745	read	2026-04-26 13:48:57.08465
1013	3	317	like	2026-04-26 13:48:57.08465
1014	176	586	like	2026-04-26 13:48:57.08465
1015	123	453	like	2026-04-26 13:48:57.08465
1016	149	809	like	2026-04-26 13:48:57.08465
1017	168	469	read	2026-04-26 13:48:57.08465
1018	37	982	read	2026-04-26 13:48:57.08465
1019	187	812	like	2026-04-26 13:48:57.08465
1020	20	2	read	2026-04-26 13:48:57.08465
1021	121	900	like	2026-04-26 13:48:57.08465
1022	32	342	like	2026-04-26 13:48:57.08465
1023	137	829	click	2026-04-26 13:48:57.08465
1024	35	843	enroll	2026-04-26 13:48:57.08465
1025	75	369	enroll	2026-04-26 13:48:57.08465
1026	66	974	read	2026-04-26 13:48:57.08465
1027	47	663	read	2026-04-26 13:48:57.08465
1028	154	274	click	2026-04-26 13:48:57.08465
1029	85	119	read	2026-04-26 13:48:57.08465
1030	197	423	click	2026-04-26 13:48:57.08465
1031	57	350	click	2026-04-26 13:48:57.08465
1032	200	754	click	2026-04-26 13:48:57.08465
1033	171	106	enroll	2026-04-26 13:48:57.08465
1034	122	378	read	2026-04-26 13:48:57.08465
1035	86	637	enroll	2026-04-26 13:48:57.08465
1036	126	383	read	2026-04-26 13:48:57.08465
1037	18	466	click	2026-04-26 13:48:57.08465
1038	158	305	enroll	2026-04-26 13:48:57.08465
1039	62	971	read	2026-04-26 13:48:57.08465
1040	22	644	enroll	2026-04-26 13:48:57.08465
1041	14	942	click	2026-04-26 13:48:57.08465
1042	15	725	enroll	2026-04-26 13:48:57.08465
1043	55	299	enroll	2026-04-26 13:48:57.08465
1044	155	270	read	2026-04-26 13:48:57.08465
1045	168	439	enroll	2026-04-26 13:48:57.08465
1046	194	977	read	2026-04-26 13:48:57.08465
1047	157	827	read	2026-04-26 13:48:57.08465
1048	75	432	enroll	2026-04-26 13:48:57.08465
1049	82	461	read	2026-04-26 13:48:57.08465
1050	183	936	like	2026-04-26 13:48:57.08465
1051	40	256	like	2026-04-26 13:48:57.08465
1052	36	394	like	2026-04-26 13:48:57.08465
1053	164	56	enroll	2026-04-26 13:48:57.08465
1054	42	295	enroll	2026-04-26 13:48:57.08465
1055	75	201	read	2026-04-26 13:48:57.08465
1056	35	842	click	2026-04-26 13:48:57.08465
1057	175	741	click	2026-04-26 13:48:57.08465
1058	53	941	enroll	2026-04-26 13:48:57.08465
1059	46	17	click	2026-04-26 13:48:57.08465
1060	51	724	read	2026-04-26 13:48:57.08465
1061	182	774	like	2026-04-26 13:48:57.08465
1062	154	460	click	2026-04-26 13:48:57.08465
1063	123	675	like	2026-04-26 13:48:57.08465
1064	99	748	click	2026-04-26 13:48:57.08465
1065	188	690	click	2026-04-26 13:48:57.08465
1066	136	116	click	2026-04-26 13:48:57.08465
1067	47	184	enroll	2026-04-26 13:48:57.08465
1068	75	275	enroll	2026-04-26 13:48:57.08465
1069	88	404	click	2026-04-26 13:48:57.08465
1070	5	332	enroll	2026-04-26 13:48:57.08465
1071	164	519	click	2026-04-26 13:48:57.08465
1072	198	487	read	2026-04-26 13:48:57.08465
1073	106	294	read	2026-04-26 13:48:57.08465
1074	40	955	read	2026-04-26 13:48:57.08465
1075	139	332	click	2026-04-26 13:48:57.08465
1076	172	683	like	2026-04-26 13:48:57.08465
1077	154	442	click	2026-04-26 13:48:57.08465
1078	14	877	read	2026-04-26 13:48:57.08465
1079	78	366	enroll	2026-04-26 13:48:57.08465
1080	4	874	like	2026-04-26 13:48:57.08465
1081	161	263	read	2026-04-26 13:48:57.08465
1082	19	205	like	2026-04-26 13:48:57.08465
1083	66	327	like	2026-04-26 13:48:57.08465
1084	159	363	read	2026-04-26 13:48:57.08465
1085	53	354	read	2026-04-26 13:48:57.08465
1086	13	494	enroll	2026-04-26 13:48:57.08465
1087	51	836	enroll	2026-04-26 13:48:57.08465
1088	106	69	enroll	2026-04-26 13:48:57.08465
1089	197	423	read	2026-04-26 13:48:57.08465
1090	193	431	enroll	2026-04-26 13:48:57.08465
1091	51	668	click	2026-04-26 13:48:57.08465
1092	46	528	click	2026-04-26 13:48:57.08465
1093	54	351	click	2026-04-26 13:48:57.08465
1094	33	772	click	2026-04-26 13:48:57.08465
1095	161	389	like	2026-04-26 13:48:57.08465
1096	117	375	read	2026-04-26 13:48:57.08465
1097	162	544	like	2026-04-26 13:48:57.08465
1098	40	409	enroll	2026-04-26 13:48:57.08465
1099	55	380	enroll	2026-04-26 13:48:57.08465
1100	41	863	click	2026-04-26 13:48:57.08465
1101	128	528	enroll	2026-04-26 13:48:57.08465
1102	147	102	enroll	2026-04-26 13:48:57.08465
1103	75	524	enroll	2026-04-26 13:48:57.08465
1104	122	609	read	2026-04-26 13:48:57.08465
1105	74	531	enroll	2026-04-26 13:48:57.08465
1106	124	922	click	2026-04-26 13:48:57.08465
1107	55	430	enroll	2026-04-26 13:48:57.08465
1108	80	930	enroll	2026-04-26 13:48:57.08465
1109	66	192	enroll	2026-04-26 13:48:57.08465
1110	197	732	read	2026-04-26 13:48:57.08465
1111	155	706	like	2026-04-26 13:48:57.08465
1112	58	402	click	2026-04-26 13:48:57.08465
1113	182	333	click	2026-04-26 13:48:57.08465
1114	146	109	click	2026-04-26 13:48:57.08465
1115	84	858	like	2026-04-26 13:48:57.08465
1116	116	997	enroll	2026-04-26 13:48:57.08465
1117	177	579	read	2026-04-26 13:48:57.08465
1118	42	527	enroll	2026-04-26 13:48:57.08465
1119	35	618	read	2026-04-26 13:48:57.08465
1120	2	880	enroll	2026-04-26 13:48:57.08465
1121	121	158	enroll	2026-04-26 13:48:57.08465
1122	61	349	enroll	2026-04-26 13:48:57.08465
1123	127	785	read	2026-04-26 13:48:57.08465
1124	104	68	read	2026-04-26 13:48:57.08465
1125	44	247	enroll	2026-04-26 13:48:57.08465
1126	151	372	click	2026-04-26 13:48:57.08465
1127	22	651	click	2026-04-26 13:48:57.08465
1128	117	97	enroll	2026-04-26 13:48:57.08465
1129	34	716	click	2026-04-26 13:48:57.08465
1130	100	718	read	2026-04-26 13:48:57.08465
1131	54	989	like	2026-04-26 13:48:57.08465
1132	123	356	like	2026-04-26 13:48:57.08465
1133	120	222	enroll	2026-04-26 13:48:57.08465
1134	47	557	read	2026-04-26 13:48:57.08465
1135	149	847	like	2026-04-26 13:48:57.08465
1136	189	433	read	2026-04-26 13:48:57.08465
1137	81	318	like	2026-04-26 13:48:57.08465
1138	140	503	click	2026-04-26 13:48:57.08465
1139	56	735	click	2026-04-26 13:48:57.08465
1140	65	416	click	2026-04-26 13:48:57.08465
1141	144	482	like	2026-04-26 13:48:57.08465
1142	174	540	read	2026-04-26 13:48:57.08465
1143	139	851	enroll	2026-04-26 13:48:57.08465
1144	152	729	enroll	2026-04-26 13:48:57.08465
1145	82	749	read	2026-04-26 13:48:57.08465
1146	68	419	read	2026-04-26 13:48:57.08465
1147	11	314	enroll	2026-04-26 13:48:57.08465
1148	148	937	like	2026-04-26 13:48:57.08465
1149	104	198	read	2026-04-26 13:48:57.08465
1150	143	404	enroll	2026-04-26 13:48:57.08465
1151	62	171	read	2026-04-26 13:48:57.08465
1152	100	903	enroll	2026-04-26 13:48:57.08465
1153	105	656	like	2026-04-26 13:48:57.08465
1154	36	412	like	2026-04-26 13:48:57.08465
1155	143	583	read	2026-04-26 13:48:57.08465
1156	98	479	enroll	2026-04-26 13:48:57.08465
1157	183	121	enroll	2026-04-26 13:48:57.08465
1158	97	165	like	2026-04-26 13:48:57.08465
1159	18	801	like	2026-04-26 13:48:57.08465
1160	130	6	click	2026-04-26 13:48:57.08465
1161	124	112	enroll	2026-04-26 13:48:57.08465
1162	140	466	like	2026-04-26 13:48:57.08465
1163	111	596	enroll	2026-04-26 13:48:57.08465
1164	43	682	enroll	2026-04-26 13:48:57.08465
1165	15	766	read	2026-04-26 13:48:57.08465
1166	183	31	click	2026-04-26 13:48:57.08465
1167	101	56	enroll	2026-04-26 13:48:57.08465
1168	57	378	click	2026-04-26 13:48:57.08465
1169	32	243	click	2026-04-26 13:48:57.08465
1170	102	787	click	2026-04-26 13:48:57.08465
1171	105	770	enroll	2026-04-26 13:48:57.08465
1172	143	613	read	2026-04-26 13:48:57.08465
1173	166	488	read	2026-04-26 13:48:57.08465
1174	40	878	click	2026-04-26 13:48:57.08465
1175	168	434	read	2026-04-26 13:48:57.08465
1176	175	720	read	2026-04-26 13:48:57.08465
1177	90	169	read	2026-04-26 13:48:57.08465
1178	127	123	enroll	2026-04-26 13:48:57.08465
1179	5	103	click	2026-04-26 13:48:57.08465
1180	84	847	like	2026-04-26 13:48:57.08465
1181	5	233	click	2026-04-26 13:48:57.08465
1182	180	894	click	2026-04-26 13:48:57.08465
1183	83	894	enroll	2026-04-26 13:48:57.08465
1184	189	779	like	2026-04-26 13:48:57.08465
1185	186	53	like	2026-04-26 13:48:57.08465
1186	198	291	like	2026-04-26 13:48:57.08465
1187	36	854	click	2026-04-26 13:48:57.08465
1188	131	514	click	2026-04-26 13:48:57.08465
1189	46	675	read	2026-04-26 13:48:57.08465
1190	179	89	click	2026-04-26 13:48:57.08465
1191	64	797	like	2026-04-26 13:48:57.08465
1192	43	384	enroll	2026-04-26 13:48:57.08465
1193	70	398	enroll	2026-04-26 13:48:57.08465
1194	109	842	enroll	2026-04-26 13:48:57.08465
1195	93	797	enroll	2026-04-26 13:48:57.08465
1196	27	757	read	2026-04-26 13:48:57.08465
1197	132	763	enroll	2026-04-26 13:48:57.08465
1198	163	180	enroll	2026-04-26 13:48:57.08465
1199	121	383	click	2026-04-26 13:48:57.08465
1200	58	788	enroll	2026-04-26 13:48:57.08465
1201	26	425	like	2026-04-26 13:48:57.08465
1202	33	920	enroll	2026-04-26 13:48:57.08465
1203	42	678	like	2026-04-26 13:48:57.08465
1204	133	754	read	2026-04-26 13:48:57.08465
1205	34	226	read	2026-04-26 13:48:57.08465
1206	151	879	click	2026-04-26 13:48:57.08465
1207	146	218	read	2026-04-26 13:48:57.08465
1208	147	917	read	2026-04-26 13:48:57.08465
1209	157	842	enroll	2026-04-26 13:48:57.08465
1210	177	582	read	2026-04-26 13:48:57.08465
1211	22	742	like	2026-04-26 13:48:57.08465
1212	79	279	read	2026-04-26 13:48:57.08465
1213	177	61	enroll	2026-04-26 13:48:57.08465
1214	81	578	read	2026-04-26 13:48:57.08465
1215	126	453	like	2026-04-26 13:48:57.08465
1216	195	39	read	2026-04-26 13:48:57.08465
1217	59	342	read	2026-04-26 13:48:57.08465
1218	35	983	read	2026-04-26 13:48:57.08465
1219	155	89	enroll	2026-04-26 13:48:57.08465
1220	131	674	click	2026-04-26 13:48:57.08465
1221	164	504	like	2026-04-26 13:48:57.08465
1222	43	284	click	2026-04-26 13:48:57.08465
1223	89	770	click	2026-04-26 13:48:57.08465
1224	24	376	like	2026-04-26 13:48:57.08465
1225	128	54	click	2026-04-26 13:48:57.08465
1226	198	176	enroll	2026-04-26 13:48:57.08465
1227	101	244	read	2026-04-26 13:48:57.08465
1228	152	410	enroll	2026-04-26 13:48:57.08465
1229	164	513	enroll	2026-04-26 13:48:57.08465
1230	182	244	read	2026-04-26 13:48:57.08465
1231	103	534	like	2026-04-26 13:48:57.08465
1232	134	649	enroll	2026-04-26 13:48:57.08465
1233	165	995	click	2026-04-26 13:48:57.08465
1234	77	882	enroll	2026-04-26 13:48:57.08465
1235	59	420	enroll	2026-04-26 13:48:57.08465
1236	133	251	click	2026-04-26 13:48:57.08465
1237	113	432	enroll	2026-04-26 13:48:57.08465
1238	192	273	click	2026-04-26 13:48:57.08465
1239	26	40	read	2026-04-26 13:48:57.08465
1240	29	607	enroll	2026-04-26 13:48:57.08465
1241	88	865	click	2026-04-26 13:48:57.08465
1242	49	480	click	2026-04-26 13:48:57.08465
1243	55	707	read	2026-04-26 13:48:57.08465
1244	124	398	click	2026-04-26 13:48:57.08465
1245	154	856	read	2026-04-26 13:48:57.08465
1246	43	162	read	2026-04-26 13:48:57.08465
1247	39	562	like	2026-04-26 13:48:57.08465
1248	164	126	like	2026-04-26 13:48:57.08465
1249	197	780	like	2026-04-26 13:48:57.08465
1250	15	858	like	2026-04-26 13:48:57.08465
1251	9	412	like	2026-04-26 13:48:57.08465
1252	81	811	read	2026-04-26 13:48:57.08465
1253	14	554	read	2026-04-26 13:48:57.08465
1254	198	259	like	2026-04-26 13:48:57.08465
1255	124	597	like	2026-04-26 13:48:57.08465
1256	48	750	like	2026-04-26 13:48:57.08465
1257	12	983	enroll	2026-04-26 13:48:57.08465
1258	118	769	enroll	2026-04-26 13:48:57.08465
1259	132	593	read	2026-04-26 13:48:57.08465
1260	80	867	read	2026-04-26 13:48:57.08465
1261	140	262	read	2026-04-26 13:48:57.08465
1262	97	81	click	2026-04-26 13:48:57.08465
1263	68	639	click	2026-04-26 13:48:57.08465
1264	152	345	enroll	2026-04-26 13:48:57.08465
1265	72	658	enroll	2026-04-26 13:48:57.08465
1266	160	622	read	2026-04-26 13:48:57.08465
1267	83	366	like	2026-04-26 13:48:57.08465
1268	168	223	click	2026-04-26 13:48:57.08465
1269	41	226	read	2026-04-26 13:48:57.08465
1270	135	919	read	2026-04-26 13:48:57.08465
1271	42	600	enroll	2026-04-26 13:48:57.08465
1272	147	657	read	2026-04-26 13:48:57.08465
1273	109	141	click	2026-04-26 13:48:57.08465
1274	29	528	read	2026-04-26 13:48:57.08465
1275	80	981	enroll	2026-04-26 13:48:57.08465
1276	28	108	like	2026-04-26 13:48:57.08465
1277	196	357	click	2026-04-26 13:48:57.08465
1278	102	604	enroll	2026-04-26 13:48:57.08465
1279	93	405	like	2026-04-26 13:48:57.08465
1280	180	716	click	2026-04-26 13:48:57.08465
1281	51	175	like	2026-04-26 13:48:57.08465
1282	68	113	read	2026-04-26 13:48:57.08465
1283	161	304	click	2026-04-26 13:48:57.08465
1284	35	423	click	2026-04-26 13:48:57.08465
1285	15	572	like	2026-04-26 13:48:57.08465
1286	13	410	click	2026-04-26 13:48:57.08465
1287	134	544	click	2026-04-26 13:48:57.08465
1288	195	954	enroll	2026-04-26 13:48:57.08465
1289	51	119	like	2026-04-26 13:48:57.08465
1290	162	642	click	2026-04-26 13:48:57.08465
1291	16	991	enroll	2026-04-26 13:48:57.08465
1292	113	527	enroll	2026-04-26 13:48:57.08465
1293	87	647	click	2026-04-26 13:48:57.08465
1294	186	700	read	2026-04-26 13:48:57.08465
1295	197	871	click	2026-04-26 13:48:57.08465
1296	159	119	enroll	2026-04-26 13:48:57.08465
1297	114	65	read	2026-04-26 13:48:57.08465
1298	43	456	enroll	2026-04-26 13:48:57.08465
1299	32	700	enroll	2026-04-26 13:48:57.08465
1300	102	263	enroll	2026-04-26 13:48:57.08465
1301	129	882	enroll	2026-04-26 13:48:57.08465
1302	42	225	enroll	2026-04-26 13:48:57.08465
1303	135	361	like	2026-04-26 13:48:57.08465
1304	2	919	enroll	2026-04-26 13:48:57.08465
1305	43	689	click	2026-04-26 13:48:57.08465
1306	6	447	click	2026-04-26 13:48:57.08465
1307	45	817	like	2026-04-26 13:48:57.08465
1308	7	131	read	2026-04-26 13:48:57.08465
1309	100	369	enroll	2026-04-26 13:48:57.08465
1310	22	262	enroll	2026-04-26 13:48:57.08465
1311	199	465	like	2026-04-26 13:48:57.08465
1312	24	800	enroll	2026-04-26 13:48:57.08465
1313	110	837	enroll	2026-04-26 13:48:57.08465
1314	169	244	read	2026-04-26 13:48:57.08465
1315	53	1	read	2026-04-26 13:48:57.08465
1316	125	240	click	2026-04-26 13:48:57.08465
1317	89	482	click	2026-04-26 13:48:57.08465
1318	113	321	enroll	2026-04-26 13:48:57.08465
1319	172	164	enroll	2026-04-26 13:48:57.08465
1320	157	342	read	2026-04-26 13:48:57.08465
1321	102	88	enroll	2026-04-26 13:48:57.08465
1322	193	344	like	2026-04-26 13:48:57.08465
1323	43	128	enroll	2026-04-26 13:48:57.08465
1324	1	873	read	2026-04-26 13:48:57.08465
1325	108	29	like	2026-04-26 13:48:57.08465
1326	122	310	like	2026-04-26 13:48:57.08465
1327	156	629	like	2026-04-26 13:48:57.08465
1328	154	542	enroll	2026-04-26 13:48:57.08465
1329	21	785	enroll	2026-04-26 13:48:57.08465
1330	48	450	read	2026-04-26 13:48:57.08465
1331	159	926	read	2026-04-26 13:48:57.08465
1332	47	342	enroll	2026-04-26 13:48:57.08465
1333	93	991	enroll	2026-04-26 13:48:57.08465
1334	187	839	click	2026-04-26 13:48:57.08465
1335	132	298	click	2026-04-26 13:48:57.08465
1336	9	847	click	2026-04-26 13:48:57.08465
1337	135	704	click	2026-04-26 13:48:57.08465
1338	98	94	click	2026-04-26 13:48:57.08465
1339	94	441	read	2026-04-26 13:48:57.08465
1340	18	380	enroll	2026-04-26 13:48:57.08465
1341	15	639	enroll	2026-04-26 13:48:57.08465
1342	100	447	click	2026-04-26 13:48:57.08465
1343	124	570	read	2026-04-26 13:48:57.08465
1344	177	132	enroll	2026-04-26 13:48:57.08465
1345	129	720	enroll	2026-04-26 13:48:57.08465
1346	43	653	click	2026-04-26 13:48:57.08465
1347	144	986	enroll	2026-04-26 13:48:57.08465
1348	22	723	enroll	2026-04-26 13:48:57.08465
1349	82	404	enroll	2026-04-26 13:48:57.08465
1350	34	308	like	2026-04-26 13:48:57.08465
1351	13	724	enroll	2026-04-26 13:48:57.08465
1352	138	901	read	2026-04-26 13:48:57.08465
1353	138	738	enroll	2026-04-26 13:48:57.08465
1354	132	364	like	2026-04-26 13:48:57.08465
1355	189	12	click	2026-04-26 13:48:57.08465
1356	24	441	enroll	2026-04-26 13:48:57.08465
1357	191	799	click	2026-04-26 13:48:57.08465
1358	197	236	like	2026-04-26 13:48:57.08465
1359	139	591	read	2026-04-26 13:48:57.08465
1360	60	678	enroll	2026-04-26 13:48:57.08465
1361	75	66	enroll	2026-04-26 13:48:57.08465
1362	37	335	click	2026-04-26 13:48:57.08465
1363	61	710	read	2026-04-26 13:48:57.08465
1364	61	124	click	2026-04-26 13:48:57.08465
1365	116	11	like	2026-04-26 13:48:57.08465
1366	66	412	click	2026-04-26 13:48:57.08465
1367	48	819	read	2026-04-26 13:48:57.08465
1368	51	761	read	2026-04-26 13:48:57.08465
1369	56	548	read	2026-04-26 13:48:57.08465
1370	76	610	enroll	2026-04-26 13:48:57.08465
1371	173	364	read	2026-04-26 13:48:57.08465
1372	116	961	enroll	2026-04-26 13:48:57.08465
1373	65	393	enroll	2026-04-26 13:48:57.08465
1374	70	128	click	2026-04-26 13:48:57.08465
1375	36	186	read	2026-04-26 13:48:57.08465
1376	114	849	click	2026-04-26 13:48:57.08465
1377	191	819	enroll	2026-04-26 13:48:57.08465
1378	107	438	enroll	2026-04-26 13:48:57.08465
1379	65	770	click	2026-04-26 13:48:57.08465
1380	121	409	like	2026-04-26 13:48:57.08465
1381	137	727	click	2026-04-26 13:48:57.08465
1382	81	744	enroll	2026-04-26 13:48:57.08465
1383	83	476	read	2026-04-26 13:48:57.08465
1384	25	80	click	2026-04-26 13:48:57.08465
1385	135	592	click	2026-04-26 13:48:57.08465
1386	8	546	enroll	2026-04-26 13:48:57.08465
1387	151	772	read	2026-04-26 13:48:57.08465
1388	200	44	like	2026-04-26 13:48:57.08465
1389	3	646	like	2026-04-26 13:48:57.08465
1390	91	447	click	2026-04-26 13:48:57.08465
1391	199	927	click	2026-04-26 13:48:57.08465
1392	59	934	like	2026-04-26 13:48:57.08465
1393	108	420	read	2026-04-26 13:48:57.08465
1394	94	814	like	2026-04-26 13:48:57.08465
1395	69	514	enroll	2026-04-26 13:48:57.08465
1396	176	801	like	2026-04-26 13:48:57.08465
1397	28	719	read	2026-04-26 13:48:57.08465
1398	62	278	click	2026-04-26 13:48:57.08465
1399	66	846	enroll	2026-04-26 13:48:57.08465
1400	191	582	like	2026-04-26 13:48:57.08465
1401	69	822	enroll	2026-04-26 13:48:57.08465
1402	194	594	read	2026-04-26 13:48:57.08465
1403	117	301	like	2026-04-26 13:48:57.08465
1404	30	377	enroll	2026-04-26 13:48:57.08465
1405	45	656	read	2026-04-26 13:48:57.08465
1406	112	914	enroll	2026-04-26 13:48:57.08465
1407	128	281	click	2026-04-26 13:48:57.08465
1408	99	652	click	2026-04-26 13:48:57.08465
1409	33	924	click	2026-04-26 13:48:57.08465
1410	101	211	enroll	2026-04-26 13:48:57.08465
1411	121	403	read	2026-04-26 13:48:57.08465
1412	195	825	like	2026-04-26 13:48:57.08465
1413	78	297	enroll	2026-04-26 13:48:57.08465
1414	153	50	read	2026-04-26 13:48:57.08465
1415	172	683	like	2026-04-26 13:48:57.08465
1416	34	15	like	2026-04-26 13:48:57.08465
1417	27	443	like	2026-04-26 13:48:57.08465
1418	41	751	enroll	2026-04-26 13:48:57.08465
1419	115	351	enroll	2026-04-26 13:48:57.08465
1420	22	174	like	2026-04-26 13:48:57.08465
1421	91	201	click	2026-04-26 13:48:57.08465
1422	100	812	like	2026-04-26 13:48:57.08465
1423	24	128	like	2026-04-26 13:48:57.08465
1424	5	86	read	2026-04-26 13:48:57.08465
1425	96	245	like	2026-04-26 13:48:57.08465
1426	70	405	like	2026-04-26 13:48:57.08465
1427	47	846	enroll	2026-04-26 13:48:57.08465
1428	175	26	click	2026-04-26 13:48:57.08465
1429	100	639	click	2026-04-26 13:48:57.08465
1430	74	627	like	2026-04-26 13:48:57.08465
1431	173	639	click	2026-04-26 13:48:57.08465
1432	167	608	click	2026-04-26 13:48:57.08465
1433	20	259	enroll	2026-04-26 13:48:57.08465
1434	182	491	read	2026-04-26 13:48:57.08465
1435	130	224	enroll	2026-04-26 13:48:57.08465
1436	86	746	like	2026-04-26 13:48:57.08465
1437	67	749	enroll	2026-04-26 13:48:57.08465
1438	37	424	enroll	2026-04-26 13:48:57.08465
1439	23	948	like	2026-04-26 13:48:57.08465
1440	66	565	enroll	2026-04-26 13:48:57.08465
1441	14	847	read	2026-04-26 13:48:57.08465
1442	25	896	click	2026-04-26 13:48:57.08465
1443	33	338	like	2026-04-26 13:48:57.08465
1444	117	95	like	2026-04-26 13:48:57.08465
1445	132	827	enroll	2026-04-26 13:48:57.08465
1446	85	882	click	2026-04-26 13:48:57.08465
1447	46	830	enroll	2026-04-26 13:48:57.08465
1448	103	615	click	2026-04-26 13:48:57.08465
1449	15	103	click	2026-04-26 13:48:57.08465
1450	39	215	click	2026-04-26 13:48:57.08465
1451	65	601	click	2026-04-26 13:48:57.08465
1452	44	811	read	2026-04-26 13:48:57.08465
1453	41	37	enroll	2026-04-26 13:48:57.08465
1454	105	553	read	2026-04-26 13:48:57.08465
1455	158	943	like	2026-04-26 13:48:57.08465
1456	98	994	read	2026-04-26 13:48:57.08465
1457	186	189	enroll	2026-04-26 13:48:57.08465
1458	43	432	click	2026-04-26 13:48:57.08465
1459	49	108	enroll	2026-04-26 13:48:57.08465
1460	91	621	like	2026-04-26 13:48:57.08465
1461	155	904	enroll	2026-04-26 13:48:57.08465
1462	166	755	enroll	2026-04-26 13:48:57.08465
1463	113	779	click	2026-04-26 13:48:57.08465
1464	85	920	like	2026-04-26 13:48:57.08465
1465	145	403	like	2026-04-26 13:48:57.08465
1466	43	649	enroll	2026-04-26 13:48:57.08465
1467	155	792	read	2026-04-26 13:48:57.08465
1468	72	666	like	2026-04-26 13:48:57.08465
1469	141	655	enroll	2026-04-26 13:48:57.08465
1470	50	878	like	2026-04-26 13:48:57.08465
1471	22	244	read	2026-04-26 13:48:57.08465
1472	99	430	like	2026-04-26 13:48:57.08465
1473	146	877	like	2026-04-26 13:48:57.08465
1474	174	939	read	2026-04-26 13:48:57.08465
1475	25	667	like	2026-04-26 13:48:57.08465
1476	114	714	like	2026-04-26 13:48:57.08465
1477	180	531	like	2026-04-26 13:48:57.08465
1478	27	956	read	2026-04-26 13:48:57.08465
1479	16	309	click	2026-04-26 13:48:57.08465
1480	148	287	click	2026-04-26 13:48:57.08465
1481	87	402	enroll	2026-04-26 13:48:57.08465
1482	126	570	click	2026-04-26 13:48:57.08465
1483	100	302	read	2026-04-26 13:48:57.08465
1484	8	273	like	2026-04-26 13:48:57.08465
1485	55	725	like	2026-04-26 13:48:57.08465
1486	133	214	read	2026-04-26 13:48:57.08465
1487	65	862	read	2026-04-26 13:48:57.08465
1488	74	287	enroll	2026-04-26 13:48:57.08465
1489	32	763	like	2026-04-26 13:48:57.08465
1490	162	307	click	2026-04-26 13:48:57.08465
1491	124	42	click	2026-04-26 13:48:57.08465
1492	88	488	read	2026-04-26 13:48:57.08465
1493	55	730	enroll	2026-04-26 13:48:57.08465
1494	143	765	click	2026-04-26 13:48:57.08465
1495	49	379	read	2026-04-26 13:48:57.08465
1496	169	369	like	2026-04-26 13:48:57.08465
1497	77	852	click	2026-04-26 13:48:57.08465
1498	107	760	like	2026-04-26 13:48:57.08465
1499	14	129	like	2026-04-26 13:48:57.08465
1500	79	879	read	2026-04-26 13:48:57.08465
1501	69	239	enroll	2026-04-26 13:48:57.08465
1502	130	225	read	2026-04-26 13:48:57.08465
1503	185	892	like	2026-04-26 13:48:57.08465
1504	131	531	like	2026-04-26 13:48:57.08465
1505	141	873	like	2026-04-26 13:48:57.08465
1506	5	293	read	2026-04-26 13:48:57.08465
1507	118	673	enroll	2026-04-26 13:48:57.08465
1508	173	954	click	2026-04-26 13:48:57.08465
1509	140	165	read	2026-04-26 13:48:57.08465
1510	134	934	enroll	2026-04-26 13:48:57.08465
1511	117	679	enroll	2026-04-26 13:48:57.08465
1512	185	255	enroll	2026-04-26 13:48:57.08465
1513	184	585	enroll	2026-04-26 13:48:57.08465
1514	95	347	like	2026-04-26 13:48:57.08465
1515	103	516	read	2026-04-26 13:48:57.08465
1516	141	732	enroll	2026-04-26 13:48:57.08465
1517	95	16	like	2026-04-26 13:48:57.08465
1518	168	260	enroll	2026-04-26 13:48:57.08465
1519	96	167	click	2026-04-26 13:48:57.08465
1520	150	714	like	2026-04-26 13:48:57.08465
1521	33	699	like	2026-04-26 13:48:57.08465
1522	144	365	read	2026-04-26 13:48:57.08465
1523	110	708	like	2026-04-26 13:48:57.08465
1524	136	791	read	2026-04-26 13:48:57.08465
1525	100	260	click	2026-04-26 13:48:57.08465
1526	117	798	like	2026-04-26 13:48:57.08465
1527	40	181	read	2026-04-26 13:48:57.08465
1528	128	438	like	2026-04-26 13:48:57.08465
1529	93	28	enroll	2026-04-26 13:48:57.08465
1530	6	903	read	2026-04-26 13:48:57.08465
1531	44	94	enroll	2026-04-26 13:48:57.08465
1532	158	648	click	2026-04-26 13:48:57.08465
1533	169	543	enroll	2026-04-26 13:48:57.08465
1534	193	921	like	2026-04-26 13:48:57.08465
1535	84	235	read	2026-04-26 13:48:57.08465
1536	153	653	enroll	2026-04-26 13:48:57.08465
1537	55	580	enroll	2026-04-26 13:48:57.08465
1538	7	728	like	2026-04-26 13:48:57.08465
1539	162	26	read	2026-04-26 13:48:57.08465
1540	176	5	click	2026-04-26 13:48:57.08465
1541	127	136	click	2026-04-26 13:48:57.08465
1542	132	956	click	2026-04-26 13:48:57.08465
1543	79	877	click	2026-04-26 13:48:57.08465
1544	140	969	like	2026-04-26 13:48:57.08465
1545	36	251	enroll	2026-04-26 13:48:57.08465
1546	112	239	like	2026-04-26 13:48:57.08465
1547	103	15	like	2026-04-26 13:48:57.08465
1548	170	652	click	2026-04-26 13:48:57.08465
1549	116	107	read	2026-04-26 13:48:57.08465
1550	36	692	enroll	2026-04-26 13:48:57.08465
1551	157	75	enroll	2026-04-26 13:48:57.08465
1552	164	382	enroll	2026-04-26 13:48:57.08465
1553	127	727	read	2026-04-26 13:48:57.08465
1554	56	588	read	2026-04-26 13:48:57.08465
1555	15	309	enroll	2026-04-26 13:48:57.08465
1556	89	589	read	2026-04-26 13:48:57.08465
1557	193	805	click	2026-04-26 13:48:57.08465
1558	142	836	click	2026-04-26 13:48:57.08465
1559	82	1000	read	2026-04-26 13:48:57.08465
1560	87	957	enroll	2026-04-26 13:48:57.08465
1561	62	900	click	2026-04-26 13:48:57.08465
1562	72	477	click	2026-04-26 13:48:57.08465
1563	150	776	click	2026-04-26 13:48:57.08465
1564	50	217	click	2026-04-26 13:48:57.08465
1565	104	34	click	2026-04-26 13:48:57.08465
1566	41	155	enroll	2026-04-26 13:48:57.08465
1567	36	831	read	2026-04-26 13:48:57.08465
1568	38	34	enroll	2026-04-26 13:48:57.08465
1569	81	488	click	2026-04-26 13:48:57.08465
1570	25	710	read	2026-04-26 13:48:57.08465
1571	179	938	read	2026-04-26 13:48:57.08465
1572	29	938	click	2026-04-26 13:48:57.08465
1573	119	965	read	2026-04-26 13:48:57.08465
1574	65	137	like	2026-04-26 13:48:57.08465
1575	50	339	like	2026-04-26 13:48:57.08465
1576	74	287	like	2026-04-26 13:48:57.08465
1577	35	292	click	2026-04-26 13:48:57.08465
1578	108	464	read	2026-04-26 13:48:57.08465
1579	74	773	enroll	2026-04-26 13:48:57.08465
1580	168	922	click	2026-04-26 13:48:57.08465
1581	131	820	like	2026-04-26 13:48:57.08465
1582	68	455	enroll	2026-04-26 13:48:57.08465
1583	118	994	read	2026-04-26 13:48:57.08465
1584	105	355	enroll	2026-04-26 13:48:57.08465
1585	22	433	enroll	2026-04-26 13:48:57.08465
1586	118	127	click	2026-04-26 13:48:57.08465
1587	122	641	like	2026-04-26 13:48:57.08465
1588	95	437	enroll	2026-04-26 13:48:57.08465
1589	197	810	read	2026-04-26 13:48:57.08465
1590	74	929	click	2026-04-26 13:48:57.08465
1591	65	592	like	2026-04-26 13:48:57.08465
1592	147	532	like	2026-04-26 13:48:57.08465
1593	46	930	click	2026-04-26 13:48:57.08465
1594	101	324	enroll	2026-04-26 13:48:57.08465
1595	95	352	enroll	2026-04-26 13:48:57.08465
1596	142	426	like	2026-04-26 13:48:57.08465
1597	29	23	like	2026-04-26 13:48:57.08465
1598	113	639	like	2026-04-26 13:48:57.08465
1599	115	421	enroll	2026-04-26 13:48:57.08465
1600	142	833	enroll	2026-04-26 13:48:57.08465
1601	177	874	click	2026-04-26 13:48:57.08465
1602	54	938	click	2026-04-26 13:48:57.08465
1603	85	208	read	2026-04-26 13:48:57.08465
1604	19	985	click	2026-04-26 13:48:57.08465
1605	12	796	enroll	2026-04-26 13:48:57.08465
1606	190	982	enroll	2026-04-26 13:48:57.08465
1607	34	364	read	2026-04-26 13:48:57.08465
1608	123	648	click	2026-04-26 13:48:57.08465
1609	56	232	click	2026-04-26 13:48:57.08465
1610	115	104	enroll	2026-04-26 13:48:57.08465
1611	4	120	read	2026-04-26 13:48:57.08465
1612	163	154	click	2026-04-26 13:48:57.08465
1613	51	476	like	2026-04-26 13:48:57.08465
1614	92	810	read	2026-04-26 13:48:57.08465
1615	196	982	click	2026-04-26 13:48:57.08465
1616	193	632	enroll	2026-04-26 13:48:57.08465
1617	195	291	like	2026-04-26 13:48:57.08465
1618	97	542	read	2026-04-26 13:48:57.08465
1619	83	519	click	2026-04-26 13:48:57.08465
1620	163	677	click	2026-04-26 13:48:57.08465
1621	179	320	enroll	2026-04-26 13:48:57.08465
1622	184	627	like	2026-04-26 13:48:57.08465
1623	35	978	enroll	2026-04-26 13:48:57.08465
1624	85	190	like	2026-04-26 13:48:57.08465
1625	175	85	read	2026-04-26 13:48:57.08465
1626	10	856	click	2026-04-26 13:48:57.08465
1627	8	304	read	2026-04-26 13:48:57.08465
1628	123	843	click	2026-04-26 13:48:57.08465
1629	115	132	read	2026-04-26 13:48:57.08465
1630	107	46	enroll	2026-04-26 13:48:57.08465
1631	135	491	like	2026-04-26 13:48:57.08465
1632	38	323	read	2026-04-26 13:48:57.08465
1633	61	466	read	2026-04-26 13:48:57.08465
1634	21	777	read	2026-04-26 13:48:57.08465
1635	121	535	enroll	2026-04-26 13:48:57.08465
1636	184	940	like	2026-04-26 13:48:57.08465
1637	61	682	enroll	2026-04-26 13:48:57.08465
1638	179	514	like	2026-04-26 13:48:57.08465
1639	76	406	click	2026-04-26 13:48:57.08465
1640	16	353	like	2026-04-26 13:48:57.08465
1641	81	398	click	2026-04-26 13:48:57.08465
1642	19	582	enroll	2026-04-26 13:48:57.08465
1643	6	784	read	2026-04-26 13:48:57.08465
1644	33	28	click	2026-04-26 13:48:57.08465
1645	195	940	click	2026-04-26 13:48:57.08465
1646	66	23	read	2026-04-26 13:48:57.08465
1647	97	778	read	2026-04-26 13:48:57.08465
1648	166	330	click	2026-04-26 13:48:57.08465
1649	21	451	enroll	2026-04-26 13:48:57.08465
1650	153	979	like	2026-04-26 13:48:57.08465
1651	149	142	read	2026-04-26 13:48:57.08465
1652	187	877	read	2026-04-26 13:48:57.08465
1653	154	541	enroll	2026-04-26 13:48:57.08465
1654	132	318	read	2026-04-26 13:48:57.08465
1655	94	130	enroll	2026-04-26 13:48:57.08465
1656	193	601	like	2026-04-26 13:48:57.08465
1657	161	510	click	2026-04-26 13:48:57.08465
1658	116	855	enroll	2026-04-26 13:48:57.08465
1659	173	403	enroll	2026-04-26 13:48:57.08465
1660	66	775	enroll	2026-04-26 13:48:57.08465
1661	21	32	read	2026-04-26 13:48:57.08465
1662	21	938	click	2026-04-26 13:48:57.08465
1663	92	355	read	2026-04-26 13:48:57.08465
1664	194	952	like	2026-04-26 13:48:57.08465
1665	77	202	read	2026-04-26 13:48:57.08465
1666	53	993	like	2026-04-26 13:48:57.08465
1667	55	415	like	2026-04-26 13:48:57.08465
1668	3	9	enroll	2026-04-26 13:48:57.08465
1669	181	974	read	2026-04-26 13:48:57.08465
1670	191	530	click	2026-04-26 13:48:57.08465
1671	47	447	click	2026-04-26 13:48:57.08465
1672	87	109	read	2026-04-26 13:48:57.08465
1673	193	564	click	2026-04-26 13:48:57.08465
1674	77	892	click	2026-04-26 13:48:57.08465
1675	162	890	click	2026-04-26 13:48:57.08465
1676	171	42	read	2026-04-26 13:48:57.08465
1677	147	592	like	2026-04-26 13:48:57.08465
1678	30	371	like	2026-04-26 13:48:57.08465
1679	14	490	like	2026-04-26 13:48:57.08465
1680	42	647	read	2026-04-26 13:48:57.08465
1681	125	168	like	2026-04-26 13:48:57.08465
1682	31	647	enroll	2026-04-26 13:48:57.08465
1683	11	965	like	2026-04-26 13:48:57.08465
1684	170	775	like	2026-04-26 13:48:57.08465
1685	73	118	enroll	2026-04-26 13:48:57.08465
1686	129	848	read	2026-04-26 13:48:57.08465
1687	43	640	enroll	2026-04-26 13:48:57.08465
1688	110	118	enroll	2026-04-26 13:48:57.08465
1689	50	852	enroll	2026-04-26 13:48:57.08465
1690	31	5	enroll	2026-04-26 13:48:57.08465
1691	133	7	enroll	2026-04-26 13:48:57.08465
1692	155	331	enroll	2026-04-26 13:48:57.08465
1693	131	395	read	2026-04-26 13:48:57.08465
1694	64	601	like	2026-04-26 13:48:57.08465
1695	13	406	click	2026-04-26 13:48:57.08465
1696	73	662	like	2026-04-26 13:48:57.08465
1697	109	313	like	2026-04-26 13:48:57.08465
1698	42	574	enroll	2026-04-26 13:48:57.08465
1699	153	18	click	2026-04-26 13:48:57.08465
1700	1	47	like	2026-04-26 13:48:57.08465
1701	2	308	click	2026-04-26 13:48:57.08465
1702	176	660	enroll	2026-04-26 13:48:57.08465
1703	15	900	enroll	2026-04-26 13:48:57.08465
1704	77	577	enroll	2026-04-26 13:48:57.08465
1705	77	695	click	2026-04-26 13:48:57.08465
1706	87	957	click	2026-04-26 13:48:57.08465
1707	15	841	like	2026-04-26 13:48:57.08465
1708	181	743	click	2026-04-26 13:48:57.08465
1709	129	835	read	2026-04-26 13:48:57.08465
1710	1	763	like	2026-04-26 13:48:57.08465
1711	168	690	click	2026-04-26 13:48:57.08465
1712	190	413	like	2026-04-26 13:48:57.08465
1713	53	542	read	2026-04-26 13:48:57.08465
1714	185	635	read	2026-04-26 13:48:57.08465
1715	71	533	read	2026-04-26 13:48:57.08465
1716	77	981	like	2026-04-26 13:48:57.08465
1717	126	871	enroll	2026-04-26 13:48:57.08465
1718	181	476	like	2026-04-26 13:48:57.08465
1719	43	276	click	2026-04-26 13:48:57.08465
1720	52	592	read	2026-04-26 13:48:57.08465
1721	101	224	like	2026-04-26 13:48:57.08465
1722	42	111	enroll	2026-04-26 13:48:57.08465
1723	20	54	enroll	2026-04-26 13:48:57.08465
1724	132	100	enroll	2026-04-26 13:48:57.08465
1725	151	435	like	2026-04-26 13:48:57.08465
1726	113	943	enroll	2026-04-26 13:48:57.08465
1727	170	892	read	2026-04-26 13:48:57.08465
1728	88	740	enroll	2026-04-26 13:48:57.08465
1729	182	858	like	2026-04-26 13:48:57.08465
1730	121	389	enroll	2026-04-26 13:48:57.08465
1731	147	649	like	2026-04-26 13:48:57.08465
1732	110	459	read	2026-04-26 13:48:57.08465
1733	64	684	click	2026-04-26 13:48:57.08465
1734	32	251	like	2026-04-26 13:48:57.08465
1735	144	662	click	2026-04-26 13:48:57.08465
1736	8	709	like	2026-04-26 13:48:57.08465
1737	5	92	like	2026-04-26 13:48:57.08465
1738	54	740	read	2026-04-26 13:48:57.08465
1739	173	6	read	2026-04-26 13:48:57.08465
1740	182	834	enroll	2026-04-26 13:48:57.08465
1741	95	683	read	2026-04-26 13:48:57.08465
1742	45	150	click	2026-04-26 13:48:57.08465
1743	113	826	read	2026-04-26 13:48:57.08465
1744	101	806	click	2026-04-26 13:48:57.08465
1745	47	692	read	2026-04-26 13:48:57.08465
1746	35	213	like	2026-04-26 13:48:57.08465
1747	188	344	read	2026-04-26 13:48:57.08465
1748	6	483	like	2026-04-26 13:48:57.08465
1749	47	857	read	2026-04-26 13:48:57.08465
1750	84	448	like	2026-04-26 13:48:57.08465
1751	167	596	read	2026-04-26 13:48:57.08465
1752	197	666	enroll	2026-04-26 13:48:57.08465
1753	194	627	enroll	2026-04-26 13:48:57.08465
1754	52	92	like	2026-04-26 13:48:57.08465
1755	115	80	read	2026-04-26 13:48:57.08465
1756	84	286	read	2026-04-26 13:48:57.08465
1757	42	26	enroll	2026-04-26 13:48:57.08465
1758	41	260	enroll	2026-04-26 13:48:57.08465
1759	104	604	click	2026-04-26 13:48:57.08465
1760	90	803	enroll	2026-04-26 13:48:57.08465
1761	125	428	like	2026-04-26 13:48:57.08465
1762	63	651	enroll	2026-04-26 13:48:57.08465
1763	169	425	read	2026-04-26 13:48:57.08465
1764	154	112	enroll	2026-04-26 13:48:57.08465
1765	145	780	click	2026-04-26 13:48:57.08465
1766	167	90	like	2026-04-26 13:48:57.08465
1767	134	194	click	2026-04-26 13:48:57.08465
1768	144	10	read	2026-04-26 13:48:57.08465
1769	154	871	read	2026-04-26 13:48:57.08465
1770	128	994	click	2026-04-26 13:48:57.08465
1771	145	541	read	2026-04-26 13:48:57.08465
1772	13	346	click	2026-04-26 13:48:57.08465
1773	101	925	click	2026-04-26 13:48:57.08465
1774	29	185	click	2026-04-26 13:48:57.08465
1775	41	639	enroll	2026-04-26 13:48:57.08465
1776	140	2	read	2026-04-26 13:48:57.08465
1777	17	885	read	2026-04-26 13:48:57.08465
1778	166	509	enroll	2026-04-26 13:48:57.08465
1779	65	331	click	2026-04-26 13:48:57.08465
1780	3	370	enroll	2026-04-26 13:48:57.08465
1781	111	91	like	2026-04-26 13:48:57.08465
1782	156	282	like	2026-04-26 13:48:57.08465
1783	146	570	read	2026-04-26 13:48:57.08465
1784	17	182	read	2026-04-26 13:48:57.08465
1785	190	797	click	2026-04-26 13:48:57.08465
1786	34	500	enroll	2026-04-26 13:48:57.08465
1787	4	17	read	2026-04-26 13:48:57.08465
1788	88	99	like	2026-04-26 13:48:57.08465
1789	76	981	read	2026-04-26 13:48:57.08465
1790	118	817	click	2026-04-26 13:48:57.08465
1791	51	573	click	2026-04-26 13:48:57.08465
1792	99	272	like	2026-04-26 13:48:57.08465
1793	75	313	click	2026-04-26 13:48:57.08465
1794	144	296	like	2026-04-26 13:48:57.08465
1795	57	518	read	2026-04-26 13:48:57.08465
1796	39	339	click	2026-04-26 13:48:57.08465
1797	162	108	like	2026-04-26 13:48:57.08465
1798	104	307	click	2026-04-26 13:48:57.08465
1799	31	878	enroll	2026-04-26 13:48:57.08465
1800	97	13	read	2026-04-26 13:48:57.08465
1801	137	230	click	2026-04-26 13:48:57.08465
1802	65	108	click	2026-04-26 13:48:57.08465
1803	178	597	enroll	2026-04-26 13:48:57.08465
1804	54	930	enroll	2026-04-26 13:48:57.08465
1805	46	647	enroll	2026-04-26 13:48:57.08465
1806	82	85	like	2026-04-26 13:48:57.08465
1807	30	667	like	2026-04-26 13:48:57.08465
1808	112	211	enroll	2026-04-26 13:48:57.08465
1809	123	572	like	2026-04-26 13:48:57.08465
1810	132	310	like	2026-04-26 13:48:57.08465
1811	140	637	like	2026-04-26 13:48:57.08465
1812	95	38	like	2026-04-26 13:48:57.08465
1813	32	12	click	2026-04-26 13:48:57.08465
1814	138	81	enroll	2026-04-26 13:48:57.08465
1815	136	813	click	2026-04-26 13:48:57.08465
1816	112	828	click	2026-04-26 13:48:57.08465
1817	109	949	click	2026-04-26 13:48:57.08465
1818	168	793	enroll	2026-04-26 13:48:57.08465
1819	48	672	like	2026-04-26 13:48:57.08465
1820	108	911	click	2026-04-26 13:48:57.08465
1821	6	665	enroll	2026-04-26 13:48:57.08465
1822	89	436	read	2026-04-26 13:48:57.08465
1823	47	39	click	2026-04-26 13:48:57.08465
1824	163	578	click	2026-04-26 13:48:57.08465
1825	136	344	click	2026-04-26 13:48:57.08465
1826	70	404	like	2026-04-26 13:48:57.08465
1827	107	428	enroll	2026-04-26 13:48:57.08465
1828	29	990	click	2026-04-26 13:48:57.08465
1829	95	214	read	2026-04-26 13:48:57.08465
1830	61	237	like	2026-04-26 13:48:57.08465
1831	98	314	read	2026-04-26 13:48:57.08465
1832	63	858	read	2026-04-26 13:48:57.08465
1833	13	459	like	2026-04-26 13:48:57.08465
1834	180	753	like	2026-04-26 13:48:57.08465
1835	143	416	read	2026-04-26 13:48:57.08465
1836	197	703	read	2026-04-26 13:48:57.08465
1837	165	691	click	2026-04-26 13:48:57.08465
1838	153	496	like	2026-04-26 13:48:57.08465
1839	171	464	like	2026-04-26 13:48:57.08465
1840	42	379	read	2026-04-26 13:48:57.08465
1841	188	142	click	2026-04-26 13:48:57.08465
1842	102	834	read	2026-04-26 13:48:57.08465
1843	131	554	read	2026-04-26 13:48:57.08465
1844	189	363	click	2026-04-26 13:48:57.08465
1845	197	543	like	2026-04-26 13:48:57.08465
1846	138	706	like	2026-04-26 13:48:57.08465
1847	187	904	enroll	2026-04-26 13:48:57.08465
1848	91	132	read	2026-04-26 13:48:57.08465
1849	166	610	click	2026-04-26 13:48:57.08465
1850	12	900	like	2026-04-26 13:48:57.08465
1851	2	979	like	2026-04-26 13:48:57.08465
1852	175	727	like	2026-04-26 13:48:57.08465
1853	62	602	click	2026-04-26 13:48:57.08465
1854	41	360	like	2026-04-26 13:48:57.08465
1855	133	861	like	2026-04-26 13:48:57.08465
1856	10	305	read	2026-04-26 13:48:57.08465
1857	186	368	click	2026-04-26 13:48:57.08465
1858	49	690	like	2026-04-26 13:48:57.08465
1859	159	256	enroll	2026-04-26 13:48:57.08465
1860	99	350	read	2026-04-26 13:48:57.08465
1861	109	924	enroll	2026-04-26 13:48:57.08465
1862	174	219	click	2026-04-26 13:48:57.08465
1863	174	197	read	2026-04-26 13:48:57.08465
1864	138	140	like	2026-04-26 13:48:57.08465
1865	13	880	enroll	2026-04-26 13:48:57.08465
1866	175	585	click	2026-04-26 13:48:57.08465
1867	199	379	read	2026-04-26 13:48:57.08465
1868	196	812	click	2026-04-26 13:48:57.08465
1869	40	597	click	2026-04-26 13:48:57.08465
1870	49	121	read	2026-04-26 13:48:57.08465
1871	170	700	enroll	2026-04-26 13:48:57.08465
1872	61	973	like	2026-04-26 13:48:57.08465
1873	184	126	click	2026-04-26 13:48:57.08465
1874	91	585	read	2026-04-26 13:48:57.08465
1875	115	939	read	2026-04-26 13:48:57.08465
1876	111	396	click	2026-04-26 13:48:57.08465
1877	59	417	enroll	2026-04-26 13:48:57.08465
1878	95	791	read	2026-04-26 13:48:57.08465
1879	150	365	click	2026-04-26 13:48:57.08465
1880	91	787	enroll	2026-04-26 13:48:57.08465
1881	165	355	read	2026-04-26 13:48:57.08465
1882	34	124	read	2026-04-26 13:48:57.08465
1883	191	821	read	2026-04-26 13:48:57.08465
1884	16	434	enroll	2026-04-26 13:48:57.08465
1885	171	278	read	2026-04-26 13:48:57.08465
1886	69	567	enroll	2026-04-26 13:48:57.08465
1887	50	500	enroll	2026-04-26 13:48:57.08465
1888	179	617	like	2026-04-26 13:48:57.08465
1889	124	723	like	2026-04-26 13:48:57.08465
1890	159	627	click	2026-04-26 13:48:57.08465
1891	182	451	like	2026-04-26 13:48:57.08465
1892	111	36	like	2026-04-26 13:48:57.08465
1893	200	112	click	2026-04-26 13:48:57.08465
1894	41	380	click	2026-04-26 13:48:57.08465
1895	53	784	enroll	2026-04-26 13:48:57.08465
1896	112	245	read	2026-04-26 13:48:57.08465
1897	198	982	read	2026-04-26 13:48:57.08465
1898	121	124	read	2026-04-26 13:48:57.08465
1899	12	246	like	2026-04-26 13:48:57.08465
1900	23	721	enroll	2026-04-26 13:48:57.08465
1901	134	239	like	2026-04-26 13:48:57.08465
1902	122	327	like	2026-04-26 13:48:57.08465
1903	58	425	enroll	2026-04-26 13:48:57.08465
1904	132	522	click	2026-04-26 13:48:57.08465
1905	45	474	like	2026-04-26 13:48:57.08465
1906	167	367	like	2026-04-26 13:48:57.08465
1907	33	385	click	2026-04-26 13:48:57.08465
1908	95	661	read	2026-04-26 13:48:57.08465
1909	28	936	enroll	2026-04-26 13:48:57.08465
1910	148	143	click	2026-04-26 13:48:57.08465
1911	7	713	read	2026-04-26 13:48:57.08465
1912	30	41	enroll	2026-04-26 13:48:57.08465
1913	173	537	click	2026-04-26 13:48:57.08465
1914	135	541	read	2026-04-26 13:48:57.08465
1915	184	818	read	2026-04-26 13:48:57.08465
1916	88	773	read	2026-04-26 13:48:57.08465
1917	28	166	click	2026-04-26 13:48:57.08465
1918	154	877	like	2026-04-26 13:48:57.08465
1919	15	937	enroll	2026-04-26 13:48:57.08465
1920	156	62	read	2026-04-26 13:48:57.08465
1921	130	687	like	2026-04-26 13:48:57.08465
1922	47	291	like	2026-04-26 13:48:57.08465
1923	154	270	click	2026-04-26 13:48:57.08465
1924	194	390	read	2026-04-26 13:48:57.08465
1925	156	926	click	2026-04-26 13:48:57.08465
1926	82	759	like	2026-04-26 13:48:57.08465
1927	6	79	read	2026-04-26 13:48:57.08465
1928	119	613	enroll	2026-04-26 13:48:57.08465
1929	140	878	click	2026-04-26 13:48:57.08465
1930	164	428	read	2026-04-26 13:48:57.08465
1931	104	739	read	2026-04-26 13:48:57.08465
1932	52	749	enroll	2026-04-26 13:48:57.08465
1933	94	942	enroll	2026-04-26 13:48:57.08465
1934	28	98	like	2026-04-26 13:48:57.08465
1935	32	206	enroll	2026-04-26 13:48:57.08465
1936	69	709	like	2026-04-26 13:48:57.08465
1937	73	878	read	2026-04-26 13:48:57.08465
1938	32	694	read	2026-04-26 13:48:57.08465
1939	5	702	like	2026-04-26 13:48:57.08465
1940	76	520	click	2026-04-26 13:48:57.08465
1941	146	516	enroll	2026-04-26 13:48:57.08465
1942	136	153	enroll	2026-04-26 13:48:57.08465
1943	75	987	read	2026-04-26 13:48:57.08465
1944	143	742	enroll	2026-04-26 13:48:57.08465
1945	88	68	enroll	2026-04-26 13:48:57.08465
1946	158	61	read	2026-04-26 13:48:57.08465
1947	105	120	click	2026-04-26 13:48:57.08465
1948	120	874	click	2026-04-26 13:48:57.08465
1949	49	306	like	2026-04-26 13:48:57.08465
1950	123	381	like	2026-04-26 13:48:57.08465
1951	197	480	enroll	2026-04-26 13:48:57.08465
1952	4	762	enroll	2026-04-26 13:48:57.08465
1953	110	668	enroll	2026-04-26 13:48:57.08465
1954	195	395	read	2026-04-26 13:48:57.08465
1955	176	606	enroll	2026-04-26 13:48:57.08465
1956	199	719	click	2026-04-26 13:48:57.08465
1957	41	931	read	2026-04-26 13:48:57.08465
1958	27	265	click	2026-04-26 13:48:57.08465
1959	85	199	like	2026-04-26 13:48:57.08465
1960	126	612	enroll	2026-04-26 13:48:57.08465
1961	63	124	read	2026-04-26 13:48:57.08465
1962	108	645	click	2026-04-26 13:48:57.08465
1963	177	224	click	2026-04-26 13:48:57.08465
1964	195	802	click	2026-04-26 13:48:57.08465
1965	174	853	enroll	2026-04-26 13:48:57.08465
1966	101	260	like	2026-04-26 13:48:57.08465
1967	113	554	like	2026-04-26 13:48:57.08465
1968	70	923	read	2026-04-26 13:48:57.08465
1969	194	261	click	2026-04-26 13:48:57.08465
1970	58	789	read	2026-04-26 13:48:57.08465
1971	182	503	enroll	2026-04-26 13:48:57.08465
1972	174	472	click	2026-04-26 13:48:57.08465
1973	169	522	like	2026-04-26 13:48:57.08465
1974	176	684	like	2026-04-26 13:48:57.08465
1975	188	368	read	2026-04-26 13:48:57.08465
1976	162	394	click	2026-04-26 13:48:57.08465
1977	57	896	click	2026-04-26 13:48:57.08465
1978	57	758	enroll	2026-04-26 13:48:57.08465
1979	134	277	like	2026-04-26 13:48:57.08465
1980	80	267	read	2026-04-26 13:48:57.08465
1981	147	421	read	2026-04-26 13:48:57.08465
1982	36	158	read	2026-04-26 13:48:57.08465
1983	89	346	like	2026-04-26 13:48:57.08465
1984	108	502	enroll	2026-04-26 13:48:57.08465
1985	114	421	like	2026-04-26 13:48:57.08465
1986	47	572	enroll	2026-04-26 13:48:57.08465
1987	137	406	click	2026-04-26 13:48:57.08465
1988	99	27	enroll	2026-04-26 13:48:57.08465
1989	28	794	click	2026-04-26 13:48:57.08465
1990	117	812	click	2026-04-26 13:48:57.08465
1991	130	210	like	2026-04-26 13:48:57.08465
1992	41	463	read	2026-04-26 13:48:57.08465
1993	13	914	click	2026-04-26 13:48:57.08465
1994	188	881	read	2026-04-26 13:48:57.08465
1995	43	927	click	2026-04-26 13:48:57.08465
1996	171	452	like	2026-04-26 13:48:57.08465
1997	157	360	enroll	2026-04-26 13:48:57.08465
1998	97	428	like	2026-04-26 13:48:57.08465
1999	35	35	click	2026-04-26 13:48:57.08465
2000	200	999	like	2026-04-26 13:48:57.08465
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, goal, level, created_at) FROM stdin;
1	UPSC Prelims	Advanced	2026-04-26 13:47:47.279648
2	UPSC Mains	Intermediate	2026-04-26 13:47:47.279648
3	UPSC Prelims	Intermediate	2026-04-26 13:47:47.279648
4	UPSC Mains	Advanced	2026-04-26 13:47:47.279648
5	UPSC Mains	Beginner	2026-04-26 13:47:47.279648
6	UPSC Mains	Intermediate	2026-04-26 13:47:47.279648
7	UPSC Prelims	Intermediate	2026-04-26 13:47:47.279648
8	UPSC Mains	Intermediate	2026-04-26 13:47:47.279648
9	UPSC Mains	Beginner	2026-04-26 13:47:47.279648
10	UPSC Mains	Advanced	2026-04-26 13:47:47.279648
11	UPSC Prelims	Intermediate	2026-04-26 13:47:47.279648
12	UPSC Mains	Intermediate	2026-04-26 13:47:47.279648
13	UPSC Mains	Advanced	2026-04-26 13:47:47.279648
14	UPSC Prelims	Intermediate	2026-04-26 13:47:47.279648
15	UPSC Mains	Advanced	2026-04-26 13:47:47.279648
16	UPSC Mains	Intermediate	2026-04-26 13:47:47.279648
17	UPSC Prelims	Intermediate	2026-04-26 13:47:47.279648
18	UPSC Prelims	Advanced	2026-04-26 13:47:47.279648
19	UPSC Mains	Beginner	2026-04-26 13:47:47.279648
20	UPSC Prelims	Advanced	2026-04-26 13:47:47.279648
21	UPSC Prelims	Intermediate	2026-04-26 13:47:47.279648
22	UPSC Prelims	Intermediate	2026-04-26 13:47:47.279648
23	UPSC Prelims	Intermediate	2026-04-26 13:47:47.279648
24	UPSC Prelims	Advanced	2026-04-26 13:47:47.279648
25	UPSC Mains	Advanced	2026-04-26 13:47:47.279648
26	UPSC Prelims	Beginner	2026-04-26 13:47:47.279648
27	UPSC Prelims	Intermediate	2026-04-26 13:47:47.279648
28	UPSC Prelims	Advanced	2026-04-26 13:47:47.279648
29	UPSC Mains	Intermediate	2026-04-26 13:47:47.279648
30	UPSC Mains	Intermediate	2026-04-26 13:47:47.279648
31	UPSC Mains	Advanced	2026-04-26 13:47:47.279648
32	UPSC Prelims	Advanced	2026-04-26 13:47:47.279648
33	UPSC Prelims	Intermediate	2026-04-26 13:47:47.279648
34	UPSC Prelims	Advanced	2026-04-26 13:47:47.279648
35	UPSC Mains	Beginner	2026-04-26 13:47:47.279648
36	UPSC Prelims	Advanced	2026-04-26 13:47:47.279648
37	UPSC Mains	Beginner	2026-04-26 13:47:47.279648
38	UPSC Mains	Advanced	2026-04-26 13:47:47.279648
39	UPSC Mains	Beginner	2026-04-26 13:47:47.279648
40	UPSC Prelims	Intermediate	2026-04-26 13:47:47.279648
41	UPSC Prelims	Beginner	2026-04-26 13:47:47.279648
42	UPSC Mains	Intermediate	2026-04-26 13:47:47.279648
43	UPSC Prelims	Beginner	2026-04-26 13:47:47.279648
44	UPSC Prelims	Advanced	2026-04-26 13:47:47.279648
45	UPSC Prelims	Beginner	2026-04-26 13:47:47.279648
46	UPSC Mains	Intermediate	2026-04-26 13:47:47.279648
47	UPSC Mains	Advanced	2026-04-26 13:47:47.279648
48	UPSC Prelims	Beginner	2026-04-26 13:47:47.279648
49	UPSC Prelims	Advanced	2026-04-26 13:47:47.279648
50	UPSC Mains	Advanced	2026-04-26 13:47:47.279648
51	UPSC Mains	Beginner	2026-04-26 13:47:47.279648
52	UPSC Prelims	Advanced	2026-04-26 13:47:47.279648
53	UPSC Prelims	Beginner	2026-04-26 13:47:47.279648
54	UPSC Prelims	Intermediate	2026-04-26 13:47:47.279648
55	UPSC Prelims	Beginner	2026-04-26 13:47:47.279648
56	UPSC Mains	Advanced	2026-04-26 13:47:47.279648
57	UPSC Prelims	Beginner	2026-04-26 13:47:47.279648
58	UPSC Mains	Advanced	2026-04-26 13:47:47.279648
59	UPSC Prelims	Advanced	2026-04-26 13:47:47.279648
60	UPSC Mains	Beginner	2026-04-26 13:47:47.279648
61	UPSC Prelims	Beginner	2026-04-26 13:47:47.279648
62	UPSC Prelims	Beginner	2026-04-26 13:47:47.279648
63	UPSC Prelims	Beginner	2026-04-26 13:47:47.279648
64	UPSC Prelims	Advanced	2026-04-26 13:47:47.279648
65	UPSC Mains	Advanced	2026-04-26 13:47:47.279648
66	UPSC Mains	Intermediate	2026-04-26 13:47:47.279648
67	UPSC Mains	Intermediate	2026-04-26 13:47:47.279648
68	UPSC Mains	Advanced	2026-04-26 13:47:47.279648
69	UPSC Mains	Intermediate	2026-04-26 13:47:47.279648
70	UPSC Mains	Beginner	2026-04-26 13:47:47.279648
71	UPSC Mains	Beginner	2026-04-26 13:47:47.279648
72	UPSC Prelims	Advanced	2026-04-26 13:47:47.279648
73	UPSC Mains	Beginner	2026-04-26 13:47:47.279648
74	UPSC Prelims	Advanced	2026-04-26 13:47:47.279648
75	UPSC Prelims	Beginner	2026-04-26 13:47:47.279648
76	UPSC Prelims	Advanced	2026-04-26 13:47:47.279648
77	UPSC Prelims	Intermediate	2026-04-26 13:47:47.279648
78	UPSC Mains	Beginner	2026-04-26 13:47:47.279648
79	UPSC Mains	Beginner	2026-04-26 13:47:47.279648
80	UPSC Mains	Advanced	2026-04-26 13:47:47.279648
81	UPSC Mains	Intermediate	2026-04-26 13:47:47.279648
82	UPSC Mains	Beginner	2026-04-26 13:47:47.279648
83	UPSC Prelims	Beginner	2026-04-26 13:47:47.279648
84	UPSC Prelims	Intermediate	2026-04-26 13:47:47.279648
85	UPSC Mains	Beginner	2026-04-26 13:47:47.279648
86	UPSC Mains	Intermediate	2026-04-26 13:47:47.279648
87	UPSC Mains	Beginner	2026-04-26 13:47:47.279648
88	UPSC Mains	Advanced	2026-04-26 13:47:47.279648
89	UPSC Mains	Intermediate	2026-04-26 13:47:47.279648
90	UPSC Mains	Advanced	2026-04-26 13:47:47.279648
91	UPSC Prelims	Intermediate	2026-04-26 13:47:47.279648
92	UPSC Prelims	Beginner	2026-04-26 13:47:47.279648
93	UPSC Prelims	Intermediate	2026-04-26 13:47:47.279648
94	UPSC Mains	Advanced	2026-04-26 13:47:47.279648
95	UPSC Prelims	Advanced	2026-04-26 13:47:47.279648
96	UPSC Prelims	Beginner	2026-04-26 13:47:47.279648
97	UPSC Mains	Advanced	2026-04-26 13:47:47.279648
98	UPSC Prelims	Intermediate	2026-04-26 13:47:47.279648
99	UPSC Prelims	Beginner	2026-04-26 13:47:47.279648
100	UPSC Prelims	Advanced	2026-04-26 13:47:47.279648
101	UPSC Mains	Advanced	2026-04-26 13:48:57.08278
102	UPSC Prelims	Beginner	2026-04-26 13:48:57.08278
103	UPSC Prelims	Advanced	2026-04-26 13:48:57.08278
104	UPSC Prelims	Advanced	2026-04-26 13:48:57.08278
105	UPSC Mains	Intermediate	2026-04-26 13:48:57.08278
106	UPSC Prelims	Advanced	2026-04-26 13:48:57.08278
107	UPSC Prelims	Advanced	2026-04-26 13:48:57.08278
108	UPSC Prelims	Beginner	2026-04-26 13:48:57.08278
109	UPSC Prelims	Intermediate	2026-04-26 13:48:57.08278
110	UPSC Mains	Advanced	2026-04-26 13:48:57.08278
111	UPSC Prelims	Beginner	2026-04-26 13:48:57.08278
112	UPSC Prelims	Advanced	2026-04-26 13:48:57.08278
113	UPSC Mains	Beginner	2026-04-26 13:48:57.08278
114	UPSC Mains	Intermediate	2026-04-26 13:48:57.08278
115	UPSC Mains	Beginner	2026-04-26 13:48:57.08278
116	UPSC Prelims	Advanced	2026-04-26 13:48:57.08278
117	UPSC Mains	Intermediate	2026-04-26 13:48:57.08278
118	UPSC Mains	Intermediate	2026-04-26 13:48:57.08278
119	UPSC Mains	Advanced	2026-04-26 13:48:57.08278
120	UPSC Prelims	Beginner	2026-04-26 13:48:57.08278
121	UPSC Prelims	Intermediate	2026-04-26 13:48:57.08278
122	UPSC Prelims	Beginner	2026-04-26 13:48:57.08278
123	UPSC Mains	Beginner	2026-04-26 13:48:57.08278
124	UPSC Mains	Intermediate	2026-04-26 13:48:57.08278
125	UPSC Mains	Intermediate	2026-04-26 13:48:57.08278
126	UPSC Mains	Advanced	2026-04-26 13:48:57.08278
127	UPSC Mains	Advanced	2026-04-26 13:48:57.08278
128	UPSC Prelims	Intermediate	2026-04-26 13:48:57.08278
129	UPSC Mains	Advanced	2026-04-26 13:48:57.08278
130	UPSC Prelims	Beginner	2026-04-26 13:48:57.08278
131	UPSC Prelims	Advanced	2026-04-26 13:48:57.08278
132	UPSC Mains	Intermediate	2026-04-26 13:48:57.08278
133	UPSC Prelims	Intermediate	2026-04-26 13:48:57.08278
134	UPSC Mains	Advanced	2026-04-26 13:48:57.08278
135	UPSC Mains	Beginner	2026-04-26 13:48:57.08278
136	UPSC Mains	Advanced	2026-04-26 13:48:57.08278
137	UPSC Prelims	Beginner	2026-04-26 13:48:57.08278
138	UPSC Mains	Intermediate	2026-04-26 13:48:57.08278
139	UPSC Prelims	Advanced	2026-04-26 13:48:57.08278
140	UPSC Mains	Beginner	2026-04-26 13:48:57.08278
141	UPSC Mains	Advanced	2026-04-26 13:48:57.08278
142	UPSC Prelims	Beginner	2026-04-26 13:48:57.08278
143	UPSC Mains	Beginner	2026-04-26 13:48:57.08278
144	UPSC Prelims	Advanced	2026-04-26 13:48:57.08278
145	UPSC Prelims	Beginner	2026-04-26 13:48:57.08278
146	UPSC Mains	Beginner	2026-04-26 13:48:57.08278
147	UPSC Prelims	Beginner	2026-04-26 13:48:57.08278
148	UPSC Mains	Advanced	2026-04-26 13:48:57.08278
149	UPSC Mains	Intermediate	2026-04-26 13:48:57.08278
150	UPSC Prelims	Advanced	2026-04-26 13:48:57.08278
151	UPSC Mains	Advanced	2026-04-26 13:48:57.08278
152	UPSC Prelims	Intermediate	2026-04-26 13:48:57.08278
153	UPSC Prelims	Beginner	2026-04-26 13:48:57.08278
154	UPSC Mains	Advanced	2026-04-26 13:48:57.08278
155	UPSC Mains	Advanced	2026-04-26 13:48:57.08278
156	UPSC Mains	Advanced	2026-04-26 13:48:57.08278
157	UPSC Mains	Beginner	2026-04-26 13:48:57.08278
158	UPSC Mains	Beginner	2026-04-26 13:48:57.08278
159	UPSC Prelims	Intermediate	2026-04-26 13:48:57.08278
160	UPSC Prelims	Intermediate	2026-04-26 13:48:57.08278
161	UPSC Mains	Intermediate	2026-04-26 13:48:57.08278
162	UPSC Mains	Advanced	2026-04-26 13:48:57.08278
163	UPSC Prelims	Intermediate	2026-04-26 13:48:57.08278
164	UPSC Mains	Advanced	2026-04-26 13:48:57.08278
165	UPSC Prelims	Advanced	2026-04-26 13:48:57.08278
166	UPSC Prelims	Intermediate	2026-04-26 13:48:57.08278
167	UPSC Prelims	Beginner	2026-04-26 13:48:57.08278
168	UPSC Prelims	Advanced	2026-04-26 13:48:57.08278
169	UPSC Mains	Beginner	2026-04-26 13:48:57.08278
170	UPSC Prelims	Advanced	2026-04-26 13:48:57.08278
171	UPSC Prelims	Advanced	2026-04-26 13:48:57.08278
172	UPSC Prelims	Intermediate	2026-04-26 13:48:57.08278
173	UPSC Prelims	Advanced	2026-04-26 13:48:57.08278
174	UPSC Prelims	Beginner	2026-04-26 13:48:57.08278
175	UPSC Prelims	Advanced	2026-04-26 13:48:57.08278
176	UPSC Prelims	Beginner	2026-04-26 13:48:57.08278
177	UPSC Prelims	Intermediate	2026-04-26 13:48:57.08278
178	UPSC Mains	Beginner	2026-04-26 13:48:57.08278
179	UPSC Prelims	Beginner	2026-04-26 13:48:57.08278
180	UPSC Mains	Intermediate	2026-04-26 13:48:57.08278
181	UPSC Prelims	Intermediate	2026-04-26 13:48:57.08278
182	UPSC Mains	Advanced	2026-04-26 13:48:57.08278
183	UPSC Mains	Beginner	2026-04-26 13:48:57.08278
184	UPSC Prelims	Beginner	2026-04-26 13:48:57.08278
185	UPSC Prelims	Advanced	2026-04-26 13:48:57.08278
186	UPSC Prelims	Beginner	2026-04-26 13:48:57.08278
187	UPSC Mains	Beginner	2026-04-26 13:48:57.08278
188	UPSC Prelims	Advanced	2026-04-26 13:48:57.08278
189	UPSC Prelims	Advanced	2026-04-26 13:48:57.08278
190	UPSC Prelims	Advanced	2026-04-26 13:48:57.08278
191	UPSC Prelims	Advanced	2026-04-26 13:48:57.08278
192	UPSC Prelims	Beginner	2026-04-26 13:48:57.08278
193	UPSC Mains	Beginner	2026-04-26 13:48:57.08278
194	UPSC Mains	Beginner	2026-04-26 13:48:57.08278
195	UPSC Mains	Advanced	2026-04-26 13:48:57.08278
196	UPSC Prelims	Intermediate	2026-04-26 13:48:57.08278
197	UPSC Mains	Advanced	2026-04-26 13:48:57.08278
198	UPSC Mains	Intermediate	2026-04-26 13:48:57.08278
199	UPSC Mains	Intermediate	2026-04-26 13:48:57.08278
200	UPSC Prelims	Beginner	2026-04-26 13:48:57.08278
\.


--
-- Name: content_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.content_id_seq', 1000, true);


--
-- Name: interactions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.interactions_id_seq', 2000, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 200, true);


--
-- Name: content content_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.content
    ADD CONSTRAINT content_pkey PRIMARY KEY (id);


--
-- Name: interactions interactions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.interactions
    ADD CONSTRAINT interactions_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: ix_content_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_content_id ON public.content USING btree (id);


--
-- Name: ix_interactions_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_interactions_id ON public.interactions USING btree (id);


--
-- Name: ix_users_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_users_id ON public.users USING btree (id);


--
-- Name: interactions interactions_content_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.interactions
    ADD CONSTRAINT interactions_content_id_fkey FOREIGN KEY (content_id) REFERENCES public.content(id);


--
-- Name: interactions interactions_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.interactions
    ADD CONSTRAINT interactions_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- PostgreSQL database dump complete
--

\unrestrict SUikXJE6fjvrYsSgYEg72b1Zmf9lEBC9W5YhPizzviwlNDYn6C3DfIqz3a5DibM

