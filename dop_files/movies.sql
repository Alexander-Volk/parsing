--
-- PostgreSQL database dump
--

-- Dumped from database version 10.12 (Ubuntu 10.12-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 10.12 (Ubuntu 10.12-0ubuntu0.18.04.1)

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

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: coin; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.coin (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    url text NOT NULL,
    price character varying(255) NOT NULL
);


ALTER TABLE public.coin OWNER TO postgres;

--
-- Name: coin_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.coin_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.coin_id_seq OWNER TO postgres;

--
-- Name: coin_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.coin_id_seq OWNED BY public.coin.id;


--
-- Name: movie; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.movie (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    url text NOT NULL,
    rating character varying(255) NOT NULL,
    year character varying(255) NOT NULL,
    country character varying(255) NOT NULL,
    genre character varying(255) NOT NULL,
    director character varying(255) NOT NULL,
    duration character varying(255) NOT NULL
);


ALTER TABLE public.movie OWNER TO postgres;

--
-- Name: movie_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.movie_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.movie_id_seq OWNER TO postgres;

--
-- Name: movie_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.movie_id_seq OWNED BY public.movie.id;


--
-- Name: coin id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.coin ALTER COLUMN id SET DEFAULT nextval('public.coin_id_seq'::regclass);


--
-- Name: movie id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movie ALTER COLUMN id SET DEFAULT nextval('public.movie_id_seq'::regclass);


--
-- Data for Name: coin; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.coin (id, name, url, price) FROM stdin;
1	Bitcoin	https://coinmarketcap.com/currencies/bitcoin/	8064.96
2	Ethereum	https://coinmarketcap.com/currencies/ethereum/	203.45
3	XRP	https://coinmarketcap.com/currencies/xrp/	0.213750
4	Bitcoin Cash	https://coinmarketcap.com/currencies/bitcoin-cash/	273.40
5	Tether	https://coinmarketcap.com/currencies/tether/	1.00
6	Bitcoin SV	https://coinmarketcap.com/currencies/bitcoin-sv/	199.62
7	Litecoin	https://coinmarketcap.com/currencies/litecoin/	50.90
8	EOS	https://coinmarketcap.com/currencies/eos/	3.12
9	Binance Coin	https://coinmarketcap.com/currencies/binance-coin/	17.18
10	Tezos	https://coinmarketcap.com/currencies/tezos/	2.68
11	Chainlink	https://coinmarketcap.com/currencies/chainlink/	4.07
12	Cardano	https://coinmarketcap.com/currencies/cardano/	0.042268
13	Stellar	https://coinmarketcap.com/currencies/stellar/	0.052679
14	TRON	https://coinmarketcap.com/currencies/tron/	0.015212
15	Monero	https://coinmarketcap.com/currencies/monero/	56.15
16	UNUS SED LEO	https://coinmarketcap.com/currencies/unus-sed-leo/	0.979849
17	Huobi Token	https://coinmarketcap.com/currencies/huobi-token/	4.09
18	Ethereum Classic	https://coinmarketcap.com/currencies/ethereum-classic/	6.84
19	Crypto.com Coin	https://coinmarketcap.com/currencies/crypto-com-coin/	0.050311
20	Neo	https://coinmarketcap.com/currencies/neo/	10.06
21	Dash	https://coinmarketcap.com/currencies/dash/	74.61
22	HedgeTrade	https://coinmarketcap.com/currencies/hedgetrade/	2.20
23	Cosmos	https://coinmarketcap.com/currencies/cosmos/	3.13
24	IOTA	https://coinmarketcap.com/currencies/iota/	0.196020
25	Maker	https://coinmarketcap.com/currencies/maker/	524.91
26	USD Coin	https://coinmarketcap.com/currencies/usd-coin/	1.00
27	NEM	https://coinmarketcap.com/currencies/nem/	0.046258
28	Zcash	https://coinmarketcap.com/currencies/zcash/	41.90
29	Ontology	https://coinmarketcap.com/currencies/ontology/	0.596787
30	Basic Attention Token	https://coinmarketcap.com/currencies/basic-attention-token/	0.204717
31	OKB	https://coinmarketcap.com/currencies/okb/	4.59
32	Dogecoin	https://coinmarketcap.com/currencies/dogecoin/	0.002219
33	VeChain	https://coinmarketcap.com/currencies/vechain/	0.004846
34	FTX Token	https://coinmarketcap.com/currencies/ftx-token/	2.43
35	Paxos Standard	https://coinmarketcap.com/currencies/paxos-standard/	1.00
36	Algorand	https://coinmarketcap.com/currencies/algorand/	0.294171
37	Qtum	https://coinmarketcap.com/currencies/qtum/	1.95
38	Decred	https://coinmarketcap.com/currencies/decred/	16.69
39	ICON	https://coinmarketcap.com/currencies/icon/	0.325280
40	Bitcoin Gold	https://coinmarketcap.com/currencies/bitcoin-gold/	9.69
41	Hedera Hashgraph	https://coinmarketcap.com/currencies/hedera-hashgraph/	0.046322
42	Lisk	https://coinmarketcap.com/currencies/lisk/	1.23
43	0x	https://coinmarketcap.com/currencies/0x/	0.236971
44	Kyber Network	https://coinmarketcap.com/currencies/kyber-network/	0.778003
45	ZB Token	https://coinmarketcap.com/currencies/zb-token/	0.298865
46	Ravencoin	https://coinmarketcap.com/currencies/ravencoin/	0.023870
47	Augur	https://coinmarketcap.com/currencies/augur/	11.94
48	Synthetix Network Token	https://coinmarketcap.com/currencies/synthetix-network-token/	0.765633
49	TrueUSD	https://coinmarketcap.com/currencies/trueusd/	1.00
50	Waves	https://coinmarketcap.com/currencies/waves/	1.18
51	Multi-collateral DAI	https://coinmarketcap.com/currencies/multi-collateral-dai/	0.999936
52	Binance USD	https://coinmarketcap.com/currencies/binance-usd/	1.00
53	KuCoin Shares	https://coinmarketcap.com/currencies/kucoin-shares/	1.37
54	OmiseGO	https://coinmarketcap.com/currencies/omisego/	0.798319
55	Bitcoin Diamond	https://coinmarketcap.com/currencies/bitcoin-diamond/	0.597200
56	MonaCoin	https://coinmarketcap.com/currencies/monacoin/	1.49
57	THETA	https://coinmarketcap.com/currencies/theta/	0.110541
58	Nano	https://coinmarketcap.com/currencies/nano/	0.696360
59	Holo	https://coinmarketcap.com/currencies/holo/	0.000559
60	Nexo	https://coinmarketcap.com/currencies/nexo/	0.153193
61	Nervos Network	https://coinmarketcap.com/currencies/nervos-network/	0.006275
62	DxChain Token	https://coinmarketcap.com/currencies/dxchain-token/	0.001630
63	Horizen	https://coinmarketcap.com/currencies/horizen/	9.03
64	DigixDAO	https://coinmarketcap.com/currencies/digixdao/	38.49
65	Bytom	https://coinmarketcap.com/currencies/bytom/	0.076530
66	Siacoin	https://coinmarketcap.com/currencies/siacoin/	0.001834
67	Steem	https://coinmarketcap.com/currencies/steem/	0.210015
68	Enjin Coin	https://coinmarketcap.com/currencies/enjin-coin/	0.090399
69	v.systems	https://coinmarketcap.com/currencies/v-systems/	0.036867
70	Bytecoin	https://coinmarketcap.com/currencies/bytecoin-bcn/	0.000387
71	DigiByte	https://coinmarketcap.com/currencies/digibyte/	0.005441
72	MCO	https://coinmarketcap.com/currencies/crypto-com/	4.43
73	BitTorrent	https://coinmarketcap.com/currencies/bittorrent/	0.000323
74	Komodo	https://coinmarketcap.com/currencies/komodo/	0.548978
75	HyperCash	https://coinmarketcap.com/currencies/hypercash/	1.45
76	Ren	https://coinmarketcap.com/currencies/ren/	0.072620
77	ABBC Coin	https://coinmarketcap.com/currencies/abbc-coin/	0.109795
78	Zilliqa	https://coinmarketcap.com/currencies/zilliqa/	0.006092
79	Matic Network	https://coinmarketcap.com/currencies/matic-network/	0.021632
80	Terra	https://coinmarketcap.com/currencies/terra-luna/	0.206648
81	BitShares	https://coinmarketcap.com/currencies/bitshares/	0.021486
82	Verge	https://coinmarketcap.com/currencies/verge/	0.003483
83	IOST	https://coinmarketcap.com/currencies/iostoken/	0.004582
84	Seele	https://coinmarketcap.com/currencies/seele/	0.078345
85	Loopring	https://coinmarketcap.com/currencies/loopring/	0.052355
86	Swipe	https://coinmarketcap.com/currencies/swipe/	0.835234
87	Aion	https://coinmarketcap.com/currencies/aion/	0.122526
88	Chiliz	https://coinmarketcap.com/currencies/chiliz/	0.010680
89	Energi	https://coinmarketcap.com/currencies/energi/	1.80
90	Ardor	https://coinmarketcap.com/currencies/ardor/	0.047345
91	Aeternity	https://coinmarketcap.com/currencies/aeternity/	0.155398
92	Status	https://coinmarketcap.com/currencies/status/	0.013123
93	Golem	https://coinmarketcap.com/currencies/golem-network-tokens/	0.046313
94	WAX	https://coinmarketcap.com/currencies/wax/	0.041791
95	Zcoin	https://coinmarketcap.com/currencies/zcoin/	4.45
96	Molecular Future	https://coinmarketcap.com/currencies/molecular-future/	0.500304
97	aelf	https://coinmarketcap.com/currencies/aelf/	0.074678
98	Blockstack	https://coinmarketcap.com/currencies/blockstack/	0.127111
99	iExec RLC	https://coinmarketcap.com/currencies/rlc/	0.491738
100	Aragon	https://coinmarketcap.com/currencies/aragon/	1.19
101	Yap Stone	https://coinmarketcap.com/currencies/yap-stone/	0.259534
102	Decentraland	https://coinmarketcap.com/currencies/decentraland/	0.036884
103	WaykiChain	https://coinmarketcap.com/currencies/waykichain/	0.199131
104	Pundi X	https://coinmarketcap.com/currencies/pundi-x/	0.000160
105	Power Ledger	https://coinmarketcap.com/currencies/power-ledger/	0.085885
106	Quant	https://coinmarketcap.com/currencies/quant/	3.04
107	MaidSafeCoin	https://coinmarketcap.com/currencies/maidsafecoin/	0.080266
108	STASIS EURO	https://coinmarketcap.com/currencies/stasis-euro/	1.12
109	RSK Infrastructure Framework	https://coinmarketcap.com/currencies/rsk-infrastructure-framework/	0.062596
110	Aave	https://coinmarketcap.com/currencies/aave/	0.027257
111	Stratis	https://coinmarketcap.com/currencies/stratis/	0.338599
112	Huobi Pool Token	https://coinmarketcap.com/currencies/huobi-pool-token/	0.006606
113	Elastos	https://coinmarketcap.com/currencies/elastos/	1.81
114	Crypterium	https://coinmarketcap.com/currencies/crpt/	0.316486
115	TomoChain	https://coinmarketcap.com/currencies/tomochain/	0.450253
116	Unibright	https://coinmarketcap.com/currencies/unibright/	0.205084
117	Gatechain Token	https://coinmarketcap.com/currencies/gatechain-token/	0.511050
118	Electroneum	https://coinmarketcap.com/currencies/electroneum/	0.002991
119	SOLVE	https://coinmarketcap.com/currencies/solve/	0.089186
120	Ripio Credit Network	https://coinmarketcap.com/currencies/ripio-credit-network/	0.057491
121	Beam	https://coinmarketcap.com/currencies/beam/	0.506359
122	GXChain	https://coinmarketcap.com/currencies/gxchain/	0.445003
123	Waltonchain	https://coinmarketcap.com/currencies/waltonchain/	0.390095
124	Grin	https://coinmarketcap.com/currencies/grin/	0.750782
125	Digitex Futures	https://coinmarketcap.com/currencies/digitex-futures/	0.033028
126	Project Pai	https://coinmarketcap.com/currencies/project-pai/	0.018265
127	TrueChain	https://coinmarketcap.com/currencies/truechain/	0.319548
128	Factom	https://coinmarketcap.com/currencies/factom/	2.80
129	BOSAGORA	https://coinmarketcap.com/currencies/bosagora/	0.089082
130	Orbs	https://coinmarketcap.com/currencies/orbs/	0.012165
131	Hyperion	https://coinmarketcap.com/currencies/hyperion/	0.078150
132	Celsius	https://coinmarketcap.com/currencies/celsius/	0.100264
133	Cortex	https://coinmarketcap.com/currencies/cortex/	0.093157
134	ReddCoin	https://coinmarketcap.com/currencies/reddcoin/	0.000806
135	Ark	https://coinmarketcap.com/currencies/ark/	0.195081
136	Aidos Kuneen	https://coinmarketcap.com/currencies/aidos-kuneen/	0.885330
137	Super Zero	https://coinmarketcap.com/currencies/super-zero/	0.090598
138	Wanchain	https://coinmarketcap.com/currencies/wanchain/	0.204526
139	Single Collateral DAI	https://coinmarketcap.com/currencies/single-collateral-dai/	1.01
140	MX Token	https://coinmarketcap.com/currencies/mx-token/	0.108635
141	Divi	https://coinmarketcap.com/currencies/divi/	0.013651
142	Wirex Token	https://coinmarketcap.com/currencies/wirex-token/	0.010721
143	Nebulas	https://coinmarketcap.com/currencies/nebulas-token/	0.391036
144	NULS	https://coinmarketcap.com/currencies/nuls/	0.236474
145	Fetch.ai	https://coinmarketcap.com/currencies/fetch/	0.029238
146	IoTeX	https://coinmarketcap.com/currencies/iotex/	0.003699
147	BHEX Token	https://coinmarketcap.com/currencies/bhex-token/	0.043586
148	Loom Network	https://coinmarketcap.com/currencies/loom-network/	0.020283
149	Ocean Protocol	https://coinmarketcap.com/currencies/ocean-protocol/	0.056040
150	Numeraire	https://coinmarketcap.com/currencies/numeraire/	8.42
151	Contentos	https://coinmarketcap.com/currencies/contentos/	0.016002
152	PIVX	https://coinmarketcap.com/currencies/pivx/	0.329539
153	Populous	https://coinmarketcap.com/currencies/populous/	0.349637
154	FunFair	https://coinmarketcap.com/currencies/funfair/	0.002827
155	Harmony	https://coinmarketcap.com/currencies/harmony/	0.003938
156	Einsteinium	https://coinmarketcap.com/currencies/einsteinium/	0.082276
157	Civic	https://coinmarketcap.com/currencies/civic/	0.026794
158	Ignis	https://coinmarketcap.com/currencies/ignis/	0.023527
159	ZEON	https://coinmarketcap.com/currencies/zeon/	0.000704
160	WINk	https://coinmarketcap.com/currencies/wink-tronbet/	0.000090
161	Metal	https://coinmarketcap.com/currencies/metal/	0.268704
162	Newton	https://coinmarketcap.com/currencies/newton/	0.000838
163	Tierion	https://coinmarketcap.com/currencies/tierion/	0.039910
164	Bancor	https://coinmarketcap.com/currencies/bancor/	0.247092
165	Storj	https://coinmarketcap.com/currencies/storj/	0.125713
166	Nash Exchange	https://coinmarketcap.com/currencies/nash-exchange/	0.726695
167	Bread	https://coinmarketcap.com/currencies/bread/	0.191548
168	STPT	https://coinmarketcap.com/currencies/stpt/	0.024596
169	Gnosis	https://coinmarketcap.com/currencies/gnosis-gno/	15.30
170	Lambda	https://coinmarketcap.com/currencies/lambda/	0.024945
171	QASH	https://coinmarketcap.com/currencies/qash/	0.045766
172	Reserve Rights	https://coinmarketcap.com/currencies/reserve-rights/	0.003776
173	BHPCoin	https://coinmarketcap.com/currencies/bhp-coin/	0.773833
174	Enigma	https://coinmarketcap.com/currencies/enigma/	0.207819
175	ILCoin	https://coinmarketcap.com/currencies/ilcoin/	0.036075
176	LTO Network	https://coinmarketcap.com/currencies/lto-network/	0.071008
177	SwissBorg	https://coinmarketcap.com/currencies/swissborg/	0.021684
178	Gas	https://coinmarketcap.com/currencies/gas/	1.46
179	Revain	https://coinmarketcap.com/currencies/revain/	0.030227
180	ZTCoin	https://coinmarketcap.com/currencies/ztcoin/	0.052310
181	XMax	https://coinmarketcap.com/currencies/xmax/	0.000815
182	Machine Xchange Coin	https://coinmarketcap.com/currencies/machine-xchange-coin/	0.005606
183	Dragon Coins	https://coinmarketcap.com/currencies/dragon-coins/	0.041267
184	Elrond	https://coinmarketcap.com/currencies/elrond/	0.001456
185	Metaverse ETP	https://coinmarketcap.com/currencies/metaverse/	0.181675
186	Syscoin	https://coinmarketcap.com/currencies/syscoin/	0.024194
187	Thunder Token	https://coinmarketcap.com/currencies/thunder-token/	0.004811
188	BORA	https://coinmarketcap.com/currencies/bora/	0.020768
189	Groestlcoin	https://coinmarketcap.com/currencies/groestlcoin/	0.186756
190	BitKan	https://coinmarketcap.com/currencies/bitkan/	0.002202
191	Vertcoin	https://coinmarketcap.com/currencies/vertcoin/	0.255509
192	BlockStamp	https://coinmarketcap.com/currencies/blockstamp/	0.520174
193	THORChain	https://coinmarketcap.com/currencies/thorchain/	0.094403
194	Origin Protocol	https://coinmarketcap.com/currencies/origin-protocol/	0.476809
195	Constellation	https://coinmarketcap.com/currencies/constellation/	0.013389
196	TTC	https://coinmarketcap.com/currencies/ttc/	0.033050
197	Dent	https://coinmarketcap.com/currencies/dent/	0.000168
198	Kleros	https://coinmarketcap.com/currencies/kleros/	0.028386
199	Loki	https://coinmarketcap.com/currencies/loki/	0.279766
200	Polymath	https://coinmarketcap.com/currencies/polymath-network/	0.026540
201	InnovativeBioresearchClassic	https://coinmarketcap.com/currencies/innovative-bioresearch-classic/	6.95e-10
202	Folgory Coin	https://coinmarketcap.com/currencies/folgory-coin/	38.86
203	TAGZ5	https://coinmarketcap.com/currencies/tagz5/	0.977862
204	MINDOL	https://coinmarketcap.com/currencies/mindol/	2.01
205	PlayFuel	https://coinmarketcap.com/currencies/playfuel/	0.489828
206	INO COIN	https://coinmarketcap.com/currencies/ino-coin/	1.30
207	Insight Chain	https://coinmarketcap.com/currencies/insight-chain/	0.650396
208	Metaverse Dualchain Network Architecture	https://coinmarketcap.com/currencies/metaverse-dualchain-network-architecture/	0.019710
209	Baer Chain	https://coinmarketcap.com/currencies/baer-chain/	1.12
210	PRIZM	https://coinmarketcap.com/currencies/prizm/	0.164252
211	ThoreCoin	https://coinmarketcap.com/currencies/thorecoin/	1566.16
212	ThoreNext	https://coinmarketcap.com/currencies/thorenext/	6.07
213	Mixin	https://coinmarketcap.com/currencies/mixin/	234.58
214	ETERNAL TOKEN	https://coinmarketcap.com/currencies/eternal-token/	1.12
215	Cryptonex	https://coinmarketcap.com/currencies/cryptonex/	1.81
216	inSure	https://coinmarketcap.com/currencies/insure/	0.028281
217	GlitzKoin	https://coinmarketcap.com/currencies/glitzkoin/	0.392052
218	Counos Coin	https://coinmarketcap.com/currencies/counos-coin/	5.16
219	botXcoin	https://coinmarketcap.com/currencies/botxcoin/	0.044408
220	Tap	https://coinmarketcap.com/currencies/tap/	0.129276
221	Centrality	https://coinmarketcap.com/currencies/centrality/	0.074362
222	GAPS	https://coinmarketcap.com/currencies/gaps/	5.85
223	Dimension Chain	https://coinmarketcap.com/currencies/dimension-chain/	0.234126
224	MineBee	https://coinmarketcap.com/currencies/minebee/	0.028091
225	Beldex	https://coinmarketcap.com/currencies/beldex/	0.051113
226	Storeum	https://coinmarketcap.com/currencies/storeum/	0.179275
227	Flexacoin	https://coinmarketcap.com/currencies/flexacoin/	0.001814
228	Breezecoin	https://coinmarketcap.com/currencies/breezecoin/	0.471213
229	QCash	https://coinmarketcap.com/currencies/qcash/	0.141277
230	Bitbook Gambling	https://coinmarketcap.com/currencies/bitbook-gambling/	0.112866
231	Bankera	https://coinmarketcap.com/currencies/bankera/	0.001602
232	Cryptoindex.com 100	https://coinmarketcap.com/currencies/cryptoindex-com-100/	0.617729
233	WhiteCoin	https://coinmarketcap.com/currencies/whitecoin/	0.147868
234	FABRK	https://coinmarketcap.com/currencies/fabrk/	0.007557
235	BitMax Token	https://coinmarketcap.com/currencies/bitmax-token/	0.054351
236	Joule	https://coinmarketcap.com/currencies/joule/	0.033597
237	BitForex Token	https://coinmarketcap.com/currencies/bitforex-token/	0.007630
238	1irstcoin	https://coinmarketcap.com/currencies/1irstcoin/	0.803103
239	BitcoinHD	https://coinmarketcap.com/currencies/bitcoinhd/	4.96
240	NEXT	https://coinmarketcap.com/currencies/next/	0.720814
241	Vitae	https://coinmarketcap.com/currencies/vitae/	1.48
242	BigONE Token	https://coinmarketcap.com/currencies/bigone-token/	0.003038
243	USDK	https://coinmarketcap.com/currencies/usdk/	1.00
244	Ecoreal Estate	https://coinmarketcap.com/currencies/ecoreal-estate/	0.134540
245	Buggyra Coin Zero	https://coinmarketcap.com/currencies/buggyra-coin-zero/	0.013674
246	Velas	https://coinmarketcap.com/currencies/velas/	0.020384
247	Qubitica	https://coinmarketcap.com/currencies/qubitica/	33.05
248	Tratin	https://coinmarketcap.com/currencies/tratin/	0.000224
249	Dynamic Trading Rights	https://coinmarketcap.com/currencies/dynamic-trading-rights/	0.016253
250	PLATINCOIN	https://coinmarketcap.com/currencies/platincoin/	4.72
251	Bitball Treasure	https://coinmarketcap.com/currencies/bitball-treasure/	48.87
252	HEX	https://coinmarketcap.com/currencies/hex/	0.000277
253	Bit-Z Token	https://coinmarketcap.com/currencies/bit-z-token/	0.168751
254	STEM CELL COIN	https://coinmarketcap.com/currencies/stem-cell-coin/	0.065302
255	Poseidon Network	https://coinmarketcap.com/currencies/poseidon-network/	0.009720
256	LATOKEN	https://coinmarketcap.com/currencies/latoken/	0.054417
257	AgaveCoin	https://coinmarketcap.com/currencies/agavecoin/	0.052838
258	WazirX	https://coinmarketcap.com/currencies/wazirx/	0.190090
259	CasinoCoin	https://coinmarketcap.com/currencies/casinocoin/	0.000507
260	CRYPTO20	https://coinmarketcap.com/currencies/c20/	0.493185
261	Bitcoin 2	https://coinmarketcap.com/currencies/bitcoin2/	1.14
262	Veritaseum	https://coinmarketcap.com/currencies/veritaseum/	8.77
263	MEXC Token	https://coinmarketcap.com/currencies/mexc-token/	0.020234
264	PAX Gold	https://coinmarketcap.com/currencies/pax-gold/	1642.02
265	Jewel	https://coinmarketcap.com/currencies/jewel/	0.325017
266	VestChain	https://coinmarketcap.com/currencies/vestchain/	0.002507
267	Envion	https://coinmarketcap.com/currencies/envion/	0.127754
268	BitBay	https://coinmarketcap.com/currencies/bitbay/	0.015968
269	Chimpion	https://coinmarketcap.com/currencies/chimpion/	0.503555
270	Orchid	https://coinmarketcap.com/currencies/orchid/	0.236859
271	Karatgold Coin	https://coinmarketcap.com/currencies/karatgold-coin/	0.003321
272	General Attention Currency	https://coinmarketcap.com/currencies/general-attention-currency/	1.51
273	LuckySevenToken	https://coinmarketcap.com/currencies/luckyseventoken/	0.230178
274	UNI COIN	https://coinmarketcap.com/currencies/uni-coin/	0.250525
275	Obyte	https://coinmarketcap.com/currencies/obyte/	19.68
276	WinCash	https://coinmarketcap.com/currencies/wincash/	9.50
277	Apollo Currency	https://coinmarketcap.com/currencies/apollo-currency/	0.000898
278	Ultiledger	https://coinmarketcap.com/currencies/ultiledger/	0.020855
279	BTU Protocol	https://coinmarketcap.com/currencies/btu-protocol/	0.181611
280	Function X	https://coinmarketcap.com/currencies/function-x/	0.069484
281	Nxt	https://coinmarketcap.com/currencies/nxt/	0.012557
282	CryptoVerificationCoin	https://coinmarketcap.com/currencies/cryptoverificationcoin/	21.50
283	Cred	https://coinmarketcap.com/currencies/libra-credit/	0.018631
284	IRISnet	https://coinmarketcap.com/currencies/irisnet/	0.020464
285	GreenPower	https://coinmarketcap.com/currencies/greenpower/	0.003794
286	Eidoo	https://coinmarketcap.com/currencies/eidoo/	0.170131
287	Unobtanium	https://coinmarketcap.com/currencies/unobtanium/	59.99
288	Ultra	https://coinmarketcap.com/currencies/ultra/	0.053111
289	MOAC	https://coinmarketcap.com/currencies/moac/	0.192030
290	Burst	https://coinmarketcap.com/currencies/burst/	0.005731
291	SingularityNET	https://coinmarketcap.com/currencies/singularitynet/	0.022007
292	apM Coin	https://coinmarketcap.com/currencies/apm-coin/	0.391717
293	B2BX	https://coinmarketcap.com/currencies/b2bx/	0.596877
294	ChronoCoin	https://coinmarketcap.com/currencies/chronocoin/	0.005185
295	NewYork Exchange	https://coinmarketcap.com/currencies/newyork-exchange/	3.51
296	Dentacoin	https://coinmarketcap.com/currencies/dentacoin/	0.000024
297	EDUCare	https://coinmarketcap.com/currencies/educare/	0.015639
298	Fantom	https://coinmarketcap.com/currencies/fantom/	0.006243
299	Blocknet	https://coinmarketcap.com/currencies/blocknet/	1.70
300	Perlin	https://coinmarketcap.com/currencies/perlin/	0.032817
301	Bibox Token	https://coinmarketcap.com/currencies/bibox-token/	0.109332
302	Nexus	https://coinmarketcap.com/currencies/nexus/	0.171320
303	Celer Network	https://coinmarketcap.com/currencies/celer-network/	0.003031
304	Dragonchain	https://coinmarketcap.com/currencies/dragonchain/	0.046295
305	Voyager Token	https://coinmarketcap.com/currencies/voyager-token/	0.049496
306	FIBOS	https://coinmarketcap.com/currencies/fibos/	0.010276
307	Monero Classic	https://coinmarketcap.com/currencies/monero-classic/	0.598643
308	Aurora	https://coinmarketcap.com/currencies/aurora/	0.001654
309	Telos	https://coinmarketcap.com/currencies/telos/	0.043163
310	Arcblock	https://coinmarketcap.com/currencies/arcblock/	0.107398
311	Emirex Token	https://coinmarketcap.com/currencies/emirex-token/	0.426442
312	ODEM	https://coinmarketcap.com/currencies/odem/	0.047947
313	Moeda Loyalty Points	https://coinmarketcap.com/currencies/moeda-loyalty-points/	0.524016
314	Cindicator	https://coinmarketcap.com/currencies/cindicator/	0.005413
315	Diamond Platform Token	https://coinmarketcap.com/currencies/diamond-platform-token/	5.90
316	Anchor	https://coinmarketcap.com/currencies/anchor/	0.788121
317	Cocos-BCX	https://coinmarketcap.com/currencies/cocos-bcx/	0.000415
318	IDEX	https://coinmarketcap.com/currencies/idex/	0.020148
319	Request	https://coinmarketcap.com/currencies/request/	0.012556
320	Theta Fuel	https://coinmarketcap.com/currencies/theta-fuel/	0.002561
321	Robotina	https://coinmarketcap.com/currencies/robotina/	0.032273
322	COTI	https://coinmarketcap.com/currencies/coti/	0.031045
323	GoChain	https://coinmarketcap.com/currencies/gochain/	0.010577
324	Spectre.ai Dividend Token	https://coinmarketcap.com/currencies/spectre-dividend/	0.116532
325	CyberMiles	https://coinmarketcap.com/currencies/cybermiles/	0.011827
326	MovieBloc	https://coinmarketcap.com/currencies/moviebloc/	0.001935
327	Maximine Coin	https://coinmarketcap.com/currencies/maximine-coin/	0.005651
328	IoT Chain	https://coinmarketcap.com/currencies/iot-chain/	0.105721
329	GoWithMi	https://coinmarketcap.com/currencies/gowithmi/	0.003378
330	Santiment Network Token	https://coinmarketcap.com/currencies/santiment/	0.145661
331	XeniosCoin	https://coinmarketcap.com/currencies/xenioscoin/	0.119855
332	Storm	https://coinmarketcap.com/currencies/storm/	0.001210
333	YOU COIN	https://coinmarketcap.com/currencies/you-coin/	0.019937
334	ZVCHAIN	https://coinmarketcap.com/currencies/zvchain/	0.020716
335	CryptoFranc	https://coinmarketcap.com/currencies/cryptofranc/	1.08
336	CONUN	https://coinmarketcap.com/currencies/conun/	0.003105
337	Everus	https://coinmarketcap.com/currencies/everus/	0.018939
338	Cosmo Coin	https://coinmarketcap.com/currencies/cosmo-coin/	0.013076
339	EDC Blockchain	https://coinmarketcap.com/currencies/edc-blockchain/	0.003284
340	Metadium	https://coinmarketcap.com/currencies/metadium/	0.007012
341	United Traders Token	https://coinmarketcap.com/currencies/uttoken/	0.232799
342	Everipedia	https://coinmarketcap.com/currencies/everipedia/	0.001151
343	Elitium	https://coinmarketcap.com/currencies/elitium/	0.876875
344	Neblio	https://coinmarketcap.com/currencies/neblio/	0.554544
345	QuarkChain	https://coinmarketcap.com/currencies/quarkchain/	0.003538
346	Safe	https://coinmarketcap.com/currencies/safe/	0.409795
347	Band Protocol	https://coinmarketcap.com/currencies/band-protocol/	0.473057
348	Mainframe	https://coinmarketcap.com/currencies/mainframe/	0.000948
349	Tael	https://coinmarketcap.com/currencies/tael/	0.111032
350	Streamr DATAcoin	https://coinmarketcap.com/currencies/streamr-datacoin/	0.012246
351	NKN	https://coinmarketcap.com/currencies/nkn/	0.017692
352	CoinEx Token	https://coinmarketcap.com/currencies/coinex-token/	0.012380
353	Davinci Coin	https://coinmarketcap.com/currencies/davinci-coin/	0.002221
354	MediBloc	https://coinmarketcap.com/currencies/medibloc/	0.003278
355	Lightning Bitcoin	https://coinmarketcap.com/currencies/lightning-bitcoin/	2.08
356	LINKA	https://coinmarketcap.com/currencies/linka/	0.011563
357	Aergo	https://coinmarketcap.com/currencies/aergo/	0.030202
358	DMarket	https://coinmarketcap.com/currencies/dmarket/	0.139860
359	Sport and Leisure	https://coinmarketcap.com/currencies/sport-and-leisure/	0.011670
360	MicroBitcoin	https://coinmarketcap.com/currencies/microbitcoin/	0.000041
361	The Force Protocol	https://coinmarketcap.com/currencies/the-force-protocol/	0.025033
362	Ankr	https://coinmarketcap.com/currencies/ankr/	0.001945
363	Wixlar	https://coinmarketcap.com/currencies/wixlar/	0.003246
364	eosDAC	https://coinmarketcap.com/currencies/eosdac/	0.011726
365	Electronic Energy Coin	https://coinmarketcap.com/currencies/electronic-energy-coin/	0.017782
366	Aencoin	https://coinmarketcap.com/currencies/aencoin/	0.028756
367	Skycoin	https://coinmarketcap.com/currencies/skycoin/	0.451614
368	Dusk Network	https://coinmarketcap.com/currencies/dusk-network/	0.033616
369	BnkToTheFuture	https://coinmarketcap.com/currencies/bnktothefuture/	0.010483
370	Clipper Coin	https://coinmarketcap.com/currencies/clipper-coin/	0.002562
371	PressOne	https://coinmarketcap.com/currencies/pressone/	0.026500
372	Rakon	https://coinmarketcap.com/currencies/rakon/	0.093601
373	Acute Angle Cloud	https://coinmarketcap.com/currencies/acute-angle-cloud/	0.029308
374	Atlas Protocol	https://coinmarketcap.com/currencies/atlas-protocol/	0.002839
375	Egoras Dollar	https://coinmarketcap.com/currencies/egoras-dollar/	0.960594
376	Moss Coin	https://coinmarketcap.com/currencies/moss-coin/	0.021613
377	Wrapped Bitcoin	https://coinmarketcap.com/currencies/wrapped-bitcoin/	8067.30
378	Carry	https://coinmarketcap.com/currencies/carry/	0.001833
379	Quantum Resistant Ledger	https://coinmarketcap.com/currencies/quantum-resistant-ledger/	0.100556
380	OTOCASH	https://coinmarketcap.com/currencies/otocash/	0.332091
381	Zano	https://coinmarketcap.com/currencies/zano/	0.705274
382	OST	https://coinmarketcap.com/currencies/ost/	0.009560
383	Credits	https://coinmarketcap.com/currencies/credits/	0.037720
384	doc.com Token	https://coinmarketcap.com/currencies/doc-com-token/	0.009270
385	AdEx	https://coinmarketcap.com/currencies/adx-net/	0.079475
386	VIDY	https://coinmarketcap.com/currencies/vidy/	0.001091
387	Namecoin	https://coinmarketcap.com/currencies/namecoin/	0.451881
388	Hxro	https://coinmarketcap.com/currencies/hxro/	0.070483
389	Polybius	https://coinmarketcap.com/currencies/polybius/	1.65
390	VITE	https://coinmarketcap.com/currencies/vite/	0.014005
391	UnlimitedIP	https://coinmarketcap.com/currencies/unlimitedip/	0.005272
392	Aladdin	https://coinmarketcap.com/currencies/aladdin/	0.000150
393	ARPA Chain	https://coinmarketcap.com/currencies/arpa-chain/	0.009798
394	SmartMesh	https://coinmarketcap.com/currencies/smartmesh/	0.004729
395	RChain	https://coinmarketcap.com/currencies/rchain/	0.016936
396	DigitalBits	https://coinmarketcap.com/currencies/digitalbits/	0.019032
397	T.OS	https://coinmarketcap.com/currencies/t-os/	0.007419
398	XinFin Network	https://coinmarketcap.com/currencies/xinfin-network/	0.001084
399	Gifto	https://coinmarketcap.com/currencies/gifto/	0.009559
400	Digix Gold Token	https://coinmarketcap.com/currencies/digix-gold-token/	52.61
401	NavCoin	https://coinmarketcap.com/currencies/nav-coin/	0.091212
402	Contents Protocol	https://coinmarketcap.com/currencies/contents-protocol/	0.001933
403	All Sports	https://coinmarketcap.com/currencies/all-sports/	0.004096
404	PlayCoin [ERC20]	https://coinmarketcap.com/currencies/playcoin-erc20/	0.006199
405	Tellor	https://coinmarketcap.com/currencies/tellor/	6.36
406	Telcoin	https://coinmarketcap.com/currencies/telcoin/	0.000129
407	GNY	https://coinmarketcap.com/currencies/gny/	0.031662
408	SALT	https://coinmarketcap.com/currencies/salt/	0.075822
409	Travala.com	https://coinmarketcap.com/currencies/travala/	0.171080
410	Kin	https://coinmarketcap.com/currencies/kin/	0.000005
411	S4FE	https://coinmarketcap.com/currencies/s4fe/	0.022261
412	Dero	https://coinmarketcap.com/currencies/dero/	0.622718
413	Quantstamp	https://coinmarketcap.com/currencies/quantstamp/	0.009609
414	Raiden Network Token	https://coinmarketcap.com/currencies/raiden-network-token/	0.116687
415	Steem Dollars	https://coinmarketcap.com/currencies/steem-dollars/	0.829700
416	Hydro	https://coinmarketcap.com/currencies/hydrogen/	0.000549
417	Quark	https://coinmarketcap.com/currencies/quark/	0.022420
418	High Performance Blockchain	https://coinmarketcap.com/currencies/high-performance-blockchain/	0.135084
419	TenX	https://coinmarketcap.com/currencies/tenx/	0.040719
420	Monolith	https://coinmarketcap.com/currencies/monolith/	0.177774
421	Sentinel Protocol	https://coinmarketcap.com/currencies/sentinel-protocol/	0.017075
422	CRYPTOBUCKS	https://coinmarketcap.com/currencies/cryptobucks/	0.021862
423	FirstBlood	https://coinmarketcap.com/currencies/firstblood/	0.067644
424	Achain	https://coinmarketcap.com/currencies/achain/	0.006014
425	Egretia	https://coinmarketcap.com/currencies/egretia/	0.001370
426	SIRIN LABS Token	https://coinmarketcap.com/currencies/sirin-labs-token/	0.011750
427	BitCapitalVendor	https://coinmarketcap.com/currencies/bitcapitalvendor/	0.006170
428	SaluS	https://coinmarketcap.com/currencies/salus/	5.69
429	Ivy	https://coinmarketcap.com/currencies/ivy/	0.008449
430	Levolution	https://coinmarketcap.com/currencies/levolution/	0.189218
431	U Network	https://coinmarketcap.com/currencies/u-network/	0.000810
432	LockTrip	https://coinmarketcap.com/currencies/lockchain/	0.377850
433	DDKoin	https://coinmarketcap.com/currencies/ddkoin/	3.30
434	Pillar	https://coinmarketcap.com/currencies/pillar/	0.021701
435	Jibrel Network	https://coinmarketcap.com/currencies/jibrel-network/	0.032975
436	Polis	https://coinmarketcap.com/currencies/polis/	0.573340
437	INT Chain	https://coinmarketcap.com/currencies/int-chain/	0.014616
438	TOP	https://coinmarketcap.com/currencies/top/	0.001203
439	ZrCoin	https://coinmarketcap.com/currencies/zrcoin/	1.21
440	USDQ	https://coinmarketcap.com/currencies/usdq/	0.993473
441	Tokenomy	https://coinmarketcap.com/currencies/tokenomy/	0.027340
442	BABB	https://coinmarketcap.com/currencies/babb/	0.000162
443	Nectar	https://coinmarketcap.com/currencies/nectar/	0.066244
444	SymVerse	https://coinmarketcap.com/currencies/symverse/	0.081030
445	Gulden	https://coinmarketcap.com/currencies/gulden/	0.010681
446	LINA	https://coinmarketcap.com/currencies/lina/	0.019068
447	Bitcore	https://coinmarketcap.com/currencies/bitcore/	0.306412
448	Everex	https://coinmarketcap.com/currencies/everex/	0.238003
449	Blackmoon	https://coinmarketcap.com/currencies/blackmoon/	0.100020
450	TaaS	https://coinmarketcap.com/currencies/taas/	0.657914
451	MixMarvel	https://coinmarketcap.com/currencies/mixmarvel/	0.002698
452	Po.et	https://coinmarketcap.com/currencies/poet/	0.001698
453	LiquidApps	https://coinmarketcap.com/currencies/liquid-apps/	0.009707
454	Credo	https://coinmarketcap.com/currencies/credo/	0.009619
455	Fusion	https://coinmarketcap.com/currencies/fusion/	0.149493
456	eBitcoin	https://coinmarketcap.com/currencies/ebtcnew/	0.278829
457	Peercoin	https://coinmarketcap.com/currencies/peercoin/	0.200582
458	Ruff	https://coinmarketcap.com/currencies/ruff/	0.005302
459	REPO	https://coinmarketcap.com/currencies/repo/	0.047175
460	Rocket Pool	https://coinmarketcap.com/currencies/rocket-pool/	0.500775
461	V-ID	https://coinmarketcap.com/currencies/v-id/	0.112598
462	Endor Protocol	https://coinmarketcap.com/currencies/endor-protocol/	0.004570
463	CyberVein	https://coinmarketcap.com/currencies/cybervein/	0.004731
464	SingularDTV	https://coinmarketcap.com/currencies/singulardtv/	0.008322
465	IQeon	https://coinmarketcap.com/currencies/iqeon/	0.906548
466	Wagerr	https://coinmarketcap.com/currencies/wagerr/	0.026711
467	Ambrosus	https://coinmarketcap.com/currencies/amber/	0.014756
468	FOAM	https://coinmarketcap.com/currencies/foam/	0.017001
469	Selfkey	https://coinmarketcap.com/currencies/selfkey/	0.001653
470	YOYOW	https://coinmarketcap.com/currencies/yoyow/	0.010468
471	Time New Bank	https://coinmarketcap.com/currencies/time-new-bank/	0.001591
472	DREP	https://coinmarketcap.com/currencies/drep/	0.002007
473	Mithril	https://coinmarketcap.com/currencies/mithril/	0.006322
474	FNB Protocol	https://coinmarketcap.com/currencies/fnb-protocol/	0.002096
475	Neumark	https://coinmarketcap.com/currencies/neumark/	0.125445
476	QuickX Protocol	https://coinmarketcap.com/currencies/quickx-protocol/	0.010111
477	Global Digital Content	https://coinmarketcap.com/currencies/global-digital-content/	0.001511
478	Melon	https://coinmarketcap.com/currencies/melon/	3.88
479	FLETA	https://coinmarketcap.com/currencies/fleta/	0.005891
480	Valor Token	https://coinmarketcap.com/currencies/valor-token/	0.240193
481	pEOS	https://coinmarketcap.com/currencies/peos/	0.005803
482	Incent	https://coinmarketcap.com/currencies/incent/	0.104099
483	Particl	https://coinmarketcap.com/currencies/particl/	0.523889
484	TROY	https://coinmarketcap.com/currencies/troy/	0.003628
485	Utrust	https://coinmarketcap.com/currencies/utrust/	0.010369
486	#MetaHash	https://coinmarketcap.com/currencies/metahash/	0.002704
487	Bitcoin Rhodium	https://coinmarketcap.com/currencies/bitcoin-rhodium/	5.56
488	Nucleus Vision	https://coinmarketcap.com/currencies/nucleus-vision/	0.000688
489	EOSDT	https://coinmarketcap.com/currencies/eosdt/	0.998736
490	SmartCash	https://coinmarketcap.com/currencies/smartcash/	0.003214
491	Tripio	https://coinmarketcap.com/currencies/tripio/	0.001210
492	Genesis Vision	https://coinmarketcap.com/currencies/genesis-vision/	1.02
493	BOX Token	https://coinmarketcap.com/currencies/box-token/	0.045220
494	Asch	https://coinmarketcap.com/currencies/asch/	0.048005
495	Ether Zero	https://coinmarketcap.com/currencies/ether-zero/	0.026537
496	Haven Protocol	https://coinmarketcap.com/currencies/haven-protocol/	0.373395
497	Ampleforth	https://coinmarketcap.com/currencies/ampleforth/	1.17
498	ChainX	https://coinmarketcap.com/currencies/chainx/	1.08
499	Neutrino Dollar	https://coinmarketcap.com/currencies/neutrino-dollar/	1.00
500	Metronome	https://coinmarketcap.com/currencies/metronome/	0.430442
501	Pirate Chain	https://coinmarketcap.com/currencies/pirate-chain/	0.029289
502	Origo	https://coinmarketcap.com/currencies/origo/	0.010383
503	ProximaX	https://coinmarketcap.com/currencies/proximax/	0.000712
504	Universa	https://coinmarketcap.com/currencies/universa/	0.002333
505	Stakenet	https://coinmarketcap.com/currencies/stakenet/	0.044937
506	Gemini Dollar	https://coinmarketcap.com/currencies/gemini-dollar/	1.01
507	Cashaa	https://coinmarketcap.com/currencies/cashaa/	0.005668
508	GoCrypto Token	https://coinmarketcap.com/currencies/gocrypto-token/	0.021028
509	Matrix AI Network	https://coinmarketcap.com/currencies/matrix-ai-network/	0.020522
510	LBRY Credits	https://coinmarketcap.com/currencies/library-credit/	0.012406
511	Safex Token	https://coinmarketcap.com/currencies/safex-token/	0.002220
512	Uquid Coin	https://coinmarketcap.com/currencies/uquid-coin/	0.413773
513	WePower	https://coinmarketcap.com/currencies/wepower/	0.006774
514	Bluzelle	https://coinmarketcap.com/currencies/bluzelle/	0.019017
515	FLO	https://coinmarketcap.com/currencies/flo/	0.026996
516	Nimiq	https://coinmarketcap.com/currencies/nimiq/	0.000744
517	Agrocoin	https://coinmarketcap.com/currencies/agrocoin/	0.033665
518	Viacoin	https://coinmarketcap.com/currencies/viacoin/	0.177137
519	BidiPass	https://coinmarketcap.com/currencies/bidipass/	0.016916
520	Electra	https://coinmarketcap.com/currencies/electra/	0.000142
521	Invictus Hyperion Fund	https://coinmarketcap.com/currencies/invictus-hyperion-fund/	0.033743
522	bitCNY	https://coinmarketcap.com/currencies/bitcny/	0.141833
523	Silverway	https://coinmarketcap.com/currencies/silverway/	0.026717
524	Elamachain	https://coinmarketcap.com/currencies/elamachain/	0.006183
525	TokenClub	https://coinmarketcap.com/currencies/tokenclub/	0.007663
526	PegNet	https://coinmarketcap.com/currencies/pegnet/	0.002198
527	Mobius	https://coinmarketcap.com/currencies/mobius/	0.007588
528	LHT	https://coinmarketcap.com/currencies/lighthouse-token/	0.077916
529	TrustVerse	https://coinmarketcap.com/currencies/trustverse/	0.011535
530	Prometeus	https://coinmarketcap.com/currencies/prometeus/	0.727079
531	Bitcoin Free Cash	https://coinmarketcap.com/currencies/bitcoin-free-cash/	7.58
532	HYCON	https://coinmarketcap.com/currencies/hycon/	0.001766
533	Chromia	https://coinmarketcap.com/currencies/chromia/	0.025206
534	NativeCoin	https://coinmarketcap.com/currencies/native-coin/	0.167239
535	ColossusXT	https://coinmarketcap.com/currencies/colossusxt/	0.000321
536	SwftCoin	https://coinmarketcap.com/currencies/swftcoin/	0.001041
537	Content Value Network	https://coinmarketcap.com/currencies/content-value-network/	0.004450
538	Pepe Cash	https://coinmarketcap.com/currencies/pepe-cash/	0.005358
539	Dock	https://coinmarketcap.com/currencies/dock/	0.006542
540	GET Protocol	https://coinmarketcap.com/currencies/get-protocol/	0.327695
541	Propy	https://coinmarketcap.com/currencies/propy/	0.073931
542	Presearch	https://coinmarketcap.com/currencies/presearch/	0.023931
543	PumaPay	https://coinmarketcap.com/currencies/pumapay/	0.000147
544	Kava	https://coinmarketcap.com/currencies/kava/	0.850292
545	SONM	https://coinmarketcap.com/currencies/sonm/	0.010276
546	1World	https://coinmarketcap.com/currencies/1world/	0.148595
547	Litecoin Cash	https://coinmarketcap.com/currencies/litecoin-cash/	0.005472
548	EveryCoin	https://coinmarketcap.com/currencies/everycoin/	0.000388
549	Measurable Data Token	https://coinmarketcap.com/currencies/measurable-data-token/	0.006482
550	DAPS Coin	https://coinmarketcap.com/currencies/daps-coin/	0.000069
551	Counterparty	https://coinmarketcap.com/currencies/counterparty/	1.38
552	CryptalDash	https://coinmarketcap.com/currencies/cryptaldash/	0.003593
553	district0x	https://coinmarketcap.com/currencies/district0x/	0.005968
554	APIS	https://coinmarketcap.com/currencies/apis/	0.000587
555	adToken	https://coinmarketcap.com/currencies/adtoken/	0.004490
556	Cajutel	https://coinmarketcap.com/currencies/cajutel/	2.63
557	Bezant	https://coinmarketcap.com/currencies/bezant/	0.005165
558	AMO Coin	https://coinmarketcap.com/currencies/amo-coin/	0.000256
559	AppCoins	https://coinmarketcap.com/currencies/appcoins/	0.035359
560	HyperExchange	https://coinmarketcap.com/currencies/hyperexchange/	0.059003
561	Agrello	https://coinmarketcap.com/currencies/agrello-delta/	0.040605
562	Game.com	https://coinmarketcap.com/currencies/game/	0.004579
563	Blox	https://coinmarketcap.com/currencies/blox/	0.005163
564	Winding Tree	https://coinmarketcap.com/currencies/winding-tree/	0.160940
565	Monetha	https://coinmarketcap.com/currencies/monetha/	0.008589
566	Humanscape	https://coinmarketcap.com/currencies/humanscape/	0.007288
567	DATA	https://coinmarketcap.com/currencies/data/	0.000305
568	Refereum	https://coinmarketcap.com/currencies/refereum/	0.000729
569	VNT Chain	https://coinmarketcap.com/currencies/vnt-chain/	0.001258
570	EOS Force	https://coinmarketcap.com/currencies/eos-force/	0.003526
571	Zel	https://coinmarketcap.com/currencies/zel/	0.035616
572	BitGreen	https://coinmarketcap.com/currencies/bitgreen/	0.322202
573	DAOstack	https://coinmarketcap.com/currencies/daostack/	0.075713
574	UGAS	https://coinmarketcap.com/currencies/ugas/	0.019388
575	Verasity	https://coinmarketcap.com/currencies/verasity/	0.000850
576	OAX	https://coinmarketcap.com/currencies/oax/	0.043874
577	Nyzo	https://coinmarketcap.com/currencies/nyzo/	0.293476
578	Emercoin	https://coinmarketcap.com/currencies/emercoin/	0.072301
579	Amoveo	https://coinmarketcap.com/currencies/amoveo/	47.69
580	Credit Tag Chain	https://coinmarketcap.com/currencies/credit-tag-chain/	0.053935
581	Ubiq	https://coinmarketcap.com/currencies/ubiq/	0.075243
582	Darico Ecosystem Coin	https://coinmarketcap.com/currencies/darcio-ecosystem-coin/	0.050857
583	PLANET	https://coinmarketcap.com/currencies/planet/	0.158700
584	QLC Chain	https://coinmarketcap.com/currencies/qlink/	0.013145
585	OriginTrail	https://coinmarketcap.com/currencies/origintrail/	0.010698
586	HTMLCOIN	https://coinmarketcap.com/currencies/html-coin/	0.000058
587	VideoCoin	https://coinmarketcap.com/currencies/videocoin/	0.068908
588	VIBE	https://coinmarketcap.com/currencies/vibe/	0.011870
589	Viberate	https://coinmarketcap.com/currencies/viberate/	0.015957
590	ROAD	https://coinmarketcap.com/currencies/road/	0.038692
591	Ondori	https://coinmarketcap.com/currencies/ondori/	0.000081
592	Swace	https://coinmarketcap.com/currencies/swace/	0.005896
593	MintCoin	https://coinmarketcap.com/currencies/mintcoin/	0.000121
594	GameCredits	https://coinmarketcap.com/currencies/gamecredits/	0.043077
595	BaaSid	https://coinmarketcap.com/currencies/baasid/	0.000612
596	PayPie	https://coinmarketcap.com/currencies/paypie/	0.036317
597	Peculium	https://coinmarketcap.com/currencies/peculium/	0.001436
598	Rublix	https://coinmarketcap.com/currencies/rublix/	0.140394
599	POA	https://coinmarketcap.com/currencies/poa/	0.013209
600	ROOBEE	https://coinmarketcap.com/currencies/roobee/	0.003261
601	QunQun	https://coinmarketcap.com/currencies/qunqun/	0.004290
602	Sentivate	https://coinmarketcap.com/currencies/sentivate/	0.001259
603	Streamit Coin	https://coinmarketcap.com/currencies/streamit-coin/	0.356934
604	OneRoot Network	https://coinmarketcap.com/currencies/oneroot-network/	0.010011
605	Etheroll	https://coinmarketcap.com/currencies/etheroll/	0.403233
606	Caspian	https://coinmarketcap.com/currencies/caspian/	0.006266
607	STACS	https://coinmarketcap.com/currencies/stacs/	0.005239
608	CWV Chain	https://coinmarketcap.com/currencies/cwv-chain/	0.000794
609	DAO.Casino	https://coinmarketcap.com/currencies/dao-casino/	0.016734
610	Digital Asset Guarantee Token	https://coinmarketcap.com/currencies/digital-asset-guarantee-token/	0.084226
611	CUTcoin	https://coinmarketcap.com/currencies/cutcoin/	0.031192
612	AirSwap	https://coinmarketcap.com/currencies/airswap/	0.018327
613	Snetwork	https://coinmarketcap.com/currencies/snetwork/	0.014236
614	Xaurum	https://coinmarketcap.com/currencies/xaurum/	0.038385
615	Content Neutrality Network	https://coinmarketcap.com/currencies/content-neutrality-network/	0.000070
616	ContentBox	https://coinmarketcap.com/currencies/contentbox/	0.002942
617	USDx stablecoin	https://coinmarketcap.com/currencies/usdx-stablecoin/	1.00
618	MediShares	https://coinmarketcap.com/currencies/medishares/	0.003667
619	NIX	https://coinmarketcap.com/currencies/nix/	0.062993
620	sUSD	https://coinmarketcap.com/currencies/susd/	0.964529
621	BitMart Token	https://coinmarketcap.com/currencies/bitmart-token/	0.015832
622	Beaxy	https://coinmarketcap.com/currencies/beaxy/	0.012046
623	IONChain	https://coinmarketcap.com/currencies/ionchain/	0.022120
624	EURBASE	https://coinmarketcap.com/currencies/eurbase/	0.929597
625	Swarm	https://coinmarketcap.com/currencies/swarm-fund/	0.034163
626	SunContract	https://coinmarketcap.com/currencies/suncontract/	0.021741
627	Global Cryptocurrency	https://coinmarketcap.com/currencies/global-cryptocurrency/	0.002097
628	Ternio	https://coinmarketcap.com/currencies/ternio/	0.007942
629	0Chain	https://coinmarketcap.com/currencies/0chain/	0.066104
630	Hi Mutual Society	https://coinmarketcap.com/currencies/hi-mutual-society/	0.006532
631	Morpheus.Network	https://coinmarketcap.com/currencies/morpheus-network/	0.078296
632	Flash	https://coinmarketcap.com/currencies/flash/	0.002903
633	BLOCKv	https://coinmarketcap.com/currencies/blockv/	0.000867
634	TERA	https://coinmarketcap.com/currencies/tera/	0.003065
635	Litex	https://coinmarketcap.com/currencies/litex/	0.002558
636	ECC	https://coinmarketcap.com/currencies/eccoin/	0.000102
637	VNDC	https://coinmarketcap.com/currencies/vndc/	0.000046
638	Constant	https://coinmarketcap.com/currencies/constant/	49.84
639	CommerceBlock	https://coinmarketcap.com/currencies/commerceblock/	0.014396
640	PlayChip	https://coinmarketcap.com/currencies/playchip/	0.000180
641	Odyssey	https://coinmarketcap.com/currencies/odyssey/	0.000401
642	DeepBrain Chain	https://coinmarketcap.com/currencies/deepbrain-chain/	0.000775
643	XYO	https://coinmarketcap.com/currencies/xyo/	0.000193
644	Aeron	https://coinmarketcap.com/currencies/aeron/	0.122842
645	BOScoin	https://coinmarketcap.com/currencies/boscoin/	0.002833
646	DeepOnion	https://coinmarketcap.com/currencies/deeponion/	0.151749
647	Blockmason Credit Protocol	https://coinmarketcap.com/currencies/blockmason/	0.020970
648	Futurepia	https://coinmarketcap.com/currencies/futurepia/	0.002713
649	suterusu	https://coinmarketcap.com/currencies/suterusu/	0.006325
650	Red Pulse Phoenix	https://coinmarketcap.com/currencies/red-pulse/	0.002906
651	DAD	https://coinmarketcap.com/currencies/dad/	0.218937
652	EXMO Coin	https://coinmarketcap.com/currencies/exmo-coin/	0.003318
653	Cryptaur	https://coinmarketcap.com/currencies/cryptaur/	0.000195
654	Newscrypto	https://coinmarketcap.com/currencies/newscrypto/	0.024856
655	VeriBlock	https://coinmarketcap.com/currencies/veriblock/	0.004034
656	Skrumble Network	https://coinmarketcap.com/currencies/skrumble-network/	0.002293
657	Etherparty	https://coinmarketcap.com/currencies/etherparty/	0.002339
658	Sense	https://coinmarketcap.com/currencies/sense/	0.004591
659	INLOCK	https://coinmarketcap.com/currencies/inlock/	0.001883
660	Aeon	https://coinmarketcap.com/currencies/aeon/	0.147006
661	Esportbits	https://coinmarketcap.com/currencies/esportbits/	0.100629
662	Lykke	https://coinmarketcap.com/currencies/lykke/	0.007289
663	OKCash	https://coinmarketcap.com/currencies/okcash/	0.030755
664	Spendcoin	https://coinmarketcap.com/currencies/spendcoin/	0.001110
665	SIX	https://coinmarketcap.com/currencies/six/	0.008343
666	Paypex	https://coinmarketcap.com/currencies/paypex/	0.033343
667	TrueFlip	https://coinmarketcap.com/currencies/trueflip/	0.364058
668	MIR COIN	https://coinmarketcap.com/currencies/mir-coin/	0.003666
669	ALQO	https://coinmarketcap.com/currencies/alqo/	0.035081
670	Insights Network	https://coinmarketcap.com/currencies/insights-network/	0.015565
671	Global Social Chain	https://coinmarketcap.com/currencies/global-social-chain/	0.004099
672	TE-FOOD	https://coinmarketcap.com/currencies/te-food/	0.004281
673	RealTract	https://coinmarketcap.com/currencies/realtract/	0.000211
674	Fatcoin	https://coinmarketcap.com/currencies/fatcoin/	0.017290
675	Scry.info	https://coinmarketcap.com/currencies/scryinfo/	0.005043
676	VNX Exchange	https://coinmarketcap.com/currencies/vnx-exchange/	0.269598
677	Axe	https://coinmarketcap.com/currencies/axe/	0.418221
678	qiibee	https://coinmarketcap.com/currencies/qiibee/	0.003595
679	NaPoleonX	https://coinmarketcap.com/currencies/napoleonx/	0.089486
680	Lympo	https://coinmarketcap.com/currencies/lympo/	0.002626
681	Mooncoin	https://coinmarketcap.com/currencies/mooncoin/	0.000010
682	Phore	https://coinmarketcap.com/currencies/phore/	0.105588
683	MVL	https://coinmarketcap.com/currencies/mvl/	0.000277
684	Pundi X NEM	https://coinmarketcap.com/currencies/pundi-x-nem/	0.000120
685	ZeuxCoin	https://coinmarketcap.com/currencies/zeuxcoin/	0.011115
686	Titan Coin	https://coinmarketcap.com/currencies/titan-coin/	0.002334
687	Kcash	https://coinmarketcap.com/currencies/kcash/	0.004732
688	Blockport	https://coinmarketcap.com/currencies/blockport/	0.037259
689	Restart Energy MWAT	https://coinmarketcap.com/currencies/restart-energy-mwat/	0.004607
690	Bloom	https://coinmarketcap.com/currencies/bloomtoken/	0.038707
691	BitNewChain	https://coinmarketcap.com/currencies/bitnewchain/	0.011554
692	Switcheo	https://coinmarketcap.com/currencies/switcheo/	0.003918
693	Eminer	https://coinmarketcap.com/currencies/eminer/	0.003473
694	ATC Coin	https://coinmarketcap.com/currencies/atc-coin/	0.005323
695	ParkinGo	https://coinmarketcap.com/currencies/parkingo/	0.114129
696	PlatonCoin	https://coinmarketcap.com/currencies/platoncoin/	0.290201
697	Zero	https://coinmarketcap.com/currencies/zero/	0.242642
698	PolySwarm	https://coinmarketcap.com/currencies/polyswarm/	0.001298
699	Boolberry	https://coinmarketcap.com/currencies/boolberry/	0.151904
700	MargiX	https://coinmarketcap.com/currencies/margix/	0.016861
701	Callisto Network	https://coinmarketcap.com/currencies/callisto-network/	0.000834
702	Rotharium	https://coinmarketcap.com/currencies/rotharium/	0.594087
703	Akropolis	https://coinmarketcap.com/currencies/akropolis/	0.002063
704	Ergo	https://coinmarketcap.com/currencies/ergo/	0.191938
705	Lunyr	https://coinmarketcap.com/currencies/lunyr/	0.862119
706	Brickblock	https://coinmarketcap.com/currencies/brickblock/	0.026306
707	Asian Fintech	https://coinmarketcap.com/currencies/asian-fintech/	0.007894
708	Feathercoin	https://coinmarketcap.com/currencies/feathercoin/	0.007257
709	Remme	https://coinmarketcap.com/currencies/remme/	0.002070
710	CPChain	https://coinmarketcap.com/currencies/cpchain/	0.005185
711	3DCoin	https://coinmarketcap.com/currencies/3dcoin/	0.027828
712	bitUSD	https://coinmarketcap.com/currencies/bitusd/	0.897064
713	Myriad	https://coinmarketcap.com/currencies/myriad/	0.001129
714	NOIA Network	https://coinmarketcap.com/currencies/noia-network/	0.008117
715	VeriDocGlobal	https://coinmarketcap.com/currencies/veridocglobal/	0.000240
716	AMLT	https://coinmarketcap.com/currencies/amlt/	0.007880
717	Lition	https://coinmarketcap.com/currencies/lition/	0.053727
718	Wowbit	https://coinmarketcap.com/currencies/wowbit/	0.006859
719	Cube	https://coinmarketcap.com/currencies/cube/	0.000280
720	Radium	https://coinmarketcap.com/currencies/radium/	0.477895
721	Vipstar Coin	https://coinmarketcap.com/currencies/vipstar-coin/	0.000039
722	Bitrue Coin	https://coinmarketcap.com/currencies/bitrue-coin/	0.027834
723	Blue Whale EXchange	https://coinmarketcap.com/currencies/blue-whale-exchange/	0.043576
724	Spectrecoin	https://coinmarketcap.com/currencies/spectrecoin/	0.083096
725	Lamden	https://coinmarketcap.com/currencies/lamden/	0.013002
726	Morpheus Labs	https://coinmarketcap.com/currencies/morpheus-labs/	0.005289
727	Pivot Token	https://coinmarketcap.com/currencies/pivot-token/	0.000358
728	Abyss Token	https://coinmarketcap.com/currencies/abyss-token/	0.008009
729	DreamTeam Token	https://coinmarketcap.com/currencies/dreamteam-token/	0.050077
730	Vexanium	https://coinmarketcap.com/currencies/vexanium/	0.002571
731	Sealchain	https://coinmarketcap.com/currencies/sealchain/	0.009718
732	ShipChain	https://coinmarketcap.com/currencies/shipchain/	0.006875
733	Gleec	https://coinmarketcap.com/currencies/gleec/	0.444559
734	Artfinity	https://coinmarketcap.com/currencies/artfinity/	0.014217
735	ZClassic	https://coinmarketcap.com/currencies/zclassic/	0.222432
736	DigitalNote	https://coinmarketcap.com/currencies/digitalnote/	0.000242
737	LinkEye	https://coinmarketcap.com/currencies/linkeye/	0.002962
738	BitTube	https://coinmarketcap.com/currencies/bit-tube/	0.007229
739	SynchroBitcoin	https://coinmarketcap.com/currencies/synchrobitcoin/	0.157740
740	Grid+	https://coinmarketcap.com/currencies/grid/	0.044805
741	Genaro Network	https://coinmarketcap.com/currencies/genaro-network/	0.006805
742	StakeCubeCoin	https://coinmarketcap.com/currencies/stakecubecoin/	0.515654
743	Metrix Coin	https://coinmarketcap.com/currencies/metrix-coin/	0.000108
744	Coinsbit Token	https://coinmarketcap.com/currencies/coinsbit-token/	0.001305
745	AI Doctor	https://coinmarketcap.com/currencies/aidoc/	0.003098
746	Noku	https://coinmarketcap.com/currencies/noku/	0.072853
747	Zipper	https://coinmarketcap.com/currencies/zip/	0.000105
748	APIX	https://coinmarketcap.com/currencies/apix/	0.055162
749	Covesting	https://coinmarketcap.com/currencies/covesting/	0.093769
750	Edge	https://coinmarketcap.com/currencies/edge/	0.023703
751	AIDUS TOKEN	https://coinmarketcap.com/currencies/aidus-token/	0.003813
752	Penta	https://coinmarketcap.com/currencies/penta/	0.000079
753	UNIVERSAL CASH	https://coinmarketcap.com/currencies/ucash/	0.000160
754	Veil	https://coinmarketcap.com/currencies/veil/	0.027062
755	Wings	https://coinmarketcap.com/currencies/wings/	0.016680
756	CoinPoker	https://coinmarketcap.com/currencies/coinpoker/	0.006095
757	OneLedger	https://coinmarketcap.com/currencies/oneledger/	0.004068
758	BlackCoin	https://coinmarketcap.com/currencies/blackcoin/	0.027051
759	Bottos	https://coinmarketcap.com/currencies/bottos/	0.002944
760	Dropil	https://coinmarketcap.com/currencies/dropil/	0.000070
761	Netbox Coin	https://coinmarketcap.com/currencies/netbox-coin/	0.052324
762	Airbloc	https://coinmarketcap.com/currencies/airbloc/	0.006331
763	Bean Cash	https://coinmarketcap.com/currencies/bean-cash/	0.000455
764	Cryptopay	https://coinmarketcap.com/currencies/cryptopay/	0.023326
765	1SG	https://coinmarketcap.com/currencies/1sg/	0.720357
766	LikeCoin	https://coinmarketcap.com/currencies/likecoin/	0.004677
767	IHT Real Estate Protocol	https://coinmarketcap.com/currencies/iht-real-estate-protocol/	0.001597
768	Sentinel	https://coinmarketcap.com/currencies/sentinel/	0.000789
769	Flowchain	https://coinmarketcap.com/currencies/flowchain/	2.28
770	StableUSD	https://coinmarketcap.com/currencies/stableusd/	0.916015
771	BQT	https://coinmarketcap.com/currencies/bqt/	0.003233
772	Zebi Token	https://coinmarketcap.com/currencies/zebi-token/	0.004228
773	Nuggets	https://coinmarketcap.com/currencies/nuggets/	0.000905
774	Substratum	https://coinmarketcap.com/currencies/substratum/	0.004067
775	PotCoin	https://coinmarketcap.com/currencies/potcoin/	0.006936
776	THEKEY	https://coinmarketcap.com/currencies/thekey/	0.000265
777	MultiVAC	https://coinmarketcap.com/currencies/multivac/	0.000430
778	Hydro Protocol	https://coinmarketcap.com/currencies/hydro-protocol/	0.002193
779	IntelliShare	https://coinmarketcap.com/currencies/intellishare/	0.007135
780	ERC20	https://coinmarketcap.com/currencies/erc20/	0.030744
781	Maecenas	https://coinmarketcap.com/currencies/maecenas/	0.025670
782	Trias	https://coinmarketcap.com/currencies/trias/	0.001266
783	Pigeoncoin	https://coinmarketcap.com/currencies/pigeoncoin/	0.000318
784	Stealth	https://coinmarketcap.com/currencies/stealth/	0.043035
785	Ouroboros	https://coinmarketcap.com/currencies/ouroboros/	0.163879
786	ImageCoin	https://coinmarketcap.com/currencies/imagecoin/	0.083730
787	CargoX	https://coinmarketcap.com/currencies/cargox/	0.009611
788	Hashgard	https://coinmarketcap.com/currencies/hashgard/	0.000022
789	Teloscoin	https://coinmarketcap.com/currencies/teloscoin/	0.010745
790	LoyalCoin	https://coinmarketcap.com/currencies/loyalcoin/	0.000277
791	Cryptocean	https://coinmarketcap.com/currencies/cryptocean/	0.228263
792	Xensor	https://coinmarketcap.com/currencies/xensor/	0.004149
793	NPCoin	https://coinmarketcap.com/currencies/npcoin/	0.020162
794	PIBBLE	https://coinmarketcap.com/currencies/pibble/	0.000126
795	Sumokoin	https://coinmarketcap.com/currencies/sumokoin/	0.071812
796	BetProtocol	https://coinmarketcap.com/currencies/betprotocol/	0.000870
797	PAC Global	https://coinmarketcap.com/currencies/pac-global/	0.000190
798	Tolar	https://coinmarketcap.com/currencies/tolar/	0.005689
799	Winco	https://coinmarketcap.com/currencies/winco/	0.002984
800	Kuai Token	https://coinmarketcap.com/currencies/kuai-token/	0.139269
801	WeOwn	https://coinmarketcap.com/currencies/we-own/	0.014201
802	Pluton	https://coinmarketcap.com/currencies/pluton/	1.65
803	Origin Sport	https://coinmarketcap.com/currencies/origin-sport/	0.004669
804	I/O Coin	https://coinmarketcap.com/currencies/iocoin/	0.077238
805	Eden	https://coinmarketcap.com/currencies/eden/	0.002310
806	Bitex Global XBX Coin	https://coinmarketcap.com/currencies/bitex-global-xbx-coin/	0.006936
807	Trade Token X	https://coinmarketcap.com/currencies/trade-token-x/	0.016064
808	Databroker	https://coinmarketcap.com/currencies/databroker/	0.017750
809	Krios	https://coinmarketcap.com/currencies/krios/	0.007295
810	Effect.AI	https://coinmarketcap.com/currencies/effect-ai/	0.005414
811	Linkey	https://coinmarketcap.com/currencies/linkey/	0.027168
812	RSK Smart Bitcoin	https://coinmarketcap.com/currencies/rsk-smart-bitcoin/	8307.81
813	Moneytoken	https://coinmarketcap.com/currencies/moneytoken/	0.000143
814	Nasdacoin	https://coinmarketcap.com/currencies/nasdacoin/	0.062665
815	MB8 Coin	https://coinmarketcap.com/currencies/mb8-coin/	0.008371
816	VINchain	https://coinmarketcap.com/currencies/vinchain/	0.002271
817	Adshares	https://coinmarketcap.com/currencies/adshares/	0.038101
818	Lunes	https://coinmarketcap.com/currencies/lunes/	0.008796
819	Blockchain Certified Data Token	https://coinmarketcap.com/currencies/blockchain-certified-data-token/	0.037071
820	Tixl	https://coinmarketcap.com/currencies/tixl/	27.50
821	Qitmeer	https://coinmarketcap.com/currencies/qitmeer/	0.003345
822	Loopring [NEO]	https://coinmarketcap.com/currencies/loopring-neo/	0.011431
823	Kryll	https://coinmarketcap.com/currencies/kryll/	0.048772
824	Amino Network	https://coinmarketcap.com/currencies/amino-network/	0.028265
825	Ecobit	https://coinmarketcap.com/currencies/ecobit/	0.002901
826	Unikoin Gold	https://coinmarketcap.com/currencies/unikoin-gold/	0.008713
827	Fast Access Blockchain	https://coinmarketcap.com/currencies/fast-access-blockchain/	0.045430
828	FNKOS	https://coinmarketcap.com/currencies/fnkos/	0.008249
829	PCHAIN	https://coinmarketcap.com/currencies/pchain/	0.003572
830	Blocktrade Token	https://coinmarketcap.com/currencies/blocktrade-token/	0.022961
831	Opacity	https://coinmarketcap.com/currencies/opacity/	0.009855
832	Phantasma	https://coinmarketcap.com/currencies/phantasma/	0.021535
833	HashBX	https://coinmarketcap.com/currencies/hashsbx/	0.001994
834	Mysterium	https://coinmarketcap.com/currencies/mysterium/	0.052934
835	JD Coin	https://coinmarketcap.com/currencies/jd-coin/	0.092002
836	CashBet Coin	https://coinmarketcap.com/currencies/cashbet-coin/	0.006723
837	Crown	https://coinmarketcap.com/currencies/crown/	0.050926
838	Clams	https://coinmarketcap.com/currencies/clams/	0.304117
839	DEX	https://coinmarketcap.com/currencies/dex/	0.006371
840	GMB	https://coinmarketcap.com/currencies/gmb/	0.002347
841	Rubycoin	https://coinmarketcap.com/currencies/rubycoin/	0.044114
842	CanonChain	https://coinmarketcap.com/currencies/cononchain/	0.002099
843	Peerplays	https://coinmarketcap.com/currencies/peerplays-ppy/	0.268284
844	DACSEE	https://coinmarketcap.com/currencies/dacsee/	0.001589
845	Primas	https://coinmarketcap.com/currencies/primas/	0.022698
846	HoryouToken	https://coinmarketcap.com/currencies/horyoutoken/	0.001095
847	SpaceChain	https://coinmarketcap.com/currencies/spacechain/	0.002297
848	LIFE	https://coinmarketcap.com/currencies/life/	0.000014
849	Change	https://coinmarketcap.com/currencies/change/	0.059591
850	OVCODE	https://coinmarketcap.com/currencies/ovcode/	0.026703
851	COS	https://coinmarketcap.com/currencies/cos/	0.005904
852	PetroDollar	https://coinmarketcap.com/currencies/petrodollar/	0.018168
853	X-CASH	https://coinmarketcap.com/currencies/x-cash/	0.000022
854	Color Platform	https://coinmarketcap.com/currencies/color-platform/	0.008435
855	BOLT	https://coinmarketcap.com/currencies/bolt/	0.002070
856	Quanta Utility Token	https://coinmarketcap.com/currencies/quanta-utility-token/	0.000031
857	Hubii Network	https://coinmarketcap.com/currencies/hubii-network/	0.073854
858	Semux	https://coinmarketcap.com/currencies/semux/	0.089710
859	Edgeless	https://coinmarketcap.com/currencies/edgeless/	0.009653
860	ICE ROCK MINING	https://coinmarketcap.com/currencies/ice-rock-mining/	0.071295
861	Cardstack	https://coinmarketcap.com/currencies/cardstack/	0.000473
862	Gene Source Code Chain	https://coinmarketcap.com/currencies/gene-source-code-chain/	0.002960
863	SpankChain	https://coinmarketcap.com/currencies/spankchain/	0.003693
864	e-Gulden	https://coinmarketcap.com/currencies/e-gulden/	0.064437
865	NewYorkCoin	https://coinmarketcap.com/currencies/newyorkcoin/	0.000008
866	Atomic Wallet Coin	https://coinmarketcap.com/currencies/atomic-wallet-coin/	0.175931
867	DAEX	https://coinmarketcap.com/currencies/daex/	0.003084
868	Neurotoken	https://coinmarketcap.com/currencies/neurotoken/	0.013778
869	ADAMANT Messenger	https://coinmarketcap.com/currencies/adamant-messenger/	0.012898
870	Stronghold Token	https://coinmarketcap.com/currencies/stronghold-token/	0.000310
871	Traceability Chain	https://coinmarketcap.com/currencies/traceability-chain/	0.001279
872	Bitsdaq	https://coinmarketcap.com/currencies/bitsdaq/	0.000394
873	CloakCoin	https://coinmarketcap.com/currencies/cloakcoin/	0.194578
874	Kambria	https://coinmarketcap.com/currencies/kambria/	0.000850
875	indaHash	https://coinmarketcap.com/currencies/indahash/	0.002612
876	YGGDRASH	https://coinmarketcap.com/currencies/yeed/	0.000190
877	YEE	https://coinmarketcap.com/currencies/yee/	0.000757
878	Footballcoin	https://coinmarketcap.com/currencies/footballcoin/	0.002760
879	TurtleCoin	https://coinmarketcap.com/currencies/turtlecoin/	0.000015
880	Nestree	https://coinmarketcap.com/currencies/nestree/	0.002607
881	Ubex	https://coinmarketcap.com/currencies/ubex/	0.000328
882	ATLANT	https://coinmarketcap.com/currencies/atlant/	0.018958
883	CanYaCoin	https://coinmarketcap.com/currencies/canyacoin/	0.010655
884	ChatCoin	https://coinmarketcap.com/currencies/chatcoin/	0.001467
885	Ink	https://coinmarketcap.com/currencies/ink/	0.002178
886	Ferrum Network	https://coinmarketcap.com/currencies/ferrum-network/	0.008210
887	Fountain	https://coinmarketcap.com/currencies/fountain/	0.011337
888	VegaWallet Token	https://coinmarketcap.com/currencies/vegawallet-token/	0.070793
889	Omni	https://coinmarketcap.com/currencies/omni/	1.78
890	Auroracoin	https://coinmarketcap.com/currencies/auroracoin/	0.054988
891	Locus Chain	https://coinmarketcap.com/currencies/locus-chain/	0.001174
892	GridCoin	https://coinmarketcap.com/currencies/gridcoin/	0.002428
893	carVertical	https://coinmarketcap.com/currencies/carvertical/	0.000127
894	Naka Bodhi Token	https://coinmarketcap.com/currencies/naka-bodhi-token/	0.016125
895	Primecoin	https://coinmarketcap.com/currencies/primecoin/	0.031187
896	TEMCO	https://coinmarketcap.com/currencies/temco/	0.000293
897	BOOM	https://coinmarketcap.com/currencies/boom/	0.001221
898	Denarius	https://coinmarketcap.com/currencies/denarius-d/	0.130518
899	EXRNchain	https://coinmarketcap.com/currencies/exrnchain/	0.000010
900	Starta	https://coinmarketcap.com/currencies/starta/	0.190170
901	NAGA	https://coinmarketcap.com/currencies/naga/	0.013169
902	TokenPay	https://coinmarketcap.com/currencies/tokenpay/	0.056504
903	VouchForMe	https://coinmarketcap.com/currencies/insurepal/	0.004131
904	Pascal	https://coinmarketcap.com/currencies/pascal/	0.030738
905	Medicalchain	https://coinmarketcap.com/currencies/medical-chain/	0.003048
906	Beetle Coin	https://coinmarketcap.com/currencies/beetle-coin/	0.004266
907	NeoWorld Cash	https://coinmarketcap.com/currencies/neoworld-cash/	0.000042
908	Golos	https://coinmarketcap.com/currencies/golos/	0.004487
909	Tidex Token	https://coinmarketcap.com/currencies/tidex-token/	0.097468
910	SafeCapital	https://coinmarketcap.com/currencies/safecapital/	1.05
911	Leverj	https://coinmarketcap.com/currencies/leverj/	0.007742
912	Dimecoin	https://coinmarketcap.com/currencies/dimecoin/	0.000002
913	Merebel	https://coinmarketcap.com/currencies/merebel/	0.146454
914	Spectre.ai Utility Token	https://coinmarketcap.com/currencies/spectre-utility/	0.036846
915	Sphere	https://coinmarketcap.com/currencies/sphere/	0.072259
916	ProChain	https://coinmarketcap.com/currencies/prochain/	0.018115
917	Zap	https://coinmarketcap.com/currencies/zap/	0.006816
918	PIXEL	https://coinmarketcap.com/currencies/pixel/	0.023756
919	Bismuth	https://coinmarketcap.com/currencies/bismuth/	0.064224
920	Hiveterminal Token	https://coinmarketcap.com/currencies/hiveterminal-token/	0.002150
921	Vetri	https://coinmarketcap.com/currencies/vetri/	0.003025
922	IG Gold	https://coinmarketcap.com/currencies/ig-gold/	0.000099
923	CannabisCoin	https://coinmarketcap.com/currencies/cannabiscoin/	0.011291
924	Vision Industry Token	https://coinmarketcap.com/currencies/vision-industry-token/	0.000281
925	DOS Network	https://coinmarketcap.com/currencies/dos-network/	0.002569
926	SINOVATE	https://coinmarketcap.com/currencies/sinovate/	0.001576
927	Education Ecosystem	https://coinmarketcap.com/currencies/education-ecosystem/	0.003945
928	MassGrid	https://coinmarketcap.com/currencies/massgrid/	0.011161
929	Datum	https://coinmarketcap.com/currencies/datum/	0.000852
930	BonusCloud	https://coinmarketcap.com/currencies/bonuscloud/	0.000283
931	0xcert	https://coinmarketcap.com/currencies/0xcert/	0.002469
932	MobileGo	https://coinmarketcap.com/currencies/mobilego/	0.008352
933	Nework	https://coinmarketcap.com/currencies/nework/	0.005641
934	Proxeus	https://coinmarketcap.com/currencies/proxeus/	0.004087
935	KARMA	https://coinmarketcap.com/currencies/karma-eos/	0.000151
936	Delphy	https://coinmarketcap.com/currencies/delphy/	0.013222
937	Smartlands	https://coinmarketcap.com/currencies/smartlands/	0.160635
938	Unification	https://coinmarketcap.com/currencies/unification/	0.018181
939	EncrypGen	https://coinmarketcap.com/currencies/encrypgen/	0.012109
940	Bitcoin Private	https://coinmarketcap.com/currencies/bitcoin-private/	0.169450
941	Sakura Bloom	https://coinmarketcap.com/currencies/sakura-bloom/	0.000314
942	IPChain	https://coinmarketcap.com/currencies/ipchain/	0.010113
943	LUXCoin	https://coinmarketcap.com/currencies/luxcoin/	0.103505
944	Lendingblock	https://coinmarketcap.com/currencies/lendingblock/	0.001026
945	RedFOX Labs	https://coinmarketcap.com/currencies/redfox-labs/	0.007405
946	Aventus	https://coinmarketcap.com/currencies/aventus/	0.132699
947	Hacken	https://coinmarketcap.com/currencies/hacken/	0.145001
948	CEEK VR	https://coinmarketcap.com/currencies/ceek-vr/	0.001535
949	aXpire	https://coinmarketcap.com/currencies/axpire/	0.002792
950	WeTrust	https://coinmarketcap.com/currencies/trust/	0.008387
951	Iconiq Lab Token	https://coinmarketcap.com/currencies/iconiq-lab-token/	0.200054
952	NuShares	https://coinmarketcap.com/currencies/nushares/	0.000278
953	BitCrystals	https://coinmarketcap.com/currencies/bitcrystals/	0.033659
954	Liquidity Network	https://coinmarketcap.com/currencies/liquidity-network/	0.014386
955	VeriCoin	https://coinmarketcap.com/currencies/vericoin/	0.023499
956	ATN	https://coinmarketcap.com/currencies/atn/	0.009032
957	SmileyCoin	https://coinmarketcap.com/currencies/smileycoin/	0.000048
958	TouchCon	https://coinmarketcap.com/currencies/touchcon/	0.007377
959	Spiking	https://coinmarketcap.com/currencies/spiking/	0.001694
960	Alphacat	https://coinmarketcap.com/currencies/alphacat/	0.000267
961	XcelToken Plus	https://coinmarketcap.com/currencies/xceltoken-plus/	0.000119
962	ToaCoin	https://coinmarketcap.com/currencies/toacoin/	0.000083
963	Eterbase Coin	https://coinmarketcap.com/currencies/eterbase-coin/	0.000757
964	Mindexcoin	https://coinmarketcap.com/currencies/mindexcoin/	0.001087
965	Humaniq	https://coinmarketcap.com/currencies/humaniq/	0.003967
966	HBZ coin	https://coinmarketcap.com/currencies/hbz-coin/	0.000753
967	Terracoin	https://coinmarketcap.com/currencies/terracoin/	0.032017
968	Tokes	https://coinmarketcap.com/currencies/tokes/	0.552406
969	MonetaryUnit	https://coinmarketcap.com/currencies/monetaryunit/	0.003952
970	Bitswift	https://coinmarketcap.com/currencies/bitswift/	0.186864
971	DECENT	https://coinmarketcap.com/currencies/decent/	0.014084
972	42-coin	https://coinmarketcap.com/currencies/42-coin/	17198.51
973	USDX	https://coinmarketcap.com/currencies/usdx/	0.191398
974	Smartshare	https://coinmarketcap.com/currencies/smartshare/	0.000155
975	ZPER	https://coinmarketcap.com/currencies/zper/	0.000547
976	Apex	https://coinmarketcap.com/currencies/apex/	0.001382
977	W Green Pay	https://coinmarketcap.com/currencies/w-green-pay/	0.043560
978	Safe Haven	https://coinmarketcap.com/currencies/safe-haven/	0.000238
979	MidasProtocol	https://coinmarketcap.com/currencies/midasprotocol/	0.001919
980	DECOIN	https://coinmarketcap.com/currencies/decoin/	0.027178
981	0xBitcoin	https://coinmarketcap.com/currencies/0xbtc/	0.123567
982	Infinitecoin	https://coinmarketcap.com/currencies/infinitecoin/	0.000008
983	STK	https://coinmarketcap.com/currencies/stk/	0.002070
984	Curecoin	https://coinmarketcap.com/currencies/curecoin/	0.028843
985	Experty	https://coinmarketcap.com/currencies/experty/	0.025973
986	Niobium Coin	https://coinmarketcap.com/currencies/niobium-coin/	0.011354
987	Hellenic Coin	https://coinmarketcap.com/currencies/helleniccoin/	0.010081
988	Raven Protocol	https://coinmarketcap.com/currencies/raven-protocol/	0.000166
989	Upfiring	https://coinmarketcap.com/currencies/upfiring/	0.032153
990	Bitcoin Atom	https://coinmarketcap.com/currencies/bitcoin-atom/	0.037501
991	Sessia	https://coinmarketcap.com/currencies/sessia/	0.112391
992	Novacoin	https://coinmarketcap.com/currencies/novacoin/	0.294382
993	SureRemit	https://coinmarketcap.com/currencies/sureremit/	0.001375
994	MEET.ONE	https://coinmarketcap.com/currencies/meetone/	0.000359
995	Qwertycoin	https://coinmarketcap.com/currencies/qwertycoin/	0.000006
996	WeShow Token	https://coinmarketcap.com/currencies/weshow-token/	0.004282
997	QChi	https://coinmarketcap.com/currencies/qchi/	0.020963
998	Friendz	https://coinmarketcap.com/currencies/friends/	0.001288
999	Pinkcoin	https://coinmarketcap.com/currencies/pinkcoin/	0.001613
1000	Sentient Coin	https://coinmarketcap.com/currencies/consensus/	0.000492
1001	nOS	https://coinmarketcap.com/currencies/nos/	0.006473
1002	Nexty	https://coinmarketcap.com/currencies/nexty/	0.000004
1003	HashCoin	https://coinmarketcap.com/currencies/hashcoin/	0.000051
1004	BANKEX	https://coinmarketcap.com/currencies/bankex/	0.001765
1005	Xriba	https://coinmarketcap.com/currencies/xriba/	0.006663
1006	DNotes	https://coinmarketcap.com/currencies/dnotes/	0.004785
1007	FintruX Network	https://coinmarketcap.com/currencies/fintrux-network/	0.006795
1008	Digital Insurance Token	https://coinmarketcap.com/currencies/digital-insurance-token/	0.002862
1009	BeatzCoin	https://coinmarketcap.com/currencies/beatzcoin/	0.000444
1010	Kolion	https://coinmarketcap.com/currencies/kolion/	0.628807
1011	PTON	https://coinmarketcap.com/currencies/pton/	0.000042
1012	Hashshare	https://coinmarketcap.com/currencies/hashshare/	0.006771
1013	SolarCoin	https://coinmarketcap.com/currencies/solarcoin/	0.010887
1014	Crypto Sports	https://coinmarketcap.com/currencies/crypto-sports/	0.241680
1015	DABANKING	https://coinmarketcap.com/currencies/dabanking/	0.163729
1016	Digital Gold	https://coinmarketcap.com/currencies/digital-gold/	53.53
1017	FREE Coin	https://coinmarketcap.com/currencies/free-coin/	7.10e-8
1018	Cloudbric	https://coinmarketcap.com/currencies/cloudbric/	0.001216
1019	NuBits	https://coinmarketcap.com/currencies/nubits/	0.056005
1020	Diamond	https://coinmarketcap.com/currencies/diamond/	0.178847
1021	Gold Bits Coin	https://coinmarketcap.com/currencies/gold-bits-coin/	0.005792
1022	Internxt	https://coinmarketcap.com/currencies/internxt/	0.973807
1023	Dinastycoin	https://coinmarketcap.com/currencies/dinastycoin/	0.000317
1024	Expanse	https://coinmarketcap.com/currencies/expanse/	0.031990
1025	POPCHAIN	https://coinmarketcap.com/currencies/popchain/	0.000669
1026	EchoLink	https://coinmarketcap.com/currencies/echolink/	0.001189
1027	MenaPay	https://coinmarketcap.com/currencies/menapay/	0.005347
1028	FansTime	https://coinmarketcap.com/currencies/fanstime/	0.000208
1029	Waves Community Token	https://coinmarketcap.com/currencies/waves-community-token/	0.058767
1030	TigerCash	https://coinmarketcap.com/currencies/tigercash/	0.010344
1031	Amon	https://coinmarketcap.com/currencies/amon/	0.000976
1032	ZumCoin	https://coinmarketcap.com/currencies/zumcoin/	0.000584
1033	Typerium	https://coinmarketcap.com/currencies/typerium/	0.000356
1034	GAMB	https://coinmarketcap.com/currencies/gamb/	0.000149
1035	Webflix Token	https://coinmarketcap.com/currencies/webflix-token/	0.000259
1036	Azbit	https://coinmarketcap.com/currencies/azbit/	0.000008
1037	Mcashchain	https://coinmarketcap.com/currencies/mcashchain/	0.003640
1038	Noir	https://coinmarketcap.com/currencies/noir/	0.027902
1039	Quasarcoin	https://coinmarketcap.com/currencies/quasarcoin/	0.003355
1040	Mercury	https://coinmarketcap.com/currencies/mercury/	0.005645
1041	Mallcoin	https://coinmarketcap.com/currencies/mallcoin/	0.003202
1042	Cappasity	https://coinmarketcap.com/currencies/cappasity/	0.001033
1043	Tarush	https://coinmarketcap.com/currencies/tarush/	0.000093
1044	Skychain	https://coinmarketcap.com/currencies/skychain/	0.073872
1045	QuadrantProtocol	https://coinmarketcap.com/currencies/quadrantprotocol/	0.001652
1046	Dynamic	https://coinmarketcap.com/currencies/dynamic/	0.036936
1047	WebDollar	https://coinmarketcap.com/currencies/webdollar/	0.000065
1048	Sapien	https://coinmarketcap.com/currencies/sapien/	0.002401
1049	savedroid	https://coinmarketcap.com/currencies/savedroid/	0.000203
1050	Shivom	https://coinmarketcap.com/currencies/shivom/	0.000596
1051	Insureum	https://coinmarketcap.com/currencies/insureum/	0.002535
1052	Pandacoin	https://coinmarketcap.com/currencies/pandacoin-pnd/	0.000017
1053	MESG	https://coinmarketcap.com/currencies/mesg/	0.008502
1054	Paytomat	https://coinmarketcap.com/currencies/paytomat/	0.003238
1055	Lisk Machine Learning	https://coinmarketcap.com/currencies/lisk-machine-learning/	0.004475
1056	Proton Token	https://coinmarketcap.com/currencies/proton-token/	0.000065
1057	TurtleNetwork	https://coinmarketcap.com/currencies/turtlenetwork/	0.006043
1058	OWNDATA	https://coinmarketcap.com/currencies/owndata/	0.000049
1059	COVA	https://coinmarketcap.com/currencies/cova/	0.000214
1060	Rise	https://coinmarketcap.com/currencies/rise/	0.003710
1061	Insolar	https://coinmarketcap.com/currencies/insolar/	1.15
1062	Chrono.tech	https://coinmarketcap.com/currencies/chrono-tech/	0.747234
1063	Conceal	https://coinmarketcap.com/currencies/conceal/	0.078402
1064	Nexxo	https://coinmarketcap.com/currencies/nexxo/	0.002466
1065	Optimal Shelf Availability Token	https://coinmarketcap.com/currencies/optimal-shelf-availability-token/	0.000379
1066	MTC Mesh Network	https://coinmarketcap.com/currencies/mtc-mesh-network/	0.001366
1067	Open Platform	https://coinmarketcap.com/currencies/open-platform/	0.000489
1068	Rate3	https://coinmarketcap.com/currencies/rate3/	0.000582
1069	Ixcoin	https://coinmarketcap.com/currencies/ixcoin/	0.024409
1070	BioCoin	https://coinmarketcap.com/currencies/biocoin/	0.000609
1071	SyncFab	https://coinmarketcap.com/currencies/syncfab/	0.002522
1072	BitcoinZ	https://coinmarketcap.com/currencies/bitcoinz/	0.000079
1073	TrueFeedBack	https://coinmarketcap.com/currencies/truefeedback/	0.000238
1074	Coinsuper Ecosystem Network	https://coinmarketcap.com/currencies/coinsuper-ecosystem-network/	0.001363
1075	Max Property Group	https://coinmarketcap.com/currencies/max-property-group/	0.004283
1076	Banano	https://coinmarketcap.com/currencies/banano/	0.000497
1077	Zeepin	https://coinmarketcap.com/currencies/zeepin/	0.001002
1078	SafeCoin	https://coinmarketcap.com/currencies/safecoin/	0.017904
1079	Vezt	https://coinmarketcap.com/currencies/vezt/	0.012313
1080	HempCoin	https://coinmarketcap.com/currencies/hempcoin/	0.001930
1081	Ulord	https://coinmarketcap.com/currencies/ulord/	0.006993
1082	Ormeus Coin	https://coinmarketcap.com/currencies/ormeus-coin/	0.013602
1083	BZEdge	https://coinmarketcap.com/currencies/bzedge/	0.000162
1084	Olive	https://coinmarketcap.com/currencies/olive/	0.001744
1085	SIBCoin	https://coinmarketcap.com/currencies/sibcoin/	0.026289
1086	GeoCoin	https://coinmarketcap.com/currencies/geocoin/	0.149438
1087	Matryx	https://coinmarketcap.com/currencies/matryx/	0.020300
1088	ATMChain	https://coinmarketcap.com/currencies/attention-token-of-media/	0.000101
1089	Pirl	https://coinmarketcap.com/currencies/pirl/	0.007052
1090	DEEX	https://coinmarketcap.com/currencies/deex/	0.008286
1091	Block-Chain.com	https://coinmarketcap.com/currencies/block-chain-com/	0.002258
1092	Colu Local Network	https://coinmarketcap.com/currencies/colu-local-network/	0.004642
1093	Karbo	https://coinmarketcap.com/currencies/karbo/	0.055719
1094	XPA	https://coinmarketcap.com/currencies/xpa/	0.008064
1095	iEthereum	https://coinmarketcap.com/currencies/iethereum/	0.025569
1096	CoTrader	https://coinmarketcap.com/currencies/cotrader/	0.000029
1097	Enecuum	https://coinmarketcap.com/currencies/enecuum/	0.010228
1098	The ChampCoin	https://coinmarketcap.com/currencies/the-champcoin/	0.002573
1099	FLIP	https://coinmarketcap.com/currencies/flip/	0.008067
1100	XEL	https://coinmarketcap.com/currencies/xel/	0.004919
1101	XEL	https://coinmarketcap.com/currencies/xel/	0.004916
1102	Maincoin	https://coinmarketcap.com/currencies/maincoin/	0.001547
1103	EnergiToken	https://coinmarketcap.com/currencies/energitoken/	0.000242
1104	Playkey	https://coinmarketcap.com/currencies/playkey/	0.032136
1105	FuzeX	https://coinmarketcap.com/currencies/fuzex/	0.000486
1106	adbank	https://coinmarketcap.com/currencies/adbank/	0.000609
1107	Helium	https://coinmarketcap.com/currencies/helium/	0.033607
1108	Cashbery Coin	https://coinmarketcap.com/currencies/cashbery-coin/	0.006609
1109	TraDove B2BCoin	https://coinmarketcap.com/currencies/b2bcoin/	0.000884
1110	Qbao	https://coinmarketcap.com/currencies/qbao/	0.006752
1111	Hush	https://coinmarketcap.com/currencies/hush/	0.051233
1112	MARK.SPACE	https://coinmarketcap.com/currencies/mark-space/	0.000564
1113	Howdoo	https://coinmarketcap.com/currencies/howdoo/	0.004437
1114	BitDegree	https://coinmarketcap.com/currencies/bitdegree/	0.001128
1115	Aryacoin	https://coinmarketcap.com/currencies/aryacoin/	0.003381
1116	Zippie	https://coinmarketcap.com/currencies/zippie/	0.001588
1117	AICHAIN	https://coinmarketcap.com/currencies/aichain/	0.000802
1118	Coineal Token	https://coinmarketcap.com/currencies/coineal-token/	0.001438
1119	Vodi X	https://coinmarketcap.com/currencies/vodi-x/	0.000799
1120	Halo Platform	https://coinmarketcap.com/currencies/halo-platform/	0.000075
1121	Blue Protocol	https://coinmarketcap.com/currencies/ethereum-blue/	0.011588
1122	CryCash	https://coinmarketcap.com/currencies/crycash/	0.088823
1123	Global Currency Reserve	https://coinmarketcap.com/currencies/global-currency-reserve/	0.003949
1124	Faceter	https://coinmarketcap.com/currencies/faceter/	0.000896
1125	Merculet	https://coinmarketcap.com/currencies/merculet/	0.000104
1126	DomRaider	https://coinmarketcap.com/currencies/domraider/	0.000711
1127	Carboneum [C8] Token	https://coinmarketcap.com/currencies/carboneum-c8-token/	0.008134
1128	Banca	https://coinmarketcap.com/currencies/banca/	0.000023
1129	Internet of People	https://coinmarketcap.com/currencies/internet-of-people/	0.031028
1130	Flixxo	https://coinmarketcap.com/currencies/flixxo/	0.004949
1131	Uptrennd	https://coinmarketcap.com/currencies/uptrennd/	0.005014
1132	Bob's Repair	https://coinmarketcap.com/currencies/bobs-repair/	0.002242
1133	1X2 COIN	https://coinmarketcap.com/currencies/1x2-coin/	0.088661
1134	RED	https://coinmarketcap.com/currencies/red/	0.003159
1135	LCX	https://coinmarketcap.com/currencies/lcx/	0.001030
1136	Orbitcoin	https://coinmarketcap.com/currencies/orbitcoin/	0.125567
1137	TrezarCoin	https://coinmarketcap.com/currencies/trezarcoin/	0.002045
1138	SBank	https://coinmarketcap.com/currencies/sbank/	0.108721
1139	ebakus	https://coinmarketcap.com/currencies/ebakus/	0.004390
1140	DeviantCoin	https://coinmarketcap.com/currencies/deviantcoin/	0.015527
1141	Trinity Network Credit	https://coinmarketcap.com/currencies/trinity-network-credit/	0.001190
1142	NoLimitCoin	https://coinmarketcap.com/currencies/nolimitcoin/	0.000649
1143	EncryptoTel [WAVES]	https://coinmarketcap.com/currencies/encryptotel/	0.006367
1144	SafeInsure	https://coinmarketcap.com/currencies/safeinsure/	0.029380
1145	NeuroChain	https://coinmarketcap.com/currencies/neurochain/	0.000918
1146	HiCoin	https://coinmarketcap.com/currencies/hicoin/	0.000088
1147	Bitcoin Plus	https://coinmarketcap.com/currencies/bitcoin-plus/	2.83
1148	CVCoin	https://coinmarketcap.com/currencies/cvcoin/	0.031218
1149	win.win	https://coinmarketcap.com/currencies/win-win/	0.000086
1150	NOW Token	https://coinmarketcap.com/currencies/now-token/	0.004640
1151	Phoenixcoin	https://coinmarketcap.com/currencies/phoenixcoin/	0.004847
1152	JET8	https://coinmarketcap.com/currencies/jet8/	0.000507
1153	BOMB	https://coinmarketcap.com/currencies/bomb/	0.394220
1154	Stox	https://coinmarketcap.com/currencies/stox/	0.007069
1155	Datawallet	https://coinmarketcap.com/currencies/datawallet/	0.000957
1156	EvenCoin	https://coinmarketcap.com/currencies/evencoin/	0.011915
1157	PUBLISH	https://coinmarketcap.com/currencies/publish/	0.001484
1158	Actinium	https://coinmarketcap.com/currencies/actinium/	0.019617
1159	BiblePay	https://coinmarketcap.com/currencies/biblepay/	0.000177
1160	Electrify.Asia	https://coinmarketcap.com/currencies/electrifyasia/	0.000696
1161	Social Send	https://coinmarketcap.com/currencies/social-send/	0.006810
1162	Bancacy	https://coinmarketcap.com/currencies/bancacy/	0.002740
1163	DATx	https://coinmarketcap.com/currencies/datx/	0.000264
1164	Membrana	https://coinmarketcap.com/currencies/membrana/	0.002955
1165	ION	https://coinmarketcap.com/currencies/ion/	0.029581
1166	Plair	https://coinmarketcap.com/currencies/plair/	0.000018
1167	RoBET	https://coinmarketcap.com/currencies/robet/	0.453213
1168	Espers	https://coinmarketcap.com/currencies/espers/	0.000016
1169	AidCoin	https://coinmarketcap.com/currencies/aidcoin/	0.007869
1170	EBCoin	https://coinmarketcap.com/currencies/ebcoin/	0.000078
1171	Graviocoin	https://coinmarketcap.com/currencies/graviocoin/	0.000331
1172	HOLD	https://coinmarketcap.com/currencies/hold/	0.000507
1173	TV-TWO	https://coinmarketcap.com/currencies/tv-two/	0.000796
1174	Shift	https://coinmarketcap.com/currencies/shift/	0.025790
1175	x42 Protocol	https://coinmarketcap.com/currencies/x42-protocol/	0.019568
1176	DIMCOIN	https://coinmarketcap.com/currencies/dimcoin/	0.000168
1177	HOQU	https://coinmarketcap.com/currencies/hoqu/	0.002085
1178	HEAT	https://coinmarketcap.com/currencies/heat-ledger/	0.007938
1179	Bitfex	https://coinmarketcap.com/currencies/bitfex/	0.003071
1180	RefToken	https://coinmarketcap.com/currencies/reftoken/	0.345219
1181	StrongHands	https://coinmarketcap.com/currencies/stronghands/	0.000021
1182	Vanta Network	https://coinmarketcap.com/currencies/vanta-network/	0.000184
1183	UpToken	https://coinmarketcap.com/currencies/uptoken/	0.002321
1184	PHI Token	https://coinmarketcap.com/currencies/phi-token/	0.058018
1185	Motocoin	https://coinmarketcap.com/currencies/motocoin/	0.017052
1186	Lobstex	https://coinmarketcap.com/currencies/lobstex/	0.017785
1187	LNX Protocol	https://coinmarketcap.com/currencies/lnx-protocol/	0.001223
1188	DPRating	https://coinmarketcap.com/currencies/dprating/	0.000128
1189	AmonD	https://coinmarketcap.com/currencies/amond/	0.000503
1190	Swap	https://coinmarketcap.com/currencies/swap/	0.037258
1191	OracleChain	https://coinmarketcap.com/currencies/oraclechain/	0.010838
1192	Essentia	https://coinmarketcap.com/currencies/essentia/	0.000366
1193	eXPerience Chain	https://coinmarketcap.com/currencies/experience-chain/	0.000004
1194	WinStars.live	https://coinmarketcap.com/currencies/winstars-live/	0.017485
1195	Honest	https://coinmarketcap.com/currencies/honest/	0.006205
1196	BUZZCoin	https://coinmarketcap.com/currencies/buzzcoin/	0.000016
1197	ODUWA	https://coinmarketcap.com/currencies/oduwa/	0.134739
1198	Omnitude	https://coinmarketcap.com/currencies/omnitude/	0.004850
1199	Zilla	https://coinmarketcap.com/currencies/zilla/	0.005213
1200	Alpha Token	https://coinmarketcap.com/currencies/alpha-token/	0.010575
1201	Alpha Token	https://coinmarketcap.com/currencies/alpha-token/	0.010589
1202	Memetic / PepeCoin	https://coinmarketcap.com/currencies/memetic/	0.010323
1203	ESBC	https://coinmarketcap.com/currencies/esbc/	0.014031
1204	Bitblocks	https://coinmarketcap.com/currencies/bitblocks/	0.001382
1205	KickToken	https://coinmarketcap.com/currencies/kick-token/	0.000035
1206	Bittwatt	https://coinmarketcap.com/currencies/bittwatt/	0.000994
1207	Solaris	https://coinmarketcap.com/currencies/solaris/	0.168067
1208	X8X Token	https://coinmarketcap.com/currencies/x8x-token/	0.003758
1209	FortKnoxster	https://coinmarketcap.com/currencies/fortknoxster/	0.002016
1210	InvestDigital	https://coinmarketcap.com/currencies/investdigital/	0.003809
1211	Snovian.Space	https://coinmarketcap.com/currencies/snov/	0.001060
1212	Ties.DB	https://coinmarketcap.com/currencies/tiesdb/	0.007253
1213	Starbase	https://coinmarketcap.com/currencies/starbase/	0.001566
1214	OBITS	https://coinmarketcap.com/currencies/obits/	0.020094
1215	Vites	https://coinmarketcap.com/currencies/vites/	0.000008
1216	TCASH	https://coinmarketcap.com/currencies/tcash/	0.008191
1217	ExclusiveCoin	https://coinmarketcap.com/currencies/exclusivecoin/	0.048839
1218	HEROcoin	https://coinmarketcap.com/currencies/herocoin/	0.001520
1219	Relex	https://coinmarketcap.com/currencies/relex/	0.000151
1220	CYBR Token	https://coinmarketcap.com/currencies/cybr-token/	0.007513
1221	Paragon	https://coinmarketcap.com/currencies/paragon/	0.012581
1222	KekCoin	https://coinmarketcap.com/currencies/kekcoin/	0.025968
1223	NANJCOIN	https://coinmarketcap.com/currencies/nanjcoin/	0.000014
1224	Ubcoin Market	https://coinmarketcap.com/currencies/ubcoin-market/	0.000804
1225	Eureka Coin	https://coinmarketcap.com/currencies/eureka-coin/	0.004138
1226	Rapids	https://coinmarketcap.com/currencies/rapids/	0.000062
1227	Nebula AI	https://coinmarketcap.com/currencies/nebula-ai/	0.000218
1228	GoNetwork	https://coinmarketcap.com/currencies/gonetwork/	0.003794
1229	Almeela	https://coinmarketcap.com/currencies/almeela/	0.073098
1230	ONOToken	https://coinmarketcap.com/currencies/onotoken/	0.000016
1231	Trittium	https://coinmarketcap.com/currencies/trittium/	0.002096
1232	SophiaTX	https://coinmarketcap.com/currencies/sophiatx/	0.000817
1233	SPINDLE	https://coinmarketcap.com/currencies/spindle/	0.000079
1234	REAL	https://coinmarketcap.com/currencies/real/	0.026568
1235	Birake	https://coinmarketcap.com/currencies/birake/	0.003137
1236	DubaiCoin	https://coinmarketcap.com/currencies/dubaicoin-dbix/	0.061937
1237	Pylon Network	https://coinmarketcap.com/currencies/pylon-network/	0.483395
1238	Qredit	https://coinmarketcap.com/currencies/qredit/	0.000388
1239	AllSafe	https://coinmarketcap.com/currencies/allsafe/	0.028423
1240	FedoraCoin	https://coinmarketcap.com/currencies/fedoracoin/	0.000001
1241	Maverick Chain	https://coinmarketcap.com/currencies/maverick-chain/	0.002419
1242	Project WITH	https://coinmarketcap.com/currencies/project-with/	0.000968
1243	Mao Zedong	https://coinmarketcap.com/currencies/mao-zedong/	0.040162
1244	LocalCoinSwap	https://coinmarketcap.com/currencies/local-coin-swap/	0.004839
1245	Matrexcoin	https://coinmarketcap.com/currencies/matrexcoin/	0.014903
1246	Eroscoin	https://coinmarketcap.com/currencies/eroscoin/	0.001371
1247	StarCoin	https://coinmarketcap.com/currencies/starcointv/	0.000169
1248	Bitcoin Incognito	https://coinmarketcap.com/currencies/bitcoin-incognito/	0.019614
1249	MinexCoin	https://coinmarketcap.com/currencies/minexcoin/	0.040518
1250	CoinFi	https://coinmarketcap.com/currencies/coinfi/	0.001263
1251	SpectrumCash	https://coinmarketcap.com/currencies/spectrumcash/	0.000078
1252	LEOcoin	https://coinmarketcap.com/currencies/leocoin/	0.000968
1253	AudioCoin	https://coinmarketcap.com/currencies/audiocoin/	0.000256
1254	Sharder	https://coinmarketcap.com/currencies/sharder/	0.000882
1255	uPlexa	https://coinmarketcap.com/currencies/uplexa/	0.000119
1256	IDEX Membership	https://coinmarketcap.com/currencies/idex-membership/	123.62
1257	CoinUs	https://coinmarketcap.com/currencies/coinus/	0.000726
1258	Jarvis+	https://coinmarketcap.com/currencies/jarvis/	0.002580
1259	On.Live	https://coinmarketcap.com/currencies/on-live/	0.011218
1260	LALA World	https://coinmarketcap.com/currencies/lala-world/	0.000967
1261	Scala	https://coinmarketcap.com/currencies/scala/	0.000028
1262	DecentBet	https://coinmarketcap.com/currencies/decent-bet/	0.001270
1263	Seal Network	https://coinmarketcap.com/currencies/seal-network/	0.000465
1264	Auctus	https://coinmarketcap.com/currencies/auctus/	0.004014
1265	FlypMe	https://coinmarketcap.com/currencies/flypme/	0.013387
1266	GoldCoin	https://coinmarketcap.com/currencies/goldcoin/	0.005646
1267	OLXA	https://coinmarketcap.com/currencies/olxa/	0.000173
1268	Blockpass	https://coinmarketcap.com/currencies/blockpass/	0.001399
1269	Fortuna	https://coinmarketcap.com/currencies/fortuna/	0.000486
1270	Nerva	https://coinmarketcap.com/currencies/nerva/	0.013710
1271	Thrive Token	https://coinmarketcap.com/currencies/thrive-token/	0.002258
1272	PUBLYTO Token	https://coinmarketcap.com/currencies/publyto-token/	0.000156
1273	SounDAC	https://coinmarketcap.com/currencies/bitshares-music/	0.015840
1274	Truegame	https://coinmarketcap.com/currencies/tgame/	0.002786
1275	Auxilium	https://coinmarketcap.com/currencies/auxilium/	0.001960
1276	Opus	https://coinmarketcap.com/currencies/opus/	0.001611
1277	Zeusshield	https://coinmarketcap.com/currencies/zeusshield/	0.000193
1278	Monkey Project	https://coinmarketcap.com/currencies/monkey-project/	0.023791
1279	Global Awards Token	https://coinmarketcap.com/currencies/global-awards-token/	0.000328
1280	Eristica	https://coinmarketcap.com/currencies/eristica/	0.001290
1281	Dovu	https://coinmarketcap.com/currencies/dovu/	0.000556
1282	Ifoods Chain	https://coinmarketcap.com/currencies/ifoods-chain/	0.000088
1283	MIB Coin	https://coinmarketcap.com/currencies/mib-coin/	0.002743
1284	Gems	https://coinmarketcap.com/currencies/gems-protocol/	0.000188
1285	Storiqa	https://coinmarketcap.com/currencies/storiqa/	0.000020
1286	CryptoPing	https://coinmarketcap.com/currencies/cryptoping/	0.024396
1287	FidentiaX	https://coinmarketcap.com/currencies/fidentiax/	0.002081
1288	Birdchain	https://coinmarketcap.com/currencies/birdchain/	0.001342
1289	LiteDoge	https://coinmarketcap.com/currencies/litedoge/	0.000013
1290	GoByte	https://coinmarketcap.com/currencies/gobyte/	0.030024
1291	Zen Protocol	https://coinmarketcap.com/currencies/zen-protocol/	0.009392
1292	Patientory	https://coinmarketcap.com/currencies/patientory/	0.003027
1293	FujiCoin	https://coinmarketcap.com/currencies/fujicoin/	0.000081
1294	Crowd Machine	https://coinmarketcap.com/currencies/crowd-machine/	0.000445
1295	EtherSportz	https://coinmarketcap.com/currencies/ethersportz/	0.073995
1296	DopeCoin	https://coinmarketcap.com/currencies/dopecoin/	0.001774
1297	CoinMetro Token	https://coinmarketcap.com/currencies/coinmetro-token/	0.024274
1298	DOWCOIN	https://coinmarketcap.com/currencies/dowcoin/	0.017331
1299	Bitcoin Interest	https://coinmarketcap.com/currencies/bitcoin-interest/	0.011172
1300	FarmaTrust	https://coinmarketcap.com/currencies/farmatrust/	0.000341
1301	Privatix	https://coinmarketcap.com/currencies/privatix/	0.183995
1302	PlayGame	https://coinmarketcap.com/currencies/playgame/	0.000210
1303	ALBOS	https://coinmarketcap.com/currencies/albos/	0.000017
1304	HorusPay	https://coinmarketcap.com/currencies/horuspay/	0.000229
1305	Sentinel Chain	https://coinmarketcap.com/currencies/sentinel-chain/	0.001013
1306	Ultimate Secure Cash	https://coinmarketcap.com/currencies/ultimate-secure-cash/	0.019181
1307	Ink Protocol	https://coinmarketcap.com/currencies/ink-protocol/	0.000529
1308	ZUM TOKEN	https://coinmarketcap.com/currencies/zum-token/	0.000012
1309	Safex Cash	https://coinmarketcap.com/currencies/safex-cash/	0.005110
1310	OptiToken	https://coinmarketcap.com/currencies/optitoken/	0.007012
1311	InsaneCoin	https://coinmarketcap.com/currencies/insanecoin-insn/	0.008059
1312	Ether-1	https://coinmarketcap.com/currencies/ether-1/	0.004514
1313	Neutron	https://coinmarketcap.com/currencies/neutron/	0.004984
1314	BitScreener Token	https://coinmarketcap.com/currencies/bitscreener-token/	0.001223
1315	Manna	https://coinmarketcap.com/currencies/manna/	0.000295
1316	Zennies	https://coinmarketcap.com/currencies/zennies/	0.000193
1317	KuboCoin	https://coinmarketcap.com/currencies/kubocoin/	0.000002
1318	GoldMint	https://coinmarketcap.com/currencies/goldmint/	0.100017
1319	Trollcoin	https://coinmarketcap.com/currencies/trollcoin/	0.000323
1320	Artis Turba	https://coinmarketcap.com/currencies/artis-turba/	0.006563
1321	CrypticCoin	https://coinmarketcap.com/currencies/crypticcoin/	0.000075
1322	IXT	https://coinmarketcap.com/currencies/ixledger/	0.005317
1323	SWYFT	https://coinmarketcap.com/currencies/swyft/	0.321772
1324	Shadow Token	https://coinmarketcap.com/currencies/shadow-token/	0.026838
1325	Silent Notary	https://coinmarketcap.com/currencies/silent-notary/	0.000002
1326	Bulwark	https://coinmarketcap.com/currencies/bulwark/	0.012528
1327	EverGreenCoin	https://coinmarketcap.com/currencies/evergreencoin/	0.013002
1328	CaixaPay	https://coinmarketcap.com/currencies/caixapay/	0.002337
1329	Adelphoi	https://coinmarketcap.com/currencies/adelphoi/	0.008865
1330	HelloGold	https://coinmarketcap.com/currencies/hellogold/	0.000696
1331	SoMee.Social	https://coinmarketcap.com/currencies/ongsocial/	0.002115
1332	Cubiex	https://coinmarketcap.com/currencies/cubiex/	0.003436
1333	Grimm	https://coinmarketcap.com/currencies/grimm/	0.006083
1334	View	https://coinmarketcap.com/currencies/view/	0.005158
1335	ZENZO	https://coinmarketcap.com/currencies/zenzo/	0.014990
1336	RealChain	https://coinmarketcap.com/currencies/realchain/	0.000361
1337	VeriumReserve	https://coinmarketcap.com/currencies/veriumreserve/	0.067134
1338	WOLLO	https://coinmarketcap.com/currencies/wollo/	0.004106
1339	Chronologic	https://coinmarketcap.com/currencies/chronologic/	0.183935
1340	Magi	https://coinmarketcap.com/currencies/magi/	0.018226
1341	Raise	https://coinmarketcap.com/currencies/raise/	0.013846
1342	Masari	https://coinmarketcap.com/currencies/masari/	0.014914
1343	Playgroundz	https://coinmarketcap.com/currencies/playgroundz/	0.006056
1344	TrueDeck	https://coinmarketcap.com/currencies/truedeck/	0.005587
1345	Freicoin	https://coinmarketcap.com/currencies/freicoin/	0.003065
1346	Dynamite	https://coinmarketcap.com/currencies/dynamite/	0.462950
1347	Hyper Speed Network	https://coinmarketcap.com/currencies/hyper-speed-network/	0.001383
1348	Swarm City	https://coinmarketcap.com/currencies/swarm-city/	0.019878
1349	Matchpool	https://coinmarketcap.com/currencies/guppy/	0.002257
1350	Bounty0x	https://coinmarketcap.com/currencies/bounty0x/	0.000727
1351	Mithril Ore	https://coinmarketcap.com/currencies/mithril-ore/	13.04
1352	BitBall	https://coinmarketcap.com/currencies/bitball/	0.001295
1353	Veros	https://coinmarketcap.com/currencies/veros/	0.164330
1354	Ryo Currency	https://coinmarketcap.com/currencies/ryo-currency/	0.009026
1355	Catex Token	https://coinmarketcap.com/currencies/catex-token/	0.000213
1356	Utrum	https://coinmarketcap.com/currencies/utrum/	0.002576
1357	PutinCoin	https://coinmarketcap.com/currencies/putincoin/	0.000161
1358	Energo	https://coinmarketcap.com/currencies/energo/	0.000275
1359	Atlantis Blue Digital Token	https://coinmarketcap.com/currencies/atlantis-blue-digital-token/	0.000911
1360	PDATA	https://coinmarketcap.com/currencies/pdata/	0.000451
1361	Decentralized Machine Learning	https://coinmarketcap.com/currencies/decentralized-machine-learning/	0.000603
1362	Bezop	https://coinmarketcap.com/currencies/bezop/	0.002953
1363	Ethersocial	https://coinmarketcap.com/currencies/ethersocial/	0.003971
1364	VisionX	https://coinmarketcap.com/currencies/visionx/	0.000042
1365	MMOCoin	https://coinmarketcap.com/currencies/mmocoin/	0.002624
1366	Bigbom	https://coinmarketcap.com/currencies/bigbom/	0.000482
1367	Netko	https://coinmarketcap.com/currencies/netko/	0.016649
1368	Zeitcoin	https://coinmarketcap.com/currencies/zeitcoin/	0.000004
1369	BitCash	https://coinmarketcap.com/currencies/bitcash/	0.013426
1370	ZCore	https://coinmarketcap.com/currencies/zcore/	0.023921
1371	ZMINE	https://coinmarketcap.com/currencies/zmine/	0.000967
1372	EUNO	https://coinmarketcap.com/currencies/euno/	0.004791
1373	Sparkpoint	https://coinmarketcap.com/currencies/sparkpoint/	0.000030
1374	AC3	https://coinmarketcap.com/currencies/ac3/	0.000314
1375	eBoost	https://coinmarketcap.com/currencies/eboostcoin/	0.001529
1376	Dether	https://coinmarketcap.com/currencies/dether/	0.001796
1377	Blocktix	https://coinmarketcap.com/currencies/blocktix/	0.003814
1378	Maxcoin	https://coinmarketcap.com/currencies/maxcoin/	0.002448
1379	Bankcoin	https://coinmarketcap.com/currencies/bankcoin/	0.014517
1380	IP Exchange	https://coinmarketcap.com/currencies/ip-exchange/	0.000158
1381	EurocoinToken	https://coinmarketcap.com/currencies/eurocoin-token/	0.044168
1382	Equal	https://coinmarketcap.com/currencies/equal/	0.000450
1383	Business Credit Substitute	https://coinmarketcap.com/currencies/business-credit-substitute/	0.083629
1384	TrakInvest	https://coinmarketcap.com/currencies/trakinvest/	0.001762
1385	CREDIT	https://coinmarketcap.com/currencies/credit/	0.000007
1386	Rupee	https://coinmarketcap.com/currencies/rupee/	0.003868
1387	Sharpay	https://coinmarketcap.com/currencies/sharpay/	0.000142
1388	Bonpay	https://coinmarketcap.com/currencies/bonpay/	0.012976
1389	Autonio	https://coinmarketcap.com/currencies/autonio/	0.001370
1390	wave edu coin	https://coinmarketcap.com/currencies/wave-edu-coin/	0.001047
1391	PAL Network	https://coinmarketcap.com/currencies/pal-network/	0.000330
1392	PoSW Coin	https://coinmarketcap.com/currencies/posw-coin/	0.003274
1393	smARTOFGIVING	https://coinmarketcap.com/currencies/smartofgiving/	0.001934
1394	TagCoin	https://coinmarketcap.com/currencies/tagcoin/	0.021987
1395	Newton Coin Project	https://coinmarketcap.com/currencies/newton-coin-project/	7.78e-7
1396	BoatPilot Token	https://coinmarketcap.com/currencies/boat-pilot-token/	0.001909
1397	Bitcoin Fast	https://coinmarketcap.com/currencies/bitcoin-fast/	0.011208
1398	ClearPoll	https://coinmarketcap.com/currencies/clearpoll/	0.019735
1399	Energycoin	https://coinmarketcap.com/currencies/energycoin/	0.001129
1400	Gravity	https://coinmarketcap.com/currencies/gravity/	0.000100
1401	HashNet BitEco	https://coinmarketcap.com/currencies/hashnet-biteco/	0.004644
1402	Scanetchain	https://coinmarketcap.com/currencies/scanetchain/	0.000163
1403	MFCoin	https://coinmarketcap.com/currencies/mfcoin/	0.006509
1404	BLAST	https://coinmarketcap.com/currencies/blast/	0.000242
1405	SnapCoin	https://coinmarketcap.com/currencies/snapcoin/	0.000285
1406	AquariusCoin	https://coinmarketcap.com/currencies/aquariuscoin/	0.048154
1407	Pakcoin	https://coinmarketcap.com/currencies/pakcoin/	0.001934
1408	Scorum Coins	https://coinmarketcap.com/currencies/scorum-coins/	0.004520
1409	imbrex	https://coinmarketcap.com/currencies/imbrex/	0.015247
1410	TEAM (TokenStars)	https://coinmarketcap.com/currencies/tokenstars/	0.011125
1411	iDealCash	https://coinmarketcap.com/currencies/idealcash/	0.000091
1412	Rivetz	https://coinmarketcap.com/currencies/rivetz/	0.004940
1413	Bayan Token	https://coinmarketcap.com/currencies/bayan-token/	0.542587
1414	MyWish	https://coinmarketcap.com/currencies/mywish/	0.013404
1415	Coinlancer	https://coinmarketcap.com/currencies/coinlancer/	0.001605
1416	PYRO Network	https://coinmarketcap.com/currencies/pyro-network/	0.000159
1417	Zetacoin	https://coinmarketcap.com/currencies/zetacoin/	0.000742
1418	BitSend	https://coinmarketcap.com/currencies/bitsend/	0.004756
1419	Bitstar	https://coinmarketcap.com/currencies/bitstar/	0.005968
1420	Arbidex	https://coinmarketcap.com/currencies/arbidex/	0.006143
1421	CryptoAds Marketplace	https://coinmarketcap.com/currencies/cryptoads-marketplace/	0.008762
1422	Bethereum	https://coinmarketcap.com/currencies/bethereum/	0.000226
1423	LanaCoin	https://coinmarketcap.com/currencies/lanacoin/	0.000085
1424	TRAXIA	https://coinmarketcap.com/currencies/traxia/	0.000378
1425	StrongHands Masternode	https://coinmarketcap.com/currencies/stronghands-masternode/	0.063567
1426	bitEUR	https://coinmarketcap.com/currencies/biteur/	1.13
1427	Blockburn	https://coinmarketcap.com/currencies/blockburn/	0.000340
1428	Digitalcoin	https://coinmarketcap.com/currencies/digitalcoin/	0.003468
1429	Version	https://coinmarketcap.com/currencies/version/	0.000194
1430	FSBT API Token	https://coinmarketcap.com/currencies/fsbt-api-token/	0.034233
1431	Synergy	https://coinmarketcap.com/currencies/synergy/	0.024420
1432	Civitas	https://coinmarketcap.com/currencies/civitas/	0.015793
1433	Plus-Coin	https://coinmarketcap.com/currencies/plus-coin/	0.000250
1434	Aditus	https://coinmarketcap.com/currencies/aditus/	0.000499
1435	Devery	https://coinmarketcap.com/currencies/devery/	0.001849
1436	TENA	https://coinmarketcap.com/currencies/tena/	0.043520
1437	Parachute	https://coinmarketcap.com/currencies/parachute/	0.000297
1438	XDNA	https://coinmarketcap.com/currencies/xdna/	0.021481
1439	AdHive	https://coinmarketcap.com/currencies/adhive/	0.000875
1440	Lampix	https://coinmarketcap.com/currencies/lampix/	0.000843
1441	Alt.Estate token	https://coinmarketcap.com/currencies/alt-estate-token/	0.000157
1442	Bolivarcoin	https://coinmarketcap.com/currencies/bolivarcoin/	0.007898
1443	Infinitus Token	https://coinmarketcap.com/currencies/infinitus-token/	0.008262
1444	GravityCoin	https://coinmarketcap.com/currencies/gravitycoin/	0.033082
1445	Universe	https://coinmarketcap.com/currencies/universe/	0.001289
1446	Startcoin	https://coinmarketcap.com/currencies/startcoin/	0.002447
1447	Bitradio	https://coinmarketcap.com/currencies/bitradio/	0.012976
1448	eSDChain	https://coinmarketcap.com/currencies/esdchain/	0.001123
1449	Beacon	https://coinmarketcap.com/currencies/beacon/	0.092470
1450	DAV Coin	https://coinmarketcap.com/currencies/dav-coin/	0.000159
1451	Bitcoin Token	https://coinmarketcap.com/currencies/bitcoin-token/	0.015983
1452	Bee Token	https://coinmarketcap.com/currencies/bee-token/	0.000458
1453	MyBit	https://coinmarketcap.com/currencies/mybit/	0.000702
1454	PeepCoin	https://coinmarketcap.com/currencies/peepcoin/	0.000001
1455	Voise	https://coinmarketcap.com/currencies/voisecom/	0.000196
1456	Deutsche eMark	https://coinmarketcap.com/currencies/deutsche-emark/	0.001999
1457	MktCoin	https://coinmarketcap.com/currencies/mktcoin/	0.000088
1458	EXMR FDN	https://coinmarketcap.com/currencies/exmr-fdn/	0.016909
1459	SelfSell	https://coinmarketcap.com/currencies/selfsell/	0.000273
1460	BlueCoin	https://coinmarketcap.com/currencies/bluecoin/	0.000185
1461	Ethereum Meta	https://coinmarketcap.com/currencies/ethereum-meta/	0.000002
1462	VeriSafe	https://coinmarketcap.com/currencies/verisafe/	0.000010
1463	GlobalBoost-Y	https://coinmarketcap.com/currencies/globalboost-y/	0.005840
1464	UNICORN Token	https://coinmarketcap.com/currencies/unicorn-token/	0.000977
1465	Profile Utility Token	https://coinmarketcap.com/currencies/profile-utility-token/	0.002292
1466	WandX	https://coinmarketcap.com/currencies/wandx/	0.008470
1467	Aston	https://coinmarketcap.com/currencies/aston/	0.000126
1468	Intelligent Trading Foundation	https://coinmarketcap.com/currencies/intelligent-trading-foundation/	0.010499
1469	Coin Lion	https://coinmarketcap.com/currencies/coin-lion/	0.003191
1470	Cobinhood	https://coinmarketcap.com/currencies/cobinhood/	0.000250
1471	Limitless VIP	https://coinmarketcap.com/currencies/limitless-vip/	0.000081
1472	Litecoin Plus	https://coinmarketcap.com/currencies/litecoin-plus/	0.036694
1473	Linfinity	https://coinmarketcap.com/currencies/linfinity/	0.000111
1474	The Currency Analytics	https://coinmarketcap.com/currencies/the-currency-analytics/	0.000763
1475	RightMesh	https://coinmarketcap.com/currencies/rightmesh/	0.001400
1476	CryptoCarbon	https://coinmarketcap.com/currencies/cryptocarbon/	0.004030
1477	WavesGo	https://coinmarketcap.com/currencies/wavesgo/	0.013776
1478	Carboncoin	https://coinmarketcap.com/currencies/carboncoin/	0.000006
1479	VULCANO	https://coinmarketcap.com/currencies/vulcano/	0.000403
1480	BoutsPro	https://coinmarketcap.com/currencies/boutspro/	0.001266
1481	WIZBL	https://coinmarketcap.com/currencies/wizbl/	0.000645
1482	KZ Cash	https://coinmarketcap.com/currencies/kz-cash/	0.061639
1483	Graft	https://coinmarketcap.com/currencies/graft/	0.000161
1484	MetaMorph	https://coinmarketcap.com/currencies/metamorph/	0.000629
1485	Atonomi	https://coinmarketcap.com/currencies/atonomi/	0.000190
1486	BitClave	https://coinmarketcap.com/currencies/bitclave/	0.000186
1487	ParallelCoin	https://coinmarketcap.com/currencies/parallelcoin/	0.294302
1488	Primalbase Token	https://coinmarketcap.com/currencies/primalbase/	73.95
1489	Wavesbet	https://coinmarketcap.com/currencies/wavesbet/	0.000002
1490	Pesetacoin	https://coinmarketcap.com/currencies/pesetacoin/	0.000655
1491	Opal	https://coinmarketcap.com/currencies/opal/	0.006046
1492	DeVault	https://coinmarketcap.com/currencies/devault/	0.000500
1493	AceD	https://coinmarketcap.com/currencies/aced/	0.008366
1494	Verify	https://coinmarketcap.com/currencies/verify/	0.006729
1495	Rupiah Token	https://coinmarketcap.com/currencies/rupiah-token/	0.000070
1496	IOTW	https://coinmarketcap.com/currencies/iotw/	0.002726
1497	Narrative	https://coinmarketcap.com/currencies/narrative/	0.001097
1498	BitCoen	https://coinmarketcap.com/currencies/bitcoen/	0.012847
1499	Emerald Crypto	https://coinmarketcap.com/currencies/emerald/	0.004694
1500	Bitcloud	https://coinmarketcap.com/currencies/bitcloud/	0.002740
1501	Flit Token	https://coinmarketcap.com/currencies/flit-token/	0.000067
1502	Bitcoin CZ	https://coinmarketcap.com/currencies/bitcoin-cz/	0.032654
1503	Soverain	https://coinmarketcap.com/currencies/soverain/	0.023694
1504	Q DAO Governance token v1.0	https://coinmarketcap.com/currencies/q-dao-governance-token/	1.25
1505	GINcoin	https://coinmarketcap.com/currencies/gincoin/	0.010647
1506	Monarch	https://coinmarketcap.com/currencies/monarch/	0.002496
1507	Unify	https://coinmarketcap.com/currencies/unify/	0.004677
1508	Transcodium	https://coinmarketcap.com/currencies/transcodium/	0.001474
1509	Signals Network	https://coinmarketcap.com/currencies/signals-network/	0.000955
1510	Alchemint Standards	https://coinmarketcap.com/currencies/alchemint-standards/	0.000265
1511	Fiii	https://coinmarketcap.com/currencies/fiii/	0.000174
1512	Photon	https://coinmarketcap.com/currencies/photon/	0.000003
1513	Castle	https://coinmarketcap.com/currencies/castle/	0.004919
1514	SIMDAQ	https://coinmarketcap.com/currencies/simdaq/	0.004755
1515	Tokenbox	https://coinmarketcap.com/currencies/tokenbox/	0.007232
1516	SHIELD	https://coinmarketcap.com/currencies/shield-xsh/	0.000161
1517	FirstCoin	https://coinmarketcap.com/currencies/firstcoin/	0.002647
1518	BlitzPredict	https://coinmarketcap.com/currencies/blitzpredict/	0.000216
1519	Oxycoin	https://coinmarketcap.com/currencies/oxycoin/	0.000087
1520	EventChain	https://coinmarketcap.com/currencies/eventchain/	0.002595
1521	SRCOIN	https://coinmarketcap.com/currencies/srcoin/	0.000016
1522	Minereum	https://coinmarketcap.com/currencies/minereum/	0.009597
1523	Neutral Dollar	https://coinmarketcap.com/currencies/neutral-dollar/	1.00
1524	TrumpCoin	https://coinmarketcap.com/currencies/trumpcoin/	0.011942
1525	GoldFund	https://coinmarketcap.com/currencies/goldfund/	0.000511
1526	PWR Coin	https://coinmarketcap.com/currencies/powercoin/	0.000008
1527	Parkgene	https://coinmarketcap.com/currencies/parkgene/	0.000263
1528	BitNautic Token	https://coinmarketcap.com/currencies/bitnautic-token/	0.004032
1529	EveriToken	https://coinmarketcap.com/currencies/everitoken/	0.003437
1530	Business Credit Alliance Chain	https://coinmarketcap.com/currencies/business-credit-alliance-chain/	0.000151
1531	GCN Coin	https://coinmarketcap.com/currencies/gcn-coin/	4.44e-7
1532	BitBar	https://coinmarketcap.com/currencies/bitbar/	1.69
1533	BBSCoin	https://coinmarketcap.com/currencies/bbscoin/	7.86e-7
1534	Sociall	https://coinmarketcap.com/currencies/sociall/	0.004514
1535	Rapidz	https://coinmarketcap.com/currencies/rapidz/	0.000242
1536	InterValue	https://coinmarketcap.com/currencies/intervalue/	0.000577
1537	INMAX	https://coinmarketcap.com/currencies/inmax/	0.047048
1538	MicroMoney	https://coinmarketcap.com/currencies/micromoney/	0.004627
1539	Kalkulus	https://coinmarketcap.com/currencies/kalkulus/	0.004194
1540	TOKYO	https://coinmarketcap.com/currencies/tokyo/	0.000266
1541	Miners' Reward Token	https://coinmarketcap.com/currencies/miners-reward-token/	0.007232
1542	JSECOIN	https://coinmarketcap.com/currencies/jsecoin/	0.000163
1543	Kobocoin	https://coinmarketcap.com/currencies/kobocoin/	0.002909
1544	MesChain	https://coinmarketcap.com/currencies/meschain/	0.000092
1545	Indorse Token	https://coinmarketcap.com/currencies/indorse-token/	0.001905
1546	Rentberry	https://coinmarketcap.com/currencies/rentberry/	0.000236
1547	ProxyNode	https://coinmarketcap.com/currencies/proxynode/	0.000455
1548	Taklimakan Network	https://coinmarketcap.com/currencies/taklimakan-network/	0.001516
1549	HeartBout	https://coinmarketcap.com/currencies/heartbout/	0.001285
1550	Fire Lotto	https://coinmarketcap.com/currencies/fire-lotto/	0.002500
1551	CDX Network	https://coinmarketcap.com/currencies/cdx-network/	0.002097
1552	Kuverit	https://coinmarketcap.com/currencies/kuverit/	0.000036
1553	Yocoin	https://coinmarketcap.com/currencies/yocoin/	0.000183
1554	BEAT	https://coinmarketcap.com/currencies/beat/	0.000541
1555	Galilel	https://coinmarketcap.com/currencies/galilel/	0.003422
1556	Suretly	https://coinmarketcap.com/currencies/suretly/	0.281514
1557	PopularCoin	https://coinmarketcap.com/currencies/popularcoin/	0.000016
1558	Asian Dragon	https://coinmarketcap.com/currencies/asian-dragon/	0.001237
1559	Ethereum Gold Project	https://coinmarketcap.com/currencies/ethereum-gold-project/	0.000011
1560	Agora	https://coinmarketcap.com/currencies/agora/	0.001718
1561	Anoncoin	https://coinmarketcap.com/currencies/anoncoin/	0.030484
1562	PENG	https://coinmarketcap.com/currencies/peng/	0.000008
1563	Netrum	https://coinmarketcap.com/currencies/netrum/	0.029920
1564	Lethean	https://coinmarketcap.com/currencies/lethean/	0.000081
1565	Sp8de	https://coinmarketcap.com/currencies/sp8de/	0.000008
1566	Bitcoin Turbo Koin	https://coinmarketcap.com/currencies/bitcoin-turbo-koin/	0.002868
1567	Commercium	https://coinmarketcap.com/currencies/commercium/	0.001431
1568	EtherGem	https://coinmarketcap.com/currencies/ethergem/	0.003242
1569	Emphy	https://coinmarketcap.com/currencies/emphy/	0.007938
1570	Cashpayz Token	https://coinmarketcap.com/currencies/cashpayz-token/	0.014602
1571	Ignition	https://coinmarketcap.com/currencies/ignition/	0.049202
1572	Swing	https://coinmarketcap.com/currencies/swing/	0.013871
1573	PluraCoin	https://coinmarketcap.com/currencies/pluracoin/	0.000132
1574	CROAT	https://coinmarketcap.com/currencies/croat/	0.000806
1575	Evedo	https://coinmarketcap.com/currencies/evedo/	0.005477
1576	BetterBetting	https://coinmarketcap.com/currencies/betterbetting/	0.000217
1577	SiaCashCoin	https://coinmarketcap.com/currencies/siacashcoin/	0.000004
1578	MODEL-X-coin	https://coinmarketcap.com/currencies/model-x-coin/	0.005015
1579	CryptoBonusMiles	https://coinmarketcap.com/currencies/cryptobonusmiles/	0.000020
1580	Social Activity Token	https://coinmarketcap.com/currencies/social-activity-token/	0.000476
1581	InvestFeed	https://coinmarketcap.com/currencies/investfeed/	0.000314
1582	Kurrent	https://coinmarketcap.com/currencies/kurrent/	0.000978
1583	Peony	https://coinmarketcap.com/currencies/peony/	0.025469
1584	AmsterdamCoin	https://coinmarketcap.com/currencies/amsterdamcoin/	0.001185
1585	ANON	https://coinmarketcap.com/currencies/anon/	0.007823
1586	Megacoin	https://coinmarketcap.com/currencies/megacoin/	0.001532
1587	BlockMesh	https://coinmarketcap.com/currencies/blockmesh/	0.000215
1588	bitBTC	https://coinmarketcap.com/currencies/bitbtc/	1690.50
1589	GoldenPyrex	https://coinmarketcap.com/currencies/goldenpyrex/	0.005726
1590	Cryptonite	https://coinmarketcap.com/currencies/cryptonite/	0.000081
1591	Niobio Cash	https://coinmarketcap.com/currencies/niobio-cash/	0.000403
1592	Universal Currency	https://coinmarketcap.com/currencies/universal-currency/	0.003548
1593	HeroNode	https://coinmarketcap.com/currencies/heronode/	0.000051
1594	CFun	https://coinmarketcap.com/currencies/cfun/	0.000130
1595	SportyCo	https://coinmarketcap.com/currencies/sportyco/	0.001025
1596	Bela	https://coinmarketcap.com/currencies/belacoin/	0.001210
1597	KanadeCoin	https://coinmarketcap.com/currencies/kanadecoin/	0.000010
1598	Gentarium	https://coinmarketcap.com/currencies/gentarium/	0.013387
1599	ATBCoin	https://coinmarketcap.com/currencies/atbcoin/	0.001311
1600	Bitether	https://coinmarketcap.com/currencies/bitether/	0.000968
1601	ACE (TokenStars)	https://coinmarketcap.com/currencies/ace/	0.004509
1602	Evil Coin	https://coinmarketcap.com/currencies/evil-coin/	0.002591
1603	Arepacoin	https://coinmarketcap.com/currencies/arepacoin/	0.003210
1604	Rimbit	https://coinmarketcap.com/currencies/rimbit/	0.000273
1605	Coinchase Token	https://coinmarketcap.com/currencies/coinchase/	0.000034
1606	FundRequest	https://coinmarketcap.com/currencies/fundrequest/	0.001109
1607	Bitnation	https://coinmarketcap.com/currencies/bitnation/	0.000002
1608	Adzcoin	https://coinmarketcap.com/currencies/adzcoin/	0.001056
1609	ShareX	https://coinmarketcap.com/currencies/sharex/	0.000081
1610	APR Coin	https://coinmarketcap.com/currencies/apr-coin/	0.004516
1611	Block-Logic	https://coinmarketcap.com/currencies/block-logic/	0.002275
1612	ChessCoin	https://coinmarketcap.com/currencies/chesscoin/	0.000962
1613	ALAX	https://coinmarketcap.com/currencies/alax/	0.002489
1614	EtherInc	https://coinmarketcap.com/currencies/etherinc/	0.000161
1615	CYCLEAN	https://coinmarketcap.com/currencies/cyclean/	0.000075
1616	Moin	https://coinmarketcap.com/currencies/moin/	0.005565
1617	ETHplode	https://coinmarketcap.com/currencies/ethplode/	0.001158
1618	Jetcoin	https://coinmarketcap.com/currencies/jetcoin/	0.006210
1619	Freyrchain	https://coinmarketcap.com/currencies/freyrchain/	0.000098
1620	2GIVE	https://coinmarketcap.com/currencies/2give/	0.000094
1621	Mobile Crypto Pay Coin	https://coinmarketcap.com/currencies/mobile-crypto-pay-coin/	0.006317
1622	Exosis	https://coinmarketcap.com/currencies/exosis/	0.138427
1623	Carebit	https://coinmarketcap.com/currencies/carebit/	0.000323
1624	No BS Crypto	https://coinmarketcap.com/currencies/no-bs-crypto/	0.000038
1625	Paymon	https://coinmarketcap.com/currencies/paymon/	0.000078
1626	iTicoin	https://coinmarketcap.com/currencies/iticoin/	1.48
1627	Level Up Coin	https://coinmarketcap.com/currencies/level-up/	0.000047
1628	Connect Coin	https://coinmarketcap.com/currencies/connect-coin/	0.001197
1629	BTC Lite	https://coinmarketcap.com/currencies/btc-lite/	0.002491
1630	Gexan	https://coinmarketcap.com/currencies/gexan/	0.017752
1631	Elysian	https://coinmarketcap.com/currencies/elysian/	0.000473
1632	PRiVCY	https://coinmarketcap.com/currencies/privcy/	0.002791
1633	Giant	https://coinmarketcap.com/currencies/giant-coin/	0.006332
1634	Menlo One	https://coinmarketcap.com/currencies/menlo-one/	0.000151
1635	Moneynet	https://coinmarketcap.com/currencies/moneynet/	0.000012
1636	Regalcoin	https://coinmarketcap.com/currencies/regalcoin/	0.003530
1637	Ethouse	https://coinmarketcap.com/currencies/ethouse/	0.000634
1638	AiLink Token	https://coinmarketcap.com/currencies/ailink-token/	0.000009
1639	GuccioneCoin	https://coinmarketcap.com/currencies/guccionecoin/	0.002182
1640	Rubies	https://coinmarketcap.com/currencies/rubies/	0.004197
1641	Asura Coin	https://coinmarketcap.com/currencies/asura-coin/	0.000198
1642	Advanced Technology Coin	https://coinmarketcap.com/currencies/arcticcoin/	0.001532
1643	Thore Cash	https://coinmarketcap.com/currencies/thore-cash/	0.000788
1644	ConnectJob	https://coinmarketcap.com/currencies/connectjob/	0.000383
1645	Stipend	https://coinmarketcap.com/currencies/stipend/	0.003712
1646	Crowdholding	https://coinmarketcap.com/currencies/crowdholding/	0.000207
1647	TrustNote	https://coinmarketcap.com/currencies/trustnote/	0.000136
1648	GlobalToken	https://coinmarketcap.com/currencies/globaltoken/	0.000432
1649	Elcoin	https://coinmarketcap.com/currencies/elcoin-el/	0.003710
1650	SuperCoin	https://coinmarketcap.com/currencies/supercoin/	0.000794
1651	Webcoin	https://coinmarketcap.com/currencies/webcoin/	0.000930
1652	Ethereum Cash	https://coinmarketcap.com/currencies/ethereumcash/	0.002903
1653	More Coin	https://coinmarketcap.com/currencies/more-coin/	0.020162
1654	XMCT	https://coinmarketcap.com/currencies/xmct/	0.000382
1655	BERNcash	https://coinmarketcap.com/currencies/berncash/	0.000565
1656	Waletoken	https://coinmarketcap.com/currencies/waletoken/	0.000002
1657	Egoras	https://coinmarketcap.com/currencies/egoras/	0.000181
1658	SkinCoin	https://coinmarketcap.com/currencies/skincoin/	0.000451
1659	VoteCoin	https://coinmarketcap.com/currencies/votecoin/	0.000484
1660	OPCoinX	https://coinmarketcap.com/currencies/opcoinx/	0.000242
1661	TransferCoin	https://coinmarketcap.com/currencies/transfercoin/	0.004758
1662	Bridge Protocol	https://coinmarketcap.com/currencies/bridge-protocol/	0.000176
1663	FUZE Token	https://coinmarketcap.com/currencies/fuze-token/	46.95
1664	Rupaya	https://coinmarketcap.com/currencies/rupaya/	0.000734
1665	InterCrone	https://coinmarketcap.com/currencies/intercrone/	0.002632
1666	Leadcoin	https://coinmarketcap.com/currencies/leadcoin/	0.000050
1667	Blockparty (BOXX Token)	https://coinmarketcap.com/currencies/blockparty-boxx-token/	0.001195
1668	PiplCoin	https://coinmarketcap.com/currencies/piplcoin/	0.000484
1669	Cryptojacks	https://coinmarketcap.com/currencies/cryptojacks/	0.000094
1670	Bazooka Token	https://coinmarketcap.com/currencies/bazooka-token/	0.036345
1671	DraftCoin	https://coinmarketcap.com/currencies/draftcoin/	0.004348
1672	SwiftCash	https://coinmarketcap.com/currencies/swiftcash/	0.000323
1673	PayCoin	https://coinmarketcap.com/currencies/paycoin2/	0.003145
1674	InflationCoin	https://coinmarketcap.com/currencies/inflationcoin/	8.30e-7
1675	Global Crypto Alliance	https://coinmarketcap.com/currencies/global-crypto-alliance/	0.000476
1676	Guaranteed Ethurance Token Extra	https://coinmarketcap.com/currencies/guaranteed-ethurance-token-extra/	0.000123
1677	UChain	https://coinmarketcap.com/currencies/uchain/	0.000121
1678	BitStash	https://coinmarketcap.com/currencies/bitstash/	0.000013
1679	Kuende	https://coinmarketcap.com/currencies/kuende/	0.000044
1680	BTCtalkcoin	https://coinmarketcap.com/currencies/btctalkcoin/	0.000549
1681	CryptoSoul	https://coinmarketcap.com/currencies/cryptosoul/	0.000163
1682	BLOC.MONEY	https://coinmarketcap.com/currencies/bloc-money/	0.002581
1683	HyperQuant	https://coinmarketcap.com/currencies/hyperquant/	0.000379
1684	Fivebalance	https://coinmarketcap.com/currencies/fivebalance/	0.000063
1685	ICO OpenLedger	https://coinmarketcap.com/currencies/ico-openledger/	0.075969
1686	Bata	https://coinmarketcap.com/currencies/bata/	0.006936
1687	vSlice	https://coinmarketcap.com/currencies/vslice/	0.001048
1688	Bitcoin Red	https://coinmarketcap.com/currencies/bitcoin-red/	0.001664
1689	X-Coin	https://coinmarketcap.com/currencies/x-coin/	0.002812
1690	Coin2.1	https://coinmarketcap.com/currencies/coin2-1/	0.000444
1691	Centauri	https://coinmarketcap.com/currencies/centauri/	0.000726
1692	Digiwage	https://coinmarketcap.com/currencies/digiwage/	0.000726
1693	Arion	https://coinmarketcap.com/currencies/arion/	0.002823
1694	ALL BEST ICO	https://coinmarketcap.com/currencies/all-best-ico/	0.000186
1695	Jobchain	https://coinmarketcap.com/currencies/jobchain/	0.000016
1696	Joint Ventures	https://coinmarketcap.com/currencies/joint-ventures/	0.001518
1697	Worldcore	https://coinmarketcap.com/currencies/worldcore/	0.000189
1698	EnterCoin	https://coinmarketcap.com/currencies/entercoin/	0.010726
1699	CommunityGeneration	https://coinmarketcap.com/currencies/communitygeneration/	0.000079
1700	Ratecoin	https://coinmarketcap.com/currencies/ratecoin/	0.000271
1701	EDRCoin	https://coinmarketcap.com/currencies/edrcoin/	0.011223
1702	PAYCENT	https://coinmarketcap.com/currencies/paycent/	0.002701
1703	Aricoin	https://coinmarketcap.com/currencies/aricoin/	0.000242
1704	Incodium	https://coinmarketcap.com/currencies/incodium/	0.000003
1705	Japan Content Token	https://coinmarketcap.com/currencies/japan-content-token/	0.000112
1706	PureVidz	https://coinmarketcap.com/currencies/purevidz/	0.000261
1707	Iungo	https://coinmarketcap.com/currencies/iungo/	0.000803
1708	Elementeum	https://coinmarketcap.com/currencies/elementeum/	0.006250
1709	GoldBlocks	https://coinmarketcap.com/currencies/goldblocks/	0.002016
1710	MedicCoin	https://coinmarketcap.com/currencies/mediccoin/	0.000105
1711	Datarius Credit	https://coinmarketcap.com/currencies/datarius-credit/	0.000243
1712	PRASM	https://coinmarketcap.com/currencies/prasm/	0.000014
1713	AirWire	https://coinmarketcap.com/currencies/airwire/	0.000256
1714	Kind Ads Token	https://coinmarketcap.com/currencies/kind-ads-token/	0.000711
1715	SONDER	https://coinmarketcap.com/currencies/sonder/	0.000177
1716	Bitcoin Zero	https://coinmarketcap.com/currencies/bitcoin-zero/	0.001144
1717	HYPNOXYS	https://coinmarketcap.com/currencies/hypnoxys/	0.000001
1718	Capricoin	https://coinmarketcap.com/currencies/capricoin/	0.014298
1719	Scopuly	https://coinmarketcap.com/currencies/scopuly/	0.000013
1720	Hurify	https://coinmarketcap.com/currencies/hurify/	0.000118
1721	Doge Token	https://coinmarketcap.com/currencies/doge-token/	0.000003
1722	REBL	https://coinmarketcap.com/currencies/rebl/	0.000162
1723	Cheesecoin	https://coinmarketcap.com/currencies/cheesecoin/	0.000073
1724	WPP TOKEN	https://coinmarketcap.com/currencies/wpp-token/	0.000079
1725	bitGold	https://coinmarketcap.com/currencies/bitgold/	143.14
1726	Zurcoin	https://coinmarketcap.com/currencies/zurcoin/	0.000309
1727	QUINADS	https://coinmarketcap.com/currencies/quinads/	0.000002
1728	Ether Kingdoms Token	https://coinmarketcap.com/currencies/ether-kingdoms-token/	0.003784
1729	TOKPIE	https://coinmarketcap.com/currencies/tokpie/	0.001613
1730	Garlicoin	https://coinmarketcap.com/currencies/garlicoin/	0.000484
1731	NetKoin	https://coinmarketcap.com/currencies/netkoin/	0.000006
1732	DogeCash	https://coinmarketcap.com/currencies/dogecash/	0.007339
1733	InternationalCryptoX	https://coinmarketcap.com/currencies/internationalcryptox/	0.000062
1734	Impleum	https://coinmarketcap.com/currencies/impleum/	0.003952
1735	Agrolot	https://coinmarketcap.com/currencies/agrolot/	0.000400
1736	Orbis Token	https://coinmarketcap.com/currencies/orbis-token/	0.001354
1737	Signatum	https://coinmarketcap.com/currencies/signatum/	0.000238
1738	EZOOW	https://coinmarketcap.com/currencies/ezoow/	0.000002
1739	IQ.cash	https://coinmarketcap.com/currencies/iqcash/	0.006532
1740	LOCIcoin	https://coinmarketcap.com/currencies/locicoin/	0.000615
1741	Patron	https://coinmarketcap.com/currencies/patron/	0.000078
1742	WXCOINS	https://coinmarketcap.com/currencies/wxcoins/	0.004356
1743	GenesisX	https://coinmarketcap.com/currencies/genesisx/	0.002500
1744	SpreadCoin	https://coinmarketcap.com/currencies/spreadcoin/	0.002229
1745	BitCoin One	https://coinmarketcap.com/currencies/bitcoin-one/	0.002008
1746	Shivers	https://coinmarketcap.com/currencies/shivers/	0.000455
1747	WABnetwork	https://coinmarketcap.com/currencies/wabnetwork/	0.000003
1748	ZINC	https://coinmarketcap.com/currencies/zinc/	0.004477
1749	Knekted	https://coinmarketcap.com/currencies/knekted/	0.000024
1750	IGToken	https://coinmarketcap.com/currencies/igtoken/	0.000006
1751	Herbalist Token	https://coinmarketcap.com/currencies/herbalist-token/	0.000003
1752	Nitro	https://coinmarketcap.com/currencies/nitro/	0.000247
1753	Ellaism	https://coinmarketcap.com/currencies/ellaism/	0.001210
1754	Thar Token	https://coinmarketcap.com/currencies/thar-token/	0.030286
1755	MarteXcoin	https://coinmarketcap.com/currencies/martexcoin/	0.005887
1756	Elementrem	https://coinmarketcap.com/currencies/elementrem/	0.000886
1757	STRAKS	https://coinmarketcap.com/currencies/straks/	0.000968
1758	xEURO	https://coinmarketcap.com/currencies/xeuro/	1.13
1759	Iridium	https://coinmarketcap.com/currencies/iridium/	0.001129
1760	Daneel	https://coinmarketcap.com/currencies/daneel/	0.001124
1761	Fox Trading	https://coinmarketcap.com/currencies/fox-trading/	0.002480
1762	GoHelpFund	https://coinmarketcap.com/currencies/gohelpfund/	0.001855
1763	KWHCoin	https://coinmarketcap.com/currencies/kwhcoin/	0.000012
1764	Dreamcoin	https://coinmarketcap.com/currencies/dreamcoin/	0.008487
1765	Acoin	https://coinmarketcap.com/currencies/acoin/	0.017258
1766	Blocklancer	https://coinmarketcap.com/currencies/blocklancer/	0.000175
1767	CCUniverse	https://coinmarketcap.com/currencies/ccuniverse/	0.000805
1768	UOS Network	https://coinmarketcap.com/currencies/uos-network/	0.001465
1769	NevaCoin	https://coinmarketcap.com/currencies/nevacoin/	0.004406
1770	Italo	https://coinmarketcap.com/currencies/italo/	0.005243
1771	Dach Coin	https://coinmarketcap.com/currencies/dach-coin/	0.000887
1772	Italian Lira	https://coinmarketcap.com/currencies/italian-lira/	8.06e-7
1773	FuzzBalls	https://coinmarketcap.com/currencies/fuzzballs/	0.004174
1774	Blakecoin	https://coinmarketcap.com/currencies/blakecoin/	0.000834
1775	Helex	https://coinmarketcap.com/currencies/helex/	0.286295
1776	BitcoiNote	https://coinmarketcap.com/currencies/bitcoinote/	0.001774
1777	MojoCoin	https://coinmarketcap.com/currencies/mojocoin/	0.001613
1778	Theresa May Coin	https://coinmarketcap.com/currencies/theresa-may-coin/	0.000198
1779	XGOX	https://coinmarketcap.com/currencies/xgox/	0.000008
1780	Data Transaction Token	https://coinmarketcap.com/currencies/data-transaction-token/	0.000099
1781	BitRent	https://coinmarketcap.com/currencies/bitrent/	0.000023
1782	PostCoin	https://coinmarketcap.com/currencies/postcoin/	0.001218
1783	Kabberry Coin	https://coinmarketcap.com/currencies/kabberry-coin/	0.000968
1784	Save Environment Token	https://coinmarketcap.com/currencies/save-environment-token/	0.019928
1785	BitCoal	https://coinmarketcap.com/currencies/bitcoal/	0.004226
1786	Origami	https://coinmarketcap.com/currencies/origami/	0.004497
1787	Dollar International	https://coinmarketcap.com/currencies/dollar-international/	0.535319
1788	Magic Cube Coin	https://coinmarketcap.com/currencies/magic-cube-coin/	0.000155
1789	YENTEN	https://coinmarketcap.com/currencies/yenten/	0.000726
1790	Arionum	https://coinmarketcap.com/currencies/arionum/	0.000110
1791	Absolute	https://coinmarketcap.com/currencies/absolute/	0.001347
1792	Titcoin	https://coinmarketcap.com/currencies/titcoin/	0.000262
1793	P2P Global Network	https://coinmarketcap.com/currencies/p2p-global-network/	0.000397
1794	Onix	https://coinmarketcap.com/currencies/onix/	0.000161
1795	Digital Money Bits	https://coinmarketcap.com/currencies/digital-money-bits/	0.000161
1796	Neural Protocol	https://coinmarketcap.com/currencies/neural-protocol/	0.000002
1797	Thingschain	https://coinmarketcap.com/currencies/thingschain/	0.000001
1798	Bitcoiin	https://coinmarketcap.com/currencies/bitcoiin/	0.000323
1799	Open Trading Network	https://coinmarketcap.com/currencies/open-trading-network/	0.008307
1800	ZeusNetwork	https://coinmarketcap.com/currencies/zeusnetwork/	2.38e-7
1801	Sola Token	https://coinmarketcap.com/currencies/sola-token/	0.000571
1802	Stakinglab	https://coinmarketcap.com/currencies/stakinglab/	0.040485
1803	WITChain	https://coinmarketcap.com/currencies/witchain/	0.000008
1804	Spectrum	https://coinmarketcap.com/currencies/spectrum/	0.000013
1805	CyberMusic	https://coinmarketcap.com/currencies/cybermusic/	0.000001
1806	ELTCOIN	https://coinmarketcap.com/currencies/eltcoin/	0.000175
1807	EOS TRUST	https://coinmarketcap.com/currencies/eos-trust/	0.000002
1808	Asgard	https://coinmarketcap.com/currencies/asgard/	0.000020
1809	DeltaChain	https://coinmarketcap.com/currencies/delta-chain/	0.000002
1810	bitJob	https://coinmarketcap.com/currencies/student-coin/	0.000176
1811	Zenswap Network Token	https://coinmarketcap.com/currencies/zenswap-network-token/	0.000001
1812	GoPower	https://coinmarketcap.com/currencies/gopower/	0.000189
1813	BoostCoin	https://coinmarketcap.com/currencies/boostcoin/	0.001290
1814	PAWS Fund	https://coinmarketcap.com/currencies/paws-fund/	0.007907
1815	Cyber Movie Chain	https://coinmarketcap.com/currencies/cyber-movie-chain/	7.53e-7
1816	bitSilver	https://coinmarketcap.com/currencies/bitsilver/	1.19
1817	BriaCoin	https://coinmarketcap.com/currencies/briacoin/	0.020075
1818	Dollarcoin	https://coinmarketcap.com/currencies/dollarcoin/	0.001635
1819	SteepCoin	https://coinmarketcap.com/currencies/steepcoin/	0.000081
1820	BitGuild PLAT	https://coinmarketcap.com/currencies/bitguild-plat/	0.000245
1821	RPICoin	https://coinmarketcap.com/currencies/rpicoin/	0.000016
1822	BitStation	https://coinmarketcap.com/currencies/bitstation/	0.000003
1823	Citadel	https://coinmarketcap.com/currencies/citadel/	0.001290
1824	Alpha Coin	https://coinmarketcap.com/currencies/alpha-coin/	0.000420
1825	Acash Coin	https://coinmarketcap.com/currencies/acash-coin/	0.000002
1826	EthereumX	https://coinmarketcap.com/currencies/ethereumx/	0.000161
1827	BlockCAT	https://coinmarketcap.com/currencies/blockcat/	0.001908
1828	CyberFM	https://coinmarketcap.com/currencies/cyberfm/	2.74e-7
1829	Aigang	https://coinmarketcap.com/currencies/aigang/	0.000477
1830	Spectiv	https://coinmarketcap.com/currencies/signal-token/	0.000061
1831	BitWhite	https://coinmarketcap.com/currencies/bitwhite/	0.000381
1832	Bulleon	https://coinmarketcap.com/currencies/bulleon/	0.012581
1833	StarterCoin	https://coinmarketcap.com/currencies/startercoin/	0.000040
1834	High Voltage	https://coinmarketcap.com/currencies/high-voltage/	0.009082
1835	Bitcoin 21	https://coinmarketcap.com/currencies/bitcoin-21/	0.017074
1836	Desire	https://coinmarketcap.com/currencies/desire/	0.001290
1837	Litecred	https://coinmarketcap.com/currencies/litecred/	0.000432
1838	TajCoin	https://coinmarketcap.com/currencies/tajcoin/	0.000865
1839	Datacoin	https://coinmarketcap.com/currencies/datacoin/	0.000323
1840	Fintab	https://coinmarketcap.com/currencies/fintab/	0.004598
1841	Phonecoin	https://coinmarketcap.com/currencies/phonecoin/	0.000098
1842	Bitcoin Adult	https://coinmarketcap.com/currencies/bitcoin-adult/	0.000323
1843	Arqma	https://coinmarketcap.com/currencies/arqma/	0.003226
1844	Tourist Token	https://coinmarketcap.com/currencies/tourist-token/	0.000003
1845	4NEW	https://coinmarketcap.com/currencies/4new/	0.000206
1846	Eternity	https://coinmarketcap.com/currencies/eternity/	0.001613
1847	Ccore	https://coinmarketcap.com/currencies/ccore/	0.007305
1848	Galactrum	https://coinmarketcap.com/currencies/galactrum/	0.002419
1849	ROIyal Coin	https://coinmarketcap.com/currencies/roiyal-coin/	0.010565
1850	ARAW	https://coinmarketcap.com/currencies/araw/	0.000006
1851	BunnyToken	https://coinmarketcap.com/currencies/bunnytoken/	0.000045
1852	Eurocoin	https://coinmarketcap.com/currencies/eurocoin/	0.000952
1853	Decentralized Asset Trading Platform	https://coinmarketcap.com/currencies/decentralized-asset-trading-platform/	9.96e-7
1854	Klimatas	https://coinmarketcap.com/currencies/klimatas/	0.016144
1855	Kora Network Token	https://coinmarketcap.com/currencies/kora-network-token/	0.000035
1856	ParkByte	https://coinmarketcap.com/currencies/parkbyte/	0.002431
1857	Natmin Pure Escrow	https://coinmarketcap.com/currencies/natmin-pure-escrow/	0.000071
1858	MustangCoin	https://coinmarketcap.com/currencies/mustangcoin/	0.018135
1859	Bitsum	https://coinmarketcap.com/currencies/bitsum/	0.000007
1860	Bionic	https://coinmarketcap.com/currencies/bionic/	0.000020
1861	Havy	https://coinmarketcap.com/currencies/havy/	0.000001
1862	TokenDesk	https://coinmarketcap.com/currencies/tokendesk/	0.000725
1863	Biotron	https://coinmarketcap.com/currencies/biotron/	0.000161
1864	Xuez	https://coinmarketcap.com/currencies/xuez/	0.002984
1865	SnodeCoin	https://coinmarketcap.com/currencies/snodecoin/	0.000244
1866	999	https://coinmarketcap.com/currencies/999-coin/	0.000048
1867	SHPING	https://coinmarketcap.com/currencies/shping/	0.000008
1868	wys Token	https://coinmarketcap.com/currencies/wys-token/	0.000101
1869	UltraNote Coin	https://coinmarketcap.com/currencies/ultranote-coin/	0.000050
1870	Micromines	https://coinmarketcap.com/currencies/micromines/	5.61e-7
1871	Provoco Token	https://coinmarketcap.com/currencies/provoco-token/	1.00e-8
1872	TrueVett	https://coinmarketcap.com/currencies/truevett/	0.000056
1873	Zayedcoin	https://coinmarketcap.com/currencies/zayedcoin/	0.001593
1874	SCRIV NETWORK	https://coinmarketcap.com/currencies/scriv-network/	0.000402
1875	GeyserCoin	https://coinmarketcap.com/currencies/geysercoin/	0.008387
1876	CrowdWiz	https://coinmarketcap.com/currencies/crowdwiz/	0.002300
1877	Bitcoinus	https://coinmarketcap.com/currencies/bitcoinus/	2.83e-8
1878	Gold Poker	https://coinmarketcap.com/currencies/gold-poker/	0.001855
1879	Fantasy Sports	https://coinmarketcap.com/currencies/fantasy-sports/	0.002133
1880	Engagement Token	https://coinmarketcap.com/currencies/engagement-token/	0.000023
1881	SkyHub Coin	https://coinmarketcap.com/currencies/skyhub-coin/	0.014839
1882	ICOBID	https://coinmarketcap.com/currencies/icobid/	0.000084
1883	EUNOMIA	https://coinmarketcap.com/currencies/eunomia/	5.34e-7
1884	YoloCash	https://coinmarketcap.com/currencies/yolocash/	0.000291
1885	INDINODE	https://coinmarketcap.com/currencies/indinode/	0.000009
1886	Payfair	https://coinmarketcap.com/currencies/payfair/	0.000216
1887	Cream	https://coinmarketcap.com/currencies/cream/	0.000185
1888	Gossipcoin	https://coinmarketcap.com/currencies/gossipcoin/	0.000257
1889	RouletteToken	https://coinmarketcap.com/currencies/roulettetoken/	0.000726
1890	FidexToken	https://coinmarketcap.com/currencies/fidex-token/	2.85e-7
1891	SpeedCash	https://coinmarketcap.com/currencies/speedcash/	0.014434
1892	ArbitrageCT	https://coinmarketcap.com/currencies/arbitragect/	0.000079
1893	ARbit	https://coinmarketcap.com/currencies/arbit/	0.000738
1894	CPUchain	https://coinmarketcap.com/currencies/cpuchain/	0.000441
1895	electrumdark	https://coinmarketcap.com/currencies/electrumdark/	0.001983
1896	BitRewards	https://coinmarketcap.com/currencies/bitrewards/	0.000022
1897	ShowHand	https://coinmarketcap.com/currencies/showhand/	1.22e-7
1898	CryptoFlow	https://coinmarketcap.com/currencies/cryptoflow/	0.000081
2131	Engine	https://coinmarketcap.com/currencies/engine/	0.000145
1899	Escroco Emerald	https://coinmarketcap.com/currencies/escroco-emerald/	0.000008
1900	CustomContractNetwork	https://coinmarketcap.com/currencies/customcontractnetwork/	0.000004
1901	onLEXpa	https://coinmarketcap.com/currencies/onlexpa/	0.000038
1902	Helper Search Token	https://coinmarketcap.com/currencies/helper-search-token/	8.36e-7
1903	Zealium	https://coinmarketcap.com/currencies/zealium/	0.000565
1904	VectorAI	https://coinmarketcap.com/currencies/vector/	0.000374
1905	Quebecoin	https://coinmarketcap.com/currencies/quebecoin/	0.001025
1906	Simmitri	https://coinmarketcap.com/currencies/simmitri/	0.000097
1907	Peerguess	https://coinmarketcap.com/currencies/guess/	0.000112
1908	Tracto	https://coinmarketcap.com/currencies/tracto/	0.000249
1909	PosEx	https://coinmarketcap.com/currencies/posex/	0.002720
1910	Cryptrust	https://coinmarketcap.com/currencies/cryptrust/	9.78e-7
1911	BowsCoin	https://coinmarketcap.com/currencies/bowscoin/	0.001185
1912	Californium	https://coinmarketcap.com/currencies/californium/	0.002684
1913	Dragon Option	https://coinmarketcap.com/currencies/dragon-option/	0.000069
1914	BZLCOIN	https://coinmarketcap.com/currencies/bzlcoin/	0.002683
1915	Crystal Token	https://coinmarketcap.com/currencies/crystal-token/	0.011311
1916	Vivid Coin	https://coinmarketcap.com/currencies/vivid-coin/	0.000903
1917	MNPCoin	https://coinmarketcap.com/currencies/mnpcoin/	0.002903
1918	Centurion	https://coinmarketcap.com/currencies/centurion/	0.000081
1919	Authorship	https://coinmarketcap.com/currencies/authorship/	0.000062
1920	MiloCoin	https://coinmarketcap.com/currencies/milocoin/	0.000569
1921	Independent Money System	https://coinmarketcap.com/currencies/independent-money-system/	0.001126
1922	Dalecoin	https://coinmarketcap.com/currencies/dalecoin/	0.006048
1923	Comet	https://coinmarketcap.com/currencies/comet/	0.006809
1924	Couchain	https://coinmarketcap.com/currencies/couchain/	6.11e-7
1925	nDEX	https://coinmarketcap.com/currencies/ndex/	3.87e-7
1926	Luna Coin	https://coinmarketcap.com/currencies/luna-coin/	0.003387
1927	SparksPay	https://coinmarketcap.com/currencies/sparkspay/	0.001052
1928	Veltor	https://coinmarketcap.com/currencies/veltor/	0.010281
1929	Atheios	https://coinmarketcap.com/currencies/atheios/	0.000323
1930	Swapcoinz	https://coinmarketcap.com/currencies/swapcoinz/	0.000409
1931	KAASO	https://coinmarketcap.com/currencies/kaaso/	0.000087
1932	EagleX	https://coinmarketcap.com/currencies/eaglex/	0.000161
1933	EVOS	https://coinmarketcap.com/currencies/evos/	0.000484
1934	Cabbage	https://coinmarketcap.com/currencies/cabbage/	0.000484
1935	PlatinumBAR	https://coinmarketcap.com/currencies/platinumbar/	0.002339
1936	Crystal Clear	https://coinmarketcap.com/currencies/crystal-clear/	0.000865
1937	Gratz	https://coinmarketcap.com/currencies/gratz/	0.000159
1938	MASTERNET	https://coinmarketcap.com/currencies/masternet/	0.000155
1939	VikkyToken	https://coinmarketcap.com/currencies/vikkytoken/	0.000001
1940	Apollon	https://coinmarketcap.com/currencies/apollon/	0.000032
1941	e-Chat	https://coinmarketcap.com/currencies/e-chat/	0.000250
1942	Mainstream For The Underground	https://coinmarketcap.com/currencies/mainstream-for-the-underground/	0.000004
1943	TravelNote	https://coinmarketcap.com/currencies/travelnote/	0.002036
1944	Akroma	https://coinmarketcap.com/currencies/akroma/	0.000226
1945	Nyerium	https://coinmarketcap.com/currencies/nyerium/	0.000161
1946	XOVBank	https://coinmarketcap.com/currencies/xovbank/	0.000033
1947	PAXEX	https://coinmarketcap.com/currencies/paxex/	0.000242
1948	SONO	https://coinmarketcap.com/currencies/altcommunity-coin/	0.002016
1949	Cannation	https://coinmarketcap.com/currencies/cannation/	0.001694
1950	Octoin Coin	https://coinmarketcap.com/currencies/octoin-coin/	0.007540
1951	Iconic	https://coinmarketcap.com/currencies/iconic/	0.007037
1952	TRONCLASSIC	https://coinmarketcap.com/currencies/tronclassic/	8.94e-9
1953	BenjiRolls	https://coinmarketcap.com/currencies/benjirolls/	0.000193
1954	SF Capital	https://coinmarketcap.com/currencies/sf-capital/	0.000079
1955	FUTURAX	https://coinmarketcap.com/currencies/futurax/	0.000001
1956	Ragnarok	https://coinmarketcap.com/currencies/ragnarok/	0.000242
1957	Lightpaycoin	https://coinmarketcap.com/currencies/lightpaycoin/	0.000645
1958	Wild Beast Block	https://coinmarketcap.com/currencies/wild-beast-block/	0.020492
1959	LiteBitcoin	https://coinmarketcap.com/currencies/litebitcoin/	0.000126
1960	ALLUVA	https://coinmarketcap.com/currencies/alluva/	0.000426
1961	CrevaCoin	https://coinmarketcap.com/currencies/crevacoin/	0.000091
1962	Quantis Network	https://coinmarketcap.com/currencies/quantis-network/	0.000081
1963	iBank	https://coinmarketcap.com/currencies/ibank/	0.000682
1964	Bitvolt	https://coinmarketcap.com/currencies/bitvolt/	0.000182
1965	Guider	https://coinmarketcap.com/currencies/guider/	0.000011
1966	LiteCoin Ultra	https://coinmarketcap.com/currencies/litecoin-ultra/	0.002706
1967	Concoin	https://coinmarketcap.com/currencies/concoin/	0.003727
1968	PLNcoin	https://coinmarketcap.com/currencies/plncoin/	0.000161
1969	Coinonat	https://coinmarketcap.com/currencies/coinonat/	0.000289
1970	Phantomx	https://coinmarketcap.com/currencies/phantomx/	0.000051
1971	Eva Cash	https://coinmarketcap.com/currencies/eva-cash/	0.002689
1972	ICOCalendar.Today	https://coinmarketcap.com/currencies/icocalendar-today/	0.001984
1973	Zoomba	https://coinmarketcap.com/currencies/zoomba/	0.000097
1974	Decentralized Crypto Token	https://coinmarketcap.com/currencies/decentralized-crypto-token/	0.000002
1975	SmartCoin	https://coinmarketcap.com/currencies/smartcoin/	0.000089
1976	Mirai	https://coinmarketcap.com/currencies/mirai/	0.000645
1977	HollyWoodCoin	https://coinmarketcap.com/currencies/hollywoodcoin/	0.000091
1978	HireGo	https://coinmarketcap.com/currencies/hirego/	0.000326
1979	Project Coin	https://coinmarketcap.com/currencies/project-coin/	0.000035
1980	BitMoney	https://coinmarketcap.com/currencies/bitmoney/	0.000024
1981	Nekonium	https://coinmarketcap.com/currencies/nekonium/	0.000161
1982	Experience Points	https://coinmarketcap.com/currencies/experience-points/	0.000002
1983	Staker	https://coinmarketcap.com/currencies/staker/	0.001210
1984	Prime-XI	https://coinmarketcap.com/currencies/prime-xi/	0.000079
1985	SocialCoin	https://coinmarketcap.com/currencies/socialcoin-socc/	0.000161
1986	MoX	https://coinmarketcap.com/currencies/mox/	0.000323
1987	Dash Green	https://coinmarketcap.com/currencies/dash-green/	0.000702
1988	Oceanlab	https://coinmarketcap.com/currencies/oceanlab/	0.000033
1989	Qbic	https://coinmarketcap.com/currencies/qbic/	0.000323
1990	ProCurrency	https://coinmarketcap.com/currencies/procurrency/	0.000014
1991	Secrets of Zurich	https://coinmarketcap.com/currencies/secrets-of-zurich/	0.000001
1992	iBTC	https://coinmarketcap.com/currencies/ibtc/	0.000029
1993	BROTHER	https://coinmarketcap.com/currencies/brat/	0.000008
1994	Save and Gain	https://coinmarketcap.com/currencies/save-and-gain/	0.000420
1995	JavaScript Token	https://coinmarketcap.com/currencies/javascript-token/	0.000155
1996	Elliot Coin	https://coinmarketcap.com/currencies/elliot-coin/	0.000040
1997	Project-X	https://coinmarketcap.com/currencies/project-x/	13709.91
1998	PonziCoin	https://coinmarketcap.com/currencies/ponzicoin/	0.001210
1999	X12 Coin	https://coinmarketcap.com/currencies/x12-coin/	0.000083
2000	Cointorox	https://coinmarketcap.com/currencies/cointorox/	0.000175
2001	BrokerNekoNetwork	https://coinmarketcap.com/currencies/brokernekonetwork/	3.18e-7
2002	LitecoinToken	https://coinmarketcap.com/currencies/litecoin-token/	1.00e-8
2003	Xchange	https://coinmarketcap.com/currencies/xchange/	0.000091
2004	Dinero	https://coinmarketcap.com/currencies/dinero/	0.000097
2005	Helpico	https://coinmarketcap.com/currencies/helpico/	0.032243
2006	Dignity	https://coinmarketcap.com/currencies/dignity/	0.000001
2007	Argus	https://coinmarketcap.com/currencies/argus/	0.000533
2008	Dystem	https://coinmarketcap.com/currencies/dystem/	0.000095
2009	Xenoverse	https://coinmarketcap.com/currencies/xenoverse/	0.000099
2010	Posscoin	https://coinmarketcap.com/currencies/posscoin/	1.49e-8
2011	QYNO	https://coinmarketcap.com/currencies/qyno/	0.000403
2012	Benz	https://coinmarketcap.com/currencies/benz/	0.000065
2013	LRM Coin	https://coinmarketcap.com/currencies/lrm-coin/	0.000032
2014	Abulaba	https://coinmarketcap.com/currencies/abulaba/	0.000008
2015	HarmonyCoin	https://coinmarketcap.com/currencies/harmonycoin-hmc/	0.000177
2016	SongCoin	https://coinmarketcap.com/currencies/songcoin/	0.000002
2017	OFCOIN	https://coinmarketcap.com/currencies/ofcoin/	0.000062
2018	3X Long Ethereum Token	https://coinmarketcap.com/currencies/3x-long-ethereum-token/	911.55
2019	3X Short Ethereum Token	https://coinmarketcap.com/currencies/3x-short-ethereum-token/	20.50
2020	Building Cities Beyond Blockchain	https://coinmarketcap.com/currencies/building-cities-beyond-blockchain/	2.37
2021	HUSD	https://coinmarketcap.com/currencies/husd/	1.00
2022	Handshake	https://coinmarketcap.com/currencies/handshake/	0.285864
2023	DigiFinexToken	https://coinmarketcap.com/currencies/digifinextoken/	0.330854
2024	ShineChain	https://coinmarketcap.com/currencies/shinechain/	0.000948
2025	Filecoin [Futures]	https://coinmarketcap.com/currencies/filecoin/	4.03
2026	Gomics	https://coinmarketcap.com/currencies/gomics/	0.223514
2027	Soda Coin	https://coinmarketcap.com/currencies/soda-coin/	0.014025
2028	3X Long Bitcoin Token	https://coinmarketcap.com/currencies/3x-long-bitcoin-token/	6917.72
2029	MyToken	https://coinmarketcap.com/currencies/mytoken/	0.001198
2030	Whole Network	https://coinmarketcap.com/currencies/whole-network/	0.002527
2031	Consentium	https://coinmarketcap.com/currencies/consentium/	0.011189
2032	QUEENBEE	https://coinmarketcap.com/currencies/queenbee/	0.035028
2033	Ontology Gas	https://coinmarketcap.com/currencies/ontology-gas/	0.116324
2034	3X Short Bitcoin Token	https://coinmarketcap.com/currencies/3x-short-bitcoin-token/	26.10
2035	Polkadot [IOU]	https://coinmarketcap.com/currencies/polkadot-iou/	165.56
2036	BKEX Token	https://coinmarketcap.com/currencies/bkex-token/	0.102073
2037	Yobit Token	https://coinmarketcap.com/currencies/yobit-token/	857.97
2038	CoinHe Token	https://coinmarketcap.com/currencies/coinhe-token/	0.155934
2039	Enzo	https://coinmarketcap.com/currencies/enzo/	0.031870
2040	Hdac	https://coinmarketcap.com/currencies/hdac/	0.024274
2041	Tachyon Protocol	https://coinmarketcap.com/currencies/tachyon-protocol/	0.068444
2042	Mogu	https://coinmarketcap.com/currencies/mogu/	0.421984
2043	Brazilian Digital Token	https://coinmarketcap.com/currencies/brz/	0.211455
2044	Bispex	https://coinmarketcap.com/currencies/bispex/	0.002946
2045	V-Dimension	https://coinmarketcap.com/currencies/v-dimension/	1.01
2046	Davion	https://coinmarketcap.com/currencies/davion/	0.969983
2047	Filenet	https://coinmarketcap.com/currencies/filenet/	0.435022
2048	ABCC Token	https://coinmarketcap.com/currencies/abcc-token/	0.040830
2049	QURAS	https://coinmarketcap.com/currencies/quras/	0.184790
2050	Exchange Union	https://coinmarketcap.com/currencies/exchange-union/	1.30
2051	Kusama	https://coinmarketcap.com/currencies/kusama/	2.73
2052	ExtStock Token	https://coinmarketcap.com/currencies/extstock-token/	0.027692
2053	Tokoin	https://coinmarketcap.com/currencies/tokoin/	0.041323
2054	CAPITAL X CELL	https://coinmarketcap.com/currencies/capital-x-cell/	0.846926
2055	YottaChain	https://coinmarketcap.com/currencies/yottachain/	0.072412
2056	Echoin	https://coinmarketcap.com/currencies/echoin/	0.005486
2057	Sologenic	https://coinmarketcap.com/currencies/sologenic/	0.256945
2058	Coni	https://coinmarketcap.com/currencies/coni/	0.016388
2059	VinDax Coin	https://coinmarketcap.com/currencies/vindax-coin/	0.037891
2060	Fortem Capital	https://coinmarketcap.com/currencies/fortem-capital/	0.431457
2061	Medium	https://coinmarketcap.com/currencies/medium/	0.480914
2062	NNB Token	https://coinmarketcap.com/currencies/nnb-token/	0.000851
2063	Vinci	https://coinmarketcap.com/currencies/vinci/	1.07
2064	Hubi Token	https://coinmarketcap.com/currencies/hubi-token/	0.018195
2065	FairGame	https://coinmarketcap.com/currencies/fairgame/	0.001481
2066	OceanEx Token	https://coinmarketcap.com/currencies/oceanex-token/	0.000908
2067	KNOW	https://coinmarketcap.com/currencies/know/	0.001563
2068	The Midas Touch Gold	https://coinmarketcap.com/currencies/the-midas-touch-gold/	0.002326
2069	PlayCoin [QRC20]	https://coinmarketcap.com/currencies/playcoin/	0.009724
2070	PayProtocol	https://coinmarketcap.com/currencies/payprotocol/	0.108669
2071	StarChain	https://coinmarketcap.com/currencies/starchain/	0.001357
2072	Tether Gold	https://coinmarketcap.com/currencies/tether-gold/	1652.99
2073	WETH	https://coinmarketcap.com/currencies/weth/	203.72
2074	ALP Coin	https://coinmarketcap.com/currencies/alp-coin/	0.260843
2075	VeThor Token	https://coinmarketcap.com/currencies/vethor-token/	0.000384
2076	Dapp Token	https://coinmarketcap.com/currencies/dapp-token/	0.000782
2077	Zynecoin	https://coinmarketcap.com/currencies/zynecoin/	0.469053
2078	LinkArt	https://coinmarketcap.com/currencies/linkart/	0.007709
2079	LinkToken	https://coinmarketcap.com/currencies/linktoken/	0.041987
2080	Era Swap	https://coinmarketcap.com/currencies/era-swap/	0.025146
2081	ViteX Coin	https://coinmarketcap.com/currencies/vitex-coin/	0.185396
2082	BenePit Protocol	https://coinmarketcap.com/currencies/benepit-protocol/	0.000488
2083	Decentralized Vulnerability Platform	https://coinmarketcap.com/currencies/decentralized-vulnerability-platform/	0.004790
2084	Wallet Plus X	https://coinmarketcap.com/currencies/wallet-plus-x/	0.014166
2085	Keystone of Opportunity & Knowledge	https://coinmarketcap.com/currencies/keystone-of-opportunity-knowledge/	0.321993
2086	DWS	https://coinmarketcap.com/currencies/dws/	0.000194
2087	Creditcoin	https://coinmarketcap.com/currencies/creditcoin/	0.231697
2088	Tratok	https://coinmarketcap.com/currencies/tratok/	0.003552
2089	FirmaChain	https://coinmarketcap.com/currencies/firmachain/	0.031368
2090	Axial Entertainment Digital Asset	https://coinmarketcap.com/currencies/axial-entertainment-digital-asset/	0.005859
2091	12Ships	https://coinmarketcap.com/currencies/12ships/	0.010689
2092	Bilaxy Token	https://coinmarketcap.com/currencies/bilaxy-token/	0.002068
2093	Dexter G	https://coinmarketcap.com/currencies/dexter-g/	0.611905
2094	WHEN Token	https://coinmarketcap.com/currencies/when-token/	0.002712
2095	CNNS	https://coinmarketcap.com/currencies/cnns/	0.004179
2096	MeconCash	https://coinmarketcap.com/currencies/meconcash/	0.210031
2097	Freecash	https://coinmarketcap.com/currencies/freecash/	0.464957
2098	Precium	https://coinmarketcap.com/currencies/precium/	0.005221
2099	MarcoPolo Protocol	https://coinmarketcap.com/currencies/marcopolo-protocol/	0.074743
2100	NOIZ	https://coinmarketcap.com/currencies/noizchain/	0.168002
2101	Yuan Chain Coin	https://coinmarketcap.com/currencies/yuan-chain-coin/	0.007859
2102	ProBit Token	https://coinmarketcap.com/currencies/probit-token/	0.121180
2103	Hintchain	https://coinmarketcap.com/currencies/hintchain/	0.002457
2104	HitChain	https://coinmarketcap.com/currencies/hitchain/	0.000085
2105	SOLBIT	https://coinmarketcap.com/currencies/solbit/	0.033052
2106	MimbleWimbleCoin	https://coinmarketcap.com/currencies/mimblewimblecoin/	6.84
2107	Joys Digital	https://coinmarketcap.com/currencies/joys-digital/	0.011748
2108	SPIN Protocol	https://coinmarketcap.com/currencies/spin-protocol/	0.001795
2109	MalwareChain	https://coinmarketcap.com/currencies/malwarechain/	2.18
2110	Dash Cash	https://coinmarketcap.com/currencies/dash-cash/	0.371826
2111	USDA	https://coinmarketcap.com/currencies/usda/	0.316921
2112	Tesra	https://coinmarketcap.com/currencies/tesra/	0.034191
2113	EMOGI Network	https://coinmarketcap.com/currencies/emogi-network/	0.000618
2114	YouLive Coin	https://coinmarketcap.com/currencies/youlive-coin/	0.000142
2115	TopChain	https://coinmarketcap.com/currencies/topchain/	0.005999
2116	Kratscoin	https://coinmarketcap.com/currencies/kratscoin/	2.64
2117	Aitheon	https://coinmarketcap.com/currencies/aitheon/	0.001533
2118	Bitcloud Pro	https://coinmarketcap.com/currencies/bitcloud-pro/	0.002064
2119	Waves Enterprise	https://coinmarketcap.com/currencies/waves-enterprise/	0.061407
2120	1irstGold	https://coinmarketcap.com/currencies/1irstgold/	53.42
2121	Marshal Lion Group Coin	https://coinmarketcap.com/currencies/marshal-lion-group-coin/	0.238089
2122	Bitcoffeen	https://coinmarketcap.com/currencies/bitcoffeen/	1.40
2123	D Community	https://coinmarketcap.com/currencies/d-community/	0.000259
2124	Edgeware	https://coinmarketcap.com/currencies/edgeware/	0.003152
2125	Blockchain Quotations Index Token	https://coinmarketcap.com/currencies/blockchain-quotations-index-token/	0.006420
2126	Bitcoin Classic	https://coinmarketcap.com/currencies/bitcoin-classic/	0.098884
2127	KEY	https://coinmarketcap.com/currencies/key/	0.001017
2128	InnovaMinex	https://coinmarketcap.com/currencies/innovaminex/	0.036159
2129	Simone	https://coinmarketcap.com/currencies/simone/	578.63
2130	Treelion	https://coinmarketcap.com/currencies/treelion/	0.099943
2132	Zuflo Coin	https://coinmarketcap.com/currencies/zuflo-coin/	0.003642
2133	Coindom	https://coinmarketcap.com/currencies/coindom/	0.001843
2134	Themis	https://coinmarketcap.com/currencies/themis/	0.005868
2135	Lukki Operating Token	https://coinmarketcap.com/currencies/lukki-operating-token/	0.005597
2136	Promotion Coin	https://coinmarketcap.com/currencies/promotion-coin/	0.000068
2137	Zenon	https://coinmarketcap.com/currencies/zenon/	1.69
2138	Sparkle	https://coinmarketcap.com/currencies/sparkle/	0.014878
2139	The Hustle App	https://coinmarketcap.com/currencies/the-hustle-app/	0.003117
2140	Cybereits	https://coinmarketcap.com/currencies/cybereits/	0.000915
2141	ArdCoin	https://coinmarketcap.com/currencies/ardcoin/	0.001048
2142	FuturoCoin	https://coinmarketcap.com/currencies/futurocoin/	1.67
2143	Buxcoin	https://coinmarketcap.com/currencies/buxcoin/	1.61
2144	Volume Network	https://coinmarketcap.com/currencies/volume-network/	0.004863
2145	UltrAlpha	https://coinmarketcap.com/currencies/ultralpha/	0.068133
2146	IOU	https://coinmarketcap.com/currencies/iou/	0.139197
2147	Custody Token	https://coinmarketcap.com/currencies/custody-token/	0.002311
2148	ROMToken	https://coinmarketcap.com/currencies/romtoken/	0.000092
2149	Emrals	https://coinmarketcap.com/currencies/emrals/	0.045551
2150	IFX24	https://coinmarketcap.com/currencies/ifx24/	0.008509
2151	Ladder Network Token	https://coinmarketcap.com/currencies/ladder-network-token/	0.006574
2152	B91	https://coinmarketcap.com/currencies/b91/	0.037447
2153	Tradeplus	https://coinmarketcap.com/currencies/tradeplus/	19.92
2154	Electronero	https://coinmarketcap.com/currencies/electronero/	0.000882
2155	PalletOne	https://coinmarketcap.com/currencies/palletone/	0.002865
2156	BitUP Token	https://coinmarketcap.com/currencies/bitup-token/	0.001050
2157	TerraKRW	https://coinmarketcap.com/currencies/terra-krw/	0.000838
2158	DarkPay	https://coinmarketcap.com/currencies/darkpaycoin/	0.053595
2159	CARAT	https://coinmarketcap.com/currencies/carat/	0.699567
2160	Super Bitcoin	https://coinmarketcap.com/currencies/super-bitcoin/	1.69
2161	eosBLACK	https://coinmarketcap.com/currencies/eosblack/	0.000354
2162	Jinbi Token	https://coinmarketcap.com/currencies/jinbi-token/	109.15
2163	MACH Project	https://coinmarketcap.com/currencies/mach-project/	0.050314
2164	Bloomzed Token	https://coinmarketcap.com/currencies/bloomzed-token/	0.204813
2165	Blockcloud	https://coinmarketcap.com/currencies/blockcloud/	0.000995
2166	BUMO	https://coinmarketcap.com/currencies/bumo/	0.004291
2167	ARCS	https://coinmarketcap.com/currencies/arcs/	0.535806
2168	IOEX	https://coinmarketcap.com/currencies/ioex/	0.018865
2169	BitKAM	https://coinmarketcap.com/currencies/bitkam/	0.000660
2170	Twinkle	https://coinmarketcap.com/currencies/twinkle/	0.001370
2171	MediBit	https://coinmarketcap.com/currencies/medibit/	0.000003
2172	Pledge Coin	https://coinmarketcap.com/currencies/pledge-coin/	0.000730
2173	Saga	https://coinmarketcap.com/currencies/saga/	1.39
2174	Okschain	https://coinmarketcap.com/currencies/okschain/	0.001040
2175	DACC	https://coinmarketcap.com/currencies/dacc/	0.000020
2176	United Bitcoin	https://coinmarketcap.com/currencies/united-bitcoin/	1.26
2177	Intelligent Investment Chain	https://coinmarketcap.com/currencies/intelligent-investment-chain/	0.000139
2178	Agoras Tokens	https://coinmarketcap.com/currencies/agoras-tokens/	0.176331
2179	EduCoin	https://coinmarketcap.com/currencies/edu-coin/	0.000095
2180	SEER	https://coinmarketcap.com/currencies/seer/	0.000329
2181	FLEX	https://coinmarketcap.com/currencies/flex/	0.283703
2182	MEX	https://coinmarketcap.com/currencies/mex/	0.000279
2183	Commerce Data Connection	https://coinmarketcap.com/currencies/commerce-data-connection/	0.000206
2184	CoinMeet	https://coinmarketcap.com/currencies/coinmeet/	0.006861
2185	CHEX	https://coinmarketcap.com/currencies/chex/	0.002391
2186	Bitcoin File	https://coinmarketcap.com/currencies/bitcoin-file/	0.001422
2187	LegalBlock	https://coinmarketcap.com/currencies/legalblock/	0.000310
2188	PocketNode	https://coinmarketcap.com/currencies/pocketnode/	0.000151
2189	HeartBout Pay	https://coinmarketcap.com/currencies/heartbout-pay/	0.002015
2190	Ti-Value	https://coinmarketcap.com/currencies/ti-value/	0.007484
2191	Infinity Esaham	https://coinmarketcap.com/currencies/infinity-esaham/	7.68
2192	Xtock	https://coinmarketcap.com/currencies/xtock/	0.000209
2193	DEXA COIN	https://coinmarketcap.com/currencies/dexa-coin/	0.000003
2194	CMITCOIN	https://coinmarketcap.com/currencies/cmitcoin/	0.000011
2195	Tchain	https://coinmarketcap.com/currencies/tchain/	0.002830
2196	Global Reserve System	https://coinmarketcap.com/currencies/global-reserve-system/	4.08
2197	ThingsOperatingSystem	https://coinmarketcap.com/currencies/thingsoperatingsystem/	0.001054
2198	Game Stars	https://coinmarketcap.com/currencies/game-stars/	0.000064
2199	vSportCoin	https://coinmarketcap.com/currencies/vsportcoin/	0.001274
2200	Livepeer	https://coinmarketcap.com/currencies/livepeer/	1.15
2201	NOVA	https://coinmarketcap.com/currencies/nova/	0.000016
2202	Global Funeral Care	https://coinmarketcap.com/currencies/global-funeral-care/	0.035676
2203	Ormeus Ecosystem	https://coinmarketcap.com/currencies/ormeus-ecosystem/	0.001047
2204	Wisdom Chain	https://coinmarketcap.com/currencies/wisdom-chain/	0.115115
2205	Korbot	https://coinmarketcap.com/currencies/korbot/	0.066430
2206	Vectorspace AI	https://coinmarketcap.com/currencies/vectorspace-ai/	0.112831
2207	Curio	https://coinmarketcap.com/currencies/curio/	0.186079
2208	Tepleton	https://coinmarketcap.com/currencies/tepleton/	0.028498
2209	SoPay	https://coinmarketcap.com/currencies/sopay/	0.000136
2210	BitcoinX	https://coinmarketcap.com/currencies/bitcoinx/	0.000941
2211	COMSA [ETH]	https://coinmarketcap.com/currencies/comsa-eth/	0.058692
2212	ValueChain	https://coinmarketcap.com/currencies/valuechain/	0.001630
2213	THENODE	https://coinmarketcap.com/currencies/thenode/	0.267639
2214	MEETtoken	https://coinmarketcap.com/currencies/meettoken/	0.161187
2215	VOMER	https://coinmarketcap.com/currencies/vomer/	0.277232
2216	bitCEO	https://coinmarketcap.com/currencies/bitceo/	0.068260
2217	NSS Coin	https://coinmarketcap.com/currencies/nss-coin/	0.017787
2218	Demeter Chain	https://coinmarketcap.com/currencies/demeter-chain/	0.003310
2219	CryptoBossCoin	https://coinmarketcap.com/currencies/cryptobosscoin/	0.012908
2220	VENJOCOIN	https://coinmarketcap.com/currencies/venjocoin/	6.01
2221	Kahsh	https://coinmarketcap.com/currencies/kahsh/	0.123259
2222	Krypton Galaxy Coin	https://coinmarketcap.com/currencies/krypton-galaxy-coin/	0.000359
2223	Altbet	https://coinmarketcap.com/currencies/altbet/	0.037742
2224	CaluraCoin	https://coinmarketcap.com/currencies/caluracoin/	0.005561
2225	Esports Token	https://coinmarketcap.com/currencies/esports-token/	0.000293
2226	ShareToken	https://coinmarketcap.com/currencies/sharetoken/	0.003113
2227	Bitcoin BEP2	https://coinmarketcap.com/currencies/bitcoin-bep2/	8030.70
2228	Asian-African Capital Chain	https://coinmarketcap.com/currencies/asian-african-capital-chain/	0.185566
2229	BeeKan	https://coinmarketcap.com/currencies/beekan/	0.000391
2230	Ubique Chain Of Things	https://coinmarketcap.com/currencies/ubique-chain-of-things/	0.008549
2231	Experience Token	https://coinmarketcap.com/currencies/experience-token/	0.000027
2232	Boltt Coin	https://coinmarketcap.com/currencies/boltt-coin/	0.002910
2233	GSENetwork	https://coinmarketcap.com/currencies/gsenetwork/	0.000082
2234	Golden Token	https://coinmarketcap.com/currencies/golden-token/	0.006067
2235	DeepCloud AI	https://coinmarketcap.com/currencies/deepcloud-ai/	0.001532
2236	Globalvillage Ecosystem	https://coinmarketcap.com/currencies/globalvillage-ecosystem/	0.000167
2237	Orient Walt	https://coinmarketcap.com/currencies/orient-walt/	0.190691
2238	London Football Exchange	https://coinmarketcap.com/currencies/london-football-exchange/	0.017170
2239	BlockCDN	https://coinmarketcap.com/currencies/blockcdn/	0.002274
2240	En-Tan-Mo	https://coinmarketcap.com/currencies/en-tan-mo/	0.017453
2241	CoinDeal Token	https://coinmarketcap.com/currencies/coindeal-token/	0.022445
2242	xCrypt Token	https://coinmarketcap.com/currencies/xcrypt-token/	0.000483
2243	TranslateMe Network Token	https://coinmarketcap.com/currencies/translateme-network-token/	0.001134
2244	Alphacon	https://coinmarketcap.com/currencies/alphacon/	0.000721
2245	IZIChain	https://coinmarketcap.com/currencies/izichain/	0.000300
2246	Opennity	https://coinmarketcap.com/currencies/opennity/	0.000163
2247	Endorsit	https://coinmarketcap.com/currencies/endorsit/	0.000043
2248	Creatanium	https://coinmarketcap.com/currencies/creatanium/	1.29
2249	Crex Token	https://coinmarketcap.com/currencies/crex-token/	5.14
2250	Bit Trust System	https://coinmarketcap.com/currencies/bit-trust-system/	0.009542
2251	CariNet	https://coinmarketcap.com/currencies/carinet/	0.001601
2252	NewsToken	https://coinmarketcap.com/currencies/newstoken/	0.000332
2253	Pixie Coin	https://coinmarketcap.com/currencies/pixie-coin/	0.000970
2254	Newsolution	https://coinmarketcap.com/currencies/newsolution/	0.006558
2255	Receive Access Ecosystem	https://coinmarketcap.com/currencies/receive-access-ecosystem/	0.399619
2256	CapdaxToken	https://coinmarketcap.com/currencies/capdaxtoken/	0.003337
2257	Qube	https://coinmarketcap.com/currencies/qube/	0.000134
2258	Bitpanda Ecosystem Token	https://coinmarketcap.com/currencies/bitpanda-ecosystem-token/	0.058257
2259	InsurChain	https://coinmarketcap.com/currencies/insurchain/	0.000019
2260	Social Lending Token	https://coinmarketcap.com/currencies/social-lending-token/	0.001642
2261	Future1coin	https://coinmarketcap.com/currencies/future1coin/	0.001347
2262	WowSecret	https://coinmarketcap.com/currencies/wowsecret/	0.012007
2263	CK USD	https://coinmarketcap.com/currencies/ckusd/	0.053780
2264	Atlas Token	https://coinmarketcap.com/currencies/atlas-token/	0.006152
2265	OTCBTC Token	https://coinmarketcap.com/currencies/otcbtc-token/	0.002109
2266	TerraNova	https://coinmarketcap.com/currencies/terranova/	0.009752
2267	Infinity Economics	https://coinmarketcap.com/currencies/infinity-economics/	0.001658
2268	QUSD	https://coinmarketcap.com/currencies/qusd/	0.011680
2269	BiNGO.Fun	https://coinmarketcap.com/currencies/bingo-fun/	0.000168
2270	Usechain Token	https://coinmarketcap.com/currencies/usechain-token/	0.000785
2271	Moozicore	https://coinmarketcap.com/currencies/moozicore/	0.000181
2272	DMme	https://coinmarketcap.com/currencies/dmme/	0.007279
2273	Celeum	https://coinmarketcap.com/currencies/celeum/	0.090858
2274	HGH Token	https://coinmarketcap.com/currencies/hgh-token/	0.000127
2275	HOT Token	https://coinmarketcap.com/currencies/hot-token/	0.002060
2276	Tutor's Diary	https://coinmarketcap.com/currencies/tutors-diary/	0.001289
2277	LOLTOKEN	https://coinmarketcap.com/currencies/loltoken/	0.026854
2278	XTRD	https://coinmarketcap.com/currencies/xtrd/	0.002642
2279	DUO Network Token	https://coinmarketcap.com/currencies/duo-network-token/	0.001997
2280	Aunite	https://coinmarketcap.com/currencies/aunite/	0.016506
2281	Hyper Pay	https://coinmarketcap.com/currencies/hyper-pay/	0.001044
2282	BuySell	https://coinmarketcap.com/currencies/buysell/	10.92
2283	TLS Token	https://coinmarketcap.com/currencies/tls-token/	0.002410
2284	Big Bang Game Coin	https://coinmarketcap.com/currencies/big-bang-game-coin/	0.000020
2285	LemoChain	https://coinmarketcap.com/currencies/lemochain/	0.001740
2286	COMSA [XEM]	https://coinmarketcap.com/currencies/comsa-xem/	0.060520
2287	NairaX	https://coinmarketcap.com/currencies/nairax/	0.002651
2288	BuckHathCoin	https://coinmarketcap.com/currencies/buck-hath-coin/	0.203491
2289	ORS Group	https://coinmarketcap.com/currencies/ors-group/	0.029230
2290	Wolfs Group	https://coinmarketcap.com/currencies/wolfs-group/	0.079160
2291	Schilling-Coin	https://coinmarketcap.com/currencies/schilling-coin/	0.001847
2292	MGC Token	https://coinmarketcap.com/currencies/mgc-token/	0.002230
2293	ScPrime	https://coinmarketcap.com/currencies/scprime/	0.009002
2294	FYDcoin	https://coinmarketcap.com/currencies/fydcoin/	0.002418
2295	MSD	https://coinmarketcap.com/currencies/msd/	0.003466
2296	Emanate	https://coinmarketcap.com/currencies/emanate/	0.014134
2297	Bitcoin God	https://coinmarketcap.com/currencies/bitcoin-god/	0.160490
2298	Lukiu	https://coinmarketcap.com/currencies/lukiu/	0.000335
2299	Dragon Token	https://coinmarketcap.com/currencies/dragon-token/	1.87
2300	Hybrid Block	https://coinmarketcap.com/currencies/hybrid-block/	0.003377
2301	Volt	https://coinmarketcap.com/currencies/volt/	0.000084
2302	USDCoin	https://coinmarketcap.com/currencies/usdcoin/	0.315927
2303	CENTERCOIN	https://coinmarketcap.com/currencies/centercoin/	0.000322
2304	Stellar Gold	https://coinmarketcap.com/currencies/stellar-gold/	0.000977
2305	Influence Chain	https://coinmarketcap.com/currencies/influence-chain/	0.000269
2306	cUSD Currency	https://coinmarketcap.com/currencies/cusd-currency/	0.007576
2307	First Bitcoin	https://coinmarketcap.com/currencies/first-bitcoin/	0.002982
2308	Binance GBP Stable Coin	https://coinmarketcap.com/currencies/binance-gbp-stable-coin/	1.30
2309	BitcoinV	https://coinmarketcap.com/currencies/bitcoinv/	0.062403
2310	EncryptoTel [ETH]	https://coinmarketcap.com/currencies/encryptotel-eth/	0.005239
2311	IOV BlockChain	https://coinmarketcap.com/currencies/iov-blockchain/	0.000094
2312	Sombe	https://coinmarketcap.com/currencies/sombe/	0.000322
2313	Bitgrin	https://coinmarketcap.com/currencies/bitgrin/	0.025548
2314	Uranus	https://coinmarketcap.com/currencies/uranus/	0.000619
2315	SpectreSecurityCoin	https://coinmarketcap.com/currencies/spectre-security-coin/	0.000421
2316	Defi	https://coinmarketcap.com/currencies/defi/	0.017251
2317	Midas	https://coinmarketcap.com/currencies/midas/	0.397659
2318	MDtoken	https://coinmarketcap.com/currencies/mdtoken/	0.000579
2319	Aerotoken	https://coinmarketcap.com/currencies/aerotoken/	0.071047
2320	Colletrix	https://coinmarketcap.com/currencies/colletrix/	0.000004
2321	Secure Cash	https://coinmarketcap.com/currencies/secure-cash/	0.404499
2322	Harcomia	https://coinmarketcap.com/currencies/harcomia/	0.253547
2323	One DEX	https://coinmarketcap.com/currencies/one-dex/	4.00e-7
2324	StockChain	https://coinmarketcap.com/currencies/stockchain/	0.000049
2325	Kappi Network	https://coinmarketcap.com/currencies/kappi-network/	6.10e-7
2326	Zerobank	https://coinmarketcap.com/currencies/zerobank/	0.009324
2327	Bitcoin & Company Network	https://coinmarketcap.com/currencies/bitcoin-and-company-network/	0.000322
2328	Tronipay	https://coinmarketcap.com/currencies/tronipay/	0.000356
2329	Muzika	https://coinmarketcap.com/currencies/muzika/	0.002901
2330	Jingtum Tech	https://coinmarketcap.com/currencies/jingtum-tech/	0.000284
2331	PHANTOM	https://coinmarketcap.com/currencies/phantom/	0.000048
2332	Hanacoin	https://coinmarketcap.com/currencies/hanacoin/	0.002288
2333	Show	https://coinmarketcap.com/currencies/show/	0.000037
2334	Sparkster	https://coinmarketcap.com/currencies/sparkster/	0.000610
2335	Blockmason Link	https://coinmarketcap.com/currencies/blockmason-link/	0.000160
2336	PlusOneCoin	https://coinmarketcap.com/currencies/plusonecoin/	0.012492
2337	MoneroV	https://coinmarketcap.com/currencies/monero-v/	0.002498
2338	Rally	https://coinmarketcap.com/currencies/rally/	0.000157
2339	Maya Preferred 223	https://coinmarketcap.com/currencies/maya-preferred-223/	60.83
2340	Veles	https://coinmarketcap.com/currencies/veles/	0.062782
2341	City Coin	https://coinmarketcap.com/currencies/city-coin/	0.024662
2342	RoboCalls	https://coinmarketcap.com/currencies/robocalls/	0.000017
2343	SuperEdge	https://coinmarketcap.com/currencies/superedge/	0.000016
2344	QURA GLOBAL	https://coinmarketcap.com/currencies/qura-global/	0.000001
2345	1AI Token	https://coinmarketcap.com/currencies/1ai-token/	0.000081
2346	ClubCoin	https://coinmarketcap.com/currencies/clubcoin/	0.022808
2347	Valuto	https://coinmarketcap.com/currencies/valuto/	0.000322
2348	Huptex	https://coinmarketcap.com/currencies/huptex/	0.000429
2349	Sexcoin	https://coinmarketcap.com/currencies/sexcoin/	0.000806
2350	QPay	https://coinmarketcap.com/currencies/qpay/	0.000010
2351	CarBlock	https://coinmarketcap.com/currencies/carblock/	0.000037
2352	Global X Change Token	https://coinmarketcap.com/currencies/global-x-change-token/	0.229530
2353	BTCMoon	https://coinmarketcap.com/currencies/btcmoon/	0.000649
2354	Ordocoin	https://coinmarketcap.com/currencies/ordocoin/	0.000008
2355	Superior Coin	https://coinmarketcap.com/currencies/superior-coin/	0.000016
2356	Litbinex Coin	https://coinmarketcap.com/currencies/litbinex-coin/	0.000940
2357	PROUD Money	https://coinmarketcap.com/currencies/proud-money/	0.001612
2358	AERUM	https://coinmarketcap.com/currencies/aerum/	0.001017
2359	WINCOIN	https://coinmarketcap.com/currencies/win-coin/	0.000081
2360	RabbitCoin	https://coinmarketcap.com/currencies/rabbitcoin/	0.000001
2361	Quotient	https://coinmarketcap.com/currencies/quotient/	0.000351
2362	Bubble	https://coinmarketcap.com/currencies/bubble/	0.019726
2363	Axiom	https://coinmarketcap.com/currencies/axiom/	0.002112
2364	AvatarCoin	https://coinmarketcap.com/currencies/avatarcoin/	0.050951
2365	Francs	https://coinmarketcap.com/currencies/francs/	0.002035
2366	Aces	https://coinmarketcap.com/currencies/aces/	0.000124
2367	Tellurion	https://coinmarketcap.com/currencies/tellurion/	6.24e-7
2368	BlazerCoin	https://coinmarketcap.com/currencies/blazercoin/	0.000172
2369	EmberCoin	https://coinmarketcap.com/currencies/embercoin/	3.19e-8
2370	Wink	https://coinmarketcap.com/currencies/wink/	0.000088
2371	Moving Cloud Coin	https://coinmarketcap.com/currencies/moving-cloud-coin/	0.002887
2372	Ethereum Lite	https://coinmarketcap.com/currencies/ethereum-lite/	0.001828
2373	Content and AD Network	https://coinmarketcap.com/currencies/content-and-ad-network/	0.002078
2374	Maggie	https://coinmarketcap.com/currencies/maggie/	0.000323
2375	LightChain	https://coinmarketcap.com/currencies/lightchain/	0.000001
2376	Read	https://coinmarketcap.com/currencies/read/	0.000990
2377	OceanChain	https://coinmarketcap.com/currencies/oceanchain/	0.000096
2378	Animation Vision Cash	https://coinmarketcap.com/currencies/animation-vision-cash/	0.000172
2379	Lendroid Support Token	https://coinmarketcap.com/currencies/lendroid-support-token/	0.001080
2380	SnipCoin	https://coinmarketcap.com/currencies/snipcoin/	0.000079
2381	SalPay	https://coinmarketcap.com/currencies/salpay/	0.003829
2382	WeToken	https://coinmarketcap.com/currencies/wetoken/	0.000193
2383	FundToken	https://coinmarketcap.com/currencies/fundtoken/	0.000489
2384	DIPNET	https://coinmarketcap.com/currencies/dipnet/	0.000138
2385	NAM COIN	https://coinmarketcap.com/currencies/nam-coin/	0.000038
2386	Wiki Token	https://coinmarketcap.com/currencies/wiki-token/	0.637552
2387	BingoCoin	https://coinmarketcap.com/currencies/bingocoin/	0.001315
2388	CEDEX Coin	https://coinmarketcap.com/currencies/cedex-coin/	0.000922
2389	Obitan Chain	https://coinmarketcap.com/currencies/obitan-chain/	0.000041
2390	RRCoin	https://coinmarketcap.com/currencies/rrcoin/	0.000084
2391	KingXChain	https://coinmarketcap.com/currencies/kingxchain/	8.11e-7
2392	YUKI	https://coinmarketcap.com/currencies/yuki/	0.000002
2393	Centaure	https://coinmarketcap.com/currencies/centaure/	0.000079
2394	GazeCoin	https://coinmarketcap.com/currencies/gazecoin/	0.000915
2395	SaveNode	https://coinmarketcap.com/currencies/savenode/	0.000079
2396	MobilinkToken	https://coinmarketcap.com/currencies/mobilinktoken/	0.001235
2397	TCOIN	https://coinmarketcap.com/currencies/tcoin/	0.011321
2398	HondaisCoin	https://coinmarketcap.com/currencies/hondaiscoin/	0.000008
2399	Bgogo Token	https://coinmarketcap.com/currencies/bgogo-token/	0.000484
2400	TOKOK	https://coinmarketcap.com/currencies/tokok/	0.002907
2401	M2O	https://coinmarketcap.com/currencies/m2o/	0.000295
2402	Gamblica	https://coinmarketcap.com/currencies/gamblica/	0.000725
2403	WEBN token	https://coinmarketcap.com/currencies/webn-token/	0.000003
2404	BUDDY	https://coinmarketcap.com/currencies/buddy/	0.000002
2405	OOOBTC TOKEN	https://coinmarketcap.com/currencies/ooobtc-token/	0.000617
2406	HUDDL	https://coinmarketcap.com/currencies/huddl/	0.002367
2407	UTEMIS	https://coinmarketcap.com/currencies/utemis/	0.000225
2408	BIZKEY	https://coinmarketcap.com/currencies/bizkey/	0.000016
2409	PATHHIVE	https://coinmarketcap.com/currencies/phv/	0.008843
2410	Lucky Block Network	https://coinmarketcap.com/currencies/lucky-block-network/	0.013028
2411	LevelApp Token	https://coinmarketcap.com/currencies/levelapp-token/	0.000002
2412	Smartup	https://coinmarketcap.com/currencies/smartup/	0.000055
2413	Gosama	https://coinmarketcap.com/currencies/gosama/	0.284555
2414	COINBIG	https://coinmarketcap.com/currencies/coinbig/	0.002632
2415	Oculor	https://coinmarketcap.com/currencies/oculor/	0.000009
2416	7Eleven	https://coinmarketcap.com/currencies/7eleven/	1.50e-8
2417	BAWnetwork	https://coinmarketcap.com/currencies/bawnetwork/	0.000007
2418	GoMoney	https://coinmarketcap.com/currencies/gomoney/	0.001860
2419	VENA	https://coinmarketcap.com/currencies/vena/	0.001141
2420	Voltz	https://coinmarketcap.com/currencies/voltz/	0.002191
2421	LINK	https://coinmarketcap.com/currencies/link/	10.73
2422	Oath Protocol	https://coinmarketcap.com/currencies/oath-protocol/	0.000058
2423	Versess Coin	https://coinmarketcap.com/currencies/versess-coin/	16.58
2424	VERA	https://coinmarketcap.com/currencies/vera/	0.000091
2425	Ethlyte Crypto	https://coinmarketcap.com/currencies/ethlyte-crypto/	1.11
2426	Lambda Space Token	https://coinmarketcap.com/currencies/lambda-space-token/	0.016278
2427	Know Your Developer	https://coinmarketcap.com/currencies/know-your-developer/	0.014720
2428	Unochain	https://coinmarketcap.com/currencies/unochain/	7.37e-7
2429	CitiOs	https://coinmarketcap.com/currencies/citios/	4.14
2430	SIGMAcoin	https://coinmarketcap.com/currencies/sigmacoin/	0.001086
2431	ACChain	https://coinmarketcap.com/currencies/acchain/	0.005088
2432	ALLCOIN	https://coinmarketcap.com/currencies/allcoin/	0.000746
2433	Airline & Life Networking Token	https://coinmarketcap.com/currencies/airline-and-life-networking-token/	0.020152
2434	Ethereum Message Search	https://coinmarketcap.com/currencies/ethereum-message-search/	?
\.


--
-- Data for Name: movie; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.movie (id, name, url, rating, year, country, genre, director, duration) FROM stdin;
1	Ответный удар (3 сезон)	https://kinokrad.co/285863-otvetnyy-udar-3-sezon-2012.html	7	20112	Великобритания	боевик, триллер, драма	Майкл Дж. Бассетт, Дэниэл Персивал, Пол Вильшурст	46
2	Мистер Робот (4 сезон)	https://kinokrad.co/339662-mister-robot-4-sezon.html	6	2020	США	триллер, драма, криминал	Сэм Эсмейл, Джим МакКэй, Триша Брок	49
3	Ходячие мертвецы (10 сезон)	https://kinokrad.co/338649-hodyachie-mertvecy-10-sezon.html	7	2019	США	ужасы, триллер, драма	Грег Никотеро, Майкл Е. Сатраземис, Эрнест Р. Дикерсон	43
4	Флэш (6 сезон)	https://kinokrad.co/338705-fljesh-6-sezon.html	6	2019	США	фантастика, боевик, драма, приключения	Дермотт Даунс, Дэвид МакУиртер, Ральф Хемекер	43
5	Звездные войны: Сопротивление (2 сезон)	https://kinokrad.co/338595-zvezdnye-voyny-soprotivlenie-2-sezon.html	5	2019	США	мультфильм, короткометражка, фантастика, боевик, приключения	Стюарт Ли, Боско ЭнДжи, Сол Руис	30
6	Гриффины (18 сезон)	https://kinokrad.co/339193-griffiny-18-sezon.html	6	2019	США	мультфильм, комедия	Джеймс Пурдум, Питер Шин, Доминик Бьянчи	22
7	Рэй Донован (7 сезон)	https://kinokrad.co/339207-rjey-donovan-7-sezon.html	7	2019	США	драма, криминал	Джон Дал, Такер Гейтс, Майкл Аппендаль	43
8	Новичок / Новобранец (2 сезон)	https://kinokrad.co/339608-novichok-2-sezon.html	7	2019	США	драма, комедия, криминал	Майкл Гои, Сильвен Уайт, Тоа Фрейзер	43
9	Новый Амстердам (2 сезон)	https://kinokrad.co/339485-novyy-amsterdam-2-sezon.html	6	2019	США	драма	Майкл Словис, Питер Хортон, Джэми Пэйн	43
10	Ривердэйл (4 сезон)	https://kinokrad.co/339572-riverdjeyl-4-sezon.html	6	2019	США	драма, мелодрама, криминал, детектив	Гэбриел Корреа, Роб Шейденгланц, Кевин Родни Салливан	45
11	Ординатор (3 сезон)	https://kinokrad.co/339605-ordinator-3-sezon.html	6	2019	США	драма	Роб Корн, Дэвид Крэбтри, Янн Тернер	60
12	Супергёрл (5 сезон)	https://kinokrad.co/338725-supergjorl-5-sezon.html	4	2019	США	фантастика, боевик, драма, приключения	Джесси Уарн, Глен Винтер, Ларри Тенг	43
13	Блудный сын (1 сезон)	https://kinokrad.co/339707-bludnyy-syn-1-sezon.html	7	2019	США	триллер, драма, криминал, детектив	Адам Кэйн, Роб Бэйли, Меган Гриффитс	44
14	Чикаго в огне (8 сезон)	https://kinokrad.co/339488-chikago-v-ogne-8-sezon.html	5	2019	США	драма	Джо Чаппелль, Реза Табризи, Сэнфорд Букставер	43
15	Предатели (1 сезон)	https://kinokrad.co/334405-predateli-1-sezon.html	6	2019	Великобритания	триллер	Дирбла Уолш, Алекс Винклер	60
16	Проект засекречен /Проект «Синяя книга» (1 сезон)	https://kinokrad.co/333469-proekt-zasekrechen-proekt-sinyaya-kniga-1-sezon.html	8	2019	США, Канада	фантастика, триллер, драма, детектив	Норма Бэйли, Томас Картер, Алекс Грейвз	45
17	Комендантский час (1 сезон)	https://kinokrad.co/334696-komendantskiy-chas-1-sezon.html	6	2019	Великобритания	фантастика, боевик, триллер, драма, криминал	Колм МакКарти, Кристофер Смит	60
18	Город на холме (1 сезон)	https://kinokrad.co/336822-gorod-na-holme-1-sezon.html	6	2019	США	триллер, драма, криминал	Кристоф Шреве, Хагар Бен-Ашер, Адам Бернштейн	60
19	Великолепная пятёрка (1 сезон)	https://kinokrad.co/336582-velikolepnaya-pyatjorka-1-sezon.html	5	2019	Россия	детектив	Сергей Полуянов	39
20	Лемони Сникет: 33 несчастья (3 сезон)	https://kinokrad.co/335059-lemoni-sniket-33-neschastya-3-sezon.html	7	2019	США	драма, комедия, детектив, приключения, семейный	Барри Зонненфельд, Бо Уэлш, Марк Палански	50
21	Кровь и сокровища (1 сезон)	https://kinokrad.co/336820-krov-i-sokrovischa-1-sezon.html	6	2019	США	боевик, приключения	Гай Норман Би, Стив Бойум, Холли Дэйл	60
22	Предприятие «Божий дар» (1 сезон)	https://kinokrad.co/336794-predpriyatie-bozhiy-dar-1-sezon.html	6	2019	США	драма	Стив Конрад, Джим Уайтакер	
23	Белое золото (2 сезон)	https://kinokrad.co/335050-beloe-zoloto-2-sezon.html	6	2019	Великобритания	комедия	Дэймон Бисли	30
24	Мне очень жаль (2 сезон)	https://kinokrad.co/335029-mne-ochen-zhal-2-sezon.html	3	2019	США	комедия	Дэйл Штерн, Стефани Коун, Алекс Рейд	30
25	Куку (5 сезон)	https://kinokrad.co/335026-kuku-5-sezon.html	5	2019	Великобритания	комедия	Бен Тэйлор, Пол Мерфи, Бен Грегор	22
26	Перерождение (1 сезон)	https://kinokrad.co/333038-pererozhdenie-1-sezon.html	7	2019	США	ужасы, фэнтези, боевик, драма, приключения	Джейсон Энслер, Эллисон Лидди, Jessica Lowrey	60
27	Джетт (1 сезон)	https://kinokrad.co/336792-dzhett-1-sezon.html	7	2019	США	триллер, драма, криминал	Себастьян Гутьеррес	62
28	Волшебники (4 сезон)	https://kinokrad.co/334129-volshebniki-4-sezon.html	7	2019	США	фэнтези, драма	Крис Фишер, Джеймс Л. Конуэй, Джошуа Батлер	60
29	Секта (1 сезон)	https://kinokrad.co/336274-sekta-1-sezon.html	6	2019	Россия	драма, триллер	Гела Баблуани	40
30	Консультант (2 сезон)	https://kinokrad.co/336211-konsultant-2-sezon.html	6	2019	Россия	детектив, драма	Алексей Рудаков, Дмитрий Коробкин	48
95	МатьОтецСын (1 сезон)	https://kinokrad.co/334573-matotecsyn-1-sezon.html	7	2019	Великобритания	триллер	Джеймс Кент, Чарльз Стёрридж	60
31	Болотная тварь (1 сезон)	https://kinokrad.co/336783-bolotnaya-tvar-1-sezon.html	7	2019	США	ужасы, фантастика, фэнтези, боевик, драма, приключения	Деран Сарафян, Лен Уайзман, Кэрол Бенкер	60
32	Шиттс Крик (5 сезон)	https://kinokrad.co/332651-shitts-krik-5-sezon.html	5	2019	Канада, США	комедия	Пол Фокс, Джерри Чиккоритти, Т.У. Пикок	22
33	Брокмайр (3 сезон)	https://kinokrad.co/335266-brokmayr-3-sezon.html	5	2019	США	драма, комедия, спорт	Морис Мэрэбл, Тим Киркби	30
34	Скажи правду (1 сезон)	https://kinokrad.co/334963-skazhi-pravdu-1-sezon.html	6	2019	Россия	драма	Андрей Эшпай	50
35	Пенниуорт (1 сезон)	https://kinokrad.co/336781-penniuort-1-sezon.html	7	2019	США	боевик, драма, криминал	Роб Бэйли, Дэнни Кэннон, Билл Иглз	60
36	Преследование (1 сезон)	https://kinokrad.co/332648-presledovanie-1-sezon.html	5	2019	Великобритания	драма	Марк Эванс	45
37	Фитнес (2 сезон)	https://kinokrad.co/336289-fitnes-2-sezon.html	6	2019	Россия	комедия	Антон Маслов, Кирилл Васильев	24
38	Чем мы заняты в тени (1 сезон)	https://kinokrad.co/334930-chem-my-zanyaty-v-teni-1-sezon.html	6	2019	США	комедия, ужасы	Джемейн Клемент, Джейсон Уолинер, Тайка Вайтити	30
39	Быть Мэри Джейн (5 сезон)	https://kinokrad.co/335680-byt-meri-dzheyn-5-sezon.html	5	2019	США	триллер, драма, мелодрама	Салим Акил, Реджина Кинг, Адам Шенкман	60
40	Босс-молокосос: Снова в деле (2 сезон)	https://kinokrad.co/336166-boss-molokosos-snova-v-dele-2-sezon.html	8	2019	США	мультфильм, фэнтези, комедия, приключения, семейный	Pete Jacobs, Christo Stamboliev, Аллан Якобсен	25
41	Врач Ё-хан (1 сезон)	https://kinokrad.co/337363-vrach-e-han-1-sezon.html	7	2019	Корея Южная	драма	Чо Су-вон	35
42	Лео и Тиг (1 сезон)	https://kinokrad.co/335674-leo-i-tig-1-sezon.html	7	2019	Россия	мультфильм, детский, приключения	Александр Люткевич, Николай Козлов	11
43	Иная жизнь/Другая жизнь (1 сезон)	https://kinokrad.co/337362-inaya-zhizn-1-sezon.html	6	2019	США	фантастика, триллер, драма, детектив, приключения	Майрзи Алмас, Аллан Аркуш, Шери Фоксон	43
44	Печатная машинка (1 сезон)	https://kinokrad.co/337361-pechatnaya-mashinka-1-sezon.html	7	2019	Индия	ужасы, детектив	Суджой Гхош	48
45	Кассирши (1 сезон)	https://kinokrad.co/335683-kassirshi-1-sezon.html	5	2019	Россия	мелодрама	Андрей Силкин	50
46	Покои (1 сезон)	https://kinokrad.co/335671-pokoi-1-sezon.html	7	2019	США	ужасы, фэнтези, драма, мистика	Сидни Фриланд, Альфонсо Гомес-Рехон, Дана Гонсалес	47
47	Девять жизней (1 сезон)	https://kinokrad.co/335650-devyat-zhizney-1-sezon.html	5	2019	Россия	мелодрама	Давид Ткебучава	60
48	Королева юга (4 сезон)	https://kinokrad.co/337299-koroleva-4-sezon.html	7	2019	США, Испания, Мальта, Мексика	боевик, триллер, драма, криминал	Эдуардо Санчес, Дэвид Бойд, Дэйв Родригез	42
49	Ник вам покажет/Плохая Ник (1 сезон)	https://kinokrad.co/337302-nik-vam-pokazhet-1-sezon.html	6	2019	США	комедия, семейный	Энди Фикмен, Боб Коэрр, Фил Льюис	30
50	Агнцы божьи (1 сезон)	https://kinokrad.co/337303-agncy-bozhi-1-sezon.html	6	2019	Австралия	драма	Джеффри Уокер	54
51	Городские истории (1 сезон)	https://kinokrad.co/337304-gorodskie-istorii-1-sezon.html	5	2019	США	драма	Алан Пол, Сайлэс Ховард, Стэйси Пассон	60
52	СМЕРШ (1 сезон)	https://kinokrad.co/335629-smersh-1-sezon.html	6	2019	Россия	детектив, боевик, история, военный, драма	Олег Фомин	45
53	Всегда ведьма (1 сезон)	https://kinokrad.co/333601-vsegda-vedma-1-sezon.html	6	2019	Колумбия	фэнтези, драма, мелодрама	Лилиана Боканегра, Матео Стиуэльбер	40
54	Пирсон (1 сезон)	https://kinokrad.co/337298-pirson-1-sezon.html	6	2019	США	драма	Кевин Брэй, Эмиль Левисетти, Алексис О. Коричински	60
55	Самый громкий голос (1 сезон)	https://kinokrad.co/337296-samyy-gromkiy-golos-1-sezon.html	7	2019	США	драма, биография	Кари Скогланд, Джереми Подесва, Скотт З. Бёрнс	50
56	Возмездие (1 сезон)	https://kinokrad.co/333559-vozmezdie-1-sezon.html	7	2019	Россия	драма, боевик	Давид Ткебучава, Михаил Кабанов	48
57	Ланцет (1 сезон)	https://kinokrad.co/333562-lancet-1-sezon.html	6	2019	Россия	мелодрама, детектив, драма	Елена Николаева	50
58	Босх (5 сезон)	https://kinokrad.co/335509-bosh-5-sezon.html	6	2019	США	драма, криминал	Алекс Закржевский, Эрнест Р. Дикерсон, Кевин Даулинг	51
59	Жизни матрёшки (1 сезон)	https://kinokrad.co/333541-zhizni-matreshki-1-sezon.html	7	2019	США	комедия, драма, фантастика, детектив	Лесли Хэдланд, Джеми Бэббит, Наташа Лионн	30
60	Развод (3 сезон)	https://kinokrad.co/337295-razvod-3-sezon.html	6	2019	США	драма, комедия	Адам Бернштейн, Джесси Перец, Райан Кейс	30
61	Магнус (1 сезон)	https://kinokrad.co/337279-magnus-1-sezon.html	6	2019	Норвегия	комедия, криминал	Гер Хеннинг Хопланд	30
62	Имя мне Ночь (1 сезон)	https://kinokrad.co/333529-imya-mne-noch-1-sezon.html	8	2019	США	драма, детектив	Пэтти Дженкинс, Виктория Махони, Карл Франклин	60
127	Уэнтуорт / Вентворт (7 сезон)	https://kinokrad.co/336331-uentuort-ventvort-7-sezon.html	7	2019	Австралия	драма, криминал	Кевин Карлин, Катрин Миллар, Стив Джодрелл	45
63	Сверхъестественное (15 сезон)	https://kinokrad.co/338619-sverhestestvennoe-15-sezon.html	7	2019	США	фэнтези, ужасы, триллер, драма, детектив	Роберт Сингер, Филип Сгриккиа, Джон Шоуолтер	43
64	Бэтвумен (1 сезон)	https://kinokrad.co/338719-bjetvumen-1-sezon.html	4	2019	США	фантастика, боевик, драма, криминал, приключения	Холли Дэйл, Маркос Сига, Майкл А. Алловиц	45
65	Ивановы-Ивановы (4 сезон)	https://kinokrad.co/339944-ivanovy-ivanovy-4-sezon.html	6	2019	Россия	комедия	Антон Федотов, Андрей Элинсон, Фёдор Стуков	24
66	Династия (3 сезон)	https://kinokrad.co/340115-dinastiya-3-sezon.html	7	2019	США	драма	Мэтт Эрл Бисли, Майкл А. Алловиц, Джеффри В. Бёрд	42
67	Детство Шелдона / Молодой Шелдон (3 сезон)	https://kinokrad.co/340163-detstvo-sheldona-molodoy-sheldon-3-sezon.html	7	2019	США	комедия	Джаффар Махмуд, Алекс Рейд, Ховард Дойч	30
68	Нэнси Дрю (1 сезон)	https://kinokrad.co/340166-njensi-dryu-1-sezon.html	5	2019	США	фэнтези, драма, детектив	Ларри Тенг, Шеннон Коли, Джон Т. Кречмер	44
69	Частный детектив Магнум (2 сезон)	https://kinokrad.co/340334-chastnyy-detektiv-magnum-2-sezon.html	6	2019	США	боевик, криминал, приключения	Брайан Спайсер, Эгил Эгилссон, Карен Гавиола	43
70	Силиконовая долина / Кремниевая долина (6 сезон)	https://kinokrad.co/340328-silikonovaya-dolina-6-sezon.html	6	2019	США	комедия	Майк Джадж, Алек Берг, Джеми Бэббит	28
71	Как избежать наказания за убийство (6 сезон)	https://kinokrad.co/340244-kak-izbezhat-nakazaniya-za-ubiystvo-6-sezon.html	7	2019	США	триллер, драма, криминал, детектив	Билл Д’Элиа, Стивен Крегг, Лора Иннес	43
72	Открытое море (2 сезон)	https://kinokrad.co/340241-otkrytoe-more-2-sezon.html	5	2019	Испания	драма, криминал, детектив	Лино Эскалера, Мануэль Гомес Перейра, Карлос Седес	50
73	Открытое море (1 сезон)	https://kinokrad.co/340238-otkrytoe-more-1-sezon.html	7	2019	Испания	драма, криминал, детектив	Лино Эскалера, Мануэль Гомес Перейра, Карлос Седес	50
74	S. W. A. T.: Спецназ города ангелов (3 сезон)	https://kinokrad.co/340160-s-w-a-t-specnaz-goroda-angelov-3-sezon.html	6	2019	США	боевик, триллер, драма, криминал, приключения	Билл Джирхарт, Гай Ферленд, Джон Шоуолтер	43
75	Притворство / Акт (1 сезон)	https://kinokrad.co/334927-pritvorstvo-akt-1-sezon.html	8	2019	США	ужасы, драма, криминал	Лор де Клермон-Тоннер, Стивен Пит, Адам Аркин	60
76	Ханна (1 сезон)	https://kinokrad.co/334888-hanna-1-sezon.html	8	2019	США	боевик, драма	Андерс Энгстрем, Джон Джонс, Эми Нил	60
77	Гоголь (1 сезон)	https://kinokrad.co/334849-gogol-1-sezon.html	7	2019	Россия	детектив, драма, приключения	Егор Баранов	48
78	Стражи Отчизны (1 сезон)	https://kinokrad.co/334846-strazhi-otchizny-1-sezon.html	3	2019	Россия	боевик	Михаил Колпахчиев	45
79	Реализация (1 сезон)	https://kinokrad.co/334819-realizaciya-1-sezon.html	6	2019	Россия	детектив	Виктор Шкуратов	50
80	Анатомия убийства (1 сезон)	https://kinokrad.co/334798-anatomiya-ubiystva-1-sezon.html	5	2019	Россия	детектив	Артур Румынский	52
81	Женщина с прошлым (1 сезон)	https://kinokrad.co/334786-zhenschina-s-proshlym-1-sezon.html	5	2019	Россия	мелодрама	Рауф Кубаев	90
82	Чёрное лето (1 сезон)	https://kinokrad.co/335491-chernoe-leto-1-sezon.html	7	2019	Канада, США	ужасы, боевик, триллер, драма	Джон Хайамс, Тим Кокс	40
83	Монстры корпорации (2 сезон)	https://kinokrad.co/333110-monstry-korporacii-2-sezon.html	6	2019	США	комедия	Пэт Бишоп	30
84	Академия «Амбрелла» (1 сезон)	https://kinokrad.co/334255-akademiya-ambrella-1-sezon.html	8	2019	США	фэнтези, боевик, драма, комедия, приключения	Эндрю Бернштейн, Питер Хор, Эллен Кёрас	60
85	Окончательный приговор (1 сезон)	https://kinokrad.co/335458-okonchatelnyy-prigovor-1-sezon.html	5	2019	Россия	детектив	Дмитрий Аверин	44
86	Американские боги (2 сезон)	https://kinokrad.co/335149-amerikanskie-bogi-2-sezon.html	7	2019	США	фэнтези, драма, детектив	Крис Бирн, Дэвид Слэйд, Адам Кэйн	60
87	Месть на десерт (1 сезон)	https://kinokrad.co/334225-mest-na-desert-1-sezon.html	5	2019	Россия	детектив	Александр Хван	55
88	Осмос (1 сезон)	https://kinokrad.co/335416-osmos-1-sezon.html	5	2019	Франция	фантастика, мелодрама	Пьер Акнин, Мона Ашаш, Томас Винсент	55
89	Единственная радость (1 сезон)	https://kinokrad.co/334222-edinstvennaya-radost-1-sezon.html	5	2019	Россия	мелодрама	Петр Степин	55
90	Имя розы (1 сезон)	https://kinokrad.co/335431-imya-rozy-1-sezon.html	8	2019	Италия, Германия	триллер, драма, детектив	Джакомо Баттиато	60
91	Зорге (1 сезон)	https://kinokrad.co/335434-zorge-1-sezon.html	6	2019	Россия, Китай, Украина	биография, драма	Сергей Гинзбург	44
92	Красная линия (1 сезон)	https://kinokrad.co/335413-krasnaya-liniya-1-sezon.html	5	2019	США	драма, криминал	Томас Картер, Мэттью Черри, Шилин Чокси	60
93	Коронер (1 сезон)	https://kinokrad.co/334132-koroner-1-sezon.html	7	2019	Канада	драма	Эдриэнн Митчелл, Пол Фокс, Winnifred Jong	60
94	Гадалка (1 сезон)	https://kinokrad.co/333763-gadalka-1-sezon.html	4	2019	Россия	детектив, триллер	Илья Казанков	50
96	Безмолвный свидетель / Немой свидетель (22 сезон)	https://kinokrad.co/334102-bezmolvnyy-svidetel-nemoy-svidetel-22-sezon.html	6	2019	Великобритания	драма, криминал, детектив	Тадеус О’Салливан, Ричард Сайни, Дэвид Ричардс	43
97	Аванпост (2 сезон)	https://kinokrad.co/337278-avanpost-2-sezon.html	6	2019	США	фэнтези, боевик	Джон Лойд, Марк Роскин, Курт Найт	44
98	Когти (3 сезон)	https://kinokrad.co/337275-kogti-3-sezon.html	6	2019	США	драма, комедия, криминал	Дэйл Штерн, Джеми Трэвис, Ховард Дойч	45
99	Баскетс (4 сезон)	https://kinokrad.co/337274-baskets-4-sezon.html	5	2019	США	драма, комедия	Джонатан Крисел	30
100	Крутые ребята (1 сезон)	https://kinokrad.co/336067-krutye-rebyata-1-sezon.html	6	2019	США	комедия	Фил Льюис, Фред Сэвэдж, Джонатан Джадж	22
101	Элементарно (7 сезон)	https://kinokrad.co/337266-jelementarno-7-sezon.html	8	2019	США	драма, криминал, детектив	Гай Ферленд, Кристин Мур, Джон Полсон	43
102	Обученные (1 сезон)	https://kinokrad.co/336148-obuchennye-1-sezon.html	5	2019	США	комедия	Дэвид Катценберг, Джей Чандрашекхар, Лиа Томпсон	30
103	Звёзды и лисы (1 сезон)	https://kinokrad.co/336109-zvezdy-i-lisy-1-sezon.html	3	2019	Россия	детектив	Петр Амелин	44
104	Вавилон (1 сезон)	https://kinokrad.co/336103-vavilon-1-sezon.html	5	2019	Корея Южная	драма, мелодрама, криминал, детектив	Юн Сон-щик	60
105	Мама Лора / Больше жизни (1 сезон)	https://kinokrad.co/336034-mama-lora-bolshe-zhizni.html	5	2019	Россия	детектив	Андрей Силкин	60
106	Положение в стране (1 сезон)	https://kinokrad.co/336031-polozhenie-v-strane-1-sezon.html	6	2019	Великобритания	комедия	Стивен Фрирз	10
107	Последняя неделя (1 сезон)	https://kinokrad.co/336022-poslednyaya-nedelya-1-sezon.html	4	2019	Россия	мелодрама	Павел Мальков	54
108	Всё схвачено (3 сезон)	https://kinokrad.co/334189-vse-shvacheno-3-sezon.html	6	2019	США	комедия	Памела Фрайман, Джеймс Берроуз, Виктор Гонзалез	30
109	Риф-брейк (1 сезон)	https://kinokrad.co/337221-rif-breyk-1-sezon.html	5	2019	Франция, Австралия, США	драма, криминал	Киран Дарси-Смит, Питер Андрикидис, Фиона Бэнкс	60
110	Наследие (2 сезон)	https://kinokrad.co/340100-nasledie-2-sezon.html	7	2019	США	фэнтези, драма, детектив, приключения, ужасы	Джеффри Уинг Шотц, Анджела Барнс Гомес, Майкл А. Алловиц	45
111	Четыре свадьбы и одни похороны (1 сезон)	https://kinokrad.co/337220-chetyre-svadby-i-odni-pohorony-1-sezon.html	6	2019	США	мелодрама, комедия	Катрин Морсхэд, Тристрам Шапиро, Том Маршалл	60
112	Бесстыдники (10 сезон)	https://kinokrad.co/340097-besstyzhie-10-sezon.html	8	2019	США	драма, комедия	Марк Майлод, Иэн Б. МакДональд, Джон Уэллс	55
113	Следователь Горчакова (1 сезон)	https://kinokrad.co/335866-sledovatel-gorchakova.html	5	2019	Молдова, Россия, Украина	детектив, драма, криминал	Вера Яковенко, Александр Сальников	55
114	Мэри убивает людей (3 сезон)	https://kinokrad.co/336328-meri-ubivaet-lyudey-3-sezon.html	7	2019	Канада	драма	Холли Дэйл, Норма Бэйли, Келли Макин	44
115	Гранд Отель (1 сезон)	https://kinokrad.co/337219-grand-otel-1-sezon.html	7	2019	США	драма	Билл Д’Элиа, Марисоль Торрес, Барбара Браун	43
116	Мистер Мерседес (3 сезон)	https://kinokrad.co/339992-mister-mersedes-3-sezon.html	6	2019	США	фантастика, триллер, детектив	Джек Бендер, Лора Иннес, Джон Дэвид Коулз	60
117	Чёрный список (7 сезон)	https://kinokrad.co/339947-chjornyy-spisok-7-sezon.html	7	2019	США	триллер, драма, криминал, детектив	Майкл В. Уоткинс, Билл Роу, Эндрю МакКарти	43
118	Хранители (1 сезон)	https://kinokrad.co/339941-hraniteli-1-sezon.html	5	2019	США	фантастика, боевик, драма, детектив	Николь Кэссел, Стивен Уильямс, Стеф Грин	60
119	Другие (1 сезон)	https://kinokrad.co/333379-drugie-1-sezon.html	7	2019	Россия	драма	Ольга Доброва-Куликова	52
120	Рассказ служанки (3 сезон)	https://kinokrad.co/337215-rasskaz-sluzhanki-3-sezon.html	6	2019	США	фантастика, триллер, драма	Майк Баркер, Кари Скогланд, Даина Рейд	60
121	Один (1 сезон)	https://kinokrad.co/333418-odin-1-sezon.html	5	2019	Россия	детектив, драма	Армен Арутюнян	50
122	Тайная власть (2 сезон)	https://kinokrad.co/335821-taynaya-vlast-2-sezon.html	6	2019	Великобритания	боевик, триллер, драма	Роберт Коннолли, Мэттью Паркхилл	45
123	Отель «Дель Луна» (1 сезон)	https://kinokrad.co/337213-otel-del-luna-1-sezon.html	8	2019	Корея Южная	мелодрама, фэнтези	О Чхун-хван	80
124	Человек в высоком замке (4 сезон)	https://kinokrad.co/339938-chelovek-v-vysokom-zamke-4-sezon.html	7	2019	США, Великобритания, Канада	фантастика, триллер, драма	Дэниэл Персивал, Джон Фоусет, Нельсон МакКормик	60
125	Новогодний экспресс (1 сезон)	https://kinokrad.co/333362-novogodniy-ekspress-1-sezon.html	7	2019	Россия	мелодрама	Дмитрий Булин	90
126	Касл-Рок (2 сезон)	https://kinokrad.co/339243-kasl-rok-2-sezon.html	8	2019	США	триллер, ужасы, фэнтези, драма, детектив	Грег Яйтанс, Майкл Аппендаль, Фил Абрахам	60
186	Эйфория (1 сезон)	https://kinokrad.co/338597-jeyforiya.html	7	2019	США	драма	Сэм Левинсон, Пиппа Бьянко, Августин Фриззелл	55
128	Агенты «Щ.И.Т.» (6 сезон)	https://kinokrad.co/336265-agenty-sch.i.t.-6-sezon.html	7	2019	США	фантастика, боевик, триллер, драма, приключения	Билл Джирхарт, Винс Мисиано, Кевин Танчароэн	45
129	Крёстный отец Гарлема (1 сезон)	https://kinokrad.co/339782-krjostnyy-otec-garlema-1-sezon.html	8	2019	США	драма, криминал	Джо Чаппелль, Эрнест Р. Дикерсон, Таня Хэмилтон	55
130	Стрела (8 сезон)	https://kinokrad.co/338709-strela-8-sezon.html	5	2019	США	фантастика, боевик, драма, криминал, детектив, приключения	Джеймс Бэмфорд, Джон Беринг, Глен Винтер	43
131	Частные сыщики (3 сезон)	https://kinokrad.co/336334-chastnye-syschiki-3-sezon.html	6	2019	Канада	драма, комедия, криминал, детектив	Джеймс Дженн, Келли Макин, Шон Пиллер	43
132	Война миров (1 сезон)	https://kinokrad.co/339740-voyna-mirov-1-sezon.html	7	2019	Великобритания, Франция, США	фантастика, драма, детектив	Ричард Кларк, Жиль Кулье	45
133	Ведьмак (1 сезон)	https://kinokrad.co/339455-vedmak-1-sezon.html	8	2019	США, Польша	ужасы, фэнтези, боевик, драма, детектив, приключения	Алик Сахаров, Шарлотта Брандстром, Алекс Гарсиа Лопес	60
134	По волчьим законам / По-волчьи выть (4 сезон)	https://kinokrad.co/336337-po-volchim-zakonam-po-volchi-vyt-4-sezon.html	8	2019	США	драма, криминал	Джон Уэллс, Кристофер Чулак, Дэйв Родригез	60
135	Каратель (2 сезон)	https://kinokrad.co/333173-karatel-2-sezon.html	8	2019	США	фантастика, боевик, триллер, драма, криминал, приключения	Джим О’Хенлон, Джереми Уэбб, Джет Уилкинсон	53
136	Сирена (2 сезон)	https://kinokrad.co/333781-sirena-2-sezon.html	7	2019	США	фэнтези, драма	Джо Менендес, Ник Копус, Джон Бэдэм	60
137	Бойтесь ходячих мертвецов (5 сезон)	https://kinokrad.co/336343-boytes-hodyachih-mertvecov-5-sezon.html	6	2019	США	ужасы, фантастика, триллер, драма	Майкл Е. Сатраземис, Стефан Шварц, Эндрю Бернштейн	44
138	Несколько шагов до любви (1 сезон)	https://kinokrad.co/333170-neskolko-shagov-do-lyubvi-1-sezon.html	4	2019	Россия	мелодрама	Эдуард Пальмов	60
139	Другие двое (1 сезон)	https://kinokrad.co/334735-drugie-dvoe-1-sezon.html	4	2019	США	комедия	Эндрю ДеЯнг, Крис Келли, Mike Karnell	30
140	Чёрный понедельник (1 сезон)	https://kinokrad.co/334162-chernyy-ponedelnik-1-sezon.html	7	2019	США	комедия	Реджинальд Хадлин, Чарльз Стоун III, Джастин Типпинг	60
141	Баптист (1 сезон)	https://kinokrad.co/334417-baptist-1-sezon.html	5	2019	Великобритания	драма	Jan Matthys, Боркур Ситорсон	60
142	Смилф / Мамаша (2 сезон)	https://kinokrad.co/333784-smilf-mamasha-2-sezon.html	5	2019	США	комедия	Фрэнки Шоу, Лесли Хэдланд, Эми Йорк Рубин	30
143	Ответный удар (7 сезон)	https://kinokrad.co/334402-otvetnyy-udar-7-sezon.html	6	2019	Великобритания	боевик, триллер, драма	М. Дж. Бассетт, Билл Иглз, Дэниэл Персивал	45
144	Шаг к счастью (1 сезон)	https://kinokrad.co/334699-shag-k-schastyu-1-sezon.html	3	2019	Россия	детектив, криминал	Алексей Праздников	55
145	Бабье лето (1 сезон)	https://kinokrad.co/334624-babe-leto-1-sezon.html	3	2019	Россия	мелодрама	Дмитрий Светозаров	52
146	Чернов (1 сезон)	https://kinokrad.co/334666-chernov-1-sezon.html	2	2019	Россия	драма	Сергей Бобров	45
147	Жестокий Стамбул (1 сезон)	https://kinokrad.co/336271-zhestokiy-stambul-1-sezon.html	7	2019	Турция	драма	Джевдет Мерджан	120
148	Годунов. Продолжение (1 сезон)	https://kinokrad.co/334594-godunov.-prodolzhenie-1-sezon.html	6	2019	Россия	история, драма	Алексей Андрианов, Тимур Алпатов	52
149	Катастрофа (4 сезон)	https://kinokrad.co/334621-katastrofa-4-sezon.html	6	2019	Великобритания	комедия	Бен Тэйлор, Джим О’Хенлон	24
150	Всё могло быть иначе (1 сезон)	https://kinokrad.co/336292-vsjo-moglo-byt-inache-1.html	6	2019	Россия	мелодрама, драма	Глеб Якубовский	54
151	Хэппи (2 сезон)	https://kinokrad.co/335215-heppi-2-sezon.html	7	2019	США	фэнтези, триллер, комедия, криминал, детектив	Брайан Тейлор, Уэйн Йип, Дэвид Петрарка	60
152	Виски Кавалер (1 сезон)	https://kinokrad.co/334801-viski-kavaler-1-sezon.html	7	2019	США	боевик, триллер, драма, комедия, приключения	Питер Атенсио, Джон Ист, Ромео Тироне	60
153	Враг внутри (1 сезон)	https://kinokrad.co/334972-vrag-vnutri-1-sezon.html	7	2019	США	драма	Марисоль Торрес, Чарльз Бисон, Дэвид Бойд	43
154	Леденящие душу приключения Сабрины (2 сезон)	https://kinokrad.co/335356-ledenyaschie-dushu-priklyucheniya-sabriny-2-sezon.html	8	2019	США	ужасы, фэнтези, триллер, драма, детектив	Роб Шейденгланц, Мэгги Кили, Ли Толанд Кригер	60
155	Готэм (5 сезон)	https://kinokrad.co/333107-gotem-5-sezon.html	7	2019	США	фантастика, боевик, триллер, драма, криминал, детектив	Дэнни Кэннон, Роб Бэйли, Т.Дж. Скотт	44
156	Розуэлл, Нью-Мексико (1 сезон)	https://kinokrad.co/334429-rozuell-nyu-meksiko-1-sezon.html	6	2019	США	фантастика, драма, мелодрама	Тим Эндрю, Лэнс Андерсон, Джули Плек	60
157	Стальная звезда (2 сезон)	https://kinokrad.co/335260-stalnaya-zvezda-2-sezon.html	9	2019	Великобритания, Канада, США	драма, криминал, триллер	Жиль Банньер, Грант Харви, Марк Йобст	60
158	Первая / ОА (2 сезон)	https://kinokrad.co/335263-pervaya-oa-2-sezon.html	7	2019	США	фантастика, фэнтези, драма, детектив	Зал Батманглидж, Эндрю Хэй, Анна Роуз Холмер	60
159	Реальные пацаны (12 сезон)	https://kinokrad.co/334711-realnye-pacany-12-sezon.html	6	2019	Россия	комедия	Жанна Кадникова	24
160	Адаптация (2 сезон)	https://kinokrad.co/335248-adaptaciya-2-sezon.html	6	2019	Россия	комедия	Фёдор Стуков, Александр Назаров	24
161	Кардинал (3 сезон)	https://kinokrad.co/333275-kardinal-3-sezon.html	7	2019	Канада	триллер, драма, криминал, детектив	Дэниэл Гру, Джефф Ренфро	42
162	Цветочное танго (1 сезон)	https://kinokrad.co/333760-cvetochnoe-tango-1-sezon.html	5	2019	Россия	мелодрама	Александр Грабарь	60
163	Падение Ордена (2 сезон)	https://kinokrad.co/335257-padenie-ordena-2-sezon.html	8	2019	США	боевик, драма, приключения	Дуглас Маккиннон, Дэвид Петрарка, Метин Хусейн	60
164	Чёрный список (6 сезон)	https://kinokrad.co/332999-chernyy-spisok-6-sezon.html	8	2019	США	триллер, драма, криминал, детектив	Майкл В. Уоткинс, Билл Роу, Эндрю МакКарти	43
165	Подлежит уничтожению (1 сезон)	https://kinokrad.co/335938-podlezhit-unichtozheniyu-1-sezon.html	6	2019	Россия	драма, военный	Виталий Ващенко	55
166	Стар против сил зла / Звёздная принцесса и силы зла (4 сезон)	https://kinokrad.co/335332-star-protiv-sil-zla-zvezdnaya-princessa-i-sily-zla-4-sezon.html	8	2019	США, Канада, Филиппины, Великобритания, Корея Южная, Франция	мультфильм, фантастика, фэнтези, боевик, драма, комедия, приключения, семейный	Аарон Хэммерсли, Доминик Бисигнано, Бретт Вэрон	23
167	Ладья (1 сезон)	https://kinokrad.co/337212-ladya-1-sezon.html	6	2019	США	фэнтези, триллер, драма	Чина Му-Ен, Суну Гонера, Кари Скогланд	50
168	Слишком стар, чтобы умереть молодым (1 сезон мини-сериал)	https://kinokrad.co/337202-slishkom-star-chtoby-umeret-molodym-1-sezon.html	7	2019	США	триллер, драма, криминал	Николас Виндинг Рефн	80
169	Когда они нас увидят (1 сезон мини-сериал)	https://kinokrad.co/337200-kogda-oni-nas-uvidyat-1-sezon.html	7	2019	США	драма, криминал	Ава ДюВерней	80
170	Планеты (1 сезон)	https://kinokrad.co/337153-planety-1-sezon.html	7	2019	Великобритания	документальный	Стивен Кутер, Мартин Джонсон, Ник Стэйси	58
171	Пандора (1 сезон)	https://kinokrad.co/337152-pandora-1-sezon.html	5	2019	США	фантастика, боевик, драма	Бретт Симмонс, Кристиан Госсетт, Стивен Хьюз	43
172	Пацаны (1 сезон)	https://kinokrad.co/337135-pacany-1-sezon.html	8	2019	США	фантастика, боевик, комедия, криминал	Филип Сгриккиа, Дэниэл Эттиэс, Эрик Крипке	60
173	Приятные хлопоты (2 сезон)	https://kinokrad.co/337047-priyatnye-hlopoty-2-sezon.html	7	2019	США	драма, мелодрама, комедия	Питер Пейдж, Брэд Бредевег, Майкл Медико	45
174	Криптон (2 сезон)	https://kinokrad.co/337045-kripton-2-sezon.html	6	2019	США	фантастика, боевик, драма, приключения	Метин Хусейн, Джулиус Рамсей, Марк Роскин	45
175	Смертельный улов (15 сезон)	https://kinokrad.co/337013-smertelnyy-ulov-15-sezon.html	7	2019	США	документальный, реальное ТВ, приключения	Том Бирс	55
176	Темные начала (1 сезон)	https://kinokrad.co/339181-temnye-nachala-1-sezon.html	8	2019	Великобритания, США	фэнтези, драма, приключения, семейный	Джейми Чайлдс, Уильям МакГрегор, Отто Батхёрст	60
177	Мандалорец (1 сезон)	https://kinokrad.co/338605-mandalorec-1-sezon.html	9	2019	США	фантастика, боевик, приключения	Дебора Чоу, Рик Фамуйива, Дэйв Филони	30
178	Утреннее шоу (1 сезон)	https://kinokrad.co/339079-utrennee-shou-1-sezon.html	8	2019	США	драма	Мими Ледер, Дэвид Фрэнкел, Роксанн Доусон	60
179	Ради всего человечества (1 сезон)	https://kinokrad.co/339195-radi-vsego-chelovechestva-1-sezon.html	6	2019	США	фантастика, драма	Аллен Култер, Сет Гордон, Мира Менон	60
180	Медичи: Повелители Флоренции (3 сезон)	https://kinokrad.co/339217-medichi-poveliteli-florencii-3-sezon.html	7	2019	Италия, Великобритания, Франция	триллер, драма, мелодрама, детектив, биография, история	Кристиан Дюге, Серджо Мимика-Геззан, Джон Кассар	60
181	Рик и Морти (4 сезон)	https://kinokrad.co/338653-rik-i-morti-4-sezon.html	7	2019	США	мультфильм, комедия, фантастика, приключения	Пит Мишелс, Уэсли Арчер, Брайан Ньютон	23
182	Видеть	https://kinokrad.co/338599-videt-1-sezon.html	8	2019	США	фантастика, боевик, драма	Френсис Лоуренс, Андерс Энгстрем, Стивен Серджик	60
183	Почему женщины убивают (1 сезон)	https://kinokrad.co/339075-pochemu-zhenschiny-ubivayut-1-sezon.html	9	2019	США	драма, комедия, криминал	Дэвид Гроссман, Дэвид Уоррен, Марк Уэбб	50
184	Титаны (2 сезон)	https://kinokrad.co/338621-titany-2-sezon.html	6	2019	США	фантастика, фэнтези, боевик, драма, криминал, приключения	Кэрол Бенкер, Акива Голдсман, Алекс Калимниос	45
185	Как продавать наркотики онлайн (быстро) (1 сезон)	https://kinokrad.co/337357-kak-prodavat-narkotiki-onlayn-bystro-1-sezon.html	7	2019	Германия	драма, мелодрама, комедия, криминал	Арни Фельдхузен, Ларс Монтаг	30
187	Убивая Еву (2 сезон)	https://kinokrad.co/335335-ubivaya-evu-2-sezon.html	7	2019	США, Великобритания, Италия	триллер, драма	Дэймон Томас, Джон Ист, Гарри Брэдбир	43
188	Общество (1 сезон)	https://kinokrad.co/336070-obschestvo-1-sezon.html	7	2019	США	драма, фантастика	Марк Уэбб, Хайфа Аль-Мансур, Патрисия Кардосо	58
189	Толя-робот (1 сезон)	https://kinokrad.co/336019-tolya-robot-1-sezon.html	7	2019	Россия	драма, комедия	Алексей Нужный	48
190	Победители (1 сезон)	https://kinokrad.co/336151-pobediteli-1-sezon.html	7	2019	Россия	детектив	Ангелина Никонова, Александр Баранов	48
191	Джеймстаун (3 сезон)	https://kinokrad.co/335818-dzheymstaun-3-sezon.html	7	2019	Великобритания	драма, история	Пол Вильшурст, Джон Александр, Сэмюэл Донован	60
192	Чудотворцы (1 сезон)	https://kinokrad.co/334252-chudotvorcy-1-sezon.html	7	2019	США	комедия	Райан Кейс, Морис Мэрэбл, Йорма Такконе	20
193	Акушерка (2 сезон)	https://kinokrad.co/334525-akusherka-2-sezon.html	5	2019	Россия	мелодрама	Станислав Либин	55
194	Мылодрама (1 сезон)	https://kinokrad.co/334456-mylodrama-1-sezon.html	7	2019	Россия	комедия	Илья Куликов	25
195	Фронт (1 сезон)	https://kinokrad.co/333667-front-1-sezon.html	5	2019	Россия	история, драма	Владимир Балкашинов	50
196	Гранчестер (4 сезон)	https://kinokrad.co/333604-granchester-4-sezon.html	7	2019	Великобритания	драма, криминал, детектив	Тим Файвелл, Роб Эванс, Эдвард Беннет	45
197	Роузхейвен (3 сезон)	https://kinokrad.co/334471-rouzheyven-3-sezon.html	5	2019	Австралия	комедия	Джонатан Бру, Шон Уилсон	28
198	Туристическая полиция (1 сезон)	https://kinokrad.co/334414-turisticheskaya-policiya-1-sezon.html	4	2019	Россия	комедия	Константин Колесов	25
199	Бриджет и Эймон / Бриджит и Имон (4 сезон)	https://kinokrad.co/334669-bridzhet-i-eymon-bridzhit-i-imon-4-sezon.html	4	2019	Ирландия	комедия	Джейсон Батлер	30
200	Звёздный путь: Дискавери (2 сезон)	https://kinokrad.co/333290-zvezdnyy-put-diskaveri-2-sezon.html	7	2019	США	фантастика, боевик, драма, приключения	Олатунде Осунсанми, Дуглас Арниокоски, Джонатан Фрейкс	60
201	Элементарно (7 сезон)	https://kinokrad.co/337266-jelementarno-7-sezon.html	8	2019	США	драма, криминал, детектив	Гай Ферленд, Кристин Мур, Джон Полсон	43
202	Обученные (1 сезон)	https://kinokrad.co/336148-obuchennye-1-sezon.html	5	2019	США	комедия	Дэвид Катценберг, Джей Чандрашекхар, Лиа Томпсон	30
203	Звёзды и лисы (1 сезон)	https://kinokrad.co/336109-zvezdy-i-lisy-1-sezon.html	3	2019	Россия	детектив	Петр Амелин	44
204	Вавилон (1 сезон)	https://kinokrad.co/336103-vavilon-1-sezon.html	5	2019	Корея Южная	драма, мелодрама, криминал, детектив	Юн Сон-щик	60
205	Мама Лора / Больше жизни (1 сезон)	https://kinokrad.co/336034-mama-lora-bolshe-zhizni.html	5	2019	Россия	детектив	Андрей Силкин	60
206	Положение в стране (1 сезон)	https://kinokrad.co/336031-polozhenie-v-strane-1-sezon.html	6	2019	Великобритания	комедия	Стивен Фрирз	10
207	Последняя неделя (1 сезон)	https://kinokrad.co/336022-poslednyaya-nedelya-1-sezon.html	4	2019	Россия	мелодрама	Павел Мальков	54
208	Всё схвачено (3 сезон)	https://kinokrad.co/334189-vse-shvacheno-3-sezon.html	6	2019	США	комедия	Памела Фрайман, Джеймс Берроуз, Виктор Гонзалез	30
209	Риф-брейк (1 сезон)	https://kinokrad.co/337221-rif-breyk-1-sezon.html	5	2019	Франция, Австралия, США	драма, криминал	Киран Дарси-Смит, Питер Андрикидис, Фиона Бэнкс	60
210	Наследие (2 сезон)	https://kinokrad.co/340100-nasledie-2-sezon.html	7	2019	США	фэнтези, драма, детектив, приключения, ужасы	Джеффри Уинг Шотц, Анджела Барнс Гомес, Майкл А. Алловиц	45
211	Четыре свадьбы и одни похороны (1 сезон)	https://kinokrad.co/337220-chetyre-svadby-i-odni-pohorony-1-sezon.html	6	2019	США	мелодрама, комедия	Катрин Морсхэд, Тристрам Шапиро, Том Маршалл	60
212	Бесстыдники (10 сезон)	https://kinokrad.co/340097-besstyzhie-10-sezon.html	8	2019	США	драма, комедия	Марк Майлод, Иэн Б. МакДональд, Джон Уэллс	55
213	Следователь Горчакова (1 сезон)	https://kinokrad.co/335866-sledovatel-gorchakova.html	5	2019	Молдова, Россия, Украина	детектив, драма, криминал	Вера Яковенко, Александр Сальников	55
214	Мэри убивает людей (3 сезон)	https://kinokrad.co/336328-meri-ubivaet-lyudey-3-sezon.html	7	2019	Канада	драма	Холли Дэйл, Норма Бэйли, Келли Макин	44
215	Гранд Отель (1 сезон)	https://kinokrad.co/337219-grand-otel-1-sezon.html	7	2019	США	драма	Билл Д’Элиа, Марисоль Торрес, Барбара Браун	43
216	Мистер Мерседес (3 сезон)	https://kinokrad.co/339992-mister-mersedes-3-sezon.html	6	2019	США	фантастика, триллер, детектив	Джек Бендер, Лора Иннес, Джон Дэвид Коулз	60
217	Чёрный список (7 сезон)	https://kinokrad.co/339947-chjornyy-spisok-7-sezon.html	7	2019	США	триллер, драма, криминал, детектив	Майкл В. Уоткинс, Билл Роу, Эндрю МакКарти	43
218	Хранители (1 сезон)	https://kinokrad.co/339941-hraniteli-1-sezon.html	5	2019	США	фантастика, боевик, драма, детектив	Николь Кэссел, Стивен Уильямс, Стеф Грин	60
219	Другие (1 сезон)	https://kinokrad.co/333379-drugie-1-sezon.html	7	2019	Россия	драма	Ольга Доброва-Куликова	52
220	Рассказ служанки (3 сезон)	https://kinokrad.co/337215-rasskaz-sluzhanki-3-sezon.html	6	2019	США	фантастика, триллер, драма	Майк Баркер, Кари Скогланд, Даина Рейд	60
221	Один (1 сезон)	https://kinokrad.co/333418-odin-1-sezon.html	5	2019	Россия	детектив, драма	Армен Арутюнян	50
222	Тайная власть (2 сезон)	https://kinokrad.co/335821-taynaya-vlast-2-sezon.html	6	2019	Великобритания	боевик, триллер, драма	Роберт Коннолли, Мэттью Паркхилл	45
223	Отель «Дель Луна» (1 сезон)	https://kinokrad.co/337213-otel-del-luna-1-sezon.html	8	2019	Корея Южная	мелодрама, фэнтези	О Чхун-хван	80
224	Человек в высоком замке (4 сезон)	https://kinokrad.co/339938-chelovek-v-vysokom-zamke-4-sezon.html	7	2019	США, Великобритания, Канада	фантастика, триллер, драма	Дэниэл Персивал, Джон Фоусет, Нельсон МакКормик	60
225	Новогодний экспресс (1 сезон)	https://kinokrad.co/333362-novogodniy-ekspress-1-sezon.html	7	2019	Россия	мелодрама	Дмитрий Булин	90
226	Касл-Рок (2 сезон)	https://kinokrad.co/339243-kasl-rok-2-sezon.html	8	2019	США	триллер, ужасы, фэнтези, драма, детектив	Грег Яйтанс, Майкл Аппендаль, Фил Абрахам	60
227	Уэнтуорт / Вентворт (7 сезон)	https://kinokrad.co/336331-uentuort-ventvort-7-sezon.html	7	2019	Австралия	драма, криминал	Кевин Карлин, Катрин Миллар, Стив Джодрелл	45
228	Агенты «Щ.И.Т.» (6 сезон)	https://kinokrad.co/336265-agenty-sch.i.t.-6-sezon.html	7	2019	США	фантастика, боевик, триллер, драма, приключения	Билл Джирхарт, Винс Мисиано, Кевин Танчароэн	45
229	Крёстный отец Гарлема (1 сезон)	https://kinokrad.co/339782-krjostnyy-otec-garlema-1-sezon.html	8	2019	США	драма, криминал	Джо Чаппелль, Эрнест Р. Дикерсон, Таня Хэмилтон	55
230	Стрела (8 сезон)	https://kinokrad.co/338709-strela-8-sezon.html	5	2019	США	фантастика, боевик, драма, криминал, детектив, приключения	Джеймс Бэмфорд, Джон Беринг, Глен Винтер	43
231	Частные сыщики (3 сезон)	https://kinokrad.co/336334-chastnye-syschiki-3-sezon.html	6	2019	Канада	драма, комедия, криминал, детектив	Джеймс Дженн, Келли Макин, Шон Пиллер	43
232	Война миров (1 сезон)	https://kinokrad.co/339740-voyna-mirov-1-sezon.html	7	2019	Великобритания, Франция, США	фантастика, драма, детектив	Ричард Кларк, Жиль Кулье	45
233	Ведьмак (1 сезон)	https://kinokrad.co/339455-vedmak-1-sezon.html	8	2019	США, Польша	ужасы, фэнтези, боевик, драма, детектив, приключения	Алик Сахаров, Шарлотта Брандстром, Алекс Гарсиа Лопес	60
234	По волчьим законам / По-волчьи выть (4 сезон)	https://kinokrad.co/336337-po-volchim-zakonam-po-volchi-vyt-4-sezon.html	8	2019	США	драма, криминал	Джон Уэллс, Кристофер Чулак, Дэйв Родригез	60
235	Каратель (2 сезон)	https://kinokrad.co/333173-karatel-2-sezon.html	8	2019	США	фантастика, боевик, триллер, драма, криминал, приключения	Джим О’Хенлон, Джереми Уэбб, Джет Уилкинсон	53
236	Сирена (2 сезон)	https://kinokrad.co/333781-sirena-2-sezon.html	7	2019	США	фэнтези, драма	Джо Менендес, Ник Копус, Джон Бэдэм	60
237	Бойтесь ходячих мертвецов (5 сезон)	https://kinokrad.co/336343-boytes-hodyachih-mertvecov-5-sezon.html	6	2019	США	ужасы, фантастика, триллер, драма	Майкл Е. Сатраземис, Стефан Шварц, Эндрю Бернштейн	44
238	Несколько шагов до любви (1 сезон)	https://kinokrad.co/333170-neskolko-shagov-do-lyubvi-1-sezon.html	4	2019	Россия	мелодрама	Эдуард Пальмов	60
239	Другие двое (1 сезон)	https://kinokrad.co/334735-drugie-dvoe-1-sezon.html	4	2019	США	комедия	Эндрю ДеЯнг, Крис Келли, Mike Karnell	30
240	Чёрный понедельник (1 сезон)	https://kinokrad.co/334162-chernyy-ponedelnik-1-sezon.html	7	2019	США	комедия	Реджинальд Хадлин, Чарльз Стоун III, Джастин Типпинг	60
241	Баптист (1 сезон)	https://kinokrad.co/334417-baptist-1-sezon.html	5	2019	Великобритания	драма	Jan Matthys, Боркур Ситорсон	60
242	Смилф / Мамаша (2 сезон)	https://kinokrad.co/333784-smilf-mamasha-2-sezon.html	5	2019	США	комедия	Фрэнки Шоу, Лесли Хэдланд, Эми Йорк Рубин	30
243	Ответный удар (7 сезон)	https://kinokrad.co/334402-otvetnyy-udar-7-sezon.html	6	2019	Великобритания	боевик, триллер, драма	М. Дж. Бассетт, Билл Иглз, Дэниэл Персивал	45
244	Шаг к счастью (1 сезон)	https://kinokrad.co/334699-shag-k-schastyu-1-sezon.html	3	2019	Россия	детектив, криминал	Алексей Праздников	55
245	Бабье лето (1 сезон)	https://kinokrad.co/334624-babe-leto-1-sezon.html	3	2019	Россия	мелодрама	Дмитрий Светозаров	52
246	Чернов (1 сезон)	https://kinokrad.co/334666-chernov-1-sezon.html	2	2019	Россия	драма	Сергей Бобров	45
247	Жестокий Стамбул (1 сезон)	https://kinokrad.co/336271-zhestokiy-stambul-1-sezon.html	7	2019	Турция	драма	Джевдет Мерджан	120
248	Годунов. Продолжение (1 сезон)	https://kinokrad.co/334594-godunov.-prodolzhenie-1-sezon.html	6	2019	Россия	история, драма	Алексей Андрианов, Тимур Алпатов	52
249	Катастрофа (4 сезон)	https://kinokrad.co/334621-katastrofa-4-sezon.html	6	2019	Великобритания	комедия	Бен Тэйлор, Джим О’Хенлон	24
250	Всё могло быть иначе (1 сезон)	https://kinokrad.co/336292-vsjo-moglo-byt-inache-1.html	6	2019	Россия	мелодрама, драма	Глеб Якубовский	54
251	Хэппи (2 сезон)	https://kinokrad.co/335215-heppi-2-sezon.html	7	2019	США	фэнтези, триллер, комедия, криминал, детектив	Брайан Тейлор, Уэйн Йип, Дэвид Петрарка	60
252	Виски Кавалер (1 сезон)	https://kinokrad.co/334801-viski-kavaler-1-sezon.html	7	2019	США	боевик, триллер, драма, комедия, приключения	Питер Атенсио, Джон Ист, Ромео Тироне	60
253	Враг внутри (1 сезон)	https://kinokrad.co/334972-vrag-vnutri-1-sezon.html	7	2019	США	драма	Марисоль Торрес, Чарльз Бисон, Дэвид Бойд	43
254	Леденящие душу приключения Сабрины (2 сезон)	https://kinokrad.co/335356-ledenyaschie-dushu-priklyucheniya-sabriny-2-sezon.html	8	2019	США	ужасы, фэнтези, триллер, драма, детектив	Роб Шейденгланц, Мэгги Кили, Ли Толанд Кригер	60
255	Готэм (5 сезон)	https://kinokrad.co/333107-gotem-5-sezon.html	7	2019	США	фантастика, боевик, триллер, драма, криминал, детектив	Дэнни Кэннон, Роб Бэйли, Т.Дж. Скотт	44
256	Розуэлл, Нью-Мексико (1 сезон)	https://kinokrad.co/334429-rozuell-nyu-meksiko-1-sezon.html	6	2019	США	фантастика, драма, мелодрама	Тим Эндрю, Лэнс Андерсон, Джули Плек	60
257	Стальная звезда (2 сезон)	https://kinokrad.co/335260-stalnaya-zvezda-2-sezon.html	9	2019	Великобритания, Канада, США	драма, криминал, триллер	Жиль Банньер, Грант Харви, Марк Йобст	60
258	Первая / ОА (2 сезон)	https://kinokrad.co/335263-pervaya-oa-2-sezon.html	7	2019	США	фантастика, фэнтези, драма, детектив	Зал Батманглидж, Эндрю Хэй, Анна Роуз Холмер	60
259	Реальные пацаны (12 сезон)	https://kinokrad.co/334711-realnye-pacany-12-sezon.html	6	2019	Россия	комедия	Жанна Кадникова	24
260	Адаптация (2 сезон)	https://kinokrad.co/335248-adaptaciya-2-sezon.html	6	2019	Россия	комедия	Фёдор Стуков, Александр Назаров	24
261	Кардинал (3 сезон)	https://kinokrad.co/333275-kardinal-3-sezon.html	7	2019	Канада	триллер, драма, криминал, детектив	Дэниэл Гру, Джефф Ренфро	42
262	Цветочное танго (1 сезон)	https://kinokrad.co/333760-cvetochnoe-tango-1-sezon.html	5	2019	Россия	мелодрама	Александр Грабарь	60
263	Падение Ордена (2 сезон)	https://kinokrad.co/335257-padenie-ordena-2-sezon.html	8	2019	США	боевик, драма, приключения	Дуглас Маккиннон, Дэвид Петрарка, Метин Хусейн	60
264	Чёрный список (6 сезон)	https://kinokrad.co/332999-chernyy-spisok-6-sezon.html	8	2019	США	триллер, драма, криминал, детектив	Майкл В. Уоткинс, Билл Роу, Эндрю МакКарти	43
265	Подлежит уничтожению (1 сезон)	https://kinokrad.co/335938-podlezhit-unichtozheniyu-1-sezon.html	6	2019	Россия	драма, военный	Виталий Ващенко	55
266	Стар против сил зла / Звёздная принцесса и силы зла (4 сезон)	https://kinokrad.co/335332-star-protiv-sil-zla-zvezdnaya-princessa-i-sily-zla-4-sezon.html	8	2019	США, Канада, Филиппины, Великобритания, Корея Южная, Франция	мультфильм, фантастика, фэнтези, боевик, драма, комедия, приключения, семейный	Аарон Хэммерсли, Доминик Бисигнано, Бретт Вэрон	23
267	Ладья (1 сезон)	https://kinokrad.co/337212-ladya-1-sezon.html	6	2019	США	фэнтези, триллер, драма	Чина Му-Ен, Суну Гонера, Кари Скогланд	50
268	Слишком стар, чтобы умереть молодым (1 сезон мини-сериал)	https://kinokrad.co/337202-slishkom-star-chtoby-umeret-molodym-1-sezon.html	7	2019	США	триллер, драма, криминал	Николас Виндинг Рефн	80
269	Когда они нас увидят (1 сезон мини-сериал)	https://kinokrad.co/337200-kogda-oni-nas-uvidyat-1-sezon.html	7	2019	США	драма, криминал	Ава ДюВерней	80
270	Планеты (1 сезон)	https://kinokrad.co/337153-planety-1-sezon.html	7	2019	Великобритания	документальный	Стивен Кутер, Мартин Джонсон, Ник Стэйси	58
271	Пандора (1 сезон)	https://kinokrad.co/337152-pandora-1-sezon.html	5	2019	США	фантастика, боевик, драма	Бретт Симмонс, Кристиан Госсетт, Стивен Хьюз	43
272	Пацаны (1 сезон)	https://kinokrad.co/337135-pacany-1-sezon.html	8	2019	США	фантастика, боевик, комедия, криминал	Филип Сгриккиа, Дэниэл Эттиэс, Эрик Крипке	60
273	Приятные хлопоты (2 сезон)	https://kinokrad.co/337047-priyatnye-hlopoty-2-sezon.html	7	2019	США	драма, мелодрама, комедия	Питер Пейдж, Брэд Бредевег, Майкл Медико	45
274	Криптон (2 сезон)	https://kinokrad.co/337045-kripton-2-sezon.html	6	2019	США	фантастика, боевик, драма, приключения	Метин Хусейн, Джулиус Рамсей, Марк Роскин	45
275	Смертельный улов (15 сезон)	https://kinokrad.co/337013-smertelnyy-ulov-15-sezon.html	7	2019	США	документальный, реальное ТВ, приключения	Том Бирс	55
276	Темные начала (1 сезон)	https://kinokrad.co/339181-temnye-nachala-1-sezon.html	8	2019	Великобритания, США	фэнтези, драма, приключения, семейный	Джейми Чайлдс, Уильям МакГрегор, Отто Батхёрст	60
277	Мандалорец (1 сезон)	https://kinokrad.co/338605-mandalorec-1-sezon.html	9	2019	США	фантастика, боевик, приключения	Дебора Чоу, Рик Фамуйива, Дэйв Филони	30
278	Утреннее шоу (1 сезон)	https://kinokrad.co/339079-utrennee-shou-1-sezon.html	8	2019	США	драма	Мими Ледер, Дэвид Фрэнкел, Роксанн Доусон	60
279	Ради всего человечества (1 сезон)	https://kinokrad.co/339195-radi-vsego-chelovechestva-1-sezon.html	6	2019	США	фантастика, драма	Аллен Култер, Сет Гордон, Мира Менон	60
280	Медичи: Повелители Флоренции (3 сезон)	https://kinokrad.co/339217-medichi-poveliteli-florencii-3-sezon.html	7	2019	Италия, Великобритания, Франция	триллер, драма, мелодрама, детектив, биография, история	Кристиан Дюге, Серджо Мимика-Геззан, Джон Кассар	60
281	Рик и Морти (4 сезон)	https://kinokrad.co/338653-rik-i-morti-4-sezon.html	7	2019	США	мультфильм, комедия, фантастика, приключения	Пит Мишелс, Уэсли Арчер, Брайан Ньютон	23
282	Видеть	https://kinokrad.co/338599-videt-1-sezon.html	8	2019	США	фантастика, боевик, драма	Френсис Лоуренс, Андерс Энгстрем, Стивен Серджик	60
283	Почему женщины убивают (1 сезон)	https://kinokrad.co/339075-pochemu-zhenschiny-ubivayut-1-sezon.html	9	2019	США	драма, комедия, криминал	Дэвид Гроссман, Дэвид Уоррен, Марк Уэбб	50
284	Титаны (2 сезон)	https://kinokrad.co/338621-titany-2-sezon.html	6	2019	США	фантастика, фэнтези, боевик, драма, криминал, приключения	Кэрол Бенкер, Акива Голдсман, Алекс Калимниос	45
285	Как продавать наркотики онлайн (быстро) (1 сезон)	https://kinokrad.co/337357-kak-prodavat-narkotiki-onlayn-bystro-1-sezon.html	7	2019	Германия	драма, мелодрама, комедия, криминал	Арни Фельдхузен, Ларс Монтаг	30
286	Эйфория (1 сезон)	https://kinokrad.co/338597-jeyforiya.html	7	2019	США	драма	Сэм Левинсон, Пиппа Бьянко, Августин Фриззелл	55
287	Убивая Еву (2 сезон)	https://kinokrad.co/335335-ubivaya-evu-2-sezon.html	7	2019	США, Великобритания, Италия	триллер, драма	Дэймон Томас, Джон Ист, Гарри Брэдбир	43
288	Общество (1 сезон)	https://kinokrad.co/336070-obschestvo-1-sezon.html	7	2019	США	драма, фантастика	Марк Уэбб, Хайфа Аль-Мансур, Патрисия Кардосо	58
289	Толя-робот (1 сезон)	https://kinokrad.co/336019-tolya-robot-1-sezon.html	7	2019	Россия	драма, комедия	Алексей Нужный	48
290	Победители (1 сезон)	https://kinokrad.co/336151-pobediteli-1-sezon.html	7	2019	Россия	детектив	Ангелина Никонова, Александр Баранов	48
291	Джеймстаун (3 сезон)	https://kinokrad.co/335818-dzheymstaun-3-sezon.html	7	2019	Великобритания	драма, история	Пол Вильшурст, Джон Александр, Сэмюэл Донован	60
292	Чудотворцы (1 сезон)	https://kinokrad.co/334252-chudotvorcy-1-sezon.html	7	2019	США	комедия	Райан Кейс, Морис Мэрэбл, Йорма Такконе	20
293	Акушерка (2 сезон)	https://kinokrad.co/334525-akusherka-2-sezon.html	5	2019	Россия	мелодрама	Станислав Либин	55
294	Мылодрама (1 сезон)	https://kinokrad.co/334456-mylodrama-1-sezon.html	7	2019	Россия	комедия	Илья Куликов	25
295	Фронт (1 сезон)	https://kinokrad.co/333667-front-1-sezon.html	5	2019	Россия	история, драма	Владимир Балкашинов	50
296	Гранчестер (4 сезон)	https://kinokrad.co/333604-granchester-4-sezon.html	7	2019	Великобритания	драма, криминал, детектив	Тим Файвелл, Роб Эванс, Эдвард Беннет	45
297	Роузхейвен (3 сезон)	https://kinokrad.co/334471-rouzheyven-3-sezon.html	5	2019	Австралия	комедия	Джонатан Бру, Шон Уилсон	28
298	Туристическая полиция (1 сезон)	https://kinokrad.co/334414-turisticheskaya-policiya-1-sezon.html	4	2019	Россия	комедия	Константин Колесов	25
299	Бриджет и Эймон / Бриджит и Имон (4 сезон)	https://kinokrad.co/334669-bridzhet-i-eymon-bridzhit-i-imon-4-sezon.html	4	2019	Ирландия	комедия	Джейсон Батлер	30
300	Звёздный путь: Дискавери (2 сезон)	https://kinokrad.co/333290-zvezdnyy-put-diskaveri-2-sezon.html	7	2019	США	фантастика, боевик, драма, приключения	Олатунде Осунсанми, Дуглас Арниокоски, Джонатан Фрейкс	60
301	Лаудермилк / Лоудермилк (2 сезон)	https://kinokrad.co/334192-laudermilk-loudermilk-2-sezon.html	6	2019	США	комедия	Питер Фаррелли, Бобби Фаррелли	30
302	Любовь, смерть и роботы (1 сезон)	https://kinokrad.co/335179-lyubov-smert-i-roboty-1-sezon.html	9	2019	США	мультфильм, ужасы, фантастика, фэнтези, комедия, боевик, криминал	Виктор Мальдонадо, Альфредо Торрес, Габриэле Пенначиоле	15
303	Содержанки (1 сезон)	https://kinokrad.co/334474-soderzhanki-1-sezon-2019.html	7	2019	Россия	триллер	Константин Богомолов	49
304	Прыжок богомола (1 сезон)	https://kinokrad.co/335839-pryzhok-bogomola-1-sezon.html	6	2019	Россия	детектив	Владимир Балкашинов	90
305	Большой артист (1 сезон)	https://kinokrad.co/335824-bolshoy-artist-1-sezon.html	4	2019	Россия	мелодрама	Дмитрий Корявов	60
306	Люцифер (4 сезон)	https://kinokrad.co/335815-lyucifer-4-sezon.html	9	2019	США	фэнтези, драма, криминал, мистика	Нэйтан Хоуп, Эгил Эгилссон, Луис Шоу Милито	42
307	Малышарики (1 сезон)	https://kinokrad.co/335722-malyshariki-1-sezon.html	6	2019	Россия	мультфильм, комедия, семейный	Марина Мошкова, Катерина Савчук, Татьяна Мошкова	5
308	Вице-президент (7 сезон)	https://kinokrad.co/335512-vice-prezident-7-sezon.html	4	2019	США	комедия	Бекки Мартин, Крис Эддисон, Армандо Ианнуччи	30
309	Защитник (2 сезон)	https://kinokrad.co/335698-zaschitnik-2-sezon.html	5	2019	Турция	фантастика, фэнтези, боевик	Умут Арал, Гонендж Уяник, Джан Эвренол	40
310	Повзрослевшие (2 сезон)	https://kinokrad.co/333655-povzroslevshie-2-sezon.html	5	2019	США	комедия	Пит Чатмон, Тодд Бирман, Эрик Дин Ситон	22
311	Уэйн / Уэин (1 сезон)	https://kinokrad.co/332885-ueyn-uein-1-sezon.html	8	2019	США	боевик, комедия	Стив Пинк, Тесса Хофф, Майкл Патрик Джэнн	30
312	Вторая первая любовь (1 сезон)	https://kinokrad.co/332870-vtoraya-pervaya-lyubov-1-sezon.html	4	2019	Россия	мелодрама, детектив	Максим Демченко	44
313	Легион (3 сезон)	https://kinokrad.co/336992-legion-3-sezon.html	6	2019	США	фантастика, боевик, триллер, драма	Джон Камерон, Ноа Хоули, Тим Милантс	60
314	Тёмная сеть (1 сезон)	https://kinokrad.co/336991-tjomnaya-set-1-sezon.html	7	2019	США	ужасы	Рокси Ших, Марио Мисионе, Боман Модин	
315	Форс-мажоры (9 сезон)	https://kinokrad.co/336988-fors-mazhory-9-sezon.html	7	2019	США	драма, комедия	Майкл Смит, Антон Кроппер, Крис Мисиано	43
316	Тьма (2 сезон)	https://kinokrad.co/336945-tma-2-sezon.html	7	2019	Германия, США	триллер, драма, криминал, детектив, фантастика	Баран бо Одар	60
317	Сладкая горечь (2 сезон)	https://kinokrad.co/336944-sladkaya-gorech-2-sezon.html	5	2019	США	драма	Стью Зичерман, Марта Каннингэм, Августин Фриззелл	30
318	Террор (2 сезон)	https://kinokrad.co/336936-terror-2-sezon.html	6	2019	США	ужасы, триллер, драма, история, фэнтези	Тим Милантс, Эдвард Бергер, Серджо Мимика-Геззан	60
319	Инстинкт (2 сезон)	https://kinokrad.co/336935-instinkt-2-sezon.html	6	2019	США	триллер, драма, криминал, детектив	Дуглас Арниокоски, Константин Макрис, Чери Ноулан	60
320	Снегопад (3 сезон)	https://kinokrad.co/336879-snegopad-3-sezon.html	8	2019	США	драма, криминал	Дэниэл Эттиэс, Майкл Леманн, Джон Синглтон	44
321	Хадсон и Рекс (1 сезон)	https://kinokrad.co/336877-hadson-i-reks-1-sezon.html	7	2019	Канада	драма, криминал, детектив	Фелипе Родригез, Элисон Рейд, Джон Ватчер	45
322	Крик (3 сезон)	https://kinokrad.co/336875-krik-3-sezon.html	6	2019	США	ужасы, триллер, драма, криминал, детектив	Джеми Трэвис, Брайан Дэннели, Кевин Колш	45
323	Полдарк (5 сезон)	https://kinokrad.co/336873-poldark-5-sezon.html	7	2019	Великобритания	драма, мелодрама, история	Джосс Эгнью, Эдвард Базалгетт, Уильям МакГрегор	60
324	Оранжевый — хит сезона (7 сезон)	https://kinokrad.co/336832-oranzhevyy-hit-sezona-7-sezon.html	6	2019	США	драма, комедия, криминал	Эндрю МакКарти, Майкл Трим, Фил Абрахам	51
325	Хорошие девчонки (2 сезон)	https://kinokrad.co/334597-horoshie-devchonki-2-sezon.html	7	2019	США	драма, комедия, криминал	Дин Паризо, Майкл Уивер, Сара Пиа Андерсон	43
326	Последний настоящий гангстер (2 сезон)	https://kinokrad.co/335524-posledniy-nastoyaschiy-gangster-2-sezon.html	6	2019	США	комедия	Chioke Nassor, Йорма Такконе, Реджинальд Хадлин	30
327	Выкуп (3 сезон)	https://kinokrad.co/335047-vykup-3-sezon.html	5	2019	Канада, Франция, США, Германия	боевик, драма, криминал	Джеймс Дженн, Элинор Линдо, Эрик Канюэль	44
328	Приятные хлопоты (1 сезон)	https://kinokrad.co/333739-priyatnye-hlopoty-1-sezon.html	7	2019	США	драма, мелодрама, комедия	Брэд Бредевег, Тройэн Эвери Беллисарио, Джон М. Чу	45
329	Роковой патруль / Патруль судьбы (1 сезон)	https://kinokrad.co/334885-rokovoy-patrul-patrul-sudby-1-sezon.html	6	2019	США	фантастика, боевик, драма, комедия, детектив, приключения	Дермотт Даунс, Крис Мэнли, Стефан Плещински	60
330	Миллиарды (4 сезон)	https://kinokrad.co/335182-milliardy-4-sezon.html	8	2019	США	драма	Колин Бакси, Джон Дал, Анна Боден	60
331	Лучшие в Лос-Анджелесе (1 сезон)	https://kinokrad.co/336585-luchshie-v-los-andzhelese-1-sezon.html	6	2019	США	боевик, комедия, криминал	Антон Кроппер, Дженис Кук-Леонард, Лекси Александр	60
332	В объезд (3 сезон)	https://kinokrad.co/325274-v-obezd-3-sezon.html	7	2018	США	комедия	Бреннан Шрофф, Джейсон Джонс, Джефф Томсич	30
333	Повзрослевшие (1 сезон)	https://kinokrad.co/324395-povzroslevshie.html	6	2018	США	комедия	Пит Чатмон, Кевин Брэй, Стивен Кейпл мл	22
334	Звёздные врата: Начало (1 сезон)	https://kinokrad.co/325814-zvezdnye-vrata-nachalo-1-sezon.html	3	2018	США	фантастика, боевик, приключения	Мерседес Морган	10
335	В западне/Западня (1 сезон)	https://kinokrad.co/325802-v-zapadne-zapadnya-1-sezon.html	6	2018	Канада	драма	Т.Дж. Скотт, Джон Ватчер	43
336	Золотая орда (1 сезон)	https://kinokrad.co/325799-zolotaya-orda-1-sezon.html	6	2018	Россия	мелодрама, драма, приключения	Тимур Алпатов	48
337	Одиноки вместе (1 сезон)	https://kinokrad.co/325313-odinoki-vmeste-1-sezon.html	6	2018	США	комедия	Тодд Бирман, Кэт Койро, Тамра Дэвис	30
338	Безмолвный свидетель (21 сезон)	https://kinokrad.co/324365-bezmolvnyy-svidetel-21-sezon.html	7	2018	Великобритания	драма, криминал, детектив	Тадеус О’Салливан, Ричард Сайни, Дэвид Ричардс	43
339	Внутри девятого номера (4 сезон)	https://kinokrad.co/324272-vnutri-devyatogo-nomera-4-sezon.html	7	2018	Великобритания	комедия	Дэвид Керр, Гильем Моралес, Стив Пембертон	30
340	Человек в высоком замке (3 сезон)	https://kinokrad.co/330383-chelovek-v-vysokom-zamke-3-sezon.html	7	2018	США	фантастика, триллер, драма	Дэниэл Персивал, Карин Кусама, Джон Фоусет	60
341	Последний корабль (5 сезон)	https://kinokrad.co/329456-posledniy-korabl-5-sezon.html	7	2018	США	фантастика, боевик, триллер, драма, военный	Пол Холахан, Джек Бендер, Питер Уэллер	43
342	Мажор (3 сезон)	https://kinokrad.co/329951-mazhor-3-sezon.html	6	2018	Россия	драма, криминал	Константин Статский	52
343	Обычная женщина (1 сезон)	https://kinokrad.co/329969-obychnaya-zhenschina-1-sezon.html	7	2018	Россия	драма, криминал	Борис Хлебников	48
344	Светлана (1 сезон)	https://kinokrad.co/329972-svetlana-1-sezon.html	6	2018	Россия	биография, драма	Евгений Звездаков	48
345	Двойка (2 сезон)	https://kinokrad.co/329399-dvoyka-2-sezon.html	7	2018	США	драма	Алекс Холл, Ута Бризвитц, Джеймс Франко	60
346	Скорая помощь (1 сезон)	https://kinokrad.co/329918-skoraya-pomosch-1-sezon.html	6	2018	Россия	мелодрама, триллер	Богдан Дробязко	48
347	Ласточка (1 сезон)	https://kinokrad.co/329915-lastochka-1-sezon.html	6	2018	Россия	детектив	Денис Карро	46
348	Я Фрэнки (2 сезон)	https://kinokrad.co/328985-ya-frenki-2-sezon.html	6	2018	США	фантастика, драма, комедия	Шиван Дивайн, Стив Райт	22
349	Доллар (1 сезон)	https://kinokrad.co/329162-dollar-1-sezon.html	6	2018	США	триллер	Крэйг Зобел	50
350	Дубль два (1 сезон)	https://kinokrad.co/328157-dubl-dva-1-sezon.html	8	2018	США	драма, комедия, криминал, детектив	Холли Дэйл, Роберт Либерман, Джон Терлески	43
351	Здесь и сейчас (1 сезон)	https://kinokrad.co/325820-zdes-i-seychas-1-sezon.html	6	2018	США	драма, комедия	Ута Бризвитц, Джереми Подесва, Алан Болл	60
352	Чёрная молния (2 сезон)	https://kinokrad.co/329846-chernaya-molniya-2-sezon.html	4	2018	США	фантастика, боевик, драма	Салим Акил, Оз Скотт, Майкл Шульц	43
353	Нереальный холостяк / Нереально (4 сезон)	https://kinokrad.co/334315-nerealnyy-holostyak-nerealno-4-sezon.html	6	2018	США	драма	Питер О’Фаллон, Шири Эпплби, Дэвид Соломон	42
354	Молодой Морс / Стремление (5 сезон)	https://kinokrad.co/325319-molodoy-mors-stremlenie-5-sezon.html	8	2018	Великобритания	драма, криминал, детектив	Колм МакКарти, Джеффри Сакс, Энди Уилсон	90
355	Родина (7 сезон)	https://kinokrad.co/325724-rodina-7-sezon.html	8	2018	США	триллер, драма, криминал, детектив	Лесли Линка Глаттер, Майкл Куэста, Дэниэл Эттиэс	55
356	Бог меня зафрендил/Господь меня зафрендил (1 сезон)	https://kinokrad.co/332378-bog-menya-zafrendil-gospod-menya-zafrendil-1-sezon.html	8	2018	США	драма, комедия	Маркос Сига, Триша Брок, Холли Дэйл	43
357	Оранжевый — хит сезона (6 сезон)	https://kinokrad.co/336828-oranzhevyy-hit-sezona-6-sezon.html	7	2018	США	драма, комедия, криминал	Эндрю МакКарти, Майкл Трим, Фил Абрахам	51
358	Звёздные войны: Сопротивление (1 сезон)	https://kinokrad.co/332402-zvezdnye-voyny-soprotivlenie-1-sezon.html	6	2018	США	мультфильм, фантастика, боевик, приключения	Стюарт Ли, Sergio Páez, Saul Ruiz	30
359	Сказки при свете (3 сезон)	https://kinokrad.co/334345-skazki-pri-svete-3-sezon.html	7	2018	Австралия	документальный	Abraham Joffe	23
360	Святая трава (1 сезон)	https://kinokrad.co/325256-svyataya-trava-1-sezon.html	6	2018	Франция	комедия	Laurent de Vismes	28
361	Живая мина (1 сезон)	https://kinokrad.co/336586-zhivaya-mina-1-sezon.html	5	2018	Россия	детектив, боевик	Михаил Кабанов	48
362	Медики Чикаго (4 сезон)	https://kinokrad.co/330539-mediki-chikago-4-sezon.html	6	2018	США	драма	Майкл Ваксман, Фред Бернер, Дональд Питри	43
363	Лабиринты (1 сезон)	https://kinokrad.co/325220-labirinty-1-sezon.html	6	2018	Россия	мелодрама	Юрий Владовский	45
364	Американская история преступлений (2 сезон)	https://kinokrad.co/324371-amerikanskaya-istoriya-prestupleniy-2-sezon.html	7	2018	США	драма, криминал, биография	Райан Мёрфи, Энтони Хемингуэй, Джон Синглтон	42
365	Видоизменённый углерод (1 сезон)	https://kinokrad.co/325199-vidoizmenennyy-uglerod-1-sezon.html	9	2018	США	фантастика, триллер, драма	Ута Бризвитц, Алекс Грейвз, Питер Хор	60
366	Шифр (1 сезон)	https://kinokrad.co/335056-shifr-1-sezon.html	7	2018	Россия	детектив	Вера Сторожева	52
367	Убийства по алфавиту (1 сезон)	https://kinokrad.co/332750-ubiystva-po-alfavitu-1-sezon.html	8	2018	Великобритания	триллер, драма, криминал, детектив	Alex Gabassi	60
368	Тень любви (1 сезон)	https://kinokrad.co/332747-ten-lyubvi-1-sezon.html	5	2018	Россия	мелодрама	Владимир Харченко-Куликовский	44
369	Смерть и соловьи (1 сезон)	https://kinokrad.co/332723-smert-i-solovi-1-sezon.html	6	2018	Великобритания	драма	Аллан Кабитт	50
370	На обрыве (1 сезон)	https://kinokrad.co/332687-na-obryve-1-sezon.html	4	2018	Россия	детектив, мелодрама	Олег Штром	122
371	Адвокат (1 сезон)	https://kinokrad.co/328103-advokat-1-sezon.html	7	2018	Швеция, Франция	триллер, драма, криминал, детектив	Дэвид Беррон, Гер Хеннинг Хопланд	45
372	Мозаика (1 сезон)	https://kinokrad.co/324926-mozaika-1-sezon.html	7	2018	США	триллер, драма, криминал, детектив	Стивен Содерберг	30
373	Зацепка (1 сезон)	https://kinokrad.co/326501-zacepka-1-sezon.html	5	2018	Канада	драма	Джордан Каннинг, Грант Харви, Грегори Смит	60
374	Перекрёсток свободы (1 сезон)	https://kinokrad.co/325190-perekrestok-svobody-1-sezon.html	5	2018	США	комедия	Тодд Бергер	25
375	Сотня (5 сезон)	https://kinokrad.co/326654-sotnya-5-sezon.html	8	2018	США	фантастика, драма, детектив	Дин Уайт, П.Дж. Пеше, Майрзи Алмас	43
376	Элементарно (6 сезон)	https://kinokrad.co/327161-elementarno-6-sezon.html	8	2018	США	драма, криминал, детектив	Джон Полсон, Гай Ферленд, Кристин Мур	43
377	Подъём с глубины (1 сезон)	https://kinokrad.co/332684-podem-s-glubiny-1-sezon.html	4	2018	Россия	детектив, триллер	Илья Хотиненко	44
378	Сверхъестественное (14 сезон)	https://kinokrad.co/333287-sverhestestvennoe-14-sezon.html	8	2018	США	ужасы, фэнтези, триллер, драма, детектив, мистика	Роберт Сингер, Филип Сгриккиа, Джон Шоуолтер	43
379	Колония (3 сезон)	https://kinokrad.co/327233-koloniya-3-sezon.html	7	2018	США	фантастика	Хуан Хосе Кампанелла, Тим Соутэм, Нельсон МакКормик	42
380	Грёзы (1 сезон)	https://kinokrad.co/328094-grezy-1-sezon.html	7	2018	США	фантастика, триллер, драма	Мэтт Эрл Бисли, Жаума Кольет-Серра, Кеннет Финк	60
381	Это мы (3 сезон)	https://kinokrad.co/329855-eto-my-3-sezon.html	7	2018	США	драма, мелодрама, комедия	Кен Олин, Гленн Фикарра, Джон Рекуа	45
382	Sпарта (1 сезон)	https://kinokrad.co/328064-sparta-1-sezon.html	6	2018	Россия	драма, детектив	Егор Баранов	53
383	Смертельный поцелуй (1 сезон)	https://kinokrad.co/328025-smertelnyy-poceluy-1-sezon.html	5	2018	Япония	мелодрама, фантастика	Синтаро Сугавара	54
384	Соседство / Соседи (1 сезон)	https://kinokrad.co/334165-sosedstvo-sosedi-1-sezon.html	7	2018	США	комедия	Виктор Гонзалез, Марк Сендроуски, Стэн Лэтэн	30
385	Коп (1 сезон)	https://kinokrad.co/336268-kop-1-sezon-2018.html	6	2018	Россия	комедия, детектив	Радда Новикова	48
386	Достаточно одной надежды (1 сезон)	https://kinokrad.co/332603-dostatochno-odnoy-nadezhdy-1-sezon.html	7	2018	Турция	драма	Юсуф Пирхасан, Aytac Cicek	120
387	Трудности ассимиляции / Понаехали! (5 сезон)	https://kinokrad.co/331616-trudnosti-assimilyacii-ponaehali-5-sezon.html	6	2018	США	комедия	Уильям Перпл, Линн Шелтон, Алиса Статман	22
388	Просто нет слов (3 сезон)	https://kinokrad.co/330029-prosto-net-slov-3-sezon.html	5	2018	США	комедия	Кристин Джернон, Уильям Перпл, Роберт Коэн	30
389	Леденящие душу приключения Сабрины (1 сезон)	https://kinokrad.co/331307-ledenyaschie-dushu-priklyucheniya-sabriny-1-sezon.html	8	2018	США	ужасы, фэнтези, триллер, драма, детектив, мистика	Роб Шейденгланц, Мэгги Кили, Ли Толанд Кригер	60
390	Давайте сыграем (1 сезон)	https://kinokrad.co/332627-davayte-sygraem-1-sezon.html	6	2018	Япония	аниме, мультфильм, комедия	Сэидзи Киси	24
391	Лютер (5 сезон)	https://kinokrad.co/332600-lyuter-5-sezon.html	8	2018	Великобритания	триллер, драма, криминал, детектив	Сэм Миллер, Джэми Пэйн, Брайан Кирк	60
392	База Куантико (3 сезон)	https://kinokrad.co/327236-baza-kuantiko-3-sezon.html	7	2018	США	триллер, драма, криминал, детектив	Дэвид МакУиртер, Дженнифер Чэмберс Линч, Патрик Р. Норрис	42
393	Голдберги (6 сезон)	https://kinokrad.co/322431-goldbergi-6-sezon.html	5	2018	США	комедия	Дэвид Катценберг, Джей Чандрашекхар, Лью Шнайдер	22
394	Странный ангел (1 сезон)	https://kinokrad.co/327818-strannyy-angel-1-sezon.html	6	2018	США	фантастика, драма, детектив	Дэвид Лоури, Кейт Дэннис, Эрнест Р. Дикерсон	60
395	СеняФедя (2 сезон)	https://kinokrad.co/336175-senyafedya-2-sezon.html	7	2018	Россия	комедия	Юрий Владовский	24
396	Закусочная Боба (9 сезон)	https://kinokrad.co/329624-zakusochnaya-boba-9-sezon.html	6	2018	США	мультфильм, комедия	Бернард Дерриман, Тайри Диллихей, Chris Song	22
397	Зачарованные (1 сезон)	https://kinokrad.co/330482-zacharovannye-1-sezon.html	6	2018	США	фэнтези, драма	Ванесса Парис, Майкл А. Алловиц, Амин Кадерали	43
398	По волчьим законам (3 сезон)	https://kinokrad.co/327545-po-volchim-zakonam-3-sezon.html	9	2018	США	драма, криминал	Кристофер Чулак, Джон Уэллс, Ларри Тенг	60
399	Как остаться в браке (1 сезон)	https://kinokrad.co/332630-kak-ostatsya-v-brake-1-sezon.html	6	2018	Австралия	комедия	Натали Бэйли, Колин Кернс, Питер Хеллайар	44
400	Стандарты красоты. Новая любовь (1 сезон)	https://kinokrad.co/332576-standarty-krasoty.-novaya-lyubov-1-sezon.html	6	2018	Россия	мелодрама	Влад Якин	50
401	Лаудермилк / Лоудермилк (2 сезон)	https://kinokrad.co/334192-laudermilk-loudermilk-2-sezon.html	6	2019	США	комедия	Питер Фаррелли, Бобби Фаррелли	30
402	Любовь, смерть и роботы (1 сезон)	https://kinokrad.co/335179-lyubov-smert-i-roboty-1-sezon.html	9	2019	США	мультфильм, ужасы, фантастика, фэнтези, комедия, боевик, криминал	Виктор Мальдонадо, Альфредо Торрес, Габриэле Пенначиоле	15
403	Содержанки (1 сезон)	https://kinokrad.co/334474-soderzhanki-1-sezon-2019.html	7	2019	Россия	триллер	Константин Богомолов	49
404	Прыжок богомола (1 сезон)	https://kinokrad.co/335839-pryzhok-bogomola-1-sezon.html	6	2019	Россия	детектив	Владимир Балкашинов	90
405	Большой артист (1 сезон)	https://kinokrad.co/335824-bolshoy-artist-1-sezon.html	4	2019	Россия	мелодрама	Дмитрий Корявов	60
406	Люцифер (4 сезон)	https://kinokrad.co/335815-lyucifer-4-sezon.html	9	2019	США	фэнтези, драма, криминал, мистика	Нэйтан Хоуп, Эгил Эгилссон, Луис Шоу Милито	42
407	Малышарики (1 сезон)	https://kinokrad.co/335722-malyshariki-1-sezon.html	6	2019	Россия	мультфильм, комедия, семейный	Марина Мошкова, Катерина Савчук, Татьяна Мошкова	5
408	Вице-президент (7 сезон)	https://kinokrad.co/335512-vice-prezident-7-sezon.html	4	2019	США	комедия	Бекки Мартин, Крис Эддисон, Армандо Ианнуччи	30
409	Защитник (2 сезон)	https://kinokrad.co/335698-zaschitnik-2-sezon.html	5	2019	Турция	фантастика, фэнтези, боевик	Умут Арал, Гонендж Уяник, Джан Эвренол	40
410	Повзрослевшие (2 сезон)	https://kinokrad.co/333655-povzroslevshie-2-sezon.html	5	2019	США	комедия	Пит Чатмон, Тодд Бирман, Эрик Дин Ситон	22
411	Уэйн / Уэин (1 сезон)	https://kinokrad.co/332885-ueyn-uein-1-sezon.html	8	2019	США	боевик, комедия	Стив Пинк, Тесса Хофф, Майкл Патрик Джэнн	30
412	Вторая первая любовь (1 сезон)	https://kinokrad.co/332870-vtoraya-pervaya-lyubov-1-sezon.html	4	2019	Россия	мелодрама, детектив	Максим Демченко	44
413	Легион (3 сезон)	https://kinokrad.co/336992-legion-3-sezon.html	6	2019	США	фантастика, боевик, триллер, драма	Джон Камерон, Ноа Хоули, Тим Милантс	60
414	Тёмная сеть (1 сезон)	https://kinokrad.co/336991-tjomnaya-set-1-sezon.html	7	2019	США	ужасы	Рокси Ших, Марио Мисионе, Боман Модин	
415	Форс-мажоры (9 сезон)	https://kinokrad.co/336988-fors-mazhory-9-sezon.html	7	2019	США	драма, комедия	Майкл Смит, Антон Кроппер, Крис Мисиано	43
416	Тьма (2 сезон)	https://kinokrad.co/336945-tma-2-sezon.html	7	2019	Германия, США	триллер, драма, криминал, детектив, фантастика	Баран бо Одар	60
417	Сладкая горечь (2 сезон)	https://kinokrad.co/336944-sladkaya-gorech-2-sezon.html	5	2019	США	драма	Стью Зичерман, Марта Каннингэм, Августин Фриззелл	30
418	Террор (2 сезон)	https://kinokrad.co/336936-terror-2-sezon.html	6	2019	США	ужасы, триллер, драма, история, фэнтези	Тим Милантс, Эдвард Бергер, Серджо Мимика-Геззан	60
419	Инстинкт (2 сезон)	https://kinokrad.co/336935-instinkt-2-sezon.html	6	2019	США	триллер, драма, криминал, детектив	Дуглас Арниокоски, Константин Макрис, Чери Ноулан	60
420	Снегопад (3 сезон)	https://kinokrad.co/336879-snegopad-3-sezon.html	8	2019	США	драма, криминал	Дэниэл Эттиэс, Майкл Леманн, Джон Синглтон	44
421	Хадсон и Рекс (1 сезон)	https://kinokrad.co/336877-hadson-i-reks-1-sezon.html	7	2019	Канада	драма, криминал, детектив	Фелипе Родригез, Элисон Рейд, Джон Ватчер	45
422	Крик (3 сезон)	https://kinokrad.co/336875-krik-3-sezon.html	6	2019	США	ужасы, триллер, драма, криминал, детектив	Джеми Трэвис, Брайан Дэннели, Кевин Колш	45
423	Полдарк (5 сезон)	https://kinokrad.co/336873-poldark-5-sezon.html	7	2019	Великобритания	драма, мелодрама, история	Джосс Эгнью, Эдвард Базалгетт, Уильям МакГрегор	60
424	Оранжевый — хит сезона (7 сезон)	https://kinokrad.co/336832-oranzhevyy-hit-sezona-7-sezon.html	6	2019	США	драма, комедия, криминал	Эндрю МакКарти, Майкл Трим, Фил Абрахам	51
425	Хорошие девчонки (2 сезон)	https://kinokrad.co/334597-horoshie-devchonki-2-sezon.html	7	2019	США	драма, комедия, криминал	Дин Паризо, Майкл Уивер, Сара Пиа Андерсон	43
426	Последний настоящий гангстер (2 сезон)	https://kinokrad.co/335524-posledniy-nastoyaschiy-gangster-2-sezon.html	6	2019	США	комедия	Chioke Nassor, Йорма Такконе, Реджинальд Хадлин	30
427	Выкуп (3 сезон)	https://kinokrad.co/335047-vykup-3-sezon.html	5	2019	Канада, Франция, США, Германия	боевик, драма, криминал	Джеймс Дженн, Элинор Линдо, Эрик Канюэль	44
428	Приятные хлопоты (1 сезон)	https://kinokrad.co/333739-priyatnye-hlopoty-1-sezon.html	7	2019	США	драма, мелодрама, комедия	Брэд Бредевег, Тройэн Эвери Беллисарио, Джон М. Чу	45
429	Роковой патруль / Патруль судьбы (1 сезон)	https://kinokrad.co/334885-rokovoy-patrul-patrul-sudby-1-sezon.html	6	2019	США	фантастика, боевик, драма, комедия, детектив, приключения	Дермотт Даунс, Крис Мэнли, Стефан Плещински	60
430	Миллиарды (4 сезон)	https://kinokrad.co/335182-milliardy-4-sezon.html	8	2019	США	драма	Колин Бакси, Джон Дал, Анна Боден	60
431	Лучшие в Лос-Анджелесе (1 сезон)	https://kinokrad.co/336585-luchshie-v-los-andzhelese-1-sezon.html	6	2019	США	боевик, комедия, криминал	Антон Кроппер, Дженис Кук-Леонард, Лекси Александр	60
432	В объезд (3 сезон)	https://kinokrad.co/325274-v-obezd-3-sezon.html	7	2018	США	комедия	Бреннан Шрофф, Джейсон Джонс, Джефф Томсич	30
433	Повзрослевшие (1 сезон)	https://kinokrad.co/324395-povzroslevshie.html	6	2018	США	комедия	Пит Чатмон, Кевин Брэй, Стивен Кейпл мл	22
434	Звёздные врата: Начало (1 сезон)	https://kinokrad.co/325814-zvezdnye-vrata-nachalo-1-sezon.html	3	2018	США	фантастика, боевик, приключения	Мерседес Морган	10
435	В западне/Западня (1 сезон)	https://kinokrad.co/325802-v-zapadne-zapadnya-1-sezon.html	6	2018	Канада	драма	Т.Дж. Скотт, Джон Ватчер	43
764	Мельник (1 сезон)	https://kinokrad.co/327404-melnik-1-sezon.html	5	2018	Россия	детектив	Станислав Мареев	48
436	Золотая орда (1 сезон)	https://kinokrad.co/325799-zolotaya-orda-1-sezon.html	6	2018	Россия	мелодрама, драма, приключения	Тимур Алпатов	48
437	Одиноки вместе (1 сезон)	https://kinokrad.co/325313-odinoki-vmeste-1-sezon.html	6	2018	США	комедия	Тодд Бирман, Кэт Койро, Тамра Дэвис	30
438	Безмолвный свидетель (21 сезон)	https://kinokrad.co/324365-bezmolvnyy-svidetel-21-sezon.html	7	2018	Великобритания	драма, криминал, детектив	Тадеус О’Салливан, Ричард Сайни, Дэвид Ричардс	43
439	Внутри девятого номера (4 сезон)	https://kinokrad.co/324272-vnutri-devyatogo-nomera-4-sezon.html	7	2018	Великобритания	комедия	Дэвид Керр, Гильем Моралес, Стив Пембертон	30
440	Человек в высоком замке (3 сезон)	https://kinokrad.co/330383-chelovek-v-vysokom-zamke-3-sezon.html	7	2018	США	фантастика, триллер, драма	Дэниэл Персивал, Карин Кусама, Джон Фоусет	60
441	Последний корабль (5 сезон)	https://kinokrad.co/329456-posledniy-korabl-5-sezon.html	7	2018	США	фантастика, боевик, триллер, драма, военный	Пол Холахан, Джек Бендер, Питер Уэллер	43
442	Мажор (3 сезон)	https://kinokrad.co/329951-mazhor-3-sezon.html	6	2018	Россия	драма, криминал	Константин Статский	52
443	Обычная женщина (1 сезон)	https://kinokrad.co/329969-obychnaya-zhenschina-1-sezon.html	7	2018	Россия	драма, криминал	Борис Хлебников	48
444	Светлана (1 сезон)	https://kinokrad.co/329972-svetlana-1-sezon.html	6	2018	Россия	биография, драма	Евгений Звездаков	48
445	Двойка (2 сезон)	https://kinokrad.co/329399-dvoyka-2-sezon.html	7	2018	США	драма	Алекс Холл, Ута Бризвитц, Джеймс Франко	60
446	Скорая помощь (1 сезон)	https://kinokrad.co/329918-skoraya-pomosch-1-sezon.html	6	2018	Россия	мелодрама, триллер	Богдан Дробязко	48
447	Ласточка (1 сезон)	https://kinokrad.co/329915-lastochka-1-sezon.html	6	2018	Россия	детектив	Денис Карро	46
448	Я Фрэнки (2 сезон)	https://kinokrad.co/328985-ya-frenki-2-sezon.html	6	2018	США	фантастика, драма, комедия	Шиван Дивайн, Стив Райт	22
449	Доллар (1 сезон)	https://kinokrad.co/329162-dollar-1-sezon.html	6	2018	США	триллер	Крэйг Зобел	50
450	Дубль два (1 сезон)	https://kinokrad.co/328157-dubl-dva-1-sezon.html	8	2018	США	драма, комедия, криминал, детектив	Холли Дэйл, Роберт Либерман, Джон Терлески	43
451	Здесь и сейчас (1 сезон)	https://kinokrad.co/325820-zdes-i-seychas-1-sezon.html	6	2018	США	драма, комедия	Ута Бризвитц, Джереми Подесва, Алан Болл	60
452	Чёрная молния (2 сезон)	https://kinokrad.co/329846-chernaya-molniya-2-sezon.html	4	2018	США	фантастика, боевик, драма	Салим Акил, Оз Скотт, Майкл Шульц	43
453	Нереальный холостяк / Нереально (4 сезон)	https://kinokrad.co/334315-nerealnyy-holostyak-nerealno-4-sezon.html	6	2018	США	драма	Питер О’Фаллон, Шири Эпплби, Дэвид Соломон	42
454	Молодой Морс / Стремление (5 сезон)	https://kinokrad.co/325319-molodoy-mors-stremlenie-5-sezon.html	8	2018	Великобритания	драма, криминал, детектив	Колм МакКарти, Джеффри Сакс, Энди Уилсон	90
455	Родина (7 сезон)	https://kinokrad.co/325724-rodina-7-sezon.html	8	2018	США	триллер, драма, криминал, детектив	Лесли Линка Глаттер, Майкл Куэста, Дэниэл Эттиэс	55
456	Бог меня зафрендил/Господь меня зафрендил (1 сезон)	https://kinokrad.co/332378-bog-menya-zafrendil-gospod-menya-zafrendil-1-sezon.html	8	2018	США	драма, комедия	Маркос Сига, Триша Брок, Холли Дэйл	43
457	Оранжевый — хит сезона (6 сезон)	https://kinokrad.co/336828-oranzhevyy-hit-sezona-6-sezon.html	7	2018	США	драма, комедия, криминал	Эндрю МакКарти, Майкл Трим, Фил Абрахам	51
458	Звёздные войны: Сопротивление (1 сезон)	https://kinokrad.co/332402-zvezdnye-voyny-soprotivlenie-1-sezon.html	6	2018	США	мультфильм, фантастика, боевик, приключения	Стюарт Ли, Sergio Páez, Saul Ruiz	30
459	Сказки при свете (3 сезон)	https://kinokrad.co/334345-skazki-pri-svete-3-sezon.html	7	2018	Австралия	документальный	Abraham Joffe	23
460	Святая трава (1 сезон)	https://kinokrad.co/325256-svyataya-trava-1-sezon.html	6	2018	Франция	комедия	Laurent de Vismes	28
461	Живая мина (1 сезон)	https://kinokrad.co/336586-zhivaya-mina-1-sezon.html	5	2018	Россия	детектив, боевик	Михаил Кабанов	48
462	Медики Чикаго (4 сезон)	https://kinokrad.co/330539-mediki-chikago-4-sezon.html	6	2018	США	драма	Майкл Ваксман, Фред Бернер, Дональд Питри	43
463	Лабиринты (1 сезон)	https://kinokrad.co/325220-labirinty-1-sezon.html	6	2018	Россия	мелодрама	Юрий Владовский	45
464	Американская история преступлений (2 сезон)	https://kinokrad.co/324371-amerikanskaya-istoriya-prestupleniy-2-sezon.html	7	2018	США	драма, криминал, биография	Райан Мёрфи, Энтони Хемингуэй, Джон Синглтон	42
465	Видоизменённый углерод (1 сезон)	https://kinokrad.co/325199-vidoizmenennyy-uglerod-1-sezon.html	9	2018	США	фантастика, триллер, драма	Ута Бризвитц, Алекс Грейвз, Питер Хор	60
466	Шифр (1 сезон)	https://kinokrad.co/335056-shifr-1-sezon.html	7	2018	Россия	детектив	Вера Сторожева	52
467	Убийства по алфавиту (1 сезон)	https://kinokrad.co/332750-ubiystva-po-alfavitu-1-sezon.html	8	2018	Великобритания	триллер, драма, криминал, детектив	Alex Gabassi	60
468	Тень любви (1 сезон)	https://kinokrad.co/332747-ten-lyubvi-1-sezon.html	5	2018	Россия	мелодрама	Владимир Харченко-Куликовский	44
469	Смерть и соловьи (1 сезон)	https://kinokrad.co/332723-smert-i-solovi-1-sezon.html	6	2018	Великобритания	драма	Аллан Кабитт	50
470	На обрыве (1 сезон)	https://kinokrad.co/332687-na-obryve-1-sezon.html	4	2018	Россия	детектив, мелодрама	Олег Штром	122
471	Адвокат (1 сезон)	https://kinokrad.co/328103-advokat-1-sezon.html	7	2018	Швеция, Франция	триллер, драма, криминал, детектив	Дэвид Беррон, Гер Хеннинг Хопланд	45
472	Мозаика (1 сезон)	https://kinokrad.co/324926-mozaika-1-sezon.html	7	2018	США	триллер, драма, криминал, детектив	Стивен Содерберг	30
473	Зацепка (1 сезон)	https://kinokrad.co/326501-zacepka-1-sezon.html	5	2018	Канада	драма	Джордан Каннинг, Грант Харви, Грегори Смит	60
474	Перекрёсток свободы (1 сезон)	https://kinokrad.co/325190-perekrestok-svobody-1-sezon.html	5	2018	США	комедия	Тодд Бергер	25
475	Сотня (5 сезон)	https://kinokrad.co/326654-sotnya-5-sezon.html	8	2018	США	фантастика, драма, детектив	Дин Уайт, П.Дж. Пеше, Майрзи Алмас	43
476	Элементарно (6 сезон)	https://kinokrad.co/327161-elementarno-6-sezon.html	8	2018	США	драма, криминал, детектив	Джон Полсон, Гай Ферленд, Кристин Мур	43
477	Подъём с глубины (1 сезон)	https://kinokrad.co/332684-podem-s-glubiny-1-sezon.html	4	2018	Россия	детектив, триллер	Илья Хотиненко	44
478	Сверхъестественное (14 сезон)	https://kinokrad.co/333287-sverhestestvennoe-14-sezon.html	8	2018	США	ужасы, фэнтези, триллер, драма, детектив, мистика	Роберт Сингер, Филип Сгриккиа, Джон Шоуолтер	43
479	Колония (3 сезон)	https://kinokrad.co/327233-koloniya-3-sezon.html	7	2018	США	фантастика	Хуан Хосе Кампанелла, Тим Соутэм, Нельсон МакКормик	42
480	Грёзы (1 сезон)	https://kinokrad.co/328094-grezy-1-sezon.html	7	2018	США	фантастика, триллер, драма	Мэтт Эрл Бисли, Жаума Кольет-Серра, Кеннет Финк	60
481	Это мы (3 сезон)	https://kinokrad.co/329855-eto-my-3-sezon.html	7	2018	США	драма, мелодрама, комедия	Кен Олин, Гленн Фикарра, Джон Рекуа	45
482	Sпарта (1 сезон)	https://kinokrad.co/328064-sparta-1-sezon.html	6	2018	Россия	драма, детектив	Егор Баранов	53
483	Смертельный поцелуй (1 сезон)	https://kinokrad.co/328025-smertelnyy-poceluy-1-sezon.html	5	2018	Япония	мелодрама, фантастика	Синтаро Сугавара	54
484	Соседство / Соседи (1 сезон)	https://kinokrad.co/334165-sosedstvo-sosedi-1-sezon.html	7	2018	США	комедия	Виктор Гонзалез, Марк Сендроуски, Стэн Лэтэн	30
485	Коп (1 сезон)	https://kinokrad.co/336268-kop-1-sezon-2018.html	6	2018	Россия	комедия, детектив	Радда Новикова	48
486	Достаточно одной надежды (1 сезон)	https://kinokrad.co/332603-dostatochno-odnoy-nadezhdy-1-sezon.html	7	2018	Турция	драма	Юсуф Пирхасан, Aytac Cicek	120
487	Трудности ассимиляции / Понаехали! (5 сезон)	https://kinokrad.co/331616-trudnosti-assimilyacii-ponaehali-5-sezon.html	6	2018	США	комедия	Уильям Перпл, Линн Шелтон, Алиса Статман	22
488	Просто нет слов (3 сезон)	https://kinokrad.co/330029-prosto-net-slov-3-sezon.html	5	2018	США	комедия	Кристин Джернон, Уильям Перпл, Роберт Коэн	30
489	Леденящие душу приключения Сабрины (1 сезон)	https://kinokrad.co/331307-ledenyaschie-dushu-priklyucheniya-sabriny-1-sezon.html	8	2018	США	ужасы, фэнтези, триллер, драма, детектив, мистика	Роб Шейденгланц, Мэгги Кили, Ли Толанд Кригер	60
490	Давайте сыграем (1 сезон)	https://kinokrad.co/332627-davayte-sygraem-1-sezon.html	6	2018	Япония	аниме, мультфильм, комедия	Сэидзи Киси	24
491	Лютер (5 сезон)	https://kinokrad.co/332600-lyuter-5-sezon.html	8	2018	Великобритания	триллер, драма, криминал, детектив	Сэм Миллер, Джэми Пэйн, Брайан Кирк	60
492	База Куантико (3 сезон)	https://kinokrad.co/327236-baza-kuantiko-3-sezon.html	7	2018	США	триллер, драма, криминал, детектив	Дэвид МакУиртер, Дженнифер Чэмберс Линч, Патрик Р. Норрис	42
493	Голдберги (6 сезон)	https://kinokrad.co/322431-goldbergi-6-sezon.html	5	2018	США	комедия	Дэвид Катценберг, Джей Чандрашекхар, Лью Шнайдер	22
494	Странный ангел (1 сезон)	https://kinokrad.co/327818-strannyy-angel-1-sezon.html	6	2018	США	фантастика, драма, детектив	Дэвид Лоури, Кейт Дэннис, Эрнест Р. Дикерсон	60
495	СеняФедя (2 сезон)	https://kinokrad.co/336175-senyafedya-2-sezon.html	7	2018	Россия	комедия	Юрий Владовский	24
496	Закусочная Боба (9 сезон)	https://kinokrad.co/329624-zakusochnaya-boba-9-sezon.html	6	2018	США	мультфильм, комедия	Бернард Дерриман, Тайри Диллихей, Chris Song	22
497	Зачарованные (1 сезон)	https://kinokrad.co/330482-zacharovannye-1-sezon.html	6	2018	США	фэнтези, драма	Ванесса Парис, Майкл А. Алловиц, Амин Кадерали	43
498	По волчьим законам (3 сезон)	https://kinokrad.co/327545-po-volchim-zakonam-3-sezon.html	9	2018	США	драма, криминал	Кристофер Чулак, Джон Уэллс, Ларри Тенг	60
499	Как остаться в браке (1 сезон)	https://kinokrad.co/332630-kak-ostatsya-v-brake-1-sezon.html	6	2018	Австралия	комедия	Натали Бэйли, Колин Кернс, Питер Хеллайар	44
500	Стандарты красоты. Новая любовь (1 сезон)	https://kinokrad.co/332576-standarty-krasoty.-novaya-lyubov-1-sezon.html	6	2018	Россия	мелодрама	Влад Якин	50
501	Рэй Донован (6 сезон)	https://kinokrad.co/330587-rey-donovan-6-sezon.html	7	2018	США	драма, криминал	Джон Дал, Майкл Аппендаль, Такер Гейтс	43
502	Милицейская сага (1 сезон)	https://kinokrad.co/328574-miliceyskaya-saga-1-sezon.html	7	2018	Россия	детектив, боевик, криминал	Петр Забелин	50
503	Очередь за нами (1 сезон)	https://kinokrad.co/328571-ochered-za-nami-1-sezon.html	6	2018	Турция	мелодрама, комедия	Барыш Йош, Хасан Толга Пулат	120
504	Вне времени (2 сезон)	https://kinokrad.co/325982-vne-vremeni-2-sezon.html	8	2018	США	фантастика, боевик, драма, приключения	Грег Биман, Джон Шоуолтер, Чарльз Бисон	60
505	Отмеченные (3 сезон)	https://kinokrad.co/331979-otmechennye-3-sezon.html	7	2018	США	триллер	Ханна Макферсон	18
506	Титаны (1 сезон)	https://kinokrad.co/329909-titany-1-sezon.html	7	2018	США	фантастика, фэнтези, боевик, драма, приключения	Брэд Андерсон, Джон Фоусет, Грант Харви	45
507	Город героев: Новая история (1 сезон)	https://kinokrad.co/331889-gorod-geroev-novaya-istoriya-1-sezon.html	7	2018	США	мультфильм, фантастика, боевик, комедия, приключения, семейный	Николас Филиппи, Стивен Хеневельд, Бен Джуоно	21
508	Защитник (1 сезон)	https://kinokrad.co/335695-zaschitnik-1-sezon.html	6	2018	Турция	фантастика, фэнтези, боевик	Умут Арал, Гонендж Уяник, Джан Эвренол	40
509	Я требую любви! (1 сезон)	https://kinokrad.co/328568-ya-trebuyu-lyubvi-span-mini-serial-span.html	6	2018	Россия	мелодрама	Теймураз Эсадзе	50
510	Жизнь на Марсе (1 сезон)	https://kinokrad.co/328565-zhizn-na-marse-1-sezon.html	6	2018	Корея Южная	детектив, триллер, фантастика	Ли Джон-хё	80
511	Кемпинг (1 сезон)	https://kinokrad.co/331817-kemping-1-sezon.html	5	2018	США	комедия	Дженнифер Коннер, Венди Станцлер, Джуд Вэн	30
512	Гостевая книга (2 сезон)	https://kinokrad.co/331814-gostevaya-kniga-2-sezon.html	7	2018	США	комедия	Грегори Томас Гарсиа, Самир Реэм, Майкл Энглер	30
513	Комната 104 (2 сезон)	https://kinokrad.co/331781-komnata-104-2-sezon.html	6	2018	США	ужасы, триллер, драма	Росс Патридж, Патрик Брайс, Йонг Ким Со	30
514	Медное солнце (1 сезон)	https://kinokrad.co/331745-mednoe-solnce-1-sezon.html	7	2018	Россия	военный, драма	Карен Оганесян	122
515	Члены королевской семьи (4 сезон)	https://kinokrad.co/327032-chleny-korolevskoy-semi-4-sezon.html	5	2018	США	драма	Марк Шван, Джеймс Лэфферти, Лес Батлер	42
516	Последний настоящий мужчина (7 сезон)	https://kinokrad.co/330083-posledniy-nastoyaschiy-muzhchina-7-sezon.html	5	2018	США	комедия	Джон Паскуин, Виктор Гонзалез, Тед Уасс	22
517	Американка (1 сезон)	https://kinokrad.co/327611-amerikanka-1-sezon.html	6	2018	США	комедия	Алекс Хардкасл, Алетеа Джонс, Иэн Б. МакДональд	30
518	Платформа 45 (1 сезон)	https://kinokrad.co/328517-platforma-45-1-sezon.html	7	2018	Швеция	триллер	Пер Ханефьорд	45
519	Жизнь (1 сезон)	https://kinokrad.co/327554-zhizn-1-sezon.html	7	2018	США	драма	Роуз Троше, Каталина Агиляр Мастретта, Рашаад Эрнесто Грин	35
520	Паранормальный Веллингтон (1 сезон)	https://kinokrad.co/328514-paranormalnyy-vellington-1-sezon.html	6	2018	Новая Зеландия	ужасы, фэнтези, комедия, криминал, детектив, мистика	Джемейн Клемент, Джеки ван Бик	30
521	Королева сахара (3 сезон)	https://kinokrad.co/327851-koroleva-sahara-3-sezon.html	5	2018	США	драма	Кэт Кэндлер, Димэйн Дэвис, Нима Барнетт	60
522	Куртизанки (2 сезон)	https://kinokrad.co/328106-kurtizanki-2-sezon.html	8	2018	Великобритания, США	драма	Коки Гидройч, Джилл Робертсон, Чина Му-Ен	60
523	Ранняя пташка (1 сезон)	https://kinokrad.co/337301-rannyaya-ptashka-1-sezon.html	8	2018	Турция	драма, комедия, мелодрама	Чагры Байрак, Aytac Cicek	120
524	Ты расскажи, Карадениз (1 сезон)	https://kinokrad.co/327674-ty-rasskazhi-karadeniz-1-sezon.html	5	2018	Турция	драма	Эмре Кабакусак, Осман Синав, Юсуф Омер Синав	110
525	Невиновный (1 сезон)	https://kinokrad.co/327542-nevinovnyy-1-sezon.html	9	2018	Великобритания	драма, детектив	Ричард Кларк	45
526	Пуленепробиваемые (1 сезон)	https://kinokrad.co/327509-puleneprobivaemye-1-sezon.html	7	2018	Великобритания	боевик, криминал	Оле Эндресен, Ник Лав	48
527	Вайнона Эрп (3 сезон)	https://kinokrad.co/328469-vaynona-erp-3-sezon.html	6	2018	Канада, США	фэнтези, боевик, триллер, драма, детектив, вестерн	Паоло Барзмен, Рон Мерфи, Бретт Салливан	60
528	Любовь ангелов (1 сезон)	https://kinokrad.co/328436-lyubov-angelov-1-sezon.html	6	2018	Турция	мелодрама, комедия	Эрсой Гюлер, Хамди Алкан	120
529	Экли Бридж (2 сезон)	https://kinokrad.co/328460-ekli-bridzh-2-sezon.html	6	2018	Великобритания	драма	Роберт Куинн, Пенни Вулкок, Джо Стефенсон	60
530	В свободном улёте (1 сезон)	https://kinokrad.co/329210-v-svobodnom-ulete-1-sezon.html	5	2018	США	комедия	Теренс Нэнс, Дариус Кларк Монро, Наима Рамос-Чепмен	30
531	Без обязательств (4 сезон)	https://kinokrad.co/328496-bez-obyazatelstv-4-sezon.html	4	2018	США	драма, комедия	Майкл Уивер, Джейсон Райтман, Джиллиан Робеспьер	25
532	Переключи мир (1 сезон)	https://kinokrad.co/326993-pereklyuchi-mir-1-sezon.html	7	2018	Корея Южная	комедия, криминал	Нам Тхэ-джин	35
533	Последний настоящий гангстер (1 сезон)	https://kinokrad.co/326378-posledniy-nastoyaschiy-gangster-1-sezon.html	7	2018	США	комедия	Йорма Такконе	30
534	Нокс (1 сезон)	https://kinokrad.co/335527-noks-1-sezon.html	7	2018	Франция	триллер, криминал	Мабрук Эль Мекри	55
535	Ординатор (2 сезон)	https://kinokrad.co/329561-ordinator-2-sezon.html	7	2018	США	драма	Роб Корн, Джеймс Родэй, Дэвид Крэбтри	60
536	Патрик Мелроуз (1 сезон)	https://kinokrad.co/327500-patrik-melrouz-1-sezon.html	8	2018	Великобритания, США	драма	Эдвард Бергер	60
537	Корпорация Алекса/Стартап (1 сезон)	https://kinokrad.co/326483-korporaciya-aleksa-startap-1-sezon.html	5	2018	США	комедия	Зак Брафф, Майкл Патрик Джэнн, Ричи Кин	30
538	Для людей (1 сезон)	https://kinokrad.co/326447-dlya-lyudey-1-sezon.html	8	2018	США	драма	Том Верика, Эндрю Бернштейн, П.Дж. Пеше	43
539	Поселенцы (1 сезон)	https://kinokrad.co/335473-poselency-1-sezon.html	5	2018	Россия	драма, детектив	Артем Мазунов	55
540	Шелест (2 сезон)	https://kinokrad.co/329156-shelest-2-sezon.html	6	2018	Россия	боевик, детектив, криминал	Дмитрий Коробкин	46
541	Универ. Новая общага (15 сезон)	https://kinokrad.co/328742-univer.-novaya-obschaga-15-sezon.html	7	2018	Россия	комедия	Константин Смирнов, Максим Зыков, Шота Гамисония	23
542	Бывшие (1 сезон)	https://kinokrad.co/327497-byvshie-1-sezon.html	8	2018	Россия	драма	Иван Китаев	52
543	Гюлизар (1 сезон)	https://kinokrad.co/326714-gyulizar-1-sezon.html	7	2018	Турция	драма	Чаган Ырмак	60
544	Незнакомка в зеркале (1 сезон)	https://kinokrad.co/327458-neznakomka-v-zerkale-1-sezon.html	4	2018	Россия	драма, триллер, мелодрама	Станислав Рубенчик	100
545	Соседи (1 сезон)	https://kinokrad.co/326963-sosedi-1-sezon.html	5	2018	Россия	комедия	Владимир Виноградов	52
546	Огненный ангел (1 сезон)	https://kinokrad.co/327455-ognennyy-angel-1-sezon.html	4	2018	Россия	триллер	Дарья Семенова	45
547	Берлинский вокзал / Берлинский отдел (3 сезон)	https://kinokrad.co/331982-berlinskiy-vokzal-berlinskiy-otdel-3-sezon.html	6	2018	США, Германия	триллер, драма	Кристоф Шреве, Джузеппе Капотонди, Джон Дэвид Коулз	60
548	Чужестранка (4 сезон)	https://kinokrad.co/331376-chuzhestranka-4-sezon.html	8	2018	США, Великобритания	фэнтези, драма, мелодрама	Метин Хусейн, Анна Ферстер, Брайан Келли	64
549	Верить и ждать (1 сезон)	https://kinokrad.co/329141-verit-i-zhdat-1-sezon.html	3	2018	Россия	мелодрама	Валерий Ибрагимов	96
550	Киллджойс/Кайфоломы (4 сезон)	https://kinokrad.co/328580-kayfolomy-4-sezon.html	7	2018	Канада	фантастика, боевик, триллер, приключения	Стефан Плещински, Паоло Барзмен, Питер Стеббингс	42
551	Хорошие девчонки (1 сезон)	https://kinokrad.co/326702-horoshie-devchonki-1-sezon.html	8	2018	США	драма, комедия, криминал	Дин Паризо, Сара Пиа Андерсон, Кеннет Финк	43
552	Вавилон-Берлин (2 сезон)	https://kinokrad.co/329126-vavilon-berlin-2-sezon.html	7	2018	Германия	триллер, драма, криминал, история	Хендрик Хандлёгтен, Том Тыквер, Ахим фон Боррис	45
553	Остров (2 сезон)	https://kinokrad.co/327449-ostrov-2-sezon.html	7	2018	Россия	комедия	Михаил Старчак, Артем Насыбулин, Александр Наумов	24
554	Я жив (1 сезон)	https://kinokrad.co/326429-ya-zhiv-1-sezon.html	8	2018	Испания	фэнтези, триллер	Ориоль Феррер, Хесус Родриго, Давид Молина Энсинас	48
555	Сила обстоятельств (1 сезон)	https://kinokrad.co/333532-sila-obstoyatelstv-1-sezon.html	5	2018	Россия	мелодрама	Андрей Селиванов	90
556	Сиделка (1 сезон)	https://kinokrad.co/333493-sidelka-1-sezon.html	5	2018	Россия, Украина	мелодрама, детектив, триллер	Станислав Назиров	45
557	Специалист (1 сезон)	https://kinokrad.co/333496-specialist-1-sezon.html	5	2018	Россия	боевик, криминал, триллер	Александр Аншютц	50
558	Султан моего сердца (1 сезон)	https://kinokrad.co/333421-sultan-moego-serdca-1-sezon.html	7	2018	Россия, Турция	история, мелодрама	Керем Чакироглу	49
559	Город и Город (1 сезон)	https://kinokrad.co/326423-gorod-i-gorod-1-sezon.html	7	2018	Великобритания	фэнтези, драма, криминал, детектив	Том Шенклэнд	48
560	Лишний (1 сезон)	https://kinokrad.co/326420-lishniy-1-sezon.html	6	2018	Россия	детектив, мелодрама	Руслан Ибрагимов	44
561	Живой (1 сезон)	https://kinokrad.co/326396-zhivoy-1-sezon.html	6	2018	Россия	детектив	Михаил Кабанов	48
562	Когда зовёт сердце (5 сезон)	https://kinokrad.co/326228-kogda-zovet-serdce-5-sezon.html	7	2018	США	драма	Нилл Фернли, Питер ДеЛуис, Майк Рол	43
563	Улётный экипаж (1 сезон)	https://kinokrad.co/326210-uletnyy-ekipazh-1-sezon.html	7	2018	Россия	комедия	Марюс Вайсберг, Ольга Липатова	24
564	Чёрная молния (1 сезон)	https://kinokrad.co/325316-chernaya-molniya-1-sezon.html	5	2018	США	фантастика, боевик, драма	Оз Скотт, Салим Акил, Бенни Бум	43
565	Призрачная башня (1 сезон)	https://kinokrad.co/325808-prizrachnaya-bashnya-1-sezon.html	7	2018	США	драма	Крейг Зиск, Майкл Словис, Алекс Гибни	30
566	Арена для убийства (1 сезон)	https://kinokrad.co/325778-arena-dlya-ubiystva-1-sezon.html	3	2018	Россия	детектив, криминал, мелодрама	Дмитрий Аверин	45
567	Лапси (1 сезон)	https://kinokrad.co/325655-lapsi-1-sezon.html	7	2018	Россия	драма	Артем Аксененко	50
568	Мои дорогие (1 сезон)	https://kinokrad.co/325739-moi-dorogie-1-sezon.html	4	2018	Россия	мелодрама	Сергей Русаков	43
569	Секретные материалы (11 сезон)	https://kinokrad.co/324572-sekretnye-materialy-11-sezon.html	7	2018	Канада	фантастика, триллер, драма, детектив	Ким Мэннерс, Роб Боумен, Дэвид Наттер	43
570	Двойная ложь (1 сезон)	https://kinokrad.co/325709-dvoynaya-lozh-1-sezon.html	5	2018	Россия	мелодрама	Сергей Лялин	45
571	Сальса (1 сезон)	https://kinokrad.co/324575-salsa-1-sezon.html	4	2018	Россия	мелодрама	Иван Глубоков	51
572	Место, что домом зовётся (6 сезон)	https://kinokrad.co/329333-mesto-chto-domom-zovetsya-6-sezon.html	5	2018	Австралия	драма	Марк Джофф, Линн-Мэри Дэнзе, Катрин Миллар	60
573	Луис Мигель: Сериал (1 сезон)	https://kinokrad.co/329792-luis-migel-serial.html	6	2018	США	драма, биография, музыка	Humberto Hinojosa Ozcariz, Наталия Беристайн	60
574	Господин Посредник (1 сезон)	https://kinokrad.co/329756-gospodin-posrednik-1-sezon.html	7	2018	Австралия	драма, криминал	Нэш Эдгертон	30
575	Домашний арест (1 сезон)	https://kinokrad.co/328718-domashniy-arest-1-sezon.html	7	2018	Россия	комедия	Петр Буслов	70
576	Московская борзая (2 сезон)	https://kinokrad.co/329546-moskovskaya-borzaya-2-sezon.html	6	2018	Россия	криминал, мелодрама	Роман Просвирнин	60
577	Впереди день (1 сезон)	https://kinokrad.co/329498-vperedi-den-1-sezon.html	3	2018	Россия	мелодрама	Евгений Семенов	52
578	Ярмарка тщеславия (1 сезон)	https://kinokrad.co/329468-yarmarka-tscheslaviya-1-sezon.html	7	2018	Великобритания, США	драма	Джеймс Стронг, Джонатан Энтвистл	46
579	Уильям наш, Шекспир (3 сезон)	https://kinokrad.co/329438-uilyam-nash-shekspir-3-sezon.html	6	2018	Великобритания	комедия, история	Ричард Боден, Мэтт Липси	30
580	Грешница (2 сезон)	https://kinokrad.co/329435-greshnica-2-sezon.html	6	2018	США	триллер, драма, криминал, детектив	Антонио Кампос, Такер Гейтс, Брэд Андерсон	60
581	Белая ворона (3 сезон)	https://kinokrad.co/328970-belaya-vorona-3-sezon.html	5	2018	США	комедия	Мелина Матсукас, Кевин Брэй, Прентис Пенни	30
582	Плащ и Кинжал (1 сезон)	https://kinokrad.co/327884-plasch-i-kinzhal-1-sezon.html	6	2018	США	фантастика, боевик, драма, приключения	Алекс Гарсиа Лопес, Пол А. Эдвардс, Питер Хор	44
583	Реанимация (3 сезон)	https://kinokrad.co/326600-reanimaciya-3-sezon.html	7	2018	США	драма	Дэвид Фон Энкен, Константин Макрис, Роб Боумен	42
584	Легенда о Гранкресте (1 сезон)	https://kinokrad.co/327833-legenda-o-grankreste-1-sezon.html	8	2018	Япония	аниме, мультфильм, фэнтези, боевик, приключения	Мамору Хатакэяма	23
585	Пекарь и красавица (1 сезон)	https://kinokrad.co/334960-pekar-i-krasavica-1-sezon.html	7	2018	Россия	комедия, мелодрама	Фёдор Стуков	24
586	Цветы/Флауэрсы (2 сезон)	https://kinokrad.co/327830-cvety-flauersy-2-sezon.html	6	2018	Великобритания	драма, комедия	Уилл Шарп	30
587	Люк Кейдж (2 сезон)	https://kinokrad.co/327815-lyuk-keydzh-2-sezon.html	6	2018	США	фантастика, боевик, триллер, драма, криминал	Энди Годдард, Марк Йобст, Кларк Джонсон	55
588	Ходячие мертвецы (9 сезон)	https://kinokrad.co/329753-hodyachie-mertvecy-9-sezon.html	7	2018	США	ужасы, фантастика, триллер, драма	Грег Никотеро, Майкл Е. Сатраземис, Эрнест Р. Дикерсон	43
589	Годунов (1 сезон)	https://kinokrad.co/334783-godunov-1-sezon.html	6	2018	Россия	история, драма	Алексей Андрианов, Тимур Алпатов	52
590	Частный детектив Магнум (1 сезон)	https://kinokrad.co/330941-chastnyy-detektiv-magnum-1-sezon.html	7	2018	США	боевик, криминал, приключения	Дуан Кларк, Эгил Эгилссон, Карен Гавиола	43
591	Смертельное влечение (1 сезон)	https://kinokrad.co/327809-smertelnoe-vlechenie-1-sezon.html	7	2018	США	триллер, драма, комедия, криминал	Лесли Хэдланд, Кейт Дэннис, Сидни Фриланд	30
592	Кондор (1 сезон)	https://kinokrad.co/328487-kondor-1-sezon.html	8	2018	США	триллер	Эндрю МакКарти, Лоуренс Триллинг, Кари Скогланд	60
593	Оттенки синего (3 сезон)	https://kinokrad.co/328367-ottenki-sinego-3-sezon.html	7	2018	США	драма, криминал	Дэвид Бойд, Стивен ДеПол, Дэн Лернер	43
594	Свайпнутые (1 сезон)	https://kinokrad.co/328466-svaypnutye-1-sezon.html	8	2018	США	короткометражка, комедия	Natalie Meza	25
595	Детройтцы (2 сезон)	https://kinokrad.co/327704-detroytcy-2-sezon.html	5	2018	США	комедия	Дэйл Штерн, Николас Йасеновец, Билл Бенц	21
596	Новый человек (1 сезон)	https://kinokrad.co/328445-novyy-chelovek-1-sezon.html	6	2018	Россия	комедия	Артем Насыбулин, Ольга Цинк	24
597	Импульс (1 сезон)	https://kinokrad.co/328403-impuls-1-sezon.html	7	2018	США	фантастика, боевик	Майрзи Алмас, Шерин Дабис, Эд Фрэйман	50
598	Наследники (1 сезон)	https://kinokrad.co/328370-nasledniki-1-sezon.html	7	2018	США	драма	Марк Майлод, Адам Аркин, Мигель Артета	60
599	Когти (2 сезон)	https://kinokrad.co/328010-kogti-2-sezon.html	6	2018	США	драма, комедия, криминал	Дэйл Штерн, Джеми Трэвис, Ховард Дойч	45
600	Пять точек (1 сезон)	https://kinokrad.co/328289-pyat-tochek-1-sezon.html	6	2018	США	драма	Томас Картер	50
601	Рэй Донован (6 сезон)	https://kinokrad.co/330587-rey-donovan-6-sezon.html	7	2018	США	драма, криминал	Джон Дал, Майкл Аппендаль, Такер Гейтс	43
602	Милицейская сага (1 сезон)	https://kinokrad.co/328574-miliceyskaya-saga-1-sezon.html	7	2018	Россия	детектив, боевик, криминал	Петр Забелин	50
603	Очередь за нами (1 сезон)	https://kinokrad.co/328571-ochered-za-nami-1-sezon.html	6	2018	Турция	мелодрама, комедия	Барыш Йош, Хасан Толга Пулат	120
604	Вне времени (2 сезон)	https://kinokrad.co/325982-vne-vremeni-2-sezon.html	8	2018	США	фантастика, боевик, драма, приключения	Грег Биман, Джон Шоуолтер, Чарльз Бисон	60
605	Отмеченные (3 сезон)	https://kinokrad.co/331979-otmechennye-3-sezon.html	7	2018	США	триллер	Ханна Макферсон	18
606	Титаны (1 сезон)	https://kinokrad.co/329909-titany-1-sezon.html	7	2018	США	фантастика, фэнтези, боевик, драма, приключения	Брэд Андерсон, Джон Фоусет, Грант Харви	45
607	Город героев: Новая история (1 сезон)	https://kinokrad.co/331889-gorod-geroev-novaya-istoriya-1-sezon.html	7	2018	США	мультфильм, фантастика, боевик, комедия, приключения, семейный	Николас Филиппи, Стивен Хеневельд, Бен Джуоно	21
608	Защитник (1 сезон)	https://kinokrad.co/335695-zaschitnik-1-sezon.html	6	2018	Турция	фантастика, фэнтези, боевик	Умут Арал, Гонендж Уяник, Джан Эвренол	40
609	Я требую любви! (1 сезон)	https://kinokrad.co/328568-ya-trebuyu-lyubvi-span-mini-serial-span.html	6	2018	Россия	мелодрама	Теймураз Эсадзе	50
610	Жизнь на Марсе (1 сезон)	https://kinokrad.co/328565-zhizn-na-marse-1-sezon.html	6	2018	Корея Южная	детектив, триллер, фантастика	Ли Джон-хё	80
611	Кемпинг (1 сезон)	https://kinokrad.co/331817-kemping-1-sezon.html	5	2018	США	комедия	Дженнифер Коннер, Венди Станцлер, Джуд Вэн	30
612	Гостевая книга (2 сезон)	https://kinokrad.co/331814-gostevaya-kniga-2-sezon.html	7	2018	США	комедия	Грегори Томас Гарсиа, Самир Реэм, Майкл Энглер	30
613	Комната 104 (2 сезон)	https://kinokrad.co/331781-komnata-104-2-sezon.html	6	2018	США	ужасы, триллер, драма	Росс Патридж, Патрик Брайс, Йонг Ким Со	30
614	Медное солнце (1 сезон)	https://kinokrad.co/331745-mednoe-solnce-1-sezon.html	7	2018	Россия	военный, драма	Карен Оганесян	122
615	Члены королевской семьи (4 сезон)	https://kinokrad.co/327032-chleny-korolevskoy-semi-4-sezon.html	5	2018	США	драма	Марк Шван, Джеймс Лэфферти, Лес Батлер	42
616	Последний настоящий мужчина (7 сезон)	https://kinokrad.co/330083-posledniy-nastoyaschiy-muzhchina-7-sezon.html	5	2018	США	комедия	Джон Паскуин, Виктор Гонзалез, Тед Уасс	22
617	Американка (1 сезон)	https://kinokrad.co/327611-amerikanka-1-sezon.html	6	2018	США	комедия	Алекс Хардкасл, Алетеа Джонс, Иэн Б. МакДональд	30
618	Платформа 45 (1 сезон)	https://kinokrad.co/328517-platforma-45-1-sezon.html	7	2018	Швеция	триллер	Пер Ханефьорд	45
619	Жизнь (1 сезон)	https://kinokrad.co/327554-zhizn-1-sezon.html	7	2018	США	драма	Роуз Троше, Каталина Агиляр Мастретта, Рашаад Эрнесто Грин	35
620	Паранормальный Веллингтон (1 сезон)	https://kinokrad.co/328514-paranormalnyy-vellington-1-sezon.html	6	2018	Новая Зеландия	ужасы, фэнтези, комедия, криминал, детектив, мистика	Джемейн Клемент, Джеки ван Бик	30
621	Королева сахара (3 сезон)	https://kinokrad.co/327851-koroleva-sahara-3-sezon.html	5	2018	США	драма	Кэт Кэндлер, Димэйн Дэвис, Нима Барнетт	60
622	Куртизанки (2 сезон)	https://kinokrad.co/328106-kurtizanki-2-sezon.html	8	2018	Великобритания, США	драма	Коки Гидройч, Джилл Робертсон, Чина Му-Ен	60
623	Ранняя пташка (1 сезон)	https://kinokrad.co/337301-rannyaya-ptashka-1-sezon.html	8	2018	Турция	драма, комедия, мелодрама	Чагры Байрак, Aytac Cicek	120
624	Ты расскажи, Карадениз (1 сезон)	https://kinokrad.co/327674-ty-rasskazhi-karadeniz-1-sezon.html	5	2018	Турция	драма	Эмре Кабакусак, Осман Синав, Юсуф Омер Синав	110
625	Невиновный (1 сезон)	https://kinokrad.co/327542-nevinovnyy-1-sezon.html	9	2018	Великобритания	драма, детектив	Ричард Кларк	45
626	Пуленепробиваемые (1 сезон)	https://kinokrad.co/327509-puleneprobivaemye-1-sezon.html	7	2018	Великобритания	боевик, криминал	Оле Эндресен, Ник Лав	48
627	Вайнона Эрп (3 сезон)	https://kinokrad.co/328469-vaynona-erp-3-sezon.html	6	2018	Канада, США	фэнтези, боевик, триллер, драма, детектив, вестерн	Паоло Барзмен, Рон Мерфи, Бретт Салливан	60
628	Любовь ангелов (1 сезон)	https://kinokrad.co/328436-lyubov-angelov-1-sezon.html	6	2018	Турция	мелодрама, комедия	Эрсой Гюлер, Хамди Алкан	120
629	Экли Бридж (2 сезон)	https://kinokrad.co/328460-ekli-bridzh-2-sezon.html	6	2018	Великобритания	драма	Роберт Куинн, Пенни Вулкок, Джо Стефенсон	60
630	В свободном улёте (1 сезон)	https://kinokrad.co/329210-v-svobodnom-ulete-1-sezon.html	5	2018	США	комедия	Теренс Нэнс, Дариус Кларк Монро, Наима Рамос-Чепмен	30
631	Без обязательств (4 сезон)	https://kinokrad.co/328496-bez-obyazatelstv-4-sezon.html	4	2018	США	драма, комедия	Майкл Уивер, Джейсон Райтман, Джиллиан Робеспьер	25
632	Переключи мир (1 сезон)	https://kinokrad.co/326993-pereklyuchi-mir-1-sezon.html	7	2018	Корея Южная	комедия, криминал	Нам Тхэ-джин	35
633	Последний настоящий гангстер (1 сезон)	https://kinokrad.co/326378-posledniy-nastoyaschiy-gangster-1-sezon.html	7	2018	США	комедия	Йорма Такконе	30
634	Нокс (1 сезон)	https://kinokrad.co/335527-noks-1-sezon.html	7	2018	Франция	триллер, криминал	Мабрук Эль Мекри	55
635	Ординатор (2 сезон)	https://kinokrad.co/329561-ordinator-2-sezon.html	7	2018	США	драма	Роб Корн, Джеймс Родэй, Дэвид Крэбтри	60
636	Патрик Мелроуз (1 сезон)	https://kinokrad.co/327500-patrik-melrouz-1-sezon.html	8	2018	Великобритания, США	драма	Эдвард Бергер	60
637	Корпорация Алекса/Стартап (1 сезон)	https://kinokrad.co/326483-korporaciya-aleksa-startap-1-sezon.html	5	2018	США	комедия	Зак Брафф, Майкл Патрик Джэнн, Ричи Кин	30
638	Для людей (1 сезон)	https://kinokrad.co/326447-dlya-lyudey-1-sezon.html	8	2018	США	драма	Том Верика, Эндрю Бернштейн, П.Дж. Пеше	43
639	Поселенцы (1 сезон)	https://kinokrad.co/335473-poselency-1-sezon.html	5	2018	Россия	драма, детектив	Артем Мазунов	55
640	Шелест (2 сезон)	https://kinokrad.co/329156-shelest-2-sezon.html	6	2018	Россия	боевик, детектив, криминал	Дмитрий Коробкин	46
641	Универ. Новая общага (15 сезон)	https://kinokrad.co/328742-univer.-novaya-obschaga-15-sezon.html	7	2018	Россия	комедия	Константин Смирнов, Максим Зыков, Шота Гамисония	23
642	Бывшие (1 сезон)	https://kinokrad.co/327497-byvshie-1-sezon.html	8	2018	Россия	драма	Иван Китаев	52
643	Гюлизар (1 сезон)	https://kinokrad.co/326714-gyulizar-1-sezon.html	7	2018	Турция	драма	Чаган Ырмак	60
644	Незнакомка в зеркале (1 сезон)	https://kinokrad.co/327458-neznakomka-v-zerkale-1-sezon.html	4	2018	Россия	драма, триллер, мелодрама	Станислав Рубенчик	100
645	Соседи (1 сезон)	https://kinokrad.co/326963-sosedi-1-sezon.html	5	2018	Россия	комедия	Владимир Виноградов	52
646	Огненный ангел (1 сезон)	https://kinokrad.co/327455-ognennyy-angel-1-sezon.html	4	2018	Россия	триллер	Дарья Семенова	45
647	Берлинский вокзал / Берлинский отдел (3 сезон)	https://kinokrad.co/331982-berlinskiy-vokzal-berlinskiy-otdel-3-sezon.html	6	2018	США, Германия	триллер, драма	Кристоф Шреве, Джузеппе Капотонди, Джон Дэвид Коулз	60
648	Чужестранка (4 сезон)	https://kinokrad.co/331376-chuzhestranka-4-sezon.html	8	2018	США, Великобритания	фэнтези, драма, мелодрама	Метин Хусейн, Анна Ферстер, Брайан Келли	64
649	Верить и ждать (1 сезон)	https://kinokrad.co/329141-verit-i-zhdat-1-sezon.html	3	2018	Россия	мелодрама	Валерий Ибрагимов	96
650	Киллджойс/Кайфоломы (4 сезон)	https://kinokrad.co/328580-kayfolomy-4-sezon.html	7	2018	Канада	фантастика, боевик, триллер, приключения	Стефан Плещински, Паоло Барзмен, Питер Стеббингс	42
651	Хорошие девчонки (1 сезон)	https://kinokrad.co/326702-horoshie-devchonki-1-sezon.html	8	2018	США	драма, комедия, криминал	Дин Паризо, Сара Пиа Андерсон, Кеннет Финк	43
652	Вавилон-Берлин (2 сезон)	https://kinokrad.co/329126-vavilon-berlin-2-sezon.html	7	2018	Германия	триллер, драма, криминал, история	Хендрик Хандлёгтен, Том Тыквер, Ахим фон Боррис	45
653	Остров (2 сезон)	https://kinokrad.co/327449-ostrov-2-sezon.html	7	2018	Россия	комедия	Михаил Старчак, Артем Насыбулин, Александр Наумов	24
654	Я жив (1 сезон)	https://kinokrad.co/326429-ya-zhiv-1-sezon.html	8	2018	Испания	фэнтези, триллер	Ориоль Феррер, Хесус Родриго, Давид Молина Энсинас	48
655	Сила обстоятельств (1 сезон)	https://kinokrad.co/333532-sila-obstoyatelstv-1-sezon.html	5	2018	Россия	мелодрама	Андрей Селиванов	90
656	Сиделка (1 сезон)	https://kinokrad.co/333493-sidelka-1-sezon.html	5	2018	Россия, Украина	мелодрама, детектив, триллер	Станислав Назиров	45
657	Специалист (1 сезон)	https://kinokrad.co/333496-specialist-1-sezon.html	5	2018	Россия	боевик, криминал, триллер	Александр Аншютц	50
658	Султан моего сердца (1 сезон)	https://kinokrad.co/333421-sultan-moego-serdca-1-sezon.html	7	2018	Россия, Турция	история, мелодрама	Керем Чакироглу	49
659	Город и Город (1 сезон)	https://kinokrad.co/326423-gorod-i-gorod-1-sezon.html	7	2018	Великобритания	фэнтези, драма, криминал, детектив	Том Шенклэнд	48
660	Лишний (1 сезон)	https://kinokrad.co/326420-lishniy-1-sezon.html	6	2018	Россия	детектив, мелодрама	Руслан Ибрагимов	44
661	Живой (1 сезон)	https://kinokrad.co/326396-zhivoy-1-sezon.html	6	2018	Россия	детектив	Михаил Кабанов	48
662	Когда зовёт сердце (5 сезон)	https://kinokrad.co/326228-kogda-zovet-serdce-5-sezon.html	7	2018	США	драма	Нилл Фернли, Питер ДеЛуис, Майк Рол	43
663	Улётный экипаж (1 сезон)	https://kinokrad.co/326210-uletnyy-ekipazh-1-sezon.html	7	2018	Россия	комедия	Марюс Вайсберг, Ольга Липатова	24
664	Чёрная молния (1 сезон)	https://kinokrad.co/325316-chernaya-molniya-1-sezon.html	5	2018	США	фантастика, боевик, драма	Оз Скотт, Салим Акил, Бенни Бум	43
665	Призрачная башня (1 сезон)	https://kinokrad.co/325808-prizrachnaya-bashnya-1-sezon.html	7	2018	США	драма	Крейг Зиск, Майкл Словис, Алекс Гибни	30
666	Арена для убийства (1 сезон)	https://kinokrad.co/325778-arena-dlya-ubiystva-1-sezon.html	3	2018	Россия	детектив, криминал, мелодрама	Дмитрий Аверин	45
667	Лапси (1 сезон)	https://kinokrad.co/325655-lapsi-1-sezon.html	7	2018	Россия	драма	Артем Аксененко	50
668	Мои дорогие (1 сезон)	https://kinokrad.co/325739-moi-dorogie-1-sezon.html	4	2018	Россия	мелодрама	Сергей Русаков	43
669	Секретные материалы (11 сезон)	https://kinokrad.co/324572-sekretnye-materialy-11-sezon.html	7	2018	Канада	фантастика, триллер, драма, детектив	Ким Мэннерс, Роб Боумен, Дэвид Наттер	43
670	Двойная ложь (1 сезон)	https://kinokrad.co/325709-dvoynaya-lozh-1-sezon.html	5	2018	Россия	мелодрама	Сергей Лялин	45
671	Сальса (1 сезон)	https://kinokrad.co/324575-salsa-1-sezon.html	4	2018	Россия	мелодрама	Иван Глубоков	51
672	Место, что домом зовётся (6 сезон)	https://kinokrad.co/329333-mesto-chto-domom-zovetsya-6-sezon.html	5	2018	Австралия	драма	Марк Джофф, Линн-Мэри Дэнзе, Катрин Миллар	60
673	Луис Мигель: Сериал (1 сезон)	https://kinokrad.co/329792-luis-migel-serial.html	6	2018	США	драма, биография, музыка	Humberto Hinojosa Ozcariz, Наталия Беристайн	60
674	Господин Посредник (1 сезон)	https://kinokrad.co/329756-gospodin-posrednik-1-sezon.html	7	2018	Австралия	драма, криминал	Нэш Эдгертон	30
675	Домашний арест (1 сезон)	https://kinokrad.co/328718-domashniy-arest-1-sezon.html	7	2018	Россия	комедия	Петр Буслов	70
676	Московская борзая (2 сезон)	https://kinokrad.co/329546-moskovskaya-borzaya-2-sezon.html	6	2018	Россия	криминал, мелодрама	Роман Просвирнин	60
677	Впереди день (1 сезон)	https://kinokrad.co/329498-vperedi-den-1-sezon.html	3	2018	Россия	мелодрама	Евгений Семенов	52
678	Ярмарка тщеславия (1 сезон)	https://kinokrad.co/329468-yarmarka-tscheslaviya-1-sezon.html	7	2018	Великобритания, США	драма	Джеймс Стронг, Джонатан Энтвистл	46
679	Уильям наш, Шекспир (3 сезон)	https://kinokrad.co/329438-uilyam-nash-shekspir-3-sezon.html	6	2018	Великобритания	комедия, история	Ричард Боден, Мэтт Липси	30
680	Грешница (2 сезон)	https://kinokrad.co/329435-greshnica-2-sezon.html	6	2018	США	триллер, драма, криминал, детектив	Антонио Кампос, Такер Гейтс, Брэд Андерсон	60
681	Белая ворона (3 сезон)	https://kinokrad.co/328970-belaya-vorona-3-sezon.html	5	2018	США	комедия	Мелина Матсукас, Кевин Брэй, Прентис Пенни	30
682	Плащ и Кинжал (1 сезон)	https://kinokrad.co/327884-plasch-i-kinzhal-1-sezon.html	6	2018	США	фантастика, боевик, драма, приключения	Алекс Гарсиа Лопес, Пол А. Эдвардс, Питер Хор	44
683	Реанимация (3 сезон)	https://kinokrad.co/326600-reanimaciya-3-sezon.html	7	2018	США	драма	Дэвид Фон Энкен, Константин Макрис, Роб Боумен	42
684	Легенда о Гранкресте (1 сезон)	https://kinokrad.co/327833-legenda-o-grankreste-1-sezon.html	8	2018	Япония	аниме, мультфильм, фэнтези, боевик, приключения	Мамору Хатакэяма	23
685	Пекарь и красавица (1 сезон)	https://kinokrad.co/334960-pekar-i-krasavica-1-sezon.html	7	2018	Россия	комедия, мелодрама	Фёдор Стуков	24
686	Цветы/Флауэрсы (2 сезон)	https://kinokrad.co/327830-cvety-flauersy-2-sezon.html	6	2018	Великобритания	драма, комедия	Уилл Шарп	30
687	Люк Кейдж (2 сезон)	https://kinokrad.co/327815-lyuk-keydzh-2-sezon.html	6	2018	США	фантастика, боевик, триллер, драма, криминал	Энди Годдард, Марк Йобст, Кларк Джонсон	55
688	Ходячие мертвецы (9 сезон)	https://kinokrad.co/329753-hodyachie-mertvecy-9-sezon.html	7	2018	США	ужасы, фантастика, триллер, драма	Грег Никотеро, Майкл Е. Сатраземис, Эрнест Р. Дикерсон	43
689	Годунов (1 сезон)	https://kinokrad.co/334783-godunov-1-sezon.html	6	2018	Россия	история, драма	Алексей Андрианов, Тимур Алпатов	52
690	Частный детектив Магнум (1 сезон)	https://kinokrad.co/330941-chastnyy-detektiv-magnum-1-sezon.html	7	2018	США	боевик, криминал, приключения	Дуан Кларк, Эгил Эгилссон, Карен Гавиола	43
691	Смертельное влечение (1 сезон)	https://kinokrad.co/327809-smertelnoe-vlechenie-1-sezon.html	7	2018	США	триллер, драма, комедия, криминал	Лесли Хэдланд, Кейт Дэннис, Сидни Фриланд	30
692	Кондор (1 сезон)	https://kinokrad.co/328487-kondor-1-sezon.html	8	2018	США	триллер	Эндрю МакКарти, Лоуренс Триллинг, Кари Скогланд	60
693	Оттенки синего (3 сезон)	https://kinokrad.co/328367-ottenki-sinego-3-sezon.html	7	2018	США	драма, криминал	Дэвид Бойд, Стивен ДеПол, Дэн Лернер	43
694	Свайпнутые (1 сезон)	https://kinokrad.co/328466-svaypnutye-1-sezon.html	8	2018	США	короткометражка, комедия	Natalie Meza	25
695	Детройтцы (2 сезон)	https://kinokrad.co/327704-detroytcy-2-sezon.html	5	2018	США	комедия	Дэйл Штерн, Николас Йасеновец, Билл Бенц	21
696	Новый человек (1 сезон)	https://kinokrad.co/328445-novyy-chelovek-1-sezon.html	6	2018	Россия	комедия	Артем Насыбулин, Ольга Цинк	24
697	Импульс (1 сезон)	https://kinokrad.co/328403-impuls-1-sezon.html	7	2018	США	фантастика, боевик	Майрзи Алмас, Шерин Дабис, Эд Фрэйман	50
698	Наследники (1 сезон)	https://kinokrad.co/328370-nasledniki-1-sezon.html	7	2018	США	драма	Марк Майлод, Адам Аркин, Мигель Артета	60
699	Когти (2 сезон)	https://kinokrad.co/328010-kogti-2-sezon.html	6	2018	США	драма, комедия, криминал	Дэйл Штерн, Джеми Трэвис, Ховард Дойч	45
700	Пять точек (1 сезон)	https://kinokrad.co/328289-pyat-tochek-1-sezon.html	6	2018	США	драма	Томас Картер	50
701	Чемпионы (1 сезон)	https://kinokrad.co/332555-chempiony-1-sezon.html	6	2018	США	комедия	Майкл Спиллер, Гита Патель, Мэгги Кэри	30
702	Возвращение домой (1 сезон)	https://kinokrad.co/332552-vozvraschenie-domoy-1-sezon.html	5	2018	США	триллер, драма	Сэм Эсмейл	30
703	Счастливы вместе (1 сезон)	https://kinokrad.co/332381-schastlivy-vmeste-1-sezon.html	7	2018	США	комедия	Энди Экерман, Фил Льюис, Джефф Гринштейн	30
704	Звоните ДиКаприо! (1 сезон)	https://kinokrad.co/332534-zvonite-dikaprio-1-sezon.html	7	2018	Россия	комедия, драма	Жора Крыжовников	48
705	Метод Комински (1 сезон)	https://kinokrad.co/332531-metod-kominski-1-sezon.html	7	2018	США	комедия	Энди Теннант, Бет МакКарти-Миллер, Дональд Питри	30
706	Беглецы (2 сезон)	https://kinokrad.co/332504-beglecy-2-sezon.html	5	2018	США	фантастика, боевик, драма	Джеффри В. Бёрд, Рэмси Никелл, Патрик Р. Норрис	60
707	Путешественники (3 сезон)	https://kinokrad.co/332501-puteshestvenniki-3-sezon.html	8	2018	Канада, США	фантастика, триллер, драма, детектив	Энди Микита, Аманда Таппинг, Уильям Варинг	45
708	Грязный Джон (1 сезон)	https://kinokrad.co/332495-gryaznyy-dzhon-1-sezon.html	6	2018	США	драма	Джеффри Рейнер	50
709	Гуль (1 сезон)	https://kinokrad.co/329078-gul-1-sezon.html	7	2018	Индия	ужасы, триллер	Патрик Грэхэм	44
710	Бриджит и Имон (3 сезон)	https://kinokrad.co/332492-bridzhit-i-imon-3-sezon.html	7	2018	Ирландия	комедия	Джейсон Батлер	30
711	Лёгкий как пёрышко (1 сезон)	https://kinokrad.co/332480-legkiy-kak-peryshko-1-sezon.html	7	2018	США	триллер	Алексис О. Коричински, Джеффри В. Бёрд, Чад Лоу	23
712	Пуля (1 сезон)	https://kinokrad.co/332471-pulya-1-sezon.html	6	2018	Россия	детектив	Алексей Быстрицкий	48
713	Курортный роман (1 сезон)	https://kinokrad.co/329129-kurortnyy-roman-1-sezon.html	5	2018	Россия	комедия	Игорь Мужжухин	48
714	Тревожные звоночки (1 сезон)	https://kinokrad.co/329057-trevozhnye-zvonochki-1-sezon.html	7	2018	США	комедия	Роберт Деламер	30
715	Разочарование (1 сезон)	https://kinokrad.co/329012-razocharovanie-1-sezon.html	8	2018	США	мультфильм, фэнтези, комедия, приключения	Уэсли Арчер, Фрэнк Марино, David D. Au	30
716	Джек Райан (1 сезон)	https://kinokrad.co/329003-dzhek-rayan-1-sezon.html	9	2018	США	боевик, триллер, драма	Патрисия Ригген, Дэниэл Сакхайм, Дэнни Гордон	60
717	Кунг-фу панда: Лапки судьбы (1 сезон)	https://kinokrad.co/335488-kung-fu-panda-lapki-sudby-1-sezon.html	8	2018	США	мультфильм, фэнтези, боевик, комедия, приключения, семейный	Лэйн Луэрас, Джеймс Вуттон, Rhianna Williams	24
718	Стандарты красоты (1 сезон)	https://kinokrad.co/332468-standarty-krasoty-1-sezon.html	5	2018	Россия	мелодрама, комедия	Вартан Акопян, Влад Якин	44
719	Дом цветов (1 сезон)	https://kinokrad.co/329000-dom-cvetov-1-sezon.html	7	2018	Мексика	комедия	Маноло Каро Серрано	60
720	Американский папаша (14 сезон)	https://kinokrad.co/325727-amerikanskiy-papasha-14-sezon.html	6	2018	США	мультфильм, комедия	Рон Хьюгарт, Брент Вудс, Энтони Льои	22
721	Мёртвое озеро (1 сезон)	https://kinokrad.co/334969-mertvoe-ozero-1-sezon.html	6	2018	Россия	триллер	Роман Прыгунов	48
722	Московские тайны. Опасный переплет (1 сезон)	https://kinokrad.co/335461-moskovskie-tayny.-opasnyy-pereplet-1-sezon.html	5	2018	Россия	детектив	Антон Шарапов	90
723	Спасение (2 сезон)	https://kinokrad.co/328265-spasenie-2-sezon.html	7	2018	США	фантастика, триллер, драма	Стюарт Гиллард, Кеннет Финк, Дэн Лернер	43
724	Деффчонки (6 сезон)	https://kinokrad.co/328988-deffchonki-6-sezon.html	6	2018	Россия	комедия	Сергей Корягин	24
725	Бесстыдники (9 сезон)	https://kinokrad.co/330218-besstydniki-9-sezon.html	8	2018	США	драма, комедия	Марк Майлод, Кристофер Чулак, Джон Уэллс	55
726	В поисках... (1 сезон)	https://kinokrad.co/328910-v-poiskah.-1-sezon.html	5	2018	США	документальный	Эдди Шмидт	41
727	Чужая дочь (1 сезон)	https://kinokrad.co/325178-chuzhaya-doch-1-sezon.html	7	2018	Россия	мелодрама, детектив, криминал	Сергей Газаров	50
728	Девчонки из Дерри (1 сезон)	https://kinokrad.co/325160-devchonki-iz-derri-1-sezon.html	6	2018	Великобритания	комедия	Майкл Леннокс	30
729	Всё о Вашингтонах (1 сезон)	https://kinokrad.co/328913-vse-o-vashingtonah-1-sezon.html	4	2018	США	комедия, музыка	Дон Скардино, Линда Мендоса, Кимберли МакКалло	25
730	Большая игра (1 сезон)	https://kinokrad.co/328874-bolshaya-igra-1-sezon.html	7	2018	Россия	комедия, спорт	Байбулат Батуллин	24
731	Крейг из царства Ручья (1 сезон)	https://kinokrad.co/329015-kreyg-iz-carstva-ruchya-1-sezon.html	6	2018	США	мультфильм, короткометражка, комедия, приключения	Мэтт Барнетт, Бен Левин	11
765	Бессонница (1 сезон)	https://kinokrad.co/326969-bessonnica-1-sezon.html	5	2018	США	боевик, драма	Вячеслав Яковлев	60
732	Невинные (1 сезон)	https://kinokrad.co/328871-nevinnye-1-sezon.html	6	2018	Великобритания	фантастика, триллер, драма, мелодрама	Фэррен Блэкберн, Джеми Донахью	60
733	МакМафия (1 сезон)	https://kinokrad.co/324392-makmafiya-1-sezon.html	8	2018	Великобритания, США	триллер, драма, криминал	Джеймс Уоткинс	60
734	Расследования Мердока (12 сезон)	https://kinokrad.co/329639-rassledovaniya-merdoka-12-sezon.html	7	2018	Канада, Великобритания	драма, криминал, детектив	Харви Кросслэнд, Лори Линд, Кэл Кунс	43
735	Стартап (3 сезон)	https://kinokrad.co/331742-startap-3-sezon.html	7	2018	США	триллер, криминал	Бен Кетаи, Оливер Блэкберн, Луис Прието	44
736	Карточный домик (6 сезон)	https://kinokrad.co/331688-kartochnyy-domik-6-sezon.html	7	2018	США	драма	Джеймс Фоули, Робин Райт, Джон Дэвид Коулз	50
737	Карточный домик (5 сезон)	https://kinokrad.co/331685-kartochnyy-domik-5-sezon.html	7	2018	США	драма	Джеймс Фоули, Робин Райт, Джон Дэвид Коулз	50
738	Полицейский с Рублёвки (4 сезон)	https://kinokrad.co/331250-policeyskiy-s-rublevki-4-sezon.html	6	2018	Россия	криминал, комедия, драма	Илья Куликов	48
739	Улётный экипаж (2 сезон)	https://kinokrad.co/331670-uletnyy-ekipazh-2-sezon.html	7	2018	Россия	комедия	Марюс Вайсберг, Ольга Липатова, Дмитрий Губарев	24
740	Осколки души (1 сезон)	https://kinokrad.co/331634-oskolki-dushi-1-sezon.html	5	2018	Турция	боевик, драма	Серкан Биринджи	120
741	Куку (4 сезон)	https://kinokrad.co/330866-kuku-4-sezon.html	6	2018	Великобритания	комедия	Бен Тэйлор, Пол Мерфи, Бен Грегор	22
742	Неуловимые (1 сезон)	https://kinokrad.co/331550-neulovimye-1-sezon.html	5	2018	Россия	комедия, приключения	Владимир Виноградов	47
743	Ненастье (1 сезон)	https://kinokrad.co/331523-nenaste-1-sezon.html	7	2018	Россия	драма	Сергей Урсуляк	45
744	Дуэт по праву (1 сезон)	https://kinokrad.co/331520-duet-po-pravu-1-sezon.html	4	2018	Россия	мелодрама, детектив	Владимир Мельниченко, Михаил Журавкин, Александр Горновский	44
745	Воронины (22 сезон)	https://kinokrad.co/329159-voroniny-22-sezon.html	7	2018	Россия	комедия, приключения, семейный	Александр Жигалкин, Леонид Коновалов, Георгий Дронов	24
746	Никто (2 сезон)	https://kinokrad.co/326921-nikto-2-sezon.html	7	2018	США	комедия	Майкл МакДональд, Бен Фэлкоун	30
747	Американцы (6 сезон)	https://kinokrad.co/326291-amerikancy-6-sezon.html	7	2018	США	триллер, драма, криминал, детектив	Крис Лонг, Дэниэл Сакхайм, Томас Шламми	43
748	Разделенные вместе (1 сезон)	https://kinokrad.co/326927-razdelennye-vmeste-1-sezon.html	8	2018	США	комедия	Дин Холлэнд, Хелен Хант, Джей Карас	30
749	Босс-молокосос: Снова в деле (1 сезон)	https://kinokrad.co/336163-boss-molokosos-snova-v-dele-1-sezon.html	8	2018	США	мультфильм, фэнтези, комедия, приключения, семейный	Pete Jacobs, Christo Stamboliev, Аллан Якобсен	25
750	Сотня (6 сезон)	https://kinokrad.co/337270-sotnya-6-sezon.html	7	2018	США	фантастика, драма, детектив	Дин Уайт, П.Дж. Пеше, Эд Фрэйман	43
751	Дальнобойщик (1 сезон)	https://kinokrad.co/326894-dalnoboyschik-1-sezon.html	4	2018	Россия	мелодрама	Андрей Мармонтов	48
752	Наследие (1 сезон)	https://kinokrad.co/331637-nasledie-1-sezon.html	8	2018	США	фэнтези, драма, детектив, приключения, ужасы	Крис Грисмер, Пол Уэсли, Майкл А. Алловиц	45
753	СашаТаня (6 сезон)	https://kinokrad.co/326765-sashatanya-6-sezon.html	6	2018	Россия	комедия	Сергей Казачанский, Михаил Старчак, Андрей Богатырев	24
754	Развод (2 сезон)	https://kinokrad.co/337223-razvod-2-sezon.html	6	2018	США	драма, комедия	Адам Бернштейн, Джесси Перец, Райан Кейс	30
755	Приключения Кота в сапогах (6 сезон)	https://kinokrad.co/335971-priklyucheniya-kota-v-sapogah-6-sezon.html	7	2018	США	мультфильм, фэнтези, боевик, комедия, приключения, семейный	Джонни Кастучиано, Рой Бурдин, Бен Джуоно	24
756	Наследный принц (1 сезон)	https://kinokrad.co/326699-naslednyy-princ-1-sezon.html	6	2018	Корея Южная	мелодрама, история	Ким Джон-мин	70
757	Приключения Кота в сапогах (5 сезон)	https://kinokrad.co/335968-priklyucheniya-kota-v-sapogah-5-sezon.html	7	2018	США	мультфильм, фэнтези, комедия, приключения, семейный	Джонни Кастучиано, Рой Бурдин, Бен Джуоно	24
758	Я – зомби (4 сезон)	https://kinokrad.co/325880-ya-zombi-4-sezon.html	7	2018	США	ужасы, драма, комедия, криминал	Майкл Филдс, Майрзи Алмас, Джейсон Блум	42
759	Террор (1 сезон)	https://kinokrad.co/326225-terror-1-sezon.html	8	2018	США	ужасы, драма	Тим Милантс, Эдвард Бергер, Серджо Мимика-Геззан	60
760	Ивановы-Ивановы (2 сезон)	https://kinokrad.co/325748-ivanovy-ivanovy-2-sezon.html	8	2018	Россия	комедия	Антон Федотов	24
761	Простоквашино (1 сезон)	https://kinokrad.co/326360-prostokvashino-1-sezon.html	6	2018	Россия	мультфильм, детский	Михаил Солошенко	6
762	По расчёту (2 сезон)	https://kinokrad.co/326339-po-raschetu-2-sezon.html	5	2018	США	драма	Джонас Пейт, Кэрол Бенкер, Лукас Эттлин	60
763	Ты, Я, Она (3 сезон)	https://kinokrad.co/325979-ty-ya-ona-3-sezon.html	7	2018	США	драма, мелодрама, комедия	Сара Ст. Онге, Ниша Ганатра	28
766	Блестящая карьера (1 сезон)	https://kinokrad.co/333457-blestyaschaya-karera-1-sezon.html	7	2018	Беларусь, Украина	мелодрама	Олег Фесенко	47
767	Галина (1 сезон)	https://kinokrad.co/326840-galina-1-sezon.html	4	2018	Россия	мелодрама	Эдуард Пальмов	60
768	Радуга жизни (1 сезон)	https://kinokrad.co/333376-raduga-zhizni-1-sezon.html	3	2018	Россия	мелодрама	Сергей Лялин	45
769	Механизм (1 сезон)	https://kinokrad.co/326204-mehanizm-1-sezon.html	6	2018	Бразилия	триллер, драма, криминал	Фелипе Прадо, Жозе Падилья, Маркус Прадо	41
770	Первый раз прощается (1 сезон)	https://kinokrad.co/326201-pervyy-raz-proschaetsya-1-sezon.html	4	2018	Россия	детектив, мелодрама	Владимир Харченко-Куликовский	45
771	Диета из Санта-Клариты (2 сезон)	https://kinokrad.co/326183-dieta-iz-santa-klarity-2-sezon.html	8	2018	США	ужасы, комедия	Марк Баклэнд, Кен Куопис, Стив Пинк	30
772	Соучастник (1 сезон)	https://kinokrad.co/326180-souchastnik-1-sezon.html	7	2018	Великобритания, США	триллер, драма, криминал, детектив	С.Дж. Кларксон	57
773	Охотники на троллей (3 сезон)	https://kinokrad.co/327398-ohotniki-na-trolley-3-sezon.html	8	2018	США, Мексика	мультфильм, фэнтези, комедия, приключения, семейный	Родриго Блаас, Эндрю Л. Шмидт, Илэйн Боган	23
774	Хэп и Леонард (3 сезон)	https://kinokrad.co/326153-hep-i-leonard-3-sezon.html	8	2018	США	триллер, драма, криминал	Джим Микл, Абе Сильвия, Ник Гомез	60
775	Брокмайр (2 сезон)	https://kinokrad.co/326726-brokmayr-2-sezon.html	6	2018	США	драма, комедия, спорт	Тим Киркби, Морис Мэрэбл	30
776	Дорога из жёлтого кирпича (1 сезон)	https://kinokrad.co/326156-doroga-iz-zheltogo-kirpicha-1-sezon.html	4	2018	Россия	мелодрама	Екатерина Шагалова	45
777	Родные пенаты (1 сезон)	https://kinokrad.co/326057-rodnye-penaty-1-sezon.html	4	2018	Россия	мелодрама	Михаил Жерневский	180
778	Операция «Мухаббат» (1 сезон)	https://kinokrad.co/326684-operaciya-muhabbat-1-sezon.html	6	2018	Россия, Украина	драма, мелодрама, триллер, военный	Олег Фомин	44
779	Карппи / Встречный ветер (1 сезон)	https://kinokrad.co/333365-karppi-vstrechnyy-veter-1-sezon.html	6	2018	Финляндия, Германия	триллер, драма, криминал	Рик Йокела	45
780	Космический рубеж (1 сезон)	https://kinokrad.co/326681-kosmicheskiy-rubezh-1-sezon.html	8	2018	США	мультфильм, фантастика, фэнтези, боевик, драма, комедия, приключения	Майк Робертс, Ben Bjelajac, Крис Палушек	30
781	Навстречу тьме (1 сезон)	https://kinokrad.co/332579-navstrechu-tme.html	7	2018	США	ужасы, триллер	Пол Дэвис, Патрик Люссье, Софи Такал	90
782	Барри (1 сезон)	https://kinokrad.co/326480-barri-1-sezon.html	7	2018	США	комедия	Билл Хейдер, Алек Берг, Мэгги Кэри	30
783	Молодёжка (6 сезон)	https://kinokrad.co/328856-molodezhka-6-sezon.html	7	2018	Россия	драма, спорт	Сергей Арланов, Андрей Головков	48
784	Новенькая (7 сезон)	https://kinokrad.co/326675-novenkaya-7-sezon.html	7	2018	США	комедия	Трент О’Доннелл, Эрин О’Мэлли, Джейк Кэздан	22
785	Американская история ужасов (8 сезон)	https://kinokrad.co/333215-amerikanskaya-istoriya-uzhasov-8-sezon.html	7	2018	США	ужасы, триллер, драма	Брэдли Букер, Альфонсо Гомес-Рехон, Майкл Аппендаль	43
786	Визави (4 сезон)	https://kinokrad.co/331892-vizavi-4-sezon.html	8	2018	Испания	триллер, драма	Хесус Кольменар, Сандра Гальего, Хесус Родриго	53
787	Популярна и влюблена (2 сезон)	https://kinokrad.co/327365-populyarna-i-vlyublena-2-sezon.html	8	2018	США	драма, мелодрама	Норман Бакли, Роджер Камбл, Рон Лагомарсино	42
788	Гений (2 сезон)	https://kinokrad.co/326729-geniy-2-sezon.html	7	2018	США	драма, биография, история	Кеннет Биллер, Кевин Хукс, Джеймс Хоуз	43
789	Взлет/Школа драмы (1 сезон)	https://kinokrad.co/326375-shkoly-dramy-1-sezon.html	8	2018	США	драма	Патрик Р. Норрис, Розмари Родригез, Майк Кэхилл	60
790	Чёрные бушлаты (1 сезон)	https://kinokrad.co/325652-chernye-bushlaty.html	6	2018	Россия	военный	Виталий Воробьев	51
791	Крепость Бадабер (1 сезон)	https://kinokrad.co/325481-krepost-badaber-1-sezon.html	8	2018	Россия	драма, военный	Кирилл Белевич	45
792	Пожарная часть 19 (1 сезон)	https://kinokrad.co/327344-pozharnaya-chast-19-1-sezon.html	7	2018	США	боевик, триллер, драма, мелодрама	Пэрис Барклай, Марисоль Торрес, Мэри Лу Белли	60
793	Сплошной отстой! (1 сезон)	https://kinokrad.co/325478-sploshnoy-otstoy-1-sezon.html	7	2018	США	комедия	Майкл Мохан, Ри Руссо-Янг	30
794	Последняя статья журналиста (1 сезон)	https://kinokrad.co/324539-poslednyaya-statya-zhurnalista-1-sezon.html	7	2018	Россия	драма, криминал, детектив	Виктор Татарский, Евгений Сологалов	50
795	Секретарша (1 сезон)	https://kinokrad.co/324500-sekretarsha-1-sezon.html	6	2018	Россия	драма, детектив	Радда Новикова	50
796	Двойная жизнь (1 сезон)	https://kinokrad.co/324455-dvoynaya-zhizn-1-sezon.html	5	2018	Россия	мелодрама	Игорь Мужжухин	50
797	Большой куш (2 сезон)	https://kinokrad.co/329417-bolshoy-kush-2-sezon.html	8	2018	Великобритания, США	комедия, криминал	Лоуренс Гоф, Николас Рентон, Луис Прието	60
798	Закон Мёрфи (2 сезон)	https://kinokrad.co/329408-zakon-merfi-2-sezon.html	6	2018	США, Новая Зеландия	мультфильм, фэнтези, боевик, комедия, семейный	Роберт Хьюз, Боб Бауэн, Chris Ybarra	12
799	Железный кулак (2 сезон)	https://kinokrad.co/329405-zheleznyy-kulak-2-sezon.html	6	2018	США	фантастика, фэнтези, боевик, криминал, приключения	Стивен Серджик, Джон Дал, Фэррен Блэкберн	55
800	Игроки / Футболисты (4 сезон)	https://kinokrad.co/329081-igroki-futbolisty-4-sezon.html	7	2018	США	драма, комедия, спорт	Джулиан Фарино, Саймон Селлан Джоунс, Дэвид Катценберг	30
801	Чемпионы (1 сезон)	https://kinokrad.co/332555-chempiony-1-sezon.html	6	2018	США	комедия	Майкл Спиллер, Гита Патель, Мэгги Кэри	30
802	Возвращение домой (1 сезон)	https://kinokrad.co/332552-vozvraschenie-domoy-1-sezon.html	5	2018	США	триллер, драма	Сэм Эсмейл	30
803	Счастливы вместе (1 сезон)	https://kinokrad.co/332381-schastlivy-vmeste-1-sezon.html	7	2018	США	комедия	Энди Экерман, Фил Льюис, Джефф Гринштейн	30
804	Звоните ДиКаприо! (1 сезон)	https://kinokrad.co/332534-zvonite-dikaprio-1-sezon.html	7	2018	Россия	комедия, драма	Жора Крыжовников	48
805	Метод Комински (1 сезон)	https://kinokrad.co/332531-metod-kominski-1-sezon.html	7	2018	США	комедия	Энди Теннант, Бет МакКарти-Миллер, Дональд Питри	30
806	Беглецы (2 сезон)	https://kinokrad.co/332504-beglecy-2-sezon.html	5	2018	США	фантастика, боевик, драма	Джеффри В. Бёрд, Рэмси Никелл, Патрик Р. Норрис	60
807	Путешественники (3 сезон)	https://kinokrad.co/332501-puteshestvenniki-3-sezon.html	8	2018	Канада, США	фантастика, триллер, драма, детектив	Энди Микита, Аманда Таппинг, Уильям Варинг	45
808	Грязный Джон (1 сезон)	https://kinokrad.co/332495-gryaznyy-dzhon-1-sezon.html	6	2018	США	драма	Джеффри Рейнер	50
809	Гуль (1 сезон)	https://kinokrad.co/329078-gul-1-sezon.html	7	2018	Индия	ужасы, триллер	Патрик Грэхэм	44
810	Бриджит и Имон (3 сезон)	https://kinokrad.co/332492-bridzhit-i-imon-3-sezon.html	7	2018	Ирландия	комедия	Джейсон Батлер	30
811	Лёгкий как пёрышко (1 сезон)	https://kinokrad.co/332480-legkiy-kak-peryshko-1-sezon.html	7	2018	США	триллер	Алексис О. Коричински, Джеффри В. Бёрд, Чад Лоу	23
812	Пуля (1 сезон)	https://kinokrad.co/332471-pulya-1-sezon.html	6	2018	Россия	детектив	Алексей Быстрицкий	48
813	Курортный роман (1 сезон)	https://kinokrad.co/329129-kurortnyy-roman-1-sezon.html	5	2018	Россия	комедия	Игорь Мужжухин	48
814	Тревожные звоночки (1 сезон)	https://kinokrad.co/329057-trevozhnye-zvonochki-1-sezon.html	7	2018	США	комедия	Роберт Деламер	30
815	Разочарование (1 сезон)	https://kinokrad.co/329012-razocharovanie-1-sezon.html	8	2018	США	мультфильм, фэнтези, комедия, приключения	Уэсли Арчер, Фрэнк Марино, David D. Au	30
816	Джек Райан (1 сезон)	https://kinokrad.co/329003-dzhek-rayan-1-sezon.html	9	2018	США	боевик, триллер, драма	Патрисия Ригген, Дэниэл Сакхайм, Дэнни Гордон	60
817	Кунг-фу панда: Лапки судьбы (1 сезон)	https://kinokrad.co/335488-kung-fu-panda-lapki-sudby-1-sezon.html	8	2018	США	мультфильм, фэнтези, боевик, комедия, приключения, семейный	Лэйн Луэрас, Джеймс Вуттон, Rhianna Williams	24
818	Стандарты красоты (1 сезон)	https://kinokrad.co/332468-standarty-krasoty-1-sezon.html	5	2018	Россия	мелодрама, комедия	Вартан Акопян, Влад Якин	44
819	Дом цветов (1 сезон)	https://kinokrad.co/329000-dom-cvetov-1-sezon.html	7	2018	Мексика	комедия	Маноло Каро Серрано	60
820	Американский папаша (14 сезон)	https://kinokrad.co/325727-amerikanskiy-papasha-14-sezon.html	6	2018	США	мультфильм, комедия	Рон Хьюгарт, Брент Вудс, Энтони Льои	22
821	Мёртвое озеро (1 сезон)	https://kinokrad.co/334969-mertvoe-ozero-1-sezon.html	6	2018	Россия	триллер	Роман Прыгунов	48
822	Московские тайны. Опасный переплет (1 сезон)	https://kinokrad.co/335461-moskovskie-tayny.-opasnyy-pereplet-1-sezon.html	5	2018	Россия	детектив	Антон Шарапов	90
823	Спасение (2 сезон)	https://kinokrad.co/328265-spasenie-2-sezon.html	7	2018	США	фантастика, триллер, драма	Стюарт Гиллард, Кеннет Финк, Дэн Лернер	43
824	Деффчонки (6 сезон)	https://kinokrad.co/328988-deffchonki-6-sezon.html	6	2018	Россия	комедия	Сергей Корягин	24
825	Бесстыдники (9 сезон)	https://kinokrad.co/330218-besstydniki-9-sezon.html	8	2018	США	драма, комедия	Марк Майлод, Кристофер Чулак, Джон Уэллс	55
826	В поисках... (1 сезон)	https://kinokrad.co/328910-v-poiskah.-1-sezon.html	5	2018	США	документальный	Эдди Шмидт	41
827	Чужая дочь (1 сезон)	https://kinokrad.co/325178-chuzhaya-doch-1-sezon.html	7	2018	Россия	мелодрама, детектив, криминал	Сергей Газаров	50
828	Девчонки из Дерри (1 сезон)	https://kinokrad.co/325160-devchonki-iz-derri-1-sezon.html	6	2018	Великобритания	комедия	Майкл Леннокс	30
829	Всё о Вашингтонах (1 сезон)	https://kinokrad.co/328913-vse-o-vashingtonah-1-sezon.html	4	2018	США	комедия, музыка	Дон Скардино, Линда Мендоса, Кимберли МакКалло	25
830	Большая игра (1 сезон)	https://kinokrad.co/328874-bolshaya-igra-1-sezon.html	7	2018	Россия	комедия, спорт	Байбулат Батуллин	24
1818	Осиное гнездо (1 сезон)	https://kinokrad.co/325079-osinoe-gnezdo-1-sezon.html	6	2017	Россия	мелодрама	Сергей Лялин	45
831	Крейг из царства Ручья (1 сезон)	https://kinokrad.co/329015-kreyg-iz-carstva-ruchya-1-sezon.html	6	2018	США	мультфильм, короткометражка, комедия, приключения	Мэтт Барнетт, Бен Левин	11
832	Невинные (1 сезон)	https://kinokrad.co/328871-nevinnye-1-sezon.html	6	2018	Великобритания	фантастика, триллер, драма, мелодрама	Фэррен Блэкберн, Джеми Донахью	60
833	МакМафия (1 сезон)	https://kinokrad.co/324392-makmafiya-1-sezon.html	8	2018	Великобритания, США	триллер, драма, криминал	Джеймс Уоткинс	60
834	Расследования Мердока (12 сезон)	https://kinokrad.co/329639-rassledovaniya-merdoka-12-sezon.html	7	2018	Канада, Великобритания	драма, криминал, детектив	Харви Кросслэнд, Лори Линд, Кэл Кунс	43
835	Стартап (3 сезон)	https://kinokrad.co/331742-startap-3-sezon.html	7	2018	США	триллер, криминал	Бен Кетаи, Оливер Блэкберн, Луис Прието	44
836	Карточный домик (6 сезон)	https://kinokrad.co/331688-kartochnyy-domik-6-sezon.html	7	2018	США	драма	Джеймс Фоули, Робин Райт, Джон Дэвид Коулз	50
837	Карточный домик (5 сезон)	https://kinokrad.co/331685-kartochnyy-domik-5-sezon.html	7	2018	США	драма	Джеймс Фоули, Робин Райт, Джон Дэвид Коулз	50
838	Полицейский с Рублёвки (4 сезон)	https://kinokrad.co/331250-policeyskiy-s-rublevki-4-sezon.html	6	2018	Россия	криминал, комедия, драма	Илья Куликов	48
839	Улётный экипаж (2 сезон)	https://kinokrad.co/331670-uletnyy-ekipazh-2-sezon.html	7	2018	Россия	комедия	Марюс Вайсберг, Ольга Липатова, Дмитрий Губарев	24
840	Осколки души (1 сезон)	https://kinokrad.co/331634-oskolki-dushi-1-sezon.html	5	2018	Турция	боевик, драма	Серкан Биринджи	120
841	Куку (4 сезон)	https://kinokrad.co/330866-kuku-4-sezon.html	6	2018	Великобритания	комедия	Бен Тэйлор, Пол Мерфи, Бен Грегор	22
842	Неуловимые (1 сезон)	https://kinokrad.co/331550-neulovimye-1-sezon.html	5	2018	Россия	комедия, приключения	Владимир Виноградов	47
843	Ненастье (1 сезон)	https://kinokrad.co/331523-nenaste-1-sezon.html	7	2018	Россия	драма	Сергей Урсуляк	45
844	Дуэт по праву (1 сезон)	https://kinokrad.co/331520-duet-po-pravu-1-sezon.html	4	2018	Россия	мелодрама, детектив	Владимир Мельниченко, Михаил Журавкин, Александр Горновский	44
845	Воронины (22 сезон)	https://kinokrad.co/329159-voroniny-22-sezon.html	7	2018	Россия	комедия, приключения, семейный	Александр Жигалкин, Леонид Коновалов, Георгий Дронов	24
846	Никто (2 сезон)	https://kinokrad.co/326921-nikto-2-sezon.html	7	2018	США	комедия	Майкл МакДональд, Бен Фэлкоун	30
847	Американцы (6 сезон)	https://kinokrad.co/326291-amerikancy-6-sezon.html	7	2018	США	триллер, драма, криминал, детектив	Крис Лонг, Дэниэл Сакхайм, Томас Шламми	43
848	Разделенные вместе (1 сезон)	https://kinokrad.co/326927-razdelennye-vmeste-1-sezon.html	8	2018	США	комедия	Дин Холлэнд, Хелен Хант, Джей Карас	30
849	Босс-молокосос: Снова в деле (1 сезон)	https://kinokrad.co/336163-boss-molokosos-snova-v-dele-1-sezon.html	8	2018	США	мультфильм, фэнтези, комедия, приключения, семейный	Pete Jacobs, Christo Stamboliev, Аллан Якобсен	25
850	Сотня (6 сезон)	https://kinokrad.co/337270-sotnya-6-sezon.html	7	2018	США	фантастика, драма, детектив	Дин Уайт, П.Дж. Пеше, Эд Фрэйман	43
851	Дальнобойщик (1 сезон)	https://kinokrad.co/326894-dalnoboyschik-1-sezon.html	4	2018	Россия	мелодрама	Андрей Мармонтов	48
852	Наследие (1 сезон)	https://kinokrad.co/331637-nasledie-1-sezon.html	8	2018	США	фэнтези, драма, детектив, приключения, ужасы	Крис Грисмер, Пол Уэсли, Майкл А. Алловиц	45
853	СашаТаня (6 сезон)	https://kinokrad.co/326765-sashatanya-6-sezon.html	6	2018	Россия	комедия	Сергей Казачанский, Михаил Старчак, Андрей Богатырев	24
854	Развод (2 сезон)	https://kinokrad.co/337223-razvod-2-sezon.html	6	2018	США	драма, комедия	Адам Бернштейн, Джесси Перец, Райан Кейс	30
855	Приключения Кота в сапогах (6 сезон)	https://kinokrad.co/335971-priklyucheniya-kota-v-sapogah-6-sezon.html	7	2018	США	мультфильм, фэнтези, боевик, комедия, приключения, семейный	Джонни Кастучиано, Рой Бурдин, Бен Джуоно	24
856	Наследный принц (1 сезон)	https://kinokrad.co/326699-naslednyy-princ-1-sezon.html	6	2018	Корея Южная	мелодрама, история	Ким Джон-мин	70
857	Приключения Кота в сапогах (5 сезон)	https://kinokrad.co/335968-priklyucheniya-kota-v-sapogah-5-sezon.html	7	2018	США	мультфильм, фэнтези, комедия, приключения, семейный	Джонни Кастучиано, Рой Бурдин, Бен Джуоно	24
858	Я – зомби (4 сезон)	https://kinokrad.co/325880-ya-zombi-4-sezon.html	7	2018	США	ужасы, драма, комедия, криминал	Майкл Филдс, Майрзи Алмас, Джейсон Блум	42
859	Террор (1 сезон)	https://kinokrad.co/326225-terror-1-sezon.html	8	2018	США	ужасы, драма	Тим Милантс, Эдвард Бергер, Серджо Мимика-Геззан	60
860	Ивановы-Ивановы (2 сезон)	https://kinokrad.co/325748-ivanovy-ivanovy-2-sezon.html	8	2018	Россия	комедия	Антон Федотов	24
861	Простоквашино (1 сезон)	https://kinokrad.co/326360-prostokvashino-1-sezon.html	6	2018	Россия	мультфильм, детский	Михаил Солошенко	6
1942	Миссии (1 сезон)	https://kinokrad.co/318158-missii-1-sezon-2017.html	6	2017	Франция	фантастика	Жюльен Лякомб	30
862	По расчёту (2 сезон)	https://kinokrad.co/326339-po-raschetu-2-sezon.html	5	2018	США	драма	Джонас Пейт, Кэрол Бенкер, Лукас Эттлин	60
863	Ты, Я, Она (3 сезон)	https://kinokrad.co/325979-ty-ya-ona-3-sezon.html	7	2018	США	драма, мелодрама, комедия	Сара Ст. Онге, Ниша Ганатра	28
864	Мельник (1 сезон)	https://kinokrad.co/327404-melnik-1-sezon.html	5	2018	Россия	детектив	Станислав Мареев	48
865	Бессонница (1 сезон)	https://kinokrad.co/326969-bessonnica-1-sezon.html	5	2018	США	боевик, драма	Вячеслав Яковлев	60
866	Блестящая карьера (1 сезон)	https://kinokrad.co/333457-blestyaschaya-karera-1-sezon.html	7	2018	Беларусь, Украина	мелодрама	Олег Фесенко	47
867	Галина (1 сезон)	https://kinokrad.co/326840-galina-1-sezon.html	4	2018	Россия	мелодрама	Эдуард Пальмов	60
868	Радуга жизни (1 сезон)	https://kinokrad.co/333376-raduga-zhizni-1-sezon.html	3	2018	Россия	мелодрама	Сергей Лялин	45
869	Механизм (1 сезон)	https://kinokrad.co/326204-mehanizm-1-sezon.html	6	2018	Бразилия	триллер, драма, криминал	Фелипе Прадо, Жозе Падилья, Маркус Прадо	41
870	Первый раз прощается (1 сезон)	https://kinokrad.co/326201-pervyy-raz-proschaetsya-1-sezon.html	4	2018	Россия	детектив, мелодрама	Владимир Харченко-Куликовский	45
871	Диета из Санта-Клариты (2 сезон)	https://kinokrad.co/326183-dieta-iz-santa-klarity-2-sezon.html	8	2018	США	ужасы, комедия	Марк Баклэнд, Кен Куопис, Стив Пинк	30
872	Соучастник (1 сезон)	https://kinokrad.co/326180-souchastnik-1-sezon.html	7	2018	Великобритания, США	триллер, драма, криминал, детектив	С.Дж. Кларксон	57
873	Охотники на троллей (3 сезон)	https://kinokrad.co/327398-ohotniki-na-trolley-3-sezon.html	8	2018	США, Мексика	мультфильм, фэнтези, комедия, приключения, семейный	Родриго Блаас, Эндрю Л. Шмидт, Илэйн Боган	23
874	Хэп и Леонард (3 сезон)	https://kinokrad.co/326153-hep-i-leonard-3-sezon.html	8	2018	США	триллер, драма, криминал	Джим Микл, Абе Сильвия, Ник Гомез	60
875	Брокмайр (2 сезон)	https://kinokrad.co/326726-brokmayr-2-sezon.html	6	2018	США	драма, комедия, спорт	Тим Киркби, Морис Мэрэбл	30
876	Дорога из жёлтого кирпича (1 сезон)	https://kinokrad.co/326156-doroga-iz-zheltogo-kirpicha-1-sezon.html	4	2018	Россия	мелодрама	Екатерина Шагалова	45
877	Родные пенаты (1 сезон)	https://kinokrad.co/326057-rodnye-penaty-1-sezon.html	4	2018	Россия	мелодрама	Михаил Жерневский	180
878	Операция «Мухаббат» (1 сезон)	https://kinokrad.co/326684-operaciya-muhabbat-1-sezon.html	6	2018	Россия, Украина	драма, мелодрама, триллер, военный	Олег Фомин	44
879	Карппи / Встречный ветер (1 сезон)	https://kinokrad.co/333365-karppi-vstrechnyy-veter-1-sezon.html	6	2018	Финляндия, Германия	триллер, драма, криминал	Рик Йокела	45
880	Космический рубеж (1 сезон)	https://kinokrad.co/326681-kosmicheskiy-rubezh-1-sezon.html	8	2018	США	мультфильм, фантастика, фэнтези, боевик, драма, комедия, приключения	Майк Робертс, Ben Bjelajac, Крис Палушек	30
881	Навстречу тьме (1 сезон)	https://kinokrad.co/332579-navstrechu-tme.html	7	2018	США	ужасы, триллер	Пол Дэвис, Патрик Люссье, Софи Такал	90
882	Барри (1 сезон)	https://kinokrad.co/326480-barri-1-sezon.html	7	2018	США	комедия	Билл Хейдер, Алек Берг, Мэгги Кэри	30
883	Молодёжка (6 сезон)	https://kinokrad.co/328856-molodezhka-6-sezon.html	7	2018	Россия	драма, спорт	Сергей Арланов, Андрей Головков	48
884	Новенькая (7 сезон)	https://kinokrad.co/326675-novenkaya-7-sezon.html	7	2018	США	комедия	Трент О’Доннелл, Эрин О’Мэлли, Джейк Кэздан	22
885	Американская история ужасов (8 сезон)	https://kinokrad.co/333215-amerikanskaya-istoriya-uzhasov-8-sezon.html	7	2018	США	ужасы, триллер, драма	Брэдли Букер, Альфонсо Гомес-Рехон, Майкл Аппендаль	43
886	Визави (4 сезон)	https://kinokrad.co/331892-vizavi-4-sezon.html	8	2018	Испания	триллер, драма	Хесус Кольменар, Сандра Гальего, Хесус Родриго	53
887	Популярна и влюблена (2 сезон)	https://kinokrad.co/327365-populyarna-i-vlyublena-2-sezon.html	8	2018	США	драма, мелодрама	Норман Бакли, Роджер Камбл, Рон Лагомарсино	42
888	Гений (2 сезон)	https://kinokrad.co/326729-geniy-2-sezon.html	7	2018	США	драма, биография, история	Кеннет Биллер, Кевин Хукс, Джеймс Хоуз	43
889	Взлет/Школа драмы (1 сезон)	https://kinokrad.co/326375-shkoly-dramy-1-sezon.html	8	2018	США	драма	Патрик Р. Норрис, Розмари Родригез, Майк Кэхилл	60
890	Чёрные бушлаты (1 сезон)	https://kinokrad.co/325652-chernye-bushlaty.html	6	2018	Россия	военный	Виталий Воробьев	51
891	Крепость Бадабер (1 сезон)	https://kinokrad.co/325481-krepost-badaber-1-sezon.html	8	2018	Россия	драма, военный	Кирилл Белевич	45
892	Пожарная часть 19 (1 сезон)	https://kinokrad.co/327344-pozharnaya-chast-19-1-sezon.html	7	2018	США	боевик, триллер, драма, мелодрама	Пэрис Барклай, Марисоль Торрес, Мэри Лу Белли	60
893	Сплошной отстой! (1 сезон)	https://kinokrad.co/325478-sploshnoy-otstoy-1-sezon.html	7	2018	США	комедия	Майкл Мохан, Ри Руссо-Янг	30
894	Последняя статья журналиста (1 сезон)	https://kinokrad.co/324539-poslednyaya-statya-zhurnalista-1-sezon.html	7	2018	Россия	драма, криминал, детектив	Виктор Татарский, Евгений Сологалов	50
895	Секретарша (1 сезон)	https://kinokrad.co/324500-sekretarsha-1-sezon.html	6	2018	Россия	драма, детектив	Радда Новикова	50
896	Двойная жизнь (1 сезон)	https://kinokrad.co/324455-dvoynaya-zhizn-1-sezon.html	5	2018	Россия	мелодрама	Игорь Мужжухин	50
897	Большой куш (2 сезон)	https://kinokrad.co/329417-bolshoy-kush-2-sezon.html	8	2018	Великобритания, США	комедия, криминал	Лоуренс Гоф, Николас Рентон, Луис Прието	60
898	Закон Мёрфи (2 сезон)	https://kinokrad.co/329408-zakon-merfi-2-sezon.html	6	2018	США, Новая Зеландия	мультфильм, фэнтези, боевик, комедия, семейный	Роберт Хьюз, Боб Бауэн, Chris Ybarra	12
899	Железный кулак (2 сезон)	https://kinokrad.co/329405-zheleznyy-kulak-2-sezon.html	6	2018	США	фантастика, фэнтези, боевик, криминал, приключения	Стивен Серджик, Джон Дал, Фэррен Блэкберн	55
900	Игроки / Футболисты (4 сезон)	https://kinokrad.co/329081-igroki-futbolisty-4-sezon.html	7	2018	США	драма, комедия, спорт	Джулиан Фарино, Саймон Селлан Джоунс, Дэвид Катценберг	30
901	Смертельный улов (14 сезон)	https://kinokrad.co/329348-smertelnyy-ulov-14-sezon.html	6	2018	США	документальный, реальное ТВ, приключения	Том Бирс	55
902	Лучше звоните Солу (4 сезон)	https://kinokrad.co/328691-luchshe-zvonite-solu-4-sezon.html	8	2018	США	драма, криминал	Винс Гиллиган, Томас Шнауз, Адам Бернштейн	46
903	Этюды о свободе (1 сезон)	https://kinokrad.co/329342-etyudy-o-svobode-1-sezon.html	3	2018	Россия	фантастика, триллер, драма	Владимир Мирзоев	25
904	Розовые воротнички (1 сезон)	https://kinokrad.co/329213-rozovye-vorotnichki-1-sezon.html	5	2018	США	криминал	Бен Штайнбауер	60
905	Канцелярская крыса (1 сезон)	https://kinokrad.co/329336-kancelyarskaya-krysa-1-sezon.html	7	2018	Россия	детектив, драма	Иван Глубоков	52
906	Аванпост (1 сезон)	https://kinokrad.co/328583-avanpost-1-sezon.html	7	2018	США	фэнтези, боевик	Джон Лойд, Курт Найт, Кайнен Гриффин	44
907	Безжалостное солнце (1 сезон)	https://kinokrad.co/324338-bezzhalostnoe-solnce-1-sezon.html	6	2018	Великобритания	фантастика, драма, криминал	Брайан Кирк, Ник Роулэнд, Ричард Сеньор	56
908	Озарк (2 сезон)	https://kinokrad.co/329324-ozark-2-sezon.html	8	2018	США	триллер, драма, криминал	Джейсон Бейтман, Эндрю Бернштейн, Эллен Кёрас	60
909	Ищейка (3 сезон)	https://kinokrad.co/329321-ischeyka-3-sezon.html	7	2018	Россия	детектив	Дмитрий Брусникин	50
910	Тайны города Эн (1 сезон)	https://kinokrad.co/327803-tayny-goroda-en-1-sezon.html	6	2018	Россия	детектив, драма	Николай Хомерики	53
911	Стыд. Остин (1 сезон)	https://kinokrad.co/327761-styd.-ostin-1-sezon.html	7	2018	США	драма	Юлие Андем	30
912	Тарантула (1 сезон)	https://kinokrad.co/327728-tarantula-1-sezon.html	6	2018	США	мультфильм	Эдмунд Фонг, David D. Au, Дуэйн Кэри-Хилл	30
913	Благими намерениями (1 сезон)	https://kinokrad.co/327725-blagimi-namereniyami-1-sezon.html	5	2018	Россия	мелодрама, драма	Валерий Ибрагимов	50
914	Умираю со смеху (2 сезон)	https://kinokrad.co/327239-umirayu-so-smehu-2-sezon.html	7	2018	США	драма	Адам Дэвидсон, Джейк Шрейер, Иэн Б. МакДональд	60
915	Так не бывает (1 сезон)	https://kinokrad.co/327719-tak-ne-byvaet-1-sezon.html	6	2018	Россия	комедия	Наталья Хлопецкая	50
916	Быть Сереной (1 сезон)	https://kinokrad.co/327716-byt-serenoy-1-sezon.html	6	2018	США	документальный, спорт	HBO	30
917	Повелители мяча: 9009 (1 сезон)	https://kinokrad.co/327707-poveliteli-myacha-9009-1-sezon.html	5	2018	США	мультфильм, фантастика, боевик, комедия, спорт	Кристи Каракас	11
918	Голиаф (2 сезон)	https://kinokrad.co/327698-goliaf-2-sezon.html	9	2018	США	драма	Лоуренс Триллинг, Дэнни Гордон, Алик Сахаров	60
919	Любимый во Франксе/Милый во Франксе (1 сезон)	https://kinokrad.co/326411-milyy-vo-frankse-1-sezon.html	8	2018	Япония	аниме, мультфильм, боевик, фантастика	Toshifumi Akai, Ацуси Нисигори, Тэнсаи Окамура	24
920	Убийственный класс / Академия смерти (1 сезон)	https://kinokrad.co/333472-ubiystvennyy-klass-akademiya-smerti-1-sezon.html	7	2018	США	боевик, триллер, драма, криминал	Адам Кэйн, Эми Канаан Манн, Ли Толанд Кригер	60
921	Слепое пятно / Слепая зона (4 сезон)	https://kinokrad.co/330026-slepoe-pyatno-slepaya-zona-4-sezon.html	6	2018	США	боевик, триллер, драма, криминал, детектив	Роб Шейденгланц, Дэвид С.Туттман, Дэвид МакУиртер	42
922	Симпсоны (30 сезон)	https://kinokrad.co/329621-simpsony-30-sezon.html	7	2018	США	мультфильм, комедия	Микель Б. Андерсон, Марк Керклэнд, Стивен Дин Мур	22
923	Разделенные вместе (2 сезон)	https://kinokrad.co/332477-razdelennye-vmeste-2-sezon.html	5	2018	США	комедия	Дин Холлэнд, Джей Карас, Адам Дэвидсон	30
924	Государственный секретарь (5 сезон)	https://kinokrad.co/329801-gosudarstvennyy-sekretar-5-sezon.html	5	2018	США	драма	Эрик Столц, Феликс Энрикез Алькала, Роб Дж. Гринли	45
925	Американская домохозяйка (3 сезон)	https://kinokrad.co/330221-amerikanskaya-domohozyayka-3-sezon.html	6	2018	США	комедия	Джон Путч, Мелисса Козар, Крис Кох	30
960	Сорйонен (2 сезон)	https://kinokrad.co/333835-soryonen-2-sezon.html	7	2018	Финляндия, Франция	драма, криминал, детектив	Jyri Kähönen, Жуссо Сирья, Miikko Oikkonen	60
926	Легенды завтрашнего дня (4 сезон)	https://kinokrad.co/330590-legendy-zavtrashnego-dnya-4-sezon.html	7	2018	США	фантастика, боевик, драма, приключения	Дермотт Даунс, Дэвид Геддес, Грегори Смит	42
927	Полумиры (2 сезон)	https://kinokrad.co/328325-polumiry-2-sezon.html	6	2018	Индонезия	ужасы, фэнтези, триллер, детектив	Джоко Анвар, Экачай Уэкронгтам	60
928	Жаркие улочки (1 сезон)	https://kinokrad.co/328295-zharkie-ulochki-1-sezon.html	4	2018	США	мультфильм	Пит Мишелс, Brian Wysol	10
929	Молодость и её последствия (1 сезон)	https://kinokrad.co/328286-molodost-i-ee-posledstviya-1-sezon.html	7	2018	США	драма, комедия	Аня Адамс, Тесса Хофф	30
930	Жирным шрифтом (2 сезон)	https://kinokrad.co/328115-zhirnym-shriftom-2-sezon.html	8	2018	США	драма	Виктор Нелли мл., Джеми Трэвис, Анна Мастро	45
931	Незабытый (2 сезон)	https://kinokrad.co/328277-nezabytyy-2-sezon.html	8	2018	Великобритания	драма, криминал, детектив	Энди Уилсон	45
932	Фламинго (1 сезон)	https://kinokrad.co/328262-flamingo-1-sezon.html	6	2018	Россия	мелодрама	Александр Ефремов	60
933	Сакральные игры (1 сезон)	https://kinokrad.co/328244-sakralnye-igry-1-sezon.html	7	2018	Индия, США	драма, криминал, детектив, триллер	Анураг Кашьяп, Викрамадитья Мотване	50
934	Пока не поздно (1 сезон)	https://kinokrad.co/328175-poka-ne-pozdno-1-sezon.html	7	2018	Корея Южная	мелодрама, фэнтези	Ким Хён-щик	80
935	Свидетели (2 сезон)	https://kinokrad.co/328862-svideteli-2-sezon.html	7	2018	Франция, Бельгия	криминал, детектив	Эрве Адмар, Эм Пинк Кристофало	52
936	СашаТаня (7 сезон)	https://kinokrad.co/328715-sashatanya-7-sezon.html	6	2018	Россия	комедия	Сергей Казачанский, Михаил Старчак, Андрей Богатырев	24
937	Любовь по приказу (1 сезон)	https://kinokrad.co/328808-lyubov-po-prikazu-1-sezon.html	6	2018	Россия	мелодрама	Николай Борц	57
938	Уэнтуорт (6 сезон)	https://kinokrad.co/328097-uentuort-6-sezon.html	7	2018	Австралия	драма, криминал	Кевин Карлин, Катрин Миллар, Стив Джодрелл	45
939	Маргиналы и монстры Бобкэта Голдтуэйта (1 сезон)	https://kinokrad.co/328592-marginaly-i-monstry-bobketa-goldtueyta-1-sezon.html	6	2018	США	ужасы, фантастика, фэнтези, комедия	Бобкэт Голдтуэйт	25
940	Господа полицейские (1 сезон)	https://kinokrad.co/328694-gospoda-policeyskie-1-sezon.html	4	2018	Россия	детектив	Роман Славин	50
941	Любовники (4 сезон)	https://kinokrad.co/328673-lyubovniki-4-sezon.html	6	2018	США	драма	Джеффри Рейнер, Джон Дал, Райан Флек	60
942	Одиноки вместе (2 сезон)	https://kinokrad.co/328664-odinoki-vmeste-2-sezon.html	6	2018	США	комедия	Тамра Дэвис, Саманта Бэйли, Кэт Койро	30
943	Методом проб и ошибок (2 сезон)	https://kinokrad.co/328493-metodom-prob-i-oshibok-2-sezon.html	7	2018	США	комедия, детектив	Джеффри Блитц, Мэттью Сон, Ребекка Эшер	22
944	Воронины (21 сезон)	https://kinokrad.co/325781-voroniny-21-sezon.html	7	2018	Россия	комедия, семейный	Александр Жигалкин, Леонид Коновалов, Георгий Дронов	24
945	Гранд (2 сезон)	https://kinokrad.co/334348-grand-2-sezon.html	7	2018	Россия	комедия	Дмитрий Грибанов	24
946	Вайс (6 сезон)	https://kinokrad.co/328067-vays-6-sezon.html	5	2018	США	документальный, новости	Шэйн Смит, Nikolia Apostolou, Koukoulis Konstantinos	30
947	Купчино (1 сезон)	https://kinokrad.co/331397-kupchino-1-sezon.html	5	2018	Россия	детектив	Армен Назикян	49
948	Декабристка (1 сезон)	https://kinokrad.co/331394-dekabristka-1-sezon.html	3	2018	Россия	драма	Ирина Гедрович, Олег Чевелев	50
949	Гвиана (2 сезон)	https://kinokrad.co/335245-gviana-2-sezon.html	8	2018	Франция	драма, приключения	Ким Шапирон, Филипп Трибуа, Фабьен Нури	60
950	Ранчо (3 сезон)	https://kinokrad.co/327656-rancho-3-sezon.html	6	2018	США	комедия	Дэвид Трейнер	30
951	Бюро легенд (4 сезон)	https://kinokrad.co/331373-byuro-legend-4-sezon.html	8	2018	Франция	драма	Эрик Рошан, Antoine Chevrollier, Элье Систерн	52
952	Желтый глаз тигра (1 сезон)	https://kinokrad.co/331337-zheltyy-glaz-tigra-1-sezon.html	7	2018	Россия	боевик, криминал	Марк Горобец	47
953	СеняФедя (1 сезон)	https://kinokrad.co/331334-senyafedya-1-sezon.html	7	2018	Россия	комедия	Антон Федотов	24
954	Дожить до любви (1 сезон)	https://kinokrad.co/331304-dozhit-do-lyubvi-1-sezon.html	4	2018	Россия	мелодрама	Владимир Балкашинов	52
955	Одна ложь на двоих (1 сезон)	https://kinokrad.co/331193-odna-lozh-na-dvoih-1-sezon.html	4	2018	Россия	драма	Алексей Праздников	44
956	Ольга (3 сезон)	https://kinokrad.co/331088-olga-3-sezon.html	7	2018	Россия	комедия	Алексей Нужный, Игорь Волошин, Антон Борматов	24
957	Дом Рэйвен (2 сезон)	https://kinokrad.co/328022-dom-reyven-2-sezon.html	7	2018	США	комедия, семейный	Эрик Дин Ситон, Робби Кантримэн, Виктор Гонзалез	22
958	Мстители, общий сбор! /Команда «Мстители» (5 сезон)	https://kinokrad.co/330353-mstiteli-obschiy-sbor-komanda-mstiteli-5-sezon.html	6	2018	США	мультфильм, приключения, фэнтези, фантастика, боевик	Джефф Аллен, Эрик Радомски, Тим Элдред	22
959	Лучше, чем люди (1 сезон)	https://kinokrad.co/332018-luchshe-chem-lyudi-1-sezon.html	7	2018	Россия	драма, фантастика	Андрей Джунковский	50
961	Виктория (3 сезон)	https://kinokrad.co/333838-viktoriya-3-sezon.html	7	2018	Великобритания	драма, биография, история	Джеффри Сакс, Оливер Блэкберн, Том Вон	60
962	Миллион мелочей (1 сезон)	https://kinokrad.co/329339-million-melochey-1-sezon.html	6	2018	США	драма, комедия	Джеймс Гриффитс, Зинга Стюарт, Ричард Дж. Льюис	43
963	Как избежать наказания за убийство (5 сезон)	https://kinokrad.co/330224-kak-izbezhat-nakazaniya-za-ubiystvo-5-sezon.html	7	2018	США	триллер, драма, криминал, детектив	Билл Д’Элиа, Джет Уилкинсон, Лора Иннес	43
964	Юные преступники (1 сезон)	https://kinokrad.co/325907-yunye-prestupniki.html	7	2018	Ирландия	комедия, криминал, приключения	Питер Футт	83
965	Форс-мажоры (8 сезон)	https://kinokrad.co/328448-fors-mazhory-8-sezon.html	7	2018	США	драма, комедия	Антон Кроппер, Майкл Смит, Кевин Брэй	43
966	По ту сторону/Двойник  (2 сезон)	https://kinokrad.co/332453-po-tu-storonu-dvoynik-2-sezon.html	6	2018	США	фантастика, триллер, драма	Дженнифер Гетцингер, Алик Сахаров, Стивен Уильямс	60
967	Смертельное оружие (3 сезон)	https://kinokrad.co/329657-smertelnoe-oruzhie-3-sezon.html	7	2018	США	боевик, триллер, драма, криминал	Стив Бойум, Ник Копус, Ларри Тенг	44
968	Ныряльщица за жемчугом (1 сезон)	https://kinokrad.co/332450-nyryalschica-za-zhemchugom-1-sezon.html	4	2018	Россия	детектив	Наталия Микрюкова	44
969	Неживые / Безжизненные (1 сезон)	https://kinokrad.co/332411-nezhivye-bezzhiznennye-1-sezon.html	5	2018	Турция	фэнтези, драма	Alphan Eseli	50
970	В постели (1 сезон)	https://kinokrad.co/332414-v-posteli-1-sezon.html	5	2018	Россия	драма, комедия	Шота Гамисония	6
971	Четвёртая смена (1 сезон)	https://kinokrad.co/332399-chetvertaya-smena-1-sezon.html	6	2018	Россия	боевик	Алексей Быстрицкий, Степан Коршунов	44
972	Расскажи мне сказку (1 сезон)	https://kinokrad.co/331553-rasskazhi-mne-skazku-1-sezon.html	7	2018	США	триллер	Лиз Фридлендер, Марк Тондерай, Солван Наим	52
973	Побег из тюрьмы Даннемора (1 сезон)	https://kinokrad.co/331847-pobeg-iz-tyurmy-dannemora-1-sezon.html	8	2018	США	драма	Бен Стиллер	44
974	Чужая кровь (1 сезон)	https://kinokrad.co/332315-chuzhaya-krov-1-sezon.html	5	2018	Россия	драма	Ольга Субботина	44
975	Незнакомцы (1 сезон)	https://kinokrad.co/332366-neznakomcy-1-sezon.html	7	2018	Китай, Гонконг, Великобритания, Макао, Тайвань	триллер, драма	Пол Эндрю Уильямс	60
976	Нарко: Мексика (1 сезон)	https://kinokrad.co/332363-narko-meksika-1-sezon.html	8	2018	США	драма, криминал	Андрес Байс, Амат Эскаланте, Алонсо Руис Палашиос	50
977	Доктор Кто (11 сезон)	https://kinokrad.co/330446-doktor-kto-11-sezon.html	6	2018	Великобритания	фантастика, драма, комедия, приключения, семейный	Грэм Харпер, Эрос Лин, Дуглас Маккиннон	43
978	Нация Z (5 сезон)	https://kinokrad.co/329471-naciyaz-5-sezon.html	6	2018	США	ужасы, фантастика, боевик, драма, комедия	Тим Кокс, Дэн Мерчант, Джон Хайамс	43
979	Приключения Кота в сапогах (4 сезон)	https://kinokrad.co/335956-priklyucheniya-kota-v-sapogah-4-sezon.html	7	2018	США	мультфильм, фэнтези, комедия, приключения, семейный	Джонни Кастучиано, Рой Бурдин, Бен Джуоно	23
980	Детки в порядке (1 сезон)	https://kinokrad.co/333188-detki-v-poryadke-1-sezon.html	5	2018	США	комедия	Рэндолл Айнхорн, Мэттью Сон, Джей Карас	30
981	Морская полиция: Лос-Анджелес (10 сезон)	https://kinokrad.co/331589-morskaya-policiya-los-andzheles-10-sezon.html	6	2018	США	боевик, драма, криминал	Дэннис Смит, Терренс О’Хара, Тони Уормби	43
982	Чужая жизнь (1 сезон)	https://kinokrad.co/335935-chuzhaya-zhizn-1-sezon.html	6	2018	Россия	военный, драма	Олег Фомин	55
983	Закон и порядок. Специальный корпус (20 сезон)	https://kinokrad.co/330851-zakon-i-poryadok.-specialnyy-korpus-20-sezon.html	6	2018	США	триллер, драма, криминал, детектив	Дэвид Платт, Питер Лето, Жан Де Сегонзак	43
984	Когда солнце взойдёт (1 сезон)	https://kinokrad.co/326837-kogda-solnce-vzoydet-1-sezon.html	3	2018	Россия	мелодрама	Евгений Семенов	90
985	Хитрость (1 сезон)	https://kinokrad.co/326537-hitrost-1-sezon.html	8	2018	США	драма	Майкл Леманн, Роб Харди, Дэвид Наттер	41
986	Убивая Еву (1 сезон)	https://kinokrad.co/326477-ubivaya-evu-1-sezon.html	8	2018	США	триллер	Джон Ист, Дэймон Томас, Гарри Брэдбир	47
987	Тайная власть (1 сезон)	https://kinokrad.co/326651-taynaya-vlast-1-sezon.html	7	2018	Великобритания	боевик, драма	Роберт Коннолли, Мэттью Паркхилл	45
988	Хорошая борьба (2 сезон)	https://kinokrad.co/326315-horoshaya-borba-2-sezon.html	8	2018	США	драма	Джим МакКэй, Брук Кеннеди, Рон Андервуд	45
989	Криптон (1 сезон)	https://kinokrad.co/326678-kripton-1-sezon.html	7	2018	США	фантастика, боевик, драма, приключения	Киаран Доннелли, Кит Боак, Кейт Дэннис	45
990	Мехмед – завоеватель мира. Фатих/Завоеватель (1 сезон)	https://kinokrad.co/326807-zavoevatel-1-sezon.html	7	2018	Турция	боевик, военный, история	Джевдет Мерджан	120
991	Трагедия в Уэйко (1 сезон)	https://kinokrad.co/326795-tragediya-v-ueyko-1-sezon.html	8	2018	США	триллер, драма, криминал	Джон Эрик Даудл, Дэнни Гордон	47
992	Священник (1 сезон)	https://kinokrad.co/333191-svyaschennik-1-sezon.html	6	2018	Корея Южная	триллер, ужасы, фэнтези	Ким Джон-хён	80
993	Тарзан и Джейн (2 сезон)	https://kinokrad.co/333152-tarzan-i-dzheyn-2-sezon.html	6	2018	США	мультфильм, фантастика, боевик, комедия, приключения, семейный	Джесси Ликман, Стив Болл	22
994	Призраки дома на холме (1 сезон)	https://kinokrad.co/333041-prizraki-doma-na-holme-1-sezon.html	8	2018	США	драма, ужасы, мистика	Майк Флэнеган	50
995	Кардинал (2 сезон)	https://kinokrad.co/324275-kardinal-2-sezon.html	7	2018	Канада	триллер, драма, криминал	Дэниэл Гру, Джефф Ренфро	42
996	Гранд (1 сезон)	https://kinokrad.co/328745-grand-1-sezon.html	7	2018	Россия	комедия	Дмитрий Грибанов	24
997	Зеркало жизни (1 сезон)	https://kinokrad.co/337134-zerkalo-zhizni-1-sezon.html	6	2018	Бразилия	фэнтези, драма	Педро Васконцелос	40
998	Зорко лишь сердце (1 сезон)	https://kinokrad.co/329261-zorko-lish-serdce-1-sezon.html	5	2018	Россия	мелодрама	Кира Ангелина	90
999	Полиция Парадайз (1 сезон)	https://kinokrad.co/329258-policiya-paradayz-1-sezon.html	8	2018	США	мультфильм, комедия, криминал	Matt Garofalo, Brian Mainolfi, Лорен Эндрюс	28
1000	Бойтесь ходячих мертвецов (4 сезон)	https://kinokrad.co/326453-boytes-hodyachih-mertvecov-4-sezon.html	7	2018	США	ужасы, фантастика, триллер, драма	Стефан Шварц, Эндрю Бернштейн, Адам Дэвидсон	44
1001	Смертельный улов (14 сезон)	https://kinokrad.co/329348-smertelnyy-ulov-14-sezon.html	6	2018	США	документальный, реальное ТВ, приключения	Том Бирс	55
1002	Лучше звоните Солу (4 сезон)	https://kinokrad.co/328691-luchshe-zvonite-solu-4-sezon.html	8	2018	США	драма, криминал	Винс Гиллиган, Томас Шнауз, Адам Бернштейн	46
1003	Этюды о свободе (1 сезон)	https://kinokrad.co/329342-etyudy-o-svobode-1-sezon.html	3	2018	Россия	фантастика, триллер, драма	Владимир Мирзоев	25
1004	Розовые воротнички (1 сезон)	https://kinokrad.co/329213-rozovye-vorotnichki-1-sezon.html	5	2018	США	криминал	Бен Штайнбауер	60
1005	Канцелярская крыса (1 сезон)	https://kinokrad.co/329336-kancelyarskaya-krysa-1-sezon.html	7	2018	Россия	детектив, драма	Иван Глубоков	52
1006	Аванпост (1 сезон)	https://kinokrad.co/328583-avanpost-1-sezon.html	7	2018	США	фэнтези, боевик	Джон Лойд, Курт Найт, Кайнен Гриффин	44
1007	Безжалостное солнце (1 сезон)	https://kinokrad.co/324338-bezzhalostnoe-solnce-1-sezon.html	6	2018	Великобритания	фантастика, драма, криминал	Брайан Кирк, Ник Роулэнд, Ричард Сеньор	56
1008	Озарк (2 сезон)	https://kinokrad.co/329324-ozark-2-sezon.html	8	2018	США	триллер, драма, криминал	Джейсон Бейтман, Эндрю Бернштейн, Эллен Кёрас	60
1009	Ищейка (3 сезон)	https://kinokrad.co/329321-ischeyka-3-sezon.html	7	2018	Россия	детектив	Дмитрий Брусникин	50
1010	Тайны города Эн (1 сезон)	https://kinokrad.co/327803-tayny-goroda-en-1-sezon.html	6	2018	Россия	детектив, драма	Николай Хомерики	53
1011	Стыд. Остин (1 сезон)	https://kinokrad.co/327761-styd.-ostin-1-sezon.html	7	2018	США	драма	Юлие Андем	30
1012	Тарантула (1 сезон)	https://kinokrad.co/327728-tarantula-1-sezon.html	6	2018	США	мультфильм	Эдмунд Фонг, David D. Au, Дуэйн Кэри-Хилл	30
1013	Благими намерениями (1 сезон)	https://kinokrad.co/327725-blagimi-namereniyami-1-sezon.html	5	2018	Россия	мелодрама, драма	Валерий Ибрагимов	50
1014	Умираю со смеху (2 сезон)	https://kinokrad.co/327239-umirayu-so-smehu-2-sezon.html	7	2018	США	драма	Адам Дэвидсон, Джейк Шрейер, Иэн Б. МакДональд	60
1015	Так не бывает (1 сезон)	https://kinokrad.co/327719-tak-ne-byvaet-1-sezon.html	6	2018	Россия	комедия	Наталья Хлопецкая	50
1016	Быть Сереной (1 сезон)	https://kinokrad.co/327716-byt-serenoy-1-sezon.html	6	2018	США	документальный, спорт	HBO	30
1017	Повелители мяча: 9009 (1 сезон)	https://kinokrad.co/327707-poveliteli-myacha-9009-1-sezon.html	5	2018	США	мультфильм, фантастика, боевик, комедия, спорт	Кристи Каракас	11
1018	Голиаф (2 сезон)	https://kinokrad.co/327698-goliaf-2-sezon.html	9	2018	США	драма	Лоуренс Триллинг, Дэнни Гордон, Алик Сахаров	60
1019	Любимый во Франксе/Милый во Франксе (1 сезон)	https://kinokrad.co/326411-milyy-vo-frankse-1-sezon.html	8	2018	Япония	аниме, мультфильм, боевик, фантастика	Toshifumi Akai, Ацуси Нисигори, Тэнсаи Окамура	24
1020	Убийственный класс / Академия смерти (1 сезон)	https://kinokrad.co/333472-ubiystvennyy-klass-akademiya-smerti-1-sezon.html	7	2018	США	боевик, триллер, драма, криминал	Адам Кэйн, Эми Канаан Манн, Ли Толанд Кригер	60
1021	Слепое пятно / Слепая зона (4 сезон)	https://kinokrad.co/330026-slepoe-pyatno-slepaya-zona-4-sezon.html	6	2018	США	боевик, триллер, драма, криминал, детектив	Роб Шейденгланц, Дэвид С.Туттман, Дэвид МакУиртер	42
1022	Симпсоны (30 сезон)	https://kinokrad.co/329621-simpsony-30-sezon.html	7	2018	США	мультфильм, комедия	Микель Б. Андерсон, Марк Керклэнд, Стивен Дин Мур	22
1023	Разделенные вместе (2 сезон)	https://kinokrad.co/332477-razdelennye-vmeste-2-sezon.html	5	2018	США	комедия	Дин Холлэнд, Джей Карас, Адам Дэвидсон	30
1153	Женщина в белом (1 сезон)	https://kinokrad.co/333700-zhenschina-v-belom-1-sezon.html	7	2018	Великобритания	драма	Карл Тиббеттс	55
1024	Государственный секретарь (5 сезон)	https://kinokrad.co/329801-gosudarstvennyy-sekretar-5-sezon.html	5	2018	США	драма	Эрик Столц, Феликс Энрикез Алькала, Роб Дж. Гринли	45
1025	Американская домохозяйка (3 сезон)	https://kinokrad.co/330221-amerikanskaya-domohozyayka-3-sezon.html	6	2018	США	комедия	Джон Путч, Мелисса Козар, Крис Кох	30
1026	Легенды завтрашнего дня (4 сезон)	https://kinokrad.co/330590-legendy-zavtrashnego-dnya-4-sezon.html	7	2018	США	фантастика, боевик, драма, приключения	Дермотт Даунс, Дэвид Геддес, Грегори Смит	42
1027	Полумиры (2 сезон)	https://kinokrad.co/328325-polumiry-2-sezon.html	6	2018	Индонезия	ужасы, фэнтези, триллер, детектив	Джоко Анвар, Экачай Уэкронгтам	60
1028	Жаркие улочки (1 сезон)	https://kinokrad.co/328295-zharkie-ulochki-1-sezon.html	4	2018	США	мультфильм	Пит Мишелс, Brian Wysol	10
1029	Молодость и её последствия (1 сезон)	https://kinokrad.co/328286-molodost-i-ee-posledstviya-1-sezon.html	7	2018	США	драма, комедия	Аня Адамс, Тесса Хофф	30
1030	Жирным шрифтом (2 сезон)	https://kinokrad.co/328115-zhirnym-shriftom-2-sezon.html	8	2018	США	драма	Виктор Нелли мл., Джеми Трэвис, Анна Мастро	45
1031	Незабытый (2 сезон)	https://kinokrad.co/328277-nezabytyy-2-sezon.html	8	2018	Великобритания	драма, криминал, детектив	Энди Уилсон	45
1032	Фламинго (1 сезон)	https://kinokrad.co/328262-flamingo-1-sezon.html	6	2018	Россия	мелодрама	Александр Ефремов	60
1033	Сакральные игры (1 сезон)	https://kinokrad.co/328244-sakralnye-igry-1-sezon.html	7	2018	Индия, США	драма, криминал, детектив, триллер	Анураг Кашьяп, Викрамадитья Мотване	50
1034	Пока не поздно (1 сезон)	https://kinokrad.co/328175-poka-ne-pozdno-1-sezon.html	7	2018	Корея Южная	мелодрама, фэнтези	Ким Хён-щик	80
1035	Свидетели (2 сезон)	https://kinokrad.co/328862-svideteli-2-sezon.html	7	2018	Франция, Бельгия	криминал, детектив	Эрве Адмар, Эм Пинк Кристофало	52
1036	СашаТаня (7 сезон)	https://kinokrad.co/328715-sashatanya-7-sezon.html	6	2018	Россия	комедия	Сергей Казачанский, Михаил Старчак, Андрей Богатырев	24
1037	Любовь по приказу (1 сезон)	https://kinokrad.co/328808-lyubov-po-prikazu-1-sezon.html	6	2018	Россия	мелодрама	Николай Борц	57
1038	Уэнтуорт (6 сезон)	https://kinokrad.co/328097-uentuort-6-sezon.html	7	2018	Австралия	драма, криминал	Кевин Карлин, Катрин Миллар, Стив Джодрелл	45
1039	Маргиналы и монстры Бобкэта Голдтуэйта (1 сезон)	https://kinokrad.co/328592-marginaly-i-monstry-bobketa-goldtueyta-1-sezon.html	6	2018	США	ужасы, фантастика, фэнтези, комедия	Бобкэт Голдтуэйт	25
1040	Господа полицейские (1 сезон)	https://kinokrad.co/328694-gospoda-policeyskie-1-sezon.html	4	2018	Россия	детектив	Роман Славин	50
1041	Любовники (4 сезон)	https://kinokrad.co/328673-lyubovniki-4-sezon.html	6	2018	США	драма	Джеффри Рейнер, Джон Дал, Райан Флек	60
1042	Одиноки вместе (2 сезон)	https://kinokrad.co/328664-odinoki-vmeste-2-sezon.html	6	2018	США	комедия	Тамра Дэвис, Саманта Бэйли, Кэт Койро	30
1043	Методом проб и ошибок (2 сезон)	https://kinokrad.co/328493-metodom-prob-i-oshibok-2-sezon.html	7	2018	США	комедия, детектив	Джеффри Блитц, Мэттью Сон, Ребекка Эшер	22
1044	Воронины (21 сезон)	https://kinokrad.co/325781-voroniny-21-sezon.html	7	2018	Россия	комедия, семейный	Александр Жигалкин, Леонид Коновалов, Георгий Дронов	24
1045	Гранд (2 сезон)	https://kinokrad.co/334348-grand-2-sezon.html	7	2018	Россия	комедия	Дмитрий Грибанов	24
1046	Вайс (6 сезон)	https://kinokrad.co/328067-vays-6-sezon.html	5	2018	США	документальный, новости	Шэйн Смит, Nikolia Apostolou, Koukoulis Konstantinos	30
1047	Купчино (1 сезон)	https://kinokrad.co/331397-kupchino-1-sezon.html	5	2018	Россия	детектив	Армен Назикян	49
1048	Декабристка (1 сезон)	https://kinokrad.co/331394-dekabristka-1-sezon.html	3	2018	Россия	драма	Ирина Гедрович, Олег Чевелев	50
1049	Гвиана (2 сезон)	https://kinokrad.co/335245-gviana-2-sezon.html	8	2018	Франция	драма, приключения	Ким Шапирон, Филипп Трибуа, Фабьен Нури	60
1050	Ранчо (3 сезон)	https://kinokrad.co/327656-rancho-3-sezon.html	6	2018	США	комедия	Дэвид Трейнер	30
1051	Бюро легенд (4 сезон)	https://kinokrad.co/331373-byuro-legend-4-sezon.html	8	2018	Франция	драма	Эрик Рошан, Antoine Chevrollier, Элье Систерн	52
1052	Желтый глаз тигра (1 сезон)	https://kinokrad.co/331337-zheltyy-glaz-tigra-1-sezon.html	7	2018	Россия	боевик, криминал	Марк Горобец	47
1053	СеняФедя (1 сезон)	https://kinokrad.co/331334-senyafedya-1-sezon.html	7	2018	Россия	комедия	Антон Федотов	24
1054	Дожить до любви (1 сезон)	https://kinokrad.co/331304-dozhit-do-lyubvi-1-sezon.html	4	2018	Россия	мелодрама	Владимир Балкашинов	52
1055	Одна ложь на двоих (1 сезон)	https://kinokrad.co/331193-odna-lozh-na-dvoih-1-sezon.html	4	2018	Россия	драма	Алексей Праздников	44
1056	Ольга (3 сезон)	https://kinokrad.co/331088-olga-3-sezon.html	7	2018	Россия	комедия	Алексей Нужный, Игорь Волошин, Антон Борматов	24
1057	Дом Рэйвен (2 сезон)	https://kinokrad.co/328022-dom-reyven-2-sezon.html	7	2018	США	комедия, семейный	Эрик Дин Ситон, Робби Кантримэн, Виктор Гонзалез	22
1058	Мстители, общий сбор! /Команда «Мстители» (5 сезон)	https://kinokrad.co/330353-mstiteli-obschiy-sbor-komanda-mstiteli-5-sezon.html	6	2018	США	мультфильм, приключения, фэнтези, фантастика, боевик	Джефф Аллен, Эрик Радомски, Тим Элдред	22
1059	Лучше, чем люди (1 сезон)	https://kinokrad.co/332018-luchshe-chem-lyudi-1-sezon.html	7	2018	Россия	драма, фантастика	Андрей Джунковский	50
1060	Сорйонен (2 сезон)	https://kinokrad.co/333835-soryonen-2-sezon.html	7	2018	Финляндия, Франция	драма, криминал, детектив	Jyri Kähönen, Жуссо Сирья, Miikko Oikkonen	60
1061	Виктория (3 сезон)	https://kinokrad.co/333838-viktoriya-3-sezon.html	7	2018	Великобритания	драма, биография, история	Джеффри Сакс, Оливер Блэкберн, Том Вон	60
1062	Миллион мелочей (1 сезон)	https://kinokrad.co/329339-million-melochey-1-sezon.html	6	2018	США	драма, комедия	Джеймс Гриффитс, Зинга Стюарт, Ричард Дж. Льюис	43
1063	Как избежать наказания за убийство (5 сезон)	https://kinokrad.co/330224-kak-izbezhat-nakazaniya-za-ubiystvo-5-sezon.html	7	2018	США	триллер, драма, криминал, детектив	Билл Д’Элиа, Джет Уилкинсон, Лора Иннес	43
1064	Юные преступники (1 сезон)	https://kinokrad.co/325907-yunye-prestupniki.html	7	2018	Ирландия	комедия, криминал, приключения	Питер Футт	83
1065	Форс-мажоры (8 сезон)	https://kinokrad.co/328448-fors-mazhory-8-sezon.html	7	2018	США	драма, комедия	Антон Кроппер, Майкл Смит, Кевин Брэй	43
1066	По ту сторону/Двойник  (2 сезон)	https://kinokrad.co/332453-po-tu-storonu-dvoynik-2-sezon.html	6	2018	США	фантастика, триллер, драма	Дженнифер Гетцингер, Алик Сахаров, Стивен Уильямс	60
1067	Смертельное оружие (3 сезон)	https://kinokrad.co/329657-smertelnoe-oruzhie-3-sezon.html	7	2018	США	боевик, триллер, драма, криминал	Стив Бойум, Ник Копус, Ларри Тенг	44
1068	Ныряльщица за жемчугом (1 сезон)	https://kinokrad.co/332450-nyryalschica-za-zhemchugom-1-sezon.html	4	2018	Россия	детектив	Наталия Микрюкова	44
1069	Неживые / Безжизненные (1 сезон)	https://kinokrad.co/332411-nezhivye-bezzhiznennye-1-sezon.html	5	2018	Турция	фэнтези, драма	Alphan Eseli	50
1070	В постели (1 сезон)	https://kinokrad.co/332414-v-posteli-1-sezon.html	5	2018	Россия	драма, комедия	Шота Гамисония	6
1071	Четвёртая смена (1 сезон)	https://kinokrad.co/332399-chetvertaya-smena-1-sezon.html	6	2018	Россия	боевик	Алексей Быстрицкий, Степан Коршунов	44
1072	Расскажи мне сказку (1 сезон)	https://kinokrad.co/331553-rasskazhi-mne-skazku-1-sezon.html	7	2018	США	триллер	Лиз Фридлендер, Марк Тондерай, Солван Наим	52
1073	Побег из тюрьмы Даннемора (1 сезон)	https://kinokrad.co/331847-pobeg-iz-tyurmy-dannemora-1-sezon.html	8	2018	США	драма	Бен Стиллер	44
1074	Чужая кровь (1 сезон)	https://kinokrad.co/332315-chuzhaya-krov-1-sezon.html	5	2018	Россия	драма	Ольга Субботина	44
1075	Незнакомцы (1 сезон)	https://kinokrad.co/332366-neznakomcy-1-sezon.html	7	2018	Китай, Гонконг, Великобритания, Макао, Тайвань	триллер, драма	Пол Эндрю Уильямс	60
1076	Нарко: Мексика (1 сезон)	https://kinokrad.co/332363-narko-meksika-1-sezon.html	8	2018	США	драма, криминал	Андрес Байс, Амат Эскаланте, Алонсо Руис Палашиос	50
1077	Доктор Кто (11 сезон)	https://kinokrad.co/330446-doktor-kto-11-sezon.html	6	2018	Великобритания	фантастика, драма, комедия, приключения, семейный	Грэм Харпер, Эрос Лин, Дуглас Маккиннон	43
1078	Нация Z (5 сезон)	https://kinokrad.co/329471-naciyaz-5-sezon.html	6	2018	США	ужасы, фантастика, боевик, драма, комедия	Тим Кокс, Дэн Мерчант, Джон Хайамс	43
1079	Приключения Кота в сапогах (4 сезон)	https://kinokrad.co/335956-priklyucheniya-kota-v-sapogah-4-sezon.html	7	2018	США	мультфильм, фэнтези, комедия, приключения, семейный	Джонни Кастучиано, Рой Бурдин, Бен Джуоно	23
1080	Детки в порядке (1 сезон)	https://kinokrad.co/333188-detki-v-poryadke-1-sezon.html	5	2018	США	комедия	Рэндолл Айнхорн, Мэттью Сон, Джей Карас	30
1081	Морская полиция: Лос-Анджелес (10 сезон)	https://kinokrad.co/331589-morskaya-policiya-los-andzheles-10-sezon.html	6	2018	США	боевик, драма, криминал	Дэннис Смит, Терренс О’Хара, Тони Уормби	43
1082	Чужая жизнь (1 сезон)	https://kinokrad.co/335935-chuzhaya-zhizn-1-sezon.html	6	2018	Россия	военный, драма	Олег Фомин	55
1083	Закон и порядок. Специальный корпус (20 сезон)	https://kinokrad.co/330851-zakon-i-poryadok.-specialnyy-korpus-20-sezon.html	6	2018	США	триллер, драма, криминал, детектив	Дэвид Платт, Питер Лето, Жан Де Сегонзак	43
1084	Когда солнце взойдёт (1 сезон)	https://kinokrad.co/326837-kogda-solnce-vzoydet-1-sezon.html	3	2018	Россия	мелодрама	Евгений Семенов	90
1085	Хитрость (1 сезон)	https://kinokrad.co/326537-hitrost-1-sezon.html	8	2018	США	драма	Майкл Леманн, Роб Харди, Дэвид Наттер	41
1086	Убивая Еву (1 сезон)	https://kinokrad.co/326477-ubivaya-evu-1-sezon.html	8	2018	США	триллер	Джон Ист, Дэймон Томас, Гарри Брэдбир	47
1087	Тайная власть (1 сезон)	https://kinokrad.co/326651-taynaya-vlast-1-sezon.html	7	2018	Великобритания	боевик, драма	Роберт Коннолли, Мэттью Паркхилл	45
1088	Хорошая борьба (2 сезон)	https://kinokrad.co/326315-horoshaya-borba-2-sezon.html	8	2018	США	драма	Джим МакКэй, Брук Кеннеди, Рон Андервуд	45
1089	Криптон (1 сезон)	https://kinokrad.co/326678-kripton-1-sezon.html	7	2018	США	фантастика, боевик, драма, приключения	Киаран Доннелли, Кит Боак, Кейт Дэннис	45
1090	Мехмед – завоеватель мира. Фатих/Завоеватель (1 сезон)	https://kinokrad.co/326807-zavoevatel-1-sezon.html	7	2018	Турция	боевик, военный, история	Джевдет Мерджан	120
1091	Трагедия в Уэйко (1 сезон)	https://kinokrad.co/326795-tragediya-v-ueyko-1-sezon.html	8	2018	США	триллер, драма, криминал	Джон Эрик Даудл, Дэнни Гордон	47
1092	Священник (1 сезон)	https://kinokrad.co/333191-svyaschennik-1-sezon.html	6	2018	Корея Южная	триллер, ужасы, фэнтези	Ким Джон-хён	80
1093	Тарзан и Джейн (2 сезон)	https://kinokrad.co/333152-tarzan-i-dzheyn-2-sezon.html	6	2018	США	мультфильм, фантастика, боевик, комедия, приключения, семейный	Джесси Ликман, Стив Болл	22
1094	Призраки дома на холме (1 сезон)	https://kinokrad.co/333041-prizraki-doma-na-holme-1-sezon.html	8	2018	США	драма, ужасы, мистика	Майк Флэнеган	50
1095	Кардинал (2 сезон)	https://kinokrad.co/324275-kardinal-2-sezon.html	7	2018	Канада	триллер, драма, криминал	Дэниэл Гру, Джефф Ренфро	42
1096	Гранд (1 сезон)	https://kinokrad.co/328745-grand-1-sezon.html	7	2018	Россия	комедия	Дмитрий Грибанов	24
1097	Зеркало жизни (1 сезон)	https://kinokrad.co/337134-zerkalo-zhizni-1-sezon.html	6	2018	Бразилия	фэнтези, драма	Педро Васконцелос	40
1098	Зорко лишь сердце (1 сезон)	https://kinokrad.co/329261-zorko-lish-serdce-1-sezon.html	5	2018	Россия	мелодрама	Кира Ангелина	90
1099	Полиция Парадайз (1 сезон)	https://kinokrad.co/329258-policiya-paradayz-1-sezon.html	8	2018	США	мультфильм, комедия, криминал	Matt Garofalo, Brian Mainolfi, Лорен Эндрюс	28
1100	Бойтесь ходячих мертвецов (4 сезон)	https://kinokrad.co/326453-boytes-hodyachih-mertvecov-4-sezon.html	7	2018	США	ужасы, фантастика, триллер, драма	Стефан Шварц, Эндрю Бернштейн, Адам Дэвидсон	44
1101	Коннеры (1 сезон)	https://kinokrad.co/332888-konnery-1-sezon.html	7	2018	США	комедия	Боб Коэрр, Кимберли МакКалло, Фред Сэвэдж	30
1102	Челночницы (2 сезон)	https://kinokrad.co/329240-chelnochnicy-2-sezon.html	5	2018	Россия	драма	Юлия Краснова, Сергей Краснов	50
1103	Мыслить как преступник (14 сезон)	https://kinokrad.co/330044-myslit-kak-prestupnik-14-sezon.html	7	2018	США, Канада	триллер, драма, криминал, детектив	Гленн Кершоу, Феликс Энрикез Алькала, Роб Бэйли	43
1104	Обратная сторона любви (1 сезон)	https://kinokrad.co/326054-obratnaya-storona-lyubvi-1-sezon.html	4	2018	Россия	мелодрама	Сергей Борчуков	45
1105	Балабол / Одинокий волк Саня (2 сезон)	https://kinokrad.co/329234-balabol-odinokiy-volk-sanya-2-sezon.html	4	2018	Россия	криминал	Владимир Мельник	52
1106	Смешное время (1 сезон)	https://kinokrad.co/329225-smeshnoe-vremya-1-sezon.html	3	2018	Россия	комедия	Никита Тамаров	24
1107	Родные люди (1 сезон)	https://kinokrad.co/329216-rodnye-lyudi-1-sezon.html	4	2018	Россия	мелодрама	Алексей Царев	50
1108	Шиттс Крик (4 сезон)	https://kinokrad.co/324713-shitts-krik-4-sezon.html	6	2018	Канада, США	комедия	Пол Фокс, Джерри Чиккоритти, Т.У. Пикок	22
1109	Царь обезьян: Новые легенды (1 сезон)	https://kinokrad.co/325988-car-obezyan-novye-legendy-1-sezon.html	7	2018	Австралия, Новая Зеландия	фэнтези	Крэйг Ирвин, Джерард Джонстоун	24
1110	Шуберт (1 сезон)	https://kinokrad.co/326003-shubert-1-sezon.html	6	2018	Россия	детектив, триллер	Евгений Бедарев	55
1111	Бремя истины (1 сезон)	https://kinokrad.co/324494-bremya-istiny-1-sezon.html	7	2018	Канада	драма	Джордан Каннинг, Джеймс Дженн, Douglas Mitchell	60
1112	Марселла / Марчелла (2 сезон)	https://kinokrad.co/325805-marsella-marchella-2-sezon.html	8	2018	Великобритания	драма, криминал, детектив	Чарльз Мартин, Джонатан Теплицки, Чарльз Стёрридж	45
1113	Падение Трои (1 сезон)	https://kinokrad.co/325934-padenie-troi-1-sezon.html	6	2018	Великобритания, США, ЮАР, Австралия	боевик, военный, история	Марк Брозел, Оуэн Харрис, Джон Стриклэнд	60
1114	Займемся физкультурой (1 сезон)	https://kinokrad.co/325970-zaymemsya-fizkulturoy-1-sezon.html	6	2018	США	комедия	Джеймс Оллоди, Джеймс Дженн, Брайан К. Робертс	30
1115	Хитрый Пит / Подлый Пит (2 сезон)	https://kinokrad.co/325973-hitryy-pit-truslivyy-pit-2-sezon.html	6	2018	США	драма, криминал	Майкл Диннер, Адам Аркин, Лора Иннес	60
1116	Яблочко от яблоньки (1 сезон)	https://kinokrad.co/325400-yablochko-ot-yablonki.html	4	2018	Россия	мелодрама	Юрий Морозов	180
1117	Радуга в поднебесье (1 сезон)	https://kinokrad.co/325397-raduga-v-podnebese-1-sezon.html	3	2018	Россия	мелодрама	Сергей Борчуков	48
1118	Моцарт в джунглях (4 сезон)	https://kinokrad.co/325394-mocart-v-dzhunglyah-4-sezon.html	8	2018	США	драма, комедия, музыка	Пол Вайц, Роман Коппола, Триша Брок	29
1119	По друзьям (2 сезон)	https://kinokrad.co/324341-po-druzyam-2-sezon.html	5	2018	США	комедия	Джадд Апатоу, Крис Келли, Райан МакФол	30
1120	Академия Гринхаус (2 сезон)	https://kinokrad.co/325367-akademiya-grinhaus-2-sezon.html	8	2018	США	драма	Флорентайн Роуи	25
1188	Ложа 49 (1 сезон)	https://kinokrad.co/328652-lozha-49-1-sezon.html	4	2018	США	драма, комедия	Рэндолл Айнхорн, Триша Брок, Джейк Шрейер	51
1121	Медичи: Повелители Флоренции (2 сезон)	https://kinokrad.co/339215-medichi-poveliteli-2-sezon.html	6	2018	Италия, Великобритания, Франция	триллер, драма, мелодрама, детектив, биография, история	Кристиан Дюге, Серджо Мимика-Геззан, Джон Кассар	60
1122	Самый умный (1 сезон)	https://kinokrad.co/327347-samyy-umnyy-1-sezon.html	6	2018	США	семейный	Райан Полито	48
1123	Сладкая горечь (1 сезон)	https://kinokrad.co/327326-sladkaya-gorech-1-sezon.html	7	2018	США	драма	Адам Бернштейн, Шерин Дабис, Шира Пивен	60
1124	Пожарные Чикаго (7 сезон)	https://kinokrad.co/330176-pozharnye-chikago-chikago-v-ogne-7-sezon.html	7	2018	США	драма	Джо Чаппелль, Реза Табризи, Сэнфорд Букставер	43
1125	Плебеи (4 сезон)	https://kinokrad.co/326990-plebei-4-sezon.html	7	2018	Великобритания	комедия	Сэм Лейфер	22
1126	Сфинксы северных ворот (1 сезон)	https://kinokrad.co/327308-sfinksy-severnyh-vorot-1-sezon.html	4	2018	Россия	детектив	Олег Штром	45
1127	Воскресший Эртугрул (5 сезон)	https://kinokrad.co/331592-voskresshiy-ertugrul-5-sezon.html	6	2018	Турция	боевик, драма, приключения, военный, история	Метин Гюнай, Akif Özkan, Хакан Арслан	120
1128	Гурзуф (1 сезон)	https://kinokrad.co/327311-gurzuf-1-sezon.html	6	2018	Россия	детектив, история	Дмитрий Константинов	50
1129	Атланта (2 сезон)	https://kinokrad.co/326645-atlanta-2-sezon.html	5	2018	США	драма, комедия	Хиро Мурай, Дональд Гловер, Эми Саймец	30
1130	Пожизненный приговор (1 сезон)	https://kinokrad.co/326924-pozhiznennyy-prigovor-1-sezon.html	6	2018	США	драма, комедия	Джон Т. Кречмер, Тесса Блейк, Норман Бакли	44
1131	Безопасность (1 сезон)	https://kinokrad.co/327299-bezopasnost-1-sezon.html	9	2018	Великобритания	драма	Джулия Форд, Дэниэл О’Хара, Дэниэл Неттхейм	60
1132	Легион (2 сезон)	https://kinokrad.co/326426-legion-2-sezon.html	5	2018	США	фантастика, боевик, триллер, драма	Майкл Аппендаль, Тим Милантс, Дэнни Гордон	60
1133	Ребекка Мартинссон (1 сезон)	https://kinokrad.co/327290-rebekka-martinsson-span-serial-span.html	6	2018	Швеция	криминал	Фредрик Эдфельдт	45
1134	Флэш (5 сезон)	https://kinokrad.co/329849-flesh-5-sezon.html	7	2018	США	фантастика, боевик, драма, приключения	Дермотт Даунс, Ральф Хемекер, Глен Винтер	43
1135	Полицейский с Рублёвки (3 сезон)	https://kinokrad.co/326615-policeyskiy-s-rublevki-3-sezon.html	6	2018	Россия	криминал, комедия, драма	Илья Куликов	48
1136	Ривердэйл / Ривердейл (3 сезон)	https://kinokrad.co/330047-riverdeyl-riverdeyl-3-sezone.html	7	2018	США	драма, мелодрама, криминал, детектив	Ли Толанд Кригер, Кевин Родни Салливан, Доун Уилкинсон	45
1137	Бруклин 9-9 (6 сезон)	https://kinokrad.co/334120-bruklin-9-9-6-sezon.html	7	2018	США	комедия, криминал	Майкл МакДональд, Дин Холлэнд, Линда Мендоса	23
1138	Мишель (1 сезон)	https://kinokrad.co/327671-mishel-1-sezon.html	5	2018	Россия	мелодрама	Ольга Перуновская	45
1139	Инстинкт (1 сезон)	https://kinokrad.co/326546-instinkt-1-sezon.html	6	2018	США	триллер, драма, криминал, детектив	Дуглас Арниокоски, Лаура Белси, Константин Макрис	60
1140	Плакучая ива (1 сезон)	https://kinokrad.co/327644-plakuchaya-iva-1-sezon.html	4	2018	Россия	мелодрама	Феликс Герчиков	25
1141	В пустыне смерти (3 сезон)	https://kinokrad.co/326891-v-pustyne-smerti-3-sezon.html	8	2018	США	боевик, драма, приключения	Пако Кабесас, Тоа Фрейзер, Дэвид Добкин	42
1142	Детство Шелдона /Молодой Шелдон (2 сезон)	https://kinokrad.co/330386-detstvo-sheldona-molodoy-sheldon-2-sezon.html	8	2018	США	комедия	Джаффар Махмуд, Ховард Дойч, Марк Сендроуски	30
1143	Клуб обманутых жён (1 сезон)	https://kinokrad.co/327641-klub-obmanutyh-zhen-1-sezon.html	6	2018	Россия	мелодрама, детектив	Елена Яковлева	48
1144	Калигула (1 сезон)	https://kinokrad.co/327608-kaligula-1-sezon.html	5	2018	Япония	аниме, мультфильм, боевик, фантастика	Дзюнъити Вада	25
1145	Спаси меня (1 сезон)	https://kinokrad.co/327605-spasi-menya-1-sezon.html	6	2018	Великобритания	драма	Ник Мерфи	270
1146	Неуважение к суду (1 сезон)	https://kinokrad.co/327602-neuvazhenie-k-sudu-1-sezon.html	7	2018	Канада	драма	Фархад Манн, Садс Сазерленд, Джилл Картер	42
1147	Пространство (3 сезон)	https://kinokrad.co/326534-prostranstvo-3-sezon.html	9	2018	США, Канада	фантастика, триллер, драма, детектив	Джефф Вулнаф, Терри МакДонаф, Роберт Либерман	43
1148	Древние (5 сезон)	https://kinokrad.co/326459-drevnie-5-sezon.html	9	2018	США	ужасы, фэнтези, драма, детектив	Мэттью Хатингс, Крис Грисмер, Джеффри Дж. Хант	43
1149	Скрытое (1 сезон)	https://kinokrad.co/328163-skrytoe-1-sezon.html	6	2018	Великобритания	драма, криминал, детектив	Гарет Брин, Эрик Стайлз, Крис Форстер	60
1150	Одаренные (2 сезон)	https://kinokrad.co/330215-odarennye-2-sezon.html	7	2018	США	фантастика, фэнтези, боевик, драма	Скотт Питерс, Стивен ДеПол, Стивен Серджик	47
1151	Управдомша (1 сезон)	https://kinokrad.co/334576-upravdomsha-1-sezon.html	5	2018	Россия	мелодрама	Владимир Устюгов	90
1152	Неопалимый Феникс (1 сезон)	https://kinokrad.co/333742-neopalimyy-feniks-1-sezon.html	3	2018	Россия	детектив	Дмитрий Аверин	45
1154	Выкуп (2 сезон)	https://kinokrad.co/333703-vykup-2-sezon.html	6	2018	Канада, Франция, США, Германия	боевик, драма, криминал	Джеймс Дженн, Элинор Линдо, Эрик Канюэль	44
1155	Лапси (2 сезон)	https://kinokrad.co/332780-lapsi-2-sezon.html	6	2018	Россия	драма	Артем Аксененко	50
1156	Старушки в бегах (1 сезон)	https://kinokrad.co/328154-starushki-v-begah-1-sezon.html	7	2018	Россия	комедия, мелодрама	Иван Бычков	50
1157	Бремя истины / Бремя правды (2 сезон)	https://kinokrad.co/334459-bremya-istiny-bremya-pravdy-2-sezon.html	6	2018	Канада	драма	Douglas Mitchell, Грант Харви, Джордан Каннинг	60
1158	Поза (1 сезон)	https://kinokrad.co/328142-poza-1-sezon.html	7	2018	США	драма	Гвинет Хердер-Пэйтон, Райан Мёрфи, Нельсон Крегг	75
1159	Всеамериканский (1 сезон)	https://kinokrad.co/332996-vseamerikanskiy-1-sezon.html	7	2018	США	драма, спорт	Роб Харди, Бенни Бум, Элоди Кин	45
1160	Шесть (2 сезон)	https://kinokrad.co/327446-shest-2-sezon.html	6	2018	США	боевик, драма, военный, история	Микаэл Саломон, Кимберли Пирс, Лесли Линка Глаттер	60
1161	Училки (3 сезон)	https://kinokrad.co/327506-uchilki-3-sezon.html	6	2018	США	комедия	Джей Карас, Пэймэн Бенц, Майкл Блиден	20
1162	Госпожа Фазилет и её дочери (2 сезон)	https://kinokrad.co/328133-gospozha-fazilet-i-ee-docheri-2-sezon.html	7	2018	Турция	драма	Алптекин Бозкурт, Gökçen Usta Çaylar, Günay Günaydin	140
1163	Диетлэнд (1 сезон)	https://kinokrad.co/327551-dietlend-1-sezon.html	6	2018	США	драма, комедия	Марти Ноксон, Майкл Трим, Эми Йорк Рубин	48
1164	Марлон (2 сезон)	https://kinokrad.co/328112-marlon-2-sezon.html	4	2018	США	комедия	Робби Кантримэн, Фил Льюис, Эрик Дин Ситон	22
1165	Рассказ служанки (2 сезон)	https://kinokrad.co/326597-rasskaz-sluzhanki-2-sezon.html	7	2018	США	фантастика, драма	Майк Баркер, Кари Скогланд, Рид Морано	60
1166	Гражданская жена (1 сезон)	https://kinokrad.co/332273-grazhdanskaya-zhena-1-sezon.html	5	2018	Россия	мелодрама	Андрей Красавин	44
1167	Пресса (1 сезон)	https://kinokrad.co/332270-pressa-1-sezon.html	6	2018	Великобритания, США	драма	Том Вон	360
1168	Да здравствует король Джулиан (5 сезон)	https://kinokrad.co/332234-da-zdravstvuet-korol-dzhulian-5-sezon.html	7	2018	США	мультфильм, комедия, семейный	Мэтт Энгстром, Джеймс Вуттон, Emmanuel Deligiannis	23
1169	Ван Хельсинг (3 сезон)	https://kinokrad.co/329804-van-helsing-3-sezon.html	6	2018	США	ужасы, фэнтези, боевик, драма	Майкл Нанкин, Джонатан Скарф, Аманда Таппинг	60
1170	Окна дома твоего (1 сезон)	https://kinokrad.co/332207-okna-doma-tvoego-1-sezon.html	5	2018	Россия	мелодрама	Александр Высоковский	90
1171	Ворона (1 сезон)	https://kinokrad.co/331052-vorona-1-sezon.html	7	2018	Россия	детектив, триллер	Ольга Ангелова, Евгений Сосницкий	44
1172	В чужом краю (1 сезон)	https://kinokrad.co/331049-v-chuzhom-krayu-1-sezon.html	5	2018	Россия	мелодрама	Станислав Дремов	44
1173	Маньяк (1 сезон)	https://kinokrad.co/330938-manyak-1-sezon.html	7	2018	США	фантастика, драма, комедия	Кэри Фукунага	40
1174	Южный Парк (22 сезон)	https://kinokrad.co/329660-yuzhnyy-park-22-sezon.html	7	2018	США	мультфильм, комедия	Трей Паркер, Эрик Сточ, Мэтт Стоун	22
1175	Бар «На грудь» (1 сезон)	https://kinokrad.co/330647-bar-na-grud-1-sezon.html	4	2018	Россия	комедия	Ирина Вилкова	10
1176	Ивановы-Ивановы (3 сезон)	https://kinokrad.co/329954-ivanovy-ivanovy-3-sezon.html	7	2018	Россия	комедия	Антон Федотов, Андрей Элинсон	24
1177	Нулевой канал (4 сезон)	https://kinokrad.co/330917-nulevoy-kanal-4-sezon.html	7	2018	США	ужасы, триллер, драма, детектив	Крэйг Уилльям Макнейлл, Стивен Пит, Ивэн Кац	44
1178	Моя гениальная подруга (1 сезон)	https://kinokrad.co/332087-moya-genialnaya-podruga-1-sezon.html	6	2018	Италия, США	драма	Саверио Костанцо	50
1179	Мама (1 сезон)	https://kinokrad.co/332084-mama-1-sezon.html	5	2018	Россия	мелодрама	Гузэль Киреева	51
1180	Доктор Рихтер (2 сезон)	https://kinokrad.co/332036-doktor-rihter-2-sezon.html	6	2018	Россия	драма, детектив	Андрей Прошкин, Илья Казанков, Максим Демченко	51
1181	Проповедник (3 сезон)	https://kinokrad.co/327887-propovednik-3-sezon.html	8	2018	США	фэнтези, драма, детектив, приключения	Майкл Словис, Эван Голдберг, Сет Роген	60
1182	Диета из Санта-Клариты (3 сезон)	https://kinokrad.co/335218-dieta-iz-santa-klarity-3-sezon.html	8	2018	США	ужасы, комедия	Марк Баклэнд, Кен Куопис, Стив Пинк	30
1183	Тайны Фрэнки Дрейк (2 сезон)	https://kinokrad.co/330311-tayny-frenki-dreyk-2-sezon.html	8	2018	Канада	драма, криминал, детектив	Руба Надда, Садс Сазерленд, Лесли Хоуп	60
1184	Стэн против сил зла (3 сезон)	https://kinokrad.co/330650-sten-protiv-sil-zla-3-sezon.html	6	2018	США	ужасы, фэнтези, комедия	Джек Бишоп, Джастин Ниджм, Роберт Коэн	30
1185	Не отпускай мою руку (1 сезон)	https://kinokrad.co/328655-ne-otpuskay-moyu-ruku-1-sezon.html	8	2018	Турция	драма	Садуллах Селен	120
1186	ХБ (2 сезон)	https://kinokrad.co/328823-hb-2-sezon.html	6	2018	Россия	комедия	Егор Баранов	23
1187	Сорвиголова (3 сезон)	https://kinokrad.co/330542-sorvigolova-3-sezon.html	7	2018	США	фантастика, фэнтези, боевик, триллер, драма, криминал	Фил Абрахам, Стивен Серджик, Питер Хор	54
1189	Рокко Скьявоне (2 сезон)	https://kinokrad.co/335206-rokko-skyavone-2-sezon.html	6	2018	Италия	триллер, криминал	Luca Brignone, Микеле Соави, Джулио Манфредония	100
1190	Гринлиф (3 сезон)	https://kinokrad.co/328973-grinlif-3-sezon.html	5	2018	США	драма	Клемент Вирго, Дженис Кук-Леонард, Чарльз Рандольф-Райт	60
1191	Кто есть Америка? (1 сезон)	https://kinokrad.co/328643-kto-est-amerika-1-sezon.html	6	2018	США	комедия	Дэниэл Грэй Лонгино, Дэн Мазер, Тодд Шульман	30
1192	Большой рот (2 сезон)	https://kinokrad.co/330443-bolshoy-rot-2-sezon.html	6	2018	США	мультфильм, мелодрама, комедия	Джоэль Мосер, Брайан Френсис, Bob Suarez	30
1193	Ординатор (1 сезон)	https://kinokrad.co/326792-ordinator-1-sezon.html	8	2018	США	драма	Роб Корн, Джеймс Родэй, Филлип Нойс	60
1194	Сирена (1 сезон)	https://kinokrad.co/326399-sirena-1-sezon.html	8	2018	США	фэнтези, драма	Ник Копус, Стив Эделсон, Джон Бэдэм	60
1195	Новичок / Новобранец (1 сезон)	https://kinokrad.co/331253-novichok-novobranec-1-sezon.html	8	2018	США	драма, криминал	Грег Биман, Тимоти Басфилд, Адам Дэвидсон	43
1196	По болезни (2 сезон)	https://kinokrad.co/328613-po-bolezni-2-sezon.html	7	2018	Великобритания	комедия	Мэтт Липси	30
1197	Острые предметы (1 сезон)	https://kinokrad.co/328166-ostrye-predmety-1-sezon.html	7	2018	США	триллер, драма, криминал, детектив	Жан-Марк Валле	60
1198	Анатомия страсти (15 сезон)	https://kinokrad.co/329858-anatomiya-strasti-15-sezon.html	7	2018	США	драма, мелодрама	Роб Корн, Кевин МакКидд, Шандра Уилсон	43
1199	Собор у моря (1 сезон)	https://kinokrad.co/328595-sobor-u-morya-1-sezon.html	9	2018	Испания	драма	Хорди Фрадес, Сальвадор Гарсия Руис	50
1200	Морская полиция: Новый Орлеан (5 сезон)	https://kinokrad.co/330797-morskaya-policiya-novyy-orlean-5-sezon.html	5	2018	США	драма, криминал	Джеймс Хейман, Джеймс Уитмор мл., Тони Уормби	42
1201	Коннеры (1 сезон)	https://kinokrad.co/332888-konnery-1-sezon.html	7	2018	США	комедия	Боб Коэрр, Кимберли МакКалло, Фред Сэвэдж	30
1202	Челночницы (2 сезон)	https://kinokrad.co/329240-chelnochnicy-2-sezon.html	5	2018	Россия	драма	Юлия Краснова, Сергей Краснов	50
1203	Мыслить как преступник (14 сезон)	https://kinokrad.co/330044-myslit-kak-prestupnik-14-sezon.html	7	2018	США, Канада	триллер, драма, криминал, детектив	Гленн Кершоу, Феликс Энрикез Алькала, Роб Бэйли	43
1204	Обратная сторона любви (1 сезон)	https://kinokrad.co/326054-obratnaya-storona-lyubvi-1-sezon.html	4	2018	Россия	мелодрама	Сергей Борчуков	45
1205	Балабол / Одинокий волк Саня (2 сезон)	https://kinokrad.co/329234-balabol-odinokiy-volk-sanya-2-sezon.html	4	2018	Россия	криминал	Владимир Мельник	52
1206	Смешное время (1 сезон)	https://kinokrad.co/329225-smeshnoe-vremya-1-sezon.html	3	2018	Россия	комедия	Никита Тамаров	24
1207	Родные люди (1 сезон)	https://kinokrad.co/329216-rodnye-lyudi-1-sezon.html	4	2018	Россия	мелодрама	Алексей Царев	50
1208	Шиттс Крик (4 сезон)	https://kinokrad.co/324713-shitts-krik-4-sezon.html	6	2018	Канада, США	комедия	Пол Фокс, Джерри Чиккоритти, Т.У. Пикок	22
1209	Царь обезьян: Новые легенды (1 сезон)	https://kinokrad.co/325988-car-obezyan-novye-legendy-1-sezon.html	7	2018	Австралия, Новая Зеландия	фэнтези	Крэйг Ирвин, Джерард Джонстоун	24
1210	Шуберт (1 сезон)	https://kinokrad.co/326003-shubert-1-sezon.html	6	2018	Россия	детектив, триллер	Евгений Бедарев	55
1211	Бремя истины (1 сезон)	https://kinokrad.co/324494-bremya-istiny-1-sezon.html	7	2018	Канада	драма	Джордан Каннинг, Джеймс Дженн, Douglas Mitchell	60
1212	Марселла / Марчелла (2 сезон)	https://kinokrad.co/325805-marsella-marchella-2-sezon.html	8	2018	Великобритания	драма, криминал, детектив	Чарльз Мартин, Джонатан Теплицки, Чарльз Стёрридж	45
1213	Падение Трои (1 сезон)	https://kinokrad.co/325934-padenie-troi-1-sezon.html	6	2018	Великобритания, США, ЮАР, Австралия	боевик, военный, история	Марк Брозел, Оуэн Харрис, Джон Стриклэнд	60
1214	Займемся физкультурой (1 сезон)	https://kinokrad.co/325970-zaymemsya-fizkulturoy-1-sezon.html	6	2018	США	комедия	Джеймс Оллоди, Джеймс Дженн, Брайан К. Робертс	30
1215	Хитрый Пит / Подлый Пит (2 сезон)	https://kinokrad.co/325973-hitryy-pit-truslivyy-pit-2-sezon.html	6	2018	США	драма, криминал	Майкл Диннер, Адам Аркин, Лора Иннес	60
1216	Яблочко от яблоньки (1 сезон)	https://kinokrad.co/325400-yablochko-ot-yablonki.html	4	2018	Россия	мелодрама	Юрий Морозов	180
1217	Радуга в поднебесье (1 сезон)	https://kinokrad.co/325397-raduga-v-podnebese-1-sezon.html	3	2018	Россия	мелодрама	Сергей Борчуков	48
1218	Моцарт в джунглях (4 сезон)	https://kinokrad.co/325394-mocart-v-dzhunglyah-4-sezon.html	8	2018	США	драма, комедия, музыка	Пол Вайц, Роман Коппола, Триша Брок	29
1219	По друзьям (2 сезон)	https://kinokrad.co/324341-po-druzyam-2-sezon.html	5	2018	США	комедия	Джадд Апатоу, Крис Келли, Райан МакФол	30
1220	Академия Гринхаус (2 сезон)	https://kinokrad.co/325367-akademiya-grinhaus-2-sezon.html	8	2018	США	драма	Флорентайн Роуи	25
1253	Женщина в белом (1 сезон)	https://kinokrad.co/333700-zhenschina-v-belom-1-sezon.html	7	2018	Великобритания	драма	Карл Тиббеттс	55
1221	Медичи: Повелители Флоренции (2 сезон)	https://kinokrad.co/339215-medichi-poveliteli-2-sezon.html	6	2018	Италия, Великобритания, Франция	триллер, драма, мелодрама, детектив, биография, история	Кристиан Дюге, Серджо Мимика-Геззан, Джон Кассар	60
1222	Самый умный (1 сезон)	https://kinokrad.co/327347-samyy-umnyy-1-sezon.html	6	2018	США	семейный	Райан Полито	48
1223	Сладкая горечь (1 сезон)	https://kinokrad.co/327326-sladkaya-gorech-1-sezon.html	7	2018	США	драма	Адам Бернштейн, Шерин Дабис, Шира Пивен	60
1224	Пожарные Чикаго (7 сезон)	https://kinokrad.co/330176-pozharnye-chikago-chikago-v-ogne-7-sezon.html	7	2018	США	драма	Джо Чаппелль, Реза Табризи, Сэнфорд Букставер	43
1225	Плебеи (4 сезон)	https://kinokrad.co/326990-plebei-4-sezon.html	7	2018	Великобритания	комедия	Сэм Лейфер	22
1226	Сфинксы северных ворот (1 сезон)	https://kinokrad.co/327308-sfinksy-severnyh-vorot-1-sezon.html	4	2018	Россия	детектив	Олег Штром	45
1227	Воскресший Эртугрул (5 сезон)	https://kinokrad.co/331592-voskresshiy-ertugrul-5-sezon.html	6	2018	Турция	боевик, драма, приключения, военный, история	Метин Гюнай, Akif Özkan, Хакан Арслан	120
1228	Гурзуф (1 сезон)	https://kinokrad.co/327311-gurzuf-1-sezon.html	6	2018	Россия	детектив, история	Дмитрий Константинов	50
1229	Атланта (2 сезон)	https://kinokrad.co/326645-atlanta-2-sezon.html	5	2018	США	драма, комедия	Хиро Мурай, Дональд Гловер, Эми Саймец	30
1230	Пожизненный приговор (1 сезон)	https://kinokrad.co/326924-pozhiznennyy-prigovor-1-sezon.html	6	2018	США	драма, комедия	Джон Т. Кречмер, Тесса Блейк, Норман Бакли	44
1231	Безопасность (1 сезон)	https://kinokrad.co/327299-bezopasnost-1-sezon.html	9	2018	Великобритания	драма	Джулия Форд, Дэниэл О’Хара, Дэниэл Неттхейм	60
1232	Легион (2 сезон)	https://kinokrad.co/326426-legion-2-sezon.html	5	2018	США	фантастика, боевик, триллер, драма	Майкл Аппендаль, Тим Милантс, Дэнни Гордон	60
1233	Ребекка Мартинссон (1 сезон)	https://kinokrad.co/327290-rebekka-martinsson-span-serial-span.html	6	2018	Швеция	криминал	Фредрик Эдфельдт	45
1234	Флэш (5 сезон)	https://kinokrad.co/329849-flesh-5-sezon.html	7	2018	США	фантастика, боевик, драма, приключения	Дермотт Даунс, Ральф Хемекер, Глен Винтер	43
1235	Полицейский с Рублёвки (3 сезон)	https://kinokrad.co/326615-policeyskiy-s-rublevki-3-sezon.html	6	2018	Россия	криминал, комедия, драма	Илья Куликов	48
1236	Ривердэйл / Ривердейл (3 сезон)	https://kinokrad.co/330047-riverdeyl-riverdeyl-3-sezone.html	7	2018	США	драма, мелодрама, криминал, детектив	Ли Толанд Кригер, Кевин Родни Салливан, Доун Уилкинсон	45
1237	Бруклин 9-9 (6 сезон)	https://kinokrad.co/334120-bruklin-9-9-6-sezon.html	7	2018	США	комедия, криминал	Майкл МакДональд, Дин Холлэнд, Линда Мендоса	23
1238	Мишель (1 сезон)	https://kinokrad.co/327671-mishel-1-sezon.html	5	2018	Россия	мелодрама	Ольга Перуновская	45
1239	Инстинкт (1 сезон)	https://kinokrad.co/326546-instinkt-1-sezon.html	6	2018	США	триллер, драма, криминал, детектив	Дуглас Арниокоски, Лаура Белси, Константин Макрис	60
1240	Плакучая ива (1 сезон)	https://kinokrad.co/327644-plakuchaya-iva-1-sezon.html	4	2018	Россия	мелодрама	Феликс Герчиков	25
1241	В пустыне смерти (3 сезон)	https://kinokrad.co/326891-v-pustyne-smerti-3-sezon.html	8	2018	США	боевик, драма, приключения	Пако Кабесас, Тоа Фрейзер, Дэвид Добкин	42
1242	Детство Шелдона /Молодой Шелдон (2 сезон)	https://kinokrad.co/330386-detstvo-sheldona-molodoy-sheldon-2-sezon.html	8	2018	США	комедия	Джаффар Махмуд, Ховард Дойч, Марк Сендроуски	30
1243	Клуб обманутых жён (1 сезон)	https://kinokrad.co/327641-klub-obmanutyh-zhen-1-sezon.html	6	2018	Россия	мелодрама, детектив	Елена Яковлева	48
1244	Калигула (1 сезон)	https://kinokrad.co/327608-kaligula-1-sezon.html	5	2018	Япония	аниме, мультфильм, боевик, фантастика	Дзюнъити Вада	25
1245	Спаси меня (1 сезон)	https://kinokrad.co/327605-spasi-menya-1-sezon.html	6	2018	Великобритания	драма	Ник Мерфи	270
1246	Неуважение к суду (1 сезон)	https://kinokrad.co/327602-neuvazhenie-k-sudu-1-sezon.html	7	2018	Канада	драма	Фархад Манн, Садс Сазерленд, Джилл Картер	42
1247	Пространство (3 сезон)	https://kinokrad.co/326534-prostranstvo-3-sezon.html	9	2018	США, Канада	фантастика, триллер, драма, детектив	Джефф Вулнаф, Терри МакДонаф, Роберт Либерман	43
1248	Древние (5 сезон)	https://kinokrad.co/326459-drevnie-5-sezon.html	9	2018	США	ужасы, фэнтези, драма, детектив	Мэттью Хатингс, Крис Грисмер, Джеффри Дж. Хант	43
1249	Скрытое (1 сезон)	https://kinokrad.co/328163-skrytoe-1-sezon.html	6	2018	Великобритания	драма, криминал, детектив	Гарет Брин, Эрик Стайлз, Крис Форстер	60
1250	Одаренные (2 сезон)	https://kinokrad.co/330215-odarennye-2-sezon.html	7	2018	США	фантастика, фэнтези, боевик, драма	Скотт Питерс, Стивен ДеПол, Стивен Серджик	47
1251	Управдомша (1 сезон)	https://kinokrad.co/334576-upravdomsha-1-sezon.html	5	2018	Россия	мелодрама	Владимир Устюгов	90
1252	Неопалимый Феникс (1 сезон)	https://kinokrad.co/333742-neopalimyy-feniks-1-sezon.html	3	2018	Россия	детектив	Дмитрий Аверин	45
1254	Выкуп (2 сезон)	https://kinokrad.co/333703-vykup-2-sezon.html	6	2018	Канада, Франция, США, Германия	боевик, драма, криминал	Джеймс Дженн, Элинор Линдо, Эрик Канюэль	44
1255	Лапси (2 сезон)	https://kinokrad.co/332780-lapsi-2-sezon.html	6	2018	Россия	драма	Артем Аксененко	50
1256	Старушки в бегах (1 сезон)	https://kinokrad.co/328154-starushki-v-begah-1-sezon.html	7	2018	Россия	комедия, мелодрама	Иван Бычков	50
1257	Бремя истины / Бремя правды (2 сезон)	https://kinokrad.co/334459-bremya-istiny-bremya-pravdy-2-sezon.html	6	2018	Канада	драма	Douglas Mitchell, Грант Харви, Джордан Каннинг	60
1258	Поза (1 сезон)	https://kinokrad.co/328142-poza-1-sezon.html	7	2018	США	драма	Гвинет Хердер-Пэйтон, Райан Мёрфи, Нельсон Крегг	75
1259	Всеамериканский (1 сезон)	https://kinokrad.co/332996-vseamerikanskiy-1-sezon.html	7	2018	США	драма, спорт	Роб Харди, Бенни Бум, Элоди Кин	45
1260	Шесть (2 сезон)	https://kinokrad.co/327446-shest-2-sezon.html	6	2018	США	боевик, драма, военный, история	Микаэл Саломон, Кимберли Пирс, Лесли Линка Глаттер	60
1261	Училки (3 сезон)	https://kinokrad.co/327506-uchilki-3-sezon.html	6	2018	США	комедия	Джей Карас, Пэймэн Бенц, Майкл Блиден	20
1262	Госпожа Фазилет и её дочери (2 сезон)	https://kinokrad.co/328133-gospozha-fazilet-i-ee-docheri-2-sezon.html	7	2018	Турция	драма	Алптекин Бозкурт, Gökçen Usta Çaylar, Günay Günaydin	140
1263	Диетлэнд (1 сезон)	https://kinokrad.co/327551-dietlend-1-sezon.html	6	2018	США	драма, комедия	Марти Ноксон, Майкл Трим, Эми Йорк Рубин	48
1264	Марлон (2 сезон)	https://kinokrad.co/328112-marlon-2-sezon.html	4	2018	США	комедия	Робби Кантримэн, Фил Льюис, Эрик Дин Ситон	22
1265	Рассказ служанки (2 сезон)	https://kinokrad.co/326597-rasskaz-sluzhanki-2-sezon.html	7	2018	США	фантастика, драма	Майк Баркер, Кари Скогланд, Рид Морано	60
1266	Гражданская жена (1 сезон)	https://kinokrad.co/332273-grazhdanskaya-zhena-1-sezon.html	5	2018	Россия	мелодрама	Андрей Красавин	44
1267	Пресса (1 сезон)	https://kinokrad.co/332270-pressa-1-sezon.html	6	2018	Великобритания, США	драма	Том Вон	360
1268	Да здравствует король Джулиан (5 сезон)	https://kinokrad.co/332234-da-zdravstvuet-korol-dzhulian-5-sezon.html	7	2018	США	мультфильм, комедия, семейный	Мэтт Энгстром, Джеймс Вуттон, Emmanuel Deligiannis	23
1269	Ван Хельсинг (3 сезон)	https://kinokrad.co/329804-van-helsing-3-sezon.html	6	2018	США	ужасы, фэнтези, боевик, драма	Майкл Нанкин, Джонатан Скарф, Аманда Таппинг	60
1270	Окна дома твоего (1 сезон)	https://kinokrad.co/332207-okna-doma-tvoego-1-sezon.html	5	2018	Россия	мелодрама	Александр Высоковский	90
1271	Ворона (1 сезон)	https://kinokrad.co/331052-vorona-1-sezon.html	7	2018	Россия	детектив, триллер	Ольга Ангелова, Евгений Сосницкий	44
1272	В чужом краю (1 сезон)	https://kinokrad.co/331049-v-chuzhom-krayu-1-sezon.html	5	2018	Россия	мелодрама	Станислав Дремов	44
1273	Маньяк (1 сезон)	https://kinokrad.co/330938-manyak-1-sezon.html	7	2018	США	фантастика, драма, комедия	Кэри Фукунага	40
1274	Южный Парк (22 сезон)	https://kinokrad.co/329660-yuzhnyy-park-22-sezon.html	7	2018	США	мультфильм, комедия	Трей Паркер, Эрик Сточ, Мэтт Стоун	22
1275	Бар «На грудь» (1 сезон)	https://kinokrad.co/330647-bar-na-grud-1-sezon.html	4	2018	Россия	комедия	Ирина Вилкова	10
1276	Ивановы-Ивановы (3 сезон)	https://kinokrad.co/329954-ivanovy-ivanovy-3-sezon.html	7	2018	Россия	комедия	Антон Федотов, Андрей Элинсон	24
1277	Нулевой канал (4 сезон)	https://kinokrad.co/330917-nulevoy-kanal-4-sezon.html	7	2018	США	ужасы, триллер, драма, детектив	Крэйг Уилльям Макнейлл, Стивен Пит, Ивэн Кац	44
1278	Моя гениальная подруга (1 сезон)	https://kinokrad.co/332087-moya-genialnaya-podruga-1-sezon.html	6	2018	Италия, США	драма	Саверио Костанцо	50
1279	Мама (1 сезон)	https://kinokrad.co/332084-mama-1-sezon.html	5	2018	Россия	мелодрама	Гузэль Киреева	51
1280	Доктор Рихтер (2 сезон)	https://kinokrad.co/332036-doktor-rihter-2-sezon.html	6	2018	Россия	драма, детектив	Андрей Прошкин, Илья Казанков, Максим Демченко	51
1281	Проповедник (3 сезон)	https://kinokrad.co/327887-propovednik-3-sezon.html	8	2018	США	фэнтези, драма, детектив, приключения	Майкл Словис, Эван Голдберг, Сет Роген	60
1282	Диета из Санта-Клариты (3 сезон)	https://kinokrad.co/335218-dieta-iz-santa-klarity-3-sezon.html	8	2018	США	ужасы, комедия	Марк Баклэнд, Кен Куопис, Стив Пинк	30
1283	Тайны Фрэнки Дрейк (2 сезон)	https://kinokrad.co/330311-tayny-frenki-dreyk-2-sezon.html	8	2018	Канада	драма, криминал, детектив	Руба Надда, Садс Сазерленд, Лесли Хоуп	60
1284	Стэн против сил зла (3 сезон)	https://kinokrad.co/330650-sten-protiv-sil-zla-3-sezon.html	6	2018	США	ужасы, фэнтези, комедия	Джек Бишоп, Джастин Ниджм, Роберт Коэн	30
1285	Не отпускай мою руку (1 сезон)	https://kinokrad.co/328655-ne-otpuskay-moyu-ruku-1-sezon.html	8	2018	Турция	драма	Садуллах Селен	120
1286	ХБ (2 сезон)	https://kinokrad.co/328823-hb-2-sezon.html	6	2018	Россия	комедия	Егор Баранов	23
1287	Сорвиголова (3 сезон)	https://kinokrad.co/330542-sorvigolova-3-sezon.html	7	2018	США	фантастика, фэнтези, боевик, триллер, драма, криминал	Фил Абрахам, Стивен Серджик, Питер Хор	54
1288	Ложа 49 (1 сезон)	https://kinokrad.co/328652-lozha-49-1-sezon.html	4	2018	США	драма, комедия	Рэндолл Айнхорн, Триша Брок, Джейк Шрейер	51
1289	Рокко Скьявоне (2 сезон)	https://kinokrad.co/335206-rokko-skyavone-2-sezon.html	6	2018	Италия	триллер, криминал	Luca Brignone, Микеле Соави, Джулио Манфредония	100
1290	Гринлиф (3 сезон)	https://kinokrad.co/328973-grinlif-3-sezon.html	5	2018	США	драма	Клемент Вирго, Дженис Кук-Леонард, Чарльз Рандольф-Райт	60
1291	Кто есть Америка? (1 сезон)	https://kinokrad.co/328643-kto-est-amerika-1-sezon.html	6	2018	США	комедия	Дэниэл Грэй Лонгино, Дэн Мазер, Тодд Шульман	30
1292	Большой рот (2 сезон)	https://kinokrad.co/330443-bolshoy-rot-2-sezon.html	6	2018	США	мультфильм, мелодрама, комедия	Джоэль Мосер, Брайан Френсис, Bob Suarez	30
1293	Ординатор (1 сезон)	https://kinokrad.co/326792-ordinator-1-sezon.html	8	2018	США	драма	Роб Корн, Джеймс Родэй, Филлип Нойс	60
1294	Сирена (1 сезон)	https://kinokrad.co/326399-sirena-1-sezon.html	8	2018	США	фэнтези, драма	Ник Копус, Стив Эделсон, Джон Бэдэм	60
1295	Новичок / Новобранец (1 сезон)	https://kinokrad.co/331253-novichok-novobranec-1-sezon.html	8	2018	США	драма, криминал	Грег Биман, Тимоти Басфилд, Адам Дэвидсон	43
1296	По болезни (2 сезон)	https://kinokrad.co/328613-po-bolezni-2-sezon.html	7	2018	Великобритания	комедия	Мэтт Липси	30
1297	Острые предметы (1 сезон)	https://kinokrad.co/328166-ostrye-predmety-1-sezon.html	7	2018	США	триллер, драма, криминал, детектив	Жан-Марк Валле	60
1298	Анатомия страсти (15 сезон)	https://kinokrad.co/329858-anatomiya-strasti-15-sezon.html	7	2018	США	драма, мелодрама	Роб Корн, Кевин МакКидд, Шандра Уилсон	43
1299	Собор у моря (1 сезон)	https://kinokrad.co/328595-sobor-u-morya-1-sezon.html	9	2018	Испания	драма	Хорди Фрадес, Сальвадор Гарсия Руис	50
1300	Морская полиция: Новый Орлеан (5 сезон)	https://kinokrad.co/330797-morskaya-policiya-novyy-orlean-5-sezon.html	5	2018	США	драма, криминал	Джеймс Хейман, Джеймс Уитмор мл., Тони Уормби	42
1301	Американская семейка (10 сезон)	https://kinokrad.co/330086-amerikanskaya-semeyka-10-sezon.html	6	2018	США	мелодрама, комедия	Гейл Манкусо, Стивен Левитан, Бет МакКарти-Миллер	22
1302	Стас всё сдаст (1 сезон)	https://kinokrad.co/328589-stas-vse-sdast-1-sezon.html	6	2018	Великобритания	комедия	Том Кингсли	30
1303	Ненасытная (1 сезон)	https://kinokrad.co/328586-nenasytnaya-1-sezon.html	6	2018	США	драма, комедия	Эндрю Флеминг, Лев Л. Спиро, Брайан Дэннели	45
1304	СашаТаня (5 сезон)	https://kinokrad.co/326762-sashatanya-5-sezon.html	5	2018	Россия	комедия	Сергей Казачанский, Михаил Старчак, Андрей Богатырев	24
1305	Наш мультяшный президент (1 сезон)	https://kinokrad.co/328472-nash-multyashnyy-prezident-1-sezon.html	5	2018	США	мультфильм, комедия	Мак Уильямс, Стив Коннер	30
1306	Юристы (1 сезон)	https://kinokrad.co/335719-yuristy-1-sezon.html	6	2018	Россия	драма	Павел Игнатов	50
1307	Империя (5 сезон)	https://kinokrad.co/329444-imperiya-5-sezon.html	6	2018	США	драма, музыка	Санаа Хамри, Крэйг Брюэр, Милисент Шелтон	42
1308	Затерянные в космосе (1 сезон)	https://kinokrad.co/326738-zateryannye-v-kosmose-1-sezon.html	8	2018	США	фантастика, драма, приключения	Тим Соутэм, Нил Маршалл, Стивен Серджик	60
1309	Грейс и Фрэнки (4 сезон)	https://kinokrad.co/324842-greys-i-frenki-4-sezon.html	6	2018	США	комедия	Ребекка Эшер, Алекс Хардкасл, Арлин Санфорд	30
1310	Утиные истории (2 сезон)	https://kinokrad.co/334117-utinye-istorii-2-sezon.html	6	2018	США	мультфильм, фантастика, фэнтези, комедия, детектив, приключения, семейный	Мэттью Хэмфрис, Джон Аошима, Дэна Террас	21
1311	Стрела (7 сезон)	https://kinokrad.co/330314-strela-7-sezon.html	6	2018	США	фантастика, боевик, драма, криминал, детектив, приключения	Джон Беринг, Джеймс Бэмфорд, Майкл Шульц	43
1312	Новый Амстердам (1 сезон)	https://kinokrad.co/331196-novyy-amsterdam-1-sezon.html	8	2018	США	драма	Кейт Дэннис, Лаура Белси, Питер Хортон	43
1313	Священная ложь (1 сезон)	https://kinokrad.co/329189-svyaschennaya-lozh-1-sezon.html	8	2018	США	ужасы, драма	Скотт Уинант, Сара Бойд, Шери Фоксон	50
1314	Рейк (5 сезон)	https://kinokrad.co/329345-reyk-5-sezon.html	6	2018	Австралия	драма, комедия	Питер Дункан, Роуэн Вудс, Джесика Хоббс	43
1315	Касл-Рок (1 сезон)	https://kinokrad.co/328484-kasl-rok-1-sezon.html	7	2018	США	триллер, ужасы, фэнтези, драма, детектив	Майкл Аппендаль, Дэниэл Эттиэс, Эндрю Бернштейн	60
1316	Снегопад (2 сезон)	https://kinokrad.co/328616-snegopad-2-sezon.html	8	2018	США	драма, криминал	Джон Синглтон, Дэниэл Эттиэс, Майкл Леманн	44
1317	Шучу (1 сезон)	https://kinokrad.co/329459-shuchu-1-sezon.html	7	2018	США	драма, комедия	Мишель Гондри, Джейк Шрейер, Минки Спиро	22
1318	Волшебники (3 сезон)	https://kinokrad.co/324653-volshebniki-3-sezon.html	8	2018	США	фэнтези, драма	Крис Фишер, Джошуа Батлер, Джеймс Л. Конуэй	60
1319	Проклятие спящих (1 сезон)	https://kinokrad.co/325937-proklyatie-spyaschih-1-sezon.html	6	2018	Россия	триллер	Илья Куликов, Никита Грамматиков	48
1320	Алиенист (1 сезон)	https://kinokrad.co/325910-alienist-1-sezon.html	9	2018	США	драма, детектив	Якоб Вербрюгген, Пако Кабесас, Джеймс Хоуз	60
1321	Другое время (3 сезон)	https://kinokrad.co/325310-drugoe-vremya-3-sezon.html	5	2018	США	комедия, история	Джереми Коннер	21
1322	Первая команда: Ювентус (1 сезон)	https://kinokrad.co/325901-pervaya-komanda-yuventus-1-sezon.html	8	2018	США	реальное ТВ, спорт		40
1323	По ту сторону/Двойник (1 сезон)	https://kinokrad.co/325223-dvoynik-1-sezon.html	7	2018	США	фантастика, триллер, драма	Алик Сахаров, Мортен Тильдум, Стивен Уильямс	60
1324	Монстры корпорации (1 сезон)	https://kinokrad.co/325889-monstry-korporacii-1-sezon.html	7	2018	США	комедия	Пэт Бишоп	30
1325	Настоящие занозы / Зануды (1 сезон)	https://kinokrad.co/332876-nastoyaschie-zanozy-zanudy-1-sezon.html	6	2018	Франция	фэнтези, боевик, драма, комедия, военный	Морган С. Далибер, Valentin Vincent	29
1326	Баскетс / Клоун (3 сезон)	https://kinokrad.co/325334-baskets-kloun-3-sezon.html	4	2018	США	драма, комедия	Джонатан Крисел	30
1327	По ту сторону смерти (1 сезон)	https://kinokrad.co/325883-po-tu-storonu-smerti-1-sezon.html	6	2018	Россия	детектив, триллер	Сергей Чекалов	50
1328	Эш против Зловещих мертвецов (3 сезон)	https://kinokrad.co/325862-esh-protiv-zloveschih-mertvecov-3-sezon.html	8	2018	США	ужасы, фэнтези, боевик, комедия	Марк Бисли, Рик Джейкобсон, Тони Тилс	30
1329	Неизвестный враг (1 сезон)	https://kinokrad.co/332879-neizvestnyy-vrag-1-sezon.html	5	2018	Мексика	триллер	Гэбриел Рипштейн	60
1330	Реставратор (1 сезон)	https://kinokrad.co/332867-restavrator-1-sezon.html	5	2018	Россия	детектив	Карен Захаров	47
1331	Год культуры (1 сезон)	https://kinokrad.co/332015-god-kultury-1-sezon.html	7	2018	Россия	комедия	Тито Калатозишвили	44
1332	Убийства по пятницам (1 сезон)	https://kinokrad.co/332816-ubiystva-po-pyatnicam-1-sezon.html	5	2018	Россия	детектив	Карен Захаров	44
1333	Цена прошлого (1 сезон)	https://kinokrad.co/332813-cena-proshlogo-1-sezon.html	4	2018	Россия	мелодрама	Карен Захаров	44
1334	Хорошее место / В лучшем мире (3 сезон)	https://kinokrad.co/330713-horoshee-mesto-v-luchshem-mire-3-sezon.html	7	2018	США	фэнтези, драма, мелодрама, комедия	Дин Холлэнд, Морган Сэкетт, Бет МакКарти-Миллер	22
1335	Происхождение (1 сезон)	https://kinokrad.co/332777-proishozhdenie-1-sezon.html	8	2018	Великобритания	ужасы, фантастика	Пол У. С. Андерсон, Марк Брозел, Хуан Карлос Медина	45
1336	Нераскрытое дело (1 сезон)	https://kinokrad.co/326549-neraskrytoe-delo-1-sezon.html	8	2018	США	криминал, биография	Энтони Хемингуэй, Кейт Вудс, Эрнест Р. Дикерсон	60
1337	Дарреллы (3 сезон)	https://kinokrad.co/326357-darrelly-3-sezon.html	7	2018	Великобритания	драма, мелодрама, комедия, биография	Роджер Голдби, Стив Бэррон, Эдвард Холл	46
1338	Берёзка (1 сезон)	https://kinokrad.co/326504-berezka-1-sezon.html	6	2018	Россия	мелодрама	Александр Баранов	51
1339	Лемони Сникет: 33 несчастья (2 сезон)	https://kinokrad.co/326336-lemoni-sniket-33-neschastya-2-sezon.html	7	2018	США	драма, комедия, детектив, приключения, семейный	Барри Зонненфельд, Бо Уэлш, Марк Палански	50
1340	Из Лос-Анджелеса в Вегас (1 сезон)	https://kinokrad.co/324458-iz-los-andzhelesa-v-vegas-1-sezon.html	6	2018	США	комедия	Стивен Левитан, Бет МакКарти-Миллер, Линда Мендоса	30
1341	Опасная книга для мальчиков (1 сезон)	https://kinokrad.co/326450-opasnaya-kniga-dlya-malchikov-1-sezon.html	6	2018	США	драма, комедия, семейный	Люк Мэзени, Грег Моттола, Тодд Бирман	43
1342	Гриффины (17 сезон)	https://kinokrad.co/329564-griffiny-17-sezon.html	6	2018	США	мультфильм, комедия	Джеймс Пурдум, Питер Шин, Доминик Бьянчи	22
1343	Спецназ города ангелов (2 сезон)	https://kinokrad.co/330062-specnaz-goroda-angelov-2-sezon.html	7	2018	США	боевик, триллер, драма, криминал, приключения	Билл Джирхарт, Джон Шоуолтер, Гай Ферленд	43
1344	Мистер Булл (3 сезон)	https://kinokrad.co/330080-mister-bull-3-sezon.html	6	2018	США	драма, комедия, криминал	Дэннис Смит, Дуглас Арниокоски, Дэн Лернер	60
1345	Супергёрл (4 сезон)	https://kinokrad.co/330350-supergerl-4-sezon.html	5	2018	США	фантастика, боевик, драма, приключения	Глен Винтер, Джесси Уарн, Ларри Тенг	43
1346	Права на престол Абдулхамид (3 сезон)	https://kinokrad.co/335359-prava-na-prestol-abdulhamid-3-sezon.html	5	2018	Турция	боевик, драма, история	Эмре Конук, Сердар Акар	120
1347	Королева юга (3 сезон)	https://kinokrad.co/328406-koroleva-yuga-3-sezon.html	7	2018	США	боевик, триллер, драма, криминал	Дэвид Бойд, Дэйв Родригез, Эдуардо Санчес	42
1348	Миллиарды (3 сезон)	https://kinokrad.co/326294-milliardy-3-sezon.html	8	2018	США	драма	Колин Бакси, Анна Боден, Райан Флек	60
1349	Дождь (2 сезон)	https://kinokrad.co/336325-dozhd-2-sezon.html	6	2018	Дания, США	фантастика, триллер, драма	Кеннет Кайнц, Наташа Артю, Сёрен Балле	45
1350	Переправа (1 сезон)	https://kinokrad.co/326444-pereprava-1-sezon.html	8	2018	США	фантастика, драма, приключения	Роб Боумен, Кен Джиротти, Джеффри Дж. Хант	42
1566	Чистый лист (1 сезон)	https://kinokrad.co/326897-chistyy-list-1-sezon.html	7	2017	Бельгия	триллер	Kaat Beels, Jonas Govaerts	60
1351	Версаль (3 сезон)	https://kinokrad.co/327242-versal-3-sezon.html	8	2018	Франция, Канада	драма, мелодрама, биография, история	Christian Langlois, Томас Винсент, Ричард Кларк	52
1352	Девочки не сдаются (1 сезон)	https://kinokrad.co/326888-devochki-ne-sdayutsya-1-sezon.html	7	2018	Россия	комедия, драма	Сергей Краснов, Мария Кравченко, Артем Насыбулин	48
1353	Городские легенды (2 сезон)	https://kinokrad.co/326735-gorodskie-legendy-2-sezon.html	4	2018	Великобритания	комедия, приключения, биография	Бен Палмер, Джеффри Сакс, Дэн Зефф	22
1354	Остаться в живых (1 сезон)	https://kinokrad.co/327158-ostatsya-v-zhivyh-1-sezon.html	5	2018	Россия	драма, военный	Андрей Малюков	48
1355	На пороге любви (1 сезон)	https://kinokrad.co/327119-na-poroge-lyubvi-1-sezon.html	4	2018	Россия	военный, мелодрама	Виталий Бабенко	180
1356	Красивая сестра, которая покупает мне еду (1 сезон)	https://kinokrad.co/327053-krasivaya-sestra-kotoraya-pokupaet-mne-edu-1-sezon.html	8	2018	Корея Южная	мелодрама	Ан Пхан-сок	70
1357	Дождь (1 сезон)	https://kinokrad.co/327056-dozhd-1-sezon.html	6	2018	Дания, США	фантастика, триллер, драма	Кеннет Кайнц, Наташа Артю	45
1358	Мистер Мерседес (2 сезон)	https://kinokrad.co/329054-mister-mersedes-2-sezon.html	8	2018	США	триллер	Джек Бендер, Джон Дэвид Коулз, Кевин Хукс	60
1359	Йеллоустоун (1 сезон)	https://kinokrad.co/327824-yelloustoun-1-sezon.html	8	2018	США	драма, вестерн	Тейлор Шеридан	60
1360	Черноватый / Чёрная комедия (5 сезон)	https://kinokrad.co/330869-chernovatyy-chernaya-komediya-5-sezon.html	6	2018	США	комедия	Антон Кроппер, Кен Уиттингэм, Мэттью Сон	22
1361	Полиция Чикаго (6 сезон)	https://kinokrad.co/330179-policiya-chikago-6-sezon.html	7	2018	США	боевик, триллер, драма, криминал	Марк Тинкер, Ник Гомез, Эрик Ла Салль	43
1362	Династия (2 сезон)	https://kinokrad.co/329912-dinastiya-2-sezon.html	7	2018	США	драма	Мэтт Эрл Бисли, Майкл А. Алловиц, Паскаль Верскурис	42
1363	Московская пленница (1 сезон)	https://kinokrad.co/325841-moskovskaya-plennica-1-sezon.html	5	2017	Россия	мелодрама	Наталья Хлопецкая	60
1364	Линия огня (1 сезон)	https://kinokrad.co/325817-liniya-ognya-1-sezon.html	4	2017	Россия	драма, криминал	Александр Калугин	48
1365	Джеймстаун (2 сезон)	https://kinokrad.co/325811-dzheymstaun-2-sezon.html	8	2017	Великобритания	драма, история	Пол Вильшурст, Джон Александр, Сэмюэл Донован	60
1366	Падение Ордена (1 сезон)	https://kinokrad.co/323519-padenie-ordena-1-sezon.html	8	2017	США	боевик, драма, приключения	Дуглас Маккиннон, Дэвид Петрарка, Метин Хусейн	60
1367	Библиотекари (4 сезон)	https://kinokrad.co/323663-bibliotekari-4-sezon.html	8	2017	США	фантастика, приключения	Марк Роскин, Джонатан Фрейкс, Дин Девлин	42
1368	Академия ведьмочек (1 сезон)	https://kinokrad.co/324773-akademiya-vedmochek-1-sezon.html	7	2017	Япония	аниме, мультфильм, комедия, фэнтези	Ё Ёсинари, Ёсихиро Миядзима, Кодзи Аритоми	24
1369	Мэри убивает людей (2 сезон)	https://kinokrad.co/324425-meri-ubivaet-lyudey-2-sezon.html	7	2017	Канада	драма	Холли Дэйл, Дэвид Уэллингтон, Норма Бэйли	44
1370	4 квартала (1 сезон)	https://kinokrad.co/324710-4-kvartala-1-sezon.html	7	2017	Германия	драма, криминал	Марвин Крен	60
1371	Сосед всегда прав / 9J, 9K и 9L (1 сезон)	https://kinokrad.co/322663-9j-9k-i-9l-1-sezon.html	6	2017	США	комедия	Памела Фрайман, Виктор Гонзалез	22
1372	Виктория (2 сезон)	https://kinokrad.co/321570-viktoriya-2-sezon-2017.html	8	2017	Великобритания	драма, биография, история	Оливер Блэкберн, Том Вон, Сандра Голдбахер	60
1373	Казнить нельзя помиловать (1 сезон)	https://kinokrad.co/323651-kaznit-nelzya-pomilovat-1-sezon.html	7	2017	Россия	история, детектив	Ким Дружинин	47
1374	Хождение по мукам (1 сезон)	https://kinokrad.co/323607-hozhdenie-po-mukam-1-sezon.html	6	2017	Россия	драма	Константин Худяков	55
1375	Девушка по вызову (2 сезон)	https://kinokrad.co/323103-devushka-po-vyzovu-2-sezon.html	6	2017	США	драма	Лодж Х. Керриган, Эми Саймец	27
1376	Родина (6 сезон)	https://kinokrad.co/312658-rodina-6-sezon-2017.html	7	2017	США	триллер, драма, криминал, детектив	Лесли Линка Глаттер, Майкл Куэста, Дэниэл Эттиэс	55
1377	Белая принцесса (1 сезон)	https://kinokrad.co/315590-belaya-princessa-1-sezon-2017.html	7	2017	США	драма	Джэми Пэйн, Алекс Калимниос	55
1378	Гоморра (3 сезон)	https://kinokrad.co/323191-gomorra-3-sezon.html	8	2017	Италия, Германия	драма, криминал	Клаудио Капеллини, Стефано Соллима, Франческа Коменчини	50
1379	Фортитьюд (2 сезон)	https://kinokrad.co/313466-fortityud-2-sezon-2017.html	7	2017	Великобритания	ужасы, триллер, драма, детектив	Хетти Макдональд, Кирон Хоукс, Сэм Миллер	47
1380	Марлон (1 сезон)	https://kinokrad.co/319994-marlon-1-sezon-2017.html	7	2017	США	комедия	Робби Кантримэн, Эрик Дин Ситон, Энди Экерман	22
1381	Детективное агентство Дирка Джентли (2 сезон)	https://kinokrad.co/322495-detektivnoe-agentstvo-dirka-dzhentli-2-sezon.html	7	2017	США, Великобритания	фантастика, комедия	Пако Кабесас, Тамра Дэвис, Майкл Патрик Джэнн	60
1382	Острые козырьки / Заточенные кепки (4 сезон)	https://kinokrad.co/323227-ostrye-kozyrki-4-sezon.html	9	2017	Великобритания	драма, криминал	Колм МакКарти, Тим Милантс, Дэвид Кэффри	60
1383	Звёздная принцесса и силы зла (3 сезон)	https://kinokrad.co/324551-zvezdnaya-princessa-i-sily-zla-3-sezon.html	7	2017	США	мультфильм, фантастика, фэнтези, комедия, приключения, семейный, мистика	Аарон Хэммерсли, Доминик Бисигнано, Пьеро Пилузо	23
1384	Хороший доктор (1 сезон)	https://kinokrad.co/321902-horoshiy-doktor-1-sezon.html	9	2017	США	драма	Джон Дал, Сет Гордон, Майк Листо	41
1385	Методом проб и ошибок (1 сезон)	https://kinokrad.co/325295-metodom-prob-i-oshibok-1-sezon.html	6	2017	США	комедия, детектив	Джеффри Блитц, Мэттью Сон, Ребекка Эшер	22
1386	Ответный удар (6 сезон)	https://kinokrad.co/323119-otvetnyy-udar-6-sezon.html	6	2017	Великобритания	боевик, триллер, драма	Майкл Дж. Бассетт, Дэниэл Персивал, Билл Иглз	45
1387	Исповедальные плёнки (1 сезон)	https://kinokrad.co/325196-ispovedalnye-plenki-1-sezon.html	7	2017	США	документальный, криминал	Kelly Loudenberg	46
1388	Воскресший Эртугрул (4 сезон)	https://kinokrad.co/322687-voskresshiy-ertugrul-4-sezon.html	8	2017	Турция	боевик, драма, приключения, военный, история	Метин Гюнай, Akif Özkan, Хакан Арслан	120
1389	Завучи (2 сезон)	https://kinokrad.co/334276-zavuchi-2-sezon.html	8	2017	США	комедия	Джоди Хилл, Дэвид Гордон Грин, Дэнни МакБрайд	30
1390	Удивительная миссис Мейзел (1 сезон)	https://kinokrad.co/323619-udivitelnaya-missis-meyzel-1-sezon.html	8	2017	США	драма, комедия	Эми Шерман-Палладино, Дэниэл Палладино, Скотт Эллис	57
1391	Драконы и всадники Олуха (5 сезон)	https://kinokrad.co/321566-drakony-i-vsadniki-oluha-5-sezon-2017.html	8	2017	США	мультфильм, фэнтези, комедия, приключения, семейный	Энтони Белл, Джон Санфорд, Луи дель Кармен	22
1392	Закон и порядок. Специальный корпус (19 сезон)	https://kinokrad.co/322263-zakon-i-poryadok.-specialnyy-korpus-19-sezon.html	6	2017	США	триллер, драма, криминал, детектив	Дэвид Платт, Питер Лето, Жан Де Сегонзак	43
1393	Деми хотят поболтать (1 сезон)	https://kinokrad.co/325187-demi-hotyat-poboltat-1-sezon.html	8	2017	Япония	аниме, мультфильм, фэнтези, комедия	Рё Андо, Тосимаса Исий, Jun Nakagawa	24
1394	Призрачные войны (1 сезон)	https://kinokrad.co/321642-prizrachnye-voyny-1-sezon-2017.html	6	2017	США, Канада	ужасы, фэнтези, драма, мистика	Дэвид Фон Энкен, Саймон Бэрри, Матиас Хендл	40
1395	Государственный секретарь (4 сезон)	https://kinokrad.co/323099-gosudarstvennyy-sekretar-4-sezon.html	6	2017	США	драма	Эрик Столц, Джонатан Браун, Шарлотта Брандстром	45
1396	Фостеры (5 сезон)	https://kinokrad.co/319010-fostery-5-sezon-2017.html	7	2017	США	драма, мелодрама	Норман Бакли, Элоди Кин, Роб Морроу	45
1397	Чикаго в огне (6 сезон)	https://kinokrad.co/322579-chikago-v-ogne-6-sezon.html	8	2017	США	драма	Джо Чаппелль, Реза Табризи, Сэнфорд Букставер	43
1398	Закусочная Боба (8 сезон)	https://kinokrad.co/323183-zakusochnaya-boba-8-sezon.html	5	2017	США	мультфильм, комедия	Бернард Дерриман, Тайри Диллихей, Дженнифер Койл	22
1399	Симпсоны (29 сезон)	https://kinokrad.co/322759-simpsony-29-sezon.html	8	2017	США	мультфильм, комедия	Марк Керклэнд, Стивен Дин Мур, Боб Андерсон	22
1400	Американская семейка (9 сезон)	https://kinokrad.co/321590-amerikanskaya-semeyka-9-sezon-2017.html	7	2017	США	мелодрама, комедия	Гейл Манкусо, Майкл Алан Спиллер, Джейсон Уайнер	22
1401	Американская семейка (10 сезон)	https://kinokrad.co/330086-amerikanskaya-semeyka-10-sezon.html	6	2018	США	мелодрама, комедия	Гейл Манкусо, Стивен Левитан, Бет МакКарти-Миллер	22
1402	Стас всё сдаст (1 сезон)	https://kinokrad.co/328589-stas-vse-sdast-1-sezon.html	6	2018	Великобритания	комедия	Том Кингсли	30
1403	Ненасытная (1 сезон)	https://kinokrad.co/328586-nenasytnaya-1-sezon.html	6	2018	США	драма, комедия	Эндрю Флеминг, Лев Л. Спиро, Брайан Дэннели	45
1404	СашаТаня (5 сезон)	https://kinokrad.co/326762-sashatanya-5-sezon.html	5	2018	Россия	комедия	Сергей Казачанский, Михаил Старчак, Андрей Богатырев	24
1405	Наш мультяшный президент (1 сезон)	https://kinokrad.co/328472-nash-multyashnyy-prezident-1-sezon.html	5	2018	США	мультфильм, комедия	Мак Уильямс, Стив Коннер	30
1406	Юристы (1 сезон)	https://kinokrad.co/335719-yuristy-1-sezon.html	6	2018	Россия	драма	Павел Игнатов	50
1407	Империя (5 сезон)	https://kinokrad.co/329444-imperiya-5-sezon.html	6	2018	США	драма, музыка	Санаа Хамри, Крэйг Брюэр, Милисент Шелтон	42
1408	Затерянные в космосе (1 сезон)	https://kinokrad.co/326738-zateryannye-v-kosmose-1-sezon.html	8	2018	США	фантастика, драма, приключения	Тим Соутэм, Нил Маршалл, Стивен Серджик	60
1409	Грейс и Фрэнки (4 сезон)	https://kinokrad.co/324842-greys-i-frenki-4-sezon.html	6	2018	США	комедия	Ребекка Эшер, Алекс Хардкасл, Арлин Санфорд	30
1410	Утиные истории (2 сезон)	https://kinokrad.co/334117-utinye-istorii-2-sezon.html	6	2018	США	мультфильм, фантастика, фэнтези, комедия, детектив, приключения, семейный	Мэттью Хэмфрис, Джон Аошима, Дэна Террас	21
1411	Стрела (7 сезон)	https://kinokrad.co/330314-strela-7-sezon.html	6	2018	США	фантастика, боевик, драма, криминал, детектив, приключения	Джон Беринг, Джеймс Бэмфорд, Майкл Шульц	43
1412	Новый Амстердам (1 сезон)	https://kinokrad.co/331196-novyy-amsterdam-1-sezon.html	8	2018	США	драма	Кейт Дэннис, Лаура Белси, Питер Хортон	43
1413	Священная ложь (1 сезон)	https://kinokrad.co/329189-svyaschennaya-lozh-1-sezon.html	8	2018	США	ужасы, драма	Скотт Уинант, Сара Бойд, Шери Фоксон	50
1414	Рейк (5 сезон)	https://kinokrad.co/329345-reyk-5-sezon.html	6	2018	Австралия	драма, комедия	Питер Дункан, Роуэн Вудс, Джесика Хоббс	43
1415	Касл-Рок (1 сезон)	https://kinokrad.co/328484-kasl-rok-1-sezon.html	7	2018	США	триллер, ужасы, фэнтези, драма, детектив	Майкл Аппендаль, Дэниэл Эттиэс, Эндрю Бернштейн	60
1416	Снегопад (2 сезон)	https://kinokrad.co/328616-snegopad-2-sezon.html	8	2018	США	драма, криминал	Джон Синглтон, Дэниэл Эттиэс, Майкл Леманн	44
1417	Шучу (1 сезон)	https://kinokrad.co/329459-shuchu-1-sezon.html	7	2018	США	драма, комедия	Мишель Гондри, Джейк Шрейер, Минки Спиро	22
1418	Волшебники (3 сезон)	https://kinokrad.co/324653-volshebniki-3-sezon.html	8	2018	США	фэнтези, драма	Крис Фишер, Джошуа Батлер, Джеймс Л. Конуэй	60
1419	Проклятие спящих (1 сезон)	https://kinokrad.co/325937-proklyatie-spyaschih-1-sezon.html	6	2018	Россия	триллер	Илья Куликов, Никита Грамматиков	48
1420	Алиенист (1 сезон)	https://kinokrad.co/325910-alienist-1-sezon.html	9	2018	США	драма, детектив	Якоб Вербрюгген, Пако Кабесас, Джеймс Хоуз	60
1421	Другое время (3 сезон)	https://kinokrad.co/325310-drugoe-vremya-3-sezon.html	5	2018	США	комедия, история	Джереми Коннер	21
1422	Первая команда: Ювентус (1 сезон)	https://kinokrad.co/325901-pervaya-komanda-yuventus-1-sezon.html	8	2018	США	реальное ТВ, спорт		40
1423	По ту сторону/Двойник (1 сезон)	https://kinokrad.co/325223-dvoynik-1-sezon.html	7	2018	США	фантастика, триллер, драма	Алик Сахаров, Мортен Тильдум, Стивен Уильямс	60
1424	Монстры корпорации (1 сезон)	https://kinokrad.co/325889-monstry-korporacii-1-sezon.html	7	2018	США	комедия	Пэт Бишоп	30
1425	Настоящие занозы / Зануды (1 сезон)	https://kinokrad.co/332876-nastoyaschie-zanozy-zanudy-1-sezon.html	6	2018	Франция	фэнтези, боевик, драма, комедия, военный	Морган С. Далибер, Valentin Vincent	29
1426	Баскетс / Клоун (3 сезон)	https://kinokrad.co/325334-baskets-kloun-3-sezon.html	4	2018	США	драма, комедия	Джонатан Крисел	30
1427	По ту сторону смерти (1 сезон)	https://kinokrad.co/325883-po-tu-storonu-smerti-1-sezon.html	6	2018	Россия	детектив, триллер	Сергей Чекалов	50
1428	Эш против Зловещих мертвецов (3 сезон)	https://kinokrad.co/325862-esh-protiv-zloveschih-mertvecov-3-sezon.html	8	2018	США	ужасы, фэнтези, боевик, комедия	Марк Бисли, Рик Джейкобсон, Тони Тилс	30
1429	Неизвестный враг (1 сезон)	https://kinokrad.co/332879-neizvestnyy-vrag-1-sezon.html	5	2018	Мексика	триллер	Гэбриел Рипштейн	60
1430	Реставратор (1 сезон)	https://kinokrad.co/332867-restavrator-1-sezon.html	5	2018	Россия	детектив	Карен Захаров	47
1431	Год культуры (1 сезон)	https://kinokrad.co/332015-god-kultury-1-sezon.html	7	2018	Россия	комедия	Тито Калатозишвили	44
1432	Убийства по пятницам (1 сезон)	https://kinokrad.co/332816-ubiystva-po-pyatnicam-1-sezon.html	5	2018	Россия	детектив	Карен Захаров	44
1433	Цена прошлого (1 сезон)	https://kinokrad.co/332813-cena-proshlogo-1-sezon.html	4	2018	Россия	мелодрама	Карен Захаров	44
1434	Хорошее место / В лучшем мире (3 сезон)	https://kinokrad.co/330713-horoshee-mesto-v-luchshem-mire-3-sezon.html	7	2018	США	фэнтези, драма, мелодрама, комедия	Дин Холлэнд, Морган Сэкетт, Бет МакКарти-Миллер	22
1435	Происхождение (1 сезон)	https://kinokrad.co/332777-proishozhdenie-1-sezon.html	8	2018	Великобритания	ужасы, фантастика	Пол У. С. Андерсон, Марк Брозел, Хуан Карлос Медина	45
1436	Нераскрытое дело (1 сезон)	https://kinokrad.co/326549-neraskrytoe-delo-1-sezon.html	8	2018	США	криминал, биография	Энтони Хемингуэй, Кейт Вудс, Эрнест Р. Дикерсон	60
1437	Дарреллы (3 сезон)	https://kinokrad.co/326357-darrelly-3-sezon.html	7	2018	Великобритания	драма, мелодрама, комедия, биография	Роджер Голдби, Стив Бэррон, Эдвард Холл	46
1438	Берёзка (1 сезон)	https://kinokrad.co/326504-berezka-1-sezon.html	6	2018	Россия	мелодрама	Александр Баранов	51
1439	Лемони Сникет: 33 несчастья (2 сезон)	https://kinokrad.co/326336-lemoni-sniket-33-neschastya-2-sezon.html	7	2018	США	драма, комедия, детектив, приключения, семейный	Барри Зонненфельд, Бо Уэлш, Марк Палански	50
1440	Из Лос-Анджелеса в Вегас (1 сезон)	https://kinokrad.co/324458-iz-los-andzhelesa-v-vegas-1-sezon.html	6	2018	США	комедия	Стивен Левитан, Бет МакКарти-Миллер, Линда Мендоса	30
1441	Опасная книга для мальчиков (1 сезон)	https://kinokrad.co/326450-opasnaya-kniga-dlya-malchikov-1-sezon.html	6	2018	США	драма, комедия, семейный	Люк Мэзени, Грег Моттола, Тодд Бирман	43
1442	Гриффины (17 сезон)	https://kinokrad.co/329564-griffiny-17-sezon.html	6	2018	США	мультфильм, комедия	Джеймс Пурдум, Питер Шин, Доминик Бьянчи	22
1443	Спецназ города ангелов (2 сезон)	https://kinokrad.co/330062-specnaz-goroda-angelov-2-sezon.html	7	2018	США	боевик, триллер, драма, криминал, приключения	Билл Джирхарт, Джон Шоуолтер, Гай Ферленд	43
1444	Мистер Булл (3 сезон)	https://kinokrad.co/330080-mister-bull-3-sezon.html	6	2018	США	драма, комедия, криминал	Дэннис Смит, Дуглас Арниокоски, Дэн Лернер	60
1445	Супергёрл (4 сезон)	https://kinokrad.co/330350-supergerl-4-sezon.html	5	2018	США	фантастика, боевик, драма, приключения	Глен Винтер, Джесси Уарн, Ларри Тенг	43
1446	Права на престол Абдулхамид (3 сезон)	https://kinokrad.co/335359-prava-na-prestol-abdulhamid-3-sezon.html	5	2018	Турция	боевик, драма, история	Эмре Конук, Сердар Акар	120
1447	Королева юга (3 сезон)	https://kinokrad.co/328406-koroleva-yuga-3-sezon.html	7	2018	США	боевик, триллер, драма, криминал	Дэвид Бойд, Дэйв Родригез, Эдуардо Санчес	42
1448	Миллиарды (3 сезон)	https://kinokrad.co/326294-milliardy-3-sezon.html	8	2018	США	драма	Колин Бакси, Анна Боден, Райан Флек	60
1449	Дождь (2 сезон)	https://kinokrad.co/336325-dozhd-2-sezon.html	6	2018	Дания, США	фантастика, триллер, драма	Кеннет Кайнц, Наташа Артю, Сёрен Балле	45
1450	Переправа (1 сезон)	https://kinokrad.co/326444-pereprava-1-sezon.html	8	2018	США	фантастика, драма, приключения	Роб Боумен, Кен Джиротти, Джеффри Дж. Хант	42
1451	Версаль (3 сезон)	https://kinokrad.co/327242-versal-3-sezon.html	8	2018	Франция, Канада	драма, мелодрама, биография, история	Christian Langlois, Томас Винсент, Ричард Кларк	52
1452	Девочки не сдаются (1 сезон)	https://kinokrad.co/326888-devochki-ne-sdayutsya-1-sezon.html	7	2018	Россия	комедия, драма	Сергей Краснов, Мария Кравченко, Артем Насыбулин	48
1453	Городские легенды (2 сезон)	https://kinokrad.co/326735-gorodskie-legendy-2-sezon.html	4	2018	Великобритания	комедия, приключения, биография	Бен Палмер, Джеффри Сакс, Дэн Зефф	22
1454	Остаться в живых (1 сезон)	https://kinokrad.co/327158-ostatsya-v-zhivyh-1-sezon.html	5	2018	Россия	драма, военный	Андрей Малюков	48
1455	На пороге любви (1 сезон)	https://kinokrad.co/327119-na-poroge-lyubvi-1-sezon.html	4	2018	Россия	военный, мелодрама	Виталий Бабенко	180
1456	Красивая сестра, которая покупает мне еду (1 сезон)	https://kinokrad.co/327053-krasivaya-sestra-kotoraya-pokupaet-mne-edu-1-sezon.html	8	2018	Корея Южная	мелодрама	Ан Пхан-сок	70
1457	Дождь (1 сезон)	https://kinokrad.co/327056-dozhd-1-sezon.html	6	2018	Дания, США	фантастика, триллер, драма	Кеннет Кайнц, Наташа Артю	45
1458	Мистер Мерседес (2 сезон)	https://kinokrad.co/329054-mister-mersedes-2-sezon.html	8	2018	США	триллер	Джек Бендер, Джон Дэвид Коулз, Кевин Хукс	60
1459	Йеллоустоун (1 сезон)	https://kinokrad.co/327824-yelloustoun-1-sezon.html	8	2018	США	драма, вестерн	Тейлор Шеридан	60
1460	Черноватый / Чёрная комедия (5 сезон)	https://kinokrad.co/330869-chernovatyy-chernaya-komediya-5-sezon.html	6	2018	США	комедия	Антон Кроппер, Кен Уиттингэм, Мэттью Сон	22
1461	Полиция Чикаго (6 сезон)	https://kinokrad.co/330179-policiya-chikago-6-sezon.html	7	2018	США	боевик, триллер, драма, криминал	Марк Тинкер, Ник Гомез, Эрик Ла Салль	43
1462	Династия (2 сезон)	https://kinokrad.co/329912-dinastiya-2-sezon.html	7	2018	США	драма	Мэтт Эрл Бисли, Майкл А. Алловиц, Паскаль Верскурис	42
1463	Московская пленница (1 сезон)	https://kinokrad.co/325841-moskovskaya-plennica-1-sezon.html	5	2017	Россия	мелодрама	Наталья Хлопецкая	60
1464	Линия огня (1 сезон)	https://kinokrad.co/325817-liniya-ognya-1-sezon.html	4	2017	Россия	драма, криминал	Александр Калугин	48
1465	Джеймстаун (2 сезон)	https://kinokrad.co/325811-dzheymstaun-2-sezon.html	8	2017	Великобритания	драма, история	Пол Вильшурст, Джон Александр, Сэмюэл Донован	60
1466	Падение Ордена (1 сезон)	https://kinokrad.co/323519-padenie-ordena-1-sezon.html	8	2017	США	боевик, драма, приключения	Дуглас Маккиннон, Дэвид Петрарка, Метин Хусейн	60
1467	Библиотекари (4 сезон)	https://kinokrad.co/323663-bibliotekari-4-sezon.html	8	2017	США	фантастика, приключения	Марк Роскин, Джонатан Фрейкс, Дин Девлин	42
1468	Академия ведьмочек (1 сезон)	https://kinokrad.co/324773-akademiya-vedmochek-1-sezon.html	7	2017	Япония	аниме, мультфильм, комедия, фэнтези	Ё Ёсинари, Ёсихиро Миядзима, Кодзи Аритоми	24
1469	Мэри убивает людей (2 сезон)	https://kinokrad.co/324425-meri-ubivaet-lyudey-2-sezon.html	7	2017	Канада	драма	Холли Дэйл, Дэвид Уэллингтон, Норма Бэйли	44
1470	4 квартала (1 сезон)	https://kinokrad.co/324710-4-kvartala-1-sezon.html	7	2017	Германия	драма, криминал	Марвин Крен	60
1471	Сосед всегда прав / 9J, 9K и 9L (1 сезон)	https://kinokrad.co/322663-9j-9k-i-9l-1-sezon.html	6	2017	США	комедия	Памела Фрайман, Виктор Гонзалез	22
1472	Виктория (2 сезон)	https://kinokrad.co/321570-viktoriya-2-sezon-2017.html	8	2017	Великобритания	драма, биография, история	Оливер Блэкберн, Том Вон, Сандра Голдбахер	60
1473	Казнить нельзя помиловать (1 сезон)	https://kinokrad.co/323651-kaznit-nelzya-pomilovat-1-sezon.html	7	2017	Россия	история, детектив	Ким Дружинин	47
1474	Хождение по мукам (1 сезон)	https://kinokrad.co/323607-hozhdenie-po-mukam-1-sezon.html	6	2017	Россия	драма	Константин Худяков	55
1475	Девушка по вызову (2 сезон)	https://kinokrad.co/323103-devushka-po-vyzovu-2-sezon.html	6	2017	США	драма	Лодж Х. Керриган, Эми Саймец	27
1476	Родина (6 сезон)	https://kinokrad.co/312658-rodina-6-sezon-2017.html	7	2017	США	триллер, драма, криминал, детектив	Лесли Линка Глаттер, Майкл Куэста, Дэниэл Эттиэс	55
1477	Белая принцесса (1 сезон)	https://kinokrad.co/315590-belaya-princessa-1-sezon-2017.html	7	2017	США	драма	Джэми Пэйн, Алекс Калимниос	55
1478	Гоморра (3 сезон)	https://kinokrad.co/323191-gomorra-3-sezon.html	8	2017	Италия, Германия	драма, криминал	Клаудио Капеллини, Стефано Соллима, Франческа Коменчини	50
1479	Фортитьюд (2 сезон)	https://kinokrad.co/313466-fortityud-2-sezon-2017.html	7	2017	Великобритания	ужасы, триллер, драма, детектив	Хетти Макдональд, Кирон Хоукс, Сэм Миллер	47
1480	Марлон (1 сезон)	https://kinokrad.co/319994-marlon-1-sezon-2017.html	7	2017	США	комедия	Робби Кантримэн, Эрик Дин Ситон, Энди Экерман	22
1481	Детективное агентство Дирка Джентли (2 сезон)	https://kinokrad.co/322495-detektivnoe-agentstvo-dirka-dzhentli-2-sezon.html	7	2017	США, Великобритания	фантастика, комедия	Пако Кабесас, Тамра Дэвис, Майкл Патрик Джэнн	60
1482	Острые козырьки / Заточенные кепки (4 сезон)	https://kinokrad.co/323227-ostrye-kozyrki-4-sezon.html	9	2017	Великобритания	драма, криминал	Колм МакКарти, Тим Милантс, Дэвид Кэффри	60
1483	Звёздная принцесса и силы зла (3 сезон)	https://kinokrad.co/324551-zvezdnaya-princessa-i-sily-zla-3-sezon.html	7	2017	США	мультфильм, фантастика, фэнтези, комедия, приключения, семейный, мистика	Аарон Хэммерсли, Доминик Бисигнано, Пьеро Пилузо	23
1484	Хороший доктор (1 сезон)	https://kinokrad.co/321902-horoshiy-doktor-1-sezon.html	9	2017	США	драма	Джон Дал, Сет Гордон, Майк Листо	41
1485	Методом проб и ошибок (1 сезон)	https://kinokrad.co/325295-metodom-prob-i-oshibok-1-sezon.html	6	2017	США	комедия, детектив	Джеффри Блитц, Мэттью Сон, Ребекка Эшер	22
1486	Ответный удар (6 сезон)	https://kinokrad.co/323119-otvetnyy-udar-6-sezon.html	6	2017	Великобритания	боевик, триллер, драма	Майкл Дж. Бассетт, Дэниэл Персивал, Билл Иглз	45
1487	Исповедальные плёнки (1 сезон)	https://kinokrad.co/325196-ispovedalnye-plenki-1-sezon.html	7	2017	США	документальный, криминал	Kelly Loudenberg	46
1488	Воскресший Эртугрул (4 сезон)	https://kinokrad.co/322687-voskresshiy-ertugrul-4-sezon.html	8	2017	Турция	боевик, драма, приключения, военный, история	Метин Гюнай, Akif Özkan, Хакан Арслан	120
1489	Завучи (2 сезон)	https://kinokrad.co/334276-zavuchi-2-sezon.html	8	2017	США	комедия	Джоди Хилл, Дэвид Гордон Грин, Дэнни МакБрайд	30
1490	Удивительная миссис Мейзел (1 сезон)	https://kinokrad.co/323619-udivitelnaya-missis-meyzel-1-sezon.html	8	2017	США	драма, комедия	Эми Шерман-Палладино, Дэниэл Палладино, Скотт Эллис	57
1491	Драконы и всадники Олуха (5 сезон)	https://kinokrad.co/321566-drakony-i-vsadniki-oluha-5-sezon-2017.html	8	2017	США	мультфильм, фэнтези, комедия, приключения, семейный	Энтони Белл, Джон Санфорд, Луи дель Кармен	22
1492	Закон и порядок. Специальный корпус (19 сезон)	https://kinokrad.co/322263-zakon-i-poryadok.-specialnyy-korpus-19-sezon.html	6	2017	США	триллер, драма, криминал, детектив	Дэвид Платт, Питер Лето, Жан Де Сегонзак	43
1493	Деми хотят поболтать (1 сезон)	https://kinokrad.co/325187-demi-hotyat-poboltat-1-sezon.html	8	2017	Япония	аниме, мультфильм, фэнтези, комедия	Рё Андо, Тосимаса Исий, Jun Nakagawa	24
1494	Призрачные войны (1 сезон)	https://kinokrad.co/321642-prizrachnye-voyny-1-sezon-2017.html	6	2017	США, Канада	ужасы, фэнтези, драма, мистика	Дэвид Фон Энкен, Саймон Бэрри, Матиас Хендл	40
1495	Государственный секретарь (4 сезон)	https://kinokrad.co/323099-gosudarstvennyy-sekretar-4-sezon.html	6	2017	США	драма	Эрик Столц, Джонатан Браун, Шарлотта Брандстром	45
1496	Фостеры (5 сезон)	https://kinokrad.co/319010-fostery-5-sezon-2017.html	7	2017	США	драма, мелодрама	Норман Бакли, Элоди Кин, Роб Морроу	45
1497	Чикаго в огне (6 сезон)	https://kinokrad.co/322579-chikago-v-ogne-6-sezon.html	8	2017	США	драма	Джо Чаппелль, Реза Табризи, Сэнфорд Букставер	43
1498	Закусочная Боба (8 сезон)	https://kinokrad.co/323183-zakusochnaya-boba-8-sezon.html	5	2017	США	мультфильм, комедия	Бернард Дерриман, Тайри Диллихей, Дженнифер Койл	22
1499	Симпсоны (29 сезон)	https://kinokrad.co/322759-simpsony-29-sezon.html	8	2017	США	мультфильм, комедия	Марк Керклэнд, Стивен Дин Мур, Боб Андерсон	22
1500	Американская семейка (9 сезон)	https://kinokrad.co/321590-amerikanskaya-semeyka-9-sezon-2017.html	7	2017	США	мелодрама, комедия	Гейл Манкусо, Майкл Алан Спиллер, Джейсон Уайнер	22
1501	Агенты «Щ.И.Т.» (5 сезон)	https://kinokrad.co/323187-agenty-sch.i.t.-5-sezon.html	8	2017	США	фантастика, боевик, триллер, драма, приключения	Билл Джирхарт, Винс Мисиано, Кевин Танчароэн	45
1502	Дениз в моём сердце (2 сезон)	https://kinokrad.co/325415-deniz-v-moem-serdce-2-sezon.html	3	2017	Турция	драма	Aysun Akyüz	150
1503	Прекрасные создания (1 сезон)	https://kinokrad.co/329144-prekrasnye-sozdaniya-1-sezon.html	5	2017	Россия	мелодрама	Максим Субботин	90
1504	Дорогие белые (2 сезон)	https://kinokrad.co/326972-dorogie-belye-2-sezon.html	4	2017	США	драма, комедия	Justin Simian, Чарли МакДауэлл, Стивен К. Цутида	30
1505	Первый парень на деревне (1 сезон)	https://kinokrad.co/326966-pervyy-paren-na-derevne-1-sezon.html	6	2017	Россия	комедия	Николай Каптан	55
1506	Готэм (4 сезон)	https://kinokrad.co/321422-gotem-4-sezon-2017.html	7	2017	США	фантастика, боевик, триллер, драма, криминал, детектив	Дэнни Кэннон, Роб Бэйли, Т.Дж. Скотт	44
1507	Ривердэйл (2 сезон)	https://kinokrad.co/321999-riverdeyl-2-sezon.html	9	2017	США	драма, криминал, детектив	Ли Толанд Кригер, Эллисон Андерс, Роб Шейденгланц	45
1508	Анатомия страсти (14 сезон)	https://kinokrad.co/322719-anatomiya-strasti-14-sezon.html	7	2017	США	драма, мелодрама	Роб Корн, Кевин МакКидд, Шандра Уилсон	43
1509	Могучие рейнджеры. Сталь Ниндзя (1 сезон)	https://kinokrad.co/324068-moguchie-reyndzhery.-stal-nindzya-1-sezon.html	4	2017	США	фантастика, боевик	Саймон Беннетт, Michael Duignan, Оливер Драйвер	21
1510	По друзьям (1 сезон)	https://kinokrad.co/313194-po-druzyam-1-sezon-2017.html	6	2017	США	комедия	Джадд Апатоу, Крис Келли, Райан МакФол	30
1511	Не в деньгах счастье (1 сезон)	https://kinokrad.co/327452-ne-v-dengah-schaste-1-sezon.html	5	2017	Россия	мелодрама	Ольга Ланд	45
1512	Стрела (6 сезон)	https://kinokrad.co/322435-strela-6-sezon.html	7	2017	США	фантастика, боевик, драма, криминал, детектив, приключения	Джон Беринг, Майкл Шульц, Джеймс Бэмфорд	43
1513	Адвокат (9 сезон)	https://kinokrad.co/322003-advokat-9-sezon.html	6	2017	Россия	криминал, детектив	Дмитрий Фикс, Александр Павловский, Илья Максимов	48
1514	Путешественники (2 сезон)	https://kinokrad.co/323912-puteshestvenniki-2-sezon.html	8	2017	Канада, США	фантастика, триллер, драма, детектив	Энди Микита, Аманда Таппинг, Уильям Варинг	45
1515	Каинова печать (1 сезон)	https://kinokrad.co/327443-kainova-pechat-1-sezon.html	3	2017	Россия	драма, криминал	Владимир Фатьянов	48
1516	Беглецы / Ранэвэйс (1 сезон)	https://kinokrad.co/323647-beglecy-raneveys-1-sezon.html	7	2017	США	фантастика, боевик, драма	Роксанн Доусон, Питер Хор, Нина Лопес-Коррадо	60
1517	Лаудермилк / Лаодермилк (1 сезон)	https://kinokrad.co/324230-laudermilk-laodermilk-1-sezon.html	8	2017	США	комедия	Питер Фаррелли	30
1518	Особо тяжкие преступления (6 сезон)	https://kinokrad.co/323127-osobo-tyazhkie-prestupleniya-6-sezon.html	6	2017	США	драма, криминал, детектив	Майкл М. Робин, Стив Робин, Дэвид МакУиртер	43
1519	Тьма (1 сезон)	https://kinokrad.co/323882-tma-1-sezon.html	8	2017	Германия	триллер, драма, криминал, детектив, фантастика	Баран бо Одар	60
1520	Закон Майло Мерфи (1 сезон)	https://kinokrad.co/323774-zakon-merfi-1-sezon.html	8	2017	США	мультфильм, фэнтези, боевик, комедия, семейный	Роберт Хьюз, Боб Бауэн, Chris Ybarra	12
1521	Уильям наш, Шекспир (2 сезон)	https://kinokrad.co/321626-uilyam-nash-shekspir-2-sezon-2017.html	6	2017	Великобритания	комедия	Мэтт Липси	30
1522	Форс-мажоры (7 сезон)	https://kinokrad.co/318022-fors-mazhory-7-sezon-2017.html	8	2017	США	драма, комедия	Антон Кроппер, Майкл Смит, Кевин Брэй	43
1523	Мик (2 сезон)	https://kinokrad.co/322123-mik-2-sezon.html	8	2017	США	комедия	Рэндолл Айнхорн, Кэт Койро, Ричи Кин	30
1524	Ивановы-Ивановы (1 сезон)	https://kinokrad.co/325745-ivanovy-ivanovy-1-sezon.html	7	2017	Россия	комедия	Антон Федотов	24
1525	Просто нет слов (2 сезон)	https://kinokrad.co/321594-prosto-net-slov-2-sezon-2017.html	6	2017	США	комедия	Кристин Джернон, Уильям Перпл, Роберт Коэн	30
1526	Трудности ассимиляции (4 сезон)	https://kinokrad.co/322379-trudnosti-assimilyacii-4-sezon.html	7	2017	США	комедия	Уильям Перпл, Линн Шелтон, Клер Скэнлон	22
1527	Это мы (2 сезон)	https://kinokrad.co/322063-eto-my-2-sezon.html	7	2017	США	драма, комедия	Кен Олин, Гленн Фикарра, Джон Рекуа	45
1528	Богомол (1 сезон)	https://kinokrad.co/325706-bogomol-1-sezon.html	8	2017	Франция	триллер, драма, криминал	Александр Лорен	55
1529	Тихие люди (1 сезон)	https://kinokrad.co/325685-tihie-lyudi-1-sezon.html	5	2017	Россия	мелодрама	Владимир Фатьянов	45
1530	Тайны Фрэнки Дрейк (1 сезон)	https://kinokrad.co/323623-tayny-frenki-dreyk-1-sezon.html	5	2017	Канада	драма, криминал, детектив	Руба Надда, Садс Сазерленд, Норма Бэйли	60
1531	В лучшем мире (2 сезон)	https://kinokrad.co/321482-v-luchshem-mire-2-sezon-2017.html	7	2017	США	фэнтези, драма, мелодрама, комедия, семейный	Дин Холлэнд, Пэймэн Бенц, Такер Гейтс	30
1532	Доблесть (1 сезон)	https://kinokrad.co/322303-doblest-1-sezon.html	7	2017	США	драма	Майкл М. Робин	42
1533	Вся правда о медведях / Мы обычные медведи (3 сезон)	https://kinokrad.co/317294-vsya-pravda-o-medvedyah-3-sezon-2017.html	8	2017	США	мультфильм, фэнтези, комедия, семейный	Manny Hernandez	30
1534	Смилф (1 сезон)	https://kinokrad.co/323683-smilf-1-sezon.html	6	2017	США	комедия	Лесли Хэдланд, Эми Йорк Рубин, Фрэнки Шоу	30
1535	Хэппи (1 сезон)	https://kinokrad.co/323771-heppi-1-sezon.html	8	2017	США	фэнтези, триллер, комедия, криминал, детектив	Брайан Тейлор, Уэйн Йип, Дэвид Петрарка	60
1536	Британия (1 сезон)	https://kinokrad.co/324545-britaniya-1-sezon.html	8	2017	США, Великобритания	фэнтези, драма	Шери Фоксон, Кристоф Шреве, Люк Уотсон	60
1537	Более полный дом (3 сезон)	https://kinokrad.co/322375-bolee-polnyy-dom-3-sezon.html	7	2017	США	комедия, семейный	Рич Коррелл, Кэти Гарретсон, Марк Сендроуски	30
1538	Утиные истории (1 сезон)	https://kinokrad.co/323279-utinye-istorii-1-sezon.html	7	2017	США	мультфильм, комедия, приключения, семейный	Дэна Террас, Джон Аошима, Том Оуэнс	21
1539	Черепашки-ниндзя (5 сезон)	https://kinokrad.co/319722-cherepashki-nindzya-5-sezon-2017.html	8	2017	США	мультфильм, фантастика, боевик, драма, комедия, приключения, семейный	Сиро Ниели, Алан Ван, Бен Джонс	22
1540	Берлинский вокзал / Берлинский отдел (2 сезон)	https://kinokrad.co/322615-berlinskaya-rezidentura-2-sezon.html	7	2017	США, Германия	триллер	Джон Дэвид Коулз, Кристоф Шреве, Джузеппе Капотонди	60
1541	Изгоняющий дьявола (2 сезон)	https://kinokrad.co/323195-izgonyayuschiy-dyavola-2-sezon.html	8	2017	США	ужасы, триллер, драма	Джейсон Энслер, Майкл Нанкин, Билл Джонсон	45
1542	Корона (2 сезон)	https://kinokrad.co/323403-korona-2-sezon.html	7	2017	Великобритания, США	драма, история	Филип Мартин, Бенжамин Карон, Стивен Долдри	58
1543	Ранчо (2 сезон)	https://kinokrad.co/317498-rancho-2-sezon-2017.html	7	2017	США	комедия	Дэвид Трейнер	30
1544	Отель Элеон (3 сезон)	https://kinokrad.co/323115-otel-eleon-3-sezon.html	8	2017	Россия, Украина	комедия	Антон Федотов, Антон Маслов, Екатерина Забулонская	24
1545	Мистер Робот (3 сезон)	https://kinokrad.co/322255-mister-robot-3-sezon.html	7	2017	США	триллер, драма, криминал	Сэм Эсмейл, Джим МакКэй, Триша Брок	49
1546	Когти (1 сезон)	https://kinokrad.co/328007-kogti-1-sezon.html	6	2017	США	драма, комедия, криминал	Дэйл Штерн, Джеми Трэвис, Ховард Дойч	45
1547	Королева сахара (2 сезон)	https://kinokrad.co/327848-koroleva-sahara-2-sezon.html	7	2017	США	драма	Кэт Кэндлер, Димэйн Дэвис, Нима Барнетт	60
1548	Призраки (1 сезон)	https://kinokrad.co/321486-prizraki-1-sezon-2017.html	7	2017	США	комедия, мистика	Джонатан Крисел	30
1549	Слёзы Дженнет (1 сезон)	https://kinokrad.co/327812-slezy-dzhennet-1-sezon.html	7	2017	Турция	драма	Aysun Akyüz, Садуллах Селен, Филиз Кука	150
1550	Плохой хороший полицейский (1 сезон)	https://kinokrad.co/327806-plohoy-horoshiy-policeyskiy-1-sezon.html	7	2017	Германия	комедия, криминал	Оливер Домменгет, Майкл Крайндль, Питер Лэдд	45
1551	Эль Чапо (3 сезон)	https://kinokrad.co/328463-el-chapo-3-sezon.html	8	2017	США	драма, биография, криминал	Эрнесто Контрерас, Hammudi Al-Rahmoun Font, Карлос Морено	43
1552	Экли Бридж (1 сезон)	https://kinokrad.co/328457-ekli-bridzh-1-sezon.html	7	2017	Великобритания	драма	Роберт Куинн, Пенни Вулкок, Джо Стефенсон	60
1553	Герои Энвелла (1 сезон)	https://kinokrad.co/335476-geroi-envella-1-sezon.html	7	2017	Россия	мультфильм, фантастика	Антон Ланшаков	11
1554	Инцидент (1 сезон)	https://kinokrad.co/325184-incident-1-sezon.html	7	2017	Испания	фантастика, драма, детектив	Норберто Лопес Амадо, Иньяки Пеньяфьель, Альберто Руис Рохо	48
1555	Человек-паук (1 сезон)	https://kinokrad.co/320178-chelovek-pauk-1-sezon-2017.html	7	2017	США	мультфильм, фантастика, боевик, приключения, семейный	Филип Пиньотти, Эрик Радомски, Sol Choi	21
1556	Родное сердце (1 сезон)	https://kinokrad.co/325157-rodnoe-serdce-1-sezon.html	4	2017	Россия	мелодрама	Владимир Кильбург, Каиржан Орынбеков	125
1557	Напрасные надежды (1 сезон)	https://kinokrad.co/325133-naprasnye-nadezhdy-1-sezon.html	5	2017	Россия	мелодрама	Александр Грабарь	50
1558	Выжить любой ценой (1 сезон)	https://kinokrad.co/325130-vyzhit-lyuboy-cenoy-1-sezon.html	6	2017	Россия	боевик, приключения	Богдан Дробязко	48
1559	Люцифер (3 сезон)	https://kinokrad.co/321426-lyucifer-3-sezon-2017.html	9	2017	США	фэнтези, драма, криминал, мистика	Нэйтан Хоуп, Грег Биман, Карен Гавиола	42
1560	Детройтцы (1 сезон)	https://kinokrad.co/325121-detroytcy-1-sezon.html	4	2017	США	комедия	Николас Йасеновец, Билл Бенц, Бекки Мартин	21
1561	Свидетельство о рождении (1 сезон)	https://kinokrad.co/325118-svidetelstvo-o-rozhdenii-1-sezon.html	4	2017	Россия	мелодрама	Елена Цыплакова	50
1562	Игра Короля / Королевская игра (1 сезон)	https://kinokrad.co/323873-igra-korolya-korolevskaya-igra-1-sezon.html	7	2017	Япония	аниме, мультфильм, детектив, фэнтези, ужасы, триллер	Токиёси Сасаки	25
1563	Ван Хельсинг (2 сезон)	https://kinokrad.co/321634-van-helsing-2-sezon-2017.html	7	2017	США	ужасы, фэнтези, боевик, драма	Майкл Нанкин, Аманда Таппинг, Саймон Бэрри	60
1564	Забытые Богом (1 сезон)	https://kinokrad.co/323834-zabytye-bogom-1-sezon.html	8	2017	США	вестерн, драма	Скотт Фрэнк	60
1565	Просто влюблены (1 сезон)	https://kinokrad.co/324467-prosto-vlyubleny-1-sezon.html	8	2017	Корея Южная	драма, мелодрама	Ким Джин-вон	70
1567	Яблочный двор (1 сезон)	https://kinokrad.co/323840-yablochnyy-dvor-1-sezon.html	9	2017	Великобритания	триллер, драма	Джесика Хоббс	60
1568	Серебряный бор (1 сезон)	https://kinokrad.co/323816-serebryanyy-bor-1-sezon.html	6	2017	Россия	мелодрама, семейный	Зиновий Ройзман	52
1569	Ясновидец (2 сезон)	https://kinokrad.co/323819-yasnovidec-2-sezon.html	7	2017	США	драма, криминал	Стивен Джилленхол, Майкл Трим, Джон Шибан	45
1570	Жуть (2 сезон)	https://kinokrad.co/323789-zhut-2-sezon.html	7	2017	США	ужасы	Майкл А. Алловиц, Тони Соломонс, Крис Грисмер	22
1571	Однажды в сказке (7 сезон)	https://kinokrad.co/321710-odnazhdy-v-skazke-7-sezon-2017.html	7	2017	США	фэнтези, мелодрама, приключения	Ральф Хемекер, Рон Андервуд, Дин Уайт	43
1572	По болезни (1 сезон)	https://kinokrad.co/323780-po-bolezni-1-sezon.html	7	2017	Великобритания	комедия	Мэтт Липси	30
1573	Все схвачено (2 сезон)	https://kinokrad.co/323407-vse-shvacheno-2-sezon.html	6	2017	США	комедия	Памела Фрайман, Джеймс Берроуз, Энди Кэдифф	30
1574	Бруклин 9-9 (5 сезон)	https://kinokrad.co/322119-bruklin-9-9-5-sezon.html	7	2017	США	комедия, криминал	Майкл МакДональд, Дин Холлэнд, Крейг Зиск	23
1575	Обратный отсчёт (1 сезон)	https://kinokrad.co/326207-obratnyy-otschet-1-sezon.html	4	2017	Россия	детектив	Сергей Попов, Дмитрий Аверин, Максим Кубринский	48
1576	Чёрный список (5 сезон)	https://kinokrad.co/321622-chernyy-spisok-5-sezon-2017.html	8	2017	США	триллер, драма, криминал, детектив	Майкл В. Уоткинс, Эндрю МакКарти, Дональд И. Торин мл	43
1577	13 причин почему (2 сезон)	https://kinokrad.co/327401-13-prichin-pochemu-2-sezon.html	8	2017	США	драма, детектив	Кайл Патрик Альварез, Грегг Араки, Джессика Ю	60
1578	Скорпион (4 сезон)	https://kinokrad.co/321698-skorpion-4-sezon-2017.html	8	2017	США	боевик, драма	Сэм Хилл, Омар Мадха, Кристин Мур	43
1579	Ходячие мертвецы (8 сезон)	https://kinokrad.co/323515-hodyachie-mertvecy-8-sezon.html	8	2017	США	ужасы, триллер, драма	Грег Никотеро, Эрнест Р. Дикерсон, Майкл Е. Сатраземис	43
1580	Американская домохозяйка (2 сезон)	https://kinokrad.co/322183-amerikanskaya-domohozyayka-2-sezon.html	7	2017	США	комедия	Джон Фортенберри, Райан Кейс, Деклан Лауни	30
1581	Супергёрл (3 сезон)	https://kinokrad.co/322107-supergerl-3-sezon.html	7	2017	США	фантастика, боевик, драма, приключения	Глен Винтер, Ларри Тенг, Дермотт Даунс	43
1582	Популярна и влюблена (1 сезон)	https://kinokrad.co/327362-populyarna-i-vlyublena-1-sezon.html	6	2017	США	драма, мелодрама	Норман Бакли, Роджер Камбл, Рон Лагомарсино	42
1583	Черноватый (4 сезон)	https://kinokrad.co/322627-chernovatyy-4-sezon.html	7	2017	США	комедия	Антон Кроппер, Кен Уиттингэм, Мэттью Сон	22
1584	Медики Чикаго (3 сезон)	https://kinokrad.co/323523-mediki-chikago-3-sezon.html	7	2017	США	драма	Майкл Ваксман, Фред Бернер, Дональд Питри	43
1585	Нулевой канал (3 сезон)	https://kinokrad.co/325388-nulevoy-kanal-3-sezon.html	5	2017	США	ужасы, триллер, драма, детектив	Крэйг Уилльям Макнейлл, Стивен Пит, Arkasha Stevenson	44
1586	Потерянные (3 сезон)	https://kinokrad.co/325436-poteryannye-3-sezon.html	6	2017	Австралия	ужасы, фантастика, триллер, драма, детектив, приключения	Крэйг Ирвин, Алистер Грирсон, Роуэн Вудс	26
1587	Противостояние (1 сезон)	https://kinokrad.co/325433-protivostoyanie-1-sezon.html	5	2017	Россия, Украина	драма, мелодрама	Роман Бровко	48
1588	Огонь, вода и ржавые трубы (1 сезон)	https://kinokrad.co/325409-ogon-voda-i-rzhavye-truby-1-sezon.html	4	2017	Россия	мелодрама	Андрей Хрулев	45
1589	Дом у последнего фонаря (1 сезон)	https://kinokrad.co/325406-dom-u-poslednego-fonarya-1-sezon.html	4	2017	Россия	детектив	Станислав Назиров	45
1590	Секреты жизни (1 сезон)	https://kinokrad.co/324428-sekrety-zhizni-1-sezon.html	7	2017	Турция	драма	Murat Can Oguz	125
1591	Отличные новости (2 сезон)	https://kinokrad.co/322715-otlichnye-novosti-2-sezon.html	6	2017	США	комедия	Бет МакКарти-Миллер, Тристрам Шапиро, Пэймэн Бенц	22
1592	Хорошая борьба (1 сезон)	https://kinokrad.co/313386-horoshaya-borba-1-sezon-2017.html	8	2017	США	драма	Аллан Аркуш, Брук Кеннеди	45
1593	Отважные (1 сезон)	https://kinokrad.co/322251-otvazhnye-1-sezon.html	8	2017	США	драма	Брэд Андерсон	43
1594	Коллективный разум (1 сезон)	https://kinokrad.co/322187-kollektivnyy-razum-1-sezon.html	8	2017	США	драма	Адам Дэвидсон, Чарльз Бисон	43
1595	История Коноханы (1 сезон)	https://kinokrad.co/324236-istoriya-konohany-1-sezon.html	7	2017	Япония	аниме, мультфильм, фэнтези	Окамото Хидэки	23
1596	Черное зеркало (4 сезон)	https://kinokrad.co/324239-chernoe-zerkalo-4-sezon.html	8	2017	Великобритания	фантастика, триллер, драма	Оуэн Харрис, Карл Тиббеттс, Отто Батхёрст	43
1597	Чужестранка (3 сезон)	https://kinokrad.co/322331-chuzhestranka-3-sezon.html	8	2017	США, Великобритания	фантастика, драма, мелодрама	Метин Хусейн, Анна Ферстер, Брайан Келли	64
1598	Будь классным, Скуби-Ду! (2 сезон)	https://kinokrad.co/319014-bud-klassnym-skubi-du-2-sezon-2017.html	8	2017	США	мультфильм, комедия, детектив, семейный, мистика	James Krenzke, Jeff Mednikow, Шант Нигогосян	23
1599	Бумажный дом (1 сезон)	https://kinokrad.co/317738-bumazhnyy-dom-1-sezon-2017.html	8	2017	Испания	триллер	Алехандро Бассано, Хесус Кольменар, Alex Rodrigo	70
1600	Южный Парк (21 сезон)	https://kinokrad.co/321562-yuzhnyy-park-21-sezon-2017.html	8	2017	США	мультфильм, комедия	Трей Паркер, Эрик Сточ, Мэтт Стоун	22
1601	Агенты «Щ.И.Т.» (5 сезон)	https://kinokrad.co/323187-agenty-sch.i.t.-5-sezon.html	8	2017	США	фантастика, боевик, триллер, драма, приключения	Билл Джирхарт, Винс Мисиано, Кевин Танчароэн	45
1602	Дениз в моём сердце (2 сезон)	https://kinokrad.co/325415-deniz-v-moem-serdce-2-sezon.html	3	2017	Турция	драма	Aysun Akyüz	150
1603	Прекрасные создания (1 сезон)	https://kinokrad.co/329144-prekrasnye-sozdaniya-1-sezon.html	5	2017	Россия	мелодрама	Максим Субботин	90
1604	Дорогие белые (2 сезон)	https://kinokrad.co/326972-dorogie-belye-2-sezon.html	4	2017	США	драма, комедия	Justin Simian, Чарли МакДауэлл, Стивен К. Цутида	30
1605	Первый парень на деревне (1 сезон)	https://kinokrad.co/326966-pervyy-paren-na-derevne-1-sezon.html	6	2017	Россия	комедия	Николай Каптан	55
1606	Готэм (4 сезон)	https://kinokrad.co/321422-gotem-4-sezon-2017.html	7	2017	США	фантастика, боевик, триллер, драма, криминал, детектив	Дэнни Кэннон, Роб Бэйли, Т.Дж. Скотт	44
1607	Ривердэйл (2 сезон)	https://kinokrad.co/321999-riverdeyl-2-sezon.html	9	2017	США	драма, криминал, детектив	Ли Толанд Кригер, Эллисон Андерс, Роб Шейденгланц	45
1608	Анатомия страсти (14 сезон)	https://kinokrad.co/322719-anatomiya-strasti-14-sezon.html	7	2017	США	драма, мелодрама	Роб Корн, Кевин МакКидд, Шандра Уилсон	43
1609	Могучие рейнджеры. Сталь Ниндзя (1 сезон)	https://kinokrad.co/324068-moguchie-reyndzhery.-stal-nindzya-1-sezon.html	4	2017	США	фантастика, боевик	Саймон Беннетт, Michael Duignan, Оливер Драйвер	21
1610	По друзьям (1 сезон)	https://kinokrad.co/313194-po-druzyam-1-sezon-2017.html	6	2017	США	комедия	Джадд Апатоу, Крис Келли, Райан МакФол	30
1611	Не в деньгах счастье (1 сезон)	https://kinokrad.co/327452-ne-v-dengah-schaste-1-sezon.html	5	2017	Россия	мелодрама	Ольга Ланд	45
1612	Стрела (6 сезон)	https://kinokrad.co/322435-strela-6-sezon.html	7	2017	США	фантастика, боевик, драма, криминал, детектив, приключения	Джон Беринг, Майкл Шульц, Джеймс Бэмфорд	43
1613	Адвокат (9 сезон)	https://kinokrad.co/322003-advokat-9-sezon.html	6	2017	Россия	криминал, детектив	Дмитрий Фикс, Александр Павловский, Илья Максимов	48
1614	Путешественники (2 сезон)	https://kinokrad.co/323912-puteshestvenniki-2-sezon.html	8	2017	Канада, США	фантастика, триллер, драма, детектив	Энди Микита, Аманда Таппинг, Уильям Варинг	45
1615	Каинова печать (1 сезон)	https://kinokrad.co/327443-kainova-pechat-1-sezon.html	3	2017	Россия	драма, криминал	Владимир Фатьянов	48
1616	Беглецы / Ранэвэйс (1 сезон)	https://kinokrad.co/323647-beglecy-raneveys-1-sezon.html	7	2017	США	фантастика, боевик, драма	Роксанн Доусон, Питер Хор, Нина Лопес-Коррадо	60
1617	Лаудермилк / Лаодермилк (1 сезон)	https://kinokrad.co/324230-laudermilk-laodermilk-1-sezon.html	8	2017	США	комедия	Питер Фаррелли	30
1618	Особо тяжкие преступления (6 сезон)	https://kinokrad.co/323127-osobo-tyazhkie-prestupleniya-6-sezon.html	6	2017	США	драма, криминал, детектив	Майкл М. Робин, Стив Робин, Дэвид МакУиртер	43
1619	Тьма (1 сезон)	https://kinokrad.co/323882-tma-1-sezon.html	8	2017	Германия	триллер, драма, криминал, детектив, фантастика	Баран бо Одар	60
1620	Закон Майло Мерфи (1 сезон)	https://kinokrad.co/323774-zakon-merfi-1-sezon.html	8	2017	США	мультфильм, фэнтези, боевик, комедия, семейный	Роберт Хьюз, Боб Бауэн, Chris Ybarra	12
1621	Уильям наш, Шекспир (2 сезон)	https://kinokrad.co/321626-uilyam-nash-shekspir-2-sezon-2017.html	6	2017	Великобритания	комедия	Мэтт Липси	30
1622	Форс-мажоры (7 сезон)	https://kinokrad.co/318022-fors-mazhory-7-sezon-2017.html	8	2017	США	драма, комедия	Антон Кроппер, Майкл Смит, Кевин Брэй	43
1623	Мик (2 сезон)	https://kinokrad.co/322123-mik-2-sezon.html	8	2017	США	комедия	Рэндолл Айнхорн, Кэт Койро, Ричи Кин	30
1624	Ивановы-Ивановы (1 сезон)	https://kinokrad.co/325745-ivanovy-ivanovy-1-sezon.html	7	2017	Россия	комедия	Антон Федотов	24
1625	Просто нет слов (2 сезон)	https://kinokrad.co/321594-prosto-net-slov-2-sezon-2017.html	6	2017	США	комедия	Кристин Джернон, Уильям Перпл, Роберт Коэн	30
1626	Трудности ассимиляции (4 сезон)	https://kinokrad.co/322379-trudnosti-assimilyacii-4-sezon.html	7	2017	США	комедия	Уильям Перпл, Линн Шелтон, Клер Скэнлон	22
1627	Это мы (2 сезон)	https://kinokrad.co/322063-eto-my-2-sezon.html	7	2017	США	драма, комедия	Кен Олин, Гленн Фикарра, Джон Рекуа	45
1628	Богомол (1 сезон)	https://kinokrad.co/325706-bogomol-1-sezon.html	8	2017	Франция	триллер, драма, криминал	Александр Лорен	55
1629	Тихие люди (1 сезон)	https://kinokrad.co/325685-tihie-lyudi-1-sezon.html	5	2017	Россия	мелодрама	Владимир Фатьянов	45
1630	Тайны Фрэнки Дрейк (1 сезон)	https://kinokrad.co/323623-tayny-frenki-dreyk-1-sezon.html	5	2017	Канада	драма, криминал, детектив	Руба Надда, Садс Сазерленд, Норма Бэйли	60
1631	В лучшем мире (2 сезон)	https://kinokrad.co/321482-v-luchshem-mire-2-sezon-2017.html	7	2017	США	фэнтези, драма, мелодрама, комедия, семейный	Дин Холлэнд, Пэймэн Бенц, Такер Гейтс	30
1632	Доблесть (1 сезон)	https://kinokrad.co/322303-doblest-1-sezon.html	7	2017	США	драма	Майкл М. Робин	42
1633	Вся правда о медведях / Мы обычные медведи (3 сезон)	https://kinokrad.co/317294-vsya-pravda-o-medvedyah-3-sezon-2017.html	8	2017	США	мультфильм, фэнтези, комедия, семейный	Manny Hernandez	30
1634	Смилф (1 сезон)	https://kinokrad.co/323683-smilf-1-sezon.html	6	2017	США	комедия	Лесли Хэдланд, Эми Йорк Рубин, Фрэнки Шоу	30
1635	Хэппи (1 сезон)	https://kinokrad.co/323771-heppi-1-sezon.html	8	2017	США	фэнтези, триллер, комедия, криминал, детектив	Брайан Тейлор, Уэйн Йип, Дэвид Петрарка	60
1636	Британия (1 сезон)	https://kinokrad.co/324545-britaniya-1-sezon.html	8	2017	США, Великобритания	фэнтези, драма	Шери Фоксон, Кристоф Шреве, Люк Уотсон	60
1637	Более полный дом (3 сезон)	https://kinokrad.co/322375-bolee-polnyy-dom-3-sezon.html	7	2017	США	комедия, семейный	Рич Коррелл, Кэти Гарретсон, Марк Сендроуски	30
1638	Утиные истории (1 сезон)	https://kinokrad.co/323279-utinye-istorii-1-sezon.html	7	2017	США	мультфильм, комедия, приключения, семейный	Дэна Террас, Джон Аошима, Том Оуэнс	21
1639	Черепашки-ниндзя (5 сезон)	https://kinokrad.co/319722-cherepashki-nindzya-5-sezon-2017.html	8	2017	США	мультфильм, фантастика, боевик, драма, комедия, приключения, семейный	Сиро Ниели, Алан Ван, Бен Джонс	22
1640	Берлинский вокзал / Берлинский отдел (2 сезон)	https://kinokrad.co/322615-berlinskaya-rezidentura-2-sezon.html	7	2017	США, Германия	триллер	Джон Дэвид Коулз, Кристоф Шреве, Джузеппе Капотонди	60
1641	Изгоняющий дьявола (2 сезон)	https://kinokrad.co/323195-izgonyayuschiy-dyavola-2-sezon.html	8	2017	США	ужасы, триллер, драма	Джейсон Энслер, Майкл Нанкин, Билл Джонсон	45
1642	Корона (2 сезон)	https://kinokrad.co/323403-korona-2-sezon.html	7	2017	Великобритания, США	драма, история	Филип Мартин, Бенжамин Карон, Стивен Долдри	58
1643	Ранчо (2 сезон)	https://kinokrad.co/317498-rancho-2-sezon-2017.html	7	2017	США	комедия	Дэвид Трейнер	30
1644	Отель Элеон (3 сезон)	https://kinokrad.co/323115-otel-eleon-3-sezon.html	8	2017	Россия, Украина	комедия	Антон Федотов, Антон Маслов, Екатерина Забулонская	24
1645	Мистер Робот (3 сезон)	https://kinokrad.co/322255-mister-robot-3-sezon.html	7	2017	США	триллер, драма, криминал	Сэм Эсмейл, Джим МакКэй, Триша Брок	49
1646	Когти (1 сезон)	https://kinokrad.co/328007-kogti-1-sezon.html	6	2017	США	драма, комедия, криминал	Дэйл Штерн, Джеми Трэвис, Ховард Дойч	45
1647	Королева сахара (2 сезон)	https://kinokrad.co/327848-koroleva-sahara-2-sezon.html	7	2017	США	драма	Кэт Кэндлер, Димэйн Дэвис, Нима Барнетт	60
1648	Призраки (1 сезон)	https://kinokrad.co/321486-prizraki-1-sezon-2017.html	7	2017	США	комедия, мистика	Джонатан Крисел	30
1649	Слёзы Дженнет (1 сезон)	https://kinokrad.co/327812-slezy-dzhennet-1-sezon.html	7	2017	Турция	драма	Aysun Akyüz, Садуллах Селен, Филиз Кука	150
1650	Плохой хороший полицейский (1 сезон)	https://kinokrad.co/327806-plohoy-horoshiy-policeyskiy-1-sezon.html	7	2017	Германия	комедия, криминал	Оливер Домменгет, Майкл Крайндль, Питер Лэдд	45
1651	Эль Чапо (3 сезон)	https://kinokrad.co/328463-el-chapo-3-sezon.html	8	2017	США	драма, биография, криминал	Эрнесто Контрерас, Hammudi Al-Rahmoun Font, Карлос Морено	43
1652	Экли Бридж (1 сезон)	https://kinokrad.co/328457-ekli-bridzh-1-sezon.html	7	2017	Великобритания	драма	Роберт Куинн, Пенни Вулкок, Джо Стефенсон	60
1653	Герои Энвелла (1 сезон)	https://kinokrad.co/335476-geroi-envella-1-sezon.html	7	2017	Россия	мультфильм, фантастика	Антон Ланшаков	11
1654	Инцидент (1 сезон)	https://kinokrad.co/325184-incident-1-sezon.html	7	2017	Испания	фантастика, драма, детектив	Норберто Лопес Амадо, Иньяки Пеньяфьель, Альберто Руис Рохо	48
1655	Человек-паук (1 сезон)	https://kinokrad.co/320178-chelovek-pauk-1-sezon-2017.html	7	2017	США	мультфильм, фантастика, боевик, приключения, семейный	Филип Пиньотти, Эрик Радомски, Sol Choi	21
1656	Родное сердце (1 сезон)	https://kinokrad.co/325157-rodnoe-serdce-1-sezon.html	4	2017	Россия	мелодрама	Владимир Кильбург, Каиржан Орынбеков	125
1657	Напрасные надежды (1 сезон)	https://kinokrad.co/325133-naprasnye-nadezhdy-1-sezon.html	5	2017	Россия	мелодрама	Александр Грабарь	50
1658	Выжить любой ценой (1 сезон)	https://kinokrad.co/325130-vyzhit-lyuboy-cenoy-1-sezon.html	6	2017	Россия	боевик, приключения	Богдан Дробязко	48
1659	Люцифер (3 сезон)	https://kinokrad.co/321426-lyucifer-3-sezon-2017.html	9	2017	США	фэнтези, драма, криминал, мистика	Нэйтан Хоуп, Грег Биман, Карен Гавиола	42
1660	Детройтцы (1 сезон)	https://kinokrad.co/325121-detroytcy-1-sezon.html	4	2017	США	комедия	Николас Йасеновец, Билл Бенц, Бекки Мартин	21
1661	Свидетельство о рождении (1 сезон)	https://kinokrad.co/325118-svidetelstvo-o-rozhdenii-1-sezon.html	4	2017	Россия	мелодрама	Елена Цыплакова	50
1662	Игра Короля / Королевская игра (1 сезон)	https://kinokrad.co/323873-igra-korolya-korolevskaya-igra-1-sezon.html	7	2017	Япония	аниме, мультфильм, детектив, фэнтези, ужасы, триллер	Токиёси Сасаки	25
1663	Ван Хельсинг (2 сезон)	https://kinokrad.co/321634-van-helsing-2-sezon-2017.html	7	2017	США	ужасы, фэнтези, боевик, драма	Майкл Нанкин, Аманда Таппинг, Саймон Бэрри	60
1664	Забытые Богом (1 сезон)	https://kinokrad.co/323834-zabytye-bogom-1-sezon.html	8	2017	США	вестерн, драма	Скотт Фрэнк	60
1665	Просто влюблены (1 сезон)	https://kinokrad.co/324467-prosto-vlyubleny-1-sezon.html	8	2017	Корея Южная	драма, мелодрама	Ким Джин-вон	70
1666	Чистый лист (1 сезон)	https://kinokrad.co/326897-chistyy-list-1-sezon.html	7	2017	Бельгия	триллер	Kaat Beels, Jonas Govaerts	60
1667	Яблочный двор (1 сезон)	https://kinokrad.co/323840-yablochnyy-dvor-1-sezon.html	9	2017	Великобритания	триллер, драма	Джесика Хоббс	60
1668	Серебряный бор (1 сезон)	https://kinokrad.co/323816-serebryanyy-bor-1-sezon.html	6	2017	Россия	мелодрама, семейный	Зиновий Ройзман	52
1669	Ясновидец (2 сезон)	https://kinokrad.co/323819-yasnovidec-2-sezon.html	7	2017	США	драма, криминал	Стивен Джилленхол, Майкл Трим, Джон Шибан	45
1670	Жуть (2 сезон)	https://kinokrad.co/323789-zhut-2-sezon.html	7	2017	США	ужасы	Майкл А. Алловиц, Тони Соломонс, Крис Грисмер	22
1671	Однажды в сказке (7 сезон)	https://kinokrad.co/321710-odnazhdy-v-skazke-7-sezon-2017.html	7	2017	США	фэнтези, мелодрама, приключения	Ральф Хемекер, Рон Андервуд, Дин Уайт	43
1672	По болезни (1 сезон)	https://kinokrad.co/323780-po-bolezni-1-sezon.html	7	2017	Великобритания	комедия	Мэтт Липси	30
1673	Все схвачено (2 сезон)	https://kinokrad.co/323407-vse-shvacheno-2-sezon.html	6	2017	США	комедия	Памела Фрайман, Джеймс Берроуз, Энди Кэдифф	30
1674	Бруклин 9-9 (5 сезон)	https://kinokrad.co/322119-bruklin-9-9-5-sezon.html	7	2017	США	комедия, криминал	Майкл МакДональд, Дин Холлэнд, Крейг Зиск	23
1675	Обратный отсчёт (1 сезон)	https://kinokrad.co/326207-obratnyy-otschet-1-sezon.html	4	2017	Россия	детектив	Сергей Попов, Дмитрий Аверин, Максим Кубринский	48
1676	Чёрный список (5 сезон)	https://kinokrad.co/321622-chernyy-spisok-5-sezon-2017.html	8	2017	США	триллер, драма, криминал, детектив	Майкл В. Уоткинс, Эндрю МакКарти, Дональд И. Торин мл	43
1677	13 причин почему (2 сезон)	https://kinokrad.co/327401-13-prichin-pochemu-2-sezon.html	8	2017	США	драма, детектив	Кайл Патрик Альварез, Грегг Араки, Джессика Ю	60
1678	Скорпион (4 сезон)	https://kinokrad.co/321698-skorpion-4-sezon-2017.html	8	2017	США	боевик, драма	Сэм Хилл, Омар Мадха, Кристин Мур	43
1679	Ходячие мертвецы (8 сезон)	https://kinokrad.co/323515-hodyachie-mertvecy-8-sezon.html	8	2017	США	ужасы, триллер, драма	Грег Никотеро, Эрнест Р. Дикерсон, Майкл Е. Сатраземис	43
1680	Американская домохозяйка (2 сезон)	https://kinokrad.co/322183-amerikanskaya-domohozyayka-2-sezon.html	7	2017	США	комедия	Джон Фортенберри, Райан Кейс, Деклан Лауни	30
1681	Супергёрл (3 сезон)	https://kinokrad.co/322107-supergerl-3-sezon.html	7	2017	США	фантастика, боевик, драма, приключения	Глен Винтер, Ларри Тенг, Дермотт Даунс	43
1682	Популярна и влюблена (1 сезон)	https://kinokrad.co/327362-populyarna-i-vlyublena-1-sezon.html	6	2017	США	драма, мелодрама	Норман Бакли, Роджер Камбл, Рон Лагомарсино	42
1683	Черноватый (4 сезон)	https://kinokrad.co/322627-chernovatyy-4-sezon.html	7	2017	США	комедия	Антон Кроппер, Кен Уиттингэм, Мэттью Сон	22
1684	Медики Чикаго (3 сезон)	https://kinokrad.co/323523-mediki-chikago-3-sezon.html	7	2017	США	драма	Майкл Ваксман, Фред Бернер, Дональд Питри	43
1685	Нулевой канал (3 сезон)	https://kinokrad.co/325388-nulevoy-kanal-3-sezon.html	5	2017	США	ужасы, триллер, драма, детектив	Крэйг Уилльям Макнейлл, Стивен Пит, Arkasha Stevenson	44
1686	Потерянные (3 сезон)	https://kinokrad.co/325436-poteryannye-3-sezon.html	6	2017	Австралия	ужасы, фантастика, триллер, драма, детектив, приключения	Крэйг Ирвин, Алистер Грирсон, Роуэн Вудс	26
1687	Противостояние (1 сезон)	https://kinokrad.co/325433-protivostoyanie-1-sezon.html	5	2017	Россия, Украина	драма, мелодрама	Роман Бровко	48
1688	Огонь, вода и ржавые трубы (1 сезон)	https://kinokrad.co/325409-ogon-voda-i-rzhavye-truby-1-sezon.html	4	2017	Россия	мелодрама	Андрей Хрулев	45
1689	Дом у последнего фонаря (1 сезон)	https://kinokrad.co/325406-dom-u-poslednego-fonarya-1-sezon.html	4	2017	Россия	детектив	Станислав Назиров	45
1690	Секреты жизни (1 сезон)	https://kinokrad.co/324428-sekrety-zhizni-1-sezon.html	7	2017	Турция	драма	Murat Can Oguz	125
1691	Отличные новости (2 сезон)	https://kinokrad.co/322715-otlichnye-novosti-2-sezon.html	6	2017	США	комедия	Бет МакКарти-Миллер, Тристрам Шапиро, Пэймэн Бенц	22
1692	Хорошая борьба (1 сезон)	https://kinokrad.co/313386-horoshaya-borba-1-sezon-2017.html	8	2017	США	драма	Аллан Аркуш, Брук Кеннеди	45
1693	Отважные (1 сезон)	https://kinokrad.co/322251-otvazhnye-1-sezon.html	8	2017	США	драма	Брэд Андерсон	43
1694	Коллективный разум (1 сезон)	https://kinokrad.co/322187-kollektivnyy-razum-1-sezon.html	8	2017	США	драма	Адам Дэвидсон, Чарльз Бисон	43
1695	История Коноханы (1 сезон)	https://kinokrad.co/324236-istoriya-konohany-1-sezon.html	7	2017	Япония	аниме, мультфильм, фэнтези	Окамото Хидэки	23
1696	Черное зеркало (4 сезон)	https://kinokrad.co/324239-chernoe-zerkalo-4-sezon.html	8	2017	Великобритания	фантастика, триллер, драма	Оуэн Харрис, Карл Тиббеттс, Отто Батхёрст	43
1697	Чужестранка (3 сезон)	https://kinokrad.co/322331-chuzhestranka-3-sezon.html	8	2017	США, Великобритания	фантастика, драма, мелодрама	Метин Хусейн, Анна Ферстер, Брайан Келли	64
1698	Будь классным, Скуби-Ду! (2 сезон)	https://kinokrad.co/319014-bud-klassnym-skubi-du-2-sezon-2017.html	8	2017	США	мультфильм, комедия, детектив, семейный, мистика	James Krenzke, Jeff Mednikow, Шант Нигогосян	23
1699	Бумажный дом (1 сезон)	https://kinokrad.co/317738-bumazhnyy-dom-1-sezon-2017.html	8	2017	Испания	триллер	Алехандро Бассано, Хесус Кольменар, Alex Rodrigo	70
1700	Южный Парк (21 сезон)	https://kinokrad.co/321562-yuzhnyy-park-21-sezon-2017.html	8	2017	США	мультфильм, комедия	Трей Паркер, Эрик Сточ, Мэтт Стоун	22
1701	Орвилл (1 сезон)	https://kinokrad.co/321574-orvill-1-sezon-2017.html	8	2017	США	фантастика, драма, комедия, приключения	Джон Кассар, Сет МакФарлейн, Джеми Бэббит	60
1702	Умираю со смеху (1 сезон)	https://kinokrad.co/317162-umirayu-so-smehu-1-sezon-2017.html	5	2017	США	драма, комедия	Адам Дэвидсон, Иэн Б. МакДональд, Джон С. Бейрд	60
1703	Отель Элеон (2 сезон)	https://kinokrad.co/323111-otel-eleon-2-sezon.html	7	2017	Россия, Украина	комедия	Антон Федотов, Антон Маслов, Екатерина Забулонская	24
1704	Умерь свой энтузиазм (9 сезон)	https://kinokrad.co/322159-umer-svoy-entuziazm-9-sezon.html	6	2017	США	комедия	Роберт Б. Уайди, Ларри Чарльз, Брайан Гордон	28
1705	Эль Чапо (2 сезон)	https://kinokrad.co/321978-el-chapo-2-sezon.html	7	2017	США	драма	Эрнесто Контрерас, Хосе Мануэль Кравиотто	120
1706	Я, опять я и снова я (1 сезон)	https://kinokrad.co/322319-ya-opyat-ya-i-snovaya-1-sezon.html	8	2017	США	комедия	Тодд Холлэнд, Рэндолл Айнхорн, Джон Фортенберри	30
1707	Райский уголок (1 сезон)	https://kinokrad.co/334732-rayskiy-ugolok-1-sezon.html	4	2017	Россия	детектив	Александр Созонов	50
1708	Молодые и голодные (5 сезон)	https://kinokrad.co/315278-molodye-i-golodnye-5-sezon-2017.html	6	2017	США	драма, мелодрама, комедия	Энди Кэдифф, Фил Льюис, Кэти Гарретсон	22
1709	Вавилон-Берлин (1 сезон)	https://kinokrad.co/328292-vavilon-berlin-1-sezon.html	7	2017	Германия	триллер, драма, криминал, история	Хендрик Хандлёгтен, Том Тыквер, Ахим фон Боррис	45
1710	Облом (1 сезон)	https://kinokrad.co/328274-oblom-1-sezon.html	7	2017	Австралия	комедия	Трент О’Доннелл	30
1711	Хорошая игра (1 сезон)	https://kinokrad.co/328853-horoshaya-igra-1-sezon.html	7	2017	США	комедия	Дэнни Элинек	25
1712	Орвилл (2 сезон)	https://kinokrad.co/333272-orvill-2-sezon.html	7	2017	США	фантастика, драма, комедия, приключения	Джон Кассар, Брэннон Брага, Роберт Данкан МакНил	44
1713	Приключения Кота в сапогах (3 сезон)	https://kinokrad.co/335953-priklyucheniya-kota-v-sapogah-3-sezon.html	6	2017	США	мультфильм, фэнтези, комедия, приключения, семейный	Джонни Кастучиано, Рой Бурдин, Бен Джуоно	23
1714	Уормвуд / Полынь (1 сезон)	https://kinokrad.co/323687-uormvud-1-sezon.html	8	2017	США	документальный, биография	Эррол Моррис	43
1715	Место, что домом зовётся (5 сезон)	https://kinokrad.co/323675-mesto-chto-domom-zovetsya-5-sezon.html	7	2017	Австралия	драма	Марк Джофф, Линн-Мэри Дэнзе, Ширли Баррет	60
1716	Пять минут тишины (1 сезон)	https://kinokrad.co/325112-pyat-minut-tishiny-1-sezon.html	6	2017	Россия	приключения, детектив	Алексей Праздников	52
1717	Бунтари (1 сезон)	https://kinokrad.co/325115-buntari-1-sezon.html	6	2017	Великобритания	комедия	Errol Etienne, Ollie Parsons, James De Frond	30
1718	Осиное гнездо (1 сезон)	https://kinokrad.co/325079-osinoe-gnezdo-1-sezon.html	6	2017	Россия	мелодрама	Сергей Лялин	45
1719	24 часа: Наследие (1 сезон)	https://kinokrad.co/325076-24-chasa-nasledie-1-sezon.html	7	2017	США	боевик, триллер, драма, криминал, детектив	Джон Кассар, Стивен Хопкинс, Нельсон МакКормик	41
1720	Миллиарды (2 сезон)	https://kinokrad.co/325034-milliardy-2-sezon.html	8	2017	США	драма	Нил Бёргер, Анна Боден, Райан Флек	60
1721	Полиция Чикаго (5 сезон)	https://kinokrad.co/322087-policiya-chikago-5-sezon.html	7	2017	США	боевик, триллер, драма, криминал	Марк Тинкер, Ник Гомез, Фред Бернер	43
1722	Взрывная волна (1 сезон)	https://kinokrad.co/325073-vzryvnaya-volna-1-sezon.html	4	2017	Россия	детектив	Георгий Гаврилов	50
1723	Бывает и хуже (9 сезон)	https://kinokrad.co/322115-byvaet-i-huzhe-9-sezon.html	7	2017	США	комедия	Ли Шаллат Чемел, Эллиот Хегарти, Фил Трэйл	22
1724	Спецназ города ангелов (1 сезон)	https://kinokrad.co/323679-specnaz-goroda-angelov-1-sezon.html	8	2017	США	боевик, триллер, драма, криминал, приключения	Билл Джирхарт, Грег Биман, Холли Дэйл	43
1725	Спецназ (1 сезон)	https://kinokrad.co/321706-specnaz-1-sezon-2017.html	8	2017	США	драма	Кристофер Чулак, Ларри Тенг, Иэн Тойнтон	45
1726	Екатерина (2 сезон)	https://kinokrad.co/324989-ekaterina-2-sezon.html	7	2017	Россия	драма, мелодрама	Александр Баранов, Рамиль Сабитов	44
1727	Один против всех (1 сезон)	https://kinokrad.co/324977-odin-protiv-vseh-1-sezon.html	3	2017	Россия	боевик, детектив, криминал	Владимир Виноградов, Михаил Вассербаум	45
1728	Тарзан и Джейн (1 сезон)	https://kinokrad.co/333149-tarzan-i-dzheyn-1-sezon.html	6	2017	США	мультфильм, фантастика, боевик, комедия, приключения, семейный	Джесси Ликман, Стив Болл	22
1729	Шерлок (4 сезон)	https://kinokrad.co/311026-sherlok-4-sezon.html	8	2017	Великобритания, США	триллер, драма, криминал, детектив	Пол МакГиган, Ник Харран, Коки Гидройч	90
1730	Легенды завтрашнего дня (3 сезон)	https://kinokrad.co/322167-legendy-zavtrashnego-dnya-3-sezon.html	7	2017	США	фантастика, боевик, драма, приключения	Дермотт Даунс, Грегори Смит, Дэвид Геддес	42
1731	Обитатели больницы (1 сезон)	https://kinokrad.co/324845-obitateli-bolnicy-1-sezon.html	5	2017	Великобритания	комедия	Пол Мерфи	28
1732	Команда «Мстители»/ Мстители, общий сбор! (4 сезон)	https://kinokrad.co/320474-komanda-mstiteli-mstiteli-obschiy-sbor-4-sezon.html	7	2017	США	мультфильм, приключения, фэнтези, фантастика, боевик	Джефф Аллен, Тим Элдред, Эрик Радомски	22
1733	Звёздные войны: Повстанцы (4 сезон)	https://kinokrad.co/322091-zvezdnye-voyny-povstancy-4-sezon.html	8	2017	США	мультфильм, фантастика, боевик, приключения	Дэйв Филони, Стюарт Ли, Боско ЭнДжи	30
1734	Трасса смерти (1 сезон)	https://kinokrad.co/325403-trassa-smerti-1-sezon.html	6	2017	Россия	триллер, детектив	Денис Нейманд	48
1735	Евангелие от Кевина (1 сезон)	https://kinokrad.co/322163-evangelie-ot-kevina-1-sezon.html	7	2017	США	фэнтези, драма, комедия	Кевин Даулинг, Роб Харди, Питер Лето	60
1736	Горничная (1 сезон)	https://kinokrad.co/325391-gornichnaya-1-sezon.html	5	2017	Россия, Украина	драма, мелодрама	Олег Масленников	48
1737	Академия Гринхаус (1 сезон)	https://kinokrad.co/325364-akademiya-grinhaus-1-sezon.html	9	2017	США	драма	Флорентайн Роуи	25
1738	Амнезия (1 сезон)	https://kinokrad.co/321990-amneziya-1-sezon.html	8	2017	США	триллер, драма, криминал, детектив	Одед Рускин	45
1739	Доктор Шанс (2 сезон)	https://kinokrad.co/322099-doktor-shans-2-sezon.html	7	2017	США	триллер, драма, детектив	Дэниэл Эттиэс, Майкл Леманн, Роксанн Доусон	60
1740	Голые и напуганные XL (3 сезон)	https://kinokrad.co/321894-golye-i-napugannye-xl-3-sezon.html	7	2017	США	реальное ТВ		45
1741	Мне очень жаль (1 сезон)	https://kinokrad.co/319990-mne-ochen-zhal-1-sezon-2017.html	7	2017	США	комедия	Рэйчел Голденберг, Дэйл Штерн	30
1742	Граница (2 сезон)	https://kinokrad.co/322311-granica-2-sezon.html	8	2017	Канада	приключения	Кен Джиротти, Брэд Пейтон, Келли Макин	60
1743	Министерство времени (3 сезон)	https://kinokrad.co/318302-ministerstvo-vremeni-3-sezon-2017.html	6	2017	Испания	фантастика, фэнтези, комедия, приключения	Марк Вихиль, Хорхе С. Дорадо, Abigail Schaaff	70
1744	Сверхлюди (1 сезон)	https://kinokrad.co/318802-sverhlyudi-1-sezon.html	7	2017	США	фантастика, боевик, приключения	Роэль Рейн, Крис Фишер, Билл Джирхарт	48
1745	Американская история ужасов (7 сезон)	https://kinokrad.co/320986-amerikanskaya-istoriya-uzhasov-7-sezon-2017.html	7	2017	США	ужасы, триллер, драма	Брэдли Букер, Альфонсо Гомес-Рехон, Майкл Аппендаль	43
1746	Изгой (2 сезон)	https://kinokrad.co/315994-izgoy-2-sezon-2017.html	7	2017	США	ужасы, драма, мистика	Лони Перистер, Ховард Дойч, Тришиа Брок	60
1747	Хроники Шаннары (2 сезон)	https://kinokrad.co/321995-hroniki-shannary-2-sezon.html	8	2017	США, Новая Зеландия	фантастика, фэнтези, приключения	Брэд Тернер, Джонатан Либесман, Джеймс Маршалл	42
1748	На Чесапикских берегах (2 сезон)	https://kinokrad.co/322499-na-chesapikskih-beregah-2-sezon.html	5	2017	США	драма, семейный	Мартин Вуд, Питер ДеЛуис, Энн Вилер	42
1749	Вольтрон: Легендарный защитник (3 сезон)	https://kinokrad.co/320630-voltron-legendarnyy-zaschitnik-3-sezon-2017.html	7	2017	США	мультфильм, фантастика, приключения	Стив Ан, Юджин Ли, Крис Палмер	23
1750	Булл (2 сезон)	https://kinokrad.co/321986-bull-2-sezon.html	7	2017	США	драма, комедия, криминал	Дуглас Арниокоски, Дэннис Смит, Ян Элиасберг	60
1751	Зона (1 сезон)	https://kinokrad.co/326642-zona-1-sezon.html	6	2017	Испания	ужасы, боевик, триллер, драма, криминал, детектив, приключения	Хорхе Санчес-Кабесудо, Гонсало Лопес-Гальего	60
1752	Школа рока (3 сезон)	https://kinokrad.co/317918-shkola-roka-3-sezon-2017.html	7	2017	США	мюзикл, комедия, семейный	Тревор Киршнер, Джонатан Джадж, Джей Коген	30
1753	В розыске (1 сезон)	https://kinokrad.co/327296-v-rozyske-1-sezon.html	6	2017	Германия	триллер, драма	Бернхард Яспер, Маттиас Швайгхёфер	49
1754	Детство Шелдона / Молодой Шелдон (1 сезон)	https://kinokrad.co/321614-detstvo-sheldona-molodoy-sheldon-1-sezon-2017.html	8	2017	США	комедия	Майкл Цинберг, Джон Фавро, Джаффар Махмуд	30
1755	Династия (1 сезон)	https://kinokrad.co/321982-dinastiya.html	7	2017	США	драма	Майкл А. Алловиц, Ли Роуз, Брэд Силберлинг	42
1756	Полицейский с Рублёвки (2 сезон)	https://kinokrad.co/326612-policeyskiy-s-rublevki-2-sezon.html	7	2017	Россия	криминал, комедия, драма	Илья Куликов	48
1757	Смертельное оружие (2 сезон)	https://kinokrad.co/322007-smertelnoe-oruzhie-2-sezon.html	9	2017	США	боевик, триллер, драма, криминал	Стив Бойум, Джейсон Энслер, МакДжи	60
1758	Заложница (1 сезон)	https://kinokrad.co/326564-zalozhnica-1-sezon.html	7	2017	Франция, США	боевик, триллер, драма	Ромео Тироне, Элоди Кин, Лекси Александр	41
1759	Несгибаемая Кимми Шмидт (3 сезон)	https://kinokrad.co/327680-nesgibaemaya-kimmi-shmidt-3-sezon.html	4	2017	США	драма, комедия	Тристрам Шапиро, Майкл Энглер, Бет МакКарти-Миллер	30
1760	В розыске (2 сезон)	https://kinokrad.co/327653-v-rozyske-2-sezon.html	5	2017	Германия	триллер, драма	Бернхард Яспер, Маттиас Швайгхёфер	49
1761	Заложница (2 сезон)	https://kinokrad.co/326567-zalozhnica-2-sezon.html	6	2017	Франция, США	боевик, триллер, драма	Ромео Тироне, Элоди Кин, Лекси Александр	41
1762	Каратель (1 сезон)	https://kinokrad.co/323527-karatel-1-sezon.html	8	2017	США	фантастика, боевик, триллер, драма, криминал, приключения	Энди Годдард, Том Шенклэнд, Антонио Кампос	685
1763	По ту сторону (1 сезон)	https://kinokrad.co/311118-po-tu-storonu-1-sezon-2017.html	7	2017	США	детектив	Стив Эделсон, Ник Копус, Ли Толанд Кригер	60
1764	Туннель (3 сезон)	https://kinokrad.co/323939-tunnel-tonnel-3-sezon.html	6	2017	Великобритания, Франция	триллер, драма, криминал, детектив	Томас Винсент, Андерс Энгстрем, Хетти Макдональд	60
1765	Проклятая нация/Проклятье (1 сезон)	https://kinokrad.co/323783-proklyate-1-sezon.html	7	2017	США	драма, криминал, вестерн	Адам Кэйн, Род Лури, Эва Сёрхёуг	60
1766	Нездоровое поведение (1 сезон)	https://kinokrad.co/324185-nezdorovoe-povedenie-1-sezon.html	6	2017	Великобритания	драма, комедия	Стив Бенделак	60
1767	Путешествие Кино: Прекрасный мир (1 сезон)	https://kinokrad.co/324179-puteshestvie-kino-prekrasnyy-mir-1-sezon.html	7	2017	Япония	мультфильм, фэнтези, драма, приключения, аниме	Томохиса Тагучи	60
1768	Раскосяченные (1 сезон)	https://kinokrad.co/320310-raskosyachennye-1-sezon-2017.html	6	2017	США	комедия	Ричи Кин, Rhiannon O\\'Harra, Джеймс Берроуз	30
1769	Одарённые (1 сезон)	https://kinokrad.co/322279-odarennye-1-sezon.html	8	2017	США	фантастика, фэнтези, боевик	Джеримайя С. Чечик, Скотт Питерс, Крэйг Сибельс	47
1770	Акушерка (1 сезон)	https://kinokrad.co/334522-akusherka-1-sezon.html	5	2017	Россия	мелодрама	Станислав Либин	55
1771	Прости меня, Господи (1 сезон)	https://kinokrad.co/333664-prosti-menya-gospodi-1-sezon.html	6	2017	Испания	драма	Алехандро Бассано	55
1772	Отвязный Дайс (2 сезон)	https://kinokrad.co/333652-otvyaznyy-days-2-sezon.html	5	2017	США	комедия	Скот Армстронг, Джей Карас, Тодд Бирман	30
1773	А вот и Джонни (1 сезон)	https://kinokrad.co/324152-a-vot-i-dzhonni-1-sezon.html	6	2017	США	комедия	Дэвид Гордон Грин	25
1774	Слэшер / Резня (2 сезон)	https://kinokrad.co/324146-slesher-reznya-2-sezon.html	6	2017	Канада, Великобритания, США	ужасы, драма, детектив	Крэйг Дэвид Уоллес, Фелипе Родригез	60
1775	Госпожа Фазилет и её дочери (1 сезон)	https://kinokrad.co/328130-gospozha-fazilet-i-ee-docheri-1-sezon.html	4	2017	Турция	драма	Алптекин Бозкурт, Gökçen Usta Çaylar, Günay Günaydin	140
1776	Мыслить как преступник (13 сезон)	https://kinokrad.co/322267-myslit-kak-prestupnik-13-sezon.html	8	2017	США, Канада	триллер, драма, криминал, детектив	Гленн Кершоу, Феликс Энрикез Алькала, Эдвард Аллен Бернеро	43
1777	Волчья яма (2 сезон)	https://kinokrad.co/324143-volchya-yama-2-sezon.html	8	2017	Австралия	ужасы, триллер, драма	Тони Тилс, Грег МакЛин	45
1778	Морская полиция: Новый Орлеан (4 сезон)	https://kinokrad.co/322623-morskaya-policiya-novyy-orlean-4-sezon.html	7	2017	США	драма, криминал	Джеймс Хейман, Тони Уормби, Майкл Цинберг	42
1779	Ничего не происходит (1 сезон)	https://kinokrad.co/324140-nichego-ne-proishodit-1-sezon.html	5	2017	США	комедия	Трент О’Доннелл	30
1780	Права на престол Абдулхамид (1 сезон)	https://kinokrad.co/324098-prava-na-prestol-abdulhamid-1-sezon.html	7	2017	Турция	драма, история	Сердар Акар	150
1781	Охотники на троллей (2 сезон)	https://kinokrad.co/324065-ohotniki-na-trolley-2-sezon.html	8	2017	США, Мексика	мультфильм, фэнтези, комедия, приключения, семейный	Родриго Блаас, Илэйн Боган, Эндрю Л. Шмидт	23
1782	Голдберги (5 сезон)	https://kinokrad.co/322315-goldbergi-5-sezon.html	5	2017	США	комедия	Дэвид Катценберг, Джей Чандрашекхар, Лью Шнайдер	22
1783	Морская полиция: Спецотдел (15 сезон)	https://kinokrad.co/322103-morskaya-policiya-specotdel-15-sezon.html	7	2017	США	боевик, триллер, драма, комедия, криминал, детектив	Дэннис Смит, Тони Уормби, Терренс О’Хара	43
1784	Флэш (4 сезон)	https://kinokrad.co/322195-flesh-4-sezon.html	8	2017	США	фантастика, боевик, драма, приключения	Дермотт Даунс, Глен Винтер, Ральф Хемекер	43
1785	Нэшвилл (6 сезон)	https://kinokrad.co/324770-neshvill-6-sezon.html	6	2017	США	драма, мелодрама, музыка	Кэлли Кхури, Стивен Крегг, Майкл Ломанн	43
1786	Империя (4 сезон)	https://kinokrad.co/323399-imperiya-4-sezon.html	7	2017	США	драма, музыка	Санаа Хамри, Крэйг Брюэр, Дэнни Стронг	42
1787	Последний кандидат (2 сезон)	https://kinokrad.co/322271-posledniy-kandidat-2-sezon.html	7	2017	США	триллер, драма	Фред Туа, Крис Грисмер, Пол А. Эдвардс	60
1788	Гавайи 5.0 (8 сезон)	https://kinokrad.co/321714-gavayi-5.0-8-sezon-2017.html	7	2017	США	боевик, драма, криминал	Брайан Спайсер, Ларри Тенг, Джо Данте	43
1789	Гриффины (16 сезон)	https://kinokrad.co/322095-griffiny-16-sezon.html	7	2017	США	мультфильм, комедия	Питер Шин, Джеймс Пурдум, Доминик Бьянчи	22
1790	Молодёжка (5 сезон)	https://kinokrad.co/324650-molodezhka-5-sezon.html	7	2017	Россия	драма, спорт	Сергей Арланов, Андрей Головков	48
1791	Икра (1 сезон)	https://kinokrad.co/324929-ikra-1-sezon.html	5	2017	Россия	детектив	Виталий Воробьев	51
1792	Мэр (1 сезон)	https://kinokrad.co/322671-mer-1-sezon.html	6	2017	США	комедия	Джеймс Гриффитс, Джон Фортенберри, Тина Мэбри	30
1793	Звёздный путь: Дискавери (1 сезон)	https://kinokrad.co/321598-zvezdnyy-put-diskaveri-1-sezon-2017.html	8	2017	США	фантастика	Акива Голдсман, Адам Кэйн, Ли Роуз	42
1794	Диета из Санта-Клариты (1 сезон)	https://kinokrad.co/324884-dieta-iz-santa-klarity-1-sezon.html	7	2017	США	ужасы, комедия	Стив Пинк, Кен Куопис, Марк Баклэнд	30
1795	Тайны Сильверхёйда (2 сезон)	https://kinokrad.co/322275-tayny-silverheyda-2-sezon.html	6	2017	Швеция, Финляндия, Великобритания, Норвегия	фэнтези, триллер, драма, криминал, детектив	Андерс Энгстрем, Хенрик Бьорн	60
1796	Хроники Франкенштейна (2 сезон)	https://kinokrad.co/323655-hroniki-frankenshteyna-2-sezon.html	6	2017	Великобритания	фэнтези, драма, криминал, детектив	Бенжамин Росс, Alex Gabassi	48
1797	Дурная кровь (1 сезон)	https://kinokrad.co/323659-durnaya-krov-1-sezon.html	8	2017	Канада	драма, криминал	Ален Дерошер	45
1798	Охотники за головами (1 сезон)	https://kinokrad.co/323615-ohotniki-za-golovami-1-sezon.html	6	2017	Великобритания	боевик, комедия, приключения	Уильям Синклер	60
1799	Чужое лицо (1 сезон)	https://kinokrad.co/323611-chuzhoe-lico-1-sezon.html	5	2017	Россия	приключения, детектив, криминал	Иван Криворучко, Григорий Жихаревич	48
1800	Осколки (1 сезон)	https://kinokrad.co/325904-oskolki-1-sezon.html	5	2017	Россия	мелодрама	Владимир Нахабцев мл	50
1801	Орвилл (1 сезон)	https://kinokrad.co/321574-orvill-1-sezon-2017.html	8	2017	США	фантастика, драма, комедия, приключения	Джон Кассар, Сет МакФарлейн, Джеми Бэббит	60
1802	Умираю со смеху (1 сезон)	https://kinokrad.co/317162-umirayu-so-smehu-1-sezon-2017.html	5	2017	США	драма, комедия	Адам Дэвидсон, Иэн Б. МакДональд, Джон С. Бейрд	60
1803	Отель Элеон (2 сезон)	https://kinokrad.co/323111-otel-eleon-2-sezon.html	7	2017	Россия, Украина	комедия	Антон Федотов, Антон Маслов, Екатерина Забулонская	24
1804	Умерь свой энтузиазм (9 сезон)	https://kinokrad.co/322159-umer-svoy-entuziazm-9-sezon.html	6	2017	США	комедия	Роберт Б. Уайди, Ларри Чарльз, Брайан Гордон	28
1805	Эль Чапо (2 сезон)	https://kinokrad.co/321978-el-chapo-2-sezon.html	7	2017	США	драма	Эрнесто Контрерас, Хосе Мануэль Кравиотто	120
1806	Я, опять я и снова я (1 сезон)	https://kinokrad.co/322319-ya-opyat-ya-i-snovaya-1-sezon.html	8	2017	США	комедия	Тодд Холлэнд, Рэндолл Айнхорн, Джон Фортенберри	30
1807	Райский уголок (1 сезон)	https://kinokrad.co/334732-rayskiy-ugolok-1-sezon.html	4	2017	Россия	детектив	Александр Созонов	50
1808	Молодые и голодные (5 сезон)	https://kinokrad.co/315278-molodye-i-golodnye-5-sezon-2017.html	6	2017	США	драма, мелодрама, комедия	Энди Кэдифф, Фил Льюис, Кэти Гарретсон	22
1809	Вавилон-Берлин (1 сезон)	https://kinokrad.co/328292-vavilon-berlin-1-sezon.html	7	2017	Германия	триллер, драма, криминал, история	Хендрик Хандлёгтен, Том Тыквер, Ахим фон Боррис	45
1810	Облом (1 сезон)	https://kinokrad.co/328274-oblom-1-sezon.html	7	2017	Австралия	комедия	Трент О’Доннелл	30
1811	Хорошая игра (1 сезон)	https://kinokrad.co/328853-horoshaya-igra-1-sezon.html	7	2017	США	комедия	Дэнни Элинек	25
1812	Орвилл (2 сезон)	https://kinokrad.co/333272-orvill-2-sezon.html	7	2017	США	фантастика, драма, комедия, приключения	Джон Кассар, Брэннон Брага, Роберт Данкан МакНил	44
1813	Приключения Кота в сапогах (3 сезон)	https://kinokrad.co/335953-priklyucheniya-kota-v-sapogah-3-sezon.html	6	2017	США	мультфильм, фэнтези, комедия, приключения, семейный	Джонни Кастучиано, Рой Бурдин, Бен Джуоно	23
1814	Уормвуд / Полынь (1 сезон)	https://kinokrad.co/323687-uormvud-1-sezon.html	8	2017	США	документальный, биография	Эррол Моррис	43
1815	Место, что домом зовётся (5 сезон)	https://kinokrad.co/323675-mesto-chto-domom-zovetsya-5-sezon.html	7	2017	Австралия	драма	Марк Джофф, Линн-Мэри Дэнзе, Ширли Баррет	60
1816	Пять минут тишины (1 сезон)	https://kinokrad.co/325112-pyat-minut-tishiny-1-sezon.html	6	2017	Россия	приключения, детектив	Алексей Праздников	52
1817	Бунтари (1 сезон)	https://kinokrad.co/325115-buntari-1-sezon.html	6	2017	Великобритания	комедия	Errol Etienne, Ollie Parsons, James De Frond	30
1819	24 часа: Наследие (1 сезон)	https://kinokrad.co/325076-24-chasa-nasledie-1-sezon.html	7	2017	США	боевик, триллер, драма, криминал, детектив	Джон Кассар, Стивен Хопкинс, Нельсон МакКормик	41
1820	Миллиарды (2 сезон)	https://kinokrad.co/325034-milliardy-2-sezon.html	8	2017	США	драма	Нил Бёргер, Анна Боден, Райан Флек	60
1821	Полиция Чикаго (5 сезон)	https://kinokrad.co/322087-policiya-chikago-5-sezon.html	7	2017	США	боевик, триллер, драма, криминал	Марк Тинкер, Ник Гомез, Фред Бернер	43
1822	Взрывная волна (1 сезон)	https://kinokrad.co/325073-vzryvnaya-volna-1-sezon.html	4	2017	Россия	детектив	Георгий Гаврилов	50
1823	Бывает и хуже (9 сезон)	https://kinokrad.co/322115-byvaet-i-huzhe-9-sezon.html	7	2017	США	комедия	Ли Шаллат Чемел, Эллиот Хегарти, Фил Трэйл	22
1824	Спецназ города ангелов (1 сезон)	https://kinokrad.co/323679-specnaz-goroda-angelov-1-sezon.html	8	2017	США	боевик, триллер, драма, криминал, приключения	Билл Джирхарт, Грег Биман, Холли Дэйл	43
1825	Спецназ (1 сезон)	https://kinokrad.co/321706-specnaz-1-sezon-2017.html	8	2017	США	драма	Кристофер Чулак, Ларри Тенг, Иэн Тойнтон	45
1826	Екатерина (2 сезон)	https://kinokrad.co/324989-ekaterina-2-sezon.html	7	2017	Россия	драма, мелодрама	Александр Баранов, Рамиль Сабитов	44
1827	Один против всех (1 сезон)	https://kinokrad.co/324977-odin-protiv-vseh-1-sezon.html	3	2017	Россия	боевик, детектив, криминал	Владимир Виноградов, Михаил Вассербаум	45
1828	Тарзан и Джейн (1 сезон)	https://kinokrad.co/333149-tarzan-i-dzheyn-1-sezon.html	6	2017	США	мультфильм, фантастика, боевик, комедия, приключения, семейный	Джесси Ликман, Стив Болл	22
1829	Шерлок (4 сезон)	https://kinokrad.co/311026-sherlok-4-sezon.html	8	2017	Великобритания, США	триллер, драма, криминал, детектив	Пол МакГиган, Ник Харран, Коки Гидройч	90
1830	Легенды завтрашнего дня (3 сезон)	https://kinokrad.co/322167-legendy-zavtrashnego-dnya-3-sezon.html	7	2017	США	фантастика, боевик, драма, приключения	Дермотт Даунс, Грегори Смит, Дэвид Геддес	42
1831	Обитатели больницы (1 сезон)	https://kinokrad.co/324845-obitateli-bolnicy-1-sezon.html	5	2017	Великобритания	комедия	Пол Мерфи	28
1832	Команда «Мстители»/ Мстители, общий сбор! (4 сезон)	https://kinokrad.co/320474-komanda-mstiteli-mstiteli-obschiy-sbor-4-sezon.html	7	2017	США	мультфильм, приключения, фэнтези, фантастика, боевик	Джефф Аллен, Тим Элдред, Эрик Радомски	22
1833	Звёздные войны: Повстанцы (4 сезон)	https://kinokrad.co/322091-zvezdnye-voyny-povstancy-4-sezon.html	8	2017	США	мультфильм, фантастика, боевик, приключения	Дэйв Филони, Стюарт Ли, Боско ЭнДжи	30
1834	Трасса смерти (1 сезон)	https://kinokrad.co/325403-trassa-smerti-1-sezon.html	6	2017	Россия	триллер, детектив	Денис Нейманд	48
1835	Евангелие от Кевина (1 сезон)	https://kinokrad.co/322163-evangelie-ot-kevina-1-sezon.html	7	2017	США	фэнтези, драма, комедия	Кевин Даулинг, Роб Харди, Питер Лето	60
1836	Горничная (1 сезон)	https://kinokrad.co/325391-gornichnaya-1-sezon.html	5	2017	Россия, Украина	драма, мелодрама	Олег Масленников	48
1837	Академия Гринхаус (1 сезон)	https://kinokrad.co/325364-akademiya-grinhaus-1-sezon.html	9	2017	США	драма	Флорентайн Роуи	25
1838	Амнезия (1 сезон)	https://kinokrad.co/321990-amneziya-1-sezon.html	8	2017	США	триллер, драма, криминал, детектив	Одед Рускин	45
1839	Доктор Шанс (2 сезон)	https://kinokrad.co/322099-doktor-shans-2-sezon.html	7	2017	США	триллер, драма, детектив	Дэниэл Эттиэс, Майкл Леманн, Роксанн Доусон	60
1840	Голые и напуганные XL (3 сезон)	https://kinokrad.co/321894-golye-i-napugannye-xl-3-sezon.html	7	2017	США	реальное ТВ		45
1841	Мне очень жаль (1 сезон)	https://kinokrad.co/319990-mne-ochen-zhal-1-sezon-2017.html	7	2017	США	комедия	Рэйчел Голденберг, Дэйл Штерн	30
1842	Граница (2 сезон)	https://kinokrad.co/322311-granica-2-sezon.html	8	2017	Канада	приключения	Кен Джиротти, Брэд Пейтон, Келли Макин	60
1843	Министерство времени (3 сезон)	https://kinokrad.co/318302-ministerstvo-vremeni-3-sezon-2017.html	6	2017	Испания	фантастика, фэнтези, комедия, приключения	Марк Вихиль, Хорхе С. Дорадо, Abigail Schaaff	70
1844	Сверхлюди (1 сезон)	https://kinokrad.co/318802-sverhlyudi-1-sezon.html	7	2017	США	фантастика, боевик, приключения	Роэль Рейн, Крис Фишер, Билл Джирхарт	48
1845	Американская история ужасов (7 сезон)	https://kinokrad.co/320986-amerikanskaya-istoriya-uzhasov-7-sezon-2017.html	7	2017	США	ужасы, триллер, драма	Брэдли Букер, Альфонсо Гомес-Рехон, Майкл Аппендаль	43
1846	Изгой (2 сезон)	https://kinokrad.co/315994-izgoy-2-sezon-2017.html	7	2017	США	ужасы, драма, мистика	Лони Перистер, Ховард Дойч, Тришиа Брок	60
1847	Хроники Шаннары (2 сезон)	https://kinokrad.co/321995-hroniki-shannary-2-sezon.html	8	2017	США, Новая Зеландия	фантастика, фэнтези, приключения	Брэд Тернер, Джонатан Либесман, Джеймс Маршалл	42
1848	На Чесапикских берегах (2 сезон)	https://kinokrad.co/322499-na-chesapikskih-beregah-2-sezon.html	5	2017	США	драма, семейный	Мартин Вуд, Питер ДеЛуис, Энн Вилер	42
1849	Вольтрон: Легендарный защитник (3 сезон)	https://kinokrad.co/320630-voltron-legendarnyy-zaschitnik-3-sezon-2017.html	7	2017	США	мультфильм, фантастика, приключения	Стив Ан, Юджин Ли, Крис Палмер	23
1850	Булл (2 сезон)	https://kinokrad.co/321986-bull-2-sezon.html	7	2017	США	драма, комедия, криминал	Дуглас Арниокоски, Дэннис Смит, Ян Элиасберг	60
1851	Зона (1 сезон)	https://kinokrad.co/326642-zona-1-sezon.html	6	2017	Испания	ужасы, боевик, триллер, драма, криминал, детектив, приключения	Хорхе Санчес-Кабесудо, Гонсало Лопес-Гальего	60
1852	Школа рока (3 сезон)	https://kinokrad.co/317918-shkola-roka-3-sezon-2017.html	7	2017	США	мюзикл, комедия, семейный	Тревор Киршнер, Джонатан Джадж, Джей Коген	30
1853	В розыске (1 сезон)	https://kinokrad.co/327296-v-rozyske-1-sezon.html	6	2017	Германия	триллер, драма	Бернхард Яспер, Маттиас Швайгхёфер	49
1854	Детство Шелдона / Молодой Шелдон (1 сезон)	https://kinokrad.co/321614-detstvo-sheldona-molodoy-sheldon-1-sezon-2017.html	8	2017	США	комедия	Майкл Цинберг, Джон Фавро, Джаффар Махмуд	30
1855	Династия (1 сезон)	https://kinokrad.co/321982-dinastiya.html	7	2017	США	драма	Майкл А. Алловиц, Ли Роуз, Брэд Силберлинг	42
1856	Полицейский с Рублёвки (2 сезон)	https://kinokrad.co/326612-policeyskiy-s-rublevki-2-sezon.html	7	2017	Россия	криминал, комедия, драма	Илья Куликов	48
1857	Смертельное оружие (2 сезон)	https://kinokrad.co/322007-smertelnoe-oruzhie-2-sezon.html	9	2017	США	боевик, триллер, драма, криминал	Стив Бойум, Джейсон Энслер, МакДжи	60
1858	Заложница (1 сезон)	https://kinokrad.co/326564-zalozhnica-1-sezon.html	7	2017	Франция, США	боевик, триллер, драма	Ромео Тироне, Элоди Кин, Лекси Александр	41
1859	Несгибаемая Кимми Шмидт (3 сезон)	https://kinokrad.co/327680-nesgibaemaya-kimmi-shmidt-3-sezon.html	4	2017	США	драма, комедия	Тристрам Шапиро, Майкл Энглер, Бет МакКарти-Миллер	30
1860	В розыске (2 сезон)	https://kinokrad.co/327653-v-rozyske-2-sezon.html	5	2017	Германия	триллер, драма	Бернхард Яспер, Маттиас Швайгхёфер	49
1861	Заложница (2 сезон)	https://kinokrad.co/326567-zalozhnica-2-sezon.html	6	2017	Франция, США	боевик, триллер, драма	Ромео Тироне, Элоди Кин, Лекси Александр	41
1862	Каратель (1 сезон)	https://kinokrad.co/323527-karatel-1-sezon.html	8	2017	США	фантастика, боевик, триллер, драма, криминал, приключения	Энди Годдард, Том Шенклэнд, Антонио Кампос	685
1863	По ту сторону (1 сезон)	https://kinokrad.co/311118-po-tu-storonu-1-sezon-2017.html	7	2017	США	детектив	Стив Эделсон, Ник Копус, Ли Толанд Кригер	60
1864	Туннель (3 сезон)	https://kinokrad.co/323939-tunnel-tonnel-3-sezon.html	6	2017	Великобритания, Франция	триллер, драма, криминал, детектив	Томас Винсент, Андерс Энгстрем, Хетти Макдональд	60
1865	Проклятая нация/Проклятье (1 сезон)	https://kinokrad.co/323783-proklyate-1-sezon.html	7	2017	США	драма, криминал, вестерн	Адам Кэйн, Род Лури, Эва Сёрхёуг	60
1866	Нездоровое поведение (1 сезон)	https://kinokrad.co/324185-nezdorovoe-povedenie-1-sezon.html	6	2017	Великобритания	драма, комедия	Стив Бенделак	60
1867	Путешествие Кино: Прекрасный мир (1 сезон)	https://kinokrad.co/324179-puteshestvie-kino-prekrasnyy-mir-1-sezon.html	7	2017	Япония	мультфильм, фэнтези, драма, приключения, аниме	Томохиса Тагучи	60
1868	Раскосяченные (1 сезон)	https://kinokrad.co/320310-raskosyachennye-1-sezon-2017.html	6	2017	США	комедия	Ричи Кин, Rhiannon O\\'Harra, Джеймс Берроуз	30
1869	Одарённые (1 сезон)	https://kinokrad.co/322279-odarennye-1-sezon.html	8	2017	США	фантастика, фэнтези, боевик	Джеримайя С. Чечик, Скотт Питерс, Крэйг Сибельс	47
1870	Акушерка (1 сезон)	https://kinokrad.co/334522-akusherka-1-sezon.html	5	2017	Россия	мелодрама	Станислав Либин	55
1871	Прости меня, Господи (1 сезон)	https://kinokrad.co/333664-prosti-menya-gospodi-1-sezon.html	6	2017	Испания	драма	Алехандро Бассано	55
1872	Отвязный Дайс (2 сезон)	https://kinokrad.co/333652-otvyaznyy-days-2-sezon.html	5	2017	США	комедия	Скот Армстронг, Джей Карас, Тодд Бирман	30
1873	А вот и Джонни (1 сезон)	https://kinokrad.co/324152-a-vot-i-dzhonni-1-sezon.html	6	2017	США	комедия	Дэвид Гордон Грин	25
1874	Слэшер / Резня (2 сезон)	https://kinokrad.co/324146-slesher-reznya-2-sezon.html	6	2017	Канада, Великобритания, США	ужасы, драма, детектив	Крэйг Дэвид Уоллес, Фелипе Родригез	60
1875	Госпожа Фазилет и её дочери (1 сезон)	https://kinokrad.co/328130-gospozha-fazilet-i-ee-docheri-1-sezon.html	4	2017	Турция	драма	Алптекин Бозкурт, Gökçen Usta Çaylar, Günay Günaydin	140
1876	Мыслить как преступник (13 сезон)	https://kinokrad.co/322267-myslit-kak-prestupnik-13-sezon.html	8	2017	США, Канада	триллер, драма, криминал, детектив	Гленн Кершоу, Феликс Энрикез Алькала, Эдвард Аллен Бернеро	43
1877	Волчья яма (2 сезон)	https://kinokrad.co/324143-volchya-yama-2-sezon.html	8	2017	Австралия	ужасы, триллер, драма	Тони Тилс, Грег МакЛин	45
1878	Морская полиция: Новый Орлеан (4 сезон)	https://kinokrad.co/322623-morskaya-policiya-novyy-orlean-4-sezon.html	7	2017	США	драма, криминал	Джеймс Хейман, Тони Уормби, Майкл Цинберг	42
1879	Ничего не происходит (1 сезон)	https://kinokrad.co/324140-nichego-ne-proishodit-1-sezon.html	5	2017	США	комедия	Трент О’Доннелл	30
1880	Права на престол Абдулхамид (1 сезон)	https://kinokrad.co/324098-prava-na-prestol-abdulhamid-1-sezon.html	7	2017	Турция	драма, история	Сердар Акар	150
1881	Охотники на троллей (2 сезон)	https://kinokrad.co/324065-ohotniki-na-trolley-2-sezon.html	8	2017	США, Мексика	мультфильм, фэнтези, комедия, приключения, семейный	Родриго Блаас, Илэйн Боган, Эндрю Л. Шмидт	23
1882	Голдберги (5 сезон)	https://kinokrad.co/322315-goldbergi-5-sezon.html	5	2017	США	комедия	Дэвид Катценберг, Джей Чандрашекхар, Лью Шнайдер	22
1883	Морская полиция: Спецотдел (15 сезон)	https://kinokrad.co/322103-morskaya-policiya-specotdel-15-sezon.html	7	2017	США	боевик, триллер, драма, комедия, криминал, детектив	Дэннис Смит, Тони Уормби, Терренс О’Хара	43
1884	Флэш (4 сезон)	https://kinokrad.co/322195-flesh-4-sezon.html	8	2017	США	фантастика, боевик, драма, приключения	Дермотт Даунс, Глен Винтер, Ральф Хемекер	43
1885	Нэшвилл (6 сезон)	https://kinokrad.co/324770-neshvill-6-sezon.html	6	2017	США	драма, мелодрама, музыка	Кэлли Кхури, Стивен Крегг, Майкл Ломанн	43
1886	Империя (4 сезон)	https://kinokrad.co/323399-imperiya-4-sezon.html	7	2017	США	драма, музыка	Санаа Хамри, Крэйг Брюэр, Дэнни Стронг	42
1887	Последний кандидат (2 сезон)	https://kinokrad.co/322271-posledniy-kandidat-2-sezon.html	7	2017	США	триллер, драма	Фред Туа, Крис Грисмер, Пол А. Эдвардс	60
1888	Гавайи 5.0 (8 сезон)	https://kinokrad.co/321714-gavayi-5.0-8-sezon-2017.html	7	2017	США	боевик, драма, криминал	Брайан Спайсер, Ларри Тенг, Джо Данте	43
1889	Гриффины (16 сезон)	https://kinokrad.co/322095-griffiny-16-sezon.html	7	2017	США	мультфильм, комедия	Питер Шин, Джеймс Пурдум, Доминик Бьянчи	22
1890	Молодёжка (5 сезон)	https://kinokrad.co/324650-molodezhka-5-sezon.html	7	2017	Россия	драма, спорт	Сергей Арланов, Андрей Головков	48
1891	Икра (1 сезон)	https://kinokrad.co/324929-ikra-1-sezon.html	5	2017	Россия	детектив	Виталий Воробьев	51
1892	Мэр (1 сезон)	https://kinokrad.co/322671-mer-1-sezon.html	6	2017	США	комедия	Джеймс Гриффитс, Джон Фортенберри, Тина Мэбри	30
1893	Звёздный путь: Дискавери (1 сезон)	https://kinokrad.co/321598-zvezdnyy-put-diskaveri-1-sezon-2017.html	8	2017	США	фантастика	Акива Голдсман, Адам Кэйн, Ли Роуз	42
1894	Диета из Санта-Клариты (1 сезон)	https://kinokrad.co/324884-dieta-iz-santa-klarity-1-sezon.html	7	2017	США	ужасы, комедия	Стив Пинк, Кен Куопис, Марк Баклэнд	30
1895	Тайны Сильверхёйда (2 сезон)	https://kinokrad.co/322275-tayny-silverheyda-2-sezon.html	6	2017	Швеция, Финляндия, Великобритания, Норвегия	фэнтези, триллер, драма, криминал, детектив	Андерс Энгстрем, Хенрик Бьорн	60
1896	Хроники Франкенштейна (2 сезон)	https://kinokrad.co/323655-hroniki-frankenshteyna-2-sezon.html	6	2017	Великобритания	фэнтези, драма, криминал, детектив	Бенжамин Росс, Alex Gabassi	48
1897	Дурная кровь (1 сезон)	https://kinokrad.co/323659-durnaya-krov-1-sezon.html	8	2017	Канада	драма, криминал	Ален Дерошер	45
1898	Охотники за головами (1 сезон)	https://kinokrad.co/323615-ohotniki-za-golovami-1-sezon.html	6	2017	Великобритания	боевик, комедия, приключения	Уильям Синклер	60
1899	Чужое лицо (1 сезон)	https://kinokrad.co/323611-chuzhoe-lico-1-sezon.html	5	2017	Россия	приключения, детектив, криминал	Иван Криворучко, Григорий Жихаревич	48
1900	Осколки (1 сезон)	https://kinokrad.co/325904-oskolki-1-sezon.html	5	2017	Россия	мелодрама	Владимир Нахабцев мл	50
1901	Окружение/Круг (1 сезон)	https://kinokrad.co/325892-okruzhenie-krug-1-sezon.html	6	2017	Турция	боевик, драма, криминал	Абдулла Огуз	95
1902	Стэн против сил зла (2 сезон)	https://kinokrad.co/322583-sten-protiv-sil-zla-2-sezon.html	7	2017	США	ужасы, фэнтези, комедия	Джек Бишоп, Джастин Ниджм, Роберт Коэн	30
1903	Все к лучшему / Перемены  (2 сезон)	https://kinokrad.co/321638-vse-k-luchshemu-peremeny-2-sezon-2017.html	6	2017	США	драма, комедия	Ниша Ганатра, Лэнс Бэнгс, Памела Адлон	30
1904	Стражи Галактики (2 сезон)	https://kinokrad.co/315378-strazhi-galaktiki-2-sezon-2017.html	7	2017	США	мультфильм, фантастика, боевик, приключения	Эрик Радомски, Лео Райли, Jeff Wamester	22
1905	Мистер Мерседес (1 сезон)	https://kinokrad.co/320634-mister-mersedes-1-sezon-2017.html	8	2017	США	триллер	Джек Бендер	60
1906	Закон и порядок: Настоящее преступление (1 сезон)	https://kinokrad.co/322179-zakon-i-poryadok-nastoyaschee-prestuplenie-1-sezon.html	7	2017	США	триллер, драма, криминал, детектив	Фред Бернер, Холли Дэйл	45
1907	Ты — воплощение порока (4 сезон)	https://kinokrad.co/321090-ty-voploschenie-poroka-4-sezon-2017.html	6	2017	США	комедия, мелодрама	Венди Станцлер, Алекс Хардкасл, Стефен Фальк	24
1908	Дом Рэйвен (1 сезон)	https://kinokrad.co/319238-dom-reyven-1-sezon-2017.html	8	2017	США	семейный	Эрик Дин Ситон	22
1909	Плавучая больница (1 сезон)	https://kinokrad.co/322727-plavuchaya-bolnica-1-sezon.html	7	2017	Корея Южная	драма	Пак Чэ-бом	35
2005	Мистер Мерседес (1 сезон)	https://kinokrad.co/320634-mister-mersedes-1-sezon-2017.html	8	2017	США	триллер	Джек Бендер	60
1910	Проект Минди (6 сезон)	https://kinokrad.co/322667-proekt-mindi-6-sezon.html	7	2017	США	комедия	Майкл Алан Спиллер, Майкл Уивер, Дэвид Роджерс	22
1911	Твин Пикс (3 сезон)	https://kinokrad.co/317686-tvin-piks-3-sezon-2017.html	7	2017	США	драма, криминал, детектив	Дэвид Линч	60
1912	Девочки (6 сезон)	https://kinokrad.co/313338-devochki-6-sezon-2017.html	6	2017	США	драма, комедия	Лина Данэм, Джесси Перец, Ричард Шепард	30
1913	Джуда (1 сезон)	https://kinokrad.co/321414-dzhuda-1-sezon-2017.html	7	2017	Израиль	ужасы, фантастика, фэнтези, боевик, драма, криминал	Meni Yaish	45
1914	Вы все меня бесите (1 сезон)	https://kinokrad.co/311774-vy-vse-menya-besite-1-sezon.html	7	2017	Россия	комедия	Олег Фомин, Михаил Савин	24
1915	Кевин подождет (2 сезон)	https://kinokrad.co/321722-kevin-podozhdet-2-sezon-2017.html	7	2017	США	комедия	Энди Фикмен	30
1916	Последний человек на Земле (4 сезон)	https://kinokrad.co/321602-posledniy-chelovek-na-zemle-4-sezon-2017.html	9	2017	США	комедия	Джон Соломон, Джейсон Уолинер, Пэймэн Бенц	22
1917	МакГайвер (2 сезон)	https://kinokrad.co/322575-makgayver-2-sezon.html	7	2017	США	боевик, драма, приключения	Стивен Херек, Тауния Маккирнан, Элизабет Аллен	43
1918	Супермаркет (3 сезон)	https://kinokrad.co/321646-supermarket-3-sezon.html	6	2017	США	комедия	Рубен Флейшер, Виктор Нелли мл., Майкл Патрик Джэнн	30
1919	Курс биологии (1 сезон)	https://kinokrad.co/325838-kurs-biologii-1-sezon.html	7	2017	США	комедия	Османи Родригез, Райан Кейс, Джули Энн Робинсон	30
1920	Инструкция по разводу для женщин (4 сезон)	https://kinokrad.co/326435-instrukciya-po-razvodu-dlya-zhenschin-4-sezon.html	7	2017	США	драма, комедия	Роберт Данкан МакНил, Брайан Дэннели, Адам Брукс	60
1921	Грешница (1 сезон)	https://kinokrad.co/318994-greshnica-1-sezon-2017.html	8	2017	США	триллер	Антонио Кампос, Брэд Андерсон, Джоди Ли Лайпс	60
1922	Спасение (1 сезон)	https://kinokrad.co/318138-spasenie-1-sezon-2017.html	7	2017	США	фантастика, триллер, драма	Хуан Карлос Фреснадильо, Ник Гомез, Грег Биман	45
1923	Лего Рыцари Нексо (4 сезон)	https://kinokrad.co/320874-lego-rycari-nekso-4-sezon-2017.html	8	2017	Дания	мультфильм, фантастика, боевик, комедия	Stu Gamble	20
1924	Лего Рыцари Нексо (3 сезон)	https://kinokrad.co/320870-lego-rycari-nekso-3-sezon-2017.html	7	2017	Дания	мультфильм, фантастика, боевик, комедия	Stu Gamble	20
1925	Два лжеца (1 сезон)	https://kinokrad.co/318166-dva-lzheca-1-sezon-2017.html	6	2017	Турция	комедия	Eda Teksöz	
1926	Миднайт, Техас (1 сезон)	https://kinokrad.co/319002-midnayt-tehas-1-sezon-2017.html	9	2017	США	фэнтези, драма, детектив, мистика	Дэвид Соломон, Майрзи Алмас, Грег Биман	60
1927	Жирный шрифт (1 сезон)	https://kinokrad.co/317766-zhirnyy-shrift-1-sezon-2017.html	8	2017	США	детектив, драма, комедия	Гэри Фледер	45
1928	Достать коротышку (1 сезон)	https://kinokrad.co/319126-dostat-korotyshku-1-sezon-2017.html	7	2017	США	комедия, криминал	Адам Аркин, Дэниэл Эттиэс, Эдвард Бьянчи	
1929	Вайс (5 сезон)	https://kinokrad.co/321886-vays-5-sezon.html	6	2017	США	документальный, новости	Шэйн Смит, Nikolia Apostolou	30
1930	19-2 / Девятнадцать Два (4 сезон)	https://kinokrad.co/319950-19-2-devyatnadcat-dva-4-sezon-2017.html	6	2017	Канада	драма, криминал	Луи Шокетт, Эрик Канюэль, Стефан Плещински	60
1931	Эль Чапо (1 сезон)	https://kinokrad.co/321914-el-chapo-1-sezon.html	8	2017	США	драма	Эрнесто Контрерас, Хосе Мануэль Кравиотто	120
1932	Время приключений (9 сезон)	https://kinokrad.co/321718-vremya-priklyucheniy-9-sezon-2017.html	7	2017	США	мультфильм, фантастика, фэнтези, комедия, приключения, семейный	Bong Hee Han, Ларри Лэйчлитер, Элизабет Ито	22
1933	Где-то между (1 сезон)	https://kinokrad.co/321690-gde-to-mezhdu-1-sezon-2017.html	7	2017	США	триллер, драма	Майкл Нанкин, Дуан Кларк, Дэвид Фрэйзи	41
1934	Эпизоды (5 сезон)	https://kinokrad.co/320990-epizody-5-sezon-2017.html	6	2017	США, Великобритания	комедия	Иэн Б. МакДональд, Джим Филд Смит, Джеймс Гриффитс	28
1935	Юная (4 сезон)	https://kinokrad.co/318514-yunaya-4-sezon-2017.html	8	2017	США	мелодрама, комедия	Питер Лоэр, Стивен К. Цутида, Тодд Бирман	22
1936	Последний корабль (4 сезон)	https://kinokrad.co/320018-posledniy-korabl-4-sezon-2017.html	7	2017	США	фантастика, боевик, триллер, драма, военный	Пол Холахан, Джек Бендер, Питер Уэллер	43
1937	В надежде на спасение (5 сезон)	https://kinokrad.co/321358-v-nadezhde-na-spasenie-5-sezon-2017.html	5	2017	Канада	фэнтези, драма	Дэвид Уэллингтон, Питер Веллингтон, Грегори Смит	44
1938	Темное дитя (5 сезон)	https://kinokrad.co/317674-temnoe-ditya-5-sezon-2017.html	8	2017	Канада	фантастика, боевик, драма	Джон Фоусет, Дэвид Фрэйзи, Кен Джиротти	43
1939	Шале (1 сезон)	https://kinokrad.co/327287-shale-1-sezon.html	7	2017	Франция	триллер, детектив	Камилль Бордес-Рене	52
1940	Частные сыщики (2 сезон)	https://kinokrad.co/317866-chastnye-syschiki-2-sezon-2017.html	6	2017	Канада	драма	Келли Макин, Чарльз Оффисер, Энн Вилер	43
1941	Права на престол Абдулхамид (2 сезон)	https://kinokrad.co/324101-prava-na-prestol-abdulhamid-2-sezon.html	6	2017	Турция	драма, история	Сердар Акар	150
1943	Кардинал (1 сезон)	https://kinokrad.co/318026-kardinal-1-sezon-2017.html	8	2017	Канада	триллер, драма, криминал	Дэниэл Гру	42
1944	Безмолвный свидетель (20 сезон)	https://kinokrad.co/313202-bezmolvnyy-svidetel-20-sezon-2017.html	7	2017	Великобритания	драма, криминал, детектив	Тадеус О’Салливан, Дэвид Ричардс, Ричард Сайни	43
1945	По расчету (1 сезон)	https://kinokrad.co/316654-po-raschetu-1-sezon-2017.html	6	2017	США	триллер	Джонас Пейт, Элизабет Аллен, Кэрол Бенкер	60
1946	Бессильные (1 сезон)	https://kinokrad.co/312958-bessilnye-1-sezon-2017.html	7	2017	США	комедия	Марк Баклэнд, Джей Чандрашекхар, Дж. Кларк Мэтис	30
1947	Неоновый Джо – Охотник на оборотней (2 сезон)	https://kinokrad.co/318702-neonovyy-dzho-ohotnik-na-oborotney-2-sezon-2017.html	4	2017	США	ужасы, фантастика, комедия	Райан МакФол, Джон Ли	
1948	Друзья с колледжа (1 сезон)	https://kinokrad.co/318646-druzya-s-kolledzha-1-sezon-2017.html	7	2017	США	драма, комедия	Николас Столлер	30
1949	Королева юга (2 сезон)	https://kinokrad.co/317194-koroleva-yuga-2-sezon-2017.html	8	2017	США	боевик, триллер, драма, криминал	Дэвид Бойд, Мэттью Пенн, Скотт Питерс	42
1950	Киллджойс (3 сезон)	https://kinokrad.co/317782-killdzhoys-3-sezon-2017.html	8	2017	Канада	фантастика, боевик, триллер, приключения	Паоло Барзмен, Крис Грисмер, Питер Стеббингс	42
1951	Ночная смена (4 сезон)	https://kinokrad.co/317966-nochnaya-smena-4-sezon-2017.html	7	2017	США	драма, мелодрама	Эрик Ла Салль, Тимоти Басфилд, Дэвид Бойд	42
1952	Дарреллы (2 сезон)	https://kinokrad.co/318162-darrelly-2-sezon-2017.html	7	2017	Великобритания	драма, биография	Стив Бэррон, Роджер Голдби, Эдвард Холл	60
1953	Паула (1 сезон)	https://kinokrad.co/319998-paula-1-sezon-2017.html	5	2017	Великобритания	триллер	Алекс Холмс	60
1954	Без обязательств (3 сезон)	https://kinokrad.co/317386-bez-obyazatelstv-3-sezon-2017.html	6	2017	США	драма, комедия	Майкл Уивер, Джейсон Райтман, Фред Сэвэдж	25
1955	По волчьим законам (2 сезон)	https://kinokrad.co/317186-po-volchim-zakonam-2-sezon-2017.html	8	2017	США	драма, криминал	Кристофер Чулак, Ларри Тенг, Джон Уэллс	60
1956	Табу (1 сезон)	https://kinokrad.co/311862-tabu-1-sezon-2017.html	9	2017	Великобритания	драма	Андерс Энгстрем, Кристоффер Нюхольм	59
1957	Оранжевый — хит сезона (5 сезон)	https://kinokrad.co/316542-oranzhevyy-hit-sezona-5-sezon-2017.html	7	2017	США	драма, комедия, криминал	Эндрю МакКарти, Майкл Трим, Фил Абрахам	51
1958	Никто (1 сезон)	https://kinokrad.co/314666-nikto-1-sezon-2017.html	5	2017	США	комедия	Бен Фэлкоун, Майкл МакДональд	30
1959	Уэнтуорт (5 сезон)	https://kinokrad.co/316938-ujentuort-5-sezon-2017.html	7	2017	Австралия	драма, криминал	Кевин Карлин, Стив Джодрелл, Катрин Миллар	45
1960	Вторжение титанов (2 сезон)	https://kinokrad.co/317374-vtorzhenie-titanov-2-sezon-2017.html	8	2017	Япония	аниме, мультфильм, драма, фэнтези, боевик	Хироюки Танака, Синпэй Эдзаки, Киёси Фукумото	25
1961	Их перепутали в роддоме (5 сезон)	https://kinokrad.co/313670-ih-pereputali-v-roddome-5-sezon-2017.html	8	2017	США	драма, мелодрама, семейный	Стив Майнер, Рон Лагомарсино, Мелани Мейрон	43
1962	Гений (1 сезон)	https://kinokrad.co/315830-geniy-1-sezon-2017.html	8	2017	США	драма, биография, история	Джеймс Хоуз, Минки Спиро, Рон Ховард	43
1963	Вице-президент (6 сезон)	https://kinokrad.co/315702-vice-prezident-6-sezon-2017.html	5	2017	США	комедия	Бекки Мартин, Крис Эддисон, Армандо Ианнуччи	30
1964	Филфак (1 сезон)	https://kinokrad.co/316974-filfak-1-sezon-2017.html	6	2017	Россия	комедия	Фёдор Стуков	23
1965	Древние (4 сезон)	https://kinokrad.co/314842-drevnie-4-sezon-2017.html	8	2017	США	ужасы, фэнтези, драма, детектив	Мэттью Хатингс, Джеффри Дж. Хант, Крис Грисмер	43
1966	Адаптация (1 сезон)	https://kinokrad.co/314202-adaptaciya-1-sezon-2017.html	6	2017	Россия	комедия	Фёдор Стуков	24
1967	Алкион (1 сезон)	https://kinokrad.co/314190-alkion-1-sezon-2017.html	8	2017	Великобритания	драма	Роб Эванс, Джастин Харди, Фил Джон	60
1968	Колония (2 сезон)	https://kinokrad.co/313406-koloniya-2-sezon-2017.html	7	2017	США	фантастика	Хуан Хосе Кампанелла, Тим Соутэм, Нельсон МакКормик	42
1969	Черные паруса (4 сезон)	https://kinokrad.co/314174-chernye-parusa-4-sezon-2017.html	8	2017	ЮАР, США	драма, приключения	Стив Бойум, Алик Сахаров, Лукас Эттлин	56
1970	Хэп и Леонард (2 сезон)	https://kinokrad.co/315414-hjep-i-leonard-2-sezon-2017.html	7	2017	США	триллер, драма, криминал	Джим Микл, Ник Гомез, Морис Мэрэбл	60
1971	Любовь (2 сезон)	https://kinokrad.co/315394-lyubov-2-sezon-2017.html	8	2017	США	драма, мелодрама, комедия	Дин Холлэнд, Мэгги Кэри, Джон Слэттери	50
1972	Гримм (6 сезон)	https://kinokrad.co/304061-grimm-6-sezon-2017.html	9	2017	США	ужасы, фэнтези, драма, детектив	Норберто Барба, Терренс О’Хара, Эрик Ланёвилль	43
1973	Подземка (2 сезон)	https://kinokrad.co/315038-podzemka-2-sezon-2017.html	6	2017	США	драма, история	Энтони Хемингуэй, Тим Хантер, Ромео Тироне	43
1974	Куртизанки (1 сезон)	https://kinokrad.co/314650-kurtizanki-1-sezon-2017.html	8	2017	США, Великобритания	драма	Коки Гидройч, Чина Му-Ен, Джилл Робертсон	60
1975	Восьмое чувство (2 сезон)	https://kinokrad.co/311294-vosmoe-chuvstvo-2-sezon-2017.html	8	2017	США	фантастика, триллер, драма, детектив	Лана Вачовски, Лилли Вачовски, Джеймс МакТиг	60
1976	Последнее королевство (2 сезон)	https://kinokrad.co/315358-poslednee-korolevstvo-2-sezon-2017.html	8	2017	Великобритания	боевик, мелодрама, история	Питер Хор, Энтони Бирн, Бен Чанан	60
1977	Мотель Бейтсов (5 сезон)	https://kinokrad.co/315350-motel-beytsov-5-sezon-2017.html	9	2017	США	триллер, детектив, ужасы	Такер Гейтс, Эдвард Бьянчи, Нестор Карбонелл	43
1978	Бесстрашная (1 сезон)	https://kinokrad.co/318202-besstrashnaya-1-sezon-2017.html	8	2017	Великобритания	драма	Пит Трэвис	60
1979	Драконы: Всадники Олуха (4 сезон)	https://kinokrad.co/319122-drakony-vsadniki-oluha-4-sezon-2017.html	8	2017	США	мультфильм, фэнтези, комедия, приключения, семейный	Энтони Белл, Джон Санфорд, Луи дель Кармен	22
1980	Бойтесь ходячих мертвецов (3 сезон)	https://kinokrad.co/317154-boytes-hodyachih-mertvecov-3-sezon-2017.html	7	2017	США	ужасы, фантастика, триллер, драма	Адам Дэвидсон, Стефан Шварц, Эндрю Бернштейн	60
1981	Двойка (1 сезон)	https://kinokrad.co/320470-dvoyka-1-sezon-2017.html	7	2017	США	драма	Джеймс Франко, Мишель МакЛарен, Ута Бризвитц	60
1982	Очень странные дела (2 сезон)	https://kinokrad.co/322723-ochen-strannye-dela-2-sezon.html	9	2017	США	ужасы, фантастика, фэнтези, триллер, драма, детектив	Мэтт Даффер, Росс Даффер, Шон Леви	55
1983	Штамм (4 сезон)	https://kinokrad.co/318974-shtamm-4-sezon-2017.html	9	2017	США	ужасы, триллер, драма	Дж. Майлз Дэйл, Кевин Даулинг, Деран Сарафян	43
1984	Шарлатаны (1 сезон)	https://kinokrad.co/320854-sharlatany-1-sezon-2017.html	7	2017	Великобритания	комедия	Энди де Эммони	29
1985	Лопес (2 сезон)	https://kinokrad.co/318298-lopes-2-sezon-2017.html	6	2017	США	комедия	Трой Миллер	30
1986	Проповедник (2 сезон)	https://kinokrad.co/318018-propovednik-2-sezon-2017.html	8	2017	США	фэнтези, драма, детектив, приключения	Эван Голдберг, Сет Роген, Майкл Словис	60
1987	Охота на Унабомбера (1 сезон)	https://kinokrad.co/319450-ohota-na-unabombera-1-sezon-2017.html	8	2017	США	драма, криминал	Грег Яйтанс	43
1988	Защитники (1 сезон)	https://kinokrad.co/319986-zaschitniki-1-sezon-2017.html	8	2017	США	фантастика, боевик, криминал, приключения	С.Дж. Кларксон, Фил Абрахам, Фэррен Блэкберн	50
1989	Конь БоДжек (4 сезон)	https://kinokrad.co/321494-kon-bodzhek-4-sezon-2017.html	5	2017	США	мультфильм, драма, комедия	JC Gonzalez, Amy Winfrey, Джоэль Мосер	25
1990	Рик и Морти (3 сезон)	https://kinokrad.co/315362-rik-i-morti-3-sezons-2017.html	9	2017	США	мультфильм, комедия, фантастика	Пит Мишелс, Брайан Ньютон, Джон Райс	22
1991	Правосудие Чикаго (1 сезон)	https://kinokrad.co/321410-pravosudie-chikago-1-sezon-2017.html	6	2017	США	драма, криминал	Дональд Питри, Норберто Барба, Фред Бернер	42
1992	Все еще король (2 сезон)	https://kinokrad.co/318630-vse-esche-korol-2-sezon-2017.html	7	2017	США	комедия	Лев Л. Спиро, Potsy Ponciroli, Тамра Дэвис	22
1993	Сомнение (1 сезон)	https://kinokrad.co/305732-somnenie-1-sezon-2016.html	6	2017	США	драма	Джонатан Браун, Николь Рубио	45
1994	Сшиватели (3 сезон)	https://kinokrad.co/317166-sshivateli-3-sezon-2017.html	7	2017		фантастика, драма, криминал	Стив Майнер, Дженис Кук-Леонард, Роб Дж. Гринли	60
1995	Скандал (6 сезон)	https://kinokrad.co/313834-skandal-6-sezon-2016.html	8	2017	США	триллер, драма	Том Верика, Эллисон Лидди, Оливер Бокельберг	43
1996	Агент / Поворот (4 сезон)	https://kinokrad.co/317490-agent-povorot-4-sezon-2017.html	7	2017	США	драма, военный	Джереми Уэбб, Эгил Эгилссон, Эндрю МакКарти	60
1997	В темноте (1 сезон)	https://kinokrad.co/319018-v-temnote-1-sezon-2017.html	8	2017	Великобритания	драма, криминал	Жиль Банньер, Ульрик Имтиаз Рольфсен	60
1998	Цыганка (1 сезон)	https://kinokrad.co/317906-cyganka-1-sezon-2017.html	8	2017	США, Великобритания	триллер, драма	Коки Гидройч, Виктория Махони, Алик Сахаров	60
1999	Загрузка (1 сезон)	https://kinokrad.co/318230-zagruzka-1-sezon-2017.html	5	2017	Великобритания	драма, комедия	Йен Фитцгиббон, Эллиот Хегарти, Натали Бэйли	
2000	Время приключений (8 сезон)	https://kinokrad.co/292693-vremya-priklyucheniy-8-sezon-2017.html	8	2017	США	мультфильм, фэнтези, комедия, приключения, семейный	Ларри Лэйчлитер, Элизабет Ито, Андрес Салафф	22
2001	Окружение/Круг (1 сезон)	https://kinokrad.co/325892-okruzhenie-krug-1-sezon.html	6	2017	Турция	боевик, драма, криминал	Абдулла Огуз	95
2002	Стэн против сил зла (2 сезон)	https://kinokrad.co/322583-sten-protiv-sil-zla-2-sezon.html	7	2017	США	ужасы, фэнтези, комедия	Джек Бишоп, Джастин Ниджм, Роберт Коэн	30
2003	Все к лучшему / Перемены  (2 сезон)	https://kinokrad.co/321638-vse-k-luchshemu-peremeny-2-sezon-2017.html	6	2017	США	драма, комедия	Ниша Ганатра, Лэнс Бэнгс, Памела Адлон	30
2004	Стражи Галактики (2 сезон)	https://kinokrad.co/315378-strazhi-galaktiki-2-sezon-2017.html	7	2017	США	мультфильм, фантастика, боевик, приключения	Эрик Радомски, Лео Райли, Jeff Wamester	22
2006	Закон и порядок: Настоящее преступление (1 сезон)	https://kinokrad.co/322179-zakon-i-poryadok-nastoyaschee-prestuplenie-1-sezon.html	7	2017	США	триллер, драма, криминал, детектив	Фред Бернер, Холли Дэйл	45
2007	Ты — воплощение порока (4 сезон)	https://kinokrad.co/321090-ty-voploschenie-poroka-4-sezon-2017.html	6	2017	США	комедия, мелодрама	Венди Станцлер, Алекс Хардкасл, Стефен Фальк	24
2008	Дом Рэйвен (1 сезон)	https://kinokrad.co/319238-dom-reyven-1-sezon-2017.html	8	2017	США	семейный	Эрик Дин Ситон	22
2009	Плавучая больница (1 сезон)	https://kinokrad.co/322727-plavuchaya-bolnica-1-sezon.html	7	2017	Корея Южная	драма	Пак Чэ-бом	35
2010	Проект Минди (6 сезон)	https://kinokrad.co/322667-proekt-mindi-6-sezon.html	7	2017	США	комедия	Майкл Алан Спиллер, Майкл Уивер, Дэвид Роджерс	22
2011	Твин Пикс (3 сезон)	https://kinokrad.co/317686-tvin-piks-3-sezon-2017.html	7	2017	США	драма, криминал, детектив	Дэвид Линч	60
2012	Девочки (6 сезон)	https://kinokrad.co/313338-devochki-6-sezon-2017.html	6	2017	США	драма, комедия	Лина Данэм, Джесси Перец, Ричард Шепард	30
2013	Джуда (1 сезон)	https://kinokrad.co/321414-dzhuda-1-sezon-2017.html	7	2017	Израиль	ужасы, фантастика, фэнтези, боевик, драма, криминал	Meni Yaish	45
2014	Вы все меня бесите (1 сезон)	https://kinokrad.co/311774-vy-vse-menya-besite-1-sezon.html	7	2017	Россия	комедия	Олег Фомин, Михаил Савин	24
2015	Кевин подождет (2 сезон)	https://kinokrad.co/321722-kevin-podozhdet-2-sezon-2017.html	7	2017	США	комедия	Энди Фикмен	30
2016	Последний человек на Земле (4 сезон)	https://kinokrad.co/321602-posledniy-chelovek-na-zemle-4-sezon-2017.html	9	2017	США	комедия	Джон Соломон, Джейсон Уолинер, Пэймэн Бенц	22
2017	МакГайвер (2 сезон)	https://kinokrad.co/322575-makgayver-2-sezon.html	7	2017	США	боевик, драма, приключения	Стивен Херек, Тауния Маккирнан, Элизабет Аллен	43
2018	Супермаркет (3 сезон)	https://kinokrad.co/321646-supermarket-3-sezon.html	6	2017	США	комедия	Рубен Флейшер, Виктор Нелли мл., Майкл Патрик Джэнн	30
2019	Курс биологии (1 сезон)	https://kinokrad.co/325838-kurs-biologii-1-sezon.html	7	2017	США	комедия	Османи Родригез, Райан Кейс, Джули Энн Робинсон	30
2020	Инструкция по разводу для женщин (4 сезон)	https://kinokrad.co/326435-instrukciya-po-razvodu-dlya-zhenschin-4-sezon.html	7	2017	США	драма, комедия	Роберт Данкан МакНил, Брайан Дэннели, Адам Брукс	60
2021	Грешница (1 сезон)	https://kinokrad.co/318994-greshnica-1-sezon-2017.html	8	2017	США	триллер	Антонио Кампос, Брэд Андерсон, Джоди Ли Лайпс	60
2022	Спасение (1 сезон)	https://kinokrad.co/318138-spasenie-1-sezon-2017.html	7	2017	США	фантастика, триллер, драма	Хуан Карлос Фреснадильо, Ник Гомез, Грег Биман	45
2023	Лего Рыцари Нексо (4 сезон)	https://kinokrad.co/320874-lego-rycari-nekso-4-sezon-2017.html	8	2017	Дания	мультфильм, фантастика, боевик, комедия	Stu Gamble	20
2024	Лего Рыцари Нексо (3 сезон)	https://kinokrad.co/320870-lego-rycari-nekso-3-sezon-2017.html	7	2017	Дания	мультфильм, фантастика, боевик, комедия	Stu Gamble	20
2025	Два лжеца (1 сезон)	https://kinokrad.co/318166-dva-lzheca-1-sezon-2017.html	6	2017	Турция	комедия	Eda Teksöz	
2026	Миднайт, Техас (1 сезон)	https://kinokrad.co/319002-midnayt-tehas-1-sezon-2017.html	9	2017	США	фэнтези, драма, детектив, мистика	Дэвид Соломон, Майрзи Алмас, Грег Биман	60
2027	Жирный шрифт (1 сезон)	https://kinokrad.co/317766-zhirnyy-shrift-1-sezon-2017.html	8	2017	США	детектив, драма, комедия	Гэри Фледер	45
2028	Достать коротышку (1 сезон)	https://kinokrad.co/319126-dostat-korotyshku-1-sezon-2017.html	7	2017	США	комедия, криминал	Адам Аркин, Дэниэл Эттиэс, Эдвард Бьянчи	
2029	Вайс (5 сезон)	https://kinokrad.co/321886-vays-5-sezon.html	6	2017	США	документальный, новости	Шэйн Смит, Nikolia Apostolou	30
2030	19-2 / Девятнадцать Два (4 сезон)	https://kinokrad.co/319950-19-2-devyatnadcat-dva-4-sezon-2017.html	6	2017	Канада	драма, криминал	Луи Шокетт, Эрик Канюэль, Стефан Плещински	60
2031	Эль Чапо (1 сезон)	https://kinokrad.co/321914-el-chapo-1-sezon.html	8	2017	США	драма	Эрнесто Контрерас, Хосе Мануэль Кравиотто	120
2032	Время приключений (9 сезон)	https://kinokrad.co/321718-vremya-priklyucheniy-9-sezon-2017.html	7	2017	США	мультфильм, фантастика, фэнтези, комедия, приключения, семейный	Bong Hee Han, Ларри Лэйчлитер, Элизабет Ито	22
2033	Где-то между (1 сезон)	https://kinokrad.co/321690-gde-to-mezhdu-1-sezon-2017.html	7	2017	США	триллер, драма	Майкл Нанкин, Дуан Кларк, Дэвид Фрэйзи	41
2034	Эпизоды (5 сезон)	https://kinokrad.co/320990-epizody-5-sezon-2017.html	6	2017	США, Великобритания	комедия	Иэн Б. МакДональд, Джим Филд Смит, Джеймс Гриффитс	28
2035	Юная (4 сезон)	https://kinokrad.co/318514-yunaya-4-sezon-2017.html	8	2017	США	мелодрама, комедия	Питер Лоэр, Стивен К. Цутида, Тодд Бирман	22
2036	Последний корабль (4 сезон)	https://kinokrad.co/320018-posledniy-korabl-4-sezon-2017.html	7	2017	США	фантастика, боевик, триллер, драма, военный	Пол Холахан, Джек Бендер, Питер Уэллер	43
2037	В надежде на спасение (5 сезон)	https://kinokrad.co/321358-v-nadezhde-na-spasenie-5-sezon-2017.html	5	2017	Канада	фэнтези, драма	Дэвид Уэллингтон, Питер Веллингтон, Грегори Смит	44
2038	Темное дитя (5 сезон)	https://kinokrad.co/317674-temnoe-ditya-5-sezon-2017.html	8	2017	Канада	фантастика, боевик, драма	Джон Фоусет, Дэвид Фрэйзи, Кен Джиротти	43
2039	Шале (1 сезон)	https://kinokrad.co/327287-shale-1-sezon.html	7	2017	Франция	триллер, детектив	Камилль Бордес-Рене	52
2040	Частные сыщики (2 сезон)	https://kinokrad.co/317866-chastnye-syschiki-2-sezon-2017.html	6	2017	Канада	драма	Келли Макин, Чарльз Оффисер, Энн Вилер	43
2041	Права на престол Абдулхамид (2 сезон)	https://kinokrad.co/324101-prava-na-prestol-abdulhamid-2-sezon.html	6	2017	Турция	драма, история	Сердар Акар	150
2042	Миссии (1 сезон)	https://kinokrad.co/318158-missii-1-sezon-2017.html	6	2017	Франция	фантастика	Жюльен Лякомб	30
2043	Кардинал (1 сезон)	https://kinokrad.co/318026-kardinal-1-sezon-2017.html	8	2017	Канада	триллер, драма, криминал	Дэниэл Гру	42
2044	Безмолвный свидетель (20 сезон)	https://kinokrad.co/313202-bezmolvnyy-svidetel-20-sezon-2017.html	7	2017	Великобритания	драма, криминал, детектив	Тадеус О’Салливан, Дэвид Ричардс, Ричард Сайни	43
2045	По расчету (1 сезон)	https://kinokrad.co/316654-po-raschetu-1-sezon-2017.html	6	2017	США	триллер	Джонас Пейт, Элизабет Аллен, Кэрол Бенкер	60
2046	Бессильные (1 сезон)	https://kinokrad.co/312958-bessilnye-1-sezon-2017.html	7	2017	США	комедия	Марк Баклэнд, Джей Чандрашекхар, Дж. Кларк Мэтис	30
2047	Неоновый Джо – Охотник на оборотней (2 сезон)	https://kinokrad.co/318702-neonovyy-dzho-ohotnik-na-oborotney-2-sezon-2017.html	4	2017	США	ужасы, фантастика, комедия	Райан МакФол, Джон Ли	
2048	Друзья с колледжа (1 сезон)	https://kinokrad.co/318646-druzya-s-kolledzha-1-sezon-2017.html	7	2017	США	драма, комедия	Николас Столлер	30
2049	Королева юга (2 сезон)	https://kinokrad.co/317194-koroleva-yuga-2-sezon-2017.html	8	2017	США	боевик, триллер, драма, криминал	Дэвид Бойд, Мэттью Пенн, Скотт Питерс	42
2050	Киллджойс (3 сезон)	https://kinokrad.co/317782-killdzhoys-3-sezon-2017.html	8	2017	Канада	фантастика, боевик, триллер, приключения	Паоло Барзмен, Крис Грисмер, Питер Стеббингс	42
2051	Ночная смена (4 сезон)	https://kinokrad.co/317966-nochnaya-smena-4-sezon-2017.html	7	2017	США	драма, мелодрама	Эрик Ла Салль, Тимоти Басфилд, Дэвид Бойд	42
2052	Дарреллы (2 сезон)	https://kinokrad.co/318162-darrelly-2-sezon-2017.html	7	2017	Великобритания	драма, биография	Стив Бэррон, Роджер Голдби, Эдвард Холл	60
2053	Паула (1 сезон)	https://kinokrad.co/319998-paula-1-sezon-2017.html	5	2017	Великобритания	триллер	Алекс Холмс	60
2054	Без обязательств (3 сезон)	https://kinokrad.co/317386-bez-obyazatelstv-3-sezon-2017.html	6	2017	США	драма, комедия	Майкл Уивер, Джейсон Райтман, Фред Сэвэдж	25
2055	По волчьим законам (2 сезон)	https://kinokrad.co/317186-po-volchim-zakonam-2-sezon-2017.html	8	2017	США	драма, криминал	Кристофер Чулак, Ларри Тенг, Джон Уэллс	60
2056	Табу (1 сезон)	https://kinokrad.co/311862-tabu-1-sezon-2017.html	9	2017	Великобритания	драма	Андерс Энгстрем, Кристоффер Нюхольм	59
2057	Оранжевый — хит сезона (5 сезон)	https://kinokrad.co/316542-oranzhevyy-hit-sezona-5-sezon-2017.html	7	2017	США	драма, комедия, криминал	Эндрю МакКарти, Майкл Трим, Фил Абрахам	51
2058	Никто (1 сезон)	https://kinokrad.co/314666-nikto-1-sezon-2017.html	5	2017	США	комедия	Бен Фэлкоун, Майкл МакДональд	30
2059	Уэнтуорт (5 сезон)	https://kinokrad.co/316938-ujentuort-5-sezon-2017.html	7	2017	Австралия	драма, криминал	Кевин Карлин, Стив Джодрелл, Катрин Миллар	45
2060	Вторжение титанов (2 сезон)	https://kinokrad.co/317374-vtorzhenie-titanov-2-sezon-2017.html	8	2017	Япония	аниме, мультфильм, драма, фэнтези, боевик	Хироюки Танака, Синпэй Эдзаки, Киёси Фукумото	25
2061	Их перепутали в роддоме (5 сезон)	https://kinokrad.co/313670-ih-pereputali-v-roddome-5-sezon-2017.html	8	2017	США	драма, мелодрама, семейный	Стив Майнер, Рон Лагомарсино, Мелани Мейрон	43
2062	Гений (1 сезон)	https://kinokrad.co/315830-geniy-1-sezon-2017.html	8	2017	США	драма, биография, история	Джеймс Хоуз, Минки Спиро, Рон Ховард	43
2063	Вице-президент (6 сезон)	https://kinokrad.co/315702-vice-prezident-6-sezon-2017.html	5	2017	США	комедия	Бекки Мартин, Крис Эддисон, Армандо Ианнуччи	30
2064	Филфак (1 сезон)	https://kinokrad.co/316974-filfak-1-sezon-2017.html	6	2017	Россия	комедия	Фёдор Стуков	23
2065	Древние (4 сезон)	https://kinokrad.co/314842-drevnie-4-sezon-2017.html	8	2017	США	ужасы, фэнтези, драма, детектив	Мэттью Хатингс, Джеффри Дж. Хант, Крис Грисмер	43
2066	Адаптация (1 сезон)	https://kinokrad.co/314202-adaptaciya-1-sezon-2017.html	6	2017	Россия	комедия	Фёдор Стуков	24
2067	Алкион (1 сезон)	https://kinokrad.co/314190-alkion-1-sezon-2017.html	8	2017	Великобритания	драма	Роб Эванс, Джастин Харди, Фил Джон	60
2068	Колония (2 сезон)	https://kinokrad.co/313406-koloniya-2-sezon-2017.html	7	2017	США	фантастика	Хуан Хосе Кампанелла, Тим Соутэм, Нельсон МакКормик	42
2069	Черные паруса (4 сезон)	https://kinokrad.co/314174-chernye-parusa-4-sezon-2017.html	8	2017	ЮАР, США	драма, приключения	Стив Бойум, Алик Сахаров, Лукас Эттлин	56
2070	Хэп и Леонард (2 сезон)	https://kinokrad.co/315414-hjep-i-leonard-2-sezon-2017.html	7	2017	США	триллер, драма, криминал	Джим Микл, Ник Гомез, Морис Мэрэбл	60
2071	Любовь (2 сезон)	https://kinokrad.co/315394-lyubov-2-sezon-2017.html	8	2017	США	драма, мелодрама, комедия	Дин Холлэнд, Мэгги Кэри, Джон Слэттери	50
2072	Гримм (6 сезон)	https://kinokrad.co/304061-grimm-6-sezon-2017.html	9	2017	США	ужасы, фэнтези, драма, детектив	Норберто Барба, Терренс О’Хара, Эрик Ланёвилль	43
2073	Подземка (2 сезон)	https://kinokrad.co/315038-podzemka-2-sezon-2017.html	6	2017	США	драма, история	Энтони Хемингуэй, Тим Хантер, Ромео Тироне	43
2074	Куртизанки (1 сезон)	https://kinokrad.co/314650-kurtizanki-1-sezon-2017.html	8	2017	США, Великобритания	драма	Коки Гидройч, Чина Му-Ен, Джилл Робертсон	60
2075	Восьмое чувство (2 сезон)	https://kinokrad.co/311294-vosmoe-chuvstvo-2-sezon-2017.html	8	2017	США	фантастика, триллер, драма, детектив	Лана Вачовски, Лилли Вачовски, Джеймс МакТиг	60
2076	Последнее королевство (2 сезон)	https://kinokrad.co/315358-poslednee-korolevstvo-2-sezon-2017.html	8	2017	Великобритания	боевик, мелодрама, история	Питер Хор, Энтони Бирн, Бен Чанан	60
2077	Мотель Бейтсов (5 сезон)	https://kinokrad.co/315350-motel-beytsov-5-sezon-2017.html	9	2017	США	триллер, детектив, ужасы	Такер Гейтс, Эдвард Бьянчи, Нестор Карбонелл	43
2078	Бесстрашная (1 сезон)	https://kinokrad.co/318202-besstrashnaya-1-sezon-2017.html	8	2017	Великобритания	драма	Пит Трэвис	60
2079	Драконы: Всадники Олуха (4 сезон)	https://kinokrad.co/319122-drakony-vsadniki-oluha-4-sezon-2017.html	8	2017	США	мультфильм, фэнтези, комедия, приключения, семейный	Энтони Белл, Джон Санфорд, Луи дель Кармен	22
2080	Бойтесь ходячих мертвецов (3 сезон)	https://kinokrad.co/317154-boytes-hodyachih-mertvecov-3-sezon-2017.html	7	2017	США	ужасы, фантастика, триллер, драма	Адам Дэвидсон, Стефан Шварц, Эндрю Бернштейн	60
2081	Двойка (1 сезон)	https://kinokrad.co/320470-dvoyka-1-sezon-2017.html	7	2017	США	драма	Джеймс Франко, Мишель МакЛарен, Ута Бризвитц	60
2082	Очень странные дела (2 сезон)	https://kinokrad.co/322723-ochen-strannye-dela-2-sezon.html	9	2017	США	ужасы, фантастика, фэнтези, триллер, драма, детектив	Мэтт Даффер, Росс Даффер, Шон Леви	55
2083	Штамм (4 сезон)	https://kinokrad.co/318974-shtamm-4-sezon-2017.html	9	2017	США	ужасы, триллер, драма	Дж. Майлз Дэйл, Кевин Даулинг, Деран Сарафян	43
2084	Шарлатаны (1 сезон)	https://kinokrad.co/320854-sharlatany-1-sezon-2017.html	7	2017	Великобритания	комедия	Энди де Эммони	29
2085	Лопес (2 сезон)	https://kinokrad.co/318298-lopes-2-sezon-2017.html	6	2017	США	комедия	Трой Миллер	30
2086	Проповедник (2 сезон)	https://kinokrad.co/318018-propovednik-2-sezon-2017.html	8	2017	США	фэнтези, драма, детектив, приключения	Эван Голдберг, Сет Роген, Майкл Словис	60
2087	Охота на Унабомбера (1 сезон)	https://kinokrad.co/319450-ohota-na-unabombera-1-sezon-2017.html	8	2017	США	драма, криминал	Грег Яйтанс	43
2088	Защитники (1 сезон)	https://kinokrad.co/319986-zaschitniki-1-sezon-2017.html	8	2017	США	фантастика, боевик, криминал, приключения	С.Дж. Кларксон, Фил Абрахам, Фэррен Блэкберн	50
2089	Конь БоДжек (4 сезон)	https://kinokrad.co/321494-kon-bodzhek-4-sezon-2017.html	5	2017	США	мультфильм, драма, комедия	JC Gonzalez, Amy Winfrey, Джоэль Мосер	25
2090	Рик и Морти (3 сезон)	https://kinokrad.co/315362-rik-i-morti-3-sezons-2017.html	9	2017	США	мультфильм, комедия, фантастика	Пит Мишелс, Брайан Ньютон, Джон Райс	22
2091	Правосудие Чикаго (1 сезон)	https://kinokrad.co/321410-pravosudie-chikago-1-sezon-2017.html	6	2017	США	драма, криминал	Дональд Питри, Норберто Барба, Фред Бернер	42
2092	Все еще король (2 сезон)	https://kinokrad.co/318630-vse-esche-korol-2-sezon-2017.html	7	2017	США	комедия	Лев Л. Спиро, Potsy Ponciroli, Тамра Дэвис	22
2093	Сомнение (1 сезон)	https://kinokrad.co/305732-somnenie-1-sezon-2016.html	6	2017	США	драма	Джонатан Браун, Николь Рубио	45
2094	Сшиватели (3 сезон)	https://kinokrad.co/317166-sshivateli-3-sezon-2017.html	7	2017		фантастика, драма, криминал	Стив Майнер, Дженис Кук-Леонард, Роб Дж. Гринли	60
2095	Скандал (6 сезон)	https://kinokrad.co/313834-skandal-6-sezon-2016.html	8	2017	США	триллер, драма	Том Верика, Эллисон Лидди, Оливер Бокельберг	43
2096	Агент / Поворот (4 сезон)	https://kinokrad.co/317490-agent-povorot-4-sezon-2017.html	7	2017	США	драма, военный	Джереми Уэбб, Эгил Эгилссон, Эндрю МакКарти	60
2097	В темноте (1 сезон)	https://kinokrad.co/319018-v-temnote-1-sezon-2017.html	8	2017	Великобритания	драма, криминал	Жиль Банньер, Ульрик Имтиаз Рольфсен	60
2098	Цыганка (1 сезон)	https://kinokrad.co/317906-cyganka-1-sezon-2017.html	8	2017	США, Великобритания	триллер, драма	Коки Гидройч, Виктория Махони, Алик Сахаров	60
2099	Загрузка (1 сезон)	https://kinokrad.co/318230-zagruzka-1-sezon-2017.html	5	2017	Великобритания	драма, комедия	Йен Фитцгиббон, Эллиот Хегарти, Натали Бэйли	
2131	Живу с моделями (2 сезон)	https://kinokrad.co/314978-zhivu-s-modelyami-2-sezon-2017.html	8	2017	США	комедия	Бен Келлетт	21
2100	Время приключений (8 сезон)	https://kinokrad.co/292693-vremya-priklyucheniy-8-sezon-2017.html	8	2017	США	мультфильм, фэнтези, комедия, приключения, семейный	Ларри Лэйчлитер, Элизабет Ито, Андрес Салафф	22
2101	Ты, Я, Она (2 сезон)	https://kinokrad.co/318486-ty-ya-ona-2-sezon-2017.html	6	2017	США	драма, мелодрама, комедия	Ниша Ганатра, Сара Ст. Онге	28
2102	Подозрительный партнёр (1 сезон)	https://kinokrad.co/317890-podozritelnyy-partnjor-1-sezon-2017.html	9	2017	Корея Южная	драма, криминал	Пак Сон-хо	60
2103	Сражаюсь за свой путь (1 сезон)	https://kinokrad.co/317874-srazhayus-za-svoy-put-1-sezon-2017.html	7	2017	Корея Южная	комедия, мелодрама	Ли На-джон	60
2104	Тёмные дела / Тёмная материя (3 сезон)	https://kinokrad.co/317566-temnye-dela-temnaya-materiya-3-sezon-2017.html	8	2017	Канада	фантастика, триллер, драма	Рон Мерфи, Брюс МакДональд, Энди Микита	42
2105	Валькирия (1 сезон)	https://kinokrad.co/317742-valkiriya-1-sezon-2017.html	6	2017	Норвегия	драма	Эрик Рихтер Страндт	45
2106	Эпоха за эпохой (1 сезон)	https://kinokrad.co/317878-jepoha-za-jepohoy-1-sezon-2017.html	7	2017	США	фантастика, драма	Маркос Сига, Эллисон Андерс, Тим Эндрю	60
2107	Одиночка (1 сезон)	https://kinokrad.co/312082-odinochka-1-sezon-2017.html	5	2017	Россия, Украина	детектив	Виктор Конисевич	48
2108	Оставленные (3 сезон)	https://kinokrad.co/316534-ostavlennye-3-sezon-2016.html	7	2017	США	фэнтези, драма, детектив	Мими Ледер, Карл Франклин, Кит Гордон	60
2109	Истории о Боге с Морганом Фриманом (2 сезон)	https://kinokrad.co/316214-istorii-o-boge-s-morganom-frimanom-2-sezon-2017.html	5	2017	США	приключения, история		50
2110	Клан Кеннеди: После Камелота (1 сезон)	https://kinokrad.co/316202-klan-kennedi-posle-kamelota-2017.html	5	2017	США	драма, история	Джон Кассар, Кэти Холмс	45
2111	Измерение 404 (1 сезон)	https://kinokrad.co/316038-izmerenie-404-1-sezon-2017.html	6	2017	США	фантастика	Десмонд Долли, Дэйв Бойл, Стивен Сидарс	40
2112	Катастрофа (3 сезон)	https://kinokrad.co/315254-katastrofa-3-sezon-2017.html	7	2017	Великобритания	комедия	Бен Тэйлор	30
2113	Огнестрел (1 сезон)	https://kinokrad.co/314806-ognestrel-1-sezon-2017.html	6	2017	США	драма, криминал	Джина Принс-Байтвуд, Регги Рок Байтвуд, Джон Дэвид Коулз	43
2114	Сотня (4 сезон)	https://kinokrad.co/314058-sotnya-4-sezon-2017.html	9	2017	США	фантастика, драма, детектив	Дин Уайт, П.Дж. Пеше, Эд Фрэйман	60
2115	Молодой Морс / Стремление (4 сезон)	https://kinokrad.co/314042-molodoy-mors-stremlenie-4-sezon-2017.html	9	2017	Великобритания	драма, криминал, детектив	Колм МакКарти, Эдвард Базалгетт, Том Вон	90
2116	Смертельные поля (2 сезон)	https://kinokrad.co/314018-smertelnye-polya-2-sezon-2017.html	7	2017	США	криминал, документальный		42
2117	Слишком близко к дому (2 сезон)	https://kinokrad.co/313990-slishkom-blizko-k-domu-2-sezon-2017.html	9	2017	США	драма	Тайлер Перри	60
2118	Сонная Лощина (4 сезон)	https://kinokrad.co/312666-sonnaya-loschina-4-sezon-2017.html	7	2017	США	фэнтези, триллер, драма, детектив, приключения, мистика	Рассел Ли Файн, Пол А. Эдвардс, Дуглас Арниокоски	43
2119	Лучше звоните Солу (3 сезон)	https://kinokrad.co/316210-luchshe-zvonite-solu-3-sezon-2017.html	9	2017	США	драма, криминал	Винс Гиллиган, Томас Шнауз, Адам Бернштейн	46
2120	Кости (12 сезон)	https://kinokrad.co/312066-kosti-12-sezon-2017.html	7	2017	США	драма, мелодрама, комедия, криминал, детектив	Иэн Тойнтон, Дуайт Х. Литтл, Жанно Шварц	43
2121	Американские боги (1 сезон)	https://kinokrad.co/315582-amerikanskie-bogi-1-sezon-2017.html	8	2017	США	фэнтези, детектив	Дэвид Слэйд, Адам Кэйн, Винченцо Натали	60
2122	Баскетс / Клоун (2 сезон)	https://kinokrad.co/313674-baskets-kloun-2-sezon-2017.html	5	2017	США	драма, комедия	Джонатан Крисел	30
2123	Отличные новости (1 сезон)	https://kinokrad.co/317182-otlichnye-novosti-1-sezon-2017.html	5	2017	США	комедия	Бет МакКарти-Миллер, Виктор Нелли мл., Клер Скэнлон	22
2124	Мальчик в синей футболке (1 сезон)	https://kinokrad.co/317170-malchik-v-siney-futbolke-1-sezon-2017.html	8	2017	Великобритания	драма, криминал, детектив	Пол Уиттингтон	60
2125	С чистого листа (2 сезон)	https://kinokrad.co/317146-s-chistogo-lista-2-sezon-2017.html	3	2017	США	комедия	Уолли Пфистер, Том ДиЧилло, Джош Гордон	30
2126	Суперособняк (2 сезон)	https://kinokrad.co/315242-superosobnyak-2-sezon-2017.html	6	2017	США	мультфильм, комедия	Зеб Уэллс, Ник Симотас, Алекс Камер	30
2127	Мик (1 сезон)	https://kinokrad.co/311430-mik-1-sezon-2017.html	8	2017	США	комедия	Рэндолл Айнхорн, Тодд Бирман	30
2128	Волчья кровь / Из рода волков (5 сезон)	https://kinokrad.co/314362-volchya-krov-iz-roda-volkov-5-sezon-2017.html	7	2017	Великобритания	фэнтези, семейный	Jermain Julien, Мэттью Эванс, John Dower	22
2129	Американское преступление / Преступление по-американски (3 сезон)	https://kinokrad.co/314330-prestuplenie-po-amerikanski-3-sezon-2017.html	7	2017	США	драма	Джон Ридли, Николь Кэссел, Рэйчел Моррисон	43
2130	Счастливчик (2 сезон)	https://kinokrad.co/315082-schastlivchik-2-sezon-2017.html	8	2017		фантастика, боевик	Дэвид Кэффри, Энди Хэй, Энди де Эммони	60
2132	Озарк (1 сезон)	https://kinokrad.co/319006-ozark-1-sezon-2017.html	8	2017	США	триллер, драма, криминал	Джейсон Бейтман, Эндрю Бернштейн, Эллен Кёрас	60
2133	Гостевая книга (1 сезон)	https://kinokrad.co/320818-gostevaya-kniga-1-sezon-2017.html	7	2017	США	комедия	Майкл Фреско, Грегори Томас Гарсиа, Самир Реэм	
2134	Парни из Трейлерпарка (11 сезон)	https://kinokrad.co/321266-parni-iz-treylerparka-11-sezon-2017.html	6	2017	Канада	драма, комедия, криминал	Майк Клаттенбёрг, Рон Мерфи, Кори Боулз	30
2135	Физрук (4 сезон)	https://kinokrad.co/321686-fizruk-4-sezone-2017.html	7	2017	Россия	комедия	Сергей Сенцов, Фёдор Стуков, Дмитрий Губарев	25
2136	Она же Грэйс (1 сезон)	https://kinokrad.co/322619-ona-zhe-greys-1-sezon.html	8	2017	Канада	триллер, драма, криминал, биография	Мэри Хэррон	60
2137	Американский папаша (13 сезон)	https://kinokrad.co/314194-amerikanskiy-papasha-13-sezon-2017.html	7	2017	США	мультфильм, комедия	Рон Хьюгарт, Брент Вудс, Энтони Льои	22
2138	Вольтрон: Легендарный защитник (2 сезон)	https://kinokrad.co/320626-voltron-legendarnyy-zaschitnik-2-sezon-2017.html	7	2017	США	мультфильм, фантастика, приключения	Стив Ан, Юджин Ли, Крис Палмер	23
2139	Гринлиф (2 сезон)	https://kinokrad.co/314618-grinlif-2-sezon-2017.html	5	2017	США	драма	Клемент Вирго, Аллен Крокер, Грегг Араки	60
2140	Вольтрон: Легендарный защитник (1 сезон)	https://kinokrad.co/320622-voltron-legendarnyy-zaschitnik-1-sezon-2017.html	8	2017	США	мультфильм, фантастика, приключения	Стив Ан, Юджин Ли, Крис Палмер	23
2141	Всё включено (9 сезон)	https://kinokrad.co/315698-vsjo-vklyucheno-9-sezon-2017.html	6	2017	Великобритания	комедия	Сэнди Джонсон, Дэвид Сент, Робин Шеппард	30
2142	Рэй Донован (5 сезон)	https://kinokrad.co/319610-rey-donovan-5-sezon-2017.html	9	2017	США	драма, криминал	Майкл Аппендаль, Джон Дал, Такер Гейтс	43
2143	Белая ворона (2 сезон)	https://kinokrad.co/318990-belaya-vorona-2-sezon-2017.html	5	2017	США	комедия	Мелина Матсукас, Кевин Брэй, Дебби Аллен	30
2144	Красные дубы (3 сезон)	https://kinokrad.co/322503-krasnye-duby-3-sezon.html	9	2017	США	комедия	Хэл Хартли, Дэвид Гордон Грин, Эми Хекерлинг	25
2145	Бронзовый сад (1 сезон)	https://kinokrad.co/322307-bronzovyy-sad-1-sezon.html	7	2017	США, Аргентина	детектив	Пабло Фендрик, Эрнан А. Голфрид	60
2146	Я Фрэнки (1 сезон)	https://kinokrad.co/322067-ya-frenki-1-sezon.html	8	2017	США	драма	Шиван Дивайн, Стив Райт	22
2147	Разрывы (1 сезон)	https://kinokrad.co/320494-razryvy-1-sezon-2017.html	8	2017	США	драма, музыка	Нима Барнетт, Сет Манн, Рашаад Эрнесто Грин	42
2148	Чистильщик (6 сезон)	https://kinokrad.co/320466-chistilschik-6-sezon-2017.html	8	2017	Германия	комедия	Арни Фельдхузен	26
2149	Стартап (2 сезон)	https://kinokrad.co/322383-startap-2-sezon.html	8	2017	США	триллер, криминал	Бен Кетаи, Оливер Блэкберн, Луис Прието	44
2150	Нулевой канал (2 сезон)	https://kinokrad.co/311758-nulevoy-kanal-2-sezon-2017.html	7	2017	США	ужасы, триллер, драма, детектив, мистика	Крэйг Уилльям Макнейлл	44
2151	Жестяная звезда (1 сезон)	https://kinokrad.co/322327-zhestyanaya-zvezda-1-sezon.html	8	2017	Великобритания	драма, криминал, триллер	Жиль Банньер, Грант Харви, Марк Йобст	60
2152	Кровавая гонка (1 сезон)	https://kinokrad.co/317430-blood-drive-1-sezon-2017.html	7	2017	США	ужасы, фантастика, драма	Дэвид Стрейтон, Мира Менон, Лин Одинг	44
2153	Тени (1 сезон)	https://kinokrad.co/318938-teni-1-sezon-2017.html	7	2017	Румыния	драма	Игорь Кобылянский, Богдан Мирица	
2154	Версаль (2 сезон)	https://kinokrad.co/315638-versal-2-sezon-2017.html	8	2017	Франция, Канада	драма, мелодрама, биография, история	Томас Винсент, Дэниэл Роби, Кристоф Шреве	52
2155	Ниндзяго: Мастера Кружитцу (7 сезон)	https://kinokrad.co/318370-nindzyago-mastera-kruzhitcu-7-sezon-2017.html	8	2017	Дания, Сингапур, Канада, США	мультфильм, фантастика, фэнтези, боевик, комедия, приключения, семейный	Петер Хауснер, Майкл Хельмут Хансен, Трюлле Вильструп	30
2156	Мгла (1 сезон)	https://kinokrad.co/317458-mgla-1-sezon-2017.html	7	2017	США	ужасы, драма	Адам Бернштейн, Гай Ферленд, Ричард Лэкстон	45
2157	Мастер не на все руки / Не при делах (2 сезон)	https://kinokrad.co/317818-master-ne-na-vse-ruki-ne-pri-delah-2-sezon-2017.html	6	2017	США	комедия	Азиз Ансари, Эрик Верхейм, Джеймс Понсольдт	30
2158	Нераскрытые дела (1 сезон)	https://kinokrad.co/317822-neraskrytye-dela-1-sezon-2017.html	7	2017	США	документальный	Филип Лотт	43
2159	На ночь глядя (2 сезон)	https://kinokrad.co/317778-na-noch-glyadya-2-sezon-2017.html	7	2017	США	комедия	Джонни «Канзас» Милорд	21
2160	Белое золото (1 сезон)	https://kinokrad.co/317734-beloe-zoloto-1-sezon-2017.html	6	2017	Великобритания	комедия	Дэймон Бисли	30
2161	12 обезьян (3 сезон)	https://kinokrad.co/317174-12-obezyan-3-sezon-2017.html	8	2017	США	фантастика, триллер, драма, детектив, приключения	Дэвид Гроссман, Магнус Мартенс, Майкл Ваксман	42
2162	Сломленный (1 сезон)	https://kinokrad.co/317558-slomlennyy-1-sezon-2017.html	6	2017	Великобритания	драма	Эшли Пирс, Норин Кершоу	60
2163	Гражданский брак (1 сезон)	https://kinokrad.co/311042-grazhdanskiy-brak-1-sezon-2017.html	6	2017	Россия	комедия	Дина Штурманова	25
2164	Железный кулак (1 сезон)	https://kinokrad.co/315950-zheleznyy-kulak-1-sezon-2017.html	7	2017	США	фантастика, боевик, криминал, приключения	Джон Дал, Фэррен Блэкберн, Ута Бризвитц	55
2165	Дорогие белые (1 сезон)	https://kinokrad.co/315894-dorogie-belye-1-sezon-2017.html	3	2017	США	комедия	Тина Мэбри, Барри Дженкинс, Чарли МакДауэлл	30
2166	Герилья (1 сезон)	https://kinokrad.co/315838-gerilya-1-sezon-2017.html	7	2017	США, Великобритания	драма	Сэм Миллер, Джон Ридли	60
2167	Тренировочный день (1 сезон)	https://kinokrad.co/305684-trenirovochnyy-den-1-sezon.html	8	2017	США	криминал	Стив Эделсон, Мэтт Эрл Бисли, Джеффри Дж. Хант	45
2168	Арчер (8 сезон)	https://kinokrad.co/315418-archer-8-sezon-2017.html	6	2017	США	мультфильм, боевик, комедия	Брайан Фордни, Адам Рид	22
2169	В пустыне смерти (2 сезон)	https://kinokrad.co/315754-v-pustyne-smerti-2-sezon-2017.html	9	2017	США	боевик, драма, приключения	Пако Кабесас, Дэвид Добкин, Гай Ферленд	42
2170	Инструкция по разводу для женщин (3 сезон)	https://kinokrad.co/313538-instrukciya-po-razvodu-dlya-zhenschin-3-sezon-2017.html	5	2017	США	драма, комедия	Роберт Данкан МакНил, Брайан Дэннели, Адам Брукс	60
2171	Городские легенды (1 сезон)	https://kinokrad.co/317150-gorodskie-legendy-1-sezon-2017.html	5	2017	Великобритания	комедия, приключения, биография	Бен Палмер, Джеффри Сакс, Дэн Зефф	22
2172	Закон каменных джунглей (2 сезон)	https://kinokrad.co/313554-zakon-kamennyh-dzhungley-2-sezon-2017.html	8	2017	Россия	драма, криминал	Игорь Хомский, Иван Бурлаков, Александр Расторгуев	45
2173	Энджи Трайбека (3 сезон)	https://kinokrad.co/316978-jendzhi-traybeka-3-sezon-2017.html	6	2017	США	комедия, криминал, детектив	Стив Пинк, Айра Унгерилидер, Дэн Бирс	30
2174	Училки (2 сезон)	https://kinokrad.co/316970-uchilki-2-sezon-2017.html	7	2017	США	комедия	Джей Карас, Пэймэн Бенц, Майкл Блиден	20
2175	Улица милосердия (2 сезон)	https://kinokrad.co/313462-ulica-miloserdiya-2-sezon-2017.html	7	2017	США	драма, история	Роксанн Доусон, Джереми Уэбб, Стивен Крегг	53
2176	Вражда (1 сезон)	https://kinokrad.co/314590-vrazhda-1-sezon-2017.html	8	2017	США	драма, биография	Райан Мёрфи, Гвинет Хердер-Пэйтон, Лиза Джонсон	45
2177	Царство (4 сезон)	https://kinokrad.co/293872-carstvo-4-sezon-2017.html	9	2017	США	фэнтези, драма	Фред Гербер, Холли Дэйл, Норма Бэйли	43
2178	Упадок и разрушение (1 сезон)	https://kinokrad.co/316942-upadok-i-razrushenie-1-sezon-2017.html	6	2017	Великобритания	комедия	Гильем Моралес	58
2179	Телефонистки (1 сезон)	https://kinokrad.co/316934-telefonistki-1-sezon-2017.html	8	2017	Испания	драма	Карлос Седес	50
2180	Шесть (1 сезон)	https://kinokrad.co/313394-shest-1-sezon-2017.html	7	2017	США	боевик, драма, военный, история	Лесли Линка Глаттер, Микаэл Саломон, Кларк Джонсон	60
2181	Творя историю / Войти в историю (1 сезон)	https://kinokrad.co/316858-tvorya-istoriyu-voyti-v-istoriyu-1-sezon-2017.html	8	2017	США	комедия	Джаред Хесс, Эрик Аппель, Питер Атенсио	21
2182	Американцы (5 сезон)	https://kinokrad.co/314334-amerikancy-5-sezon-2017.html	8	2017	США	триллер, драма, криминал, детектив	Дэниэл Сакхайм, Крис Лонг, Томас Шламми	43
2183	Сын (1 сезон)	https://kinokrad.co/316854-syn-1-sezon-2017.html	8	2017	США	драма, вестерн	Кевин Даулинг, Джереми Уэбб, Джон Дэвид Коулз	44
2184	Пропавшая девятка (1 сезон)	https://kinokrad.co/313374-propavshaya-devyatka-1-sezon-2017.html	6	2017	Корея Южная	детектив, приключения	Чхве Бён-гиль	60
2185	Десница Божья (2 сезон)	https://kinokrad.co/314818-desnica-bozhya-2-sezon-2017.html	8	2017	США	драма, криминал	Питер Медак, Марк Форстер, Сара Пиа Андерсон	60
2186	В розыске (1 сезон)	https://kinokrad.co/312962-v-rozyske-1-seon-2017.html	8	2017	США	драма, криминал	Дуан Кларк, Джеффри Дж. Хант, Эми Канаан Манн	43
2187	Грейс и Фрэнки (3 сезон)	https://kinokrad.co/314814-greys-i-frjenki-3-sezon-2017.html	7	2017	США	комедия	Арлин Санфорд, Дин Паризо, Тим Киркби	30
2188	Пятеро вернулись домой (1 сезон)	https://kinokrad.co/314810-pyatero-vernulis-domoy-1-sezon-2017.html	5	2017	США	документальный	Лоран Бузеро	60
2189	Оазис (1 сезон)	https://kinokrad.co/314694-oazis-1-sezon-2017.html	8	2017	Великобритания	фантастика	Кевин Макдональд	60
2190	Пространство (2 сезон)	https://kinokrad.co/313414-prostranstvo-2-sezon-2017.html	9	2017	США	фантастика, триллер, драма, детектив	Джефф Вулнаф, Терри МакДонаф, Роберт Либерман	60
2191	Волшебники (2 сезон)	https://kinokrad.co/313206-volshebniki-2-sezon-2017.html	7	2017	США	ужасы, фэнтези, драма, детектив	Крис Фишер, Джошуа Батлер, Джеймс Л. Конуэй	60
2192	Шиттс Крик (3 сезон)	https://kinokrad.co/314178-shitts-krik-3-sezon-2017.html	6	2017	Канада, США	комедия	Пол Фокс, Джерри Чиккоритти, Т.У. Пикок	22
2193	Выкуп (1 сезон)	https://kinokrad.co/311298-vykup-1-sezon-2017.html	7	2017	Франция, Канада	боевик, драма, криминал	Франсуа Вель, Джеймс Дженн, Эрик Канюэль	44
2194	Земляне (2 сезон)	https://kinokrad.co/319330-zemlyane-2-sezon-2017.html	6	2017	США	фантастика, комедия, детектив	Грег Дэниелс, Йен Фитцгиббон, Родмен Флендер	30
2195	Футболисты (3 сезон)	https://kinokrad.co/319710-futbolisty-3-sezon-2017.html	6	2017	США	драма, комедия, спорт	Джулиан Фарино, Саймон Селлан Джоунс, Дэвид Катценберг	30
2196	Сумеречные охотники (2 сезон)	https://kinokrad.co/312694-sumerechnye-ohotniki-2-sezon-2017.html	8	2017	США	фэнтези, боевик, мелодрама	Дж. Майлз Дэйл, Энди Волк, Мэттью Хатингс	42
2197	Страйк (1 сезон)	https://kinokrad.co/321114-strayk-1-sezon-2017.html	8	2017	Великобритания	триллер, драма, криминал, детектив	Майкл Кейллор, Кирон Хоукс, Чарльз Стёрридж	60
2198	Мой маленький пони: Дружба – это чудо (7 сезон)	https://kinokrad.co/317262-moy-malenkiy-poni-druzhba-jeto-chudo-7-sezon-2017.html	7	2017	США, Канада	мультфильм, мюзикл, фэнтези, комедия, семейный	Джэйсон Тиссен, «Биг» Джим Миллер, Джеймс Вуттон	22
2199	Зверинец (3 сезон)	https://kinokrad.co/317770-zverinec-3-sezon-2017.html	7	2017	США	фантастика, триллер, драма	Майкл Кэтлман, Стив Эделсон, Дэвид Соломон	42
2200	Доктор Фостер (2 сезон)	https://kinokrad.co/321110-doktor-foster-2-sezon-2017.html	5	2017	Великобритания	драма	Том Вон, Брюс Гудисон, Джереми Лавринг	60
2201	Ты, Я, Она (2 сезон)	https://kinokrad.co/318486-ty-ya-ona-2-sezon-2017.html	6	2017	США	драма, мелодрама, комедия	Ниша Ганатра, Сара Ст. Онге	28
2202	Подозрительный партнёр (1 сезон)	https://kinokrad.co/317890-podozritelnyy-partnjor-1-sezon-2017.html	9	2017	Корея Южная	драма, криминал	Пак Сон-хо	60
2203	Сражаюсь за свой путь (1 сезон)	https://kinokrad.co/317874-srazhayus-za-svoy-put-1-sezon-2017.html	7	2017	Корея Южная	комедия, мелодрама	Ли На-джон	60
2204	Тёмные дела / Тёмная материя (3 сезон)	https://kinokrad.co/317566-temnye-dela-temnaya-materiya-3-sezon-2017.html	8	2017	Канада	фантастика, триллер, драма	Рон Мерфи, Брюс МакДональд, Энди Микита	42
2205	Валькирия (1 сезон)	https://kinokrad.co/317742-valkiriya-1-sezon-2017.html	6	2017	Норвегия	драма	Эрик Рихтер Страндт	45
2206	Эпоха за эпохой (1 сезон)	https://kinokrad.co/317878-jepoha-za-jepohoy-1-sezon-2017.html	7	2017	США	фантастика, драма	Маркос Сига, Эллисон Андерс, Тим Эндрю	60
2207	Одиночка (1 сезон)	https://kinokrad.co/312082-odinochka-1-sezon-2017.html	5	2017	Россия, Украина	детектив	Виктор Конисевич	48
2208	Оставленные (3 сезон)	https://kinokrad.co/316534-ostavlennye-3-sezon-2016.html	7	2017	США	фэнтези, драма, детектив	Мими Ледер, Карл Франклин, Кит Гордон	60
2209	Истории о Боге с Морганом Фриманом (2 сезон)	https://kinokrad.co/316214-istorii-o-boge-s-morganom-frimanom-2-sezon-2017.html	5	2017	США	приключения, история		50
2210	Клан Кеннеди: После Камелота (1 сезон)	https://kinokrad.co/316202-klan-kennedi-posle-kamelota-2017.html	5	2017	США	драма, история	Джон Кассар, Кэти Холмс	45
2211	Измерение 404 (1 сезон)	https://kinokrad.co/316038-izmerenie-404-1-sezon-2017.html	6	2017	США	фантастика	Десмонд Долли, Дэйв Бойл, Стивен Сидарс	40
2212	Катастрофа (3 сезон)	https://kinokrad.co/315254-katastrofa-3-sezon-2017.html	7	2017	Великобритания	комедия	Бен Тэйлор	30
2213	Огнестрел (1 сезон)	https://kinokrad.co/314806-ognestrel-1-sezon-2017.html	6	2017	США	драма, криминал	Джина Принс-Байтвуд, Регги Рок Байтвуд, Джон Дэвид Коулз	43
2214	Сотня (4 сезон)	https://kinokrad.co/314058-sotnya-4-sezon-2017.html	9	2017	США	фантастика, драма, детектив	Дин Уайт, П.Дж. Пеше, Эд Фрэйман	60
2215	Молодой Морс / Стремление (4 сезон)	https://kinokrad.co/314042-molodoy-mors-stremlenie-4-sezon-2017.html	9	2017	Великобритания	драма, криминал, детектив	Колм МакКарти, Эдвард Базалгетт, Том Вон	90
2216	Смертельные поля (2 сезон)	https://kinokrad.co/314018-smertelnye-polya-2-sezon-2017.html	7	2017	США	криминал, документальный		42
2217	Слишком близко к дому (2 сезон)	https://kinokrad.co/313990-slishkom-blizko-k-domu-2-sezon-2017.html	9	2017	США	драма	Тайлер Перри	60
2218	Сонная Лощина (4 сезон)	https://kinokrad.co/312666-sonnaya-loschina-4-sezon-2017.html	7	2017	США	фэнтези, триллер, драма, детектив, приключения, мистика	Рассел Ли Файн, Пол А. Эдвардс, Дуглас Арниокоски	43
2219	Лучше звоните Солу (3 сезон)	https://kinokrad.co/316210-luchshe-zvonite-solu-3-sezon-2017.html	9	2017	США	драма, криминал	Винс Гиллиган, Томас Шнауз, Адам Бернштейн	46
2220	Кости (12 сезон)	https://kinokrad.co/312066-kosti-12-sezon-2017.html	7	2017	США	драма, мелодрама, комедия, криминал, детектив	Иэн Тойнтон, Дуайт Х. Литтл, Жанно Шварц	43
2221	Американские боги (1 сезон)	https://kinokrad.co/315582-amerikanskie-bogi-1-sezon-2017.html	8	2017	США	фэнтези, детектив	Дэвид Слэйд, Адам Кэйн, Винченцо Натали	60
2222	Баскетс / Клоун (2 сезон)	https://kinokrad.co/313674-baskets-kloun-2-sezon-2017.html	5	2017	США	драма, комедия	Джонатан Крисел	30
2223	Отличные новости (1 сезон)	https://kinokrad.co/317182-otlichnye-novosti-1-sezon-2017.html	5	2017	США	комедия	Бет МакКарти-Миллер, Виктор Нелли мл., Клер Скэнлон	22
2380	Садовое кольцо (1 сезон)	https://kinokrad.co/327827-sadovoe-kolco-1-sezon.html	6	2016	Россия	детектив	Алексей Смирнов	45
2224	Мальчик в синей футболке (1 сезон)	https://kinokrad.co/317170-malchik-v-siney-futbolke-1-sezon-2017.html	8	2017	Великобритания	драма, криминал, детектив	Пол Уиттингтон	60
2225	С чистого листа (2 сезон)	https://kinokrad.co/317146-s-chistogo-lista-2-sezon-2017.html	3	2017	США	комедия	Уолли Пфистер, Том ДиЧилло, Джош Гордон	30
2226	Суперособняк (2 сезон)	https://kinokrad.co/315242-superosobnyak-2-sezon-2017.html	6	2017	США	мультфильм, комедия	Зеб Уэллс, Ник Симотас, Алекс Камер	30
2227	Мик (1 сезон)	https://kinokrad.co/311430-mik-1-sezon-2017.html	8	2017	США	комедия	Рэндолл Айнхорн, Тодд Бирман	30
2228	Волчья кровь / Из рода волков (5 сезон)	https://kinokrad.co/314362-volchya-krov-iz-roda-volkov-5-sezon-2017.html	7	2017	Великобритания	фэнтези, семейный	Jermain Julien, Мэттью Эванс, John Dower	22
2229	Американское преступление / Преступление по-американски (3 сезон)	https://kinokrad.co/314330-prestuplenie-po-amerikanski-3-sezon-2017.html	7	2017	США	драма	Джон Ридли, Николь Кэссел, Рэйчел Моррисон	43
2230	Счастливчик (2 сезон)	https://kinokrad.co/315082-schastlivchik-2-sezon-2017.html	8	2017		фантастика, боевик	Дэвид Кэффри, Энди Хэй, Энди де Эммони	60
2231	Живу с моделями (2 сезон)	https://kinokrad.co/314978-zhivu-s-modelyami-2-sezon-2017.html	8	2017	США	комедия	Бен Келлетт	21
2232	Озарк (1 сезон)	https://kinokrad.co/319006-ozark-1-sezon-2017.html	8	2017	США	триллер, драма, криминал	Джейсон Бейтман, Эндрю Бернштейн, Эллен Кёрас	60
2233	Гостевая книга (1 сезон)	https://kinokrad.co/320818-gostevaya-kniga-1-sezon-2017.html	7	2017	США	комедия	Майкл Фреско, Грегори Томас Гарсиа, Самир Реэм	
2234	Парни из Трейлерпарка (11 сезон)	https://kinokrad.co/321266-parni-iz-treylerparka-11-sezon-2017.html	6	2017	Канада	драма, комедия, криминал	Майк Клаттенбёрг, Рон Мерфи, Кори Боулз	30
2235	Физрук (4 сезон)	https://kinokrad.co/321686-fizruk-4-sezone-2017.html	7	2017	Россия	комедия	Сергей Сенцов, Фёдор Стуков, Дмитрий Губарев	25
2236	Она же Грэйс (1 сезон)	https://kinokrad.co/322619-ona-zhe-greys-1-sezon.html	8	2017	Канада	триллер, драма, криминал, биография	Мэри Хэррон	60
2237	Американский папаша (13 сезон)	https://kinokrad.co/314194-amerikanskiy-papasha-13-sezon-2017.html	7	2017	США	мультфильм, комедия	Рон Хьюгарт, Брент Вудс, Энтони Льои	22
2238	Вольтрон: Легендарный защитник (2 сезон)	https://kinokrad.co/320626-voltron-legendarnyy-zaschitnik-2-sezon-2017.html	7	2017	США	мультфильм, фантастика, приключения	Стив Ан, Юджин Ли, Крис Палмер	23
2239	Гринлиф (2 сезон)	https://kinokrad.co/314618-grinlif-2-sezon-2017.html	5	2017	США	драма	Клемент Вирго, Аллен Крокер, Грегг Араки	60
2240	Вольтрон: Легендарный защитник (1 сезон)	https://kinokrad.co/320622-voltron-legendarnyy-zaschitnik-1-sezon-2017.html	8	2017	США	мультфильм, фантастика, приключения	Стив Ан, Юджин Ли, Крис Палмер	23
2241	Всё включено (9 сезон)	https://kinokrad.co/315698-vsjo-vklyucheno-9-sezon-2017.html	6	2017	Великобритания	комедия	Сэнди Джонсон, Дэвид Сент, Робин Шеппард	30
2242	Рэй Донован (5 сезон)	https://kinokrad.co/319610-rey-donovan-5-sezon-2017.html	9	2017	США	драма, криминал	Майкл Аппендаль, Джон Дал, Такер Гейтс	43
2243	Белая ворона (2 сезон)	https://kinokrad.co/318990-belaya-vorona-2-sezon-2017.html	5	2017	США	комедия	Мелина Матсукас, Кевин Брэй, Дебби Аллен	30
2244	Красные дубы (3 сезон)	https://kinokrad.co/322503-krasnye-duby-3-sezon.html	9	2017	США	комедия	Хэл Хартли, Дэвид Гордон Грин, Эми Хекерлинг	25
2245	Бронзовый сад (1 сезон)	https://kinokrad.co/322307-bronzovyy-sad-1-sezon.html	7	2017	США, Аргентина	детектив	Пабло Фендрик, Эрнан А. Голфрид	60
2246	Я Фрэнки (1 сезон)	https://kinokrad.co/322067-ya-frenki-1-sezon.html	8	2017	США	драма	Шиван Дивайн, Стив Райт	22
2247	Разрывы (1 сезон)	https://kinokrad.co/320494-razryvy-1-sezon-2017.html	8	2017	США	драма, музыка	Нима Барнетт, Сет Манн, Рашаад Эрнесто Грин	42
2248	Чистильщик (6 сезон)	https://kinokrad.co/320466-chistilschik-6-sezon-2017.html	8	2017	Германия	комедия	Арни Фельдхузен	26
2249	Стартап (2 сезон)	https://kinokrad.co/322383-startap-2-sezon.html	8	2017	США	триллер, криминал	Бен Кетаи, Оливер Блэкберн, Луис Прието	44
2250	Нулевой канал (2 сезон)	https://kinokrad.co/311758-nulevoy-kanal-2-sezon-2017.html	7	2017	США	ужасы, триллер, драма, детектив, мистика	Крэйг Уилльям Макнейлл	44
2251	Жестяная звезда (1 сезон)	https://kinokrad.co/322327-zhestyanaya-zvezda-1-sezon.html	8	2017	Великобритания	драма, криминал, триллер	Жиль Банньер, Грант Харви, Марк Йобст	60
2252	Кровавая гонка (1 сезон)	https://kinokrad.co/317430-blood-drive-1-sezon-2017.html	7	2017	США	ужасы, фантастика, драма	Дэвид Стрейтон, Мира Менон, Лин Одинг	44
2253	Тени (1 сезон)	https://kinokrad.co/318938-teni-1-sezon-2017.html	7	2017	Румыния	драма	Игорь Кобылянский, Богдан Мирица	
2254	Версаль (2 сезон)	https://kinokrad.co/315638-versal-2-sezon-2017.html	8	2017	Франция, Канада	драма, мелодрама, биография, история	Томас Винсент, Дэниэл Роби, Кристоф Шреве	52
2286	В розыске (1 сезон)	https://kinokrad.co/312962-v-rozyske-1-seon-2017.html	8	2017	США	драма, криминал	Дуан Кларк, Джеффри Дж. Хант, Эми Канаан Манн	43
2255	Ниндзяго: Мастера Кружитцу (7 сезон)	https://kinokrad.co/318370-nindzyago-mastera-kruzhitcu-7-sezon-2017.html	8	2017	Дания, Сингапур, Канада, США	мультфильм, фантастика, фэнтези, боевик, комедия, приключения, семейный	Петер Хауснер, Майкл Хельмут Хансен, Трюлле Вильструп	30
2256	Мгла (1 сезон)	https://kinokrad.co/317458-mgla-1-sezon-2017.html	7	2017	США	ужасы, драма	Адам Бернштейн, Гай Ферленд, Ричард Лэкстон	45
2257	Мастер не на все руки / Не при делах (2 сезон)	https://kinokrad.co/317818-master-ne-na-vse-ruki-ne-pri-delah-2-sezon-2017.html	6	2017	США	комедия	Азиз Ансари, Эрик Верхейм, Джеймс Понсольдт	30
2258	Нераскрытые дела (1 сезон)	https://kinokrad.co/317822-neraskrytye-dela-1-sezon-2017.html	7	2017	США	документальный	Филип Лотт	43
2259	На ночь глядя (2 сезон)	https://kinokrad.co/317778-na-noch-glyadya-2-sezon-2017.html	7	2017	США	комедия	Джонни «Канзас» Милорд	21
2260	Белое золото (1 сезон)	https://kinokrad.co/317734-beloe-zoloto-1-sezon-2017.html	6	2017	Великобритания	комедия	Дэймон Бисли	30
2261	12 обезьян (3 сезон)	https://kinokrad.co/317174-12-obezyan-3-sezon-2017.html	8	2017	США	фантастика, триллер, драма, детектив, приключения	Дэвид Гроссман, Магнус Мартенс, Майкл Ваксман	42
2262	Сломленный (1 сезон)	https://kinokrad.co/317558-slomlennyy-1-sezon-2017.html	6	2017	Великобритания	драма	Эшли Пирс, Норин Кершоу	60
2263	Гражданский брак (1 сезон)	https://kinokrad.co/311042-grazhdanskiy-brak-1-sezon-2017.html	6	2017	Россия	комедия	Дина Штурманова	25
2264	Железный кулак (1 сезон)	https://kinokrad.co/315950-zheleznyy-kulak-1-sezon-2017.html	7	2017	США	фантастика, боевик, криминал, приключения	Джон Дал, Фэррен Блэкберн, Ута Бризвитц	55
2265	Дорогие белые (1 сезон)	https://kinokrad.co/315894-dorogie-belye-1-sezon-2017.html	3	2017	США	комедия	Тина Мэбри, Барри Дженкинс, Чарли МакДауэлл	30
2266	Герилья (1 сезон)	https://kinokrad.co/315838-gerilya-1-sezon-2017.html	7	2017	США, Великобритания	драма	Сэм Миллер, Джон Ридли	60
2267	Тренировочный день (1 сезон)	https://kinokrad.co/305684-trenirovochnyy-den-1-sezon.html	8	2017	США	криминал	Стив Эделсон, Мэтт Эрл Бисли, Джеффри Дж. Хант	45
2268	Арчер (8 сезон)	https://kinokrad.co/315418-archer-8-sezon-2017.html	6	2017	США	мультфильм, боевик, комедия	Брайан Фордни, Адам Рид	22
2269	В пустыне смерти (2 сезон)	https://kinokrad.co/315754-v-pustyne-smerti-2-sezon-2017.html	9	2017	США	боевик, драма, приключения	Пако Кабесас, Дэвид Добкин, Гай Ферленд	42
2270	Инструкция по разводу для женщин (3 сезон)	https://kinokrad.co/313538-instrukciya-po-razvodu-dlya-zhenschin-3-sezon-2017.html	5	2017	США	драма, комедия	Роберт Данкан МакНил, Брайан Дэннели, Адам Брукс	60
2271	Городские легенды (1 сезон)	https://kinokrad.co/317150-gorodskie-legendy-1-sezon-2017.html	5	2017	Великобритания	комедия, приключения, биография	Бен Палмер, Джеффри Сакс, Дэн Зефф	22
2272	Закон каменных джунглей (2 сезон)	https://kinokrad.co/313554-zakon-kamennyh-dzhungley-2-sezon-2017.html	8	2017	Россия	драма, криминал	Игорь Хомский, Иван Бурлаков, Александр Расторгуев	45
2273	Энджи Трайбека (3 сезон)	https://kinokrad.co/316978-jendzhi-traybeka-3-sezon-2017.html	6	2017	США	комедия, криминал, детектив	Стив Пинк, Айра Унгерилидер, Дэн Бирс	30
2274	Училки (2 сезон)	https://kinokrad.co/316970-uchilki-2-sezon-2017.html	7	2017	США	комедия	Джей Карас, Пэймэн Бенц, Майкл Блиден	20
2275	Улица милосердия (2 сезон)	https://kinokrad.co/313462-ulica-miloserdiya-2-sezon-2017.html	7	2017	США	драма, история	Роксанн Доусон, Джереми Уэбб, Стивен Крегг	53
2276	Вражда (1 сезон)	https://kinokrad.co/314590-vrazhda-1-sezon-2017.html	8	2017	США	драма, биография	Райан Мёрфи, Гвинет Хердер-Пэйтон, Лиза Джонсон	45
2277	Царство (4 сезон)	https://kinokrad.co/293872-carstvo-4-sezon-2017.html	9	2017	США	фэнтези, драма	Фред Гербер, Холли Дэйл, Норма Бэйли	43
2278	Упадок и разрушение (1 сезон)	https://kinokrad.co/316942-upadok-i-razrushenie-1-sezon-2017.html	6	2017	Великобритания	комедия	Гильем Моралес	58
2279	Телефонистки (1 сезон)	https://kinokrad.co/316934-telefonistki-1-sezon-2017.html	8	2017	Испания	драма	Карлос Седес	50
2280	Шесть (1 сезон)	https://kinokrad.co/313394-shest-1-sezon-2017.html	7	2017	США	боевик, драма, военный, история	Лесли Линка Глаттер, Микаэл Саломон, Кларк Джонсон	60
2281	Творя историю / Войти в историю (1 сезон)	https://kinokrad.co/316858-tvorya-istoriyu-voyti-v-istoriyu-1-sezon-2017.html	8	2017	США	комедия	Джаред Хесс, Эрик Аппель, Питер Атенсио	21
2282	Американцы (5 сезон)	https://kinokrad.co/314334-amerikancy-5-sezon-2017.html	8	2017	США	триллер, драма, криминал, детектив	Дэниэл Сакхайм, Крис Лонг, Томас Шламми	43
2283	Сын (1 сезон)	https://kinokrad.co/316854-syn-1-sezon-2017.html	8	2017	США	драма, вестерн	Кевин Даулинг, Джереми Уэбб, Джон Дэвид Коулз	44
2284	Пропавшая девятка (1 сезон)	https://kinokrad.co/313374-propavshaya-devyatka-1-sezon-2017.html	6	2017	Корея Южная	детектив, приключения	Чхве Бён-гиль	60
2285	Десница Божья (2 сезон)	https://kinokrad.co/314818-desnica-bozhya-2-sezon-2017.html	8	2017	США	драма, криминал	Питер Медак, Марк Форстер, Сара Пиа Андерсон	60
2287	Грейс и Фрэнки (3 сезон)	https://kinokrad.co/314814-greys-i-frjenki-3-sezon-2017.html	7	2017	США	комедия	Арлин Санфорд, Дин Паризо, Тим Киркби	30
2288	Пятеро вернулись домой (1 сезон)	https://kinokrad.co/314810-pyatero-vernulis-domoy-1-sezon-2017.html	5	2017	США	документальный	Лоран Бузеро	60
2289	Оазис (1 сезон)	https://kinokrad.co/314694-oazis-1-sezon-2017.html	8	2017	Великобритания	фантастика	Кевин Макдональд	60
2290	Пространство (2 сезон)	https://kinokrad.co/313414-prostranstvo-2-sezon-2017.html	9	2017	США	фантастика, триллер, драма, детектив	Джефф Вулнаф, Терри МакДонаф, Роберт Либерман	60
2291	Волшебники (2 сезон)	https://kinokrad.co/313206-volshebniki-2-sezon-2017.html	7	2017	США	ужасы, фэнтези, драма, детектив	Крис Фишер, Джошуа Батлер, Джеймс Л. Конуэй	60
2292	Шиттс Крик (3 сезон)	https://kinokrad.co/314178-shitts-krik-3-sezon-2017.html	6	2017	Канада, США	комедия	Пол Фокс, Джерри Чиккоритти, Т.У. Пикок	22
2293	Выкуп (1 сезон)	https://kinokrad.co/311298-vykup-1-sezon-2017.html	7	2017	Франция, Канада	боевик, драма, криминал	Франсуа Вель, Джеймс Дженн, Эрик Канюэль	44
2294	Земляне (2 сезон)	https://kinokrad.co/319330-zemlyane-2-sezon-2017.html	6	2017	США	фантастика, комедия, детектив	Грег Дэниелс, Йен Фитцгиббон, Родмен Флендер	30
2295	Футболисты (3 сезон)	https://kinokrad.co/319710-futbolisty-3-sezon-2017.html	6	2017	США	драма, комедия, спорт	Джулиан Фарино, Саймон Селлан Джоунс, Дэвид Катценберг	30
2296	Сумеречные охотники (2 сезон)	https://kinokrad.co/312694-sumerechnye-ohotniki-2-sezon-2017.html	8	2017	США	фэнтези, боевик, мелодрама	Дж. Майлз Дэйл, Энди Волк, Мэттью Хатингс	42
2297	Страйк (1 сезон)	https://kinokrad.co/321114-strayk-1-sezon-2017.html	8	2017	Великобритания	триллер, драма, криминал, детектив	Майкл Кейллор, Кирон Хоукс, Чарльз Стёрридж	60
2298	Мой маленький пони: Дружба – это чудо (7 сезон)	https://kinokrad.co/317262-moy-malenkiy-poni-druzhba-jeto-chudo-7-sezon-2017.html	7	2017	США, Канада	мультфильм, мюзикл, фэнтези, комедия, семейный	Джэйсон Тиссен, «Биг» Джим Миллер, Джеймс Вуттон	22
2299	Зверинец (3 сезон)	https://kinokrad.co/317770-zverinec-3-sezon-2017.html	7	2017	США	фантастика, триллер, драма	Майкл Кэтлман, Стив Эделсон, Дэвид Соломон	42
2300	Доктор Фостер (2 сезон)	https://kinokrad.co/321110-doktor-foster-2-sezon-2017.html	5	2017	Великобритания	драма	Том Вон, Брюс Гудисон, Джереми Лавринг	60
2301	Четыре сезона в Гаване (1 сезон)	https://kinokrad.co/322323-chetyre-sezona-v-gavane-1-sezon.html	6	2017	Испания, Куба	триллер, драма, криминал	Феликс Вискаррет	96
2302	Доктор, доктор (2 сезон)	https://kinokrad.co/320826-doktor-doktor-2-sezon-2017.html	7	2017	Австралия	драма	Питер Сэлмон, Джереми Симс, Крив Стендерс	50
2303	Большой рот (1 сезон)	https://kinokrad.co/322259-bolshoy-rot-1-sezon.html	7	2017	США	мультфильм, мелодрама, комедия	Джоэль Мосер, Брайан Френсис, Майк Мэйфилд	30
2304	Лжец (1 сезон)	https://kinokrad.co/322191-lzhec-1-sezon.html	8	2017	Великобритания	драма	Сэмюэл Донован, Джеймс Стронг	60
2305	Охотник за разумом (1 сезон)	https://kinokrad.co/322111-ohotnik-za-razumom-1-sezon.html	8	2017	США	триллер, драма, криминал	Дэвид Финчер, Эндрю Дуглас, Азиф Кападиа	60
2306	Остановись и гори (4 сезон)	https://kinokrad.co/320654-ostanovis-i-gori-4-sezon-2017.html	7	2017	США	драма	Хуан Хосе Кампанелла, Карин Кусама, Дэйзи фон Шерлер Майер	43
2307	Раскаяния выжившего (4 сезон)	https://kinokrad.co/320358-raskayaniya-vyzhivshego-4-sezon-2017.html	4	2017	США	драма	Виктор Левин, Питер Сигал, Кен Уиттингэм	30
2308	Комната 104 (1 сезон)	https://kinokrad.co/318998-komnata-104-1-sezon-2017.html	6	2017	США	драма, комедия	Меган Гриффитс, Сара Адина, Патрик Брайс	30
2309	Речные монстры (9 сезон)	https://kinokrad.co/317502-rechnye-monstry-9-sezon-2017.html	7	2017	США	документальный, детектив, приключения	Барни Ревилл, Доминик Уэстон, Charlie Bingham	45
2310	Уилл (1 сезон)	https://kinokrad.co/317894-uill-1-sezon-2017.html	8	2017	США	драма	Шекхар Капур, Эллиотт Лестер, Магнус Мартенс	
2311	Стрелок (2 сезон)	https://kinokrad.co/318934-strelok-2-sezon-2017.html	7	2017	США	боевик, драма	Саймон Селлан Джоунс, Кристоф Шреве, Адам Дэвидсон	60
2312	Снегопад (1 сезон)	https://kinokrad.co/318142-snegopad-1-sezon-2017.html	8	2017	США	драма, криминал	Адиль Эль Арби, Билал Фалла, Джон Синглтон	44
2313	Гвиана (1 сезон)	https://kinokrad.co/318146-gviana-1-sezon-2016.html	8	2017	Франция	боевик, драма, приключения	Ким Шапирон, Филипп Трибуа, Фабьен Нури	45
2314	Королевство (3 сезон)	https://kinokrad.co/317226-korolevstvo-3-sezon-2017.html	8	2017	США	драма	Майкл Моррис, Гэри Фледер, Адам Дэвидсон	43
2315	Умник / Умный человек (2 сезон)	https://kinokrad.co/318014-umnik-umnyy-chelovek-2-sezon-2017.html	5	2017	США, Австралия, Новая Зеландия	фантастика	Уэйн Блэр, Леа Пурселл	50
2316	Ривердэйл (1 сезон)	https://kinokrad.co/313382-riverdjeyl-1-sezon-2017.html	9	2017	США	драма, криминал, детектив	Ли Толанд Кригер, Стив Эделсон, Эллисон Андерс	45
2317	Ривьера (1 сезон)	https://kinokrad.co/318134-rivera-1-sezon-2017.html	8	2017	Великобритания	триллер	Ханс Херботс, Филипп Кадельбах, Дэймон Томас	45
2318	Под несчастливой звездой (1 сезон)	https://kinokrad.co/317886-pod-neschastlivoy-zvezdoy-1-sezon-2017.html	4	2017	США	драма	Джон Джонс, Том Верика, Майкл Оффер	43
2319	Полдарк (3 сезон)	https://kinokrad.co/317470-poldark-3-sezon-2017.html	8	2017	Великобритания	драма, мелодрама, история	Эдвард Базалгетт, Уильям МакГрегор, Чарльз Палмер	60
2320	Отмеченные (2 сезон)	https://kinokrad.co/318170-otmechennye-2-sezon-2017.html	8	2017	США	триллер	Ханна Макферсон	18
2321	Непокорные (1 сезон)	https://kinokrad.co/318194-nepokornye-1-sezon-2017.html	7	2017	США	документальный	Аллен Хьюз	60
2322	Бюро легенд (3 сезон)	https://kinokrad.co/318182-byuro-legend-3-sezon-2017.html	9	2017	Франция	драма	Элье Систерн, Матье Деми, Эрик Рошан	52
2323	Озеро (1 сезон)	https://kinokrad.co/317462-ozero-1-sezon-2017.html	8	2017	Великобритания	триллер, драма, криминал, детектив	Брайан Келли, Цилла Уэр	60
2324	Стыд (4 сезон)	https://kinokrad.co/317562-styd-4-sezon-2017.html	9	2017	Норвегия	драма, мелодрама	Юлие Андем	30
2325	Рассказ служанки (1 сезон)	https://kinokrad.co/317494-rasskaz-sluzhanki-1-sezon-2017.html	8	2017	США	фантастика, драма	Рид Морано, Майк Баркер, Кейт Дэннис	60
2326	Мыслить как преступник: За границей (2 сезон)	https://kinokrad.co/315354-myslit-kak-prestupnik-za-granicey-2-sezon-2017.html	8	2017	США	драма, криминал, детектив	Лаура Белси, Алек Смайт, Жанно Шварц	43
2327	Я – зомби (3 сезон)	https://kinokrad.co/316890-ya-zombi-3-sezon-2017.html	8	2017	США	ужасы, драма, комедия, криминал	Майкл Филдс, Майрзи Алмас, Джейсон Блум	42
2328	Лемони Сникет: 33 несчастья (1 сезон)	https://kinokrad.co/317454-lemoni-sniket-33-neschastya-1-sezon-2017.html	7	2017	США	драма, приключения, семейный	Барри Зонненфельд, Марк Палански, Бо Уэлш	50
2329	Джеймстаун (1 сезон)	https://kinokrad.co/317426-dzheymstaun-1-sezon-2017.html	8	2017	Великобритания	драма, история	Сэмюэл Донован, Пол Вильшурст, Джон Александр	
2330	Большой куш (1 сезон)	https://kinokrad.co/317394-bolshoy-kush-1-sezon-2017.html	9	2017	США, Великобритания	комедия, криминал	Лоуренс Гоф, Николас Рентон, Джеффри Сакс	60
2331	Блеск (1 сезон)	https://kinokrad.co/317390-blesk-1-sezon-2017.html	6	2017	США	драма, комедия, спорт	Кейт Дэннис, Тодд Фьельстед, Тристрам Шапиро	35
2332	До самой смерти (1 сезон)	https://kinokrad.co/317382-do-samoy-smerti-1-sezon-2017.html	8	2017	Турция	драма	Умур Турагай, Фериде Кайтан	120
2333	По-собачьи (1 сезон)	https://kinokrad.co/317190-po-sobachi-1-sezon-2017.html	8	2017	США	комедия	Майкл Киллен, Пол Мерфи	21
2334	Самурай Джек (5 сезон)	https://kinokrad.co/316806-samuray-dzhek-5-sezon-2017.html	7	2017	США	мультфильм, фантастика, фэнтези, боевик, триллер, приключения	Генндий Тартаковский, Рэнди Майерс, Роберт Альварез	22
2335	Рапунцель: Скоро счастлива навсегда (1 сезон)	https://kinokrad.co/315078-rapuncel-skoro-schastliva-navsegda-1-sezon-2017.html	7	2017	США	мультфильм, фэнтези, комедия, семейный	Том Колфилд, Chris Sonnenburg	21
2336	В Филадельфии всегда солнечно (12 сезон)	https://kinokrad.co/313270-v-filadelfii-vsegda-solnechno-12-sezon-2017.html	7	2017	США	комедия	Мэтт Шекман, Фред Сэвэдж, Дэниэл Эттиэс	22
2337	Мужчина ищет женщину (3 сезон)	https://kinokrad.co/312206-muzhchina-ischet-zhenschinu-3-sezon-2017.html	6	2017	США	фэнтези, мелодрама, комедия	Джонатан Крисел, Тим Киркби, Майкл Даус	21
2338	Папочка (6 сезон)	https://kinokrad.co/316666-papochka-6-sezon-2017.html	6	2017	США	драма, мелодрама, комедия, семейный	Майкл Лембек, Арлин Санфорд, Робби Кантримэн	22
2339	Побег (5 сезон)	https://kinokrad.co/316598-pobeg-5-sezon-2017.html	8	2017	США	боевик, триллер, драма, криминал, детектив	Бобби Рот, Кевин Хукс, Дуайт Х. Литтл	43
2340	По долгу службы (4 сезон)	https://kinokrad.co/316594-po-dolgu-sluzhby-4-sezon-2017.html	7	2017	Великобритания	триллер, драма, криминал	Дуглас Маккиннон, Дэвид Кэффри, Дэниэл Неттхейм	60
2341	Без обид (2 сезон)	https://kinokrad.co/313198-bez-obid-2-sezon-2017.html	8	2017	Великобритания	драма, комедия, криминал	Катрин Морсхэд, Гарри Брэдбир, Дэвид Керр	42
2342	Мэри убивает людей (1 сезон)	https://kinokrad.co/313014-mjeri-ubivaet-lyudey-1-sezon-2017.html	6	2017	Канада	драма	Холли Дэйл	44
2343	Начальница (1 сезон)	https://kinokrad.co/316522-nachalnica-1-sezon-2017.html	7	2017	США	комедия	Кристиан Диттер, Джеми Бэббит, Аманда Бротчи	26
2344	Убийство на пляже / Бродчерч (3 сезон)	https://kinokrad.co/314354-ubiystvo-na-plyazhe-brodcherch-3-sezon-2017.html	8	2017	Великобритания	драма, криминал, детектив	Джеймс Стронг, Эрос Лин, Пол Эндрю Уильямс	46
2345	Дядя (3 сезон)	https://kinokrad.co/312050-dyadya-3-sezon-2017.html	7	2017	Великобритания	комедия	Oliver Refson	30
2346	Изумрудный город (1 сезон)	https://kinokrad.co/311046-izumrudnyy-gorod-1-sezon-2017.html	9	2017	США	фэнтези	Тарсем Сингх	60
2347	Британские СС (1 сезон)	https://kinokrad.co/314550-britanskie-ss-1-sezon-2017.html	6	2017	Великобритания	боевик, триллер, драма	Филипп Кадельбах	60
2348	Бельвю (1 сезон)	https://kinokrad.co/314546-belvyu-1-sezon-2017.html	7	2017	Канада	триллер, драма, детектив	Эдриэнн Митчелл, Ким Нгуйен, Эйприл Маллен	45
2349	13 причин почему (1 сезон)	https://kinokrad.co/314542-13-prichin-pochemu-1-sezon-2017.html	9	2017	США	драма, детектив	Кайл Патрик Альварез, Грегг Араки, Карл Франклин	60
2350	Черный список: Искупление (1 сезон)	https://kinokrad.co/313390-chernyy-spisok-iskuplenie-1-sezon-2017.html	7	2017	США	боевик, драма, криминал	Эндрю МакКарти, Джон Терлески, Дональд И. Торин мл	43
2351	В объезд (2 сезон)	https://kinokrad.co/314366-v-obezd-2-sezon-2017.html	7	2017	29 мин	комедия	Бреннан Шрофф, Джефф Томсич, Дэйл Штерн	30
2352	Быть Мэри Джейн (4 сезон)	https://kinokrad.co/314358-byt-meri-dzheyn-4-sezon-2017.html	6	2017	США	триллер, драма, мелодрама	Салим Акил, Реджина Кинг, Нима Барнетт	60
2353	Легион (1 сезон)	https://kinokrad.co/314222-legion-1-sezon-2017.html	7	2017	США	фантастика, боевик, драма	Майкл Аппендаль, Дэнни Гордон, Ной Хоули	60
2354	Большая маленькая ложь (1 сезон)	https://kinokrad.co/314258-bolshaya-malenkaya-lozh-1-sezon-2017.html	9	2017	США	драма, криминал, детектив	Жан-Марк Валле	60
2355	Брокмайр (1 сезон)	https://kinokrad.co/315586-brokmayr-1-sezon-2017.html	6	2017	США	комедия	Тим Киркби	30
2356	Босх (3 сезон)	https://kinokrad.co/315594-bosh-3-sezon-2017.html	6	2017	США	драма, криминал	Алекс Закржевский, Эрнест Р. Дикерсон, Кевин Даулинг	51
2357	Улов / Ловушка (2 сезон)	https://kinokrad.co/315294-ulov-lovushka-2-sezon-2017.html	8	2017	США	триллер, драма, криминал	Джон Скотт, Янн Тернер, Кевин Даулинг	43
2358	Под прикрытием (5 сезон)	https://kinokrad.co/318418-pod-prikrytiem-5-sezon-2016.html	6	2016	Болгария	боевик, драма, криминал	Виктор Божинов, Мартин Макариев, Zoran Petrovski	60
2359	Молодёжка (4 сезон)	https://kinokrad.co/324605-molodezhka-4-sezon.html	7	2016	Россия	драма, спорт	Сергей Арланов, Андрей Головков	48
2360	Ходячие мертвецы (7 сезон)	https://kinokrad.co/305573-hodyachie-mertvecy-7.html	8	2016	США	ужасы, фантастика, триллер, драма	Грег Никотеро, Эрнест Р. Дикерсон, Гай Ферленд	43
2361	Нэшвилл (5 сезон)	https://kinokrad.co/310030-njeshvill-5-sezon-2016.html	5	2016	США	драма, мелодрама, музыка	Кэлли Кхури, Стивен Крегг, Майк Листо	43
2362	Беглые родственники (1 сезон)	https://kinokrad.co/293875-beglye-rodstvenniki-1-sezon-2016.html	6	2016	Россия	комедия	Константин Смирнов	24
2363	Эш против Зловещих мертвецов (2 сезон)	https://kinokrad.co/305588-jesh-protiv-zloveschih-mertvecov-2-sezon-2016.html	9	2016	США	ужасы, фэнтези, боевик, комедия	Рик Джейкобсон, Тони Тилс, Майкл Дж. Бассетт	30
2364	Викинги (4 сезон)	https://kinokrad.co/287203-vikingi-4-sezon-2016.html	9	2016	Ирландия, Канада	боевик, драма, военный, история	Кен Джиротти, Киаран Доннелли, Джефф Вулнаф	45
2365	Тик (1 сезон)	https://kinokrad.co/305708-tik.html	7	2016	США	боевик, комедия	Уолли Пфистер	30
2366	Завучи (1 сезон)	https://kinokrad.co/334270-zavuchi-1-sezon.html	7	2016	США	комедия	Джоди Хилл, Дэвид Гордон Грин, Дэнни МакБрайд	30
2367	Доктор Рихтер (1 сезон)	https://kinokrad.co/332033-doktor-rihter-1-sezon.html	4	2016	Россия	драма, детектив	Андрей Прошкин, Илья Казанков, Максим Демченко	51
2368	Консультант (1 сезон)	https://kinokrad.co/336208-konsultant-1-sezon.html	7	2016	Россия	детектив, драма	Алексей Рудаков, Дмитрий Коробкин	48
2369	Тихоокеанская жара (1 сезон)	https://kinokrad.co/320658-tihookeanskaya-zhara-1-sezon-2016.html	6	2016	Австралия	мультфильм		22
2370	Сумеречные охотники (3 сезон)	https://kinokrad.co/326717-sumerechnye-ohotniki-3-sezon.html	7	2016	США	фэнтези, боевик, мелодрама	Мэттью Хатингс, Дж. Майлз Дэйл, Джошуа Батлер	42
2371	Адам портит всё (2 сезон)	https://kinokrad.co/303602-adam-portit-vsjo-2-sezon-2016.html	7	2016	США	комедия	Tim Wilkerson, Пол Бриганти, Винсент Пеон	30
2372	Шелест (1 сезон)	https://kinokrad.co/329153-shelest-1-sezon.html	5	2016	Россия	боевик, детектив, криминал	Дмитрий Коробкин	46
2373	Путешественники (1 сезон)	https://kinokrad.co/323906-puteshestvenniki-1-sezon.html	8	2016	Канада, США	фантастика, триллер, драма, детектив	Энди Микита, Аманда Таппинг, Уильям Варинг	45
2374	Марсель (2 сезон)	https://kinokrad.co/325736-marsel-2-sezon.html	6	2016	Франция	драма	Флоран Эмилио Сири, Тома Жилу, Лайла Марракчи	41
2375	Звёздная принцесса и силы зла (2 сезон)	https://kinokrad.co/324548-zvezdnaya-princessa-i-sily-zla-2-sezon.html	7	2016	США	мультфильм, фантастика, фэнтези, комедия, приключения, семейный	Аарон Хэммерсли, Доминик Бисигнано, Пьеро Пилузо	23
2376	Последний магнат (1 сезон)	https://kinokrad.co/298306-posledniy-magnat-1-sezon-2016.html	6	2016	США	драма	Билли Рэй	60
2377	Таинственная страсть (1 сезон)	https://kinokrad.co/308522-tainstvennaya-strast-1-sezon-2016.html	6	2016	Россия	драма	Влад Фурман	50
2378	Империя (3 сезон)	https://kinokrad.co/323295-imperiya-3-sezon.html	7	2016	США	драма, музыка	Санаа Хамри, Крэйг Брюэр, Дэнни Стронг	42
2379	Жан-Клод Ван Джонсон (1 сезон)	https://kinokrad.co/304067-zhan-klod-van-dzhonson-1-sezon-2016.html	8	2016	США	комедия	Питер Атенсио	30
2381	Пять минут тишины (2 сезон)	https://kinokrad.co/327035-pyat-minut-tishiny-2-sezon.html	6	2016	Россия	приключения, детектив	Алексей Праздников	52
2382	Жуть (1 сезон)	https://kinokrad.co/323786-zhut-1-sezon.html	7	2016	США	ужасы	Майкл А. Алловиц, Тони Соломонс, Крис Грисмер	22
2383	Новый агент МакГайвер (3 сезон)	https://kinokrad.co/330854-novyy-agent-makgayver-3-sezon.html	5	2016	США	боевик, драма, приключения	Стивен Херек, Эгил Эгилссон, Бобби Рот	43
2384	Развод (1 сезон)	https://kinokrad.co/337222-razvod-1-sezon.html	5	2016	США	драма, комедия	Адам Бернштейн, Джесси Перец, Райан Кейс	30
2385	Дениз в моём сердце (1 сезон)	https://kinokrad.co/325412-deniz-v-moem-serdce-1-sezon.html	5	2016	Турция	драма	Aysun Akyüz	150
2386	Изгоняющий дьявола (1 сезон)	https://kinokrad.co/306929-izgonyayuschiy-dyavola-1-sezon.html	9	2016	США	ужасы, триллер, мистика	Джейсон Энслер, Майкл Нанкин, Билл Джонсон	45
2387	Голиаф (1 сезон)	https://kinokrad.co/327695-goliaf-1-sezon.html	8	2016	США	драма	Лоуренс Триллинг, Дэнни Гордон, Алик Сахаров	60
2388	Ольга (2 сезон)	https://kinokrad.co/331085-olga-2-sezon.html	6	2016	Россия	комедия	Алексей Нужный, Игорь Волошин, Антон Борматов	24
2389	Карточный домик (4 сезон)	https://kinokrad.co/287111-kartochnyy-domik-4-sezon-2016.html	9	2016	США	драма	Джеймс Фоули, Джон Дэвид Коулз, Карл Франклин	50
2390	Коронер (2 сезон)	https://kinokrad.co/316206-koroner-2-sezon-2016.html	5	2016	Великобритания	драма, криминал	Йен Барбер, Мэтт Картер, Ниал Фрайзер	45
2391	Чокнутая бывшая (2 сезон)	https://kinokrad.co/312858-choknutaya-byvshaya-2-sezon-2016.html	7	2016	США	мюзикл, комедия	Алекс Хардкасл, Стюарт МакДональд, Стивен К. Цутида	42
2392	Конмэн (2 сезон)	https://kinokrad.co/325016-konmen-2-sezon.html	6	2016	США	комедия	Алан Тьюдик, Энтони Леонарди III	12
2393	Связи (2 сезон)	https://kinokrad.co/337151-svyazi-2-sezon.html	5	2016	Болгария	драма, комедия	Виктор Божинов, Vassil Stefanov, Dimitar Dimitrov	
2394	Наёмник Куорри (1 сезон)	https://kinokrad.co/310278-naemnik-kuorri-1-sezon.html	7	2016	США	триллер, драма, криминал	Грег Яйтанс, Джон Хиллкоут	60
2395	Отвязный Дайс (1 сезон)	https://kinokrad.co/310282-otvyaznyy-days-1-sezon.html	6	2016	США	комедия	Скот Армстронг, Джей Карас	30
2396	Челночницы (1 сезон)	https://kinokrad.co/329237-chelnochnicy-1-sezon.html	5	2016	Россия	драма	Юлия Краснова, Сергей Краснов	50
2397	Банши (4 сезон)	https://kinokrad.co/290302-banshi-4-sezon-2016.html	9	2016	США	боевик, триллер, драма, криминал, детектив	Оле Кристиан Мадсен, Грег Яйтанс, Лони Перистер	43
2398	Девочки (5 сезон)	https://kinokrad.co/287239-devochki-5-sezon-2016.html	5	2016	США	драма, комедия	Лина Данэм, Джесси Перец, Ричард Шепард	30
2399	Изгой (1 сезон)	https://kinokrad.co/295087-izgoy-1-sezon-2016.html	7	2016	США	ужасы, драма, мистика	Ли Джаньяк, Лони Перистер, Джулиус Рамсей	60
2400	Каменное сердце (1 сезон)	https://kinokrad.co/308159-kamennoe-serdce-1-sezon-2016.html	5	2016	Россия	мелодрама, детектив	Александр Аравин	47
2401	Четыре сезона в Гаване (1 сезон)	https://kinokrad.co/322323-chetyre-sezona-v-gavane-1-sezon.html	6	2017	Испания, Куба	триллер, драма, криминал	Феликс Вискаррет	96
2402	Доктор, доктор (2 сезон)	https://kinokrad.co/320826-doktor-doktor-2-sezon-2017.html	7	2017	Австралия	драма	Питер Сэлмон, Джереми Симс, Крив Стендерс	50
2403	Большой рот (1 сезон)	https://kinokrad.co/322259-bolshoy-rot-1-sezon.html	7	2017	США	мультфильм, мелодрама, комедия	Джоэль Мосер, Брайан Френсис, Майк Мэйфилд	30
2404	Лжец (1 сезон)	https://kinokrad.co/322191-lzhec-1-sezon.html	8	2017	Великобритания	драма	Сэмюэл Донован, Джеймс Стронг	60
2405	Охотник за разумом (1 сезон)	https://kinokrad.co/322111-ohotnik-za-razumom-1-sezon.html	8	2017	США	триллер, драма, криминал	Дэвид Финчер, Эндрю Дуглас, Азиф Кападиа	60
2406	Остановись и гори (4 сезон)	https://kinokrad.co/320654-ostanovis-i-gori-4-sezon-2017.html	7	2017	США	драма	Хуан Хосе Кампанелла, Карин Кусама, Дэйзи фон Шерлер Майер	43
2407	Раскаяния выжившего (4 сезон)	https://kinokrad.co/320358-raskayaniya-vyzhivshego-4-sezon-2017.html	4	2017	США	драма	Виктор Левин, Питер Сигал, Кен Уиттингэм	30
2408	Комната 104 (1 сезон)	https://kinokrad.co/318998-komnata-104-1-sezon-2017.html	6	2017	США	драма, комедия	Меган Гриффитс, Сара Адина, Патрик Брайс	30
2409	Речные монстры (9 сезон)	https://kinokrad.co/317502-rechnye-monstry-9-sezon-2017.html	7	2017	США	документальный, детектив, приключения	Барни Ревилл, Доминик Уэстон, Charlie Bingham	45
2410	Уилл (1 сезон)	https://kinokrad.co/317894-uill-1-sezon-2017.html	8	2017	США	драма	Шекхар Капур, Эллиотт Лестер, Магнус Мартенс	
2411	Стрелок (2 сезон)	https://kinokrad.co/318934-strelok-2-sezon-2017.html	7	2017	США	боевик, драма	Саймон Селлан Джоунс, Кристоф Шреве, Адам Дэвидсон	60
2412	Снегопад (1 сезон)	https://kinokrad.co/318142-snegopad-1-sezon-2017.html	8	2017	США	драма, криминал	Адиль Эль Арби, Билал Фалла, Джон Синглтон	44
2413	Гвиана (1 сезон)	https://kinokrad.co/318146-gviana-1-sezon-2016.html	8	2017	Франция	боевик, драма, приключения	Ким Шапирон, Филипп Трибуа, Фабьен Нури	45
2414	Королевство (3 сезон)	https://kinokrad.co/317226-korolevstvo-3-sezon-2017.html	8	2017	США	драма	Майкл Моррис, Гэри Фледер, Адам Дэвидсон	43
2415	Умник / Умный человек (2 сезон)	https://kinokrad.co/318014-umnik-umnyy-chelovek-2-sezon-2017.html	5	2017	США, Австралия, Новая Зеландия	фантастика	Уэйн Блэр, Леа Пурселл	50
2416	Ривердэйл (1 сезон)	https://kinokrad.co/313382-riverdjeyl-1-sezon-2017.html	9	2017	США	драма, криминал, детектив	Ли Толанд Кригер, Стив Эделсон, Эллисон Андерс	45
2417	Ривьера (1 сезон)	https://kinokrad.co/318134-rivera-1-sezon-2017.html	8	2017	Великобритания	триллер	Ханс Херботс, Филипп Кадельбах, Дэймон Томас	45
2418	Под несчастливой звездой (1 сезон)	https://kinokrad.co/317886-pod-neschastlivoy-zvezdoy-1-sezon-2017.html	4	2017	США	драма	Джон Джонс, Том Верика, Майкл Оффер	43
2419	Полдарк (3 сезон)	https://kinokrad.co/317470-poldark-3-sezon-2017.html	8	2017	Великобритания	драма, мелодрама, история	Эдвард Базалгетт, Уильям МакГрегор, Чарльз Палмер	60
2420	Отмеченные (2 сезон)	https://kinokrad.co/318170-otmechennye-2-sezon-2017.html	8	2017	США	триллер	Ханна Макферсон	18
2421	Непокорные (1 сезон)	https://kinokrad.co/318194-nepokornye-1-sezon-2017.html	7	2017	США	документальный	Аллен Хьюз	60
2422	Бюро легенд (3 сезон)	https://kinokrad.co/318182-byuro-legend-3-sezon-2017.html	9	2017	Франция	драма	Элье Систерн, Матье Деми, Эрик Рошан	52
2423	Озеро (1 сезон)	https://kinokrad.co/317462-ozero-1-sezon-2017.html	8	2017	Великобритания	триллер, драма, криминал, детектив	Брайан Келли, Цилла Уэр	60
2424	Стыд (4 сезон)	https://kinokrad.co/317562-styd-4-sezon-2017.html	9	2017	Норвегия	драма, мелодрама	Юлие Андем	30
2425	Рассказ служанки (1 сезон)	https://kinokrad.co/317494-rasskaz-sluzhanki-1-sezon-2017.html	8	2017	США	фантастика, драма	Рид Морано, Майк Баркер, Кейт Дэннис	60
2426	Мыслить как преступник: За границей (2 сезон)	https://kinokrad.co/315354-myslit-kak-prestupnik-za-granicey-2-sezon-2017.html	8	2017	США	драма, криминал, детектив	Лаура Белси, Алек Смайт, Жанно Шварц	43
2427	Я – зомби (3 сезон)	https://kinokrad.co/316890-ya-zombi-3-sezon-2017.html	8	2017	США	ужасы, драма, комедия, криминал	Майкл Филдс, Майрзи Алмас, Джейсон Блум	42
2428	Лемони Сникет: 33 несчастья (1 сезон)	https://kinokrad.co/317454-lemoni-sniket-33-neschastya-1-sezon-2017.html	7	2017	США	драма, приключения, семейный	Барри Зонненфельд, Марк Палански, Бо Уэлш	50
2429	Джеймстаун (1 сезон)	https://kinokrad.co/317426-dzheymstaun-1-sezon-2017.html	8	2017	Великобритания	драма, история	Сэмюэл Донован, Пол Вильшурст, Джон Александр	
2430	Большой куш (1 сезон)	https://kinokrad.co/317394-bolshoy-kush-1-sezon-2017.html	9	2017	США, Великобритания	комедия, криминал	Лоуренс Гоф, Николас Рентон, Джеффри Сакс	60
2431	Блеск (1 сезон)	https://kinokrad.co/317390-blesk-1-sezon-2017.html	6	2017	США	драма, комедия, спорт	Кейт Дэннис, Тодд Фьельстед, Тристрам Шапиро	35
2432	До самой смерти (1 сезон)	https://kinokrad.co/317382-do-samoy-smerti-1-sezon-2017.html	8	2017	Турция	драма	Умур Турагай, Фериде Кайтан	120
2433	По-собачьи (1 сезон)	https://kinokrad.co/317190-po-sobachi-1-sezon-2017.html	8	2017	США	комедия	Майкл Киллен, Пол Мерфи	21
2434	Самурай Джек (5 сезон)	https://kinokrad.co/316806-samuray-dzhek-5-sezon-2017.html	7	2017	США	мультфильм, фантастика, фэнтези, боевик, триллер, приключения	Генндий Тартаковский, Рэнди Майерс, Роберт Альварез	22
2435	Рапунцель: Скоро счастлива навсегда (1 сезон)	https://kinokrad.co/315078-rapuncel-skoro-schastliva-navsegda-1-sezon-2017.html	7	2017	США	мультфильм, фэнтези, комедия, семейный	Том Колфилд, Chris Sonnenburg	21
2436	В Филадельфии всегда солнечно (12 сезон)	https://kinokrad.co/313270-v-filadelfii-vsegda-solnechno-12-sezon-2017.html	7	2017	США	комедия	Мэтт Шекман, Фред Сэвэдж, Дэниэл Эттиэс	22
2437	Мужчина ищет женщину (3 сезон)	https://kinokrad.co/312206-muzhchina-ischet-zhenschinu-3-sezon-2017.html	6	2017	США	фэнтези, мелодрама, комедия	Джонатан Крисел, Тим Киркби, Майкл Даус	21
2438	Папочка (6 сезон)	https://kinokrad.co/316666-papochka-6-sezon-2017.html	6	2017	США	драма, мелодрама, комедия, семейный	Майкл Лембек, Арлин Санфорд, Робби Кантримэн	22
2439	Побег (5 сезон)	https://kinokrad.co/316598-pobeg-5-sezon-2017.html	8	2017	США	боевик, триллер, драма, криминал, детектив	Бобби Рот, Кевин Хукс, Дуайт Х. Литтл	43
2440	По долгу службы (4 сезон)	https://kinokrad.co/316594-po-dolgu-sluzhby-4-sezon-2017.html	7	2017	Великобритания	триллер, драма, криминал	Дуглас Маккиннон, Дэвид Кэффри, Дэниэл Неттхейм	60
2441	Без обид (2 сезон)	https://kinokrad.co/313198-bez-obid-2-sezon-2017.html	8	2017	Великобритания	драма, комедия, криминал	Катрин Морсхэд, Гарри Брэдбир, Дэвид Керр	42
2442	Мэри убивает людей (1 сезон)	https://kinokrad.co/313014-mjeri-ubivaet-lyudey-1-sezon-2017.html	6	2017	Канада	драма	Холли Дэйл	44
2443	Начальница (1 сезон)	https://kinokrad.co/316522-nachalnica-1-sezon-2017.html	7	2017	США	комедия	Кристиан Диттер, Джеми Бэббит, Аманда Бротчи	26
4581	Чёрный Иисус (1 сезон)	https://kinokrad.co/285019-chjornyy-iisus-1-sezon-2014.html	5	2014	США	комедия	Майк Клаттенбёрг	20
2444	Убийство на пляже / Бродчерч (3 сезон)	https://kinokrad.co/314354-ubiystvo-na-plyazhe-brodcherch-3-sezon-2017.html	8	2017	Великобритания	драма, криминал, детектив	Джеймс Стронг, Эрос Лин, Пол Эндрю Уильямс	46
2445	Дядя (3 сезон)	https://kinokrad.co/312050-dyadya-3-sezon-2017.html	7	2017	Великобритания	комедия	Oliver Refson	30
2446	Изумрудный город (1 сезон)	https://kinokrad.co/311046-izumrudnyy-gorod-1-sezon-2017.html	9	2017	США	фэнтези	Тарсем Сингх	60
2447	Британские СС (1 сезон)	https://kinokrad.co/314550-britanskie-ss-1-sezon-2017.html	6	2017	Великобритания	боевик, триллер, драма	Филипп Кадельбах	60
2448	Бельвю (1 сезон)	https://kinokrad.co/314546-belvyu-1-sezon-2017.html	7	2017	Канада	триллер, драма, детектив	Эдриэнн Митчелл, Ким Нгуйен, Эйприл Маллен	45
2449	13 причин почему (1 сезон)	https://kinokrad.co/314542-13-prichin-pochemu-1-sezon-2017.html	9	2017	США	драма, детектив	Кайл Патрик Альварез, Грегг Араки, Карл Франклин	60
2450	Черный список: Искупление (1 сезон)	https://kinokrad.co/313390-chernyy-spisok-iskuplenie-1-sezon-2017.html	7	2017	США	боевик, драма, криминал	Эндрю МакКарти, Джон Терлески, Дональд И. Торин мл	43
2451	В объезд (2 сезон)	https://kinokrad.co/314366-v-obezd-2-sezon-2017.html	7	2017	29 мин	комедия	Бреннан Шрофф, Джефф Томсич, Дэйл Штерн	30
2452	Быть Мэри Джейн (4 сезон)	https://kinokrad.co/314358-byt-meri-dzheyn-4-sezon-2017.html	6	2017	США	триллер, драма, мелодрама	Салим Акил, Реджина Кинг, Нима Барнетт	60
2453	Легион (1 сезон)	https://kinokrad.co/314222-legion-1-sezon-2017.html	7	2017	США	фантастика, боевик, драма	Майкл Аппендаль, Дэнни Гордон, Ной Хоули	60
2454	Большая маленькая ложь (1 сезон)	https://kinokrad.co/314258-bolshaya-malenkaya-lozh-1-sezon-2017.html	9	2017	США	драма, криминал, детектив	Жан-Марк Валле	60
2455	Брокмайр (1 сезон)	https://kinokrad.co/315586-brokmayr-1-sezon-2017.html	6	2017	США	комедия	Тим Киркби	30
2456	Босх (3 сезон)	https://kinokrad.co/315594-bosh-3-sezon-2017.html	6	2017	США	драма, криминал	Алекс Закржевский, Эрнест Р. Дикерсон, Кевин Даулинг	51
2457	Улов / Ловушка (2 сезон)	https://kinokrad.co/315294-ulov-lovushka-2-sezon-2017.html	8	2017	США	триллер, драма, криминал	Джон Скотт, Янн Тернер, Кевин Даулинг	43
2458	Под прикрытием (5 сезон)	https://kinokrad.co/318418-pod-prikrytiem-5-sezon-2016.html	6	2016	Болгария	боевик, драма, криминал	Виктор Божинов, Мартин Макариев, Zoran Petrovski	60
2459	Молодёжка (4 сезон)	https://kinokrad.co/324605-molodezhka-4-sezon.html	7	2016	Россия	драма, спорт	Сергей Арланов, Андрей Головков	48
2460	Ходячие мертвецы (7 сезон)	https://kinokrad.co/305573-hodyachie-mertvecy-7.html	8	2016	США	ужасы, фантастика, триллер, драма	Грег Никотеро, Эрнест Р. Дикерсон, Гай Ферленд	43
2461	Нэшвилл (5 сезон)	https://kinokrad.co/310030-njeshvill-5-sezon-2016.html	5	2016	США	драма, мелодрама, музыка	Кэлли Кхури, Стивен Крегг, Майк Листо	43
2462	Беглые родственники (1 сезон)	https://kinokrad.co/293875-beglye-rodstvenniki-1-sezon-2016.html	6	2016	Россия	комедия	Константин Смирнов	24
2463	Эш против Зловещих мертвецов (2 сезон)	https://kinokrad.co/305588-jesh-protiv-zloveschih-mertvecov-2-sezon-2016.html	9	2016	США	ужасы, фэнтези, боевик, комедия	Рик Джейкобсон, Тони Тилс, Майкл Дж. Бассетт	30
2464	Викинги (4 сезон)	https://kinokrad.co/287203-vikingi-4-sezon-2016.html	9	2016	Ирландия, Канада	боевик, драма, военный, история	Кен Джиротти, Киаран Доннелли, Джефф Вулнаф	45
2465	Тик (1 сезон)	https://kinokrad.co/305708-tik.html	7	2016	США	боевик, комедия	Уолли Пфистер	30
2466	Завучи (1 сезон)	https://kinokrad.co/334270-zavuchi-1-sezon.html	7	2016	США	комедия	Джоди Хилл, Дэвид Гордон Грин, Дэнни МакБрайд	30
2467	Доктор Рихтер (1 сезон)	https://kinokrad.co/332033-doktor-rihter-1-sezon.html	4	2016	Россия	драма, детектив	Андрей Прошкин, Илья Казанков, Максим Демченко	51
2468	Консультант (1 сезон)	https://kinokrad.co/336208-konsultant-1-sezon.html	7	2016	Россия	детектив, драма	Алексей Рудаков, Дмитрий Коробкин	48
2469	Тихоокеанская жара (1 сезон)	https://kinokrad.co/320658-tihookeanskaya-zhara-1-sezon-2016.html	6	2016	Австралия	мультфильм		22
2470	Сумеречные охотники (3 сезон)	https://kinokrad.co/326717-sumerechnye-ohotniki-3-sezon.html	7	2016	США	фэнтези, боевик, мелодрама	Мэттью Хатингс, Дж. Майлз Дэйл, Джошуа Батлер	42
2471	Адам портит всё (2 сезон)	https://kinokrad.co/303602-adam-portit-vsjo-2-sezon-2016.html	7	2016	США	комедия	Tim Wilkerson, Пол Бриганти, Винсент Пеон	30
2472	Шелест (1 сезон)	https://kinokrad.co/329153-shelest-1-sezon.html	5	2016	Россия	боевик, детектив, криминал	Дмитрий Коробкин	46
2473	Путешественники (1 сезон)	https://kinokrad.co/323906-puteshestvenniki-1-sezon.html	8	2016	Канада, США	фантастика, триллер, драма, детектив	Энди Микита, Аманда Таппинг, Уильям Варинг	45
2474	Марсель (2 сезон)	https://kinokrad.co/325736-marsel-2-sezon.html	6	2016	Франция	драма	Флоран Эмилио Сири, Тома Жилу, Лайла Марракчи	41
2508	Роузхейвен (2 сезон)	https://kinokrad.co/324854-rouzheyven-2-sezon.html	6	2016	Австралия	комедия	Джонатан Бру, Шон Уилсон	28
2475	Звёздная принцесса и силы зла (2 сезон)	https://kinokrad.co/324548-zvezdnaya-princessa-i-sily-zla-2-sezon.html	7	2016	США	мультфильм, фантастика, фэнтези, комедия, приключения, семейный	Аарон Хэммерсли, Доминик Бисигнано, Пьеро Пилузо	23
2476	Последний магнат (1 сезон)	https://kinokrad.co/298306-posledniy-magnat-1-sezon-2016.html	6	2016	США	драма	Билли Рэй	60
2477	Таинственная страсть (1 сезон)	https://kinokrad.co/308522-tainstvennaya-strast-1-sezon-2016.html	6	2016	Россия	драма	Влад Фурман	50
2478	Империя (3 сезон)	https://kinokrad.co/323295-imperiya-3-sezon.html	7	2016	США	драма, музыка	Санаа Хамри, Крэйг Брюэр, Дэнни Стронг	42
2479	Жан-Клод Ван Джонсон (1 сезон)	https://kinokrad.co/304067-zhan-klod-van-dzhonson-1-sezon-2016.html	8	2016	США	комедия	Питер Атенсио	30
2480	Садовое кольцо (1 сезон)	https://kinokrad.co/327827-sadovoe-kolco-1-sezon.html	6	2016	Россия	детектив	Алексей Смирнов	45
2481	Пять минут тишины (2 сезон)	https://kinokrad.co/327035-pyat-minut-tishiny-2-sezon.html	6	2016	Россия	приключения, детектив	Алексей Праздников	52
2482	Жуть (1 сезон)	https://kinokrad.co/323786-zhut-1-sezon.html	7	2016	США	ужасы	Майкл А. Алловиц, Тони Соломонс, Крис Грисмер	22
2483	Новый агент МакГайвер (3 сезон)	https://kinokrad.co/330854-novyy-agent-makgayver-3-sezon.html	5	2016	США	боевик, драма, приключения	Стивен Херек, Эгил Эгилссон, Бобби Рот	43
2484	Развод (1 сезон)	https://kinokrad.co/337222-razvod-1-sezon.html	5	2016	США	драма, комедия	Адам Бернштейн, Джесси Перец, Райан Кейс	30
2485	Дениз в моём сердце (1 сезон)	https://kinokrad.co/325412-deniz-v-moem-serdce-1-sezon.html	5	2016	Турция	драма	Aysun Akyüz	150
2486	Изгоняющий дьявола (1 сезон)	https://kinokrad.co/306929-izgonyayuschiy-dyavola-1-sezon.html	9	2016	США	ужасы, триллер, мистика	Джейсон Энслер, Майкл Нанкин, Билл Джонсон	45
2487	Голиаф (1 сезон)	https://kinokrad.co/327695-goliaf-1-sezon.html	8	2016	США	драма	Лоуренс Триллинг, Дэнни Гордон, Алик Сахаров	60
2488	Ольга (2 сезон)	https://kinokrad.co/331085-olga-2-sezon.html	6	2016	Россия	комедия	Алексей Нужный, Игорь Волошин, Антон Борматов	24
2489	Карточный домик (4 сезон)	https://kinokrad.co/287111-kartochnyy-domik-4-sezon-2016.html	9	2016	США	драма	Джеймс Фоули, Джон Дэвид Коулз, Карл Франклин	50
2490	Коронер (2 сезон)	https://kinokrad.co/316206-koroner-2-sezon-2016.html	5	2016	Великобритания	драма, криминал	Йен Барбер, Мэтт Картер, Ниал Фрайзер	45
2491	Чокнутая бывшая (2 сезон)	https://kinokrad.co/312858-choknutaya-byvshaya-2-sezon-2016.html	7	2016	США	мюзикл, комедия	Алекс Хардкасл, Стюарт МакДональд, Стивен К. Цутида	42
2492	Конмэн (2 сезон)	https://kinokrad.co/325016-konmen-2-sezon.html	6	2016	США	комедия	Алан Тьюдик, Энтони Леонарди III	12
2493	Связи (2 сезон)	https://kinokrad.co/337151-svyazi-2-sezon.html	5	2016	Болгария	драма, комедия	Виктор Божинов, Vassil Stefanov, Dimitar Dimitrov	
2494	Наёмник Куорри (1 сезон)	https://kinokrad.co/310278-naemnik-kuorri-1-sezon.html	7	2016	США	триллер, драма, криминал	Грег Яйтанс, Джон Хиллкоут	60
2495	Отвязный Дайс (1 сезон)	https://kinokrad.co/310282-otvyaznyy-days-1-sezon.html	6	2016	США	комедия	Скот Армстронг, Джей Карас	30
2496	Челночницы (1 сезон)	https://kinokrad.co/329237-chelnochnicy-1-sezon.html	5	2016	Россия	драма	Юлия Краснова, Сергей Краснов	50
2497	Банши (4 сезон)	https://kinokrad.co/290302-banshi-4-sezon-2016.html	9	2016	США	боевик, триллер, драма, криминал, детектив	Оле Кристиан Мадсен, Грег Яйтанс, Лони Перистер	43
2498	Девочки (5 сезон)	https://kinokrad.co/287239-devochki-5-sezon-2016.html	5	2016	США	драма, комедия	Лина Данэм, Джесси Перец, Ричард Шепард	30
2499	Изгой (1 сезон)	https://kinokrad.co/295087-izgoy-1-sezon-2016.html	7	2016	США	ужасы, драма, мистика	Ли Джаньяк, Лони Перистер, Джулиус Рамсей	60
2500	Каменное сердце (1 сезон)	https://kinokrad.co/308159-kamennoe-serdce-1-sezon-2016.html	5	2016	Россия	мелодрама, детектив	Александр Аравин	47
2501	Крылья (1 сезон)	https://kinokrad.co/308906-krylya-1-sezon-2016.html	4	2016	Россия	мелодрама	Александр Аравин	42
2502	Власть в ночном городе (3 сезон)	https://kinokrad.co/333727-vlast-v-nochnom-gorode-3-sezon.html	8	2016	США	драма, криминал	Сэнфорд Букставер, М. Дж. Бассетт, Роб Харди	50
2503	Однажды ночью (1 сезон)	https://kinokrad.co/298933-odnazhdy-nochyu-1-sezon.html	8	2016	США	драма, криминал	Стивен Зеллиан, Джеймс Марш	55
2504	Винил (1 сезон)	https://kinokrad.co/287278-vinil-1-sezon.html	7	2016	США	драма, музыка	Аллен Култер, Джон С. Бейрд, С.Дж. Кларксон	60
2505	Рокко Скьявоне (1 сезон)	https://kinokrad.co/335200-rokko-skyavone-1-sezon.html	8	2016	Италия	триллер, криминал	Luca Brignone, Микеле Соави, Джулио Манфредония	100
2506	Сказочный патруль (1 сезон)	https://kinokrad.co/324227-skazochnyy-patrul-1-sezon.html	7	2016	Россия	мультфильм, детский	Наиль Мубинов	11
2507	Американская история ужасов (6 сезон)	https://kinokrad.co/335146-amerikanskaya-istoriya-uzhasov-6-sezon.html	6	2016	США	ужасы, триллер, драма	Брэдли Букер, Альфонсо Гомес-Рехон, Майкл Аппендаль	43
4642	Сын (1 сезон)	https://kinokrad.co/293785-syn-1-sezon-2014.html	4	2014	Россия	драма	Вячеслав Росс	41
2509	Роузхейвен (1 сезон)	https://kinokrad.co/324851-rouzheyven-1-sezon.html	5	2016	Австралия	комедия	Джонатан Бру, Шон Уилсон	28
2510	Миллиарды (1 сезон)	https://kinokrad.co/285783-milliardy-1-sezon-2016.html	9	2016	США	драма	Джеймс Фоули, Нил Бёргер, Скотт Хорнбэкер	60
2511	Место, что домом зовётся (4 сезон)	https://kinokrad.co/323667-mesto-chto-domom-zovetsya-4-sezon.html	7	2016	Австралия	драма	Марк Джофф, Линн-Мэри Дэнзе, Ширли Баррет	60
2512	Стрелок (3 сезон)	https://kinokrad.co/328139-strelok-3-sezon.html	7	2016	США	боевик, драма	Дэвид Стрейтон, Саймон Селлан Джоунс, Кристоф Шреве	60
2513	Стартап (1 сезон)	https://kinokrad.co/306428-startap.html	8	2016	США	триллер, криминал	Бен Кетаи, Луис Прието	44
2514	Лего Рыцари Нексо (2 сезон)	https://kinokrad.co/320866-lego-rycari-nekso-2-sezon-2016.html	7	2016	Дания	мультфильм, фантастика, боевик, комедия	Stu Gamble	20
2515	Лего Рыцари Нексо (1 сезон)	https://kinokrad.co/320862-lego-rycari-nekso-1-sezon-2015.html	7	2016	Дания	мультфильм, фантастика, боевик, комедия	Stu Gamble	20
2516	Оборотень / Волчонок (6 сезон)	https://kinokrad.co/312686-oboroten-volchonok-6-sezon-2016.html	8	2016	США	ужасы, фэнтези, боевик, триллер, драма, мелодрама, комедия	Рассел Малкэй, Тим Эндрю, Дженнифер Чэмберс Линч	43
2517	Полуночное солнце (1 сезон)	https://kinokrad.co/319398-polunochnoe-solnce-1-sezon-2016.html	8	2016	Франция, Швеция	триллер, драма, криминал, детектив	Монс Морлинд, Бьёрн Стейн	55
2518	Лучше звоните Солу (2 сезон)	https://kinokrad.co/286787-luchshe-zvonite-solu-2-sezon-2016.html	9	2016	США	драма, криминал	Адам Бернштейн, Лариса Кондрацки, Томас Шнауз	47
2519	Юная (2 сезон)	https://kinokrad.co/286345-yunaya-2-sezon-2016.html	6	2016	США	мелодрама, комедия	Питер Лоэр, Стивен К. Цутида, Даррен Стар	22
2520	Однажды в сказке (6 сезон)	https://kinokrad.co/306605-odnazhdy-v-skazke-6-sezon.html	8	2016	США	фэнтези, мелодрама, приключения	Ральф Хемекер, Рон Андервуд, Дин Уайт	43
2521	Да здравствует король Джулиан (4 сезон)	https://kinokrad.co/318642-da-zdravstvuet-korol-dzhulian-4-sezon-2016.html	7	2016	США	мультфильм, комедия, семейный	Джеймс Вуттон, Christo Stamboliev, Stephen Heneveld	22
2522	Да здравствует король Джулиан (3 сезон)	https://kinokrad.co/318638-da-zdravstvuet-korol-dzhulian-3-sezon-2016.html	7	2016	США	мультфильм, комедия, семейный	Джеймс Вуттон, Christo Stamboliev, Stephen Heneveld	22
2523	Более полный дом (2 сезон)	https://kinokrad.co/318626-bolee-polnyy-dom-2-sezon-2017.html	8	2016	США	комедия, семейный	Рич Коррелл, Кэти Гарретсон, Марк Сендроуски	30
2524	Министерство времени (2 сезон)	https://kinokrad.co/287237-ministerstvo-vremeni-2-sezon-2016.html	7	2016	Испания	фантастика, комедия, приключения	Марк Вихиль, Abigail Schaaff, Хорхе С. Дорадо	70
2525	Человек в высоком замке (2 сезон)	https://kinokrad.co/312878-chelovek-v-vysokom-zamke-2-sezon-2016.html	8	2016	США	фантастика, триллер, драма	Дэниэл Персивал, Карин Кусама, Брэд Андерсон	60
2526	Форс-мажоры (6 сезон)	https://kinokrad.co/301319-fors-mazhory-6-sezon-2016.html	9	2016	США	драма, комедия	Антон Кроппер, Кевин Брэй, Майкл Смит	43
2527	Улица потрошителя (5 сезон)	https://kinokrad.co/312770-ulica-potroshitelya-5-sezon-2016.html	9	2016	Великобритания, Ирландия	драма, криминал, детектив	Энди Уилсон, Том Шенклэнд, Энтони Бирн	55
2528	Скотт и Бейли (5 сезон)	https://kinokrad.co/312766-skott-i-beyli-5-sezon-2016.html	8	2016	Великобритания	драма, детектив, криминал	Мораг Фуллартон, Чина Му-Ен, Пол Уолкер	43
2529	Земляне (1 сезон)	https://kinokrad.co/312698-zemlyane-1-sezon-2016.html	7	2016	США	фантастика, комедия, детектив	Эндрю Гейнорд, Грег Дэниелс, Йен Фитцгиббон	30
2530	Как избежать наказания за убийство ( 3 сезон)	https://kinokrad.co/306668-kak-izbezhat-nakazaniya-za-ubiystvo-3-sezon.html	7	2016	США	триллер, драма, криминал, детектив	Билл Д’Элиа, Майк Листо, Лора Иннес	43
2531	Вне времени (1 сезон)	https://kinokrad.co/303931-vne-vremeni-1-sezon-2016.html	8	2016	США	фантастика, боевик, драма, приключения	Чарльз Бисон, Нил Маршалл, Джон Терлески	60
2532	Сложные люди (2 сезон)	https://kinokrad.co/312674-slozhnye-lyudi-2-sezon-2016.html	4	2016	США	комедия	Джеффри Уокер, Эндрю Флеминг, Нил Дэйли	30
2533	Ошибки прошлого (3 сезон)	https://kinokrad.co/309293-oshibki-proshlogo-3-sezon-2016.html	5	2016	США	драма	Билл Джирхарт, Стивен Джилленхол, Николь Кэссел	46
2534	Бесстыдники (7 сезон)	https://kinokrad.co/304433-besstydniki-7-sezon-2016.html	9	2016	США	драма, комедия	Марк Майлод, Кристофер Чулак, Мими Ледер	55
2535	Неваляшка (1 сезон)	https://kinokrad.co/309290-nevalyashka-1-sezon-2016.html	5	2016	Россия	мелодрама	Роман Просвирнин	
2536	Грейвс (1 сезон)	https://kinokrad.co/307070-greyvs-1-sezon-2016.html	5	2016	США	комедия	Боб Бэлабан, Джошуа Майкл Штерн, Роберт Б. Уайде	30
2537	Берлинский вокзал / Берлинский отдел (1 сезон)	https://kinokrad.co/304436-berlinskiy-vokzal-berlinskiy-otdel-1-sezon-2016.html	9	2016	США, Германия	триллер	Джузеппе Капотонди, Джон Дэвид Коулз, Михаэль Р. Роскам	60
5735	Оттепель (1-13 серия)	https://kinokrad.co/4925-ottepel-18-04.html	8	2013	Россия	драма	Валерий Тодоровский	55
2538	Вся правда о медведях / Мы обычные медведи (2 сезон)	https://kinokrad.co/317290-vsya-pravda-o-medvedyah-2-sezon-2016.html	8	2016	США	мультфильм, фэнтези, комедия, семейный	Manny Hernandez	30
2539	Моцарт в джунглях (3 сезон)	https://kinokrad.co/309170-mocart-v-dzhunglyah-3-sezon-2016.html	7	2016	США	драма, комедия, музыка	Пол Вайц, Тришиа Брок, Роман Коппола	29
2540	Риллингтон-плейс (1 сезон)	https://kinokrad.co/308999-rillington-pleys-1-sezon-2016.html	6	2016	Великобритания	криминал	Крэйг Вивейрос	50
2541	Отжиг (1 сезон)	https://kinokrad.co/301802-otzhig-1-sezon-2016.html	7	2016	США	мюзикл, драма, музыка	Эдвард Бьянчи, Баз Лурман, Эндрю Бернштейн	52
2542	Коллекция (1 сезон)	https://kinokrad.co/304460-kollekciya-1-sezon-2016.html	6	2016	Великобритания	драма, мелодрама, история	Дэн Зефф, Дирбла Уолш	60
2543	Нация Z (3 сезон)	https://kinokrad.co/306608-naciya-z-3-sezon.html	8	2016	США	ужасы, фантастика, боевик, драма	Джон Хайамс, Тим Кокс, Дэн Мерчант	43
2544	Пьяная фирма (1 сезон)	https://kinokrad.co/309287-pyanaya-firma-1-sezon-2016.html	6	2016	Россия	комедия	Григорий Константинопольский	50
2545	Легенды завтрашнего дня (2 сезон)	https://kinokrad.co/304538-legendy-zavtrashnego-dnya-2-sezon-2016.html	8	2016	США	фантастика, боевик, драма, приключения	Дермотт Даунс, Грегори Смит, Дэвид Геддес	42
2546	Код (2 сезон)	https://kinokrad.co/303257-kod-2-sezon-2016.html	6	2016	Австралия	триллер, драма	Шон Сит	56
2547	Бойтесь ходячих мертвецов (2 сезон)	https://kinokrad.co/290296-boytes-hodyachih-mertvecov-2-sezon-2016.html	8	2016	США	ужасы, драма	Адам Дэвидсон, Кари Скогланд, Стефан Шварц	60
2548	Новенькая (6 сезон)	https://kinokrad.co/307367-novenkaya-6-sezon-2016.html	6	2016	США	комедия	Трент О’Доннелл, Джейк Кэздан, Фред Госс	22
2549	Красные дубы (2 сезон)	https://kinokrad.co/308513-krasnye-duby-2-sezon-2016.html	7	2016	США	комедия	Дэвид Гордон Грин, Хэл Хартли, Эндрю Флеминг	25
2550	Морская полиция: Лос-Анджелес (8 сезон)	https://kinokrad.co/313814-morskaya-policiya-los-andzheles-8-sezon-2016.html	7	2016	США	триллер, драма, криминал, детектив	Тони Уормби, Терренс О’Хара, Дэннис Смит	43
2551	Проект Минди (5 сезон)	https://kinokrad.co/313810-proekt-mindi-5-sezon-2016.html	5	2016	США	комедия	Майкл Алан Спиллер, Майкл Уивер, Дэвид Роджерс	22
2552	Шаман (3 сезон)	https://kinokrad.co/303911-shaman-3-sezon-2016.html	6	2016	Россия	приключения, детектив, криминал	Максим Кубринский, Дмитрий Аверин, Иван Криворучко	45
2553	Жизнь в деталях (2 сезон)	https://kinokrad.co/304070-zhizn-v-detalyah-2-sezon-2016.html	6	2016	США	комедия	Джейсон Уайнер, Чад Лоу, Фил Трэйл	22
2554	Харли и братья Дэвидсон (1 сезон)	https://kinokrad.co/303899-harli-i-bratya-djevidson-1-sezon-2016.html	9	2016	США	биография	Киаран Доннелли, Стефен Т. Кэй	76
2555	В четырех стенах (1 сезон)	https://kinokrad.co/304058-v-chetyreh-stenah-1-sezon-2016.html	7	2016	США	комедия	Энди Экерман	30
2556	Стэн против сил зла (1 сезон)	https://kinokrad.co/308201-stjen-protiv-sil-zla-1-sezon-2016.html	7	2016	США	ужасы, фэнтези, комедия, мистика	Джек Бишоп, Джастин Ниджм	30
2557	Тайны и ложь (2 сезон)	https://kinokrad.co/306905-tayny-i-lozh-2-sezon.html	7	2016	США	драма, детектив, триллер, криминал	Адам Аркин, Тимоти Басфилд, Кейт Дэннис	43
2558	Черноватый (3 сезон)	https://kinokrad.co/307061-chernovatyy-3-sezon.html	5	2016	США	комедия	Мэттью Сон, Кен Уиттингэм, Антон Кроппер	22
2559	Улицы разбитых фонарей (16 сезон)	https://kinokrad.co/303893-ulicy-razbityh-fonarey-16-sezon-2016.html	6	2016	Россия	боевик, драма, криминал, приключения	Александр Рогожкин, Дмитрий Светозаров, Кирилл Капица	48
2560	Стена (1 сезон)	https://kinokrad.co/308195-stena-1-sezon-2016.html	6	2016	Россия	история, военный, приключения	Дмитрий Месхиев	
2561	Тиран (3 сезон)	https://kinokrad.co/301193-tiran-3-sezon-2016.html	8	2016	США	боевик, триллер, драма	Гвинет Хердер-Пэйтон, Майкл Леманн, Питер Уэллер	60
2562	Зверинец (2 сезон)	https://kinokrad.co/298861-zverinec-2-sezon-2016.html	8	2016	США	фантастика, триллер, драма	Майкл Кэтлман, Стив Эделсон, Дэвид Соломон	42
2563	Рождение мафии: Чикаго (1 сезон)	https://kinokrad.co/301103-rozhdenie-mafii-chikago-1-sezon-2016.html	9	2016	США	документальный	Джон Илер	44
2564	Интерны (14 сезон)	https://kinokrad.co/286693-interny-14-sezon.html	5	2016	Россия	комедия	Максим Пежемский, Заур Болотаев, Милан Килибарда	25
2565	Секс, наркотики и рок-н-ролл (2 сезон)	https://kinokrad.co/299745-seks-narkotiki-i-rok-n-roll-2-sezon-2016.html	5	2016	США	комедия, музыка	Майкл Блиден, Дэнис Лири, Джим Серпико	21
2566	Бриджит и Имон (2 сезон)	https://kinokrad.co/318618-bridzhit-i-imon-2-sezon-2016.html	7	2016	Ирландия	комедия	Джейсон Батлер	45
2567	Морская полиция: Новый Орлеан (3 сезон)	https://kinokrad.co/322683-morskaya-policiya-novyy-orlean-3-sezon.html	8	2016	США	драма, криминал	Джеймс Хейман, Тони Уормби, Майкл Цинберг	42
2568	Лагерь Х (2 сезон)	https://kinokrad.co/298174-lager-x-2-sezon-2016.html	6	2016	Канада	драма, военный	Jamie Magnus Stone, Дэвид Фрэйзи, Джон Стриклэнд	44
2569	Кризис нежного возраста (1 сезон)	https://kinokrad.co/300630-krizis-nezhnogo-vozrasta-1-sezon-2016.html	7	2016	Россия	мелодрама, комедия	Наталья Меркулова, Алексей Чупов	48
2570	Все еще король (1 сезон)	https://kinokrad.co/297667-vse-esche-korol-1-sezon-2016.html	6	2016	США	комедия	Potsy Ponciroli, Джон Полл, Тамра Дэвис	22
2571	Другое время (2 сезон)	https://kinokrad.co/300372-drugoe-vremya-2-sezon-2016.html	5	2016	США	комедия, история	Джереми Коннер	21
2572	Ночная смена (3 сезон)	https://kinokrad.co/296098-nochnaya-smena-3-sezon-2016.html	7	2016	США	боевик, драма, комедия	Эрик Ла Салль, Дэвид Бойд, Тимоти Басфилд	42
2573	По волчьим законам (1 сезон)	https://kinokrad.co/298303-po-volchim-zakonam-1-sezon-2016.html	9	2016	США	драма, криминал	Кристофер Чулак, Джон Уэллс, Реджина Кинг	50
2574	Очень странные дела (1 сезон)	https://kinokrad.co/299793-ochen-strannye-dela-1-sezon-2016.html	9	2016	США	ужасы, фантастика, триллер, драма, детектив, мистика	Мэтт Даффер, Росс Даффер, Шон Леви	55
2575	Трансформеры: Скрытые роботы / Трансформеры: Роботы под прикрытием (2 сезон)	https://kinokrad.co/287440-transformery-roboty-pod-prikrytiem-2-sezon-2016.html	8	2016	США	мультфильм, боевик, комедия, приключения	Дэвид Хартман, Тодд Ватерман, Фрэнк Марино	23
2576	Гринлиф (1 сезон)	https://kinokrad.co/297886-grinlif-1-sezon-2016.html	6	2016	США	драма	Аллен Крокер, Клемент Вирго, Дженис Кук-Леонард	42
2577	Обед в пятницу вечером (4 сезон)	https://kinokrad.co/301910-obed-v-pyatnicu-vecherom-4-sezon-2016.html	6	2016	Великобритания	комедия	Мартин Деннис, Стив Бенделак	22
2578	Когда зовёт сердце (4 сезон)	https://kinokrad.co/320850-kogda-zovet-serdce-4-sezon-2016.html	9	2016	США	драма	Нилл Фернли, Майкл Лэндон мл., Мартин Вуд	43
2579	Ты, Я, Она (1 сезон)	https://kinokrad.co/298078-ty-ya-ona-1-sezon-2016.html	6	2016	США	комедия	Ниша Ганатра	60
2580	Умник / Умный человек (1 сезон)	https://kinokrad.co/297595-umnik-umnyy-chelovek-1-sezon-2016.html	7	2016	США, Австралия, Новая Зеландия	фантастика	Уэйн Блэр, Леа Пурселл	50
2581	Дорогой доктор (8 сезон)	https://kinokrad.co/295261-dorogoy-doktor-8-sezon-2016.html	6	2016	США	драма, комедия	Мэттью Пенн, Джей Чандрашекхар, Эмиль Левисетти	43
2582	Завтра все закончится (1 сезон)	https://kinokrad.co/297664-zavtra-vse-zakonchitsya-1-sezon-2016.html	7	2016	Германия	драма, криминал	Мартин Эйглер	60
2583	Доктор, доктор (1 сезон)	https://kinokrad.co/320822-doktor-doktor-1-sezon-2016.html	8	2016	Австралия	драма	Питер Сэлмон, Джереми Симс, Крив Стендерс	50
2584	ЧОП (2 сезон)	https://kinokrad.co/296839-chop-2-sezon-2016.html	7	2016	Россия	комедия	Михаил Соловьев	24
2585	Кремниевая долина (3 сезон)	https://kinokrad.co/294265-kremnievaya-dolina-3-sezon-2016.html	9	2016	США	комедия	Майк Джадж, Алек Берг, Чарли МакДауэлл	30
2586	Вышибала (1 сезон)	https://kinokrad.co/297505-vyshibala-1-sezon-2016.html	8	2016	Россия	драма, криминал	Сергей Крутин, Александр Аравин	46
2587	Марко Поло (2 сезон)	https://kinokrad.co/298900-marko-polo-2-sezon-2016.html	9	2016	США	драма, приключения, история	Даниэль Минахан, Дэвид Петрарка, Алик Сахаров	60
2588	Убийство (1 сезон)	https://kinokrad.co/299826-ubiystvo-1-sezon-2016-velikobritaniya.html	5	2016	Великобритания	криминал	Биргер Ларсен, Ян Форсис, Джейн Поллард	58
2589	Речные монстры (8 сезон)	https://kinokrad.co/298309-rechnye-monstry-8-sezon-2016.html	8	2016	США	документальный, детектив, приключения	Барни Ревилл, Доминик Уэстон, Charlie Bingham	43
2590	Конь БоДжек (3 сезон)	https://kinokrad.co/321490-kon-bodzhek-3-sezon-2016.html	5	2016	США	мультфильм, драма, комедия	JC Gonzalez, Amy Winfrey, Джоэль Мосер	25
2591	Между (2 сезон)	https://kinokrad.co/298903-mezhdu-2-sezon-2016.html	6	2016	Канада	фантастика, триллер, драма, детектив	Майкл МакГоун, Джон Кассар, Рик Бота	60
2592	Частные сыщики (1 сезон)	https://kinokrad.co/298081-chastnye-syschiki-1-sezon-2016.html	8	2016	Канада	драма	Келли Макин, Роберт Либерман, Шон Пиллер	43
2593	Сосны / Уэйуорд Пайнс (2 сезон)	https://kinokrad.co/295660-sosny-ueyuord-payns-2-sezon-2016.html	8	2016	США	фантастика, триллер, драма, детектив	Джефф Т. Томас, Зал Батманглидж, Тим Хантер	44
2594	Живые и мёртвые (1 сезон)	https://kinokrad.co/298864-zhivye-i-mjortvye-1-sezon-2016.html	8	2016	Великобритания	ужасы, триллер, драма, мистика	Сэмюэл Донован, Элис Тротон	60
2595	Особо тяжкие преступления (5 сезон)	https://kinokrad.co/298285-osobo-tyazhkie-prestupleniya-5-sezon-2016.html	6	2016	США	драма, криминал, детектив	Майкл М. Робин, Стив Робин, Дэвид МакУиртер	43
2596	Бюро легенд (2 сезон)	https://kinokrad.co/318178-byuro-legend-2-sezon-2016.html	7	2016	Франция	драма	Элье Систерн, Матье Деми, Эрик Рошан	52
2597	Белая ворона (1 сезон)	https://kinokrad.co/318978-belaya-vorona-1-sezon-2016.html	5	2016	США	комедия	Мелина Матсукас, Кевин Брэй, Дебби Аллен	30
2598	Доктор Блейк (4 сезон)	https://kinokrad.co/289861-doktor-bleyk-4-sezon-2016.html	8	2016	Австралия	детектив	Деклан Имис, Йен Бэрри, Эндрю Проуз	57
2599	Корни (1 сезон)	https://kinokrad.co/295669-korni-1-sezon-2016.html	8	2016	США	драма, история	Брюс Бересфорд, Томас Картер, Филлип Нойс	
2600	Родословная (2 сезон)	https://kinokrad.co/295666-rodoslovnaya-2-sezon-2016.html	5	2016	США	триллер, драма	Эдвард Бьянчи, Йохан Ренк, Дэниэл Эттиэс	60
2601	Крылья (1 сезон)	https://kinokrad.co/308906-krylya-1-sezon-2016.html	4	2016	Россия	мелодрама	Александр Аравин	42
2602	Власть в ночном городе (3 сезон)	https://kinokrad.co/333727-vlast-v-nochnom-gorode-3-sezon.html	8	2016	США	драма, криминал	Сэнфорд Букставер, М. Дж. Бассетт, Роб Харди	50
2603	Однажды ночью (1 сезон)	https://kinokrad.co/298933-odnazhdy-nochyu-1-sezon.html	8	2016	США	драма, криминал	Стивен Зеллиан, Джеймс Марш	55
2604	Винил (1 сезон)	https://kinokrad.co/287278-vinil-1-sezon.html	7	2016	США	драма, музыка	Аллен Култер, Джон С. Бейрд, С.Дж. Кларксон	60
2605	Рокко Скьявоне (1 сезон)	https://kinokrad.co/335200-rokko-skyavone-1-sezon.html	8	2016	Италия	триллер, криминал	Luca Brignone, Микеле Соави, Джулио Манфредония	100
2606	Сказочный патруль (1 сезон)	https://kinokrad.co/324227-skazochnyy-patrul-1-sezon.html	7	2016	Россия	мультфильм, детский	Наиль Мубинов	11
2607	Американская история ужасов (6 сезон)	https://kinokrad.co/335146-amerikanskaya-istoriya-uzhasov-6-sezon.html	6	2016	США	ужасы, триллер, драма	Брэдли Букер, Альфонсо Гомес-Рехон, Майкл Аппендаль	43
2608	Роузхейвен (2 сезон)	https://kinokrad.co/324854-rouzheyven-2-sezon.html	6	2016	Австралия	комедия	Джонатан Бру, Шон Уилсон	28
2609	Роузхейвен (1 сезон)	https://kinokrad.co/324851-rouzheyven-1-sezon.html	5	2016	Австралия	комедия	Джонатан Бру, Шон Уилсон	28
2610	Миллиарды (1 сезон)	https://kinokrad.co/285783-milliardy-1-sezon-2016.html	9	2016	США	драма	Джеймс Фоули, Нил Бёргер, Скотт Хорнбэкер	60
2611	Место, что домом зовётся (4 сезон)	https://kinokrad.co/323667-mesto-chto-domom-zovetsya-4-sezon.html	7	2016	Австралия	драма	Марк Джофф, Линн-Мэри Дэнзе, Ширли Баррет	60
2612	Стрелок (3 сезон)	https://kinokrad.co/328139-strelok-3-sezon.html	7	2016	США	боевик, драма	Дэвид Стрейтон, Саймон Селлан Джоунс, Кристоф Шреве	60
2613	Стартап (1 сезон)	https://kinokrad.co/306428-startap.html	8	2016	США	триллер, криминал	Бен Кетаи, Луис Прието	44
2614	Лего Рыцари Нексо (2 сезон)	https://kinokrad.co/320866-lego-rycari-nekso-2-sezon-2016.html	7	2016	Дания	мультфильм, фантастика, боевик, комедия	Stu Gamble	20
2615	Лего Рыцари Нексо (1 сезон)	https://kinokrad.co/320862-lego-rycari-nekso-1-sezon-2015.html	7	2016	Дания	мультфильм, фантастика, боевик, комедия	Stu Gamble	20
2616	Оборотень / Волчонок (6 сезон)	https://kinokrad.co/312686-oboroten-volchonok-6-sezon-2016.html	8	2016	США	ужасы, фэнтези, боевик, триллер, драма, мелодрама, комедия	Рассел Малкэй, Тим Эндрю, Дженнифер Чэмберс Линч	43
2617	Полуночное солнце (1 сезон)	https://kinokrad.co/319398-polunochnoe-solnce-1-sezon-2016.html	8	2016	Франция, Швеция	триллер, драма, криминал, детектив	Монс Морлинд, Бьёрн Стейн	55
2618	Лучше звоните Солу (2 сезон)	https://kinokrad.co/286787-luchshe-zvonite-solu-2-sezon-2016.html	9	2016	США	драма, криминал	Адам Бернштейн, Лариса Кондрацки, Томас Шнауз	47
2619	Юная (2 сезон)	https://kinokrad.co/286345-yunaya-2-sezon-2016.html	6	2016	США	мелодрама, комедия	Питер Лоэр, Стивен К. Цутида, Даррен Стар	22
2620	Однажды в сказке (6 сезон)	https://kinokrad.co/306605-odnazhdy-v-skazke-6-sezon.html	8	2016	США	фэнтези, мелодрама, приключения	Ральф Хемекер, Рон Андервуд, Дин Уайт	43
2621	Да здравствует король Джулиан (4 сезон)	https://kinokrad.co/318642-da-zdravstvuet-korol-dzhulian-4-sezon-2016.html	7	2016	США	мультфильм, комедия, семейный	Джеймс Вуттон, Christo Stamboliev, Stephen Heneveld	22
2622	Да здравствует король Джулиан (3 сезон)	https://kinokrad.co/318638-da-zdravstvuet-korol-dzhulian-3-sezon-2016.html	7	2016	США	мультфильм, комедия, семейный	Джеймс Вуттон, Christo Stamboliev, Stephen Heneveld	22
2623	Более полный дом (2 сезон)	https://kinokrad.co/318626-bolee-polnyy-dom-2-sezon-2017.html	8	2016	США	комедия, семейный	Рич Коррелл, Кэти Гарретсон, Марк Сендроуски	30
2624	Министерство времени (2 сезон)	https://kinokrad.co/287237-ministerstvo-vremeni-2-sezon-2016.html	7	2016	Испания	фантастика, комедия, приключения	Марк Вихиль, Abigail Schaaff, Хорхе С. Дорадо	70
2625	Человек в высоком замке (2 сезон)	https://kinokrad.co/312878-chelovek-v-vysokom-zamke-2-sezon-2016.html	8	2016	США	фантастика, триллер, драма	Дэниэл Персивал, Карин Кусама, Брэд Андерсон	60
2626	Форс-мажоры (6 сезон)	https://kinokrad.co/301319-fors-mazhory-6-sezon-2016.html	9	2016	США	драма, комедия	Антон Кроппер, Кевин Брэй, Майкл Смит	43
2627	Улица потрошителя (5 сезон)	https://kinokrad.co/312770-ulica-potroshitelya-5-sezon-2016.html	9	2016	Великобритания, Ирландия	драма, криминал, детектив	Энди Уилсон, Том Шенклэнд, Энтони Бирн	55
2628	Скотт и Бейли (5 сезон)	https://kinokrad.co/312766-skott-i-beyli-5-sezon-2016.html	8	2016	Великобритания	драма, детектив, криминал	Мораг Фуллартон, Чина Му-Ен, Пол Уолкер	43
2629	Земляне (1 сезон)	https://kinokrad.co/312698-zemlyane-1-sezon-2016.html	7	2016	США	фантастика, комедия, детектив	Эндрю Гейнорд, Грег Дэниелс, Йен Фитцгиббон	30
2630	Как избежать наказания за убийство ( 3 сезон)	https://kinokrad.co/306668-kak-izbezhat-nakazaniya-za-ubiystvo-3-sezon.html	7	2016	США	триллер, драма, криминал, детектив	Билл Д’Элиа, Майк Листо, Лора Иннес	43
2631	Вне времени (1 сезон)	https://kinokrad.co/303931-vne-vremeni-1-sezon-2016.html	8	2016	США	фантастика, боевик, драма, приключения	Чарльз Бисон, Нил Маршалл, Джон Терлески	60
2632	Сложные люди (2 сезон)	https://kinokrad.co/312674-slozhnye-lyudi-2-sezon-2016.html	4	2016	США	комедия	Джеффри Уокер, Эндрю Флеминг, Нил Дэйли	30
2633	Ошибки прошлого (3 сезон)	https://kinokrad.co/309293-oshibki-proshlogo-3-sezon-2016.html	5	2016	США	драма	Билл Джирхарт, Стивен Джилленхол, Николь Кэссел	46
2634	Бесстыдники (7 сезон)	https://kinokrad.co/304433-besstydniki-7-sezon-2016.html	9	2016	США	драма, комедия	Марк Майлод, Кристофер Чулак, Мими Ледер	55
2635	Неваляшка (1 сезон)	https://kinokrad.co/309290-nevalyashka-1-sezon-2016.html	5	2016	Россия	мелодрама	Роман Просвирнин	
2636	Грейвс (1 сезон)	https://kinokrad.co/307070-greyvs-1-sezon-2016.html	5	2016	США	комедия	Боб Бэлабан, Джошуа Майкл Штерн, Роберт Б. Уайде	30
2637	Берлинский вокзал / Берлинский отдел (1 сезон)	https://kinokrad.co/304436-berlinskiy-vokzal-berlinskiy-otdel-1-sezon-2016.html	9	2016	США, Германия	триллер	Джузеппе Капотонди, Джон Дэвид Коулз, Михаэль Р. Роскам	60
2638	Вся правда о медведях / Мы обычные медведи (2 сезон)	https://kinokrad.co/317290-vsya-pravda-o-medvedyah-2-sezon-2016.html	8	2016	США	мультфильм, фэнтези, комедия, семейный	Manny Hernandez	30
2639	Моцарт в джунглях (3 сезон)	https://kinokrad.co/309170-mocart-v-dzhunglyah-3-sezon-2016.html	7	2016	США	драма, комедия, музыка	Пол Вайц, Тришиа Брок, Роман Коппола	29
2640	Риллингтон-плейс (1 сезон)	https://kinokrad.co/308999-rillington-pleys-1-sezon-2016.html	6	2016	Великобритания	криминал	Крэйг Вивейрос	50
2641	Отжиг (1 сезон)	https://kinokrad.co/301802-otzhig-1-sezon-2016.html	7	2016	США	мюзикл, драма, музыка	Эдвард Бьянчи, Баз Лурман, Эндрю Бернштейн	52
2642	Коллекция (1 сезон)	https://kinokrad.co/304460-kollekciya-1-sezon-2016.html	6	2016	Великобритания	драма, мелодрама, история	Дэн Зефф, Дирбла Уолш	60
2643	Нация Z (3 сезон)	https://kinokrad.co/306608-naciya-z-3-sezon.html	8	2016	США	ужасы, фантастика, боевик, драма	Джон Хайамс, Тим Кокс, Дэн Мерчант	43
2644	Пьяная фирма (1 сезон)	https://kinokrad.co/309287-pyanaya-firma-1-sezon-2016.html	6	2016	Россия	комедия	Григорий Константинопольский	50
2645	Легенды завтрашнего дня (2 сезон)	https://kinokrad.co/304538-legendy-zavtrashnego-dnya-2-sezon-2016.html	8	2016	США	фантастика, боевик, драма, приключения	Дермотт Даунс, Грегори Смит, Дэвид Геддес	42
2646	Код (2 сезон)	https://kinokrad.co/303257-kod-2-sezon-2016.html	6	2016	Австралия	триллер, драма	Шон Сит	56
2647	Бойтесь ходячих мертвецов (2 сезон)	https://kinokrad.co/290296-boytes-hodyachih-mertvecov-2-sezon-2016.html	8	2016	США	ужасы, драма	Адам Дэвидсон, Кари Скогланд, Стефан Шварц	60
2648	Новенькая (6 сезон)	https://kinokrad.co/307367-novenkaya-6-sezon-2016.html	6	2016	США	комедия	Трент О’Доннелл, Джейк Кэздан, Фред Госс	22
2649	Красные дубы (2 сезон)	https://kinokrad.co/308513-krasnye-duby-2-sezon-2016.html	7	2016	США	комедия	Дэвид Гордон Грин, Хэл Хартли, Эндрю Флеминг	25
2650	Морская полиция: Лос-Анджелес (8 сезон)	https://kinokrad.co/313814-morskaya-policiya-los-andzheles-8-sezon-2016.html	7	2016	США	триллер, драма, криминал, детектив	Тони Уормби, Терренс О’Хара, Дэннис Смит	43
2651	Проект Минди (5 сезон)	https://kinokrad.co/313810-proekt-mindi-5-sezon-2016.html	5	2016	США	комедия	Майкл Алан Спиллер, Майкл Уивер, Дэвид Роджерс	22
2652	Шаман (3 сезон)	https://kinokrad.co/303911-shaman-3-sezon-2016.html	6	2016	Россия	приключения, детектив, криминал	Максим Кубринский, Дмитрий Аверин, Иван Криворучко	45
2653	Жизнь в деталях (2 сезон)	https://kinokrad.co/304070-zhizn-v-detalyah-2-sezon-2016.html	6	2016	США	комедия	Джейсон Уайнер, Чад Лоу, Фил Трэйл	22
2654	Харли и братья Дэвидсон (1 сезон)	https://kinokrad.co/303899-harli-i-bratya-djevidson-1-sezon-2016.html	9	2016	США	биография	Киаран Доннелли, Стефен Т. Кэй	76
2655	В четырех стенах (1 сезон)	https://kinokrad.co/304058-v-chetyreh-stenah-1-sezon-2016.html	7	2016	США	комедия	Энди Экерман	30
2656	Стэн против сил зла (1 сезон)	https://kinokrad.co/308201-stjen-protiv-sil-zla-1-sezon-2016.html	7	2016	США	ужасы, фэнтези, комедия, мистика	Джек Бишоп, Джастин Ниджм	30
2657	Тайны и ложь (2 сезон)	https://kinokrad.co/306905-tayny-i-lozh-2-sezon.html	7	2016	США	драма, детектив, триллер, криминал	Адам Аркин, Тимоти Басфилд, Кейт Дэннис	43
2658	Черноватый (3 сезон)	https://kinokrad.co/307061-chernovatyy-3-sezon.html	5	2016	США	комедия	Мэттью Сон, Кен Уиттингэм, Антон Кроппер	22
2659	Улицы разбитых фонарей (16 сезон)	https://kinokrad.co/303893-ulicy-razbityh-fonarey-16-sezon-2016.html	6	2016	Россия	боевик, драма, криминал, приключения	Александр Рогожкин, Дмитрий Светозаров, Кирилл Капица	48
2660	Стена (1 сезон)	https://kinokrad.co/308195-stena-1-sezon-2016.html	6	2016	Россия	история, военный, приключения	Дмитрий Месхиев	
2661	Тиран (3 сезон)	https://kinokrad.co/301193-tiran-3-sezon-2016.html	8	2016	США	боевик, триллер, драма	Гвинет Хердер-Пэйтон, Майкл Леманн, Питер Уэллер	60
2662	Зверинец (2 сезон)	https://kinokrad.co/298861-zverinec-2-sezon-2016.html	8	2016	США	фантастика, триллер, драма	Майкл Кэтлман, Стив Эделсон, Дэвид Соломон	42
2663	Рождение мафии: Чикаго (1 сезон)	https://kinokrad.co/301103-rozhdenie-mafii-chikago-1-sezon-2016.html	9	2016	США	документальный	Джон Илер	44
2664	Интерны (14 сезон)	https://kinokrad.co/286693-interny-14-sezon.html	5	2016	Россия	комедия	Максим Пежемский, Заур Болотаев, Милан Килибарда	25
2665	Секс, наркотики и рок-н-ролл (2 сезон)	https://kinokrad.co/299745-seks-narkotiki-i-rok-n-roll-2-sezon-2016.html	5	2016	США	комедия, музыка	Майкл Блиден, Дэнис Лири, Джим Серпико	21
2666	Бриджит и Имон (2 сезон)	https://kinokrad.co/318618-bridzhit-i-imon-2-sezon-2016.html	7	2016	Ирландия	комедия	Джейсон Батлер	45
2667	Морская полиция: Новый Орлеан (3 сезон)	https://kinokrad.co/322683-morskaya-policiya-novyy-orlean-3-sezon.html	8	2016	США	драма, криминал	Джеймс Хейман, Тони Уормби, Майкл Цинберг	42
2668	Лагерь Х (2 сезон)	https://kinokrad.co/298174-lager-x-2-sezon-2016.html	6	2016	Канада	драма, военный	Jamie Magnus Stone, Дэвид Фрэйзи, Джон Стриклэнд	44
2669	Кризис нежного возраста (1 сезон)	https://kinokrad.co/300630-krizis-nezhnogo-vozrasta-1-sezon-2016.html	7	2016	Россия	мелодрама, комедия	Наталья Меркулова, Алексей Чупов	48
2670	Все еще король (1 сезон)	https://kinokrad.co/297667-vse-esche-korol-1-sezon-2016.html	6	2016	США	комедия	Potsy Ponciroli, Джон Полл, Тамра Дэвис	22
2671	Другое время (2 сезон)	https://kinokrad.co/300372-drugoe-vremya-2-sezon-2016.html	5	2016	США	комедия, история	Джереми Коннер	21
2672	Ночная смена (3 сезон)	https://kinokrad.co/296098-nochnaya-smena-3-sezon-2016.html	7	2016	США	боевик, драма, комедия	Эрик Ла Салль, Дэвид Бойд, Тимоти Басфилд	42
2673	По волчьим законам (1 сезон)	https://kinokrad.co/298303-po-volchim-zakonam-1-sezon-2016.html	9	2016	США	драма, криминал	Кристофер Чулак, Джон Уэллс, Реджина Кинг	50
2674	Очень странные дела (1 сезон)	https://kinokrad.co/299793-ochen-strannye-dela-1-sezon-2016.html	9	2016	США	ужасы, фантастика, триллер, драма, детектив, мистика	Мэтт Даффер, Росс Даффер, Шон Леви	55
2675	Трансформеры: Скрытые роботы / Трансформеры: Роботы под прикрытием (2 сезон)	https://kinokrad.co/287440-transformery-roboty-pod-prikrytiem-2-sezon-2016.html	8	2016	США	мультфильм, боевик, комедия, приключения	Дэвид Хартман, Тодд Ватерман, Фрэнк Марино	23
2676	Гринлиф (1 сезон)	https://kinokrad.co/297886-grinlif-1-sezon-2016.html	6	2016	США	драма	Аллен Крокер, Клемент Вирго, Дженис Кук-Леонард	42
2677	Обед в пятницу вечером (4 сезон)	https://kinokrad.co/301910-obed-v-pyatnicu-vecherom-4-sezon-2016.html	6	2016	Великобритания	комедия	Мартин Деннис, Стив Бенделак	22
2678	Когда зовёт сердце (4 сезон)	https://kinokrad.co/320850-kogda-zovet-serdce-4-sezon-2016.html	9	2016	США	драма	Нилл Фернли, Майкл Лэндон мл., Мартин Вуд	43
2679	Ты, Я, Она (1 сезон)	https://kinokrad.co/298078-ty-ya-ona-1-sezon-2016.html	6	2016	США	комедия	Ниша Ганатра	60
2680	Умник / Умный человек (1 сезон)	https://kinokrad.co/297595-umnik-umnyy-chelovek-1-sezon-2016.html	7	2016	США, Австралия, Новая Зеландия	фантастика	Уэйн Блэр, Леа Пурселл	50
2681	Дорогой доктор (8 сезон)	https://kinokrad.co/295261-dorogoy-doktor-8-sezon-2016.html	6	2016	США	драма, комедия	Мэттью Пенн, Джей Чандрашекхар, Эмиль Левисетти	43
2682	Завтра все закончится (1 сезон)	https://kinokrad.co/297664-zavtra-vse-zakonchitsya-1-sezon-2016.html	7	2016	Германия	драма, криминал	Мартин Эйглер	60
2683	Доктор, доктор (1 сезон)	https://kinokrad.co/320822-doktor-doktor-1-sezon-2016.html	8	2016	Австралия	драма	Питер Сэлмон, Джереми Симс, Крив Стендерс	50
2684	ЧОП (2 сезон)	https://kinokrad.co/296839-chop-2-sezon-2016.html	7	2016	Россия	комедия	Михаил Соловьев	24
2685	Кремниевая долина (3 сезон)	https://kinokrad.co/294265-kremnievaya-dolina-3-sezon-2016.html	9	2016	США	комедия	Майк Джадж, Алек Берг, Чарли МакДауэлл	30
2686	Вышибала (1 сезон)	https://kinokrad.co/297505-vyshibala-1-sezon-2016.html	8	2016	Россия	драма, криминал	Сергей Крутин, Александр Аравин	46
2687	Марко Поло (2 сезон)	https://kinokrad.co/298900-marko-polo-2-sezon-2016.html	9	2016	США	драма, приключения, история	Даниэль Минахан, Дэвид Петрарка, Алик Сахаров	60
2688	Убийство (1 сезон)	https://kinokrad.co/299826-ubiystvo-1-sezon-2016-velikobritaniya.html	5	2016	Великобритания	криминал	Биргер Ларсен, Ян Форсис, Джейн Поллард	58
2689	Речные монстры (8 сезон)	https://kinokrad.co/298309-rechnye-monstry-8-sezon-2016.html	8	2016	США	документальный, детектив, приключения	Барни Ревилл, Доминик Уэстон, Charlie Bingham	43
2690	Конь БоДжек (3 сезон)	https://kinokrad.co/321490-kon-bodzhek-3-sezon-2016.html	5	2016	США	мультфильм, драма, комедия	JC Gonzalez, Amy Winfrey, Джоэль Мосер	25
2691	Между (2 сезон)	https://kinokrad.co/298903-mezhdu-2-sezon-2016.html	6	2016	Канада	фантастика, триллер, драма, детектив	Майкл МакГоун, Джон Кассар, Рик Бота	60
2692	Частные сыщики (1 сезон)	https://kinokrad.co/298081-chastnye-syschiki-1-sezon-2016.html	8	2016	Канада	драма	Келли Макин, Роберт Либерман, Шон Пиллер	43
2693	Сосны / Уэйуорд Пайнс (2 сезон)	https://kinokrad.co/295660-sosny-ueyuord-payns-2-sezon-2016.html	8	2016	США	фантастика, триллер, драма, детектив	Джефф Т. Томас, Зал Батманглидж, Тим Хантер	44
2694	Живые и мёртвые (1 сезон)	https://kinokrad.co/298864-zhivye-i-mjortvye-1-sezon-2016.html	8	2016	Великобритания	ужасы, триллер, драма, мистика	Сэмюэл Донован, Элис Тротон	60
2695	Особо тяжкие преступления (5 сезон)	https://kinokrad.co/298285-osobo-tyazhkie-prestupleniya-5-sezon-2016.html	6	2016	США	драма, криминал, детектив	Майкл М. Робин, Стив Робин, Дэвид МакУиртер	43
2696	Бюро легенд (2 сезон)	https://kinokrad.co/318178-byuro-legend-2-sezon-2016.html	7	2016	Франция	драма	Элье Систерн, Матье Деми, Эрик Рошан	52
2697	Белая ворона (1 сезон)	https://kinokrad.co/318978-belaya-vorona-1-sezon-2016.html	5	2016	США	комедия	Мелина Матсукас, Кевин Брэй, Дебби Аллен	30
2698	Доктор Блейк (4 сезон)	https://kinokrad.co/289861-doktor-bleyk-4-sezon-2016.html	8	2016	Австралия	детектив	Деклан Имис, Йен Бэрри, Эндрю Проуз	57
2699	Корни (1 сезон)	https://kinokrad.co/295669-korni-1-sezon-2016.html	8	2016	США	драма, история	Брюс Бересфорд, Томас Картер, Филлип Нойс	
2700	Родословная (2 сезон)	https://kinokrad.co/295666-rodoslovnaya-2-sezon-2016.html	5	2016	США	триллер, драма	Эдвард Бьянчи, Йохан Ренк, Дэниэл Эттиэс	60
2701	Волчья яма (1 сезон)	https://kinokrad.co/295657-volchya-yama-1-sezon-2016.html	8	2016	Австралия	ужасы, триллер, драма	Грег МакЛин, Тони Тилс	45
2702	Степные волки (1 сезон)	https://kinokrad.co/295285-stepnye-volki-1-sezon-2016.html	7	2016	Россия	драма, криминал	Евгений Сологалов, Дмитрий Матов	24
2703	Вторжение. Битва за рай (1 сезон)	https://kinokrad.co/294319-vtorzhenie-bitva-za-ray-1-sezon-2016.html	6	2016	Австралия	боевик, драма, приключения, семейный, военный	Брендан Махер	60
2704	Игра в молчанку (1 сезон)	https://kinokrad.co/293197-igra-v-molchanku-1-sezon-2016.html	7	2016	США	драма	Деран Сарафян, Холли Дэйл, Нильс Арден Оплев	60
2705	Марсель (1 сезон)	https://kinokrad.co/295129-marsel-1-sezon-2016.html	6	2016	Франция	драма	Тома Жилу, Флоран Эмилио Сири	41
2706	Школа рока (2 сезон)	https://kinokrad.co/317914-shkola-roka-2-sezon-2016.html	8	2016	США	мюзикл, комедия, семейный	Тревор Киршнер, Джонатан Джадж, Джей Коген	30
2707	Школа рока (1 сезон)	https://kinokrad.co/317910-shkola-roka-1-sezon-2016.html	8	2016	США	мюзикл, комедия, семейный	Тревор Киршнер, Джонатан Джадж, Джей Коген	30
2708	На ночь глядя (1 сезон)	https://kinokrad.co/317774-na-noch-glyadya-1-sezon-2016.html	7	2016	США	комедия	Джонни «Канзас» Милорд	21
2709	Бриджит и Имон (1 сезон)	https://kinokrad.co/318522-bridzhit-i-imon-1-sezon-2016.html	6	2016	Ирландия	комедия	Джейсон Батлер	40
2710	Сладкие и порочные (1 сезон)	https://kinokrad.co/317554-sladkie-i-porochnye-1-sezon-2016.html	7	2016	США	боевик, комедия, криминал	Тодд Бирман, Брайан Дэннели, Джозеф Кан	38
2711	Просто нет слов (1 сезон)	https://kinokrad.co/303383-prosto-net-slov-1-sezon-2016.html	6	2016	США	комедия	Уильям Перпл, Кристин Джернон	30
2712	Виктория (1 сезон)	https://kinokrad.co/303927-viktoriya-1-sezon-2016.html	7	2016	Великобритания	драма, биография, история	Оливер Блэкберн, Том Вон, Сандра Голдбахер	60
2713	Странная парочка (3 сезон)	https://kinokrad.co/312670-strannaya-parochka-3-sezon-2016.html	7	2016	США	комедия	Фил Льюис, Марк Сендроуски, Джефф Гринштейн	21
2714	Сын Зорна (1 сезон)	https://kinokrad.co/303680-syn-zorna-1-sezon-2016.html	7	2016	США	мультфильм, комедия	Эрик Аппель	30
2715	Мстители, общий сбор! (3 сезон)	https://kinokrad.co/279938-mstiteli-obschiy-sbor-3-sezon-2016.html	8	2016	США	комедия	Крис Бёрнс, Джексон МакДональд, Пэт Кларк	22
2716	Хорошее поведение (1 сезон)	https://kinokrad.co/308204-horoshee-povedenie-1-sezon-2016.html	8	2016	США	триллер, драма, криминал, детектив	Магнус Мартенс, Миккель Нёргор, Марк Пизнарский	60
2717	Ясновидец (1 сезон)	https://kinokrad.co/312410-yasnovidec-1-sezon-2016.html	8	2016	США	драма, криминал, мистика	Стивен Джилленхол, Бронуэн Хьюз, Кларк Джонсон	45
2718	Любовники (3 сезон)	https://kinokrad.co/308519-lyubovniki-3-sezon-2016.html	7	2016	США	драма	Джеффри Рейнер, Райан Флек, Джон Дал	60
2719	Люк Кейдж (1 сезон)	https://kinokrad.co/304541-lyuk-keydzh-1-sezon-2016.html	7	2016	США	фантастика, боевик, триллер, драма, криминал	Пол МакГиган, Фил Абрахам, Энди Годдард	55
2720	Все к лучшему / Перемены (1 сезон)	https://kinokrad.co/303080-vse-k-luchshemu-peremeny-1-sezon-2016.html	5	2016	США	комедия	Лэнс Бэнгс, Ниша Ганатра, Памела Адлон	30
2721	Отель «Бо Сежур» (1 сезон)	https://kinokrad.co/316526-otel-bo-sezhur-1-sezon.html	8	2016	Бельгия	драма, криминал, мистика	Nathalie Basteyns, Kaat Beels	52
2722	Государственный секретарь (3 сезон)	https://kinokrad.co/314382-gosudarstvennyy-sekretar-3-sezon-2016.html	6	2016	США	драма	Эрик Столц, Джонатан Браун, Феликс Энрикез Алькала	45
2723	19-2 / Девятнадцать Два (3 сезон)	https://kinokrad.co/303578-19-2-devyatnadcat-dva-3-sezon-2016.html	6	2016	Канада	драма, криминал	Луи Шокетт, Эрик Канюэль, Стефан Плещински	60
2724	Дарреллы (1 сезон)	https://kinokrad.co/294289-darrelly-1-sezon-2016.html	8	2016	Великобритания	драма, биография	Стив Бэррон, Роджер Голдби	60
2725	Бонг времени (1 сезон)	https://kinokrad.co/294196-bong-vremeni-1-sezon-2016.html	7	2016	США	комедия	Люсия Аньелло	22
2726	Бездельник (3 сезон)	https://kinokrad.co/294193-bezdelnik-3-sezon-2016.html	7	2016	США	комедия, фэнтези, мистика	Трой Миллер, Хит Калленс, Тодд Бирман	22
2727	Пустая корона (2 сезон)	https://kinokrad.co/293941-pustaya-korona-2-sezon-2016.html	7	2016	Великобритания	драма, история	Доминик Кук, Ричард Эйр, Руперт Гулд	132
2728	Путь (1 сезон)	https://kinokrad.co/290290-put-1-sezon-2016.html	7	2016	США	драма	Майк Кэхилл, Майкл Уивер	60
2729	Один из нас (1 сезон)	https://kinokrad.co/303374-odin-iz-nas-1-sezon-2016.html	7	2016	Великобритания	триллер	Уильям МакГрегор	60
2730	Мистер Робот (2 сезон)	https://kinokrad.co/298273-mister-robot-2-sezon-2016.html	7	2016	США	триллер, драма, криминал	Сэм Эсмейл, Джим МакКэй, Тришиа Брок	49
2731	Нераскрытый талант (1 сезон)	https://kinokrad.co/309065-neraskrytyy-talant-1-sezon-2016.html	7	2016	Беларусь	детектив	Владимир Янковский	46
2732	Настоящие О’Нилы (1 сезон)	https://kinokrad.co/290287-nastoyaschie-o-nily-1-sezon-2016.html	6	2016	США	комедия	Тодд Холлэнд, Ребекка Эшер, Кристин Джернон	30
2733	Опекун (1 сезон)	https://kinokrad.co/309062-opekun-1-sezon-2016.html	5	2016	Россия	детектив	Карен Захаров	43
2734	Семь первых поцелуев (1 сезон)	https://kinokrad.co/308993-sem-pervyh-poceluev-1-sezon-2016.html	6	2016	Корея Южная	комедия	Чон Джон-хва	15
2735	Детективное агентство Дирка Джентли (1 сезон)	https://kinokrad.co/308612-detektivnoe-agentstvo-dirka-dzhentli-1-sezon-2016.html	8	2016	США, Великобритания	фантастика, комедия	Пако Кабесас, Дин Паризо, Майкл Патрик Джэнн	60
2736	Дурная слава (1 сезон)	https://kinokrad.co/307391-durnaya-slava-1-sezon-2016.html	7	2016	США	триллер, драма	Майкл Энглер, Майк Листо, Ларри Шоу	60
2737	Сшиватели (2 сезон)	https://kinokrad.co/292765-sshivateli-2-sezon-2016.html	7	2016		фантастика, драма, криминал	Стив Майнер, Дженис Кук-Леонард, Роб Дж. Гринли	60
2738	Странная парочка (2 сезон)	https://kinokrad.co/293470-strannaya-parochka-2-sezon-2016.html	6	2016	США	комедия	Фил Льюис, Марк Сендроуски, Энди Кэдифф	21
2739	Слепая (3 сезон)	https://kinokrad.co/301808-slepaya-3-sezon-2016.html	7	2016	Россия	драма	Кира Мещерякова, Алина Поличук, Дмитрий Ющенко	24
2740	Последствия (1 сезон)	https://kinokrad.co/307151-posledstviya-1-sezon.html	7	2016	Канада	фантастика, мистика	Кааре Эндрюс, Джеймс Маршалл, Эйприл Маллен	60
2741	Бездельницы (4 сезон)	https://kinokrad.co/309602-bezdelnicy-4-sezon-2016.html	5	2016	Великобритания	комедия	Аль Кэмпбелл, Саймон Делани, Том Маршалл	23
2742	Вероника не хочет умирать (1 сезон)	https://kinokrad.co/308912-veronika-ne-hochet-umirat-1-sezon-2016.html	4	2016	Россия	детектив, мелодрама	Ольга Музалева	44
2743	Коварные игры (1 сезон)	https://kinokrad.co/308909-kovarnye-igry-1-sezon-2016.html	4	2016	Россия	мелодрамы	Петр Степин	45
2744	Доктор Шанс (1 сезон)	https://kinokrad.co/308903-doktor-shans-1-sezon-2016.html	8	2016	США	триллер	Дэниэл Эттиэс, Майкл Леманн, Леонард Абрахамсон	60
2745	Что-то около 1% (1 сезон)	https://kinokrad.co/308846-chto-to-okolo-1-1-sezon-2016.html	8	2016	Корея Южная		Кан Чхор-у	60
2746	Выйти замуж любой ценой (1 сезон)	https://kinokrad.co/308837-vyyti-zamuzh-lyuboy-cenoy-1-sezon-2016.html	5	2016	Россия	мелодрама, детектив	Александр Сухарев	45
2747	Ошибки прошлого / Исправлять ошибки (4 сезон)	https://kinokrad.co/313978-oshibki-proshlogo-ispravlyat-oshibki-4-sezon-2016.html	6	2016	США	драма	Стивен Джилленхол, Билл Джирхарт, Рэй МакКиннон	46
2748	Кордон (2 сезон)	https://kinokrad.co/313410-kordon-2-sezon-2016.html	7	2016	Бельгия	драма	Тим Милантс, Eshref Reybrouck	50
2749	Дело Дойлов (6 сезон)	https://kinokrad.co/271684-delo-doylov-6-sezon-2016.html	8	2016	Канада	драма, комедия, криминал	Стефан Скайни, Джон Ватчер, Кит Сэмплз	43
2750	Звёздные войны: Повстанцы (3 сезон)	https://kinokrad.co/307424-zvezdnye-voyny-povstancy-3-sezon-2016.html	8	2016	США	мультфильм, фантастика, боевик, приключения	Дэйв Филони, Стюарт Ли, Боско ЭнДжи	30
2751	Сексуальное убийство (1 сезон)	https://kinokrad.co/313818-seksualnoe-ubiystvo-1-sezon-2016.html	5	2016	Великобритания	комедия	Сейн МакДжилликадди	5
2752	Супермаркет (2 сезон)	https://kinokrad.co/305723-supermarket.html	5	2016	США	комедия	Рубен Флейшер, Виктор Нелли мл., Майкл Патрик Джэнн	30
2753	Под прикрытием (2 сезон)	https://kinokrad.co/315290-pod-prikrytiem-2-sezon-2016.html	7	2016	Канада, США	драма, криминал, биография, история	Rawles Neil, Карл Хиндмарч, Джон Л’Экуаер	42
2754	Изгои (2 сезон)	https://kinokrad.co/304532-izgoi-2-sezon-2017.html	7	2016	США	драма	Джон Эмиел, Адам Бернштейн, Эндрю Бернштейн	60
7754	Сцена (1 сезон)	https://kinokrad.co/282274-scena-1-sezon-2004.html	7	2004	США	драма, детектив	Митчелл Рэйчгут	20
2755	Коварные горничные (4 сезон)	https://kinokrad.co/294493-kovarnye-gornichnye-4-sezon-2016.html	8	2016	США	драма, комедия, детектив	Дэвид Уоррен, Тара Николь Вейр, Тауния Маккирнан	43
2756	Руководство по выживанию от Купера Баррэта (1 сезон)	https://kinokrad.co/285975-rukovodstvo-po-vyzhivaniyu-ot-kupera-barrjeta-1-sezon-2016.html	7	2016	США	комедия	Джеймс Гриффитс	23
2757	Я люблю Дика (1 сезон)	https://kinokrad.co/305705-ya-lyublyu-dika-1-sezon-2016.html	4	2016	США	комедия	Джилл Солоуэй	
2758	Вижу-знаю (1 сезон)	https://kinokrad.co/298867-vizhu-znayu-1-sezon-2016.html	5	2016	Россия	криминал, боевик	Алексей Луканев, Эльдар Салаватов	46
2759	Сверхспособности / Силы (2 сезон)	https://kinokrad.co/296017-sverhsposobnosti-2-sezon-2016.html	6	2016	США	фантастика, драма, криминал	Микаэл Саломон, Билл Иглз, Дэвид Петрарка	42
2760	Роковые ошибки Тодда Маргарета (3 сезон)	https://kinokrad.co/298396-rokovye-oshibki-todda-margareta-3-sezon-2016.html	5	2016	США, Великобритания	комедия	Алекс Хардкасл, Бен Грегор, Джон Хардвик	22
2761	Энджи Трайбека (2 сезон)	https://kinokrad.co/301616-jendzhi-traybeka-2-sezon-2016.html	6	2016	США	комедия, криминал, детектив	Стив Пинк, Ира Унгерилидер, Дэн Бирс	30
2762	Энджи Трайбека (1 сезон)	https://kinokrad.co/301613-jendzhi-traybeka-1-sezon-2016.html	6	2016	США	комедия, криминал, детектив	Стив Пинк, Ира Унгерилидер, Дэн Бирс	30
2763	Чужестранка (2 сезон)	https://kinokrad.co/281609-chuzhestranka-2-sezon-2016.html	9	2016	США, Великобритания	фантастика, драма, мелодрама	Анна Ферстер, Брайан Келли, Джон Дал	60
2764	Два отца и два сына (3 сезон)	https://kinokrad.co/300627-dva-otca-i-dva-syna-3-sezon-2016.html	7	2016	Россия	комедия, семейный	Радда Новикова	24
2765	12 обезьян (2 сезон)	https://kinokrad.co/290497-12-obezyan-2-sezon-2016.html	7	2016	США	фантастика, триллер, драма, детектив, приключения	Дэвид Гроссман, Магнус Мартенс, Майкл Ваксман	42
2766	Любовницы (4 сезон)	https://kinokrad.co/295912-lyubovnicy-4-sezon-2016.html	7	2016	США, Великобритания	триллер, драма	Джон Скотт, Константин Макрис, Крис Мисиано	43
2767	Карантин (1 сезон)	https://kinokrad.co/290656-karantin-1-sezon-2016.html	9	2016	США	драма	Чарльз Бисон, Крис Грисмер, Дэвид Наттер	60
2768	Парни из Трейлерпарка (10 сезон)	https://kinokrad.co/321262-parni-iz-treylerparka-10-sezon-2016.html	6	2016	Канада	драма, комедия, криминал	Майк Клаттенбёрг, Рон Мерфи, Кори Боулз	30
2769	Убийство первой степени (3 сезон)	https://kinokrad.co/299814-ubiystvo-pervoy-stepeni-3-sezon-2016.html	7	2016	США	драма, криминал, детектив	Джесси Бокко, Эллисон Андерс, Реджинальд Хадлин	42
2770	Мэрон (4 сезон)	https://kinokrad.co/295264-mjeron-4-sezon-2016.html	6	2016	США	комедия	Боб Голдтуэйт, Люк Мэзени, Роберт Коэн	22
2771	Восстание варваров (1 сезон)	https://kinokrad.co/298870-vosstanie-varvarov-1-sezon-2016.html	8	2016	США	документальный	Саймон Джордж, Деклан О’Двайр, Морис Суини	84
2772	Граница (1 сезон)	https://kinokrad.co/322387-granica-1-sezon.html	8	2016	Канада	приключения	Кен Джиротти, Брэд Пейтон, Келли Макин	60
2773	Это мы (1 сезон)	https://kinokrad.co/305585-jeto-my-1-sezon-2016.html	8	2016	США	драма, комедия	Гленн Фикарра, Джон Рекуа, Сара Пиа Андерсон	45
2774	Виксен (2 сезон)	https://kinokrad.co/308171-viksen-2-sezon-2016.html	6	2016	США	мультфильм, короткометражка, фантастика, боевик, приключения	Джеймс Такер, Курт Геда	5
2775	Агата Рейзин (1 сезон)	https://kinokrad.co/301805-agatha-raisin-1-sezon-2016.html	8	2016	Великобритания	комедия, детектив	Джеффри Сакс	43
2776	Мотив (4 сезон)	https://kinokrad.co/292450-motiv-4-sezon-2016.html	7	2016	Канада	триллер, драма, криминал, детектив	Энди Микита, Стурла Гуннарссон, Дэвид Фрэйзи	42
2777	Потомки солнца (1 сезон)	https://kinokrad.co/287956-potomki-solnca-1-sezon-2016.html	8	2016	Корея Южная	мелодрама	Ли Юнг Бок	60
2778	Гастролёры (1 сезон)	https://kinokrad.co/297883-gastroljory-1-sezon-2016.html	6	2016	США	драма, комедия, музыка	Кэмерон Кроу	49
2779	Великие умы с Дэном Хэрмоном (1 сезон)	https://kinokrad.co/292003-velikie-umy-s-djenom-hjermonom-1-sezon-2016.html	6	2016	США	комедия	Хит Калленс	10
2780	Отель Элеон (1 сезон)	https://kinokrad.co/307655-otel-jeleon-1-sezon-2016.html	8	2016	Россия, Украина	комедия	Антон Федотов, Антон Маслов	24
2781	Наваждение (1 сезон)	https://kinokrad.co/308162-navazhdenie-1-sezon-2016.html	5	2016	Россия	детектив, мелодрама	Марина Мигунова	53
2782	Она сбила лётчика (1 сезон)	https://kinokrad.co/308156-ona-sbila-ljotchika-1-sezon-2016.html	4	2016	Россия	мелодрама	Артем Насыбулин	43
2783	Случай в Кеттеринге (1 сезон)	https://kinokrad.co/301754-sluchay-v-ketteringe-1-sezon-2016.html	6	2016	Австралия	триллер, драма, криминал, детектив	Роуэн Вудс, Тони Кравиц	60
2784	Барракуда (1 сезон)	https://kinokrad.co/301619-barracuda-1-sezon-2016.html	6	2016	Австралия	драма	Роберт Коннолли	55
2785	ПрепАды / Те, кто не могут (1 сезон)	https://kinokrad.co/295255-those-who-cant-1-sezon-2016.html	7	2016	США	комедия	Адам Никс, Ивэн Никс, Боб Голдтуэйт	30
2786	Агент / Поворот (3 сезон)	https://kinokrad.co/290314-agent-3-sezon-2016.html	7	2016	США	драма, военный	Джереми Уэбб, Эгил Эгилссон, Майкл Аппендаль	60
2787	Американский папаша (12 сезон)	https://kinokrad.co/287073-amerikanskiy-papasha-12-sezon-2016.html	7	2016	США	мультфильм, комедия	Рон Хьюгарт, Брент Вудс, Энтони Льои	22
2788	Вице-президент (5 сезон)	https://kinokrad.co/294292-vice-prezident-5-sezon-2016.html	7	2016	США	комедия	Крис Эддисон, Бекки Мартин, Армандо Ианнуччи	30
2789	Мушкетеры (3 сезон)	https://kinokrad.co/294682-mushketery-3-sezon-2016.html	8	2016	Великобритания	драма, приключения	Энди Хэй, Николас Рентон, Фэррен Блэкберн	55
2790	Вайнона Эрп (1 сезон)	https://kinokrad.co/290293-vaynona-jerp-1-sezon-2016.html	7	2016	США, Канада	фэнтези, боевик, триллер, драма, детектив, вестерн, мистика	Рон Мерфи, Питер Стеббингс, Бретт Салливан	60
2791	В поле зрения (5 сезон)	https://kinokrad.co/294796-v-pole-zreniya-5-sezon-2016.html	9	2016	США	фантастика, боевик, триллер, драма, детектив	Крис Фишер, Ричард Дж. Льюис, Фред Туа	44
2792	Страшные сказки (3 сезон)	https://kinokrad.co/289792-strashnye-skazki-3-sezon-2016.html	9	2016	США, Ирландия, Великобритания	ужасы, фэнтези, драма	Джеймс Хоуз, Брайан Кирк, Пако Кабесас	60
2793	Переломные моменты истории (1 сезон)	https://kinokrad.co/293338-perelomnye-momenty-istorii-1-sezon-2016.html	6	2016	США	комедия	Марко Славнич, Джек Бишоп, Justin Nijm	10
2794	Подкидыши (1 сезон)	https://kinokrad.co/293335-podkidyshi-1-sezon-2016.html	8	2016	Украина	драма, мелодрама	Максим Паперник, Владимир Мельниченко	46
2795	Несгибаемая Кимми Шмидт (2 сезон)	https://kinokrad.co/293329-nesgibaemaya-kimmi-shmidt-2-sezon-2016.html	6	2016	США	комедия	Тристрам Шапиро, Майкл Энглер, Бет МакКарти-Миллер	30
2796	Семья (1 сезон)	https://kinokrad.co/287605-semya-1-sezon-2016.html	8	2016	США	драма, детектив	Джон Грэй, Эндрю МакКарти, Холли Дэйл	60
2797	Всем всего хорошего (1 сезон)	https://kinokrad.co/295126-vsem-vsego-horoshego-1-sezon-2016.html	5	2016	Россия	комедия	Валерий Усков	52
2798	Куку (3 сезон)	https://kinokrad.co/292360-kuku-3-sezon-2016.html	6	2016	Великобритания	комедия	Бен Тэйлор, Пол Мерфи	22
2799	Скрытое (1 сезон)	https://kinokrad.co/294502-skrytoe-1-sezon-2016.html	7	2016	Великобритания	триллер, драма	Джеймс Хоуз, Джим О’Хенлон	58
2800	Арчер (7 сезон)	https://kinokrad.co/291325-archer-7-sezon-2016.html	7	2016	США	мультфильм, боевик, комедия	Адам Рид, Брайан Фордни	22
2801	Волчья яма (1 сезон)	https://kinokrad.co/295657-volchya-yama-1-sezon-2016.html	8	2016	Австралия	ужасы, триллер, драма	Грег МакЛин, Тони Тилс	45
2802	Степные волки (1 сезон)	https://kinokrad.co/295285-stepnye-volki-1-sezon-2016.html	7	2016	Россия	драма, криминал	Евгений Сологалов, Дмитрий Матов	24
2803	Вторжение. Битва за рай (1 сезон)	https://kinokrad.co/294319-vtorzhenie-bitva-za-ray-1-sezon-2016.html	6	2016	Австралия	боевик, драма, приключения, семейный, военный	Брендан Махер	60
2804	Игра в молчанку (1 сезон)	https://kinokrad.co/293197-igra-v-molchanku-1-sezon-2016.html	7	2016	США	драма	Деран Сарафян, Холли Дэйл, Нильс Арден Оплев	60
2805	Марсель (1 сезон)	https://kinokrad.co/295129-marsel-1-sezon-2016.html	6	2016	Франция	драма	Тома Жилу, Флоран Эмилио Сири	41
2806	Школа рока (2 сезон)	https://kinokrad.co/317914-shkola-roka-2-sezon-2016.html	8	2016	США	мюзикл, комедия, семейный	Тревор Киршнер, Джонатан Джадж, Джей Коген	30
2807	Школа рока (1 сезон)	https://kinokrad.co/317910-shkola-roka-1-sezon-2016.html	8	2016	США	мюзикл, комедия, семейный	Тревор Киршнер, Джонатан Джадж, Джей Коген	30
2808	На ночь глядя (1 сезон)	https://kinokrad.co/317774-na-noch-glyadya-1-sezon-2016.html	7	2016	США	комедия	Джонни «Канзас» Милорд	21
2809	Бриджит и Имон (1 сезон)	https://kinokrad.co/318522-bridzhit-i-imon-1-sezon-2016.html	6	2016	Ирландия	комедия	Джейсон Батлер	40
2810	Сладкие и порочные (1 сезон)	https://kinokrad.co/317554-sladkie-i-porochnye-1-sezon-2016.html	7	2016	США	боевик, комедия, криминал	Тодд Бирман, Брайан Дэннели, Джозеф Кан	38
2811	Просто нет слов (1 сезон)	https://kinokrad.co/303383-prosto-net-slov-1-sezon-2016.html	6	2016	США	комедия	Уильям Перпл, Кристин Джернон	30
2812	Виктория (1 сезон)	https://kinokrad.co/303927-viktoriya-1-sezon-2016.html	7	2016	Великобритания	драма, биография, история	Оливер Блэкберн, Том Вон, Сандра Голдбахер	60
2813	Странная парочка (3 сезон)	https://kinokrad.co/312670-strannaya-parochka-3-sezon-2016.html	7	2016	США	комедия	Фил Льюис, Марк Сендроуски, Джефф Гринштейн	21
2814	Сын Зорна (1 сезон)	https://kinokrad.co/303680-syn-zorna-1-sezon-2016.html	7	2016	США	мультфильм, комедия	Эрик Аппель	30
2815	Мстители, общий сбор! (3 сезон)	https://kinokrad.co/279938-mstiteli-obschiy-sbor-3-sezon-2016.html	8	2016	США	комедия	Крис Бёрнс, Джексон МакДональд, Пэт Кларк	22
2816	Хорошее поведение (1 сезон)	https://kinokrad.co/308204-horoshee-povedenie-1-sezon-2016.html	8	2016	США	триллер, драма, криминал, детектив	Магнус Мартенс, Миккель Нёргор, Марк Пизнарский	60
2817	Ясновидец (1 сезон)	https://kinokrad.co/312410-yasnovidec-1-sezon-2016.html	8	2016	США	драма, криминал, мистика	Стивен Джилленхол, Бронуэн Хьюз, Кларк Джонсон	45
2818	Любовники (3 сезон)	https://kinokrad.co/308519-lyubovniki-3-sezon-2016.html	7	2016	США	драма	Джеффри Рейнер, Райан Флек, Джон Дал	60
2819	Люк Кейдж (1 сезон)	https://kinokrad.co/304541-lyuk-keydzh-1-sezon-2016.html	7	2016	США	фантастика, боевик, триллер, драма, криминал	Пол МакГиган, Фил Абрахам, Энди Годдард	55
2820	Все к лучшему / Перемены (1 сезон)	https://kinokrad.co/303080-vse-k-luchshemu-peremeny-1-sezon-2016.html	5	2016	США	комедия	Лэнс Бэнгс, Ниша Ганатра, Памела Адлон	30
2821	Отель «Бо Сежур» (1 сезон)	https://kinokrad.co/316526-otel-bo-sezhur-1-sezon.html	8	2016	Бельгия	драма, криминал, мистика	Nathalie Basteyns, Kaat Beels	52
2822	Государственный секретарь (3 сезон)	https://kinokrad.co/314382-gosudarstvennyy-sekretar-3-sezon-2016.html	6	2016	США	драма	Эрик Столц, Джонатан Браун, Феликс Энрикез Алькала	45
2823	19-2 / Девятнадцать Два (3 сезон)	https://kinokrad.co/303578-19-2-devyatnadcat-dva-3-sezon-2016.html	6	2016	Канада	драма, криминал	Луи Шокетт, Эрик Канюэль, Стефан Плещински	60
2824	Дарреллы (1 сезон)	https://kinokrad.co/294289-darrelly-1-sezon-2016.html	8	2016	Великобритания	драма, биография	Стив Бэррон, Роджер Голдби	60
2825	Бонг времени (1 сезон)	https://kinokrad.co/294196-bong-vremeni-1-sezon-2016.html	7	2016	США	комедия	Люсия Аньелло	22
2826	Бездельник (3 сезон)	https://kinokrad.co/294193-bezdelnik-3-sezon-2016.html	7	2016	США	комедия, фэнтези, мистика	Трой Миллер, Хит Калленс, Тодд Бирман	22
2827	Пустая корона (2 сезон)	https://kinokrad.co/293941-pustaya-korona-2-sezon-2016.html	7	2016	Великобритания	драма, история	Доминик Кук, Ричард Эйр, Руперт Гулд	132
2828	Путь (1 сезон)	https://kinokrad.co/290290-put-1-sezon-2016.html	7	2016	США	драма	Майк Кэхилл, Майкл Уивер	60
2829	Один из нас (1 сезон)	https://kinokrad.co/303374-odin-iz-nas-1-sezon-2016.html	7	2016	Великобритания	триллер	Уильям МакГрегор	60
2830	Мистер Робот (2 сезон)	https://kinokrad.co/298273-mister-robot-2-sezon-2016.html	7	2016	США	триллер, драма, криминал	Сэм Эсмейл, Джим МакКэй, Тришиа Брок	49
2831	Нераскрытый талант (1 сезон)	https://kinokrad.co/309065-neraskrytyy-talant-1-sezon-2016.html	7	2016	Беларусь	детектив	Владимир Янковский	46
2832	Настоящие О’Нилы (1 сезон)	https://kinokrad.co/290287-nastoyaschie-o-nily-1-sezon-2016.html	6	2016	США	комедия	Тодд Холлэнд, Ребекка Эшер, Кристин Джернон	30
2833	Опекун (1 сезон)	https://kinokrad.co/309062-opekun-1-sezon-2016.html	5	2016	Россия	детектив	Карен Захаров	43
2834	Семь первых поцелуев (1 сезон)	https://kinokrad.co/308993-sem-pervyh-poceluev-1-sezon-2016.html	6	2016	Корея Южная	комедия	Чон Джон-хва	15
2835	Детективное агентство Дирка Джентли (1 сезон)	https://kinokrad.co/308612-detektivnoe-agentstvo-dirka-dzhentli-1-sezon-2016.html	8	2016	США, Великобритания	фантастика, комедия	Пако Кабесас, Дин Паризо, Майкл Патрик Джэнн	60
2836	Дурная слава (1 сезон)	https://kinokrad.co/307391-durnaya-slava-1-sezon-2016.html	7	2016	США	триллер, драма	Майкл Энглер, Майк Листо, Ларри Шоу	60
2837	Сшиватели (2 сезон)	https://kinokrad.co/292765-sshivateli-2-sezon-2016.html	7	2016		фантастика, драма, криминал	Стив Майнер, Дженис Кук-Леонард, Роб Дж. Гринли	60
2838	Странная парочка (2 сезон)	https://kinokrad.co/293470-strannaya-parochka-2-sezon-2016.html	6	2016	США	комедия	Фил Льюис, Марк Сендроуски, Энди Кэдифф	21
2839	Слепая (3 сезон)	https://kinokrad.co/301808-slepaya-3-sezon-2016.html	7	2016	Россия	драма	Кира Мещерякова, Алина Поличук, Дмитрий Ющенко	24
2840	Последствия (1 сезон)	https://kinokrad.co/307151-posledstviya-1-sezon.html	7	2016	Канада	фантастика, мистика	Кааре Эндрюс, Джеймс Маршалл, Эйприл Маллен	60
2841	Бездельницы (4 сезон)	https://kinokrad.co/309602-bezdelnicy-4-sezon-2016.html	5	2016	Великобритания	комедия	Аль Кэмпбелл, Саймон Делани, Том Маршалл	23
2842	Вероника не хочет умирать (1 сезон)	https://kinokrad.co/308912-veronika-ne-hochet-umirat-1-sezon-2016.html	4	2016	Россия	детектив, мелодрама	Ольга Музалева	44
2843	Коварные игры (1 сезон)	https://kinokrad.co/308909-kovarnye-igry-1-sezon-2016.html	4	2016	Россия	мелодрамы	Петр Степин	45
2844	Доктор Шанс (1 сезон)	https://kinokrad.co/308903-doktor-shans-1-sezon-2016.html	8	2016	США	триллер	Дэниэл Эттиэс, Майкл Леманн, Леонард Абрахамсон	60
2845	Что-то около 1% (1 сезон)	https://kinokrad.co/308846-chto-to-okolo-1-1-sezon-2016.html	8	2016	Корея Южная		Кан Чхор-у	60
2846	Выйти замуж любой ценой (1 сезон)	https://kinokrad.co/308837-vyyti-zamuzh-lyuboy-cenoy-1-sezon-2016.html	5	2016	Россия	мелодрама, детектив	Александр Сухарев	45
2847	Ошибки прошлого / Исправлять ошибки (4 сезон)	https://kinokrad.co/313978-oshibki-proshlogo-ispravlyat-oshibki-4-sezon-2016.html	6	2016	США	драма	Стивен Джилленхол, Билл Джирхарт, Рэй МакКиннон	46
2848	Кордон (2 сезон)	https://kinokrad.co/313410-kordon-2-sezon-2016.html	7	2016	Бельгия	драма	Тим Милантс, Eshref Reybrouck	50
3036	Подача (1 сезон)	https://kinokrad.co/307148-podacha-1-sezon.html	8	2016	США	драма, спорт	Пэрис Барклай, Кеннет Финк, Реджина Кинг	60
2849	Дело Дойлов (6 сезон)	https://kinokrad.co/271684-delo-doylov-6-sezon-2016.html	8	2016	Канада	драма, комедия, криминал	Стефан Скайни, Джон Ватчер, Кит Сэмплз	43
2850	Звёздные войны: Повстанцы (3 сезон)	https://kinokrad.co/307424-zvezdnye-voyny-povstancy-3-sezon-2016.html	8	2016	США	мультфильм, фантастика, боевик, приключения	Дэйв Филони, Стюарт Ли, Боско ЭнДжи	30
2851	Сексуальное убийство (1 сезон)	https://kinokrad.co/313818-seksualnoe-ubiystvo-1-sezon-2016.html	5	2016	Великобритания	комедия	Сейн МакДжилликадди	5
2852	Супермаркет (2 сезон)	https://kinokrad.co/305723-supermarket.html	5	2016	США	комедия	Рубен Флейшер, Виктор Нелли мл., Майкл Патрик Джэнн	30
2853	Под прикрытием (2 сезон)	https://kinokrad.co/315290-pod-prikrytiem-2-sezon-2016.html	7	2016	Канада, США	драма, криминал, биография, история	Rawles Neil, Карл Хиндмарч, Джон Л’Экуаер	42
2854	Изгои (2 сезон)	https://kinokrad.co/304532-izgoi-2-sezon-2017.html	7	2016	США	драма	Джон Эмиел, Адам Бернштейн, Эндрю Бернштейн	60
2855	Коварные горничные (4 сезон)	https://kinokrad.co/294493-kovarnye-gornichnye-4-sezon-2016.html	8	2016	США	драма, комедия, детектив	Дэвид Уоррен, Тара Николь Вейр, Тауния Маккирнан	43
2856	Руководство по выживанию от Купера Баррэта (1 сезон)	https://kinokrad.co/285975-rukovodstvo-po-vyzhivaniyu-ot-kupera-barrjeta-1-sezon-2016.html	7	2016	США	комедия	Джеймс Гриффитс	23
2857	Я люблю Дика (1 сезон)	https://kinokrad.co/305705-ya-lyublyu-dika-1-sezon-2016.html	4	2016	США	комедия	Джилл Солоуэй	
2858	Вижу-знаю (1 сезон)	https://kinokrad.co/298867-vizhu-znayu-1-sezon-2016.html	5	2016	Россия	криминал, боевик	Алексей Луканев, Эльдар Салаватов	46
2859	Сверхспособности / Силы (2 сезон)	https://kinokrad.co/296017-sverhsposobnosti-2-sezon-2016.html	6	2016	США	фантастика, драма, криминал	Микаэл Саломон, Билл Иглз, Дэвид Петрарка	42
2860	Роковые ошибки Тодда Маргарета (3 сезон)	https://kinokrad.co/298396-rokovye-oshibki-todda-margareta-3-sezon-2016.html	5	2016	США, Великобритания	комедия	Алекс Хардкасл, Бен Грегор, Джон Хардвик	22
2861	Энджи Трайбека (2 сезон)	https://kinokrad.co/301616-jendzhi-traybeka-2-sezon-2016.html	6	2016	США	комедия, криминал, детектив	Стив Пинк, Ира Унгерилидер, Дэн Бирс	30
2862	Энджи Трайбека (1 сезон)	https://kinokrad.co/301613-jendzhi-traybeka-1-sezon-2016.html	6	2016	США	комедия, криминал, детектив	Стив Пинк, Ира Унгерилидер, Дэн Бирс	30
2863	Чужестранка (2 сезон)	https://kinokrad.co/281609-chuzhestranka-2-sezon-2016.html	9	2016	США, Великобритания	фантастика, драма, мелодрама	Анна Ферстер, Брайан Келли, Джон Дал	60
2864	Два отца и два сына (3 сезон)	https://kinokrad.co/300627-dva-otca-i-dva-syna-3-sezon-2016.html	7	2016	Россия	комедия, семейный	Радда Новикова	24
2865	12 обезьян (2 сезон)	https://kinokrad.co/290497-12-obezyan-2-sezon-2016.html	7	2016	США	фантастика, триллер, драма, детектив, приключения	Дэвид Гроссман, Магнус Мартенс, Майкл Ваксман	42
2866	Любовницы (4 сезон)	https://kinokrad.co/295912-lyubovnicy-4-sezon-2016.html	7	2016	США, Великобритания	триллер, драма	Джон Скотт, Константин Макрис, Крис Мисиано	43
2867	Карантин (1 сезон)	https://kinokrad.co/290656-karantin-1-sezon-2016.html	9	2016	США	драма	Чарльз Бисон, Крис Грисмер, Дэвид Наттер	60
2868	Парни из Трейлерпарка (10 сезон)	https://kinokrad.co/321262-parni-iz-treylerparka-10-sezon-2016.html	6	2016	Канада	драма, комедия, криминал	Майк Клаттенбёрг, Рон Мерфи, Кори Боулз	30
2869	Убийство первой степени (3 сезон)	https://kinokrad.co/299814-ubiystvo-pervoy-stepeni-3-sezon-2016.html	7	2016	США	драма, криминал, детектив	Джесси Бокко, Эллисон Андерс, Реджинальд Хадлин	42
2870	Мэрон (4 сезон)	https://kinokrad.co/295264-mjeron-4-sezon-2016.html	6	2016	США	комедия	Боб Голдтуэйт, Люк Мэзени, Роберт Коэн	22
2871	Восстание варваров (1 сезон)	https://kinokrad.co/298870-vosstanie-varvarov-1-sezon-2016.html	8	2016	США	документальный	Саймон Джордж, Деклан О’Двайр, Морис Суини	84
2872	Граница (1 сезон)	https://kinokrad.co/322387-granica-1-sezon.html	8	2016	Канада	приключения	Кен Джиротти, Брэд Пейтон, Келли Макин	60
2873	Это мы (1 сезон)	https://kinokrad.co/305585-jeto-my-1-sezon-2016.html	8	2016	США	драма, комедия	Гленн Фикарра, Джон Рекуа, Сара Пиа Андерсон	45
2874	Виксен (2 сезон)	https://kinokrad.co/308171-viksen-2-sezon-2016.html	6	2016	США	мультфильм, короткометражка, фантастика, боевик, приключения	Джеймс Такер, Курт Геда	5
2875	Агата Рейзин (1 сезон)	https://kinokrad.co/301805-agatha-raisin-1-sezon-2016.html	8	2016	Великобритания	комедия, детектив	Джеффри Сакс	43
2876	Мотив (4 сезон)	https://kinokrad.co/292450-motiv-4-sezon-2016.html	7	2016	Канада	триллер, драма, криминал, детектив	Энди Микита, Стурла Гуннарссон, Дэвид Фрэйзи	42
2877	Потомки солнца (1 сезон)	https://kinokrad.co/287956-potomki-solnca-1-sezon-2016.html	8	2016	Корея Южная	мелодрама	Ли Юнг Бок	60
2878	Гастролёры (1 сезон)	https://kinokrad.co/297883-gastroljory-1-sezon-2016.html	6	2016	США	драма, комедия, музыка	Кэмерон Кроу	49
3198	Подземка (1 сезон)	https://kinokrad.co/289930-podzemka-1-sezon-2016.html	8	2016	США	драма, история	Энтони Хемингуэй	60
2879	Великие умы с Дэном Хэрмоном (1 сезон)	https://kinokrad.co/292003-velikie-umy-s-djenom-hjermonom-1-sezon-2016.html	6	2016	США	комедия	Хит Калленс	10
2880	Отель Элеон (1 сезон)	https://kinokrad.co/307655-otel-jeleon-1-sezon-2016.html	8	2016	Россия, Украина	комедия	Антон Федотов, Антон Маслов	24
2881	Наваждение (1 сезон)	https://kinokrad.co/308162-navazhdenie-1-sezon-2016.html	5	2016	Россия	детектив, мелодрама	Марина Мигунова	53
2882	Она сбила лётчика (1 сезон)	https://kinokrad.co/308156-ona-sbila-ljotchika-1-sezon-2016.html	4	2016	Россия	мелодрама	Артем Насыбулин	43
2883	Случай в Кеттеринге (1 сезон)	https://kinokrad.co/301754-sluchay-v-ketteringe-1-sezon-2016.html	6	2016	Австралия	триллер, драма, криминал, детектив	Роуэн Вудс, Тони Кравиц	60
2884	Барракуда (1 сезон)	https://kinokrad.co/301619-barracuda-1-sezon-2016.html	6	2016	Австралия	драма	Роберт Коннолли	55
2885	ПрепАды / Те, кто не могут (1 сезон)	https://kinokrad.co/295255-those-who-cant-1-sezon-2016.html	7	2016	США	комедия	Адам Никс, Ивэн Никс, Боб Голдтуэйт	30
2886	Агент / Поворот (3 сезон)	https://kinokrad.co/290314-agent-3-sezon-2016.html	7	2016	США	драма, военный	Джереми Уэбб, Эгил Эгилссон, Майкл Аппендаль	60
2887	Американский папаша (12 сезон)	https://kinokrad.co/287073-amerikanskiy-papasha-12-sezon-2016.html	7	2016	США	мультфильм, комедия	Рон Хьюгарт, Брент Вудс, Энтони Льои	22
2888	Вице-президент (5 сезон)	https://kinokrad.co/294292-vice-prezident-5-sezon-2016.html	7	2016	США	комедия	Крис Эддисон, Бекки Мартин, Армандо Ианнуччи	30
2889	Мушкетеры (3 сезон)	https://kinokrad.co/294682-mushketery-3-sezon-2016.html	8	2016	Великобритания	драма, приключения	Энди Хэй, Николас Рентон, Фэррен Блэкберн	55
2890	Вайнона Эрп (1 сезон)	https://kinokrad.co/290293-vaynona-jerp-1-sezon-2016.html	7	2016	США, Канада	фэнтези, боевик, триллер, драма, детектив, вестерн, мистика	Рон Мерфи, Питер Стеббингс, Бретт Салливан	60
2891	В поле зрения (5 сезон)	https://kinokrad.co/294796-v-pole-zreniya-5-sezon-2016.html	9	2016	США	фантастика, боевик, триллер, драма, детектив	Крис Фишер, Ричард Дж. Льюис, Фред Туа	44
2892	Страшные сказки (3 сезон)	https://kinokrad.co/289792-strashnye-skazki-3-sezon-2016.html	9	2016	США, Ирландия, Великобритания	ужасы, фэнтези, драма	Джеймс Хоуз, Брайан Кирк, Пако Кабесас	60
2893	Переломные моменты истории (1 сезон)	https://kinokrad.co/293338-perelomnye-momenty-istorii-1-sezon-2016.html	6	2016	США	комедия	Марко Славнич, Джек Бишоп, Justin Nijm	10
2894	Подкидыши (1 сезон)	https://kinokrad.co/293335-podkidyshi-1-sezon-2016.html	8	2016	Украина	драма, мелодрама	Максим Паперник, Владимир Мельниченко	46
2895	Несгибаемая Кимми Шмидт (2 сезон)	https://kinokrad.co/293329-nesgibaemaya-kimmi-shmidt-2-sezon-2016.html	6	2016	США	комедия	Тристрам Шапиро, Майкл Энглер, Бет МакКарти-Миллер	30
2896	Семья (1 сезон)	https://kinokrad.co/287605-semya-1-sezon-2016.html	8	2016	США	драма, детектив	Джон Грэй, Эндрю МакКарти, Холли Дэйл	60
2897	Всем всего хорошего (1 сезон)	https://kinokrad.co/295126-vsem-vsego-horoshego-1-sezon-2016.html	5	2016	Россия	комедия	Валерий Усков	52
2898	Куку (3 сезон)	https://kinokrad.co/292360-kuku-3-sezon-2016.html	6	2016	Великобритания	комедия	Бен Тэйлор, Пол Мерфи	22
2899	Скрытое (1 сезон)	https://kinokrad.co/294502-skrytoe-1-sezon-2016.html	7	2016	Великобритания	триллер, драма	Джеймс Хоуз, Джим О’Хенлон	58
2900	Арчер (7 сезон)	https://kinokrad.co/291325-archer-7-sezon-2016.html	7	2016	США	мультфильм, боевик, комедия	Адам Рид, Брайан Фордни	22
2901	Серые кардиналы / Закулисные игры (3 сезон)	https://kinokrad.co/318242-serye-kardinaly-zakulisnye-igry-3-sezon-2016.html	6	2016	Франция	драма	Фридерик Теллье, Жан-Марк Брондоло, Фредерик Гарсон	
2902	Леди Динамит / Взрывная штучка (1 сезон)	https://kinokrad.co/295090-ledi-dinamit-vzryvnaya-shtuchka-1-sezon-2016.html	5	2016	США	комедия	Роберт Коэн, Билл Бенц, Бен Берман	30
2903	Ниндзяго: Мастера Кружитцу (6 сезон)	https://kinokrad.co/318366-nindzyago-mastera-kruzhitcu-6-sezon-2016.html	7	2016	Дания, Сингапур, Канада, США	мультфильм, фантастика, фэнтези, боевик, комедия, приключения, семейный	Петер Хауснер, Майкл Хельмут Хансен, Трюлле Вильструп	30
2904	Последний настоящий мужчина (6 сезон)	https://kinokrad.co/307385-posledniy-nastoyaschiy-muzhchina-6-sezon-2016.html	7	2016	США	комедия	Джон Пасквин, Виктор Гонзалез, Тед Уасс	22
2905	В объезд (1 сезон)	https://kinokrad.co/293179-v-obezd-1-sezon-2016.html	7	2016		комедия	Джефф Томсич, Стив Пинк, Джейсон Джонс	30
2906	Лопес (1 сезон)	https://kinokrad.co/318294-lopes-1-sezon-2016.html	6	2016	США	комедия	Трой Миллер	30
2907	Вайнона Эрп (2 сезон)	https://kinokrad.co/317422-vaynona-jerp-2-sezon-2017.html	7	2016	Канада, США	фэнтези, боевик, триллер, драма, детектив, вестерн, мистика	Паоло Барзмен, Рон Мерфи, Питер Стеббингс	60
2908	ОА (1 сезон)	https://kinokrad.co/311850-oa-1-sezon-2016.html	8	2016	США	драма, детектив	Зал Батманглидж	60
2909	Черное зеркало (3 сезон)	https://kinokrad.co/319742-chernoe-zerkalo-3-sezon-2016.html	8	2016	Великобритания	фантастика, триллер, драма	Оуэн Харрис, Карл Тиббеттс, Отто Баферст	43
2910	Милые обманщицы (7 сезон)	https://kinokrad.co/298090-milye-obmanschicy-7-sezon-2016.html	7	2016	США	триллер, драма, мелодрама, детектив	Норман Бакли, Рон Лагомарсино, Чад Лоу	43
2911	Шоу ужасов Рокки Хоррора (1 сезон)	https://kinokrad.co/312018-shou-uzhasov-rokki-horrora-1-sezon-2016.html	5	2016	США	мюзикл, ужасы, триллер, комедия	Кенни Ортега	88
2912	Стрелок (1 сезон)	https://kinokrad.co/311858-strelok-1-sezon-2016.html	7	2016	США	боевик, драма	Саймон Селлан Джоунс, Кристоф Шреве, Адам Дэвидсон	60
2913	Притворщики (1 сезон)	https://kinokrad.co/311854-pritvorschiki-1-sezon-2016.html	6	2016	Россия	комедия	Ольга Ланд	45
2914	Миссис Коп / Госпожа полицейский (2 сезон)	https://kinokrad.co/311194-missis-kop-gospozha-policeyskiy-2-sezon-2016.html	7	2016	Корея Южная	криминал	Ю Ин-щик, Ан Гиль-хо	
2915	Нулевой канал (1 сезон)	https://kinokrad.co/311750-nulevoy-kanal-1-sezon-2016.html	6	2016	США	ужасы, триллер, драма, детектив, мистика	Крэйг Уилльям Макнейлл	44
2916	Ложное обвинение (1 сезон)	https://kinokrad.co/311426-lozhnoe-obvinenie-1-sezon-2016.html	8	2016	США	драма	Лиз Фридлендер, Роб Шейденгланц, Брэд Тернер	60
2917	Класс (1 сезон)	https://kinokrad.co/311422-klass-1-sezon-2016.html	8	2016	Великобритания	фантастика, драма	Эдвард Базалгетт, Филиппа Лангдэйл, Уэйн Йип	45
2918	Завтра не наступит (1 сезон)	https://kinokrad.co/311418-zavtra-ne-nastupit-1-sezon-2016.html	8	2016	США	драма	Стюарт Гиллард, Аллан Аркуш, Джеффри Мэлман	43
2919	Корпорация (1 сезон)	https://kinokrad.co/311054-korporaciya-1-sezon-2016.html	9	2016	США	фантастика, триллер	Давид Пастор, Алекс Пастор, Дэвид Гроссман	45
2920	Домашние очаги (2 сезон)	https://kinokrad.co/311306-domashnie-ochagi-2-sezon-2016.html	7	2016	Великобритания	драма, военный	Роберт Куинн, Брюс Гудисон, Джон Хэйес	45
2921	Медсестра (1 сезон)	https://kinokrad.co/303260-medsestra-1-sezon-2016.html	6	2016	Россия	драма	Михаил Журавкин	50
2922	Жемчуга (1 сезон)	https://kinokrad.co/303158-zhemchuga-1-sezon-2016.html	6	2016	Россия	мелодрама	Сергей Краснов	45
2923	Бестия (4 сезон)	https://kinokrad.co/291370-bestiya-4-sezon-2016.html	6	2016	США, Канада	боевик, триллер, драма, криминал	Лариса Кондрацки, Клемент Вирго, Ник Хэмм	50
2924	Рэй Донован (4 сезон)	https://kinokrad.co/298405-rjey-donovan-4-sezon-2016.html	8	2016	США	драма, криминал	Майкл Аппендаль, Джон Дал, Дэниэл Эттиэс	43
2925	Тёмные дела / Тёмная материя (2 сезон)	https://kinokrad.co/299811-temnye-dela-temnaya-materiya-2-sezon-2016.html	9	2016	Канада	фантастика, триллер, драма	Рон Мерфи, Брюс МакДональд, Джон Стэд	42
2926	Оттенки синего (2 сезон)	https://kinokrad.co/315262-ottenki-sinego-2-sezon-2017.html	8	2016	США	драма, криминал	Стивен ДеПол, Дэн Лернер, Дэвид Бойд	43
2927	Салам Масква (1 сезон)	https://kinokrad.co/306434-salam-maskva.html	6	2016	Россия	криминал, драма, детектив	Павел Бардин	52
2928	Нарко (2 сезон)	https://kinokrad.co/306671-narko-2-sezon.html	9	2016	США	криминал, драма	Андрес Байс, Джозеф Владыка, Херардо Наранхо	49
2929	Не того поля ягода (1 сезон)	https://kinokrad.co/306674-ne-togo-polya-yagoda-1-sezon.html	4	2016	Россия	мелодрама	Александр Высоковский	44
2930	Булл (1 сезон)	https://kinokrad.co/303593-bull-1-sezon-2016.html	7	2016	Великобритания	комедия	Саймон Гибни	30
2931	Супергёрл / Супердевушка (2 сезон)	https://kinokrad.co/305720-supergerl.html	7	2016	США	фантастика, боевик, драма, приключения	Глен Винтер, Ларри Тенг, Дермотт Даунс	43
2932	Ангел из ада (1 сезон)	https://kinokrad.co/285785-angel-iz-ada-1-sezon-2016.html	7	2016	США	комедия	Дон Скардино, Джей Карас	30
2933	Легенды завтрашнего дня (1 сезон)	https://kinokrad.co/286311-legendy-zavtrashnego-dnya-1-sezon-2016.html	8	2016	США	фантастика, боевик	Дермотт Даунс, Рейчел Тэлалей, Глен Винтер	42
2934	Бывает и хуже (7 сезон)	https://kinokrad.co/286875-byvaet-i-huzhe-7-sezon-2016.html	8	2016	США	комедия	Ли Шаллат Чемел, Эллиот Хегарти, Блейк Т. Эванс	22
2935	Мотель Бейтсов (4 сезон)	https://kinokrad.co/287602-motel-beytsov-4-sezon-2016.html	8	2016	США	триллер, детектив, ужасы	Такер Гейтс, Эдвард Бьянчи, Роксанн Доусон	43
2936	Подача (1 сезон)	https://kinokrad.co/307148-podacha-1-sezon.html	8	2016	США	драма, спорт	Пэрис Барклай, Кеннет Финк, Реджина Кинг	60
2937	Ван Хельсинг (1 сезон)	https://kinokrad.co/303923-van-helsing-1-sezon-2016.html	6	2016	США	фэнтези, боевик, драма	Майкл Нанкин, Саймон Бэрри, Дэвид Фрэйзи	60
2938	Плебеи (3 сезон)	https://kinokrad.co/303380-plebei-3-sezon-2016.html	6	2016	Великобритания	комедия	Сэм Лейфер	22
2939	Анна-детективъ (1 сезон)	https://kinokrad.co/308621-anna-detektiv-1-sezon-2016.html	8	2016	Россия, Украина	детектив, мелодрама	Феликс Герчиков, Евгений Семенов, Артур Румынский	48
2940	Жена напрокат (1 сезон)	https://kinokrad.co/309590-zhena-naprokat-1-sezon-2016.html	8	2016	Россия	мелодрама	Александр Созонов	50
2941	Корона (1 сезон)	https://kinokrad.co/308618-korona-1-sezon-2016.html	7	2016	США, Великобритания	драма, история	Филип Мартин, Бенжамин Карон, Стивен Долдри	52
2942	На этой неделе у моей жены роман (1 сезон)	https://kinokrad.co/308708-na-etoy-nedele-u-moey-zheny-roman-1-sezon.html	5	2016	Корея Южная	драма, комедия	Ким Сок-юн	70
2943	Не того поля ягода (1 сезон)	https://kinokrad.co/304469-ne-togo-polya-yagoda-1-sezon-2016-rossiya.html	5	2016	Россия	мелодрама	Александр Высоковский	44
2944	Выйти замуж за Пушкина (1 сезон)	https://kinokrad.co/309587-vyyti-zamuzh-za-pushkina-1-sezon-2016.html	4	2016	Россия	комедия	Валерий Усков, Владимир Краснопольский	50
2945	Удаленные (1 сезон)	https://kinokrad.co/309584-udalennye-1-sezon-2016.html	4	2016	США	триллер	Брет Истон Эллис	13
2946	Королевы крика (2 сезон)	https://kinokrad.co/304463-korolevy-krika-2-sezon-2016.html	6	2016	США	ужасы, комедия, детектив	Брэд Фалчук, Брэдли Букер, Майкл Аппендаль	45
2947	Хофф в записи (2 сезон)	https://kinokrad.co/307058-hoff-v-zapisi-2-sezon.html	6	2016	Великобритания	комедия	Натали Бэйли	30
2948	Охотники на троллей (1 сезон)	https://kinokrad.co/311778-ohotniki-na-trolley-1-sezon-2016.html	8	2016	США, Мексика	мультфильм, фэнтези, комедия, приключения, семейный	Родриго Блаас, Илэйн Боган, Эндрю Л. Шмидт	23
2949	Воскресший Эртугрул (3 сезон)	https://kinokrad.co/308624-voskresshiy-jertugrul-3-sezon-2016.html	8	2016	Турция	боевик, драма, история	Метин Гюнай, Akif Özkan, Хакан Арслан	120
2950	Улица милосердия (1 сезон)	https://kinokrad.co/313434-ulica-miloserdiya-1-sezon-2016.html	6	2016	США	драма, история	Роксанн Доусон, Джереми Уэбб, Стивен Крегг	53
2951	Девственница (3 сезон)	https://kinokrad.co/313490-devstvennica-3-sezon-2016.html	5	2016	США	комедия	Мелани Мейрон, Брэд Силберлинг, Зетна Фуэнтес	60
2952	Смертельное оружие (1 сезон)	https://kinokrad.co/307565-smertelnoe-oruzhie-1-sezon-2016.html	9	2016	США	боевик, триллер, драма, криминал	Стив Бойум, МакДжи, Джейсон Энслер	60
2953	Дневники вампира (8 сезон)	https://kinokrad.co/304064-dnevniki-vampira-8-sezon-2016.html	8	2016	США	ужасы, фэнтези, триллер, драма, мелодрама, детектив	Крис Грисмер, Джошуа Батлер, Майкл А. Алловиц	43
2954	Настоящие О’Нилы (2 сезон)	https://kinokrad.co/312422-nastoyaschie-o-nily-2-sezon-2016.html	5	2016	США	комедия	Тодд Холлэнд, Ребекка Эшер, Виктор Нелли мл	30
2955	Фостеры (4 сезон)	https://kinokrad.co/298291-fostery-4-sezon-2016.html	6	2016	США	драма	Элоди Кин, Норман Бакли, Марта Митчелл	45
2956	Училки (1 сезон)	https://kinokrad.co/286357-uchilki-1-sezon-2016.html	6	2016	США	комедия	Пэймэн Бенц, Ричи Кин	20
2957	МакГайвер (1 сезон)	https://kinokrad.co/306908-makgayver-1-sezon.html	6	2016	США	боевик, драма, приключения	Мэтт Эрл Бисли, Джо Данте, Джерри Ливайн	60
2958	Цари и пророки (1 сезон)	https://kinokrad.co/287599-cari-i-proroki-1-sezon-2016.html	9	2016	США	драма	Дуан Кларк, Джеффри Начманофф	43
2959	Богатство / Мамона (2 сезон)	https://kinokrad.co/298681-bogatstvo-mamona-2-sezon-2016.html	7	2016	Норвегия	боевик, триллер, криминал, детектив	Сесиль А. Мосли, Яник Хиен	56
2960	Охотники (1 сезон)	https://kinokrad.co/293332-ohotniki-1-sezon-2016.html	7	2016	США	фантастика, триллер, драма, криминал	Глендин Айвин, Эмиль Левисетти, Даина Рейд	60
2961	Свежая кровь / Новая кровь (1 сезон)	https://kinokrad.co/298279-svezhaya-krov-novaya-krov-1-sezon-2016.html	6	2016	Великобритания	криминал, детектив	Энтони Филипсон, Билл Иглз	57
2962	Майк и Молли (6 сезон)	https://kinokrad.co/293866-mayk-i-molli-6-sezon-2016.html	7	2016	США	комедия	Джеймс Берроуз, Фил Льюис, Майкл МакДональд	22
2963	Налёт (4 сезон)	https://kinokrad.co/321086-nalet-4-sezon-2016.html	7	2016	Франция	триллер, криминал	Ксавьер Палю, Оливье Маршаль, Фредерик Шёндёрфер	50
2964	Безмолвный свидетель (19 сезон)	https://kinokrad.co/301715-bezmolvnyy-svidetel-19-sezon-2016.html	9	2016	Великобритания	драма, криминал, детектив	Тадеус О’Салливан, Дэвид Ричардс, Ричард Сайни	43
2965	Без обязательств (2 сезон)	https://kinokrad.co/297652-bez-obyazatelstv-2-sezon-2016.html	6	2016	США	драма, комедия	Джейсон Райтман, Майкл Уивер, Фред Сэвэдж	25
2966	Обвиняемая (1 сезон)	https://kinokrad.co/298282-obvinyaemaya-1-sezon-2016.html	7	2016	США	драма	Майрзи Алмас, Гэри Фледер, Элизабет Аллен	42
2967	Молодые и голодные (4 сезон)	https://kinokrad.co/298087-molodye-i-golodnye-4-sezon-2016.html	6	2016	США	драма, мелодрама, комедия	Энди Кэдифф, Фил Льюис, Кэти Гарретсон	22
2968	Нереально (2 сезон)	https://kinokrad.co/295663-nerealno-2-sezon-2016.html	6	2016	США	драма	Питер О’Фаллон, Ута Бризвитц, Лев Л. Спиро	42
2969	Час пик (1 сезон)	https://kinokrad.co/289960-chas-pik-1-sezon-2016.html	8	2016	США	боевик, комедия	Джон Тёртелтауб	45
2970	Расследования Мердока (10 сезон)	https://kinokrad.co/322071-rassledovaniya-merdoka-10-sezon.html	8	2016	Канада, Великобритания	драма, криминал, детектив	Харви Кросслэнд, Кэл Кунс, Лори Линд	43
2971	Рен (1 сезон)	https://kinokrad.co/303389-ren-1-sezon-2016.html	6	2016	Великобритания	фэнтези, боевик, драма, приключения	Кейт Мэдисон	10
2972	Физрук (3 сезон)	https://kinokrad.co/307643-fizruk-3-sezon-2016.html	8	2016	Россия	комедия	Сергей Сенцов, Фёдор Стуков, Дмитрий Губарев	25
2973	Южный Парк (20 сезон)	https://kinokrad.co/307067-yuzhnyy-park-20-sezon.html	8	2016	США	мультфильм, комедия	Трей Паркер, Эрик Сточ, Мэтт Стоун	22
2974	Чумовые тётки (1 сезон)	https://kinokrad.co/307568-chumovye-tetki-1-sezon-2016.html	5	2016	Германия	комедия	Марко Мусиенко	22
2975	Отец Каина (1 сезон)	https://kinokrad.co/320194-otec-kania-1-sezon.html	6	2016	Испания	драма	Сальвадор Калво	76
2976	Риццоли и Айлс (7 сезон)	https://kinokrad.co/297583-riccoli-i-ayls-7-sezon-2016.html	8	2016	США	драма, криминал, детектив	Марк Абер, Стив Робин, Майкл Кэтлман	43
2977	Юная (3 сезон)	https://kinokrad.co/318510-yunaya-3-sezon-2016.html	7	2016	США	мелодрама, комедия	Питер Лоэр, Стивен К. Цутида, Тодд Бирман	22
2978	Крушение (2 сезон)	https://kinokrad.co/317434-krushenie-2-sezon-2017.html	8	2016	США	комедия	Стюарт МакДональд, Тодд Бирман, Джеймс Гриффитс	30
2979	Кевин подождет (1 сезон)	https://kinokrad.co/304457-kevin-podozhdet-1-sezon-2016.html	7	2016	США	комедия	Энди Фикмен	30
2980	Пушкин (1 сезон)	https://kinokrad.co/294787-pushkin-1-sezon-2016.html	6	2016	Россия	комедия, приключения	Акаки Сахелашвили	24
2981	Сорйонен (1 сезон)	https://kinokrad.co/319614-soryonen-1-sezon-2016.html	8	2016	Франция, Финляндия	драма, криминал, детектив	Jyri Kähönen, Miikko Oikkonen, Жуссо Сирья	60
2982	Медики Чикаго (2 сезон)	https://kinokrad.co/306614-mediki-chikago-2-sezon.html	7	2016	США	драма	Майкл Ваксман, Фред Бернер, Дональд Питри	43
2983	Тупицы / Бестолковые (1 сезон)	https://kinokrad.co/294658-tupicy-bestolkovye-1-sezon-2016.html	7	2016	Великобритания	триллер, комедия	Эндрю Чаплин	29
2984	Бедные люди. Бисер (1 сезон)	https://kinokrad.co/293170-bednye-lyudi.-biser-1-2016.html	7	2016	Россия	комедия	Жанна Кадникова	25
2985	Мыслить как преступник: За границей (1 сезон)	https://kinokrad.co/290284-myslit-kak-prestupnik-za-granicey-1-sezon-2016.html	7	2016	США	драма, криминал	Роб Бэйли, Мэтт Эрл Бисли, Лаура Белси	60
2986	Внутри Эми Шумер (4 сезон)	https://kinokrad.co/311238-vnutri-jemi-shumer-4-sezon-2016.html	5	2016	США	комедия	Райан МакФол, Нил Бреннан, Стивен К. Цутида	22
2987	Внутри Эми Шумер (3 сезон)	https://kinokrad.co/311234-vnutri-jemi-shumer-3-sezon-2016.html	5	2016	США	комедия	Райан МакФол, Нил Бреннан, Стивен К. Цутида	22
2988	Настоящий гений (1 сезон)	https://kinokrad.co/305579-nastoyaschiy-geniy-1-sezon-2016.html	8	2016	США	драма	Марк Пизнарский, Дэвид Семел	60
2989	Салем (3 сезон)	https://kinokrad.co/284593-salem-3-sezon-2016.html	8	2016	США	фэнтези, триллер, драма	Дэвид Фон Энкен, Алекс Закржевский, Ник Копус	60
2990	Библиотекари (3 сезон)	https://kinokrad.co/311142-bibliotekari-3-sezon-2016.html	8	2016	США	фантастика, приключения	Марк Роскин, Джонатан Фрейкс, Дин Девлин	42
2991	В лучшем мире / Хорошее место (1 сезон)	https://kinokrad.co/304055-v-luchshem-mire-horoshee-mesto-1-sezon-2016.html	7	2016	США	комедия	Дрю Годдард, Бет МакКарти-Миллер, Майкл МакДональд	30
2992	Слишком близко к дому (1 сезон)	https://kinokrad.co/303635-slishkom-blizko-k-domu-1-sezon-2016.html	9	2016	США	драма	Тайлер Перри	60
2993	Голдберги (4 сезон)	https://kinokrad.co/318226-goldbergi-4-sezon-2016.html	4	2016	США	комедия	Дэвид Катценберг, Джей Чандрашекхар, Виктор Нелли мл	22
2994	Проект «Орфей» (1 сезон)	https://kinokrad.co/318198-proekt-laquo-orfey-1-sezon-2016.html	8	2016	Нидерланды	триллер, драма	Аллард Вестенбринк, Деннис Ботс, Иван Лопез Нуньес	40
2995	Провокатор (1 сезон)	https://kinokrad.co/287443-provokator-1-sezon-2016.html	8	2016	Россия	боевик, триллер, приключения, драма	Стас Шмелев	45
2996	Новенькая (5 сезон)	https://kinokrad.co/285957-novenkaya-5-sezon-2016.html	6	2016	США	комедия	Трент О’Доннелл, Джейк Кэздан, Фред Госс	22
2997	Пятая стража (3 сезон)	https://kinokrad.co/287584-pyataya-strazha-3-sezon-2016.html	6	2016	Россия	фантастика, детектив	Василий Пичул, Наталия Микрюкова, Михаил Колмыков	47
2998	Гудини и Дойл (1 сезон)	https://kinokrad.co/290119-gudini-i-doyl-1-sezon-2016.html	8	2016	Великобритания, Канада	драма, криминал, детектив	Эдвард Базалгетт, Стивен Хопкинс, Роберт Либерман	45
2999	Морган Фриман. Истории о Боге (1 сезон)	https://kinokrad.co/293200-morgan-friman.-istorii-o-boge-1-sezon-2016.html	7	2016	США	документальный, история		60
3000	Девушка по вызову (1 сезон)	https://kinokrad.co/293194-devushka-po-vyzovu-1-sezon-2016.html	8	2016	США	драма	Лодж Х. Керриган, Эми Саймец	27
3001	Серые кардиналы / Закулисные игры (3 сезон)	https://kinokrad.co/318242-serye-kardinaly-zakulisnye-igry-3-sezon-2016.html	6	2016	Франция	драма	Фридерик Теллье, Жан-Марк Брондоло, Фредерик Гарсон	
3002	Леди Динамит / Взрывная штучка (1 сезон)	https://kinokrad.co/295090-ledi-dinamit-vzryvnaya-shtuchka-1-sezon-2016.html	5	2016	США	комедия	Роберт Коэн, Билл Бенц, Бен Берман	30
3003	Ниндзяго: Мастера Кружитцу (6 сезон)	https://kinokrad.co/318366-nindzyago-mastera-kruzhitcu-6-sezon-2016.html	7	2016	Дания, Сингапур, Канада, США	мультфильм, фантастика, фэнтези, боевик, комедия, приключения, семейный	Петер Хауснер, Майкл Хельмут Хансен, Трюлле Вильструп	30
3004	Последний настоящий мужчина (6 сезон)	https://kinokrad.co/307385-posledniy-nastoyaschiy-muzhchina-6-sezon-2016.html	7	2016	США	комедия	Джон Пасквин, Виктор Гонзалез, Тед Уасс	22
3005	В объезд (1 сезон)	https://kinokrad.co/293179-v-obezd-1-sezon-2016.html	7	2016		комедия	Джефф Томсич, Стив Пинк, Джейсон Джонс	30
3006	Лопес (1 сезон)	https://kinokrad.co/318294-lopes-1-sezon-2016.html	6	2016	США	комедия	Трой Миллер	30
3007	Вайнона Эрп (2 сезон)	https://kinokrad.co/317422-vaynona-jerp-2-sezon-2017.html	7	2016	Канада, США	фэнтези, боевик, триллер, драма, детектив, вестерн, мистика	Паоло Барзмен, Рон Мерфи, Питер Стеббингс	60
3008	ОА (1 сезон)	https://kinokrad.co/311850-oa-1-sezon-2016.html	8	2016	США	драма, детектив	Зал Батманглидж	60
3009	Черное зеркало (3 сезон)	https://kinokrad.co/319742-chernoe-zerkalo-3-sezon-2016.html	8	2016	Великобритания	фантастика, триллер, драма	Оуэн Харрис, Карл Тиббеттс, Отто Баферст	43
3010	Милые обманщицы (7 сезон)	https://kinokrad.co/298090-milye-obmanschicy-7-sezon-2016.html	7	2016	США	триллер, драма, мелодрама, детектив	Норман Бакли, Рон Лагомарсино, Чад Лоу	43
3011	Шоу ужасов Рокки Хоррора (1 сезон)	https://kinokrad.co/312018-shou-uzhasov-rokki-horrora-1-sezon-2016.html	5	2016	США	мюзикл, ужасы, триллер, комедия	Кенни Ортега	88
3012	Стрелок (1 сезон)	https://kinokrad.co/311858-strelok-1-sezon-2016.html	7	2016	США	боевик, драма	Саймон Селлан Джоунс, Кристоф Шреве, Адам Дэвидсон	60
3013	Притворщики (1 сезон)	https://kinokrad.co/311854-pritvorschiki-1-sezon-2016.html	6	2016	Россия	комедия	Ольга Ланд	45
3014	Миссис Коп / Госпожа полицейский (2 сезон)	https://kinokrad.co/311194-missis-kop-gospozha-policeyskiy-2-sezon-2016.html	7	2016	Корея Южная	криминал	Ю Ин-щик, Ан Гиль-хо	
3015	Нулевой канал (1 сезон)	https://kinokrad.co/311750-nulevoy-kanal-1-sezon-2016.html	6	2016	США	ужасы, триллер, драма, детектив, мистика	Крэйг Уилльям Макнейлл	44
3016	Ложное обвинение (1 сезон)	https://kinokrad.co/311426-lozhnoe-obvinenie-1-sezon-2016.html	8	2016	США	драма	Лиз Фридлендер, Роб Шейденгланц, Брэд Тернер	60
3017	Класс (1 сезон)	https://kinokrad.co/311422-klass-1-sezon-2016.html	8	2016	Великобритания	фантастика, драма	Эдвард Базалгетт, Филиппа Лангдэйл, Уэйн Йип	45
3018	Завтра не наступит (1 сезон)	https://kinokrad.co/311418-zavtra-ne-nastupit-1-sezon-2016.html	8	2016	США	драма	Стюарт Гиллард, Аллан Аркуш, Джеффри Мэлман	43
3019	Корпорация (1 сезон)	https://kinokrad.co/311054-korporaciya-1-sezon-2016.html	9	2016	США	фантастика, триллер	Давид Пастор, Алекс Пастор, Дэвид Гроссман	45
3020	Домашние очаги (2 сезон)	https://kinokrad.co/311306-domashnie-ochagi-2-sezon-2016.html	7	2016	Великобритания	драма, военный	Роберт Куинн, Брюс Гудисон, Джон Хэйес	45
3021	Медсестра (1 сезон)	https://kinokrad.co/303260-medsestra-1-sezon-2016.html	6	2016	Россия	драма	Михаил Журавкин	50
3022	Жемчуга (1 сезон)	https://kinokrad.co/303158-zhemchuga-1-sezon-2016.html	6	2016	Россия	мелодрама	Сергей Краснов	45
3023	Бестия (4 сезон)	https://kinokrad.co/291370-bestiya-4-sezon-2016.html	6	2016	США, Канада	боевик, триллер, драма, криминал	Лариса Кондрацки, Клемент Вирго, Ник Хэмм	50
3024	Рэй Донован (4 сезон)	https://kinokrad.co/298405-rjey-donovan-4-sezon-2016.html	8	2016	США	драма, криминал	Майкл Аппендаль, Джон Дал, Дэниэл Эттиэс	43
3025	Тёмные дела / Тёмная материя (2 сезон)	https://kinokrad.co/299811-temnye-dela-temnaya-materiya-2-sezon-2016.html	9	2016	Канада	фантастика, триллер, драма	Рон Мерфи, Брюс МакДональд, Джон Стэд	42
3026	Оттенки синего (2 сезон)	https://kinokrad.co/315262-ottenki-sinego-2-sezon-2017.html	8	2016	США	драма, криминал	Стивен ДеПол, Дэн Лернер, Дэвид Бойд	43
3027	Салам Масква (1 сезон)	https://kinokrad.co/306434-salam-maskva.html	6	2016	Россия	криминал, драма, детектив	Павел Бардин	52
3028	Нарко (2 сезон)	https://kinokrad.co/306671-narko-2-sezon.html	9	2016	США	криминал, драма	Андрес Байс, Джозеф Владыка, Херардо Наранхо	49
3029	Не того поля ягода (1 сезон)	https://kinokrad.co/306674-ne-togo-polya-yagoda-1-sezon.html	4	2016	Россия	мелодрама	Александр Высоковский	44
3030	Булл (1 сезон)	https://kinokrad.co/303593-bull-1-sezon-2016.html	7	2016	Великобритания	комедия	Саймон Гибни	30
3031	Супергёрл / Супердевушка (2 сезон)	https://kinokrad.co/305720-supergerl.html	7	2016	США	фантастика, боевик, драма, приключения	Глен Винтер, Ларри Тенг, Дермотт Даунс	43
3032	Ангел из ада (1 сезон)	https://kinokrad.co/285785-angel-iz-ada-1-sezon-2016.html	7	2016	США	комедия	Дон Скардино, Джей Карас	30
3033	Легенды завтрашнего дня (1 сезон)	https://kinokrad.co/286311-legendy-zavtrashnego-dnya-1-sezon-2016.html	8	2016	США	фантастика, боевик	Дермотт Даунс, Рейчел Тэлалей, Глен Винтер	42
3034	Бывает и хуже (7 сезон)	https://kinokrad.co/286875-byvaet-i-huzhe-7-sezon-2016.html	8	2016	США	комедия	Ли Шаллат Чемел, Эллиот Хегарти, Блейк Т. Эванс	22
3035	Мотель Бейтсов (4 сезон)	https://kinokrad.co/287602-motel-beytsov-4-sezon-2016.html	8	2016	США	триллер, детектив, ужасы	Такер Гейтс, Эдвард Бьянчи, Роксанн Доусон	43
3037	Ван Хельсинг (1 сезон)	https://kinokrad.co/303923-van-helsing-1-sezon-2016.html	6	2016	США	фэнтези, боевик, драма	Майкл Нанкин, Саймон Бэрри, Дэвид Фрэйзи	60
3038	Плебеи (3 сезон)	https://kinokrad.co/303380-plebei-3-sezon-2016.html	6	2016	Великобритания	комедия	Сэм Лейфер	22
3039	Анна-детективъ (1 сезон)	https://kinokrad.co/308621-anna-detektiv-1-sezon-2016.html	8	2016	Россия, Украина	детектив, мелодрама	Феликс Герчиков, Евгений Семенов, Артур Румынский	48
3040	Жена напрокат (1 сезон)	https://kinokrad.co/309590-zhena-naprokat-1-sezon-2016.html	8	2016	Россия	мелодрама	Александр Созонов	50
3041	Корона (1 сезон)	https://kinokrad.co/308618-korona-1-sezon-2016.html	7	2016	США, Великобритания	драма, история	Филип Мартин, Бенжамин Карон, Стивен Долдри	52
3042	На этой неделе у моей жены роман (1 сезон)	https://kinokrad.co/308708-na-etoy-nedele-u-moey-zheny-roman-1-sezon.html	5	2016	Корея Южная	драма, комедия	Ким Сок-юн	70
3043	Не того поля ягода (1 сезон)	https://kinokrad.co/304469-ne-togo-polya-yagoda-1-sezon-2016-rossiya.html	5	2016	Россия	мелодрама	Александр Высоковский	44
3044	Выйти замуж за Пушкина (1 сезон)	https://kinokrad.co/309587-vyyti-zamuzh-za-pushkina-1-sezon-2016.html	4	2016	Россия	комедия	Валерий Усков, Владимир Краснопольский	50
3045	Удаленные (1 сезон)	https://kinokrad.co/309584-udalennye-1-sezon-2016.html	4	2016	США	триллер	Брет Истон Эллис	13
3046	Королевы крика (2 сезон)	https://kinokrad.co/304463-korolevy-krika-2-sezon-2016.html	6	2016	США	ужасы, комедия, детектив	Брэд Фалчук, Брэдли Букер, Майкл Аппендаль	45
3047	Хофф в записи (2 сезон)	https://kinokrad.co/307058-hoff-v-zapisi-2-sezon.html	6	2016	Великобритания	комедия	Натали Бэйли	30
3048	Охотники на троллей (1 сезон)	https://kinokrad.co/311778-ohotniki-na-trolley-1-sezon-2016.html	8	2016	США, Мексика	мультфильм, фэнтези, комедия, приключения, семейный	Родриго Блаас, Илэйн Боган, Эндрю Л. Шмидт	23
3049	Воскресший Эртугрул (3 сезон)	https://kinokrad.co/308624-voskresshiy-jertugrul-3-sezon-2016.html	8	2016	Турция	боевик, драма, история	Метин Гюнай, Akif Özkan, Хакан Арслан	120
3050	Улица милосердия (1 сезон)	https://kinokrad.co/313434-ulica-miloserdiya-1-sezon-2016.html	6	2016	США	драма, история	Роксанн Доусон, Джереми Уэбб, Стивен Крегг	53
3051	Девственница (3 сезон)	https://kinokrad.co/313490-devstvennica-3-sezon-2016.html	5	2016	США	комедия	Мелани Мейрон, Брэд Силберлинг, Зетна Фуэнтес	60
3052	Смертельное оружие (1 сезон)	https://kinokrad.co/307565-smertelnoe-oruzhie-1-sezon-2016.html	9	2016	США	боевик, триллер, драма, криминал	Стив Бойум, МакДжи, Джейсон Энслер	60
3053	Дневники вампира (8 сезон)	https://kinokrad.co/304064-dnevniki-vampira-8-sezon-2016.html	8	2016	США	ужасы, фэнтези, триллер, драма, мелодрама, детектив	Крис Грисмер, Джошуа Батлер, Майкл А. Алловиц	43
3054	Настоящие О’Нилы (2 сезон)	https://kinokrad.co/312422-nastoyaschie-o-nily-2-sezon-2016.html	5	2016	США	комедия	Тодд Холлэнд, Ребекка Эшер, Виктор Нелли мл	30
3055	Фостеры (4 сезон)	https://kinokrad.co/298291-fostery-4-sezon-2016.html	6	2016	США	драма	Элоди Кин, Норман Бакли, Марта Митчелл	45
3056	Училки (1 сезон)	https://kinokrad.co/286357-uchilki-1-sezon-2016.html	6	2016	США	комедия	Пэймэн Бенц, Ричи Кин	20
3057	МакГайвер (1 сезон)	https://kinokrad.co/306908-makgayver-1-sezon.html	6	2016	США	боевик, драма, приключения	Мэтт Эрл Бисли, Джо Данте, Джерри Ливайн	60
3058	Цари и пророки (1 сезон)	https://kinokrad.co/287599-cari-i-proroki-1-sezon-2016.html	9	2016	США	драма	Дуан Кларк, Джеффри Начманофф	43
3059	Богатство / Мамона (2 сезон)	https://kinokrad.co/298681-bogatstvo-mamona-2-sezon-2016.html	7	2016	Норвегия	боевик, триллер, криминал, детектив	Сесиль А. Мосли, Яник Хиен	56
3060	Охотники (1 сезон)	https://kinokrad.co/293332-ohotniki-1-sezon-2016.html	7	2016	США	фантастика, триллер, драма, криминал	Глендин Айвин, Эмиль Левисетти, Даина Рейд	60
3061	Свежая кровь / Новая кровь (1 сезон)	https://kinokrad.co/298279-svezhaya-krov-novaya-krov-1-sezon-2016.html	6	2016	Великобритания	криминал, детектив	Энтони Филипсон, Билл Иглз	57
3062	Майк и Молли (6 сезон)	https://kinokrad.co/293866-mayk-i-molli-6-sezon-2016.html	7	2016	США	комедия	Джеймс Берроуз, Фил Льюис, Майкл МакДональд	22
3063	Налёт (4 сезон)	https://kinokrad.co/321086-nalet-4-sezon-2016.html	7	2016	Франция	триллер, криминал	Ксавьер Палю, Оливье Маршаль, Фредерик Шёндёрфер	50
3064	Безмолвный свидетель (19 сезон)	https://kinokrad.co/301715-bezmolvnyy-svidetel-19-sezon-2016.html	9	2016	Великобритания	драма, криминал, детектив	Тадеус О’Салливан, Дэвид Ричардс, Ричард Сайни	43
3065	Без обязательств (2 сезон)	https://kinokrad.co/297652-bez-obyazatelstv-2-sezon-2016.html	6	2016	США	драма, комедия	Джейсон Райтман, Майкл Уивер, Фред Сэвэдж	25
3066	Обвиняемая (1 сезон)	https://kinokrad.co/298282-obvinyaemaya-1-sezon-2016.html	7	2016	США	драма	Майрзи Алмас, Гэри Фледер, Элизабет Аллен	42
3067	Молодые и голодные (4 сезон)	https://kinokrad.co/298087-molodye-i-golodnye-4-sezon-2016.html	6	2016	США	драма, мелодрама, комедия	Энди Кэдифф, Фил Льюис, Кэти Гарретсон	22
3068	Нереально (2 сезон)	https://kinokrad.co/295663-nerealno-2-sezon-2016.html	6	2016	США	драма	Питер О’Фаллон, Ута Бризвитц, Лев Л. Спиро	42
3069	Час пик (1 сезон)	https://kinokrad.co/289960-chas-pik-1-sezon-2016.html	8	2016	США	боевик, комедия	Джон Тёртелтауб	45
3070	Расследования Мердока (10 сезон)	https://kinokrad.co/322071-rassledovaniya-merdoka-10-sezon.html	8	2016	Канада, Великобритания	драма, криминал, детектив	Харви Кросслэнд, Кэл Кунс, Лори Линд	43
3071	Рен (1 сезон)	https://kinokrad.co/303389-ren-1-sezon-2016.html	6	2016	Великобритания	фэнтези, боевик, драма, приключения	Кейт Мэдисон	10
3072	Физрук (3 сезон)	https://kinokrad.co/307643-fizruk-3-sezon-2016.html	8	2016	Россия	комедия	Сергей Сенцов, Фёдор Стуков, Дмитрий Губарев	25
3073	Южный Парк (20 сезон)	https://kinokrad.co/307067-yuzhnyy-park-20-sezon.html	8	2016	США	мультфильм, комедия	Трей Паркер, Эрик Сточ, Мэтт Стоун	22
3074	Чумовые тётки (1 сезон)	https://kinokrad.co/307568-chumovye-tetki-1-sezon-2016.html	5	2016	Германия	комедия	Марко Мусиенко	22
3075	Отец Каина (1 сезон)	https://kinokrad.co/320194-otec-kania-1-sezon.html	6	2016	Испания	драма	Сальвадор Калво	76
3076	Риццоли и Айлс (7 сезон)	https://kinokrad.co/297583-riccoli-i-ayls-7-sezon-2016.html	8	2016	США	драма, криминал, детектив	Марк Абер, Стив Робин, Майкл Кэтлман	43
3077	Юная (3 сезон)	https://kinokrad.co/318510-yunaya-3-sezon-2016.html	7	2016	США	мелодрама, комедия	Питер Лоэр, Стивен К. Цутида, Тодд Бирман	22
3078	Крушение (2 сезон)	https://kinokrad.co/317434-krushenie-2-sezon-2017.html	8	2016	США	комедия	Стюарт МакДональд, Тодд Бирман, Джеймс Гриффитс	30
3079	Кевин подождет (1 сезон)	https://kinokrad.co/304457-kevin-podozhdet-1-sezon-2016.html	7	2016	США	комедия	Энди Фикмен	30
3080	Пушкин (1 сезон)	https://kinokrad.co/294787-pushkin-1-sezon-2016.html	6	2016	Россия	комедия, приключения	Акаки Сахелашвили	24
3081	Сорйонен (1 сезон)	https://kinokrad.co/319614-soryonen-1-sezon-2016.html	8	2016	Франция, Финляндия	драма, криминал, детектив	Jyri Kähönen, Miikko Oikkonen, Жуссо Сирья	60
3082	Медики Чикаго (2 сезон)	https://kinokrad.co/306614-mediki-chikago-2-sezon.html	7	2016	США	драма	Майкл Ваксман, Фред Бернер, Дональд Питри	43
3083	Тупицы / Бестолковые (1 сезон)	https://kinokrad.co/294658-tupicy-bestolkovye-1-sezon-2016.html	7	2016	Великобритания	триллер, комедия	Эндрю Чаплин	29
3084	Бедные люди. Бисер (1 сезон)	https://kinokrad.co/293170-bednye-lyudi.-biser-1-2016.html	7	2016	Россия	комедия	Жанна Кадникова	25
3085	Мыслить как преступник: За границей (1 сезон)	https://kinokrad.co/290284-myslit-kak-prestupnik-za-granicey-1-sezon-2016.html	7	2016	США	драма, криминал	Роб Бэйли, Мэтт Эрл Бисли, Лаура Белси	60
3086	Внутри Эми Шумер (4 сезон)	https://kinokrad.co/311238-vnutri-jemi-shumer-4-sezon-2016.html	5	2016	США	комедия	Райан МакФол, Нил Бреннан, Стивен К. Цутида	22
3087	Внутри Эми Шумер (3 сезон)	https://kinokrad.co/311234-vnutri-jemi-shumer-3-sezon-2016.html	5	2016	США	комедия	Райан МакФол, Нил Бреннан, Стивен К. Цутида	22
3088	Настоящий гений (1 сезон)	https://kinokrad.co/305579-nastoyaschiy-geniy-1-sezon-2016.html	8	2016	США	драма	Марк Пизнарский, Дэвид Семел	60
3089	Салем (3 сезон)	https://kinokrad.co/284593-salem-3-sezon-2016.html	8	2016	США	фэнтези, триллер, драма	Дэвид Фон Энкен, Алекс Закржевский, Ник Копус	60
3090	Библиотекари (3 сезон)	https://kinokrad.co/311142-bibliotekari-3-sezon-2016.html	8	2016	США	фантастика, приключения	Марк Роскин, Джонатан Фрейкс, Дин Девлин	42
3091	В лучшем мире / Хорошее место (1 сезон)	https://kinokrad.co/304055-v-luchshem-mire-horoshee-mesto-1-sezon-2016.html	7	2016	США	комедия	Дрю Годдард, Бет МакКарти-Миллер, Майкл МакДональд	30
3092	Слишком близко к дому (1 сезон)	https://kinokrad.co/303635-slishkom-blizko-k-domu-1-sezon-2016.html	9	2016	США	драма	Тайлер Перри	60
3093	Голдберги (4 сезон)	https://kinokrad.co/318226-goldbergi-4-sezon-2016.html	4	2016	США	комедия	Дэвид Катценберг, Джей Чандрашекхар, Виктор Нелли мл	22
3094	Проект «Орфей» (1 сезон)	https://kinokrad.co/318198-proekt-laquo-orfey-1-sezon-2016.html	8	2016	Нидерланды	триллер, драма	Аллард Вестенбринк, Деннис Ботс, Иван Лопез Нуньес	40
3095	Провокатор (1 сезон)	https://kinokrad.co/287443-provokator-1-sezon-2016.html	8	2016	Россия	боевик, триллер, приключения, драма	Стас Шмелев	45
3096	Новенькая (5 сезон)	https://kinokrad.co/285957-novenkaya-5-sezon-2016.html	6	2016	США	комедия	Трент О’Доннелл, Джейк Кэздан, Фред Госс	22
3097	Пятая стража (3 сезон)	https://kinokrad.co/287584-pyataya-strazha-3-sezon-2016.html	6	2016	Россия	фантастика, детектив	Василий Пичул, Наталия Микрюкова, Михаил Колмыков	47
3098	Гудини и Дойл (1 сезон)	https://kinokrad.co/290119-gudini-i-doyl-1-sezon-2016.html	8	2016	Великобритания, Канада	драма, криминал, детектив	Эдвард Базалгетт, Стивен Хопкинс, Роберт Либерман	45
3099	Морган Фриман. Истории о Боге (1 сезон)	https://kinokrad.co/293200-morgan-friman.-istorii-o-boge-1-sezon-2016.html	7	2016	США	документальный, история		60
3100	Девушка по вызову (1 сезон)	https://kinokrad.co/293194-devushka-po-vyzovu-1-sezon-2016.html	8	2016	США	драма	Лодж Х. Керриган, Эми Саймец	27
3101	Гранчестер (2 сезон)	https://kinokrad.co/293191-granchester-2-sezon-2016.html	9	2016	Великобритания	драма, детектив	Тим Файвелл, Гарри Брэдбир, Джилл Робертсон	45
3102	Отмеченные (1 сезон)	https://kinokrad.co/317882-otmechennye-1-sezon-2016.html	7	2016	США	триллер	Ханна Макферсон	18
3103	Игра. Реванш (2 сезон)	https://kinokrad.co/296323-igra-revansh-2-sezon-2016.html	8	2016	Россия	детектив, криминал	Олег Галин, Иван Щёголев	45
3104	Темное дитя (4 сезон)	https://kinokrad.co/293617-temnoe-ditya-4-sezon-2016.html	7	2016	Канада	фантастика, боевик, драма	Джон Фоусет, Кен Джиротти, Дэвид Фрэйзи	43
3105	Гоморра (2 сезон)	https://kinokrad.co/295672-gomorra-2-sezon-2016.html	8	2016	Италия, Германия	драма, криминал	Стефано Соллима, Клаудио Капеллини, Франческа Коменчини	50
3106	Конферансье / Шоумен (1 сезон)	https://kinokrad.co/294253-konferanse-shoumen-1-sezon-2016.html	6	2016	Корея Южная	драма, мелодрама, комедия	Sung Chang Hong	58
3107	Подчинение (1 сезон)	https://kinokrad.co/295258-podchinenie-1-sezon-2016.html	7	2016	США	драма, мелодрама, детектив	Джеки Ст. Джеймс	24
3108	Ольга (1 сезон)	https://kinokrad.co/306458-olga.html	7	2016	Россия	комедия	Алексей Нужный, Игорь Волошин	24
3109	От заката до рассвета (3 сезон)	https://kinokrad.co/306455-ot-zakata-do-rassveta-3-sezon.html	6	2016	США	боевик, ужасы, криминал, фэнтези	Роберт Родригес, Джо Менендес, Дуайт Х. Литтл	60
3110	Все к лучшему / Перемены  ( 1 сезон)	https://kinokrad.co/306452-vse-k-luchshemu-peremeny-1-sezon.html	6	2016	США	комедия	Лэнс Бэнгс, Ниша Ганатра, Памела Адлон	30
3111	Атланта (1 сезон)	https://kinokrad.co/302987-atlanta-1-sezon-2016.html	5	2016	США	драма, комедия	Дональд Гловер, Хиро Мурай, Яница Браво	30
3112	Пропавший без вести (2 сезон)	https://kinokrad.co/281403-propavshiy-bez-vesti-2-sezon.html	7	2016	Великобритания, США	драма, криминал, детектив	Том Шенклэнд	60
3113	Торчки (1 сезон)	https://kinokrad.co/305678-torchki.html	6	2016	Великобритания	комедия	Том Маршалл	30
3114	Флибэг / Клоповник (1 сезон)	https://kinokrad.co/305699-flibeg-klopovnik-1-sezon.html	6	2016	Великобритания	комедия	Гарри Брэдбир, Тим Киркби	27
3115	Штамм (3 сезон)	https://kinokrad.co/305582-shtamm-3-sezon-2016.html	8	2016	США	ужасы, триллер, драма	Дж. Майлз Дэйл, Деран Сарафян, Фил Абрахам	43
3116	Элементарно (5 сезон)	https://kinokrad.co/295084-jelementarno-5-sezon-2016.html	9	2016	США	драма, криминал, детектив	Джон Полсон, Гай Ферленд, Сет Манн	43
3117	Бывает и хуже (8 сезон)	https://kinokrad.co/303587-byvaet-i-huzhe-8-sezon-2016.html	7	2016	США	комедия	Ли Шаллат Чемел, Эллиот Хегарти, Блейк Т. Эванс	22
3118	Гриффины (15 сезон)	https://kinokrad.co/307583-griffiny-15-sezon-2016.html	7	2016	США	мультфильм, комедия	Питер Шин, Джеймс Пурдум, Доминик Бьянчи	22
3119	Галерея Вельвет (4 сезон)	https://kinokrad.co/315834-galereya-velvet-4-sezon-2016.html	8	2016	Испания	драма	Давид Пинильос, Карлос Седес, Мануэль Гомес Перейра	43
3120	Ранчо (1 сезон)	https://kinokrad.co/292762-rancho-1-sezon-2016.html	7	2016	США	комедия	Дэвид Трейнер	30
3121	Анатомия страсти (13 сезон)	https://kinokrad.co/303596-anatomiya-strasti-13-sezon-2016.html	8	2016	США	драма, мелодрама	Роб Корн, Шандра Уилсон, Тони Фелан	43
3122	Симпсоны (28 сезон)	https://kinokrad.co/307388-simpsony-28-sezon-2016.html	8	2016	США	мультфильм, комедия	Марк Керклэнд, Стивен Дин Мур, Боб Андерсон	22
3123	Слепая зона (2 сезон)	https://kinokrad.co/305735-slepaya-zona-2-sezon.html	8	2016	США	триллер, драма, криминал, детектив	Маркос Сига, Роб Шейденгланц, Марк Пеллингтон	42
3124	Чёрный список (4 сезон)	https://kinokrad.co/305576-chjornyy-spisok-4-sezon-2016.html	8	2016	США	триллер, драма, криминал, детектив	Майкл В. Уоткинс, Эндрю МакКарти, Стив Эделсон	43
3125	Пожарные Чикаго / Чикаго в огне (5 сезон)	https://kinokrad.co/295081-chikago-v-ogne-5-sezon-2016.html	8	2016	США	драма	Джо Чаппелль, Сэнфорд Букставер, Реза Табризи	43
3126	База Куантико (2 сезон)	https://kinokrad.co/293884-baza-kuantiko-2-sezon-2016.html	7	2016	США	триллер, драма, криминал, детектив	Дженнифер Чэмберс Линч, Дэвид МакУиртер, Стефен Т. Кэй	42
3127	Агенты «Щ.И.Т.» (4 сезон)	https://kinokrad.co/303605-agenty-sch.i.t.-4-sezon-2016.html	8	2016	США	фантастика, боевик, триллер, драма	Винс Мисиано, Билл Джирхарт, Кевин Танчароэн	45
3128	Доктор Кто (10 сезон)	https://kinokrad.co/315842-doktor-kto-10-sezon-2016.html	8	2016	Великобритания	фантастика, драма, комедия, приключения, семейный	Грэм Харпер, Эрос Лин, Дуглас Маккиннон	43
3129	Берсерк (1 сезон)	https://kinokrad.co/317282-berserk-1-sezon-2016.html	8	2016	Япония	мультфильм, фэнтези, боевик, драма, аниме	Син Итагаки	25
3130	Сотня (3 сезон)	https://kinokrad.co/286307-sotnya-3-sezon-2016.html	9	2016	США	фантастика, драма, детектив	Дин Уайт, Эд Фрэйман, Майрзи Алмас	60
3131	Улов/ Ловушка (1 сезон)	https://kinokrad.co/292123-lovushka-1-sezon-2016.html	8	2016	США	триллер, драма, криминал	Кевин Даулинг, Реджина Кинг, Майк Листо	43
3449	Галавант (2 сезон)	https://kinokrad.co/271984-galavant-2-sezon-2016.html	6	2016	США	мюзикл, комедия	Крис Кох	23
3132	Нобель: Мир любой ценой (1 сезон)	https://kinokrad.co/313342-nobel-mir-lyuboy-cenoy-1-sezon-2016.html	7	2016	Норвегия	триллер	Пер-Олав Соренсен	45
3133	Закусочная Боба (7 сезон)	https://kinokrad.co/309954-zakusochnaya-boba-7-sezon-2016.html	5	2016	США	мультфильм, комедия	Бернард Дерриман, Дженнифер Койл, Тайри Диллихей	22
3134	Осколки счастья 2 (2 сезон)	https://kinokrad.co/309497-oskolki-schastya-2-sezon-2016.html	3	2016	Россия	драма	Руслан Ибрагимов	44
3135	Туннель (2 сезон)	https://kinokrad.co/293605-tunnel-2-sezon-2016.html	7	2016	Великобритания, Франция	триллер, драма, криминал, детектив	Томас Винсент, Хетти Макдональд, Доминик Молль	60
3136	Шакал (1 сезон)	https://kinokrad.co/309491-shakal-1-sezon-2016.html	8	2016	Россия	детектив	Евгений Звездаков	50
3137	Готэм (3 сезон)	https://kinokrad.co/293881-gotjem-3-sezon-2016.html	8	2016	США	триллер, драма, криминал, детектив	Т.Дж. Скотт, Дэнни Кэннон, Эгил Эгилссон	44
3138	Бруклин 9-9 (4 сезон)	https://kinokrad.co/304439-bruklin-9-9-4-sezon-2016.html	8	2016	США	комедия, криминал	Дин Холлэнд, Майкл МакДональд, Крейг Зиск	23
3139	Стыд (3 сезон)	https://kinokrad.co/309353-styd-3-sezon-2016.html	9	2016	Норвегия	драма	Julie Andem	30
3140	Стыд (2 сезон)	https://kinokrad.co/309350-styd-2-sezon-2016.html	9	2016	Норвегия	драма	Julie Andem	30
3141	Мужчина в моём доме (1 сезон)	https://kinokrad.co/308705-muzhchina-v-mojom-dome-1-sezon-2016.html	7	2016	Корея Южная	драма, мелодрама, комедия	Ким Джон-мин	60
3142	Две девицы на мели (6 сезон)	https://kinokrad.co/311726-dve-devicy-na-meli-6-sezon-2016.html	6	2016	США	комедия	Дон Скардино, Фред Сэвэдж, Фил Льюис	22
3143	Медичи: Повелители Флоренции (1 сезон)	https://kinokrad.co/312966-medichi-poveliteli-florencii-1-sezon-2016.html	8	2016	Италия, Великобритания, Франция	триллер, драма, мелодрама, детектив, биография, история	Серджо Мимика-Геззан	60
3144	Внутри девятого номера (3 сезон)	https://kinokrad.co/314370-vnutri-devyatogo-nomera-3-sezon-2016.html	7	2016	Великобритания	ужасы, комедия, детектив	Гильем Моралес, Дэвид Керр, Стив Пембертон	30
3145	Это любовь (2 сезон)	https://kinokrad.co/308996-jeto-lyubov-2-sezon-2016.html	7	2016	Россия	комедия	Александр Богданенко	24
3146	Члены королевской семьи (3 сезон)	https://kinokrad.co/312886-chleny-korolevskoy-semi-3-sezon-2016.html	7	2016	США	драма	Марк Шван, Том Вон, Джеймс Лэфферти	42
3147	Оранжевый — хит сезона (4 сезон)	https://kinokrad.co/298294-oranzhevyy-hit-sezona-4-sezon-2016.html	8	2016	США	драма, комедия, криминал	Эндрю МакКарти, Майкл Трим, Фил Абрахам	51
3148	Правдоподобные истории Нила Геймана (1 сезон)	https://kinokrad.co/298297-pravdopodobnye-istorii-nila-geymana-1-sezon-2016.html	6	2016	Великобритания	ужасы, драма	Ян Форсис, Джейн Поллард	30
3149	Уильям наш, Шекспир (1 сезон)	https://kinokrad.co/295123-uilyam-nash-shekspir-1-sezon-2016.html	6	2016	Великобритания	комедия	Мэтт Липси, Бен Келлетт	30
3150	Дядя Бак (1 сезон)	https://kinokrad.co/298165-dyadya-bak-1-sezon-2016.html	7	2016	США	комедия	Реджинальд Хадлин, Райан Кейс, Фред Госс	
3151	Восьмидесятые (6 сезон)	https://kinokrad.co/298093-vosmidesyatye-6-sezon-2016.html	9	2016	Россия	комедия, мелодрама	Фёдор Стуков, Юлия Лёвкина, Филипп Коршунов	25
3152	Спецназ 38 (1 сезон)	https://kinokrad.co/298408-specnaz-38-1-sezon-2016.html	7	2016	Корея Южная	драма, криминал	Ким Джон-мин	60
3153	Папочка (5 сезон)	https://kinokrad.co/287071-papochka-5-sezon-2016.html	7	2016	США	драма, комедия, семейный	Майкл Лембек, Арлин Санфорд, Робби Кантримэн	22
3154	Проповедник (1 сезон)	https://kinokrad.co/290653-propovednik-1-sezon-2016.html	8	2016	США	фэнтези, драма, приключения		60
3155	Рейк (4 сезон)	https://kinokrad.co/298378-reyk-4-sezon-2016.html	7	2016	Австралия	драма, комедия	Питер Дункан, Роуэн Вудс, Джесика Хоббс	43
3156	Американский запад (1 сезон)	https://kinokrad.co/297643-amerikanskiy-zapad-1-sezon-2016.html	7	2016	США	вестерн	Джон Илер	43
3157	Крушение (1 сезон)	https://kinokrad.co/297592-krushenie-1-sezon-2016.html	7	2016	США	комедия	Джеймс Гриффитс, Райан Кейс, Стюарт МакДональд	21
3158	Уэнтуорт (4 сезон)	https://kinokrad.co/293635-ujentuort-4-sezon-2016.html	8	2016	Австралия	драма, криминал	Кевин Карлин, Катрин Миллар, Стив Джодрелл	45
3159	Тайный город (1 сезон)	https://kinokrad.co/297598-taynyy-gorod-1-sezon-2016.html	6	2016	Австралия	триллер	Эмма Фриман	48
3160	Ужасы интернета (1 сезон)	https://kinokrad.co/296104-bad-internet-1-sezon-2016.html	6	2016	США	комедия	Мэттью Поллок, Tim Wilkerson	11
3161	Вечный отпуск (1 сезон)	https://kinokrad.co/291376-vechnyy-otpusk-1-sezon-2016.html	8	2016	Россия, Украина	комедия	Валентина Власова	24
3162	Сигнал (1 сезон)	https://kinokrad.co/290122-signal-1-sezon-2016.html	7	2016	Корея Южная	триллер, драма, криминал	Ким Вон Сок	70
3163	С чистого листа (1 сезон)	https://kinokrad.co/292255-s-chistogo-lista-1-sezon-2016.html	5	2016	США	комедия	Уолли Пфистер, Том ДиЧилло, Джош Гордон	30
3164	Смертельные поля (1 сезон)	https://kinokrad.co/292252-smertelnye-polya-1-sezon-2016.html	6	2016	США	криминал		45
3165	Кордон (1 сезон)	https://kinokrad.co/292243-kordon-1-sezon-2016.html	7	2016	Бельгия	драма	Tim Mielants	55
3166	Крах (3 сезон)	https://kinokrad.co/307433-krah-3-sezon-2016.html	8	2016	Великобритания	триллер, драма, криминал	Аллан Кабитт, Якоб Вербрюгген	58
3167	К2 (1 сезон)	https://kinokrad.co/307427-k2-1-sezon-2016.html	7	2016	Корея Южная	триллер		75
3168	Очевидное (3 сезон)	https://kinokrad.co/307379-ochevidnoe-3-sezon-2016.html	3	2016	США	драма, комедия	Джилл Солоуэй, Ниша Ганатра, Андреа Арнольд	30
3169	Визави (2 сезон)	https://kinokrad.co/303065-vizavi-2-sezon-2016.html	8	2016	Испания	триллер, драма	Хесус Кольменар, Хесус Родриго, Сандра Гальего	60
3170	Королева сахара (1 сезон)	https://kinokrad.co/303071-koroleva-sahara-1-sezon-2016.html	5	2016	США	драма	Нима Барнетт, Кэт Кэндлер, Ава ДюВерней	44
3171	Мистер Хутен и леди (1 сезон)	https://kinokrad.co/307142-mister-huten-i-ledi-1-sezon.html	9	2016	Великобритания	драма, комедия, приключения, детектив	Джастин Молотников, Дэниэл О’Хара, Колин Тиг	46
3172	Киллджойс (2 сезон)	https://kinokrad.co/298897-killdzhoys-2-sezon-2016.html	8	2016	Канада	фантастика	Крис Грисмер, Питер Стеббингс, Паоло Барзмен	60
3173	Разгар лета (1 сезон)	https://kinokrad.co/299817-razgar-leta-1-sezon-2016.html	7	2016	США	ужасы, драма, детектив, мистика	Майрзи Алмас, Норман Бакли, Мик Гэррис	60
3174	Трепалиум (1 сезон)	https://kinokrad.co/301160-trepalium-1-sezon-2016.html	7	2016	Франция	фантастика, триллер, драма	Винсент Ланно	50
3175	Полицейский с рублёвки (1 сезон)	https://kinokrad.co/288070-policeyskiy-s-rubljovki-1-sezon-2016.html	9	2016	Россия	криминал, комедия, драма	Илья Куликов	48
3176	Кухня (6 сезон)	https://kinokrad.co/286975-kuhnya-6-sezon-2016.html	9	2016	Россия	комедия	Дмитрий Дьяченко, Жора Крыжовников, Антон Федотов	25
3177	Молодые и голодные (3 сезон)	https://kinokrad.co/287692-molodye-i-golodnye-3-sezon-2016.html	7	2016	США	комедия	Энди Кэдифф, Кэти Гарретсон, Фил Льюис	22
3178	Грейс и Фрэнки (2 сезон)	https://kinokrad.co/294496-greys-i-frjenki-2-sezon-2016.html	7	2016	США	комедия	Дин Паризо, Тим Киркби, Арлин Санфорд	30
3179	Цветы (1 сезон)	https://kinokrad.co/294322-cvety-1-sezon-2016.html	7	2016	Великобритания	драма, комедия	Уилл Шарп	30
3180	Разбивающая сердца (1 сезон)	https://kinokrad.co/292249-razbivayuschaya-serdca-1-sezon-2016.html	8	2016	США	драма	Эллисон Лидди, Лиз Фридлендер, Реджинальд Хадлин	60
3181	Пять (1 сезон)	https://kinokrad.co/294298-pyat-1-sezon-2016.html	9	2016	Великобритания	драма	Марк Тондерай	44
3182	Мистер Селфридж (4 сезон)	https://kinokrad.co/285965-mister-selfridzh-4-sezon-2016.html	8	2016	Великобритания	драма	Роб Эванс, Лоуренс Тилль, Энтони Бирн	45
3183	Чисто английские убийства (18 сезон)	https://kinokrad.co/286791-chisto-angliyskie-ubiystva-18-sezon-2016.html	7	2016	Великобритания	драма, криминал, детектив	Питер Смит, Ренни Рай, Ричард Холтхоуз	91
3184	Преступление по-американски (2 сезон)	https://kinokrad.co/286789-prestuplenie-po-amerikanski-2-sezon-2016.html	6	2016	США	драма	Джон Ридли, Рэйчел Моррисон, Джессика Ю	43
3185	Улица потрошителя (4 сезон)	https://kinokrad.co/287227-ulica-potroshitelya-4-sezon-2016.html	8	2016	Великобритания, Ирландия	криминал, детектив	Энди Уилсон, Том Шенклэнд, Энтони Бирн	55
3186	Беги! (1 сезон)	https://kinokrad.co/302993-begi-1-sezon-2016.html	9	2016	Россия	боевик, детектив	Андрей Волгин, Максим Кондратенко	52
3187	Королева юга (1 сезон)	https://kinokrad.co/298171-koroleva-yuga-1-sezon-2016.html	8	2016	США	триллер, драма, криминал	Дэйв Родригез, Мэттью Пенн, Т.Дж. Скотт	40
3188	Красавица и чудовище (4 сезон)	https://kinokrad.co/296095-krasavica-i-chudovische-4-sezon-2016.html	8	2016	Канада	триллер, драма, детектив, фантастика	Стюарт Гиллард, Стив Эделсон, Рик Бота	43
3189	Водолей (2 сезон)	https://kinokrad.co/297880-vodoley-2-sezon-2016.html	7	2016	США	триллер, драма, криминал	Джонас Пейт, Майкл Цинберг, Джон Эмиел	42
3190	Безмозглые (1 сезон)	https://kinokrad.co/297661-bezmozglye-1-sezon-2016.html	7	2016	США	ужасы, фантастика, триллер, драма, комедия	Джим МакКэй, Аллан Аркуш, Роберт Кинг	44
3191	Последний корабль (3 сезон)	https://kinokrad.co/296326-posledniy-korabl-3-sezon-2016.html	8	2016	США	фантастика, боевик, триллер, драма, военный	Джек Бендер, Пол Холахан, Серджо Мимика-Геззан	43
3192	На Чесапикских берегах (1 сезон)	https://kinokrad.co/301907-na-chesapikskih-beregah-1-sezon-2016.html	5	2016	США	семейный, драма	Мартин Вуд	43
3193	Американская готика (1 сезон)	https://kinokrad.co/297589-amerikanskaya-gotika-1-sezon-2016.html	8	2016	США	детектив	Мэтт Шекман	40
3194	Крик (2 сезон)	https://kinokrad.co/295960-krik-2-sezon-2016.html	8	2016	США	ужасы, криминал, детектив	Брайан Дэннели, Тим Хантер, Джеми Трэвис	45
3195	Кризис в шести сценах (1 сезон)	https://kinokrad.co/304535-krizis-v-shesti-scenah-1-sezon-2016.html	6	2016	США	комедия	Вуди Аллен	23
3196	Мамочки (2 сезон)	https://kinokrad.co/303077-mamochki-2-sezon-2016.html	8	2016	Россия, Украина	комедия	Александр Богданенко, Валерия Ивановская	24
3197	Прилив (1 сезон)	https://kinokrad.co/290134-springfloden-1-sezon-2016.html	7	2016	Швеция	криминал	Niklas Ohlson, Маттиас Олссон, Понтус Кленге	43
3199	Обитель лжи (5 сезон)	https://kinokrad.co/292456-obitel-lzhi-5-sezon-2016.html	7	2016	США	драма, комедия	Стивен Хопкинс, Мэттью Карнахан, Дэйзи фон Шерлер Майер	29
3200	Дэмиен (1 сезон)	https://kinokrad.co/287593-djemien-1-sezon-2016.html	8	2016	США	ужасы, драма, мистика	Ник Копус, Тим Эндрю, Эрнест Р. Дикерсон	60
3201	Гранчестер (2 сезон)	https://kinokrad.co/293191-granchester-2-sezon-2016.html	9	2016	Великобритания	драма, детектив	Тим Файвелл, Гарри Брэдбир, Джилл Робертсон	45
3202	Отмеченные (1 сезон)	https://kinokrad.co/317882-otmechennye-1-sezon-2016.html	7	2016	США	триллер	Ханна Макферсон	18
3203	Игра. Реванш (2 сезон)	https://kinokrad.co/296323-igra-revansh-2-sezon-2016.html	8	2016	Россия	детектив, криминал	Олег Галин, Иван Щёголев	45
3204	Темное дитя (4 сезон)	https://kinokrad.co/293617-temnoe-ditya-4-sezon-2016.html	7	2016	Канада	фантастика, боевик, драма	Джон Фоусет, Кен Джиротти, Дэвид Фрэйзи	43
3205	Гоморра (2 сезон)	https://kinokrad.co/295672-gomorra-2-sezon-2016.html	8	2016	Италия, Германия	драма, криминал	Стефано Соллима, Клаудио Капеллини, Франческа Коменчини	50
3206	Конферансье / Шоумен (1 сезон)	https://kinokrad.co/294253-konferanse-shoumen-1-sezon-2016.html	6	2016	Корея Южная	драма, мелодрама, комедия	Sung Chang Hong	58
3207	Подчинение (1 сезон)	https://kinokrad.co/295258-podchinenie-1-sezon-2016.html	7	2016	США	драма, мелодрама, детектив	Джеки Ст. Джеймс	24
3208	Ольга (1 сезон)	https://kinokrad.co/306458-olga.html	7	2016	Россия	комедия	Алексей Нужный, Игорь Волошин	24
3209	От заката до рассвета (3 сезон)	https://kinokrad.co/306455-ot-zakata-do-rassveta-3-sezon.html	6	2016	США	боевик, ужасы, криминал, фэнтези	Роберт Родригес, Джо Менендес, Дуайт Х. Литтл	60
3210	Все к лучшему / Перемены  ( 1 сезон)	https://kinokrad.co/306452-vse-k-luchshemu-peremeny-1-sezon.html	6	2016	США	комедия	Лэнс Бэнгс, Ниша Ганатра, Памела Адлон	30
3211	Атланта (1 сезон)	https://kinokrad.co/302987-atlanta-1-sezon-2016.html	5	2016	США	драма, комедия	Дональд Гловер, Хиро Мурай, Яница Браво	30
3212	Пропавший без вести (2 сезон)	https://kinokrad.co/281403-propavshiy-bez-vesti-2-sezon.html	7	2016	Великобритания, США	драма, криминал, детектив	Том Шенклэнд	60
3213	Торчки (1 сезон)	https://kinokrad.co/305678-torchki.html	6	2016	Великобритания	комедия	Том Маршалл	30
3214	Флибэг / Клоповник (1 сезон)	https://kinokrad.co/305699-flibeg-klopovnik-1-sezon.html	6	2016	Великобритания	комедия	Гарри Брэдбир, Тим Киркби	27
3215	Штамм (3 сезон)	https://kinokrad.co/305582-shtamm-3-sezon-2016.html	8	2016	США	ужасы, триллер, драма	Дж. Майлз Дэйл, Деран Сарафян, Фил Абрахам	43
3216	Элементарно (5 сезон)	https://kinokrad.co/295084-jelementarno-5-sezon-2016.html	9	2016	США	драма, криминал, детектив	Джон Полсон, Гай Ферленд, Сет Манн	43
3217	Бывает и хуже (8 сезон)	https://kinokrad.co/303587-byvaet-i-huzhe-8-sezon-2016.html	7	2016	США	комедия	Ли Шаллат Чемел, Эллиот Хегарти, Блейк Т. Эванс	22
3218	Гриффины (15 сезон)	https://kinokrad.co/307583-griffiny-15-sezon-2016.html	7	2016	США	мультфильм, комедия	Питер Шин, Джеймс Пурдум, Доминик Бьянчи	22
3219	Галерея Вельвет (4 сезон)	https://kinokrad.co/315834-galereya-velvet-4-sezon-2016.html	8	2016	Испания	драма	Давид Пинильос, Карлос Седес, Мануэль Гомес Перейра	43
3220	Ранчо (1 сезон)	https://kinokrad.co/292762-rancho-1-sezon-2016.html	7	2016	США	комедия	Дэвид Трейнер	30
3221	Анатомия страсти (13 сезон)	https://kinokrad.co/303596-anatomiya-strasti-13-sezon-2016.html	8	2016	США	драма, мелодрама	Роб Корн, Шандра Уилсон, Тони Фелан	43
3222	Симпсоны (28 сезон)	https://kinokrad.co/307388-simpsony-28-sezon-2016.html	8	2016	США	мультфильм, комедия	Марк Керклэнд, Стивен Дин Мур, Боб Андерсон	22
3223	Слепая зона (2 сезон)	https://kinokrad.co/305735-slepaya-zona-2-sezon.html	8	2016	США	триллер, драма, криминал, детектив	Маркос Сига, Роб Шейденгланц, Марк Пеллингтон	42
3224	Чёрный список (4 сезон)	https://kinokrad.co/305576-chjornyy-spisok-4-sezon-2016.html	8	2016	США	триллер, драма, криминал, детектив	Майкл В. Уоткинс, Эндрю МакКарти, Стив Эделсон	43
3225	Пожарные Чикаго / Чикаго в огне (5 сезон)	https://kinokrad.co/295081-chikago-v-ogne-5-sezon-2016.html	8	2016	США	драма	Джо Чаппелль, Сэнфорд Букставер, Реза Табризи	43
3226	База Куантико (2 сезон)	https://kinokrad.co/293884-baza-kuantiko-2-sezon-2016.html	7	2016	США	триллер, драма, криминал, детектив	Дженнифер Чэмберс Линч, Дэвид МакУиртер, Стефен Т. Кэй	42
3227	Агенты «Щ.И.Т.» (4 сезон)	https://kinokrad.co/303605-agenty-sch.i.t.-4-sezon-2016.html	8	2016	США	фантастика, боевик, триллер, драма	Винс Мисиано, Билл Джирхарт, Кевин Танчароэн	45
3228	Доктор Кто (10 сезон)	https://kinokrad.co/315842-doktor-kto-10-sezon-2016.html	8	2016	Великобритания	фантастика, драма, комедия, приключения, семейный	Грэм Харпер, Эрос Лин, Дуглас Маккиннон	43
3229	Берсерк (1 сезон)	https://kinokrad.co/317282-berserk-1-sezon-2016.html	8	2016	Япония	мультфильм, фэнтези, боевик, драма, аниме	Син Итагаки	25
3230	Сотня (3 сезон)	https://kinokrad.co/286307-sotnya-3-sezon-2016.html	9	2016	США	фантастика, драма, детектив	Дин Уайт, Эд Фрэйман, Майрзи Алмас	60
3231	Улов/ Ловушка (1 сезон)	https://kinokrad.co/292123-lovushka-1-sezon-2016.html	8	2016	США	триллер, драма, криминал	Кевин Даулинг, Реджина Кинг, Майк Листо	43
3232	Нобель: Мир любой ценой (1 сезон)	https://kinokrad.co/313342-nobel-mir-lyuboy-cenoy-1-sezon-2016.html	7	2016	Норвегия	триллер	Пер-Олав Соренсен	45
3233	Закусочная Боба (7 сезон)	https://kinokrad.co/309954-zakusochnaya-boba-7-sezon-2016.html	5	2016	США	мультфильм, комедия	Бернард Дерриман, Дженнифер Койл, Тайри Диллихей	22
3234	Осколки счастья 2 (2 сезон)	https://kinokrad.co/309497-oskolki-schastya-2-sezon-2016.html	3	2016	Россия	драма	Руслан Ибрагимов	44
3235	Туннель (2 сезон)	https://kinokrad.co/293605-tunnel-2-sezon-2016.html	7	2016	Великобритания, Франция	триллер, драма, криминал, детектив	Томас Винсент, Хетти Макдональд, Доминик Молль	60
3236	Шакал (1 сезон)	https://kinokrad.co/309491-shakal-1-sezon-2016.html	8	2016	Россия	детектив	Евгений Звездаков	50
3237	Готэм (3 сезон)	https://kinokrad.co/293881-gotjem-3-sezon-2016.html	8	2016	США	триллер, драма, криминал, детектив	Т.Дж. Скотт, Дэнни Кэннон, Эгил Эгилссон	44
3238	Бруклин 9-9 (4 сезон)	https://kinokrad.co/304439-bruklin-9-9-4-sezon-2016.html	8	2016	США	комедия, криминал	Дин Холлэнд, Майкл МакДональд, Крейг Зиск	23
3239	Стыд (3 сезон)	https://kinokrad.co/309353-styd-3-sezon-2016.html	9	2016	Норвегия	драма	Julie Andem	30
3240	Стыд (2 сезон)	https://kinokrad.co/309350-styd-2-sezon-2016.html	9	2016	Норвегия	драма	Julie Andem	30
3241	Мужчина в моём доме (1 сезон)	https://kinokrad.co/308705-muzhchina-v-mojom-dome-1-sezon-2016.html	7	2016	Корея Южная	драма, мелодрама, комедия	Ким Джон-мин	60
3242	Две девицы на мели (6 сезон)	https://kinokrad.co/311726-dve-devicy-na-meli-6-sezon-2016.html	6	2016	США	комедия	Дон Скардино, Фред Сэвэдж, Фил Льюис	22
3243	Медичи: Повелители Флоренции (1 сезон)	https://kinokrad.co/312966-medichi-poveliteli-florencii-1-sezon-2016.html	8	2016	Италия, Великобритания, Франция	триллер, драма, мелодрама, детектив, биография, история	Серджо Мимика-Геззан	60
3244	Внутри девятого номера (3 сезон)	https://kinokrad.co/314370-vnutri-devyatogo-nomera-3-sezon-2016.html	7	2016	Великобритания	ужасы, комедия, детектив	Гильем Моралес, Дэвид Керр, Стив Пембертон	30
3245	Это любовь (2 сезон)	https://kinokrad.co/308996-jeto-lyubov-2-sezon-2016.html	7	2016	Россия	комедия	Александр Богданенко	24
3246	Члены королевской семьи (3 сезон)	https://kinokrad.co/312886-chleny-korolevskoy-semi-3-sezon-2016.html	7	2016	США	драма	Марк Шван, Том Вон, Джеймс Лэфферти	42
3247	Оранжевый — хит сезона (4 сезон)	https://kinokrad.co/298294-oranzhevyy-hit-sezona-4-sezon-2016.html	8	2016	США	драма, комедия, криминал	Эндрю МакКарти, Майкл Трим, Фил Абрахам	51
3248	Правдоподобные истории Нила Геймана (1 сезон)	https://kinokrad.co/298297-pravdopodobnye-istorii-nila-geymana-1-sezon-2016.html	6	2016	Великобритания	ужасы, драма	Ян Форсис, Джейн Поллард	30
3249	Уильям наш, Шекспир (1 сезон)	https://kinokrad.co/295123-uilyam-nash-shekspir-1-sezon-2016.html	6	2016	Великобритания	комедия	Мэтт Липси, Бен Келлетт	30
3250	Дядя Бак (1 сезон)	https://kinokrad.co/298165-dyadya-bak-1-sezon-2016.html	7	2016	США	комедия	Реджинальд Хадлин, Райан Кейс, Фред Госс	
3251	Восьмидесятые (6 сезон)	https://kinokrad.co/298093-vosmidesyatye-6-sezon-2016.html	9	2016	Россия	комедия, мелодрама	Фёдор Стуков, Юлия Лёвкина, Филипп Коршунов	25
3252	Спецназ 38 (1 сезон)	https://kinokrad.co/298408-specnaz-38-1-sezon-2016.html	7	2016	Корея Южная	драма, криминал	Ким Джон-мин	60
3253	Папочка (5 сезон)	https://kinokrad.co/287071-papochka-5-sezon-2016.html	7	2016	США	драма, комедия, семейный	Майкл Лембек, Арлин Санфорд, Робби Кантримэн	22
3254	Проповедник (1 сезон)	https://kinokrad.co/290653-propovednik-1-sezon-2016.html	8	2016	США	фэнтези, драма, приключения		60
3255	Рейк (4 сезон)	https://kinokrad.co/298378-reyk-4-sezon-2016.html	7	2016	Австралия	драма, комедия	Питер Дункан, Роуэн Вудс, Джесика Хоббс	43
3256	Американский запад (1 сезон)	https://kinokrad.co/297643-amerikanskiy-zapad-1-sezon-2016.html	7	2016	США	вестерн	Джон Илер	43
3257	Крушение (1 сезон)	https://kinokrad.co/297592-krushenie-1-sezon-2016.html	7	2016	США	комедия	Джеймс Гриффитс, Райан Кейс, Стюарт МакДональд	21
3258	Уэнтуорт (4 сезон)	https://kinokrad.co/293635-ujentuort-4-sezon-2016.html	8	2016	Австралия	драма, криминал	Кевин Карлин, Катрин Миллар, Стив Джодрелл	45
3259	Тайный город (1 сезон)	https://kinokrad.co/297598-taynyy-gorod-1-sezon-2016.html	6	2016	Австралия	триллер	Эмма Фриман	48
3260	Ужасы интернета (1 сезон)	https://kinokrad.co/296104-bad-internet-1-sezon-2016.html	6	2016	США	комедия	Мэттью Поллок, Tim Wilkerson	11
3261	Вечный отпуск (1 сезон)	https://kinokrad.co/291376-vechnyy-otpusk-1-sezon-2016.html	8	2016	Россия, Украина	комедия	Валентина Власова	24
3262	Сигнал (1 сезон)	https://kinokrad.co/290122-signal-1-sezon-2016.html	7	2016	Корея Южная	триллер, драма, криминал	Ким Вон Сок	70
3263	С чистого листа (1 сезон)	https://kinokrad.co/292255-s-chistogo-lista-1-sezon-2016.html	5	2016	США	комедия	Уолли Пфистер, Том ДиЧилло, Джош Гордон	30
3264	Смертельные поля (1 сезон)	https://kinokrad.co/292252-smertelnye-polya-1-sezon-2016.html	6	2016	США	криминал		45
3265	Кордон (1 сезон)	https://kinokrad.co/292243-kordon-1-sezon-2016.html	7	2016	Бельгия	драма	Tim Mielants	55
3266	Крах (3 сезон)	https://kinokrad.co/307433-krah-3-sezon-2016.html	8	2016	Великобритания	триллер, драма, криминал	Аллан Кабитт, Якоб Вербрюгген	58
3267	К2 (1 сезон)	https://kinokrad.co/307427-k2-1-sezon-2016.html	7	2016	Корея Южная	триллер		75
3268	Очевидное (3 сезон)	https://kinokrad.co/307379-ochevidnoe-3-sezon-2016.html	3	2016	США	драма, комедия	Джилл Солоуэй, Ниша Ганатра, Андреа Арнольд	30
3269	Визави (2 сезон)	https://kinokrad.co/303065-vizavi-2-sezon-2016.html	8	2016	Испания	триллер, драма	Хесус Кольменар, Хесус Родриго, Сандра Гальего	60
3270	Королева сахара (1 сезон)	https://kinokrad.co/303071-koroleva-sahara-1-sezon-2016.html	5	2016	США	драма	Нима Барнетт, Кэт Кэндлер, Ава ДюВерней	44
3271	Мистер Хутен и леди (1 сезон)	https://kinokrad.co/307142-mister-huten-i-ledi-1-sezon.html	9	2016	Великобритания	драма, комедия, приключения, детектив	Джастин Молотников, Дэниэл О’Хара, Колин Тиг	46
3272	Киллджойс (2 сезон)	https://kinokrad.co/298897-killdzhoys-2-sezon-2016.html	8	2016	Канада	фантастика	Крис Грисмер, Питер Стеббингс, Паоло Барзмен	60
3273	Разгар лета (1 сезон)	https://kinokrad.co/299817-razgar-leta-1-sezon-2016.html	7	2016	США	ужасы, драма, детектив, мистика	Майрзи Алмас, Норман Бакли, Мик Гэррис	60
3274	Трепалиум (1 сезон)	https://kinokrad.co/301160-trepalium-1-sezon-2016.html	7	2016	Франция	фантастика, триллер, драма	Винсент Ланно	50
3275	Полицейский с рублёвки (1 сезон)	https://kinokrad.co/288070-policeyskiy-s-rubljovki-1-sezon-2016.html	9	2016	Россия	криминал, комедия, драма	Илья Куликов	48
3276	Кухня (6 сезон)	https://kinokrad.co/286975-kuhnya-6-sezon-2016.html	9	2016	Россия	комедия	Дмитрий Дьяченко, Жора Крыжовников, Антон Федотов	25
3277	Молодые и голодные (3 сезон)	https://kinokrad.co/287692-molodye-i-golodnye-3-sezon-2016.html	7	2016	США	комедия	Энди Кэдифф, Кэти Гарретсон, Фил Льюис	22
3278	Грейс и Фрэнки (2 сезон)	https://kinokrad.co/294496-greys-i-frjenki-2-sezon-2016.html	7	2016	США	комедия	Дин Паризо, Тим Киркби, Арлин Санфорд	30
3279	Цветы (1 сезон)	https://kinokrad.co/294322-cvety-1-sezon-2016.html	7	2016	Великобритания	драма, комедия	Уилл Шарп	30
3280	Разбивающая сердца (1 сезон)	https://kinokrad.co/292249-razbivayuschaya-serdca-1-sezon-2016.html	8	2016	США	драма	Эллисон Лидди, Лиз Фридлендер, Реджинальд Хадлин	60
3281	Пять (1 сезон)	https://kinokrad.co/294298-pyat-1-sezon-2016.html	9	2016	Великобритания	драма	Марк Тондерай	44
3282	Мистер Селфридж (4 сезон)	https://kinokrad.co/285965-mister-selfridzh-4-sezon-2016.html	8	2016	Великобритания	драма	Роб Эванс, Лоуренс Тилль, Энтони Бирн	45
3283	Чисто английские убийства (18 сезон)	https://kinokrad.co/286791-chisto-angliyskie-ubiystva-18-sezon-2016.html	7	2016	Великобритания	драма, криминал, детектив	Питер Смит, Ренни Рай, Ричард Холтхоуз	91
3284	Преступление по-американски (2 сезон)	https://kinokrad.co/286789-prestuplenie-po-amerikanski-2-sezon-2016.html	6	2016	США	драма	Джон Ридли, Рэйчел Моррисон, Джессика Ю	43
3285	Улица потрошителя (4 сезон)	https://kinokrad.co/287227-ulica-potroshitelya-4-sezon-2016.html	8	2016	Великобритания, Ирландия	криминал, детектив	Энди Уилсон, Том Шенклэнд, Энтони Бирн	55
3286	Беги! (1 сезон)	https://kinokrad.co/302993-begi-1-sezon-2016.html	9	2016	Россия	боевик, детектив	Андрей Волгин, Максим Кондратенко	52
3287	Королева юга (1 сезон)	https://kinokrad.co/298171-koroleva-yuga-1-sezon-2016.html	8	2016	США	триллер, драма, криминал	Дэйв Родригез, Мэттью Пенн, Т.Дж. Скотт	40
3288	Красавица и чудовище (4 сезон)	https://kinokrad.co/296095-krasavica-i-chudovische-4-sezon-2016.html	8	2016	Канада	триллер, драма, детектив, фантастика	Стюарт Гиллард, Стив Эделсон, Рик Бота	43
3289	Водолей (2 сезон)	https://kinokrad.co/297880-vodoley-2-sezon-2016.html	7	2016	США	триллер, драма, криминал	Джонас Пейт, Майкл Цинберг, Джон Эмиел	42
3290	Безмозглые (1 сезон)	https://kinokrad.co/297661-bezmozglye-1-sezon-2016.html	7	2016	США	ужасы, фантастика, триллер, драма, комедия	Джим МакКэй, Аллан Аркуш, Роберт Кинг	44
3291	Последний корабль (3 сезон)	https://kinokrad.co/296326-posledniy-korabl-3-sezon-2016.html	8	2016	США	фантастика, боевик, триллер, драма, военный	Джек Бендер, Пол Холахан, Серджо Мимика-Геззан	43
3292	На Чесапикских берегах (1 сезон)	https://kinokrad.co/301907-na-chesapikskih-beregah-1-sezon-2016.html	5	2016	США	семейный, драма	Мартин Вуд	43
3293	Американская готика (1 сезон)	https://kinokrad.co/297589-amerikanskaya-gotika-1-sezon-2016.html	8	2016	США	детектив	Мэтт Шекман	40
3294	Крик (2 сезон)	https://kinokrad.co/295960-krik-2-sezon-2016.html	8	2016	США	ужасы, криминал, детектив	Брайан Дэннели, Тим Хантер, Джеми Трэвис	45
3295	Кризис в шести сценах (1 сезон)	https://kinokrad.co/304535-krizis-v-shesti-scenah-1-sezon-2016.html	6	2016	США	комедия	Вуди Аллен	23
3296	Мамочки (2 сезон)	https://kinokrad.co/303077-mamochki-2-sezon-2016.html	8	2016	Россия, Украина	комедия	Александр Богданенко, Валерия Ивановская	24
3297	Прилив (1 сезон)	https://kinokrad.co/290134-springfloden-1-sezon-2016.html	7	2016	Швеция	криминал	Niklas Ohlson, Маттиас Олссон, Понтус Кленге	43
3298	Подземка (1 сезон)	https://kinokrad.co/289930-podzemka-1-sezon-2016.html	8	2016	США	драма, история	Энтони Хемингуэй	60
3299	Обитель лжи (5 сезон)	https://kinokrad.co/292456-obitel-lzhi-5-sezon-2016.html	7	2016	США	драма, комедия	Стивен Хопкинс, Мэттью Карнахан, Дэйзи фон Шерлер Майер	29
3300	Дэмиен (1 сезон)	https://kinokrad.co/287593-djemien-1-sezon-2016.html	8	2016	США	ужасы, драма, мистика	Ник Копус, Тим Эндрю, Эрнест Р. Дикерсон	60
3301	Острые козырьки / Заточенные кепки (3 сезон)	https://kinokrad.co/293791-ostrye-kozyrki-zatochennye-kepki-3-sezon-2016.html	9	2016	Великобритания	драма, криминал	Колм МакКарти, Tim Mielants, Отто Баферст	60
3302	Ведьма (1 сезон)	https://kinokrad.co/293878-vedma-1-sezon-2016.html	7	2016	Россия	мелодрама, драма, мистика	Игорь Забара, Бата Недич	45
3303	Американцы (4 сезон)	https://kinokrad.co/290131-amerikancy-4-sezon-2016.html	8	2016	США	триллер, драма, криминал, детектив	Дэниэл Сакхайм, Томас Шламми, Кевин Даулинг	43
3304	Американская семейка (8 сезон)	https://kinokrad.co/303599-amerikanskaya-semeyka-8-sezon-2016.html	6	2016	США	мелодрама, комедия	Гейл Манкусо, Майкл Алан Спиллер, Джейсон Уайнер	22
3305	Последний кандидат (1 сезон)	https://kinokrad.co/306917-posledniy-kandidat-1-sezon.html	8	2016	США	триллер, драма	Пол А. Эдвардс, Пол МакГиган, Серджо Мимика-Геззан	60
3306	Морская полиция: Спецотдел (14 сезон)	https://kinokrad.co/307436-morskaya-policiya-specotdel-14-sezon-2016.html	7	2016	США	боевик, триллер, драма, комедия, криминал, детектив	Дэннис Смит, Тони Уормби, Терренс О’Хара	43
3307	Американская домохозяйка (1 сезон)	https://kinokrad.co/311138-amerikanskaya-domohozyayka-1-sezon-2016.html	8	2016	США	комедия	Райан Кейс, Рубен Флейшер, Джон Фортенберри	30
3308	Трудности ассимиляции (3 сезон)	https://kinokrad.co/312722-trudnosti-assimilyacii-3-sezon-2016.html	6	2016	США	комедия	Уильям Перпл, Линн Шелтон, Фил Трэйл	22
3309	Все схвачено (1 сезон)	https://kinokrad.co/303939-vse-shvacheno-1-sezon-2016.html	6	2016	США	комедия	Джеймс Берроуз	30
3310	Радиоволна (1 сезон)	https://kinokrad.co/311122-radiovolna-1-sezon-2016.html	8	2016	США	фантастика, фэнтези, триллер, драма, детектив, мистика	Джон Т. Кречмер, Брэд Андерсон, Майкл Филдс	42
3311	Марчелла / Марселла (1 сезон)	https://kinokrad.co/293203-marchella-marsella-1-sezon-2016.html	8	2016	Великобритания	триллер, драма, криминал	Чарльз Мартин, Джонатан Теплицки, Хенрик Георгссон	60
3312	Фальсификация (3 сезон)	https://kinokrad.co/290494-falsifikaciya-3-sezon-2016.html	7	2016	США	комедия	Джеми Трэвис, Клер Скэнлон, Эрин Эрлих	30
3313	Слово на букву А (1 сезон)	https://kinokrad.co/293497-slovo-na-bukvu-a-1-sezon-2016.html	7	2016	Великобритания	драма	Питер Каттанео, Доминик Леклерк, Сьюзэн Талли	60
3314	Следователь Тихонов (1 сезон)	https://kinokrad.co/293467-sledovatel-tihonov-1-sezon-2016.html	8	2016	Россия	детектив, криминал	Сергей Снежкин, Эдуард Оганесян	42
3315	По долгу службы (3 сезон)	https://kinokrad.co/293344-po-dolgu-sluzhby-3-sezon-2016.html	8	2016	Великобритания	триллер, драма, криминал	Дуглас Маккиннон, Дэвид Кэффри, Дэниэл Неттхейм	60
3316	Из рода волков / Волчья кровь (4 сезон)	https://kinokrad.co/292144-iz-roda-volkov-volchya-krov-4-sezon-2016.html	8	2016	Великобритания	фэнтези, семейный	Jermain Julien, Мэттью Эванс, Эндрю Ганн	22
3317	Пришельцы (1 сезон)	https://kinokrad.co/292126-prishelcy-1-sezon-2016.html	5	2016	Великобритания	фэнтези, драма, комедия	Лоуренс Гоф, Джонатан ван Тюллекен	60
3318	Доктор Торн (1 сезон)	https://kinokrad.co/292036-doktor-torn-1-sezon-2016.html	7	2016	Великобритания	драма	Найал МакКормик	48
3319	Счастливая долина (2 сезон)	https://kinokrad.co/287083-schastlivaya-dolina-2-sezon-2016.html	6	2016	Великобритания	драма, криминал	Салли Уэйнрайт, Эрос Лин, Тим Файвелл	60
3320	Счастливчик (1 сезон)	https://kinokrad.co/287055-schastlivchik-1-sezon-2016.html	8	2016	45 мин	фантастика, боевик	Дэвид Кэффри, Энди де Эммони, Brian Kelly	60
3321	Шетланд (3 сезон)	https://kinokrad.co/288256-shetland-3-sezon-2016.html	8	2016	Великобритания	драма, криминал, детектив	Jan Matthys, Тадеус О’Салливан, Питер Хор	60
3322	Клим (1 сезон)	https://kinokrad.co/287197-klim-1-sezon-2016.html	8	2016	Россия	драма, криминал, триллер	Карен Оганесян	47
3323	Перевозчик (1 сезон)	https://kinokrad.co/292759-perevozchik-1-sezon-2016.html	7	2016	Россия	боевик, детектив	Сергей Полянский	45
3324	Всё включено (8 сезон)	https://kinokrad.co/292027-vsjo-vklyucheno-8-sezon-2016.html	6	2016	Великобритания	комедия	Сэнди Джонсон, Дэвид Сент, Кевин Аллен	30
3325	Обман (1 сезон)	https://kinokrad.co/292453-obman-1-sezon-2016.html	5	2016	Дания	триллер, драма, криминал	Янник Йохансен, Сёрен Балле, Пер Флю	59
3326	Крыша мира (1 сезон)	https://kinokrad.co/292447-krysha-mira-1-sezon-2016.html	8	2016	Россия	комедия	Роман Фокин, Антон Маслов	24
3327	Сны (1 сезон)	https://kinokrad.co/285981-sny-1-sezon-2016.html	5	2016	Россия	драма, детектив	Александр Пархоменко, Ева Стрельникова, Андрей Осмаловский	46
3328	Молодой Морс (3 сезон)	https://kinokrad.co/286465-molodoy-mors-3-sezon-2016.html	9	2016	Великобритания	драма, криминал, детектив	Колм МакКарти, Эдвард Базалгетт, Том Вон	90
3329	Последний мент (2 сезон)	https://kinokrad.co/290398-posledniy-ment-2-sezon-2016.html	8	2016	Россия, Украина	детектив, драма, комедия	Михаил Жерневский, Алексей Шапарев	39
3330	Изгои (1 сезон)	https://kinokrad.co/286877-izgoi-1-sezon-2016.html	8	2016	США	драма	Адам Бернштейн, Майкл Трим	60
3331	Хэп и Леонард (1 сезон)	https://kinokrad.co/288250-hjep-i-leonard-1-sezon-2016.html	8	2016	США	триллер, драма, криминал	Джим Микл, Ник Гомез	60
3332	Охота на оленей (1 сезон)	https://kinokrad.co/290047-ohota-na-oleney-1-sezon-2016.html	7	2016	Великобритания	комедия	Джим Филд Смит	
3333	Сумеречные охотники (1 сезон)	https://kinokrad.co/285973-sumerechnye-ohotniki-1-sezon-2016.html	8	2016	США	фэнтези, боевик, драма	Дж. Майлз Дэйл, МакДжи, Майрзи Алмас	42
3334	Любовь (1 сезон)	https://kinokrad.co/287689-lyubov-1-sezon-2016.html	7	2016	США	мелодрама, комедия	Дин Холлэнд, Джон Слэттери, Стив Бушеми	50
3335	Черные паруса (3 сезон)	https://kinokrad.co/286309-chernye-parusa-3-sezon-2016.html	9	2016	США, ЮАР	драма, приключения	Стив Бойум, Алик Сахаров, Лукас Эттлин	56
3336	Второй шанс (1 сезон)	https://kinokrad.co/285619-vtoroy-shans-1-sezon-2016.html	9	2016	США	ужасы, фантастика, драма	Майкл Куэста, Сара Пиа Андерсон, Адам Кэйнс	42
3337	Бородач (1 сезон)	https://kinokrad.co/287043-borodach-1-sezon-2016.html	7	2016	Россия	комедия	Заур Болотаев	25
3338	Баскетс / Клоун (1 сезон)	https://kinokrad.co/286353-baskets-kloun-1-sezon-2016.html	6	2016	США	комедия	Джонатан Крисел	30
3339	Остров (1 сезон)	https://kinokrad.co/286033-ostrov-1-sezon-2016.html	8	2016	Россия	комедия	Артем Насыбулин, Михаил Старчак, Александр Наумов	24
3340	Ночной администратор (1 сезон)	https://kinokrad.co/287253-nochnoy-administrator-1-sezon-2016.html	8	2016	Великобритания, США	боевик, триллер, драма	Сюзанна Бир	60
3341	Мужчина ищет женщину (2 сезон)	https://kinokrad.co/286031-muzhchina-ischet-zhenschinu-2-sezon-2016.html	5	2016	США	фэнтези, мелодрама, комедия	Джонатан Крисел, Тим Киркби, Дэниэл Грэй Лонгино	21
3342	Выжить После (3 сезон)	https://kinokrad.co/287113-vyzhit-posle-3-sezon-2016.html	9	2016	Россия	триллер	Душан Глигоров, Александр Богуславский, Андрей Комаров	48
3343	Выжить После (2 сезон)	https://kinokrad.co/287063-vyzhit-posle-2-sezon-2016.html	8	2016	Россия	триллер	Душан Глигоров, Александр Богуславский, Андрей Комаров	48
3344	Агент Картер (2 сезон)	https://kinokrad.co/286467-agent-karter-2-sezon-2016.html	8	2016	США	фантастика, боевик, приключения	Стивен Крегг, Луис Д’Эспозито, Питер Лето	42
3345	Хроники Шаннары (1 сезон)	https://kinokrad.co/285779-hroniki-shannary-1-sezon-2016.html	9	2016	США	фантастика, фэнтези, приключения	Брэд Тернер, Джонатан Либесман, Джеймс Маршалл	42
3346	Восстание (1 сезон)	https://kinokrad.co/286343-vosstanie-1-sezon-2016.html	6	2016	Ирландия, Великобритания	драма, военный	Аку Лоухимиес	50
3347	Война и мир (1 сезон)	https://kinokrad.co/285787-voyna-i-mir-1-sezon-2016.html	8	2016	США, Великобритания	драма, мелодрама, военный, история	Том Харпер	60
3348	Бешеные псы (1 сезон)	https://kinokrad.co/285977-beshenye-psy-1-sezon-2016.html	8	2016	США	драма, комедия, криминал	Чарльз МакДугалл, Ута Бризвитц, Джон Дэвид Коулз	60
3349	Галавант (2 сезон)	https://kinokrad.co/271984-galavant-2-sezon-2016.html	6	2016	США	мюзикл, комедия	Крис Кох	23
3350	Слэшер / Резня (1 сезон)	https://kinokrad.co/287608-sljesher-reznya-1-sezon-2016.html	8	2016	США, Великобритания, Канада	ужасы, триллер, драма	Крэйг Дэвид Уоллес	49
3351	Укушенная (3 сезон)	https://kinokrad.co/286785-ukushennaya-3-sezon-2016.html	7	2016	Канада	ужасы, фэнтези, драма, детектив	Джеймс Даннисон, Грант Харви, Т.Дж. Скотт	43
3352	Напарницы (1 сезон)	https://kinokrad.co/289966-naparnicy-1-sezon-2016.html	7	2016	Россия	мелодрама, детектив	Гузэль Киреева	48
3353	11/22/63 (1 сезон)	https://kinokrad.co/286779-112263-1-sezon-2016.html	9	2016	США	фантастика, триллер, детектив	Фред Туа, Джеймс Франко, Джеймс Кент	
3354	Бесстыдники (6 сезон)	https://kinokrad.co/280096-besstydniki-6-sezon-2016.html	9	2016	США	драма, комедия	Марк Майлод, Мими Ледер, Энтони Хемингуэй	55
3355	Тринадцать (1 сезон)	https://kinokrad.co/289957-trinadcat-1-sezon-2016.html	8	2016	Великобритания	драма	Ванесса Касвиль, Чина Му-Ен	57
3356	Босх (2 сезон)	https://kinokrad.co/289954-bosh-2-sezon-2016.html	8	2016	США	драма, детектив	Алекс Закржевский, Эрнест Р. Дикерсон, Кевин Даулинг	51
3357	Оттенки синего (1 сезон)	https://kinokrad.co/286361-ottenki-sinego-1-sezon-2016.html	7	2016	США	драма, криминал	Дэн Лернер, Стивен ДеПол, Барри Левинсон	43
3358	Секретные материалы (10 сезон)	https://kinokrad.co/286561-sekretnye-materialy-10-sezon-2016.html	8	2016	Канада	фантастика, триллер, драма, детектив	Ким Мэннерс, Роб Боумен, Дэвид Наттер	43
3359	Беовульф (1 сезон)	https://kinokrad.co/285971-beovulf-1-sezon-2016.html	7	2016	США	фэнтези, боевик, драма, приключения	Джон Ист, Джулиан Холмс, Марек Лоузи	45
3360	Более полный дом (1 сезон)	https://kinokrad.co/287761-bolee-polnyy-dom-1-sezon-2016.html	8	2016	США	комедия, семейный	Рич Коррелл, Кэти Гарретсон, Марк Сендроуски	30
3361	Вера (6 сезон)	https://kinokrad.co/287362-vera-6-sezon-2016.html	8	2016	Великобритания	драма, криминал, детектив	Уильям Синклер, Питер Хор, Пол Уиттингтон	95
3362	Сорвиголова (2 сезон)	https://kinokrad.co/287764-sorvigolova-2-sezon-2016.html	9	2016	США	боевик, драма, криминал	Фил Абрахам, Фэррен Блэкберн, Стивен С. ДеНайт	54
3363	Колония (1 сезон)	https://kinokrad.co/285617-koloniya-1-sezon-2016.html	7	2016	США	фантастика	Хуан Хосе Кампанелла	42
3364	Светофор (8 сезон)	https://kinokrad.co/286977-svetofor-8-sezon-2016.html	8	2016	Россия	комедия	Роман Фокин	24
3365	В Филадельфии всегда солнечно (11 сезон)	https://kinokrad.co/285961-v-filadelfii-vsegda-solnechno-11-sezon-2016.html	6	2016	США	комедия	Мэтт Шекман, Фред Сэвэдж, Дэниэл Эттиэс	22
3366	Правильная жена (7 сезон)	https://kinokrad.co/284651-pravilnaya-zhena-7-sezon-2015.html	6	2015	США	драма, криминал, детектив	Розмари Родригез, Брук Кеннеди, Майкл Цинберг	43
3367	Настоящий детектив 2 сезон	https://kinokrad.co/278441-nastoyaschiy-detektiv-2-sezon.html	8	2015	США	детектив, криминал, драма	Кэри Фукунага, Джастин Лин	60
3368	Нереальный холостяк (3 сезон)	https://kinokrad.co/334312-nerealnyy-holostyak-3-sezon.html	6	2015	США	драма	Питер О’Фаллон, Шири Эпплби, Дэвид Соломон	42
3369	Сказки при свете (1 сезон)	https://kinokrad.co/334330-skazki-pri-svete-1-sezon.html	6	2015	Австралия	документальный	Abraham Joffe	23
3370	Сказки при свете (2 сезон)	https://kinokrad.co/334333-skazki-pri-svete-2-sezon.html	5	2015	Австралия	документальный	Abraham Joffe	23
3371	Джессика Джонс (2 сезон)	https://kinokrad.co/326009-dzhessika-dzhons-2-sezon.html	7	2015	США	фантастика, боевик, триллер, драма, криминал	Ута Бризвитц, Розмари Родригез, Саймон Селлан Джоунс	56
3372	Незабытый (1 сезон)	https://kinokrad.co/303368-nezabytyy-1-sezon-2015.html	8	2015	Великобритания	драма, криминал	Энди Уилсон	60
3373	Бриллиантовый любовник (1 сезон)	https://kinokrad.co/318190-brilliantovyy-lyubovnik-1-sezon-2015.html	7	2015	Китай	комедия, мелодрама	Минг Чжан Чен	45
3374	Слепая (2 сезон)	https://kinokrad.co/283427-slepaya-2-sezon-2015.html	7	2015	Россия	драма	Кира Мещерякова, Алина Поличук, Дмитрий Ющенко	24
3375	Московская борзая (1 сезон)	https://kinokrad.co/329543-moskovskaya-borzaya-1-sezon.html	5	2015	Россия	криминал, мелодрама	Роман Просвирнин	50
3376	Империя (2 сезон)	https://kinokrad.co/323291-imperiya-2-sezon.html	7	2015	США	драма, музыка	Санаа Хамри, Крэйг Брюэр, Дэнни Стронг	42
3377	Империя (1 сезон)	https://kinokrad.co/323283-imperiya-1-sezon.html	5	2015	США	драма, музыка	Санаа Хамри, Крэйг Брюэр, Дэнни Стронг	42
3378	12 обезьян (4 сезон)	https://kinokrad.co/327953-12-obezyan-4-sezon.html	7	2015	США	фантастика, триллер, драма, детектив, приключения	Дэвид Гроссман, Терри Маталас, Магнус Мартенс	42
3379	Чокнутая бывшая (4 сезон)	https://kinokrad.co/331784-choknutaya-byvshaya-4-sezon.html	6	2015	США	мюзикл, комедия	Стюарт МакДональд, Кабир Ахтар, Эрин Эрлих	42
3380	Последнее королевство (3 сезон)	https://kinokrad.co/331673-poslednee-korolevstvo-3-sezon.html	7	2015	Великобритания	боевик, драма, история	Питер Хор, Джон Ист, Энтони Бирн	60
3381	Фортитьюд	https://kinokrad.co/280484-fortityud-11-seriya.html	7	2015	Великобритания	триллер, драма, детектив	Сэм Миллер, Хетти Макдональд, Ник Харран	47
3382	Жизнь в деталях (3 сезон)	https://kinokrad.co/323235-zhizn-v-detalyah-3-sezon.html	6	2015	США	комедия	Джейсон Уайнер, Чад Лоу, Алиса Статман	22
3383	Мотив (3 сезон)	https://kinokrad.co/286425-motiv-3-sezon-2015.html	6	2015	Канада	триллер, драма, криминал, детектив	Энди Микита, Стурла Гуннарссон, Дэвид Фрэйзи	42
3384	Карточный домик 3 сезон (1-13 серия)	https://kinokrad.co/280821-kartochnyy-domik-3-sezon.html	9	2015	США	драма	Джеймс Фоули, Джон Дэвид Коулз, Карл Франклин	50
3385	Банши 3 сезон (1-10 серия)	https://kinokrad.co/279944-banshi-3-sezon.html	9	2015	США	боевик, триллер, драма, криминал, детектив	Грег Яйтанс, Оле Кристиан Мадсен, Лони Перистер	43
3386	Девочки 4 сезон (10 серия)	https://kinokrad.co/280225-devochki-4-sezon-10-seriya.html	4	2015	США	драма, комедия	Лина Данэм, Джесси Перец, Ричард Шепард	30
3387	Полумиры (1 сезон)	https://kinokrad.co/328322-polumiry-1-sezon.html	6	2015	Индонезия	ужасы, фэнтези, триллер, детектив	Джоко Анвар, Экачай Уэкронгтам	60
3388	Полдарк (4 сезон)	https://kinokrad.co/328172-poldark-4-sezon.html	7	2015	Великобритания	драма, мелодрама, история	Джосс Эгнью, Эдвард Базалгетт, Уильям МакГрегор	60
3389	Больница Никербокер (2 сезон)	https://kinokrad.co/284245-bolnica-nikerboker-2-sezon-2015.html	8	2015	США	драма	Стивен Содерберг	45
3390	Эш против Зловещих мертвецов (1 сезон)	https://kinokrad.co/283066-jesh-protiv-zloveschih-mertvecov-1-sezon-2015.html	9	2015	США	ужасы, боевик, комедия	Майкл Херст, Рик Джейкобсон, Сэм Рэйми	30
3391	Ходячие мертвецы (6 сезон)	https://kinokrad.co/283757-hodyachie-mertvecy-6-sezon-2015.html	9	2015	США	ужасы, драма	Грег Никотеро, Эрнест Р. Дикерсон, Гай Ферленд	43
3392	Сверхъестественное (11 сезон)	https://kinokrad.co/283897-sverhestestvennoe-11-sezon-2015.html	9	2015	США	ужасы, фэнтези, триллер, драма, детектив, мистика	Роберт Сингер, Филип Сгриккиа, Ким Мэннерс	43
3393	Фарго (2 сезон)	https://kinokrad.co/281224-fargo-2-sezon-2015.html	8	2015	США	триллер, драма, криминал	Рэндолл Айнхорн, Адам Бернштейн, Колин Бакси	53
3394	Конмэн (1 сезон)	https://kinokrad.co/325013-konmen-1-sezon.html	6	2015	США	комедия	Алан Тьюдик, Энтони Леонарди III	12
3395	Связи (1 сезон)	https://kinokrad.co/337149-svyazi-1-sezon.html	6	2015	Болгария	драма, комедия	Виктор Божинов, Vassil Stefanov, Dimitar Dimitrov	
3396	Ищейка (2 сезон)	https://kinokrad.co/329312-ischeyka-2-sezon.html	6	2015	Россия	детектив	Дмитрий Брусникин	50
3397	Ищейка (1 сезон)	https://kinokrad.co/329309-ischeyka-1-sezon.html	6	2015	Россия	детектив	Дмитрий Брусникин	50
3398	Джессика Джонс (1 сезон)	https://kinokrad.co/326006-dzhessika-dzhons-1-sezon.html	7	2015	США	фантастика, боевик, триллер, драма, криминал	Ута Бризвитц, Розмари Родригез, Саймон Селлан Джоунс	56
3399	Закон и порядок. Специальный корпус (15 сезон)	https://kinokrad.co/325331-zakon-i-poryadok.-specialnyy-korpus-15-sezon.html	7	2015	США	триллер, драма, криминал, детектив	Дэвид Платт, Питер Лето, Жан Де Сегонзак	43
3400	Визави (3 сезон)	https://kinokrad.co/327323-vizavi-3-sezon.html	8	2015	Испания	триллер, драма	Хесус Кольменар, Хесус Родриго, Сандра Гальего	53
3401	Острые козырьки / Заточенные кепки (3 сезон)	https://kinokrad.co/293791-ostrye-kozyrki-zatochennye-kepki-3-sezon-2016.html	9	2016	Великобритания	драма, криминал	Колм МакКарти, Tim Mielants, Отто Баферст	60
3402	Ведьма (1 сезон)	https://kinokrad.co/293878-vedma-1-sezon-2016.html	7	2016	Россия	мелодрама, драма, мистика	Игорь Забара, Бата Недич	45
3403	Американцы (4 сезон)	https://kinokrad.co/290131-amerikancy-4-sezon-2016.html	8	2016	США	триллер, драма, криминал, детектив	Дэниэл Сакхайм, Томас Шламми, Кевин Даулинг	43
3404	Американская семейка (8 сезон)	https://kinokrad.co/303599-amerikanskaya-semeyka-8-sezon-2016.html	6	2016	США	мелодрама, комедия	Гейл Манкусо, Майкл Алан Спиллер, Джейсон Уайнер	22
3405	Последний кандидат (1 сезон)	https://kinokrad.co/306917-posledniy-kandidat-1-sezon.html	8	2016	США	триллер, драма	Пол А. Эдвардс, Пол МакГиган, Серджо Мимика-Геззан	60
3406	Морская полиция: Спецотдел (14 сезон)	https://kinokrad.co/307436-morskaya-policiya-specotdel-14-sezon-2016.html	7	2016	США	боевик, триллер, драма, комедия, криминал, детектив	Дэннис Смит, Тони Уормби, Терренс О’Хара	43
3407	Американская домохозяйка (1 сезон)	https://kinokrad.co/311138-amerikanskaya-domohozyayka-1-sezon-2016.html	8	2016	США	комедия	Райан Кейс, Рубен Флейшер, Джон Фортенберри	30
3408	Трудности ассимиляции (3 сезон)	https://kinokrad.co/312722-trudnosti-assimilyacii-3-sezon-2016.html	6	2016	США	комедия	Уильям Перпл, Линн Шелтон, Фил Трэйл	22
3409	Все схвачено (1 сезон)	https://kinokrad.co/303939-vse-shvacheno-1-sezon-2016.html	6	2016	США	комедия	Джеймс Берроуз	30
3410	Радиоволна (1 сезон)	https://kinokrad.co/311122-radiovolna-1-sezon-2016.html	8	2016	США	фантастика, фэнтези, триллер, драма, детектив, мистика	Джон Т. Кречмер, Брэд Андерсон, Майкл Филдс	42
3411	Марчелла / Марселла (1 сезон)	https://kinokrad.co/293203-marchella-marsella-1-sezon-2016.html	8	2016	Великобритания	триллер, драма, криминал	Чарльз Мартин, Джонатан Теплицки, Хенрик Георгссон	60
3412	Фальсификация (3 сезон)	https://kinokrad.co/290494-falsifikaciya-3-sezon-2016.html	7	2016	США	комедия	Джеми Трэвис, Клер Скэнлон, Эрин Эрлих	30
3413	Слово на букву А (1 сезон)	https://kinokrad.co/293497-slovo-na-bukvu-a-1-sezon-2016.html	7	2016	Великобритания	драма	Питер Каттанео, Доминик Леклерк, Сьюзэн Талли	60
3414	Следователь Тихонов (1 сезон)	https://kinokrad.co/293467-sledovatel-tihonov-1-sezon-2016.html	8	2016	Россия	детектив, криминал	Сергей Снежкин, Эдуард Оганесян	42
3415	По долгу службы (3 сезон)	https://kinokrad.co/293344-po-dolgu-sluzhby-3-sezon-2016.html	8	2016	Великобритания	триллер, драма, криминал	Дуглас Маккиннон, Дэвид Кэффри, Дэниэл Неттхейм	60
3416	Из рода волков / Волчья кровь (4 сезон)	https://kinokrad.co/292144-iz-roda-volkov-volchya-krov-4-sezon-2016.html	8	2016	Великобритания	фэнтези, семейный	Jermain Julien, Мэттью Эванс, Эндрю Ганн	22
3417	Пришельцы (1 сезон)	https://kinokrad.co/292126-prishelcy-1-sezon-2016.html	5	2016	Великобритания	фэнтези, драма, комедия	Лоуренс Гоф, Джонатан ван Тюллекен	60
3418	Доктор Торн (1 сезон)	https://kinokrad.co/292036-doktor-torn-1-sezon-2016.html	7	2016	Великобритания	драма	Найал МакКормик	48
3419	Счастливая долина (2 сезон)	https://kinokrad.co/287083-schastlivaya-dolina-2-sezon-2016.html	6	2016	Великобритания	драма, криминал	Салли Уэйнрайт, Эрос Лин, Тим Файвелл	60
3420	Счастливчик (1 сезон)	https://kinokrad.co/287055-schastlivchik-1-sezon-2016.html	8	2016	45 мин	фантастика, боевик	Дэвид Кэффри, Энди де Эммони, Brian Kelly	60
3421	Шетланд (3 сезон)	https://kinokrad.co/288256-shetland-3-sezon-2016.html	8	2016	Великобритания	драма, криминал, детектив	Jan Matthys, Тадеус О’Салливан, Питер Хор	60
3422	Клим (1 сезон)	https://kinokrad.co/287197-klim-1-sezon-2016.html	8	2016	Россия	драма, криминал, триллер	Карен Оганесян	47
3423	Перевозчик (1 сезон)	https://kinokrad.co/292759-perevozchik-1-sezon-2016.html	7	2016	Россия	боевик, детектив	Сергей Полянский	45
3424	Всё включено (8 сезон)	https://kinokrad.co/292027-vsjo-vklyucheno-8-sezon-2016.html	6	2016	Великобритания	комедия	Сэнди Джонсон, Дэвид Сент, Кевин Аллен	30
3425	Обман (1 сезон)	https://kinokrad.co/292453-obman-1-sezon-2016.html	5	2016	Дания	триллер, драма, криминал	Янник Йохансен, Сёрен Балле, Пер Флю	59
3426	Крыша мира (1 сезон)	https://kinokrad.co/292447-krysha-mira-1-sezon-2016.html	8	2016	Россия	комедия	Роман Фокин, Антон Маслов	24
3427	Сны (1 сезон)	https://kinokrad.co/285981-sny-1-sezon-2016.html	5	2016	Россия	драма, детектив	Александр Пархоменко, Ева Стрельникова, Андрей Осмаловский	46
3428	Молодой Морс (3 сезон)	https://kinokrad.co/286465-molodoy-mors-3-sezon-2016.html	9	2016	Великобритания	драма, криминал, детектив	Колм МакКарти, Эдвард Базалгетт, Том Вон	90
3429	Последний мент (2 сезон)	https://kinokrad.co/290398-posledniy-ment-2-sezon-2016.html	8	2016	Россия, Украина	детектив, драма, комедия	Михаил Жерневский, Алексей Шапарев	39
3430	Изгои (1 сезон)	https://kinokrad.co/286877-izgoi-1-sezon-2016.html	8	2016	США	драма	Адам Бернштейн, Майкл Трим	60
3431	Хэп и Леонард (1 сезон)	https://kinokrad.co/288250-hjep-i-leonard-1-sezon-2016.html	8	2016	США	триллер, драма, криминал	Джим Микл, Ник Гомез	60
3432	Охота на оленей (1 сезон)	https://kinokrad.co/290047-ohota-na-oleney-1-sezon-2016.html	7	2016	Великобритания	комедия	Джим Филд Смит	
3433	Сумеречные охотники (1 сезон)	https://kinokrad.co/285973-sumerechnye-ohotniki-1-sezon-2016.html	8	2016	США	фэнтези, боевик, драма	Дж. Майлз Дэйл, МакДжи, Майрзи Алмас	42
3434	Любовь (1 сезон)	https://kinokrad.co/287689-lyubov-1-sezon-2016.html	7	2016	США	мелодрама, комедия	Дин Холлэнд, Джон Слэттери, Стив Бушеми	50
3435	Черные паруса (3 сезон)	https://kinokrad.co/286309-chernye-parusa-3-sezon-2016.html	9	2016	США, ЮАР	драма, приключения	Стив Бойум, Алик Сахаров, Лукас Эттлин	56
3436	Второй шанс (1 сезон)	https://kinokrad.co/285619-vtoroy-shans-1-sezon-2016.html	9	2016	США	ужасы, фантастика, драма	Майкл Куэста, Сара Пиа Андерсон, Адам Кэйнс	42
3437	Бородач (1 сезон)	https://kinokrad.co/287043-borodach-1-sezon-2016.html	7	2016	Россия	комедия	Заур Болотаев	25
3438	Баскетс / Клоун (1 сезон)	https://kinokrad.co/286353-baskets-kloun-1-sezon-2016.html	6	2016	США	комедия	Джонатан Крисел	30
3439	Остров (1 сезон)	https://kinokrad.co/286033-ostrov-1-sezon-2016.html	8	2016	Россия	комедия	Артем Насыбулин, Михаил Старчак, Александр Наумов	24
3440	Ночной администратор (1 сезон)	https://kinokrad.co/287253-nochnoy-administrator-1-sezon-2016.html	8	2016	Великобритания, США	боевик, триллер, драма	Сюзанна Бир	60
3441	Мужчина ищет женщину (2 сезон)	https://kinokrad.co/286031-muzhchina-ischet-zhenschinu-2-sezon-2016.html	5	2016	США	фэнтези, мелодрама, комедия	Джонатан Крисел, Тим Киркби, Дэниэл Грэй Лонгино	21
3442	Выжить После (3 сезон)	https://kinokrad.co/287113-vyzhit-posle-3-sezon-2016.html	9	2016	Россия	триллер	Душан Глигоров, Александр Богуславский, Андрей Комаров	48
3443	Выжить После (2 сезон)	https://kinokrad.co/287063-vyzhit-posle-2-sezon-2016.html	8	2016	Россия	триллер	Душан Глигоров, Александр Богуславский, Андрей Комаров	48
3444	Агент Картер (2 сезон)	https://kinokrad.co/286467-agent-karter-2-sezon-2016.html	8	2016	США	фантастика, боевик, приключения	Стивен Крегг, Луис Д’Эспозито, Питер Лето	42
3445	Хроники Шаннары (1 сезон)	https://kinokrad.co/285779-hroniki-shannary-1-sezon-2016.html	9	2016	США	фантастика, фэнтези, приключения	Брэд Тернер, Джонатан Либесман, Джеймс Маршалл	42
3446	Восстание (1 сезон)	https://kinokrad.co/286343-vosstanie-1-sezon-2016.html	6	2016	Ирландия, Великобритания	драма, военный	Аку Лоухимиес	50
3447	Война и мир (1 сезон)	https://kinokrad.co/285787-voyna-i-mir-1-sezon-2016.html	8	2016	США, Великобритания	драма, мелодрама, военный, история	Том Харпер	60
3448	Бешеные псы (1 сезон)	https://kinokrad.co/285977-beshenye-psy-1-sezon-2016.html	8	2016	США	драма, комедия, криминал	Чарльз МакДугалл, Ута Бризвитц, Джон Дэвид Коулз	60
3450	Слэшер / Резня (1 сезон)	https://kinokrad.co/287608-sljesher-reznya-1-sezon-2016.html	8	2016	США, Великобритания, Канада	ужасы, триллер, драма	Крэйг Дэвид Уоллес	49
3451	Укушенная (3 сезон)	https://kinokrad.co/286785-ukushennaya-3-sezon-2016.html	7	2016	Канада	ужасы, фэнтези, драма, детектив	Джеймс Даннисон, Грант Харви, Т.Дж. Скотт	43
3452	Напарницы (1 сезон)	https://kinokrad.co/289966-naparnicy-1-sezon-2016.html	7	2016	Россия	мелодрама, детектив	Гузэль Киреева	48
3453	11/22/63 (1 сезон)	https://kinokrad.co/286779-112263-1-sezon-2016.html	9	2016	США	фантастика, триллер, детектив	Фред Туа, Джеймс Франко, Джеймс Кент	
3454	Бесстыдники (6 сезон)	https://kinokrad.co/280096-besstydniki-6-sezon-2016.html	9	2016	США	драма, комедия	Марк Майлод, Мими Ледер, Энтони Хемингуэй	55
3455	Тринадцать (1 сезон)	https://kinokrad.co/289957-trinadcat-1-sezon-2016.html	8	2016	Великобритания	драма	Ванесса Касвиль, Чина Му-Ен	57
3456	Босх (2 сезон)	https://kinokrad.co/289954-bosh-2-sezon-2016.html	8	2016	США	драма, детектив	Алекс Закржевский, Эрнест Р. Дикерсон, Кевин Даулинг	51
3457	Оттенки синего (1 сезон)	https://kinokrad.co/286361-ottenki-sinego-1-sezon-2016.html	7	2016	США	драма, криминал	Дэн Лернер, Стивен ДеПол, Барри Левинсон	43
3458	Секретные материалы (10 сезон)	https://kinokrad.co/286561-sekretnye-materialy-10-sezon-2016.html	8	2016	Канада	фантастика, триллер, драма, детектив	Ким Мэннерс, Роб Боумен, Дэвид Наттер	43
3459	Беовульф (1 сезон)	https://kinokrad.co/285971-beovulf-1-sezon-2016.html	7	2016	США	фэнтези, боевик, драма, приключения	Джон Ист, Джулиан Холмс, Марек Лоузи	45
3460	Более полный дом (1 сезон)	https://kinokrad.co/287761-bolee-polnyy-dom-1-sezon-2016.html	8	2016	США	комедия, семейный	Рич Коррелл, Кэти Гарретсон, Марк Сендроуски	30
3461	Вера (6 сезон)	https://kinokrad.co/287362-vera-6-sezon-2016.html	8	2016	Великобритания	драма, криминал, детектив	Уильям Синклер, Питер Хор, Пол Уиттингтон	95
3462	Сорвиголова (2 сезон)	https://kinokrad.co/287764-sorvigolova-2-sezon-2016.html	9	2016	США	боевик, драма, криминал	Фил Абрахам, Фэррен Блэкберн, Стивен С. ДеНайт	54
3463	Колония (1 сезон)	https://kinokrad.co/285617-koloniya-1-sezon-2016.html	7	2016	США	фантастика	Хуан Хосе Кампанелла	42
3464	Светофор (8 сезон)	https://kinokrad.co/286977-svetofor-8-sezon-2016.html	8	2016	Россия	комедия	Роман Фокин	24
3465	В Филадельфии всегда солнечно (11 сезон)	https://kinokrad.co/285961-v-filadelfii-vsegda-solnechno-11-sezon-2016.html	6	2016	США	комедия	Мэтт Шекман, Фред Сэвэдж, Дэниэл Эттиэс	22
3466	Правильная жена (7 сезон)	https://kinokrad.co/284651-pravilnaya-zhena-7-sezon-2015.html	6	2015	США	драма, криминал, детектив	Розмари Родригез, Брук Кеннеди, Майкл Цинберг	43
3467	Настоящий детектив 2 сезон	https://kinokrad.co/278441-nastoyaschiy-detektiv-2-sezon.html	8	2015	США	детектив, криминал, драма	Кэри Фукунага, Джастин Лин	60
3468	Нереальный холостяк (3 сезон)	https://kinokrad.co/334312-nerealnyy-holostyak-3-sezon.html	6	2015	США	драма	Питер О’Фаллон, Шири Эпплби, Дэвид Соломон	42
3469	Сказки при свете (1 сезон)	https://kinokrad.co/334330-skazki-pri-svete-1-sezon.html	6	2015	Австралия	документальный	Abraham Joffe	23
3470	Сказки при свете (2 сезон)	https://kinokrad.co/334333-skazki-pri-svete-2-sezon.html	5	2015	Австралия	документальный	Abraham Joffe	23
3471	Джессика Джонс (2 сезон)	https://kinokrad.co/326009-dzhessika-dzhons-2-sezon.html	7	2015	США	фантастика, боевик, триллер, драма, криминал	Ута Бризвитц, Розмари Родригез, Саймон Селлан Джоунс	56
3472	Незабытый (1 сезон)	https://kinokrad.co/303368-nezabytyy-1-sezon-2015.html	8	2015	Великобритания	драма, криминал	Энди Уилсон	60
3473	Бриллиантовый любовник (1 сезон)	https://kinokrad.co/318190-brilliantovyy-lyubovnik-1-sezon-2015.html	7	2015	Китай	комедия, мелодрама	Минг Чжан Чен	45
3474	Слепая (2 сезон)	https://kinokrad.co/283427-slepaya-2-sezon-2015.html	7	2015	Россия	драма	Кира Мещерякова, Алина Поличук, Дмитрий Ющенко	24
3475	Московская борзая (1 сезон)	https://kinokrad.co/329543-moskovskaya-borzaya-1-sezon.html	5	2015	Россия	криминал, мелодрама	Роман Просвирнин	50
3476	Империя (2 сезон)	https://kinokrad.co/323291-imperiya-2-sezon.html	7	2015	США	драма, музыка	Санаа Хамри, Крэйг Брюэр, Дэнни Стронг	42
3477	Империя (1 сезон)	https://kinokrad.co/323283-imperiya-1-sezon.html	5	2015	США	драма, музыка	Санаа Хамри, Крэйг Брюэр, Дэнни Стронг	42
3478	12 обезьян (4 сезон)	https://kinokrad.co/327953-12-obezyan-4-sezon.html	7	2015	США	фантастика, триллер, драма, детектив, приключения	Дэвид Гроссман, Терри Маталас, Магнус Мартенс	42
3479	Чокнутая бывшая (4 сезон)	https://kinokrad.co/331784-choknutaya-byvshaya-4-sezon.html	6	2015	США	мюзикл, комедия	Стюарт МакДональд, Кабир Ахтар, Эрин Эрлих	42
3480	Последнее королевство (3 сезон)	https://kinokrad.co/331673-poslednee-korolevstvo-3-sezon.html	7	2015	Великобритания	боевик, драма, история	Питер Хор, Джон Ист, Энтони Бирн	60
3481	Фортитьюд	https://kinokrad.co/280484-fortityud-11-seriya.html	7	2015	Великобритания	триллер, драма, детектив	Сэм Миллер, Хетти Макдональд, Ник Харран	47
3482	Жизнь в деталях (3 сезон)	https://kinokrad.co/323235-zhizn-v-detalyah-3-sezon.html	6	2015	США	комедия	Джейсон Уайнер, Чад Лоу, Алиса Статман	22
3483	Мотив (3 сезон)	https://kinokrad.co/286425-motiv-3-sezon-2015.html	6	2015	Канада	триллер, драма, криминал, детектив	Энди Микита, Стурла Гуннарссон, Дэвид Фрэйзи	42
3484	Карточный домик 3 сезон (1-13 серия)	https://kinokrad.co/280821-kartochnyy-domik-3-sezon.html	9	2015	США	драма	Джеймс Фоули, Джон Дэвид Коулз, Карл Франклин	50
3485	Банши 3 сезон (1-10 серия)	https://kinokrad.co/279944-banshi-3-sezon.html	9	2015	США	боевик, триллер, драма, криминал, детектив	Грег Яйтанс, Оле Кристиан Мадсен, Лони Перистер	43
3486	Девочки 4 сезон (10 серия)	https://kinokrad.co/280225-devochki-4-sezon-10-seriya.html	4	2015	США	драма, комедия	Лина Данэм, Джесси Перец, Ричард Шепард	30
3487	Полумиры (1 сезон)	https://kinokrad.co/328322-polumiry-1-sezon.html	6	2015	Индонезия	ужасы, фэнтези, триллер, детектив	Джоко Анвар, Экачай Уэкронгтам	60
3488	Полдарк (4 сезон)	https://kinokrad.co/328172-poldark-4-sezon.html	7	2015	Великобритания	драма, мелодрама, история	Джосс Эгнью, Эдвард Базалгетт, Уильям МакГрегор	60
3489	Больница Никербокер (2 сезон)	https://kinokrad.co/284245-bolnica-nikerboker-2-sezon-2015.html	8	2015	США	драма	Стивен Содерберг	45
3490	Эш против Зловещих мертвецов (1 сезон)	https://kinokrad.co/283066-jesh-protiv-zloveschih-mertvecov-1-sezon-2015.html	9	2015	США	ужасы, боевик, комедия	Майкл Херст, Рик Джейкобсон, Сэм Рэйми	30
3491	Ходячие мертвецы (6 сезон)	https://kinokrad.co/283757-hodyachie-mertvecy-6-sezon-2015.html	9	2015	США	ужасы, драма	Грег Никотеро, Эрнест Р. Дикерсон, Гай Ферленд	43
3492	Сверхъестественное (11 сезон)	https://kinokrad.co/283897-sverhestestvennoe-11-sezon-2015.html	9	2015	США	ужасы, фэнтези, триллер, драма, детектив, мистика	Роберт Сингер, Филип Сгриккиа, Ким Мэннерс	43
3493	Фарго (2 сезон)	https://kinokrad.co/281224-fargo-2-sezon-2015.html	8	2015	США	триллер, драма, криминал	Рэндолл Айнхорн, Адам Бернштейн, Колин Бакси	53
3494	Конмэн (1 сезон)	https://kinokrad.co/325013-konmen-1-sezon.html	6	2015	США	комедия	Алан Тьюдик, Энтони Леонарди III	12
3495	Связи (1 сезон)	https://kinokrad.co/337149-svyazi-1-sezon.html	6	2015	Болгария	драма, комедия	Виктор Божинов, Vassil Stefanov, Dimitar Dimitrov	
3496	Ищейка (2 сезон)	https://kinokrad.co/329312-ischeyka-2-sezon.html	6	2015	Россия	детектив	Дмитрий Брусникин	50
3497	Ищейка (1 сезон)	https://kinokrad.co/329309-ischeyka-1-sezon.html	6	2015	Россия	детектив	Дмитрий Брусникин	50
3498	Джессика Джонс (1 сезон)	https://kinokrad.co/326006-dzhessika-dzhons-1-sezon.html	7	2015	США	фантастика, боевик, триллер, драма, криминал	Ута Бризвитц, Розмари Родригез, Саймон Селлан Джоунс	56
3499	Закон и порядок. Специальный корпус (15 сезон)	https://kinokrad.co/325331-zakon-i-poryadok.-specialnyy-korpus-15-sezon.html	7	2015	США	триллер, драма, криминал, детектив	Дэвид Платт, Питер Лето, Жан Де Сегонзак	43
3500	Визави (3 сезон)	https://kinokrad.co/327323-vizavi-3-sezon.html	8	2015	Испания	триллер, драма	Хесус Кольменар, Хесус Родриго, Сандра Гальего	53
3501	Список Ланъя (1 сезон)	https://kinokrad.co/324470-spisok-lanya-1-sezon.html	8	2015	Китай	драма	Кун Шэн, Ли Сюэ, Ван Юнцюань	45
3502	Несгибаемая Кимми Шмидт (4 сезон)	https://kinokrad.co/327683-nesgibaemaya-kimmi-shmidt-4-sezon.html	4	2015	США	драма, комедия	Тристрам Шапиро, Майкл Энглер, Бет МакКарти-Миллер	30
3503	Власть в ночном городе (2 сезон)	https://kinokrad.co/333724-vlast-v-nochnom-gorode-2-sezon.html	8	2015	США	драма, криминал	Сэнфорд Букставер, М. Дж. Бассетт, Роб Харди	50
3504	Затерянные в стране Оз (2 сезон)	https://kinokrad.co/332210-zateryannye-v-strane-oz-2-sezon.html	6	2015	Великобритания, Канада, США	мультфильм, семейный	Джа Хонг Ким, Paul Stodolny	24
3505	Голдберги (3 сезон)	https://kinokrad.co/332237-goldbergi-3-sezon.html	6	2015	США	комедия	Дэвид Катценберг, Лью Шнайдер, Джей Чандрашекхар	22
3506	Американская история ужасов (5 сезон)	https://kinokrad.co/305186-amerikanskaya-istoriya-uzhasov-5-sezon.html	7	2015	США	ужасы, триллер, драма	Брэдли Букер, Альфонсо Гомес-Рехон, Майкл Аппендаль	43
3507	Американская история ужасов (4 сезон)	https://kinokrad.co/335134-amerikanskaya-istoriya-uzhasov-4-sezon.html	7	2015	США	ужасы, триллер, драма	Брэдли Букер, Альфонсо Гомес-Рехон, Майкл Аппендаль	43
3508	Родина (5 сезон)	https://kinokrad.co/283750-rodina-5-sezon-2015.html	7	2015	США	триллер, драма, детектив	Лесли Линка Глаттер, Майкл Куэста, Дэниэл Эттиэс	55
3509	Стражи Галактики (3 сезон)	https://kinokrad.co/326312-strazhi-galaktiki-3-sezon.html	7	2015	США	мультфильм, фантастика, боевик, приключения	Эрик Радомски, Лео Райли, Jeff Wamester	22
3510	Нарко (3 сезон)	https://kinokrad.co/320306-narko-3-sezon-2017.html	8	2015	США, Колумбия	криминал, драма	Андрес Байс, Херардо Наранхо, Джозеф Владыка	49
3511	З: начало всего (1 сезон)	https://kinokrad.co/313058-z-nachalo-vsego-1-sezon-2015.html	6	2015	США	драма, биография	Майк Баркер, Neasa Hardiman, Минки Спиро	27
3512	Патриот (1 сезон)	https://kinokrad.co/316546-patriot-1-sezon-2015.html	6	2015	США	триллер, комедия	Стив Конрад, Такер Гейтс, Тед Гриффин	58
3513	Да здравствует король Джулиан (2 сезон)	https://kinokrad.co/318634-da-zdravstvuet-korol-dzhulian-2-sezon-2015.html	7	2015	США	мультфильм, комедия, семейный	Джеймс Вуттон, Christo Stamboliev, Stephen Heneveld	22
3514	Наруто: Ураганные хроники (20 сезон)	https://kinokrad.co/283179-naruto-uragannye-hroniki-20-sezon-2015.html	8	2015	Япония	аниме, мультфильм, фантастика, боевик, триллер, приключения	Хаято Датэ, Юки Эри	24
3515	Вся правда о медведях / Мы обычные медведи (1 сезон)	https://kinokrad.co/317286-vsya-pravda-o-medvedyah-1-sezon-2015.html	7	2015	США	мультфильм, фэнтези, комедия, семейный	Manny Hernandez	30
3516	Шиттс Крик (2 сезон)	https://kinokrad.co/307064-shitts-krik-2-sezon.html	6	2015	Канада, США	комедия	Джерри Чиккоритти, Пол Фокс	22
3517	Закусочная Боба (6 сезон)	https://kinokrad.co/309950-zakusochnaya-boba-6-sezon-2015.html	5	2015	США	мультфильм, комедия	Бернард Дерриман, Дженнифер Койл, Тайри Диллихей	22
3518	Почти там (1 сезон)	https://kinokrad.co/303377-pochti-tam-1-sezon-2015.html	4	2015	США	драма, комедия	Marshall Blackstone	29
3519	Семейка Крудс. Начало (2 сезон)	https://kinokrad.co/303422-semeyka-kruds-nachalo-2-sezon-2016.html	8	2015	США	мультфильм, комедия, семейный	Чонг Ли, Алекс Альмагер, Стефани Арнетт	23
3520	Погружение (1 сезон)	https://kinokrad.co/301763-pogruzhenie-1-sezon-2015.html	5	2015	Франция	боевик, криминал	Филипп Аим	43
3521	Затерянные в ОЗ (1 сезон)	https://kinokrad.co/320722-zateryannye-v-oz-1-sezon-2015.html	8	2015		мультфильм, семейный	Paul Stodolny	24
3522	Морская полиция: Новый Орлеан (2 сезон)	https://kinokrad.co/322679-morskaya-policiya-novyy-orlean-2-sezon.html	8	2015	США	драма, криминал	Джеймс Хейман, Тони Уормби, Майкл Цинберг	42
3523	Приключения Кота в сапогах (2 сезон)	https://kinokrad.co/287051-priklyucheniya-kota-v-sapogah-2-sezon-2015.html	8	2015	США	мультфильм, комедия, приключения, семейный	Рой Бурдин, Douglas Lovelace, Дэвид Макки Фассетт	22
3524	Когда зовёт сердце (3 сезон)	https://kinokrad.co/320846-kogda-zovet-serdce-3-sezon-2015.html	8	2015	США	драма	Дэйв Осборн, Jerry Forder, Stu Gamble	43
3525	Когда зовёт сердце (2 сезон)	https://kinokrad.co/320842-kogda-zovet-serdce-2-sezon-2015.html	6	2015	США	драма	Нилл Фернли, Майкл Лэндон мл., Мартин Вуд	43
3526	Кровные узы / В связке (1 сезон)	https://kinokrad.co/293185-krovnye-uzy-v-svyazke-1-sezon-2015.html	6	2015	Канада, США	драма, криминал, семейный	Стивен Р. Монро, Шон МакНамара, Моника Митчелл	42
3527	Валландер (4 сезон)	https://kinokrad.co/272599-vallander-4-sezon-2015.html	9	2015	Великобритания, Швеция, США, Германия	триллер, криминал	Филип Мартин, Найал МакКормик, Хетти Макдональд	90
3528	Класс убийц  / Убийство в классной комнате (2 сезон)	https://kinokrad.co/293947-klass-ubiyc-2-sezon-2016.html	8	2015	Япония	аниме, мультфильм, боевик, комедия	Сэйдзи Киси	23
3529	Без обязательств (1 сезон)	https://kinokrad.co/297649-bez-obyazatelstv-1-sezon-2015.html	5	2015	США	драма, комедия	Джейсон Райтман, Майкл Уивер, Фред Сэвэдж	25
3530	Коронер (1 сезон)	https://kinokrad.co/295279-koroner-1-sezon-2015.html	7	2015	Великобритания	драма, криминал	Йен Барбер, Адриан Бин, Мэтт Картер	45
3531	Отдел Ромео (1 сезон)	https://kinokrad.co/295114-otdel-romeo-1-sezon-2015.html	7	2015	Канада	драма	Дэвид Фрэйзи, Крис Хэддок, Стивен Серджик	60
3532	Опасный Генри (2  сезон)	https://kinokrad.co/317974-opasnyy-genri-2-sezon-2015.html	6	2015	США	фантастика, боевик, комедия, семейный	Стив Хофер, Адам Вайсман, Нэйтан Кресс	30
3533	Подлый Пит / Хитрый Пит (1 сезон)	https://kinokrad.co/317898-podlyy-pit-hitryy-pit-1-sezon-2015.html	8	2015	США	драма, криминал	Сара Пиа Андерсон, Майкл Диннер, Сет Гордон	60
3534	Реанимация (2 сезон)	https://kinokrad.co/306440-reanimaciya-2-sezon.html	7	2015	США	драма	Дэвид Фон Энкен, Ли Роуз, Оз Скотт	42
3535	Большая школа (2 сезон)	https://kinokrad.co/271811-bolshaya-shkola-2-sezon-2015.html	7	2015	Великобритания	комедия	Тони Дау	30
3536	Колыбель ангелов (1 сезон)	https://kinokrad.co/307136-kolybel-angelov-1-sezon.html	6	2015	Канада	драма	Ricardo Trogi	60
3537	Драконы и всадники Олуха (3 сезон)	https://kinokrad.co/285025-drakony-i-vsadniki-oluha-3-sezon-2015.html	8	2015	США	мультфильм, фэнтези, комедия, приключения, семейный	Энтони Белл, Джон Санфорд, Луи дель Кармен	22
3538	Доктор Кен (1 сезон)	https://kinokrad.co/312022-doktor-ken-1-sezon-2016.html	7	2015	США	комедия	Энтони Джозеф Рич, Скотт Эллис, Фил Льюис	21
3539	Оставленные (2 сезон)	https://kinokrad.co/316530-ostavlennye-2-sezon-2015.html	6	2015	США	фэнтези, драма, детектив	Мими Ледер, Карл Франклин, Кит Гордон	60
3540	Люцифер (2 сезон)	https://kinokrad.co/306677-lyucifer-2-sezon.html	9	2015	США	фэнтези, драма, криминал	Нэйтан Хоуп, Грег Биман, Майрзи Алмас	42
3541	Раз, Миссисипи / Один из Миссисипи (1 сезон)	https://kinokrad.co/303386-raz-missisipi-odin-iz-missisipi-1-sezon-2015.html	6	2015	США	драма, комедия	Николь Холофсенер, Кен Куопис, Шира Пивен	28
3542	Адам портит всё (1 сезон)	https://kinokrad.co/286423-adam-portit-vsjo-1-sezon-2015.html	8	2015	США	комедия	Пол Бриганти, Винсент Пеон, Джош Рубен	30
3543	Симпсоны (27 сезон)	https://kinokrad.co/284263-simpsony-27-sezon-2015.html	9	2015	США	мультфильм, комедия	Марк Керклэнд, Стивен Дин Мур, Боб Андерсон	22
3544	Истсайдеры (2 сезон)	https://kinokrad.co/291643-istsaydery-2-sezon-2015.html	6	2015	США	драма	Кит Уильямсон	115
3545	Гриффины (14 сезон)	https://kinokrad.co/283808-griffiny-14-sezon-2015.html	8	2015	США	мультфильм, комедия	Питер Шин, Джеймс Пурдум, Доминик Бьянчи	22
3546	Готэм (2 сезон)	https://kinokrad.co/283518-gotjem-2-sezon-2015.html	9	2015	США	триллер, драма, криминал	Т.Дж. Скотт, Дэнни Кэннон, Пол А. Эдвардс	44
3547	Бездельницы (3 сезон)	https://kinokrad.co/309599-bezdelnicy-3-sezon-2015.html	7	2015	Великобритания	комедия	Аль Кэмпбелл, Саймон Делани, Том Маршалл	23
3548	Доктор Кен (2 сезон)	https://kinokrad.co/312026-doktor-ken-2-sezon-2016.html	6	2015	США	комедия	Энтони Джозеф Рич, Скотт Эллис, Фил Льюис	21
3549	Убийство в Саксессвиле (1 сезон)	https://kinokrad.co/317158-ubiystvo-v-saksessvile-1-sezon-2017.html	6	2015	Великобритания	комедия	James De Frond	45
3550	Последний человек на Земле (3 сезон)	https://kinokrad.co/306443-posledniy-chelovek-na-zemle-3-sezon.html	8	2015	США	комедия	Джон Соломон, Джейсон Уолинер, Пэймэн Бенц	22
3551	Катастрофа (2 сезон)	https://kinokrad.co/315250-katastrofa-2-sezon-2015.html	6	2015	Великобритания	комедия	Бен Тэйлор	30
3552	Роузвуд (2 сезон)	https://kinokrad.co/306437-rouzvud.html	7	2015	США	драма, криминал, детектив	Милан Чейлов, Эрик Ланёвилль, Джеймс Родэй	42
3553	Бездомный Бог (2 сезон)	https://kinokrad.co/300570-bezdomnyy-bog-2-sezon-2015.html	9	2015	Япония	аниме, мультфильм, приключения, комедия, драма, фэнтези, боевик	Цуёси Хида, Shûji Miyahara, Масаси Абе	24
3554	Другое время (1 сезон)	https://kinokrad.co/300369-drugoe-vremya-1-sezon-2015.html	6	2015	США	комедия, история	Джереми Коннер	21
3555	Визави (1 сезон)	https://kinokrad.co/297586-vizavi-1-sezon-2015.html	8	2015	Испания	драма	Хесус Кольменар, Хесус Родриго, Сандра Гальего	60
3556	Ад на колёсах (5 сезон)	https://kinokrad.co/282836-ad-na-koljosah-5-sezon-2015.html	8	2015	Канада, Великобритания	драма, вестерн	Дэвид Фон Энкен, Адам Дэвидсон, Нил ЛаБут	43
3557	Морская полиция: Лос-Анджелес (7 сезон)	https://kinokrad.co/283560-morskaya-policiya-los-andzheles-7-sezon-2015.html	7	2015	США	триллер, драма, криминал, детектив	Тони Уормби, Терренс О’Хара, Дэннис Смит	43
3558	Великий сыщик Филинта (2 сезон)	https://kinokrad.co/317762-velikiy-syschik-filinta-2-sezon-2017.html	6	2015	Турция	история	Süleyman Mert Özdemir, Кудрет Сабанджи, Gökhan Erkut	
3559	Уэнтуорт (3 сезон)	https://kinokrad.co/293632-ujentuort-3-sezon-2015.html	8	2015	Австралия	драма, криминал	Кевин Карлин, Катрин Миллар, Стив Джодрелл	45
3560	Кости (11 сезон)	https://kinokrad.co/283694-kosti-11-sezon-2015.html	9	2015	США	драма, мелодрама, комедия, криминал, детектив	Иэн Тойнтон, Дуайт Х. Литтл, Жанно Шварц	43
3561	Чистильщик (5 сезон)	https://kinokrad.co/320462-chistilschik-5-sezon-2015.html	7	2015	Германия	комедия	Арни Фельдхузен	26
3562	Виксен (1 сезон)	https://kinokrad.co/308168-viksen-1-sezon-2015.html	6	2015	США	мультфильм, короткометражка, фантастика, боевик, приключения	Джеймс Такер, Курт Геда	5
3563	Фиксики (3 сезон)	https://kinokrad.co/287125-fiksiki-3-sezon-2015.html	8	2015	Россия	мультфильм, детский	Васико Бедошвили, Андрей Колпин, Сергей Меринов	6
3564	Перехватчик (1 сезон)	https://kinokrad.co/301757-perehvatchik-1-sezon-2015.html	5	2015	Великобритания	драма	Фэррен Блэкберн, Джулиан Холмс, Ричард Сеньор	60
3565	Образцовые бунтарки (1 сезон)	https://kinokrad.co/308153-obrazcovye-buntarki-1-sezon-2015.html	8	2015	США	драма	Скотт Уинант, Лиза Джонсон, Дэниэл Эттиэс	55
3566	Молодые и голодные (2 сезон)	https://kinokrad.co/281286-molodye-i-golodnye-2-sezon-2015.html	6	2015	США	комедия	Энди Кэдифф, Фил Льюис, Кэти Гарретсон	22
3567	Невский (1 сезон)	https://kinokrad.co/293323-nevskiy-1-sezon-2015.html	8	2015	Россия	детектив	Андрей Коршунов, Алексей Павлов	44
3568	Последний человек на Земле (2 сезон)	https://kinokrad.co/283993-posledniy-chelovek-na-zemle-2-sezon-2015.html	9	2015	США	комедия	Джон Соломон, Джейсон Уолинер, Фил Лорд	30
3569	Две разорившиеся девочки (5 сезон)	https://kinokrad.co/287245-dve-razorivshiesya-devochki-5-sezon-2015.html	7	2015	США	комедия	Дон Скардино, Фред Сэвэдж, Фил Льюис	22
3570	Шоу Кармайкла (1 сезон)	https://kinokrad.co/318502-shou-karmaykla-1-sezon-2015.html	6	2015	США	комедия	Джерри Коэн, Бетси Томас, Майкл Цинберг	21
3571	Дедушка (1 сезон)	https://kinokrad.co/283819-dedushka-1-sezon-2015.html	7	2015	США	комедия	Крис Кох	22
3572	Дробилка (1 сезон)	https://kinokrad.co/283826-drobilka-1-sezon-2015.html	6	2015	США	комедия	Джейк Кэздан	21
3573	Государственный секретарь (2 сезон)	https://kinokrad.co/286041-gosudarstvennyy-sekretar-2-sezon-2015.html	6	2015	США	драма	Эрик Столц, Дэнни Гордон, Роб Дж. Гринли	45
3574	Мамаша (3 сезон)	https://kinokrad.co/271795-mamasha-3-sezon-2015.html	7	2015	США	комедия	Джефф Гринштейн, Джеймс Уиддоуз, Тед Уасс	22
3575	Последний настоящий мужчина (5 сезон)	https://kinokrad.co/284825-posledniy-nastoyaschiy-muzhchina-5-sezon-2015.html	8	2015	США	комедия	Джон Пасквин, Тед Уасс, Джонатан Тейлор Томас	22
3576	Создавая убийцу (1 сезон)	https://kinokrad.co/290281-sozdavaya-ubiycu-1-sezon-2015.html	8	2015	США	документальный, криминал	Мойра Демос, Лаура Риччарди	60
3577	Ниндзяго: Мастера Кружитцу (5 сезон)	https://kinokrad.co/318354-nindzyago-mastera-kruzhitcu-5-sezon-2015.html	6	2015	Дания, Сингапур, Канада, США	мультфильм, фантастика, фэнтези, боевик, комедия, приключения, семейный	Петер Хауснер, Майкл Хельмут Хансен, Трюлле Вильструп	30
3578	Ниндзяго: Мастера Кружитцу (4 сезон)	https://kinokrad.co/318350-nindzyago-mastera-kruzhitcu-4-sezon-2015.html	6	2015	Дания, Сингапур, Канада, США	мультфильм, фантастика, фэнтези, боевик, комедия, приключения, семейный	Петер Хауснер, Майкл Хельмут Хансен, Трюлле Вильструп	30
3579	Инструкция по разводу для женщин (2 сезон)	https://kinokrad.co/292147-instrukciya-po-razvodu-dlya-zhenschin-2-sezon-2015.html	6	2015	США	драма, комедия	Роберт Данкан МакНил, Адам Брукс, Сильвер Три	60
3580	Будь классным, Скуби-Ду! (1 сезон)	https://kinokrad.co/284071-bud-klassnym-skubi-du-1-sezon-2015.html	8	2015	США	мультфильм, мистика	Jeff Mednikow, Шонт Нигогосян, Энди Том	23
3581	Агент Икс (1 сезон)	https://kinokrad.co/319834-agent-iks-1-sezon-2015.html	6	2015	США	боевик, драма	Питер О’Фаллон, Кевин Брэй, Ута Бризвитц	60
3582	Трудности ассимиляции (2 сезон)	https://kinokrad.co/283898-trudnosti-assimilyacii-2-sezon-2015.html	6	2015	США	комедия	Линн Шелтон, Клер Скэнлон, Роберт Коэн	22
3583	Мастер не на все руки / Не при делах (1 сезон)	https://kinokrad.co/317814-master-ne-na-vse-ruki-ne-pri-delah-1-sezon-2016.html	5	2015	США	комедия	Азиз Ансари, Эрик Верхейм, Джеймс Понсольдт	30
3584	Неоновый Джо – Охотник на оборотней (1 сезон)	https://kinokrad.co/317810-neonovyy-dzho-ohotnik-na-oborotney-1-sezon-2017.html	5	2015	США	ужасы, фантастика, комедия	Райан МакФол, Джон Ли	45
3585	Домашние очаги (1 сезон)	https://kinokrad.co/311302-domashnie-ochagi-1-sezon-2015.html	5	2015	Великобритания	драма, военный	Роберт Куинн, Брюс Гудисон, Джон Хэйес	45
3586	Галерея Вельвет (3 сезон)	https://kinokrad.co/303155-galereya-velvet-3-sezon-2015.html	8	2015	Испания	драма, история	Карлос Седес, Давид Пинильос, Хорхе Санчес-Кабесудо	43
3587	Класс убийц  / Убийство в классной комнате (1 сезон)	https://kinokrad.co/293944-klass-ubiyc-1-sezon-2015.html	8	2015	Япония	аниме, мультфильм, боевик, комедия	Сэйдзи Киси	23
3588	Морская полиция: Спецотдел (13 сезон)	https://kinokrad.co/284551-morskaya-policiya-specotdel-13-sezon-2015.html	7	2015	США	боевик, триллер, драма, комедия, криминал, детектив	Дэннис Смит, Тони Уормби, Терренс О’Хара	43
3589	Американская семейка (7 сезон)	https://kinokrad.co/283616-amerikanskaya-semeyka-7-sezon-2015.html	7	2015	США	комедия	Майкл Алан Спиллер, Джейсон Уайнер, Гейл Манкусо	22
3590	Древние (3 сезон)	https://kinokrad.co/283821-drevnie-3-sezon-2015.html	9	2015	США	ужасы, фэнтези, драма, детектив	Мэттью Хатингс, Крис Грисмер, Джесси Уарн	43
3591	Агенты «Щ.И.Т.» (3 сезон)	https://kinokrad.co/283691-agenty-sch.i.t.-3-sezon-2015.html	8	2015	США	фантастика, боевик, драма	Винс Мисиано, Бобби Рот, Милан Чейлов	45
3592	Чёрный список (3 сезон)	https://kinokrad.co/283800-chernyy-spisok-3-sezon-2015.html	9	2015	США	драмы, криминальные	Джо Карнахан	45
3593	Сладкая жизнь (2 сезон)	https://kinokrad.co/307637-sladkaya-zhizn-2-sezon-2015.html	7	2015	Россия	драма, комедия	Андрей Джунковский, Давид Кочаров	44
3594	Полдарк (2 сезон)	https://kinokrad.co/306446-poldark-2-sezon.html	8	2015	Великобритания	драма, мелодрама, история	Эдвард Базалгетт, Уильям МакГрегор, Чарльз Палмер	60
3595	Лучше звоните Солу (1 сезон)	https://kinokrad.co/280479-luchshe-zvonite-solu-1-sezon-9-seriya.html	9	2015	США	драма, комедия, криминал	Колин Бакси, Адам Бернштейн, Винс Гиллиган	60
3596	Шиттс Крик (1 сезон)	https://kinokrad.co/295120-shitts-krik-1-sezon-2015.html	6	2015	Канада, США	комедия	Джерри Чиккоритти, Пол Фокс	22
3597	Безмолвный свидетель (18 сезон)	https://kinokrad.co/301712-bezmolvnyy-svidetel-18-sezon-2015.html	6	2015	Великобритания	драма, криминал, детектив	Тадеус О’Салливан, Дэвид Ричардс, Ричард Сайни	43
3598	Улицы разбитых фонарей (15 сезон)	https://kinokrad.co/284811-ulicy-razbityh-fonarey-15-sezon-2015.html	6	2015	Россия	боевик, драма, криминал, приключения	Александр Рогожкин, Дмитрий Светозаров, Кирилл Капица	48
3599	Королевство (2 сезон)	https://kinokrad.co/296230-korolevstvo-2-sezon-2015.html	8	2015	США	драма	Майкл Моррис, Гэри Фледер, Дэнни Гордон	43
3600	Остановись и гори (2 сезон)	https://kinokrad.co/282312-ostanovis-i-gori-2-sezon-2015.html	7	2015	США	драма	Хуан Хосе Кампанелла, Лариса Кондрацки, Карин Кусама	43
3601	Список Ланъя (1 сезон)	https://kinokrad.co/324470-spisok-lanya-1-sezon.html	8	2015	Китай	драма	Кун Шэн, Ли Сюэ, Ван Юнцюань	45
3602	Несгибаемая Кимми Шмидт (4 сезон)	https://kinokrad.co/327683-nesgibaemaya-kimmi-shmidt-4-sezon.html	4	2015	США	драма, комедия	Тристрам Шапиро, Майкл Энглер, Бет МакКарти-Миллер	30
3603	Власть в ночном городе (2 сезон)	https://kinokrad.co/333724-vlast-v-nochnom-gorode-2-sezon.html	8	2015	США	драма, криминал	Сэнфорд Букставер, М. Дж. Бассетт, Роб Харди	50
3604	Затерянные в стране Оз (2 сезон)	https://kinokrad.co/332210-zateryannye-v-strane-oz-2-sezon.html	6	2015	Великобритания, Канада, США	мультфильм, семейный	Джа Хонг Ким, Paul Stodolny	24
3605	Голдберги (3 сезон)	https://kinokrad.co/332237-goldbergi-3-sezon.html	6	2015	США	комедия	Дэвид Катценберг, Лью Шнайдер, Джей Чандрашекхар	22
3606	Американская история ужасов (5 сезон)	https://kinokrad.co/305186-amerikanskaya-istoriya-uzhasov-5-sezon.html	7	2015	США	ужасы, триллер, драма	Брэдли Букер, Альфонсо Гомес-Рехон, Майкл Аппендаль	43
3607	Американская история ужасов (4 сезон)	https://kinokrad.co/335134-amerikanskaya-istoriya-uzhasov-4-sezon.html	7	2015	США	ужасы, триллер, драма	Брэдли Букер, Альфонсо Гомес-Рехон, Майкл Аппендаль	43
3608	Родина (5 сезон)	https://kinokrad.co/283750-rodina-5-sezon-2015.html	7	2015	США	триллер, драма, детектив	Лесли Линка Глаттер, Майкл Куэста, Дэниэл Эттиэс	55
3609	Стражи Галактики (3 сезон)	https://kinokrad.co/326312-strazhi-galaktiki-3-sezon.html	7	2015	США	мультфильм, фантастика, боевик, приключения	Эрик Радомски, Лео Райли, Jeff Wamester	22
3610	Нарко (3 сезон)	https://kinokrad.co/320306-narko-3-sezon-2017.html	8	2015	США, Колумбия	криминал, драма	Андрес Байс, Херардо Наранхо, Джозеф Владыка	49
3611	З: начало всего (1 сезон)	https://kinokrad.co/313058-z-nachalo-vsego-1-sezon-2015.html	6	2015	США	драма, биография	Майк Баркер, Neasa Hardiman, Минки Спиро	27
3612	Патриот (1 сезон)	https://kinokrad.co/316546-patriot-1-sezon-2015.html	6	2015	США	триллер, комедия	Стив Конрад, Такер Гейтс, Тед Гриффин	58
3613	Да здравствует король Джулиан (2 сезон)	https://kinokrad.co/318634-da-zdravstvuet-korol-dzhulian-2-sezon-2015.html	7	2015	США	мультфильм, комедия, семейный	Джеймс Вуттон, Christo Stamboliev, Stephen Heneveld	22
3614	Наруто: Ураганные хроники (20 сезон)	https://kinokrad.co/283179-naruto-uragannye-hroniki-20-sezon-2015.html	8	2015	Япония	аниме, мультфильм, фантастика, боевик, триллер, приключения	Хаято Датэ, Юки Эри	24
3615	Вся правда о медведях / Мы обычные медведи (1 сезон)	https://kinokrad.co/317286-vsya-pravda-o-medvedyah-1-sezon-2015.html	7	2015	США	мультфильм, фэнтези, комедия, семейный	Manny Hernandez	30
3616	Шиттс Крик (2 сезон)	https://kinokrad.co/307064-shitts-krik-2-sezon.html	6	2015	Канада, США	комедия	Джерри Чиккоритти, Пол Фокс	22
3617	Закусочная Боба (6 сезон)	https://kinokrad.co/309950-zakusochnaya-boba-6-sezon-2015.html	5	2015	США	мультфильм, комедия	Бернард Дерриман, Дженнифер Койл, Тайри Диллихей	22
3618	Почти там (1 сезон)	https://kinokrad.co/303377-pochti-tam-1-sezon-2015.html	4	2015	США	драма, комедия	Marshall Blackstone	29
3619	Семейка Крудс. Начало (2 сезон)	https://kinokrad.co/303422-semeyka-kruds-nachalo-2-sezon-2016.html	8	2015	США	мультфильм, комедия, семейный	Чонг Ли, Алекс Альмагер, Стефани Арнетт	23
3620	Погружение (1 сезон)	https://kinokrad.co/301763-pogruzhenie-1-sezon-2015.html	5	2015	Франция	боевик, криминал	Филипп Аим	43
3621	Затерянные в ОЗ (1 сезон)	https://kinokrad.co/320722-zateryannye-v-oz-1-sezon-2015.html	8	2015		мультфильм, семейный	Paul Stodolny	24
3622	Морская полиция: Новый Орлеан (2 сезон)	https://kinokrad.co/322679-morskaya-policiya-novyy-orlean-2-sezon.html	8	2015	США	драма, криминал	Джеймс Хейман, Тони Уормби, Майкл Цинберг	42
3623	Приключения Кота в сапогах (2 сезон)	https://kinokrad.co/287051-priklyucheniya-kota-v-sapogah-2-sezon-2015.html	8	2015	США	мультфильм, комедия, приключения, семейный	Рой Бурдин, Douglas Lovelace, Дэвид Макки Фассетт	22
3624	Когда зовёт сердце (3 сезон)	https://kinokrad.co/320846-kogda-zovet-serdce-3-sezon-2015.html	8	2015	США	драма	Дэйв Осборн, Jerry Forder, Stu Gamble	43
3625	Когда зовёт сердце (2 сезон)	https://kinokrad.co/320842-kogda-zovet-serdce-2-sezon-2015.html	6	2015	США	драма	Нилл Фернли, Майкл Лэндон мл., Мартин Вуд	43
3626	Кровные узы / В связке (1 сезон)	https://kinokrad.co/293185-krovnye-uzy-v-svyazke-1-sezon-2015.html	6	2015	Канада, США	драма, криминал, семейный	Стивен Р. Монро, Шон МакНамара, Моника Митчелл	42
3627	Валландер (4 сезон)	https://kinokrad.co/272599-vallander-4-sezon-2015.html	9	2015	Великобритания, Швеция, США, Германия	триллер, криминал	Филип Мартин, Найал МакКормик, Хетти Макдональд	90
3628	Класс убийц  / Убийство в классной комнате (2 сезон)	https://kinokrad.co/293947-klass-ubiyc-2-sezon-2016.html	8	2015	Япония	аниме, мультфильм, боевик, комедия	Сэйдзи Киси	23
3629	Без обязательств (1 сезон)	https://kinokrad.co/297649-bez-obyazatelstv-1-sezon-2015.html	5	2015	США	драма, комедия	Джейсон Райтман, Майкл Уивер, Фред Сэвэдж	25
3630	Коронер (1 сезон)	https://kinokrad.co/295279-koroner-1-sezon-2015.html	7	2015	Великобритания	драма, криминал	Йен Барбер, Адриан Бин, Мэтт Картер	45
3631	Отдел Ромео (1 сезон)	https://kinokrad.co/295114-otdel-romeo-1-sezon-2015.html	7	2015	Канада	драма	Дэвид Фрэйзи, Крис Хэддок, Стивен Серджик	60
3632	Опасный Генри (2  сезон)	https://kinokrad.co/317974-opasnyy-genri-2-sezon-2015.html	6	2015	США	фантастика, боевик, комедия, семейный	Стив Хофер, Адам Вайсман, Нэйтан Кресс	30
3633	Подлый Пит / Хитрый Пит (1 сезон)	https://kinokrad.co/317898-podlyy-pit-hitryy-pit-1-sezon-2015.html	8	2015	США	драма, криминал	Сара Пиа Андерсон, Майкл Диннер, Сет Гордон	60
3634	Реанимация (2 сезон)	https://kinokrad.co/306440-reanimaciya-2-sezon.html	7	2015	США	драма	Дэвид Фон Энкен, Ли Роуз, Оз Скотт	42
3635	Большая школа (2 сезон)	https://kinokrad.co/271811-bolshaya-shkola-2-sezon-2015.html	7	2015	Великобритания	комедия	Тони Дау	30
3636	Колыбель ангелов (1 сезон)	https://kinokrad.co/307136-kolybel-angelov-1-sezon.html	6	2015	Канада	драма	Ricardo Trogi	60
3637	Драконы и всадники Олуха (3 сезон)	https://kinokrad.co/285025-drakony-i-vsadniki-oluha-3-sezon-2015.html	8	2015	США	мультфильм, фэнтези, комедия, приключения, семейный	Энтони Белл, Джон Санфорд, Луи дель Кармен	22
3638	Доктор Кен (1 сезон)	https://kinokrad.co/312022-doktor-ken-1-sezon-2016.html	7	2015	США	комедия	Энтони Джозеф Рич, Скотт Эллис, Фил Льюис	21
3639	Оставленные (2 сезон)	https://kinokrad.co/316530-ostavlennye-2-sezon-2015.html	6	2015	США	фэнтези, драма, детектив	Мими Ледер, Карл Франклин, Кит Гордон	60
3640	Люцифер (2 сезон)	https://kinokrad.co/306677-lyucifer-2-sezon.html	9	2015	США	фэнтези, драма, криминал	Нэйтан Хоуп, Грег Биман, Майрзи Алмас	42
3641	Раз, Миссисипи / Один из Миссисипи (1 сезон)	https://kinokrad.co/303386-raz-missisipi-odin-iz-missisipi-1-sezon-2015.html	6	2015	США	драма, комедия	Николь Холофсенер, Кен Куопис, Шира Пивен	28
3642	Адам портит всё (1 сезон)	https://kinokrad.co/286423-adam-portit-vsjo-1-sezon-2015.html	8	2015	США	комедия	Пол Бриганти, Винсент Пеон, Джош Рубен	30
3643	Симпсоны (27 сезон)	https://kinokrad.co/284263-simpsony-27-sezon-2015.html	9	2015	США	мультфильм, комедия	Марк Керклэнд, Стивен Дин Мур, Боб Андерсон	22
3644	Истсайдеры (2 сезон)	https://kinokrad.co/291643-istsaydery-2-sezon-2015.html	6	2015	США	драма	Кит Уильямсон	115
3645	Гриффины (14 сезон)	https://kinokrad.co/283808-griffiny-14-sezon-2015.html	8	2015	США	мультфильм, комедия	Питер Шин, Джеймс Пурдум, Доминик Бьянчи	22
3646	Готэм (2 сезон)	https://kinokrad.co/283518-gotjem-2-sezon-2015.html	9	2015	США	триллер, драма, криминал	Т.Дж. Скотт, Дэнни Кэннон, Пол А. Эдвардс	44
3647	Бездельницы (3 сезон)	https://kinokrad.co/309599-bezdelnicy-3-sezon-2015.html	7	2015	Великобритания	комедия	Аль Кэмпбелл, Саймон Делани, Том Маршалл	23
3648	Доктор Кен (2 сезон)	https://kinokrad.co/312026-doktor-ken-2-sezon-2016.html	6	2015	США	комедия	Энтони Джозеф Рич, Скотт Эллис, Фил Льюис	21
3649	Убийство в Саксессвиле (1 сезон)	https://kinokrad.co/317158-ubiystvo-v-saksessvile-1-sezon-2017.html	6	2015	Великобритания	комедия	James De Frond	45
3650	Последний человек на Земле (3 сезон)	https://kinokrad.co/306443-posledniy-chelovek-na-zemle-3-sezon.html	8	2015	США	комедия	Джон Соломон, Джейсон Уолинер, Пэймэн Бенц	22
3651	Катастрофа (2 сезон)	https://kinokrad.co/315250-katastrofa-2-sezon-2015.html	6	2015	Великобритания	комедия	Бен Тэйлор	30
3652	Роузвуд (2 сезон)	https://kinokrad.co/306437-rouzvud.html	7	2015	США	драма, криминал, детектив	Милан Чейлов, Эрик Ланёвилль, Джеймс Родэй	42
3653	Бездомный Бог (2 сезон)	https://kinokrad.co/300570-bezdomnyy-bog-2-sezon-2015.html	9	2015	Япония	аниме, мультфильм, приключения, комедия, драма, фэнтези, боевик	Цуёси Хида, Shûji Miyahara, Масаси Абе	24
3654	Другое время (1 сезон)	https://kinokrad.co/300369-drugoe-vremya-1-sezon-2015.html	6	2015	США	комедия, история	Джереми Коннер	21
3655	Визави (1 сезон)	https://kinokrad.co/297586-vizavi-1-sezon-2015.html	8	2015	Испания	драма	Хесус Кольменар, Хесус Родриго, Сандра Гальего	60
3656	Ад на колёсах (5 сезон)	https://kinokrad.co/282836-ad-na-koljosah-5-sezon-2015.html	8	2015	Канада, Великобритания	драма, вестерн	Дэвид Фон Энкен, Адам Дэвидсон, Нил ЛаБут	43
3657	Морская полиция: Лос-Анджелес (7 сезон)	https://kinokrad.co/283560-morskaya-policiya-los-andzheles-7-sezon-2015.html	7	2015	США	триллер, драма, криминал, детектив	Тони Уормби, Терренс О’Хара, Дэннис Смит	43
3658	Великий сыщик Филинта (2 сезон)	https://kinokrad.co/317762-velikiy-syschik-filinta-2-sezon-2017.html	6	2015	Турция	история	Süleyman Mert Özdemir, Кудрет Сабанджи, Gökhan Erkut	
3659	Уэнтуорт (3 сезон)	https://kinokrad.co/293632-ujentuort-3-sezon-2015.html	8	2015	Австралия	драма, криминал	Кевин Карлин, Катрин Миллар, Стив Джодрелл	45
3660	Кости (11 сезон)	https://kinokrad.co/283694-kosti-11-sezon-2015.html	9	2015	США	драма, мелодрама, комедия, криминал, детектив	Иэн Тойнтон, Дуайт Х. Литтл, Жанно Шварц	43
3661	Чистильщик (5 сезон)	https://kinokrad.co/320462-chistilschik-5-sezon-2015.html	7	2015	Германия	комедия	Арни Фельдхузен	26
3662	Виксен (1 сезон)	https://kinokrad.co/308168-viksen-1-sezon-2015.html	6	2015	США	мультфильм, короткометражка, фантастика, боевик, приключения	Джеймс Такер, Курт Геда	5
3663	Фиксики (3 сезон)	https://kinokrad.co/287125-fiksiki-3-sezon-2015.html	8	2015	Россия	мультфильм, детский	Васико Бедошвили, Андрей Колпин, Сергей Меринов	6
3664	Перехватчик (1 сезон)	https://kinokrad.co/301757-perehvatchik-1-sezon-2015.html	5	2015	Великобритания	драма	Фэррен Блэкберн, Джулиан Холмс, Ричард Сеньор	60
3665	Образцовые бунтарки (1 сезон)	https://kinokrad.co/308153-obrazcovye-buntarki-1-sezon-2015.html	8	2015	США	драма	Скотт Уинант, Лиза Джонсон, Дэниэл Эттиэс	55
3666	Молодые и голодные (2 сезон)	https://kinokrad.co/281286-molodye-i-golodnye-2-sezon-2015.html	6	2015	США	комедия	Энди Кэдифф, Фил Льюис, Кэти Гарретсон	22
3667	Невский (1 сезон)	https://kinokrad.co/293323-nevskiy-1-sezon-2015.html	8	2015	Россия	детектив	Андрей Коршунов, Алексей Павлов	44
3668	Последний человек на Земле (2 сезон)	https://kinokrad.co/283993-posledniy-chelovek-na-zemle-2-sezon-2015.html	9	2015	США	комедия	Джон Соломон, Джейсон Уолинер, Фил Лорд	30
3669	Две разорившиеся девочки (5 сезон)	https://kinokrad.co/287245-dve-razorivshiesya-devochki-5-sezon-2015.html	7	2015	США	комедия	Дон Скардино, Фред Сэвэдж, Фил Льюис	22
3670	Шоу Кармайкла (1 сезон)	https://kinokrad.co/318502-shou-karmaykla-1-sezon-2015.html	6	2015	США	комедия	Джерри Коэн, Бетси Томас, Майкл Цинберг	21
3671	Дедушка (1 сезон)	https://kinokrad.co/283819-dedushka-1-sezon-2015.html	7	2015	США	комедия	Крис Кох	22
3672	Дробилка (1 сезон)	https://kinokrad.co/283826-drobilka-1-sezon-2015.html	6	2015	США	комедия	Джейк Кэздан	21
3673	Государственный секретарь (2 сезон)	https://kinokrad.co/286041-gosudarstvennyy-sekretar-2-sezon-2015.html	6	2015	США	драма	Эрик Столц, Дэнни Гордон, Роб Дж. Гринли	45
3674	Мамаша (3 сезон)	https://kinokrad.co/271795-mamasha-3-sezon-2015.html	7	2015	США	комедия	Джефф Гринштейн, Джеймс Уиддоуз, Тед Уасс	22
3675	Последний настоящий мужчина (5 сезон)	https://kinokrad.co/284825-posledniy-nastoyaschiy-muzhchina-5-sezon-2015.html	8	2015	США	комедия	Джон Пасквин, Тед Уасс, Джонатан Тейлор Томас	22
3676	Создавая убийцу (1 сезон)	https://kinokrad.co/290281-sozdavaya-ubiycu-1-sezon-2015.html	8	2015	США	документальный, криминал	Мойра Демос, Лаура Риччарди	60
3677	Ниндзяго: Мастера Кружитцу (5 сезон)	https://kinokrad.co/318354-nindzyago-mastera-kruzhitcu-5-sezon-2015.html	6	2015	Дания, Сингапур, Канада, США	мультфильм, фантастика, фэнтези, боевик, комедия, приключения, семейный	Петер Хауснер, Майкл Хельмут Хансен, Трюлле Вильструп	30
3678	Ниндзяго: Мастера Кружитцу (4 сезон)	https://kinokrad.co/318350-nindzyago-mastera-kruzhitcu-4-sezon-2015.html	6	2015	Дания, Сингапур, Канада, США	мультфильм, фантастика, фэнтези, боевик, комедия, приключения, семейный	Петер Хауснер, Майкл Хельмут Хансен, Трюлле Вильструп	30
3679	Инструкция по разводу для женщин (2 сезон)	https://kinokrad.co/292147-instrukciya-po-razvodu-dlya-zhenschin-2-sezon-2015.html	6	2015	США	драма, комедия	Роберт Данкан МакНил, Адам Брукс, Сильвер Три	60
3680	Будь классным, Скуби-Ду! (1 сезон)	https://kinokrad.co/284071-bud-klassnym-skubi-du-1-sezon-2015.html	8	2015	США	мультфильм, мистика	Jeff Mednikow, Шонт Нигогосян, Энди Том	23
3681	Агент Икс (1 сезон)	https://kinokrad.co/319834-agent-iks-1-sezon-2015.html	6	2015	США	боевик, драма	Питер О’Фаллон, Кевин Брэй, Ута Бризвитц	60
3682	Трудности ассимиляции (2 сезон)	https://kinokrad.co/283898-trudnosti-assimilyacii-2-sezon-2015.html	6	2015	США	комедия	Линн Шелтон, Клер Скэнлон, Роберт Коэн	22
3683	Мастер не на все руки / Не при делах (1 сезон)	https://kinokrad.co/317814-master-ne-na-vse-ruki-ne-pri-delah-1-sezon-2016.html	5	2015	США	комедия	Азиз Ансари, Эрик Верхейм, Джеймс Понсольдт	30
3684	Неоновый Джо – Охотник на оборотней (1 сезон)	https://kinokrad.co/317810-neonovyy-dzho-ohotnik-na-oborotney-1-sezon-2017.html	5	2015	США	ужасы, фантастика, комедия	Райан МакФол, Джон Ли	45
3685	Домашние очаги (1 сезон)	https://kinokrad.co/311302-domashnie-ochagi-1-sezon-2015.html	5	2015	Великобритания	драма, военный	Роберт Куинн, Брюс Гудисон, Джон Хэйес	45
3686	Галерея Вельвет (3 сезон)	https://kinokrad.co/303155-galereya-velvet-3-sezon-2015.html	8	2015	Испания	драма, история	Карлос Седес, Давид Пинильос, Хорхе Санчес-Кабесудо	43
3687	Класс убийц  / Убийство в классной комнате (1 сезон)	https://kinokrad.co/293944-klass-ubiyc-1-sezon-2015.html	8	2015	Япония	аниме, мультфильм, боевик, комедия	Сэйдзи Киси	23
3688	Морская полиция: Спецотдел (13 сезон)	https://kinokrad.co/284551-morskaya-policiya-specotdel-13-sezon-2015.html	7	2015	США	боевик, триллер, драма, комедия, криминал, детектив	Дэннис Смит, Тони Уормби, Терренс О’Хара	43
3689	Американская семейка (7 сезон)	https://kinokrad.co/283616-amerikanskaya-semeyka-7-sezon-2015.html	7	2015	США	комедия	Майкл Алан Спиллер, Джейсон Уайнер, Гейл Манкусо	22
3690	Древние (3 сезон)	https://kinokrad.co/283821-drevnie-3-sezon-2015.html	9	2015	США	ужасы, фэнтези, драма, детектив	Мэттью Хатингс, Крис Грисмер, Джесси Уарн	43
3691	Агенты «Щ.И.Т.» (3 сезон)	https://kinokrad.co/283691-agenty-sch.i.t.-3-sezon-2015.html	8	2015	США	фантастика, боевик, драма	Винс Мисиано, Бобби Рот, Милан Чейлов	45
3692	Чёрный список (3 сезон)	https://kinokrad.co/283800-chernyy-spisok-3-sezon-2015.html	9	2015	США	драмы, криминальные	Джо Карнахан	45
3693	Сладкая жизнь (2 сезон)	https://kinokrad.co/307637-sladkaya-zhizn-2-sezon-2015.html	7	2015	Россия	драма, комедия	Андрей Джунковский, Давид Кочаров	44
3694	Полдарк (2 сезон)	https://kinokrad.co/306446-poldark-2-sezon.html	8	2015	Великобритания	драма, мелодрама, история	Эдвард Базалгетт, Уильям МакГрегор, Чарльз Палмер	60
3695	Лучше звоните Солу (1 сезон)	https://kinokrad.co/280479-luchshe-zvonite-solu-1-sezon-9-seriya.html	9	2015	США	драма, комедия, криминал	Колин Бакси, Адам Бернштейн, Винс Гиллиган	60
3696	Шиттс Крик (1 сезон)	https://kinokrad.co/295120-shitts-krik-1-sezon-2015.html	6	2015	Канада, США	комедия	Джерри Чиккоритти, Пол Фокс	22
3697	Безмолвный свидетель (18 сезон)	https://kinokrad.co/301712-bezmolvnyy-svidetel-18-sezon-2015.html	6	2015	Великобритания	драма, криминал, детектив	Тадеус О’Салливан, Дэвид Ричардс, Ричард Сайни	43
3698	Улицы разбитых фонарей (15 сезон)	https://kinokrad.co/284811-ulicy-razbityh-fonarey-15-sezon-2015.html	6	2015	Россия	боевик, драма, криминал, приключения	Александр Рогожкин, Дмитрий Светозаров, Кирилл Капица	48
3699	Королевство (2 сезон)	https://kinokrad.co/296230-korolevstvo-2-sezon-2015.html	8	2015	США	драма	Майкл Моррис, Гэри Фледер, Дэнни Гордон	43
3700	Остановись и гори (2 сезон)	https://kinokrad.co/282312-ostanovis-i-gori-2-sezon-2015.html	7	2015	США	драма	Хуан Хосе Кампанелла, Лариса Кондрацки, Карин Кусама	43
3701	Нэшвилл (4 сезон)	https://kinokrad.co/284819-njeshvill-4-sezon-2015.html	6	2015	США	драма, музыка	Кэлли Кхури, Стивен Крегг, Пол МакКрейн	43
3702	Раскаяния выжившего (3 сезон)	https://kinokrad.co/320346-raskayaniya-vyzhivshego-3-sezon-2015.html	5	2015	США	драма	Виктор Левин, Питер Сигал, Кен Уиттингэм	30
3703	Хандерби (2 сезон)	https://kinokrad.co/319718-handerbi-2-sezon-2015.html	7	2015	Великобритания	комедия	Тони Дау	30
3704	Расследования Мердока (9 сезон)	https://kinokrad.co/293089-rassledovaniya-merdoka-9-sezon-2015.html	9	2015	Канада, Великобритания	драма, криминал, детектив	Лори Линд, Кэл Кунс, Харви Кросслэнд	43
3705	Вайнберг (1 сезон)	https://kinokrad.co/294667-vaynberg-1-sezon-2015.html	7	2015	Германия	триллер, драма, детектив	Тилль Францен, Жан Мартин Шарф	53
3706	Полиция Чикаго (3 сезон)	https://kinokrad.co/283686-policiya-chikago-3-sezon-2015.html	7	2015	США	боевик, драма	Марк Тинкер, Ник Гомез, Сэнфорд Букставер	60
3707	Миссис Коп / Госпожа полицейский (1 сезон)	https://kinokrad.co/311186-missis-kop-gospozha-policeyskiy-1-sezon-2016.html	8	2015	Корея Южная	криминал	Ю Ин-щик, Ан Гиль-хо	
3708	Бюро легенд (1 сезон)	https://kinokrad.co/318174-byuro-legend-1-sezon-2015.html	8	2015	Франция	драма	Элье Систерн, Матье Деми, Эрик Рошан	52
3709	Царство (3 сезон)	https://kinokrad.co/283899-carstvo-3-sezon-2015.html	9	2015	США	фэнтези, драма	Фред Гербер, Холли Дэйл, Норма Бэйли	43
3710	Медики Чикаго (1 сезон)	https://kinokrad.co/306617-mediki-chikago-1-sezon.html	8	2015	США	драма	Майкл Ваксман, Фред Бернер, Дональд Питри	43
3711	На дальней заставе (1 сезон)	https://kinokrad.co/296101-na-dalney-zastave-1-sezon-2015.html	7	2015	Россия	драма, военный	Андрей Хрулев	45
3712	Супермаркет (1 сезон)	https://kinokrad.co/305726-supermarket.html	6	2015	США	комедия	Рубен Флейшер, Виктор Нелли мл., Майкл Патрик Джэнн	30
3713	Анатомия страсти (12 сезон)	https://kinokrad.co/283593-anatomiya-strasti-12-sezon-2015.html	9	2015	США	драма, мелодрама	Роб Корн, Шандра Уилсон, Тони Фелан	43
3714	Касл (8 сезон)	https://kinokrad.co/283626-kasl-8-sezon-2015.html	8	2015	США	драма, комедия, криминал, детектив	Роб Боумен, Джон Терлески, Билл Роу	43
3715	Виолетта (3 сезон)	https://kinokrad.co/280386-violetta-3-sezon-2015.html	9	2015	Аргентина	мелодрама, комедия, семейный	Хорхе Ниско, Мартин Саббан, Матиас Риси	43
3716	Пожарные Чикаго / Чикаго в огне (4 сезон)	https://kinokrad.co/273058-chikago-v-ogne-4-sezon-2015.html	8	2015	США	боевик, драма	Джо Чаппелль, Жан Де Сегонзак, Майкл Словис	43
3717	Осколки счастья (1 сезон)	https://kinokrad.co/309494-oskolki-schastya-1-sezon-2015.html	6	2015	Россия	драма, мелодрама	Алексей Праздников	44
3718	Стражи Галактики (1 сезон)	https://kinokrad.co/283437-strazhi-galaktiki-1-sezon-2015.html	7	2015	США	мультфильм, фантастика, боевик, приключения	Лео Райли	22
3719	Дневники вампира (7 сезон)	https://kinokrad.co/283827-dnevniki-vampira-7-sezon-2015.html	8	2015	США	ужасы, фэнтези, триллер, драма, мелодрама, детектив	Крис Грисмер, Джошуа Батлер, Маркос Сига	43
3720	Стыд (1 сезон)	https://kinokrad.co/309347-styd-1-sezon-2015.html	8	2015	Норвегия	драма	Julie Andem	30
3721	Бестия (3 сезон)	https://kinokrad.co/282457-bestiya-3-sezon-2015.html	4	2015	США, Канада	боевик, триллер, драма, криминал	Лариса Кондрацки, Ник Хэмм, Пол А. Кауфман	50
3722	Черепашки-ниндзя (4 сезон)	https://kinokrad.co/291634-cherepashki-nindzya-4-sezon-2015.html	8	2015	США	мультфильм, фантастика, боевик, драма, комедия, приключения, семейный	Сиро Ниели, Майкл Чанг, Алан Ван	22
3723	На перекрёстке радости и горя (1 сезон)	https://kinokrad.co/298276-na-perekrjostke-radosti-i-gorya-1-sezon-2016.html	6	2015	Россия	мелодрама	Владислав Николаев	96
3724	Проект Минди (4 сезон)	https://kinokrad.co/288271-proekt-mindi-4-sezon-2015.html	6	2015	США	комедия	Майкл Алан Спиллер, Майкл Уивер, Дэвид Роджерс	22
3725	Тайны острова Мако (3 сезон)	https://kinokrad.co/299748-tayny-ostrova-mako-3-sezon-2015.html	8	2015	Австралия	фэнтези, драма, мелодрама, комедия, приключения, семейный	Грант Браун, Ивэн Кларри, Tom Hooper	22
3726	Черноватый (2 сезон)	https://kinokrad.co/295840-chernovatyy-2-sezon-2016.html	6	2015	США	комедия	Виктор Нелли мл., Кен Уиттингэм, Мэттью Сон	22
3727	Области тьмы (1 сезон)	https://kinokrad.co/283512-oblasti-tmy-1-sezon-2015.html	9	2015	США	фантастика, триллер, драма	Марк Уэбб, Дуглас Арниокоски, Гильермо Наварро	42
3728	Скорпион (2 сезон)	https://kinokrad.co/283559-skorpion-2-sezon-2015.html	8	2015	США	боевик, драма	Сэм Хилл, Мэл Дэмски, Милан Чейлов	43
3729	Вайс (3 сезон)	https://kinokrad.co/287974-vays-3-sezon-2015.html	7	2015	США	документальный, новости		30
3730	Вверх ногами, или Где-то в том лесу (1 сезон)	https://kinokrad.co/283714-vverh-nogami-ili-gde-to-v-tom-lesu.html	5	2015	Россия	мультфильм, детский	Андрей Соколов, Дмитрий Резчиков, Юлия Дащинская	58
3731	Время приключений (7 сезон)	https://kinokrad.co/292690-vremya-priklyucheniy-7-sezon-2015.html	8	2015	США	мультфильм, фэнтези, комедия, приключения, семейный	Ларри Лэйчлитер, Элизабет Ито, Андрес Салафф	22
3732	Мажор (2 сезон)	https://kinokrad.co/283759-mazhor-2-sezon-2015.html	8	2015	Россия	драма, криминал	Константин Статский	52
3733	Хроники Франкенштейна (1 сезон)	https://kinokrad.co/301331-hroniki-frankenshteyna-1-sezon-2015.html	8	2015	Великобритания	драма, криминал	Бенжамин Росс	48
3734	Огурец (1 сезон)	https://kinokrad.co/289561-ogurec-1-sezon-2015.html	7	2015	Великобритания	драма	Дэвид Эванс, Элис Тротон, Эрос Лин	50
3735	Я – зомби (2 сезон)	https://kinokrad.co/271652-ya-zombi-2-sezon-2015.html	8	2015	США	ужасы, фантастика, драма, криминал	Роб Томас	43
3736	Хофф в записи (1 сезон)	https://kinokrad.co/294247-hoff-v-zapisi-1-sezon-2015.html	8	2015	Великобритания	комедия	Натали Бэйли	30
3737	Фостеры (3 сезон)	https://kinokrad.co/285027-fostery-3-sezon-2015.html	7	2015	США	драма	Норман Бакли, Элоди Кин, Марта Митчелл	45
3738	Модус (1 сезон)	https://kinokrad.co/287261-modus-1-sezon-2015.html	7	2015	Швеция, Германия, Норвегия, Дания, Исландия, Франция, Великобритания	триллер	Мани Масеррат Агах, Лиза Сиве	45
3739	Супружеский долг (2 сезон)	https://kinokrad.co/286039-supruzheskiy-dolg-2-sezon-2015.html	6	2015	США	драма	Майк Листо, Стивен Джилленхол, Кевин Брэй	44
3740	Стрела (4 сезон)	https://kinokrad.co/283896-strela-4-sezon-2015.html	7	2015	США	фантастика, боевик, драма, криминал, детектив, приключения	Джон Беринг, Майкл Шульц, Гай Норман Би	43
3741	Роузвуд (1 сезон)	https://kinokrad.co/284653-rouzvud-1-sezon-2015.html	8	2015	США	драма, криминал, детектив	Сара Пиа Андерсон, Тимоти Басфилд, Милан Чейлов	42
3742	Волшебники (1 сезон)	https://kinokrad.co/285607-volshebniki-1-sezon-2015.html	8	2015	США	ужасы, фэнтези, драма, детектив	Джеймс Л. Конуэй, Скотт Смит, Майк Кэхилл	60
3743	Винтер (1 сезон)	https://kinokrad.co/294331-vinter-1-sezon-2015.html	6	2015	Австралия	криминал	Ширли Баррет, Линн Хегарти, Йен Уотсон	42
3744	Беглецы (1 сезон)	https://kinokrad.co/294316-beglecy-1-sezon-2015.html	6	2015	Россия	детектив, криминал	Андрей Щербинин	43
3745	Флэш (2 сезон)	https://kinokrad.co/283752-fljesh-2-sezon-2015.html	9	2015	США	фантастика, фэнтези, боевик, драма, приключения	Дермотт Даунс, Ральф Хемекер, Глен Винтер	43
3746	Гримм (5 сезон)	https://kinokrad.co/284223-grimm-5-sezon-2015.html	9	2015	США	ужасы, фэнтези, драма, детектив	Норберто Барба, Терренс О’Хара, Эрик Ланёвилль	43
3747	Быть Мэри Джейн (2 сезон)	https://kinokrad.co/286795-byt-mjeri-dzheyn-2-sezon-2015.html	8	2015	США	драма, мелодрама	Салим Акил, Реджина Кинг, Нима Барнетт	60
3748	Вера (5 сезон)	https://kinokrad.co/287359-vera-5-sezon-2015.html	9	2015	Великобритания	драма, криминал, детектив	Уильям Синклер, Питер Хор, Пол Уиттингтон	95
3749	Грешники / Порочные (2 сезон)	https://kinokrad.co/272934-greshniki-porochnye-2-sezon-2015.html	8	2015	Великобритания	комедия	Эд Бай	23
3750	Сложные люди (1 сезон)	https://kinokrad.co/303677-slozhnye-lyudi-1-sezon-2016.html	6	2015	США	комедия	Джеффри Уокер, Эндрю Флеминг, Нил Дэйли	30
3751	Девственница Джейн (2 сезон)	https://kinokrad.co/284813-devstvennica-dzheyn-2-sezon-2015.html	6	2015	США	комедия	Эдвард Орнелас, Брэд Силберлинг, Зетна Фуэнтес	60
3752	Их перепутали в роддоме (4 сезон)	https://kinokrad.co/303167-ih-pereputali-v-roddome-4-sezon-2015.html	7	2015	США	драма, мелодрама, семейный	Стив Майнер, Рон Лагомарсино, Мелани Мейрон	43
3753	Лига (7 сезон)	https://kinokrad.co/304301-liga-7-sezon-2015.html	6	2015	США	комедия, спорт	Джефф Шеффер, Джеки Маркус	22
3754	Скандал (5 сезон)	https://kinokrad.co/284815-skandal-5-sezon-2015.html	7	2015	США	триллер, драма	Том Верика, Оливер Бокельберг, Рэндолл Зиск	43
3755	Быть Мэри Джейн (3 сезон)	https://kinokrad.co/291361-byt-mjeri-dzheyn-3-sezon-2015.html	7	2015	США	драма, мелодрама	Салим Акил, Реджина Кинг, Нима Барнетт	60
3756	Элементарно (4 сезон)	https://kinokrad.co/272290-jelementarno-4-sezon-2015.html	9	2015	США	драма, криминал, детектив	Джон Полсон, Сет Манн, Эндрю Бернштейн	43
3757	Расследования Мердока (8 сезон)	https://kinokrad.co/272742-rassledovaniya-merdoka-8-sezon-4-seriya.html	8	2015	Канада, Великобритания	драма, криминал, детектив	Харви Кросслэнд, Лори Линд, Дон МакКатчен	43
3758	Любовницы (3 сезон)	https://kinokrad.co/295909-lyubovnicy-3-sezon-2015.html	8	2015	США, Великобритания	триллер, драма	Джон Скотт, Константин Макрис, Крис Мисиано	43
3759	К югу от ада (1 сезон)	https://kinokrad.co/285781-k-yugu-ot-ada-1-sezon-2015.html	7	2015	США	ужасы, фэнтези, триллер, драма, мистика	Дженнифер Чэмберс Линч, Рейчел Тэлалей, Джеримайя С. Чечик	60
3760	Семейка Крудс. Начало (1 сезон)	https://kinokrad.co/285625-semeyka-kruds-nachalo-1-sezon-2015.html	8	2015	США	мультфильм, семейный	Алекс Альмагер, Кристал Чесни, Брайан Хэтфилд	23
3761	Конец детства (1 сезон)	https://kinokrad.co/285569-konec-detstva-1-sezon-2015.html	9	2015	США	фантастика, триллер, драма	Ник Харран	60
3762	Мамочки (1 сезон)	https://kinokrad.co/285601-mamochki-1-sezon-2015.html	9	2015	Россия	комедия	Александр Богданенко, Валерия Ивановская	24
3763	Город лунного луча (1 сезон)	https://kinokrad.co/284285-gorod-lunnogo-lucha-1-sezon-2015.html	6	2015	США	мультфильм, боевик, комедия	Марк Брукс, Джуно Джон Ли	22
3764	Герои: Возрождение (1 сезон)	https://kinokrad.co/283140-geroi-vozrozhdenie-1-sezon-2015.html	7	2015	США	фэнтези	Лариса Кондрацки, Грег Биман, Мэтт Шекман	41
3765	Банан	https://kinokrad.co/280499-banan-3-seriya.html	7	2015	Великобритания	драма	Льюис Арнольд, Аластер Маккэй, Люк Снеллин	25
3766	Конь БоДжек (2 сезон)	https://kinokrad.co/285139-kon-bodzhek-2-sezon-2015.html	6	2015	США	мультфильм, драма, комедия	JC Gonzalez, Amy Winfrey, Джоэль Мосер	25
3767	Гавайи 5.0 (6 сезон)	https://kinokrad.co/283642-gavayi-5-0-6-sezon-2015.html	7	2015	США	боевик, драма, криминал	Брайан Спайсер, Ларри Тенг, Стив Бойум	43
3768	Кровь и нефть (1 сезон)	https://kinokrad.co/283644-krov-i-neft-6-sezon-2015.html	7	2015	США	драма	Джонас Пейт, Микаэл Саломон	42
3769	Человек в высоком замке (1 сезон)	https://kinokrad.co/281088-chelovek-v-vysokom-zamke-1-seriya.html	8	2015	США	фантастика, триллер, драма	Дэвид Семел	60
3770	База Куантико (1 сезон)	https://kinokrad.co/283807-baza-kuantiko-1-sezon-2015.html	9	2015	США	драма	Марк Манден	43
3771	Джессика Джонс (1 сезон)	https://kinokrad.co/284599-dzhessika-dzhons-1-sezon-2015.html	8	2015	США	фантастика, боевик, драма, криминал	С.Дж. Кларксон, Дэвид Петрарка, Стивен Серджик	60
3772	Однажды в сказке (5 сезон)	https://kinokrad.co/283643-odnazhdy-v-skazke-5-sezon-2015.html	9	2015	США	фэнтези, мелодрама, приключения	Ральф Хемекер, Дин Уайт, Рон Андервуд	43
3773	Мыслить как преступник (11 сезон)	https://kinokrad.co/283989-myslit-kak-prestupnik-11-sezon-2015.html	8	2015	США, Канада	триллер, драма, криминал, детектив	Гленн Кершоу, Феликс Энрикез Алькала, Эдвард Аллен Бернеро	43
3774	Трансформеры: Скрытые роботы / Трансформеры: Роботы под прикрытием (1 сезон)	https://kinokrad.co/281253-transformery-skrytye-roboty-1-seriya.html	8	2015	США	мультфильм, боевик, комедия, приключения	Дэвид Хартман, Скутер Тидвелл	23
3775	Наруто: Ураганные хроники (19 сезон)	https://kinokrad.co/283178-naruto-uragannye-hroniki-19-sezon-2015.html	8	2015	Япония	аниме, мультфильм, фантастика, боевик, триллер, приключения	Хаято Датэ, Юки Эри	24
3776	Непригодные для свиданий (3 сезон)	https://kinokrad.co/285023-neprigodnye-dlya-svidaniy-3-sezon-2015.html	7	2015	США	комедия	Фил Льюис, Эрик Дин Ситон, Скотт Эллис	22
3777	Курт Сеит и Александра (2 сезон)	https://kinokrad.co/291691-kurt-seit-i-aleksandra-2-sezon-2015.html	8	2015	Турция	драма, мелодрама, военный, история	Хилаль Сарал	
3778	Демоны Да Винчи (3 сезон)	https://kinokrad.co/282028-demony-da-vinchi-3-sezon-2015.html	9	2015	США	фэнтези, драма, детектив, приключения, история	Питер Хор, Майкл Дж. Бассетт, Дэвид С. Гойер	59
3779	Речные монстры (7 сезон)	https://kinokrad.co/283625-rechnye-monstry-7-sezon-2015.html	8	2015	США	документальный	Барни Ревилл, Доминик Уэстон, Charlie Bingham	45
3780	Блант говорит (1 сезон)	https://kinokrad.co/283252-blant-govorit-1-sezon-2015.html	6	2015	США	комедия	Тристрам Шапиро, Билл Д’Элиа	30
3781	Сшиватели (1 сезон)	https://kinokrad.co/282353-sshivateli-1-sezon-2015.html	7	2015		фантастика	Дженис Кук-Леонард, Роб Гринли, Тодд Холлэнд	60
3782	Билли и Билли (1 сезон)	https://kinokrad.co/283614-billi-i-billi-1-sezon-2015.html	8	2015	США	драма, мелодрама, комедия	Нил ЛаБут	30
3783	Общественная мораль (1 сезон)	https://kinokrad.co/283352-obschestvennaya-moral-1-sezon-2015.html	9	2015	США	драма, криминал	Эдвард Бёрнс	60
3784	Жаркое американское лето: Первый день лагеря (1 сезон)	https://kinokrad.co/282952-zharkoe-amerikanskoe-leto-pervyy-den-lagerya-1-sezon-2015.html	5	2015	США	комедия	Дэвид Уэйн	30
3785	Рэй Донован (3 сезон)	https://kinokrad.co/282839-rjey-donovan-3-sezon-2015.html	9	2015	США	драма, криминал	Майкл Аппендаль, Дэниэл Эттиэс, Джон Дал	43
3786	Шеф 3 (3 сезон)	https://kinokrad.co/283486-shef-3-sezon.html	8	2015	Россия	драма, криминал	Олег Ларин	45
3787	Люцифер (1 сезон)	https://kinokrad.co/283115-lyucifer-1-sezon-2015.html	9	2015	США	фэнтези, мистика	Лен Уайзман	42
3788	Бездельник (2 сезон)	https://kinokrad.co/287047-bezdelnik-2-sezon-2015.html	7	2015	США	комедия, фэнтези, мистика	Трой Миллер, Тодд Бирман, Хит Калленс	22
3789	Человек без прошлого (1 сезон)	https://kinokrad.co/288952-chelovek-bez-proshlogo-1-sezon-2015.html	5	2015	Россия	детектив	Эмилис Веливис	44
3790	Тайны Лауры (2 сезон)	https://kinokrad.co/283580-tayny-laury-2-sezon-2015.html	8	2015	США	комедия, криминал, детектив	Винс Мисиано, Майкл Шульц, Бетани Руни	42
3791	Красавица и чудовище (3 сезон)	https://kinokrad.co/282360-krasavica-i-chudovische-3-sezon-2015.html	8	2015	Канада	триллер, драма, детектив, фантастика	Рик Бота, Стюарт Гиллард, Майрзи Алмас	43
3792	Крик (1 сезон)	https://kinokrad.co/282630-krik-1-sezon-2015.html	8	2015	США	ужасы, криминал, детектив	Ли Джаньяк, Джулиус Рамсей, Джеми Трэвис	45
3793	Шёпот (1 сезон)	https://kinokrad.co/273037-shepot-1-sezon-2015.html	8	2015	США	фантастика, драма	Марк Романек	60
3794	Ответный удар (5 сезон)	https://kinokrad.co/282363-otvetnyy-udar-5-sezon-2015.html	8	2015	Великобритания	боевик, триллер, драма	Дэниэл Персивал, Пол Вильшурст, Билл Иглз	46
3795	Рухнувшие небеса (5 сезон)	https://kinokrad.co/282458-ruhnuvshie-nebesa-5-sezon-2015.html	8	2015	США, Канада	фантастика, боевик, триллер	Грег Биман, Серджо Мимика-Геззан, Адам Кэйн	43
3796	Тёмные дела / Тёмная материя (1 сезон)	https://kinokrad.co/282350-tjomnaya-materiya-1-sezon-2015.html	8	2015	Канада	фантастика, триллер, драма	Рон Мерфи, Т.Дж. Скотт, Паоло Барзмен	42
3797	Салем (2 сезон)	https://kinokrad.co/281440-salem-2-sezon-2015.html	9	2015	США	фэнтези, триллер, драма	Дэвид Фон Энкен, Алекс Закржевский, Ник Копус	60
3798	Джонатан Стрендж и мистер Норрелл (1 сезон)	https://kinokrad.co/282209-dzhonatan-strendzh-i-mister-norrell-1-sezon-2015.html	8	2015	Великобритания	фэнтези, история	Тоби Хэйнс	60
3799	Улица потрошителя (3 сезон)	https://kinokrad.co/280790-ulica-potroshitelya-3-sezon-3-seriya.html	9	2015	Великобритания, Ирландия	криминал, детектив	Энди Уилсон, Том Шенклэнд, Энтони Бирн	55
3800	Чистота (1 сезон)	https://kinokrad.co/281777-chistota-1-sezon-2015.html	8	2015	Франция	криминал	Паскаль Шомель, Фил Джон, Чина Му-Ен	55
3801	Нэшвилл (4 сезон)	https://kinokrad.co/284819-njeshvill-4-sezon-2015.html	6	2015	США	драма, музыка	Кэлли Кхури, Стивен Крегг, Пол МакКрейн	43
3802	Раскаяния выжившего (3 сезон)	https://kinokrad.co/320346-raskayaniya-vyzhivshego-3-sezon-2015.html	5	2015	США	драма	Виктор Левин, Питер Сигал, Кен Уиттингэм	30
3803	Хандерби (2 сезон)	https://kinokrad.co/319718-handerbi-2-sezon-2015.html	7	2015	Великобритания	комедия	Тони Дау	30
3804	Расследования Мердока (9 сезон)	https://kinokrad.co/293089-rassledovaniya-merdoka-9-sezon-2015.html	9	2015	Канада, Великобритания	драма, криминал, детектив	Лори Линд, Кэл Кунс, Харви Кросслэнд	43
3805	Вайнберг (1 сезон)	https://kinokrad.co/294667-vaynberg-1-sezon-2015.html	7	2015	Германия	триллер, драма, детектив	Тилль Францен, Жан Мартин Шарф	53
3806	Полиция Чикаго (3 сезон)	https://kinokrad.co/283686-policiya-chikago-3-sezon-2015.html	7	2015	США	боевик, драма	Марк Тинкер, Ник Гомез, Сэнфорд Букставер	60
3807	Миссис Коп / Госпожа полицейский (1 сезон)	https://kinokrad.co/311186-missis-kop-gospozha-policeyskiy-1-sezon-2016.html	8	2015	Корея Южная	криминал	Ю Ин-щик, Ан Гиль-хо	
3808	Бюро легенд (1 сезон)	https://kinokrad.co/318174-byuro-legend-1-sezon-2015.html	8	2015	Франция	драма	Элье Систерн, Матье Деми, Эрик Рошан	52
3809	Царство (3 сезон)	https://kinokrad.co/283899-carstvo-3-sezon-2015.html	9	2015	США	фэнтези, драма	Фред Гербер, Холли Дэйл, Норма Бэйли	43
3810	Медики Чикаго (1 сезон)	https://kinokrad.co/306617-mediki-chikago-1-sezon.html	8	2015	США	драма	Майкл Ваксман, Фред Бернер, Дональд Питри	43
3811	На дальней заставе (1 сезон)	https://kinokrad.co/296101-na-dalney-zastave-1-sezon-2015.html	7	2015	Россия	драма, военный	Андрей Хрулев	45
3812	Супермаркет (1 сезон)	https://kinokrad.co/305726-supermarket.html	6	2015	США	комедия	Рубен Флейшер, Виктор Нелли мл., Майкл Патрик Джэнн	30
3813	Анатомия страсти (12 сезон)	https://kinokrad.co/283593-anatomiya-strasti-12-sezon-2015.html	9	2015	США	драма, мелодрама	Роб Корн, Шандра Уилсон, Тони Фелан	43
3814	Касл (8 сезон)	https://kinokrad.co/283626-kasl-8-sezon-2015.html	8	2015	США	драма, комедия, криминал, детектив	Роб Боумен, Джон Терлески, Билл Роу	43
3815	Виолетта (3 сезон)	https://kinokrad.co/280386-violetta-3-sezon-2015.html	9	2015	Аргентина	мелодрама, комедия, семейный	Хорхе Ниско, Мартин Саббан, Матиас Риси	43
3816	Пожарные Чикаго / Чикаго в огне (4 сезон)	https://kinokrad.co/273058-chikago-v-ogne-4-sezon-2015.html	8	2015	США	боевик, драма	Джо Чаппелль, Жан Де Сегонзак, Майкл Словис	43
3817	Осколки счастья (1 сезон)	https://kinokrad.co/309494-oskolki-schastya-1-sezon-2015.html	6	2015	Россия	драма, мелодрама	Алексей Праздников	44
3818	Стражи Галактики (1 сезон)	https://kinokrad.co/283437-strazhi-galaktiki-1-sezon-2015.html	7	2015	США	мультфильм, фантастика, боевик, приключения	Лео Райли	22
3819	Дневники вампира (7 сезон)	https://kinokrad.co/283827-dnevniki-vampira-7-sezon-2015.html	8	2015	США	ужасы, фэнтези, триллер, драма, мелодрама, детектив	Крис Грисмер, Джошуа Батлер, Маркос Сига	43
3820	Стыд (1 сезон)	https://kinokrad.co/309347-styd-1-sezon-2015.html	8	2015	Норвегия	драма	Julie Andem	30
3821	Бестия (3 сезон)	https://kinokrad.co/282457-bestiya-3-sezon-2015.html	4	2015	США, Канада	боевик, триллер, драма, криминал	Лариса Кондрацки, Ник Хэмм, Пол А. Кауфман	50
3822	Черепашки-ниндзя (4 сезон)	https://kinokrad.co/291634-cherepashki-nindzya-4-sezon-2015.html	8	2015	США	мультфильм, фантастика, боевик, драма, комедия, приключения, семейный	Сиро Ниели, Майкл Чанг, Алан Ван	22
3823	На перекрёстке радости и горя (1 сезон)	https://kinokrad.co/298276-na-perekrjostke-radosti-i-gorya-1-sezon-2016.html	6	2015	Россия	мелодрама	Владислав Николаев	96
3824	Проект Минди (4 сезон)	https://kinokrad.co/288271-proekt-mindi-4-sezon-2015.html	6	2015	США	комедия	Майкл Алан Спиллер, Майкл Уивер, Дэвид Роджерс	22
3825	Тайны острова Мако (3 сезон)	https://kinokrad.co/299748-tayny-ostrova-mako-3-sezon-2015.html	8	2015	Австралия	фэнтези, драма, мелодрама, комедия, приключения, семейный	Грант Браун, Ивэн Кларри, Tom Hooper	22
3826	Черноватый (2 сезон)	https://kinokrad.co/295840-chernovatyy-2-sezon-2016.html	6	2015	США	комедия	Виктор Нелли мл., Кен Уиттингэм, Мэттью Сон	22
3827	Области тьмы (1 сезон)	https://kinokrad.co/283512-oblasti-tmy-1-sezon-2015.html	9	2015	США	фантастика, триллер, драма	Марк Уэбб, Дуглас Арниокоски, Гильермо Наварро	42
3828	Скорпион (2 сезон)	https://kinokrad.co/283559-skorpion-2-sezon-2015.html	8	2015	США	боевик, драма	Сэм Хилл, Мэл Дэмски, Милан Чейлов	43
3829	Вайс (3 сезон)	https://kinokrad.co/287974-vays-3-sezon-2015.html	7	2015	США	документальный, новости		30
3830	Вверх ногами, или Где-то в том лесу (1 сезон)	https://kinokrad.co/283714-vverh-nogami-ili-gde-to-v-tom-lesu.html	5	2015	Россия	мультфильм, детский	Андрей Соколов, Дмитрий Резчиков, Юлия Дащинская	58
3831	Время приключений (7 сезон)	https://kinokrad.co/292690-vremya-priklyucheniy-7-sezon-2015.html	8	2015	США	мультфильм, фэнтези, комедия, приключения, семейный	Ларри Лэйчлитер, Элизабет Ито, Андрес Салафф	22
3832	Мажор (2 сезон)	https://kinokrad.co/283759-mazhor-2-sezon-2015.html	8	2015	Россия	драма, криминал	Константин Статский	52
3833	Хроники Франкенштейна (1 сезон)	https://kinokrad.co/301331-hroniki-frankenshteyna-1-sezon-2015.html	8	2015	Великобритания	драма, криминал	Бенжамин Росс	48
3834	Огурец (1 сезон)	https://kinokrad.co/289561-ogurec-1-sezon-2015.html	7	2015	Великобритания	драма	Дэвид Эванс, Элис Тротон, Эрос Лин	50
3835	Я – зомби (2 сезон)	https://kinokrad.co/271652-ya-zombi-2-sezon-2015.html	8	2015	США	ужасы, фантастика, драма, криминал	Роб Томас	43
3836	Хофф в записи (1 сезон)	https://kinokrad.co/294247-hoff-v-zapisi-1-sezon-2015.html	8	2015	Великобритания	комедия	Натали Бэйли	30
3837	Фостеры (3 сезон)	https://kinokrad.co/285027-fostery-3-sezon-2015.html	7	2015	США	драма	Норман Бакли, Элоди Кин, Марта Митчелл	45
3838	Модус (1 сезон)	https://kinokrad.co/287261-modus-1-sezon-2015.html	7	2015	Швеция, Германия, Норвегия, Дания, Исландия, Франция, Великобритания	триллер	Мани Масеррат Агах, Лиза Сиве	45
3839	Супружеский долг (2 сезон)	https://kinokrad.co/286039-supruzheskiy-dolg-2-sezon-2015.html	6	2015	США	драма	Майк Листо, Стивен Джилленхол, Кевин Брэй	44
3840	Стрела (4 сезон)	https://kinokrad.co/283896-strela-4-sezon-2015.html	7	2015	США	фантастика, боевик, драма, криминал, детектив, приключения	Джон Беринг, Майкл Шульц, Гай Норман Би	43
3841	Роузвуд (1 сезон)	https://kinokrad.co/284653-rouzvud-1-sezon-2015.html	8	2015	США	драма, криминал, детектив	Сара Пиа Андерсон, Тимоти Басфилд, Милан Чейлов	42
3842	Волшебники (1 сезон)	https://kinokrad.co/285607-volshebniki-1-sezon-2015.html	8	2015	США	ужасы, фэнтези, драма, детектив	Джеймс Л. Конуэй, Скотт Смит, Майк Кэхилл	60
3843	Винтер (1 сезон)	https://kinokrad.co/294331-vinter-1-sezon-2015.html	6	2015	Австралия	криминал	Ширли Баррет, Линн Хегарти, Йен Уотсон	42
3844	Беглецы (1 сезон)	https://kinokrad.co/294316-beglecy-1-sezon-2015.html	6	2015	Россия	детектив, криминал	Андрей Щербинин	43
3845	Флэш (2 сезон)	https://kinokrad.co/283752-fljesh-2-sezon-2015.html	9	2015	США	фантастика, фэнтези, боевик, драма, приключения	Дермотт Даунс, Ральф Хемекер, Глен Винтер	43
3846	Гримм (5 сезон)	https://kinokrad.co/284223-grimm-5-sezon-2015.html	9	2015	США	ужасы, фэнтези, драма, детектив	Норберто Барба, Терренс О’Хара, Эрик Ланёвилль	43
3847	Быть Мэри Джейн (2 сезон)	https://kinokrad.co/286795-byt-mjeri-dzheyn-2-sezon-2015.html	8	2015	США	драма, мелодрама	Салим Акил, Реджина Кинг, Нима Барнетт	60
3848	Вера (5 сезон)	https://kinokrad.co/287359-vera-5-sezon-2015.html	9	2015	Великобритания	драма, криминал, детектив	Уильям Синклер, Питер Хор, Пол Уиттингтон	95
3849	Грешники / Порочные (2 сезон)	https://kinokrad.co/272934-greshniki-porochnye-2-sezon-2015.html	8	2015	Великобритания	комедия	Эд Бай	23
3850	Сложные люди (1 сезон)	https://kinokrad.co/303677-slozhnye-lyudi-1-sezon-2016.html	6	2015	США	комедия	Джеффри Уокер, Эндрю Флеминг, Нил Дэйли	30
3851	Девственница Джейн (2 сезон)	https://kinokrad.co/284813-devstvennica-dzheyn-2-sezon-2015.html	6	2015	США	комедия	Эдвард Орнелас, Брэд Силберлинг, Зетна Фуэнтес	60
3852	Их перепутали в роддоме (4 сезон)	https://kinokrad.co/303167-ih-pereputali-v-roddome-4-sezon-2015.html	7	2015	США	драма, мелодрама, семейный	Стив Майнер, Рон Лагомарсино, Мелани Мейрон	43
3853	Лига (7 сезон)	https://kinokrad.co/304301-liga-7-sezon-2015.html	6	2015	США	комедия, спорт	Джефф Шеффер, Джеки Маркус	22
3854	Скандал (5 сезон)	https://kinokrad.co/284815-skandal-5-sezon-2015.html	7	2015	США	триллер, драма	Том Верика, Оливер Бокельберг, Рэндолл Зиск	43
3855	Быть Мэри Джейн (3 сезон)	https://kinokrad.co/291361-byt-mjeri-dzheyn-3-sezon-2015.html	7	2015	США	драма, мелодрама	Салим Акил, Реджина Кинг, Нима Барнетт	60
3856	Элементарно (4 сезон)	https://kinokrad.co/272290-jelementarno-4-sezon-2015.html	9	2015	США	драма, криминал, детектив	Джон Полсон, Сет Манн, Эндрю Бернштейн	43
3857	Расследования Мердока (8 сезон)	https://kinokrad.co/272742-rassledovaniya-merdoka-8-sezon-4-seriya.html	8	2015	Канада, Великобритания	драма, криминал, детектив	Харви Кросслэнд, Лори Линд, Дон МакКатчен	43
3858	Любовницы (3 сезон)	https://kinokrad.co/295909-lyubovnicy-3-sezon-2015.html	8	2015	США, Великобритания	триллер, драма	Джон Скотт, Константин Макрис, Крис Мисиано	43
3859	К югу от ада (1 сезон)	https://kinokrad.co/285781-k-yugu-ot-ada-1-sezon-2015.html	7	2015	США	ужасы, фэнтези, триллер, драма, мистика	Дженнифер Чэмберс Линч, Рейчел Тэлалей, Джеримайя С. Чечик	60
3860	Семейка Крудс. Начало (1 сезон)	https://kinokrad.co/285625-semeyka-kruds-nachalo-1-sezon-2015.html	8	2015	США	мультфильм, семейный	Алекс Альмагер, Кристал Чесни, Брайан Хэтфилд	23
3861	Конец детства (1 сезон)	https://kinokrad.co/285569-konec-detstva-1-sezon-2015.html	9	2015	США	фантастика, триллер, драма	Ник Харран	60
3862	Мамочки (1 сезон)	https://kinokrad.co/285601-mamochki-1-sezon-2015.html	9	2015	Россия	комедия	Александр Богданенко, Валерия Ивановская	24
3863	Город лунного луча (1 сезон)	https://kinokrad.co/284285-gorod-lunnogo-lucha-1-sezon-2015.html	6	2015	США	мультфильм, боевик, комедия	Марк Брукс, Джуно Джон Ли	22
3864	Герои: Возрождение (1 сезон)	https://kinokrad.co/283140-geroi-vozrozhdenie-1-sezon-2015.html	7	2015	США	фэнтези	Лариса Кондрацки, Грег Биман, Мэтт Шекман	41
3865	Банан	https://kinokrad.co/280499-banan-3-seriya.html	7	2015	Великобритания	драма	Льюис Арнольд, Аластер Маккэй, Люк Снеллин	25
3866	Конь БоДжек (2 сезон)	https://kinokrad.co/285139-kon-bodzhek-2-sezon-2015.html	6	2015	США	мультфильм, драма, комедия	JC Gonzalez, Amy Winfrey, Джоэль Мосер	25
3867	Гавайи 5.0 (6 сезон)	https://kinokrad.co/283642-gavayi-5-0-6-sezon-2015.html	7	2015	США	боевик, драма, криминал	Брайан Спайсер, Ларри Тенг, Стив Бойум	43
3868	Кровь и нефть (1 сезон)	https://kinokrad.co/283644-krov-i-neft-6-sezon-2015.html	7	2015	США	драма	Джонас Пейт, Микаэл Саломон	42
3869	Человек в высоком замке (1 сезон)	https://kinokrad.co/281088-chelovek-v-vysokom-zamke-1-seriya.html	8	2015	США	фантастика, триллер, драма	Дэвид Семел	60
3870	База Куантико (1 сезон)	https://kinokrad.co/283807-baza-kuantiko-1-sezon-2015.html	9	2015	США	драма	Марк Манден	43
3871	Джессика Джонс (1 сезон)	https://kinokrad.co/284599-dzhessika-dzhons-1-sezon-2015.html	8	2015	США	фантастика, боевик, драма, криминал	С.Дж. Кларксон, Дэвид Петрарка, Стивен Серджик	60
3872	Однажды в сказке (5 сезон)	https://kinokrad.co/283643-odnazhdy-v-skazke-5-sezon-2015.html	9	2015	США	фэнтези, мелодрама, приключения	Ральф Хемекер, Дин Уайт, Рон Андервуд	43
3873	Мыслить как преступник (11 сезон)	https://kinokrad.co/283989-myslit-kak-prestupnik-11-sezon-2015.html	8	2015	США, Канада	триллер, драма, криминал, детектив	Гленн Кершоу, Феликс Энрикез Алькала, Эдвард Аллен Бернеро	43
3874	Трансформеры: Скрытые роботы / Трансформеры: Роботы под прикрытием (1 сезон)	https://kinokrad.co/281253-transformery-skrytye-roboty-1-seriya.html	8	2015	США	мультфильм, боевик, комедия, приключения	Дэвид Хартман, Скутер Тидвелл	23
3875	Наруто: Ураганные хроники (19 сезон)	https://kinokrad.co/283178-naruto-uragannye-hroniki-19-sezon-2015.html	8	2015	Япония	аниме, мультфильм, фантастика, боевик, триллер, приключения	Хаято Датэ, Юки Эри	24
3876	Непригодные для свиданий (3 сезон)	https://kinokrad.co/285023-neprigodnye-dlya-svidaniy-3-sezon-2015.html	7	2015	США	комедия	Фил Льюис, Эрик Дин Ситон, Скотт Эллис	22
3877	Курт Сеит и Александра (2 сезон)	https://kinokrad.co/291691-kurt-seit-i-aleksandra-2-sezon-2015.html	8	2015	Турция	драма, мелодрама, военный, история	Хилаль Сарал	
3878	Демоны Да Винчи (3 сезон)	https://kinokrad.co/282028-demony-da-vinchi-3-sezon-2015.html	9	2015	США	фэнтези, драма, детектив, приключения, история	Питер Хор, Майкл Дж. Бассетт, Дэвид С. Гойер	59
3879	Речные монстры (7 сезон)	https://kinokrad.co/283625-rechnye-monstry-7-sezon-2015.html	8	2015	США	документальный	Барни Ревилл, Доминик Уэстон, Charlie Bingham	45
3880	Блант говорит (1 сезон)	https://kinokrad.co/283252-blant-govorit-1-sezon-2015.html	6	2015	США	комедия	Тристрам Шапиро, Билл Д’Элиа	30
3881	Сшиватели (1 сезон)	https://kinokrad.co/282353-sshivateli-1-sezon-2015.html	7	2015		фантастика	Дженис Кук-Леонард, Роб Гринли, Тодд Холлэнд	60
3882	Билли и Билли (1 сезон)	https://kinokrad.co/283614-billi-i-billi-1-sezon-2015.html	8	2015	США	драма, мелодрама, комедия	Нил ЛаБут	30
3883	Общественная мораль (1 сезон)	https://kinokrad.co/283352-obschestvennaya-moral-1-sezon-2015.html	9	2015	США	драма, криминал	Эдвард Бёрнс	60
3884	Жаркое американское лето: Первый день лагеря (1 сезон)	https://kinokrad.co/282952-zharkoe-amerikanskoe-leto-pervyy-den-lagerya-1-sezon-2015.html	5	2015	США	комедия	Дэвид Уэйн	30
3885	Рэй Донован (3 сезон)	https://kinokrad.co/282839-rjey-donovan-3-sezon-2015.html	9	2015	США	драма, криминал	Майкл Аппендаль, Дэниэл Эттиэс, Джон Дал	43
3886	Шеф 3 (3 сезон)	https://kinokrad.co/283486-shef-3-sezon.html	8	2015	Россия	драма, криминал	Олег Ларин	45
3887	Люцифер (1 сезон)	https://kinokrad.co/283115-lyucifer-1-sezon-2015.html	9	2015	США	фэнтези, мистика	Лен Уайзман	42
3888	Бездельник (2 сезон)	https://kinokrad.co/287047-bezdelnik-2-sezon-2015.html	7	2015	США	комедия, фэнтези, мистика	Трой Миллер, Тодд Бирман, Хит Калленс	22
3889	Человек без прошлого (1 сезон)	https://kinokrad.co/288952-chelovek-bez-proshlogo-1-sezon-2015.html	5	2015	Россия	детектив	Эмилис Веливис	44
3890	Тайны Лауры (2 сезон)	https://kinokrad.co/283580-tayny-laury-2-sezon-2015.html	8	2015	США	комедия, криминал, детектив	Винс Мисиано, Майкл Шульц, Бетани Руни	42
3891	Красавица и чудовище (3 сезон)	https://kinokrad.co/282360-krasavica-i-chudovische-3-sezon-2015.html	8	2015	Канада	триллер, драма, детектив, фантастика	Рик Бота, Стюарт Гиллард, Майрзи Алмас	43
3892	Крик (1 сезон)	https://kinokrad.co/282630-krik-1-sezon-2015.html	8	2015	США	ужасы, криминал, детектив	Ли Джаньяк, Джулиус Рамсей, Джеми Трэвис	45
3893	Шёпот (1 сезон)	https://kinokrad.co/273037-shepot-1-sezon-2015.html	8	2015	США	фантастика, драма	Марк Романек	60
3894	Ответный удар (5 сезон)	https://kinokrad.co/282363-otvetnyy-udar-5-sezon-2015.html	8	2015	Великобритания	боевик, триллер, драма	Дэниэл Персивал, Пол Вильшурст, Билл Иглз	46
3895	Рухнувшие небеса (5 сезон)	https://kinokrad.co/282458-ruhnuvshie-nebesa-5-sezon-2015.html	8	2015	США, Канада	фантастика, боевик, триллер	Грег Биман, Серджо Мимика-Геззан, Адам Кэйн	43
3896	Тёмные дела / Тёмная материя (1 сезон)	https://kinokrad.co/282350-tjomnaya-materiya-1-sezon-2015.html	8	2015	Канада	фантастика, триллер, драма	Рон Мерфи, Т.Дж. Скотт, Паоло Барзмен	42
3897	Салем (2 сезон)	https://kinokrad.co/281440-salem-2-sezon-2015.html	9	2015	США	фэнтези, триллер, драма	Дэвид Фон Энкен, Алекс Закржевский, Ник Копус	60
3898	Джонатан Стрендж и мистер Норрелл (1 сезон)	https://kinokrad.co/282209-dzhonatan-strendzh-i-mister-norrell-1-sezon-2015.html	8	2015	Великобритания	фэнтези, история	Тоби Хэйнс	60
3899	Улица потрошителя (3 сезон)	https://kinokrad.co/280790-ulica-potroshitelya-3-sezon-3-seriya.html	9	2015	Великобритания, Ирландия	криминал, детектив	Энди Уилсон, Том Шенклэнд, Энтони Бирн	55
3900	Чистота (1 сезон)	https://kinokrad.co/281777-chistota-1-sezon-2015.html	8	2015	Франция	криминал	Паскаль Шомель, Фил Джон, Чина Му-Ен	55
3901	Между (1 сезон)	https://kinokrad.co/282211-mezhdu-1-sezon-2015.html	7	2015	Канада	драма	Джон Кассар, Майкл МакГоун	60
3902	Грейс и Фрэнки (1 сезон)	https://kinokrad.co/282017-greys-i-frjenki-1-sezon-2015.html	7	2015	США	комедия	Тим Киркби, Мигель Артета, Брайан Гордон	30
3903	Два с половиной человека (12 сезон)	https://kinokrad.co/272332-25-cheloveka-12-sezon-2015.html	8	2015	США	комедия	Джеймс Уиддоуз, Гари Хэлворсон, Памела Фрайман	22
3904	Олимп (1 сезон)	https://kinokrad.co/281465-olimp-1-sezon-2015.html	6	2015	Великобритания, Канада	фэнтези	Ник Уиллинг, Аманда Таппинг	45
3905	Последний янычар	https://kinokrad.co/280171-posledniy-yanychar-59-seriya.html	7	2015	Россия	криминал, драма	Александр Мохов, Антон Гойда	45
3906	Изгнанники (1 сезон)	https://kinokrad.co/282195-izgnanniki-1-sezon-2015.html	8	2015	Великобритания	драма, история	Джеффри Уокер, Дэниэл Персивал	60
3907	Злые птички (3 сезон)	https://kinokrad.co/283828-zlye-ptichki-3-sezon-2015.html	7	2015	Финляндия	мультфильм	Eric Guaglione, Ким Хельминен, Thomas Lepeska	3
3908	Оборотень / Волчонок (5 сезон)	https://kinokrad.co/282459-oboroten-5-sezon-2015.html	9	2015	США	ужасы, триллер, драма, мелодрама, комедия	Рассел Малкэй, Тим Эндрю, Тоби Уилкинс	43
3909	Прошлое умеет ждать (1 сезон)	https://kinokrad.co/286883-proshloe-umeet-zhdat-1-sezon-2015.html	6	2015	Россия	детектив, триллер	Игорь Нурисламов	42
3910	Клуб Винкс – Школа волшебниц (7 сезон)	https://kinokrad.co/283624-klub-vinks-shkola-volshebnic-7-sezon-2015.html	8	2015	Италия	мультфильм, приключения, семейный	Иджинио Страффи	22
3911	Батл Крик (1 сезон)	https://kinokrad.co/280887-batl-krik-1-sezon-5-seriya.html	8	2015	США	драма, криминал	Эндрю Бернштейн, Дэниэл Эттиэс, Колин Бакси	44
3912	19-2 / Девятнадцать Два (2 сезон)	https://kinokrad.co/280493-19-2-devyatnadcat-dva-2-sezon-5-seriya.html	9	2015	Канада	драма	Луи Шокетт, Эрик Кануэль, Дэниэл Гру	45
3913	Уроборос	https://kinokrad.co/281367-uroboros-1-seriya.html	8	2015	Япония	боевик	Исий Ясухару	54
3914	Снайпер: Последний выстрел (1 сезон)	https://kinokrad.co/282058-snayper-geroy-soprotivleniya-1-sezon-2015.html	7	2015	Россия	военный, драма, приключения	Арман Геворгян	40
3915	Копы-новобранцы (6 сезон)	https://kinokrad.co/284807-kopy-novobrancy-6-sezon-2015.html	8	2015	Канада	драма, криминал	Дэвид Уэллингтон, Т.У. Пикок, Джон Фоусет	43
3916	Приключения Кота в сапогах (1 сезон)	https://kinokrad.co/280271-priklyucheniya-kota-v-sapogah-5-seriya.html	8	2015	США	мультфильм, комедия, приключения, семейный	Лютер МакЛорин	22
3917	Легенды (2 сезон)	https://kinokrad.co/284553-legendy-2-sezon-2015.html	8	2015	США	боевик, триллер, драма, криминал	Брэд Тернер, Джэми Пэйн, Джефф Т. Томас	60
3918	Аббатство Даунтон (6 сезон)	https://kinokrad.co/283615-abbatstvo-daunton-6-sezon-2015.html	8	2015	Великобритания, США	драма, мелодрама	Брайан Персивал, Дэвид Эванс, Фил Джон	54
3919	Война Фойла (8 сезон)	https://kinokrad.co/284859-voyna-foyla-8-sezon-2015.html	7	2015	Великобритания	драма, криминал, детектив, военный	Джереми Силберстон, Стюарт Орм, Гэвин Миллар	90
3920	Сверхспособности / Силы	https://kinokrad.co/281023-sverhsposobnosti-sily-6-seriya.html	7	2015	США	фантастика, драма, криминал	Дэвид Петрарка, Микаэл Саломон, Дэвид Слэйд	60
3921	Возвращённые	https://kinokrad.co/281219-vozvraschjonnye-4-seriya.html	7	2015	США	ужасы, драма	Чарльз Мартин, Кит Гордон, Винченцо Натали	42
3922	Игрок (1 сезон)	https://kinokrad.co/283588-igrok-1-sezon-2015.html	8	2015	США	триллер, драма	Бхарат Наллури	60
3923	Палач (1 сезон)	https://kinokrad.co/283611-palach-1-sezon-2015.html	8	2015	США	драма	Пэрис Барклай, Билл Джирхарт, Кари Скогланд	42
3924	Сватьи (2 сезон)	https://kinokrad.co/281666-svati-2-sezon-2015.html	8	2015	Россия	комедия	Юрий Морозов	46
3925	Ты — воплощение порока (2 сезон)	https://kinokrad.co/283440-ty-voploschenie-poroka-2-sezon-2015.html	7	2015	США	комедия, мелодрама	Алекс Хардкасл, Джордан Вот-Робертс, Мэтт Шекман	24
3926	Письма на стекле. Судьба (2 сезон)	https://kinokrad.co/284403-pisma-na-stekle-sudba-2-sezon-2015.html	8	2015	Россия	мелодрама	Рената Грицкова	44
3927	Южный Парк (19 сезон)	https://kinokrad.co/283610-yuzhnyy-park-19-sezon-2015.html	8	2015	США	мультфильм, комедия	Трей Паркер, Эрик Сточ, Мэтт Стоун	22
3928	Последний человек на Земле (1 сезон)	https://kinokrad.co/280888-posledniy-chelovek-na-zemle-1-sezon-8-seriya.html	8	2015	США	фантастика, боевик, комедия	Фил Лорд, Кристофер Миллер, Питер Атенсио	30
3929	Битва за Севастополь	https://kinokrad.co/281799-bitva-za-sevastopol-2015.html	8	2015	Россия, Украина	военный, драма, мелодрама, боевик	Сергей Мокрицкий	48
3930	Скорострел (2 сезон)	https://kinokrad.co/280733-skorostrel-2-sezon-2015.html	7	2015	США	комедия, вестерн	Нэнси Хауэр	23
3931	Бэкстром (1 сезон)	https://kinokrad.co/280375-bjekstrom-8-seriya.html	7	2015	США	драма, криминал	Роб Харди, Марк Майлод, Майкл Оффер	45
3932	Код убийцы (1 сезон)	https://kinokrad.co/281774-kod-ubiycy-1-sezon-2015.html	8	2015	Великобритания	драма	Джеймс Стронг	60
3933	Одно большое счастье (1 сезон)	https://kinokrad.co/281232-odno-bolshoe-schaste-1-sezon-3-seriya.html	7	2015	США	комедия	Скотт Эллис, Кэти Гарретсон	30
3934	Все могут короли (1 сезон)	https://kinokrad.co/271975-vse-mogut-koroli-1-sezon.html	5	2015	Россия	комедия	Ольга Музалева	45
3935	CSI: Киберпространство (2 сезон)	https://kinokrad.co/284659-csi-kiberprostranstvo-2-sezon-2015.html	7	2015	США	триллер, драма, криминал, детектив	Эгил Эгилссон, Эрик Ла Салль, Алек Смайт	44
3936	Бруклин 9-9 (3 сезон)	https://kinokrad.co/283567-bruklin-9-9-3-sezon-2015.html	8	2015	США	комедия, криминал	Крейг Зиск, Дин Холлэнд, Виктор Нелли мл	23
3937	Синдикат (3 сезон)	https://kinokrad.co/282953-sindikat-3-sezon-2015.html	4	2015	Великобритания	драма	Кэй Меллор, Доминик Леклерк, Сидни Макартни	60
3938	Дорогой доктор / Пациент всегда прав (7 сезон)	https://kinokrad.co/283128-dorogoy-doktor-pacient-vsegda-prav-7-sezon-2015.html	6	2015	США	драма, комедия	Мэттью Пенн, Эмиль Левисетти, Майкл Ройч	43
3939	Ночная смена (2 сезон)	https://kinokrad.co/281993-nochnaya-smena-2-sezon-2015.html	7	2015	США	боевик, драма, комедия	Дэвид Бойд, Эрик Ла Салль, Тимоти Басфилд	60
3940	Рождение мафии: Нью-Йорк (1 сезон)	https://kinokrad.co/282719-rozhdenie-mafii-nyu-york-1-sezon-2015.html	9	2015	США	криминал, триллер	Джон Илер	45
3941	Германия 83 (1 сезон)	https://kinokrad.co/283544-germaniya-83-1-sezon-2015.html	7	2015	Германия	драма	Эдвард Бергер, Samira Radsi	46
3942	Мой безумный дневник (3 сезон)	https://kinokrad.co/283537-moy-bezumnyy-dnevnik-3-sezon-2015.html	8	2015	Великобритания	драма, мелодрама, комедия	Алекс Винклер, Бенжамин Карон, Тим Киркби	47
3943	Комедианты (1 сезон)	https://kinokrad.co/281669-komedianty-1-sezon-2015.html	5	2015	США	комедия	Ларри Чарльз, Ричи Кин	25
3944	Самозванец (1 сезон)	https://kinokrad.co/282954-samozvanec-1-sezon-2015.html	9	2015	США	комедия	Дж. Кларк Мэтис, Роб Гринберг, Джей Карас	30
3945	Секс, наркотики и рок-н-ролл (1 сезон)	https://kinokrad.co/282762-seks-narkotiki-i-rok-n-roll-1-sezon-2015.html	8	2015	США	комедия	Майкл Блиден, Дэнис Лири	21
3946	Трудности ассимиляции	https://kinokrad.co/280742-trudnosti-assimilyacii-3-seriya.html	8	2015	США	комедия	Линн Шелтон, Роберт Коэн, Джейк Кэздан	22
3947	CSI: Киберпространство (1 сезон)	https://kinokrad.co/281024-csi-kiberprostranstvo-1-sezon-2-seriya.html	8	2015	США	драма, криминал	Дермотт Даунс, Эрик Ла Салль, Джефф Т. Томас	44
3948	Добрая ведьма (1 сезон)	https://kinokrad.co/282722-dobraya-vedma-1-sezon-2015.html	8	2015	США	фэнтези, драма, комедия	Крэйг Прайс, Лори Линд, Дон МакБрити	48
3949	Сестра Джеки (7 сезон)	https://kinokrad.co/281571-sestra-dzheki-7-sezon-2015.html	7	2015	США	драма, комедия	Пол Фиг, Джесси Перец, Брендан Уолш	22
3950	Живу с моделями (1 сезон)	https://kinokrad.co/282387-zhivu-s-modelyami-1-sezon-2015.html	6	2015	США	комедия	Бен Келлетт	21
3951	Типа счастье (1 сезон)	https://kinokrad.co/281927-tipa-schaste-1-sezon-2015.html	7	2015	США	драма, комедия	Кен Куопис, Гейл Манкусо, Кен Уиттингэм	30
3952	Война Фойла (9 сезон)	https://kinokrad.co/282729-voyna-foyla-9-sezon-2015.html	7	2015	Великобритания	драма, криминал, детектив, военный	Джереми Силберстон, Стюарт Орм, Гэвин Миллар	90
3953	Сонная Лощина (3 сезон)	https://kinokrad.co/283749-sonnaya-loschina-3-sezon-2015.html	8	2015	США	фэнтези, триллер, драма, детектив, приключения, мистика	Дуглас Арниокоски, Пол А. Эдвардс, Кен Олин	43
3954	Жизнь в деталях (1 сезон)	https://kinokrad.co/283557-zhizn-v-detalyah-1-sezon-2015.html	6	2015	США	комедия	Джейсон Уайнер	21
3955	Морские дьяволы. Смерч 3 (3 сезон)	https://kinokrad.co/289963-morskie-dyavoly-smerch-3-sezon-2015.html	8	2015	Россия	боевик, приключения	Александр Картохин, Максим Демченко, Владимир Койфман	
3956	Капкан / Ловушка (1 сезон)	https://kinokrad.co/287389-kapkan-lovushka-1-sezon-2015.html	7	2015	Исландия	триллер, драма, криминал	Оскар Тор Аксельссон, Baldvin Zophoníasson, Бальтасар Кормакур	60
3957	Особо тяжкие преступления (4 сезон)	https://kinokrad.co/282362-osobo-tyazhkie-prestupleniya-4-sezon-2015.html	7	2015	США	драма, криминал, детектив	Стив Робин, Дэвид МакУиртер, Майкл М. Робин	43
3958	Риццоли и Айлс (6 сезон)	https://kinokrad.co/280110-riccoli-i-ayls-6-sezon-2015.html	8	2015	США	драма, криминал, детектив	Марк Абер, Майкл Кэтлман, Стив Робин	43
3959	Библиотекари (2 сезон)	https://kinokrad.co/287087-bibliotekari-2-sezon-2015.html	8	2015	США	фантастика, приключения	Марк Роскин, Джонатан Фрейкс, Дин Девлин	42
3960	Форс-мажоры (5 сезон)	https://kinokrad.co/281731-fors-mazhory-5-sezon-2015.html	9	2015	США	драма, комедия	Кевин Брэй, Антон Кроппер, Майкл Смит	43
3961	Меч. Сезон второй (2 сезон)	https://kinokrad.co/282183-mech-sezon-vtoroy-2-sezon-2015.html	8	2015	Россия	детектив, криминал	Алексей Луканев	45
3962	Темное дитя (3 сезон)	https://kinokrad.co/281617-temnoe-ditya-3-sezon-2015.html	8	2015	Канада, США	фантастика, боевик, драма	Джон Фоусет, Т.Дж. Скотт, Дэвид Фрэйзи	43
3963	Убийство на пляже / Бродчерч (2 сезон)	https://kinokrad.co/280277-ubiystvo-na-plyazhe-brodcherch-2-sezon-4-seriya.html	8	2015	Великобритания	драма, криминал, детектив	Джеймс Стронг, Эрос Лин, Майк Баркер	46
3964	Преступление по-американски	https://kinokrad.co/281296-amerikanskoe-prestuplenie-4-seriya.html	7	2015	США	драма		45
3965	Оранжевый — хит сезона (3 сезон)	https://kinokrad.co/282349-oranzhevyy-hit-sezona-3-sezon-2015.html	8	2015	США	драма, комедия, криминал	Майкл Трим, Эндрю МакКарти, Фил Абрахам	51
3966	Бессердечные (1 сезон)	https://kinokrad.co/282411-besserdechnye-1-sezon-2015.html	8	2015	Дания	драма, детектив	Наташа Артю, Каспар Мунк	42
3967	СашаТаня (3 сезон)	https://kinokrad.co/282013-sashatanya-3-sezon-2015.html	8	2015	Россия	комедия	Сергей Казачанский, Михаил Старчак	24
3968	Восьмое чувство (1 сезон)	https://kinokrad.co/271972-vosmoe-chuvstvo-1-sezon-2015.html	7	2015	США	фантастика, драма	Энди Вачовски, Лана Вачовски, Джеймс МакТиг	55
3969	Дядя (2 сезон)	https://kinokrad.co/280531-dyadya-2-sezon-3-seriya.html	6	2015	Великобритания	комедия	Oliver Refson	30
3970	Чисто английские убийства (17 сезон)	https://kinokrad.co/281665-chisto-angliyskie-ubiystva-17-sezon-2015.html	8	2015	Великобритания	драма, криминал, детектив	Питер Смит, Ренни Рай, Ричард Холтхоуз	91
3971	Вызов (3 сезон)	https://kinokrad.co/282348-vyzov-3-sezon-2015.html	8	2015	США	фантастика, боевик, драма	Майкл Нанкин, Аллен Крокер, Энди Волк	43
3972	Взрослые дочери (1 сезон)	https://kinokrad.co/282254-vzroslye-docheri-1-sezon-2015.html	8	2015	Россия	мелодрама	Андрей Эшпай	47
3973	Ганнибал (3 сезон)	https://kinokrad.co/278241-gannibal-3-sezon-2015.html	8	2015	США	детектив, криминал, драма	Майкл Раймер, Дэвид Слэйд, Тим Хантер	43
3974	Мэрон (3 сезон)	https://kinokrad.co/282339-meron-3-sezon-2015.html	5	2015	США	комедия	Люк Мэзени, Роберт Коэн, Боб Голдтуэйт	22
3975	Водолей (1 сезон)	https://kinokrad.co/282182-vodoley-1-sezon-2015.html	9	2015	США	драма, криминал	Джонас Пейт, Майкл Цинберг, Джон Эмиел	42
3976	Хроники Лиззи Борден (1 сезон)	https://kinokrad.co/286349-hroniki-lizzi-borden-1-sezon-2015.html	7	2015	США	ужасы, драма, криминал	Ховард Дойч, Стефен Т. Кэй, Константин Макрис	43
3977	Пространство (1 сезон)	https://kinokrad.co/284703-prostranstvo-1-sezon-2015.html	8	2015	США	фантастика, детектив	Роберт Либерман, Терри МакДонаф	60
3978	Высокие ставки (1 сезон)	https://kinokrad.co/285385-vysokie-stavki-1-sezon-2015.html	8	2015	Россия	драма, криминал	Богдан Дробязко	45
3979	Доктор Кто (9 сезон)	https://kinokrad.co/283487-doktor-kto-9-sezon-2015.html	8	2015	Великобритания	фантастика, драма, комедия, приключения, семейный	Грэм Харпер, Эрос Лин, Дуглас Маккиннон	43
3980	Королевы крика (1 сезон)	https://kinokrad.co/283619-korolevy-krika-1-sezon-2015.html	8	2015	США	ужасы, комедия	Брэд Фалчук, Иэн Бреннан, Брэдли Букер	45
3981	Слуга народа (1 сезон)	https://kinokrad.co/284469-sluga-naroda-1-sezon-vse-serii-2015.html	8	2015	Украина	комедия	Алексей Кирющенко	22
3982	Лондонский шпион (1 сезон)	https://kinokrad.co/284763-londonskiy-shpion-1-sezon-2015.html	5	2015	Великобритания	триллер, драма, мелодрама	Якоб Вербрюгген	60
3983	На зов скорби (2 сезон)	https://kinokrad.co/284821-na-zov-skorbi-2-sezon-2015.html	7	2015	Франция	ужасы, фэнтези, драма, мистика	Фабрис Гобер, Фридерик Гупил, Фридерик Мерму	52
3984	Озабоченные, или Любовь зла (1 сезон)	https://kinokrad.co/284417-ozabochennye-ili-lyubov-zla-1-sezon-2015.html	8	2015	Россия	комедия	Борис Хлебников	24
3985	Суперособняк (1 сезон)	https://kinokrad.co/284287-superosobnyak-1-sezon-2015.html	7	2015	США	мультфильм, комедия		30
3986	Как я стал русским (1 сезон)	https://kinokrad.co/284419-kak-ya-stal-russkim-1-sezon-2015.html	8	2015	Россия	комедия	Константин Статский	24
3987	Особое мнение (1 сезон)	https://kinokrad.co/283135-osoboe-mnenie-1-sezon-2015.html	8	2015	США	фантастика, драма	Марк Майлод	45
3988	Страшные сказки (2 сезон)	https://kinokrad.co/281634-strashnye-skazki-2-sezon-2015.html	9	2015	США, Ирландия, Великобритания	ужасы, драма, мистика	Хуан Антонио Байона, Коки Гидройч, Джеймс Хоуз	60
3989	Артур и Джордж (1 сезон)	https://kinokrad.co/281463-artur-i-dzhordzh-1-sezon-2015.html	8	2015	Великобритания	детектив	Стюарт Орм	45
3990	Ленинград 46	https://kinokrad.co/281255-leningrad-46-18-seriya.html	8	2015	Россия	криминал, детектив	Игорь Копылов	48
3991	Под прикрытием (1 сезон)	https://kinokrad.co/281619-pod-prikrytiem-1-sezon-2015.html	8	2015	США	драма, криминал, биография, история	Карл Хиндмарч, Stephen Kemp, Rawles Neil	43
3992	Лагерь Х (1 сезон)	https://kinokrad.co/281466-lager-x-1-sezon-2015.html	7	2015	Канада	драма	Дэвид Фрэйзи, Jamie Magnus Stone, Джон Стриклэнд	44
3993	Корабль (2 сезон)	https://kinokrad.co/281149-korabl-2-sezon-9-seriya.html	8	2015	Россия	фантастика, приключения, мелодрама	Олег Асадулин, Марк Горобец	48
3994	ЧОП (1 сезон)	https://kinokrad.co/281227-chop-1-sezon-1-seriya.html	8	2015	Россия	комедия	Михаил Соловьев	24
3995	Тайны Сильверхёйда	https://kinokrad.co/281295-tayny-silverheyda-3-seriya.html	7	2015	Швеция, Финляндия	триллер, драма, криминал	Андерс Энгстрем, Хенрик Бьорн	60
3996	Кровь	https://kinokrad.co/280630-krov-14-seriya.html	7	2015	Корея Южная	ужасы, драма	Ки Мин Су	60
3997	Викинги (3 сезон)	https://kinokrad.co/280624-vikingi-3-sezon-7-seriya.html	9	2015	Ирландия, Канада	боевик, драма, военный, история	Кен Джиротти, Киаран Доннелли, Йохан Ренк	45
3998	Цветок папоротника (1 сезон)	https://kinokrad.co/281647-cvetok-paporotnika-1-sezon-2015.html	7	2015	Россия	мелодрама	Сергей Лялин	45
3999	Грейсленд (3 сезон)	https://kinokrad.co/282728-greyslend-3-sezon-2015.html	7	2015	США	боевик, драма, криминал	Рассел Ли Файн, Сэнфорд Букставер, Ренни Харлин	43
4000	Зверинец (1 сезон)	https://kinokrad.co/282721-zverinec-1-sezon-2015.html	7	2015	США	триллер, драма	Стивен А. Эделсон, Брэд Андерсон, Майкл Кэтлман	42
4001	Между (1 сезон)	https://kinokrad.co/282211-mezhdu-1-sezon-2015.html	7	2015	Канада	драма	Джон Кассар, Майкл МакГоун	60
4002	Грейс и Фрэнки (1 сезон)	https://kinokrad.co/282017-greys-i-frjenki-1-sezon-2015.html	7	2015	США	комедия	Тим Киркби, Мигель Артета, Брайан Гордон	30
4003	Два с половиной человека (12 сезон)	https://kinokrad.co/272332-25-cheloveka-12-sezon-2015.html	8	2015	США	комедия	Джеймс Уиддоуз, Гари Хэлворсон, Памела Фрайман	22
4004	Олимп (1 сезон)	https://kinokrad.co/281465-olimp-1-sezon-2015.html	6	2015	Великобритания, Канада	фэнтези	Ник Уиллинг, Аманда Таппинг	45
4005	Последний янычар	https://kinokrad.co/280171-posledniy-yanychar-59-seriya.html	7	2015	Россия	криминал, драма	Александр Мохов, Антон Гойда	45
4006	Изгнанники (1 сезон)	https://kinokrad.co/282195-izgnanniki-1-sezon-2015.html	8	2015	Великобритания	драма, история	Джеффри Уокер, Дэниэл Персивал	60
4007	Злые птички (3 сезон)	https://kinokrad.co/283828-zlye-ptichki-3-sezon-2015.html	7	2015	Финляндия	мультфильм	Eric Guaglione, Ким Хельминен, Thomas Lepeska	3
4008	Оборотень / Волчонок (5 сезон)	https://kinokrad.co/282459-oboroten-5-sezon-2015.html	9	2015	США	ужасы, триллер, драма, мелодрама, комедия	Рассел Малкэй, Тим Эндрю, Тоби Уилкинс	43
4009	Прошлое умеет ждать (1 сезон)	https://kinokrad.co/286883-proshloe-umeet-zhdat-1-sezon-2015.html	6	2015	Россия	детектив, триллер	Игорь Нурисламов	42
4010	Клуб Винкс – Школа волшебниц (7 сезон)	https://kinokrad.co/283624-klub-vinks-shkola-volshebnic-7-sezon-2015.html	8	2015	Италия	мультфильм, приключения, семейный	Иджинио Страффи	22
4011	Батл Крик (1 сезон)	https://kinokrad.co/280887-batl-krik-1-sezon-5-seriya.html	8	2015	США	драма, криминал	Эндрю Бернштейн, Дэниэл Эттиэс, Колин Бакси	44
4012	19-2 / Девятнадцать Два (2 сезон)	https://kinokrad.co/280493-19-2-devyatnadcat-dva-2-sezon-5-seriya.html	9	2015	Канада	драма	Луи Шокетт, Эрик Кануэль, Дэниэл Гру	45
4013	Уроборос	https://kinokrad.co/281367-uroboros-1-seriya.html	8	2015	Япония	боевик	Исий Ясухару	54
4014	Снайпер: Последний выстрел (1 сезон)	https://kinokrad.co/282058-snayper-geroy-soprotivleniya-1-sezon-2015.html	7	2015	Россия	военный, драма, приключения	Арман Геворгян	40
4015	Копы-новобранцы (6 сезон)	https://kinokrad.co/284807-kopy-novobrancy-6-sezon-2015.html	8	2015	Канада	драма, криминал	Дэвид Уэллингтон, Т.У. Пикок, Джон Фоусет	43
4016	Приключения Кота в сапогах (1 сезон)	https://kinokrad.co/280271-priklyucheniya-kota-v-sapogah-5-seriya.html	8	2015	США	мультфильм, комедия, приключения, семейный	Лютер МакЛорин	22
4017	Легенды (2 сезон)	https://kinokrad.co/284553-legendy-2-sezon-2015.html	8	2015	США	боевик, триллер, драма, криминал	Брэд Тернер, Джэми Пэйн, Джефф Т. Томас	60
4018	Аббатство Даунтон (6 сезон)	https://kinokrad.co/283615-abbatstvo-daunton-6-sezon-2015.html	8	2015	Великобритания, США	драма, мелодрама	Брайан Персивал, Дэвид Эванс, Фил Джон	54
4019	Война Фойла (8 сезон)	https://kinokrad.co/284859-voyna-foyla-8-sezon-2015.html	7	2015	Великобритания	драма, криминал, детектив, военный	Джереми Силберстон, Стюарт Орм, Гэвин Миллар	90
4020	Сверхспособности / Силы	https://kinokrad.co/281023-sverhsposobnosti-sily-6-seriya.html	7	2015	США	фантастика, драма, криминал	Дэвид Петрарка, Микаэл Саломон, Дэвид Слэйд	60
4021	Возвращённые	https://kinokrad.co/281219-vozvraschjonnye-4-seriya.html	7	2015	США	ужасы, драма	Чарльз Мартин, Кит Гордон, Винченцо Натали	42
4022	Игрок (1 сезон)	https://kinokrad.co/283588-igrok-1-sezon-2015.html	8	2015	США	триллер, драма	Бхарат Наллури	60
4023	Палач (1 сезон)	https://kinokrad.co/283611-palach-1-sezon-2015.html	8	2015	США	драма	Пэрис Барклай, Билл Джирхарт, Кари Скогланд	42
4024	Сватьи (2 сезон)	https://kinokrad.co/281666-svati-2-sezon-2015.html	8	2015	Россия	комедия	Юрий Морозов	46
4025	Ты — воплощение порока (2 сезон)	https://kinokrad.co/283440-ty-voploschenie-poroka-2-sezon-2015.html	7	2015	США	комедия, мелодрама	Алекс Хардкасл, Джордан Вот-Робертс, Мэтт Шекман	24
4026	Письма на стекле. Судьба (2 сезон)	https://kinokrad.co/284403-pisma-na-stekle-sudba-2-sezon-2015.html	8	2015	Россия	мелодрама	Рената Грицкова	44
4027	Южный Парк (19 сезон)	https://kinokrad.co/283610-yuzhnyy-park-19-sezon-2015.html	8	2015	США	мультфильм, комедия	Трей Паркер, Эрик Сточ, Мэтт Стоун	22
4028	Последний человек на Земле (1 сезон)	https://kinokrad.co/280888-posledniy-chelovek-na-zemle-1-sezon-8-seriya.html	8	2015	США	фантастика, боевик, комедия	Фил Лорд, Кристофер Миллер, Питер Атенсио	30
4029	Битва за Севастополь	https://kinokrad.co/281799-bitva-za-sevastopol-2015.html	8	2015	Россия, Украина	военный, драма, мелодрама, боевик	Сергей Мокрицкий	48
4030	Скорострел (2 сезон)	https://kinokrad.co/280733-skorostrel-2-sezon-2015.html	7	2015	США	комедия, вестерн	Нэнси Хауэр	23
4031	Бэкстром (1 сезон)	https://kinokrad.co/280375-bjekstrom-8-seriya.html	7	2015	США	драма, криминал	Роб Харди, Марк Майлод, Майкл Оффер	45
4032	Код убийцы (1 сезон)	https://kinokrad.co/281774-kod-ubiycy-1-sezon-2015.html	8	2015	Великобритания	драма	Джеймс Стронг	60
4033	Одно большое счастье (1 сезон)	https://kinokrad.co/281232-odno-bolshoe-schaste-1-sezon-3-seriya.html	7	2015	США	комедия	Скотт Эллис, Кэти Гарретсон	30
4034	Все могут короли (1 сезон)	https://kinokrad.co/271975-vse-mogut-koroli-1-sezon.html	5	2015	Россия	комедия	Ольга Музалева	45
4035	CSI: Киберпространство (2 сезон)	https://kinokrad.co/284659-csi-kiberprostranstvo-2-sezon-2015.html	7	2015	США	триллер, драма, криминал, детектив	Эгил Эгилссон, Эрик Ла Салль, Алек Смайт	44
4036	Бруклин 9-9 (3 сезон)	https://kinokrad.co/283567-bruklin-9-9-3-sezon-2015.html	8	2015	США	комедия, криминал	Крейг Зиск, Дин Холлэнд, Виктор Нелли мл	23
4037	Синдикат (3 сезон)	https://kinokrad.co/282953-sindikat-3-sezon-2015.html	4	2015	Великобритания	драма	Кэй Меллор, Доминик Леклерк, Сидни Макартни	60
4038	Дорогой доктор / Пациент всегда прав (7 сезон)	https://kinokrad.co/283128-dorogoy-doktor-pacient-vsegda-prav-7-sezon-2015.html	6	2015	США	драма, комедия	Мэттью Пенн, Эмиль Левисетти, Майкл Ройч	43
4039	Ночная смена (2 сезон)	https://kinokrad.co/281993-nochnaya-smena-2-sezon-2015.html	7	2015	США	боевик, драма, комедия	Дэвид Бойд, Эрик Ла Салль, Тимоти Басфилд	60
4040	Рождение мафии: Нью-Йорк (1 сезон)	https://kinokrad.co/282719-rozhdenie-mafii-nyu-york-1-sezon-2015.html	9	2015	США	криминал, триллер	Джон Илер	45
4041	Германия 83 (1 сезон)	https://kinokrad.co/283544-germaniya-83-1-sezon-2015.html	7	2015	Германия	драма	Эдвард Бергер, Samira Radsi	46
4042	Мой безумный дневник (3 сезон)	https://kinokrad.co/283537-moy-bezumnyy-dnevnik-3-sezon-2015.html	8	2015	Великобритания	драма, мелодрама, комедия	Алекс Винклер, Бенжамин Карон, Тим Киркби	47
4043	Комедианты (1 сезон)	https://kinokrad.co/281669-komedianty-1-sezon-2015.html	5	2015	США	комедия	Ларри Чарльз, Ричи Кин	25
4044	Самозванец (1 сезон)	https://kinokrad.co/282954-samozvanec-1-sezon-2015.html	9	2015	США	комедия	Дж. Кларк Мэтис, Роб Гринберг, Джей Карас	30
4045	Секс, наркотики и рок-н-ролл (1 сезон)	https://kinokrad.co/282762-seks-narkotiki-i-rok-n-roll-1-sezon-2015.html	8	2015	США	комедия	Майкл Блиден, Дэнис Лири	21
4046	Трудности ассимиляции	https://kinokrad.co/280742-trudnosti-assimilyacii-3-seriya.html	8	2015	США	комедия	Линн Шелтон, Роберт Коэн, Джейк Кэздан	22
4047	CSI: Киберпространство (1 сезон)	https://kinokrad.co/281024-csi-kiberprostranstvo-1-sezon-2-seriya.html	8	2015	США	драма, криминал	Дермотт Даунс, Эрик Ла Салль, Джефф Т. Томас	44
4048	Добрая ведьма (1 сезон)	https://kinokrad.co/282722-dobraya-vedma-1-sezon-2015.html	8	2015	США	фэнтези, драма, комедия	Крэйг Прайс, Лори Линд, Дон МакБрити	48
4049	Сестра Джеки (7 сезон)	https://kinokrad.co/281571-sestra-dzheki-7-sezon-2015.html	7	2015	США	драма, комедия	Пол Фиг, Джесси Перец, Брендан Уолш	22
4050	Живу с моделями (1 сезон)	https://kinokrad.co/282387-zhivu-s-modelyami-1-sezon-2015.html	6	2015	США	комедия	Бен Келлетт	21
4051	Типа счастье (1 сезон)	https://kinokrad.co/281927-tipa-schaste-1-sezon-2015.html	7	2015	США	драма, комедия	Кен Куопис, Гейл Манкусо, Кен Уиттингэм	30
4052	Война Фойла (9 сезон)	https://kinokrad.co/282729-voyna-foyla-9-sezon-2015.html	7	2015	Великобритания	драма, криминал, детектив, военный	Джереми Силберстон, Стюарт Орм, Гэвин Миллар	90
4053	Сонная Лощина (3 сезон)	https://kinokrad.co/283749-sonnaya-loschina-3-sezon-2015.html	8	2015	США	фэнтези, триллер, драма, детектив, приключения, мистика	Дуглас Арниокоски, Пол А. Эдвардс, Кен Олин	43
4054	Жизнь в деталях (1 сезон)	https://kinokrad.co/283557-zhizn-v-detalyah-1-sezon-2015.html	6	2015	США	комедия	Джейсон Уайнер	21
4055	Морские дьяволы. Смерч 3 (3 сезон)	https://kinokrad.co/289963-morskie-dyavoly-smerch-3-sezon-2015.html	8	2015	Россия	боевик, приключения	Александр Картохин, Максим Демченко, Владимир Койфман	
4056	Капкан / Ловушка (1 сезон)	https://kinokrad.co/287389-kapkan-lovushka-1-sezon-2015.html	7	2015	Исландия	триллер, драма, криминал	Оскар Тор Аксельссон, Baldvin Zophoníasson, Бальтасар Кормакур	60
4057	Особо тяжкие преступления (4 сезон)	https://kinokrad.co/282362-osobo-tyazhkie-prestupleniya-4-sezon-2015.html	7	2015	США	драма, криминал, детектив	Стив Робин, Дэвид МакУиртер, Майкл М. Робин	43
4058	Риццоли и Айлс (6 сезон)	https://kinokrad.co/280110-riccoli-i-ayls-6-sezon-2015.html	8	2015	США	драма, криминал, детектив	Марк Абер, Майкл Кэтлман, Стив Робин	43
4059	Библиотекари (2 сезон)	https://kinokrad.co/287087-bibliotekari-2-sezon-2015.html	8	2015	США	фантастика, приключения	Марк Роскин, Джонатан Фрейкс, Дин Девлин	42
4060	Форс-мажоры (5 сезон)	https://kinokrad.co/281731-fors-mazhory-5-sezon-2015.html	9	2015	США	драма, комедия	Кевин Брэй, Антон Кроппер, Майкл Смит	43
4061	Меч. Сезон второй (2 сезон)	https://kinokrad.co/282183-mech-sezon-vtoroy-2-sezon-2015.html	8	2015	Россия	детектив, криминал	Алексей Луканев	45
4062	Темное дитя (3 сезон)	https://kinokrad.co/281617-temnoe-ditya-3-sezon-2015.html	8	2015	Канада, США	фантастика, боевик, драма	Джон Фоусет, Т.Дж. Скотт, Дэвид Фрэйзи	43
4063	Убийство на пляже / Бродчерч (2 сезон)	https://kinokrad.co/280277-ubiystvo-na-plyazhe-brodcherch-2-sezon-4-seriya.html	8	2015	Великобритания	драма, криминал, детектив	Джеймс Стронг, Эрос Лин, Майк Баркер	46
4064	Преступление по-американски	https://kinokrad.co/281296-amerikanskoe-prestuplenie-4-seriya.html	7	2015	США	драма		45
4065	Оранжевый — хит сезона (3 сезон)	https://kinokrad.co/282349-oranzhevyy-hit-sezona-3-sezon-2015.html	8	2015	США	драма, комедия, криминал	Майкл Трим, Эндрю МакКарти, Фил Абрахам	51
4066	Бессердечные (1 сезон)	https://kinokrad.co/282411-besserdechnye-1-sezon-2015.html	8	2015	Дания	драма, детектив	Наташа Артю, Каспар Мунк	42
4067	СашаТаня (3 сезон)	https://kinokrad.co/282013-sashatanya-3-sezon-2015.html	8	2015	Россия	комедия	Сергей Казачанский, Михаил Старчак	24
4068	Восьмое чувство (1 сезон)	https://kinokrad.co/271972-vosmoe-chuvstvo-1-sezon-2015.html	7	2015	США	фантастика, драма	Энди Вачовски, Лана Вачовски, Джеймс МакТиг	55
4069	Дядя (2 сезон)	https://kinokrad.co/280531-dyadya-2-sezon-3-seriya.html	6	2015	Великобритания	комедия	Oliver Refson	30
4070	Чисто английские убийства (17 сезон)	https://kinokrad.co/281665-chisto-angliyskie-ubiystva-17-sezon-2015.html	8	2015	Великобритания	драма, криминал, детектив	Питер Смит, Ренни Рай, Ричард Холтхоуз	91
4071	Вызов (3 сезон)	https://kinokrad.co/282348-vyzov-3-sezon-2015.html	8	2015	США	фантастика, боевик, драма	Майкл Нанкин, Аллен Крокер, Энди Волк	43
4072	Взрослые дочери (1 сезон)	https://kinokrad.co/282254-vzroslye-docheri-1-sezon-2015.html	8	2015	Россия	мелодрама	Андрей Эшпай	47
4073	Ганнибал (3 сезон)	https://kinokrad.co/278241-gannibal-3-sezon-2015.html	8	2015	США	детектив, криминал, драма	Майкл Раймер, Дэвид Слэйд, Тим Хантер	43
4074	Мэрон (3 сезон)	https://kinokrad.co/282339-meron-3-sezon-2015.html	5	2015	США	комедия	Люк Мэзени, Роберт Коэн, Боб Голдтуэйт	22
4075	Водолей (1 сезон)	https://kinokrad.co/282182-vodoley-1-sezon-2015.html	9	2015	США	драма, криминал	Джонас Пейт, Майкл Цинберг, Джон Эмиел	42
4076	Хроники Лиззи Борден (1 сезон)	https://kinokrad.co/286349-hroniki-lizzi-borden-1-sezon-2015.html	7	2015	США	ужасы, драма, криминал	Ховард Дойч, Стефен Т. Кэй, Константин Макрис	43
4077	Пространство (1 сезон)	https://kinokrad.co/284703-prostranstvo-1-sezon-2015.html	8	2015	США	фантастика, детектив	Роберт Либерман, Терри МакДонаф	60
4078	Высокие ставки (1 сезон)	https://kinokrad.co/285385-vysokie-stavki-1-sezon-2015.html	8	2015	Россия	драма, криминал	Богдан Дробязко	45
4079	Доктор Кто (9 сезон)	https://kinokrad.co/283487-doktor-kto-9-sezon-2015.html	8	2015	Великобритания	фантастика, драма, комедия, приключения, семейный	Грэм Харпер, Эрос Лин, Дуглас Маккиннон	43
4080	Королевы крика (1 сезон)	https://kinokrad.co/283619-korolevy-krika-1-sezon-2015.html	8	2015	США	ужасы, комедия	Брэд Фалчук, Иэн Бреннан, Брэдли Букер	45
4081	Слуга народа (1 сезон)	https://kinokrad.co/284469-sluga-naroda-1-sezon-vse-serii-2015.html	8	2015	Украина	комедия	Алексей Кирющенко	22
4082	Лондонский шпион (1 сезон)	https://kinokrad.co/284763-londonskiy-shpion-1-sezon-2015.html	5	2015	Великобритания	триллер, драма, мелодрама	Якоб Вербрюгген	60
4083	На зов скорби (2 сезон)	https://kinokrad.co/284821-na-zov-skorbi-2-sezon-2015.html	7	2015	Франция	ужасы, фэнтези, драма, мистика	Фабрис Гобер, Фридерик Гупил, Фридерик Мерму	52
4084	Озабоченные, или Любовь зла (1 сезон)	https://kinokrad.co/284417-ozabochennye-ili-lyubov-zla-1-sezon-2015.html	8	2015	Россия	комедия	Борис Хлебников	24
4085	Суперособняк (1 сезон)	https://kinokrad.co/284287-superosobnyak-1-sezon-2015.html	7	2015	США	мультфильм, комедия		30
4086	Как я стал русским (1 сезон)	https://kinokrad.co/284419-kak-ya-stal-russkim-1-sezon-2015.html	8	2015	Россия	комедия	Константин Статский	24
4087	Особое мнение (1 сезон)	https://kinokrad.co/283135-osoboe-mnenie-1-sezon-2015.html	8	2015	США	фантастика, драма	Марк Майлод	45
4088	Страшные сказки (2 сезон)	https://kinokrad.co/281634-strashnye-skazki-2-sezon-2015.html	9	2015	США, Ирландия, Великобритания	ужасы, драма, мистика	Хуан Антонио Байона, Коки Гидройч, Джеймс Хоуз	60
4089	Артур и Джордж (1 сезон)	https://kinokrad.co/281463-artur-i-dzhordzh-1-sezon-2015.html	8	2015	Великобритания	детектив	Стюарт Орм	45
4090	Ленинград 46	https://kinokrad.co/281255-leningrad-46-18-seriya.html	8	2015	Россия	криминал, детектив	Игорь Копылов	48
4091	Под прикрытием (1 сезон)	https://kinokrad.co/281619-pod-prikrytiem-1-sezon-2015.html	8	2015	США	драма, криминал, биография, история	Карл Хиндмарч, Stephen Kemp, Rawles Neil	43
4092	Лагерь Х (1 сезон)	https://kinokrad.co/281466-lager-x-1-sezon-2015.html	7	2015	Канада	драма	Дэвид Фрэйзи, Jamie Magnus Stone, Джон Стриклэнд	44
4093	Корабль (2 сезон)	https://kinokrad.co/281149-korabl-2-sezon-9-seriya.html	8	2015	Россия	фантастика, приключения, мелодрама	Олег Асадулин, Марк Горобец	48
4094	ЧОП (1 сезон)	https://kinokrad.co/281227-chop-1-sezon-1-seriya.html	8	2015	Россия	комедия	Михаил Соловьев	24
4095	Тайны Сильверхёйда	https://kinokrad.co/281295-tayny-silverheyda-3-seriya.html	7	2015	Швеция, Финляндия	триллер, драма, криминал	Андерс Энгстрем, Хенрик Бьорн	60
4096	Кровь	https://kinokrad.co/280630-krov-14-seriya.html	7	2015	Корея Южная	ужасы, драма	Ки Мин Су	60
4097	Викинги (3 сезон)	https://kinokrad.co/280624-vikingi-3-sezon-7-seriya.html	9	2015	Ирландия, Канада	боевик, драма, военный, история	Кен Джиротти, Киаран Доннелли, Йохан Ренк	45
4098	Цветок папоротника (1 сезон)	https://kinokrad.co/281647-cvetok-paporotnika-1-sezon-2015.html	7	2015	Россия	мелодрама	Сергей Лялин	45
4099	Грейсленд (3 сезон)	https://kinokrad.co/282728-greyslend-3-sezon-2015.html	7	2015	США	боевик, драма, криминал	Рассел Ли Файн, Сэнфорд Букставер, Ренни Харлин	43
4100	Зверинец (1 сезон)	https://kinokrad.co/282721-zverinec-1-sezon-2015.html	7	2015	США	триллер, драма	Стивен А. Эделсон, Брэд Андерсон, Майкл Кэтлман	42
4101	За пределами (2 сезон)	https://kinokrad.co/282761-za-predelami-2-sezon-2015.html	8	2015	США	фантастика, триллер, драма	Дэн Лернер, Кристин Мур, Адам Кэйн	42
4102	Под куполом (3 сезон)	https://kinokrad.co/282023-pod-kupolom-3-sezon-2015.html	8	2015	США	фантастика, триллер, драма, детектив	Джек Бендер, Дэвид Баррет, Питер Лето	43
4103	Сложности (1 сезон)	https://kinokrad.co/283438-slozhnosti-1-sezon-2015.html	7	2015	США	триллер, драма, криминал	Мэтт Никс, Скотт Питерс, Арвин Браун	42
4104	Нереально (1 сезон)	https://kinokrad.co/283436-nerealno-1-sezon-2015.html	8	2015	США	драма	Питер О’Фаллон, Ута Бризвитц, Лев Л. Спиро	42
4105	Тайны Броукенвуда (1 сезон)	https://kinokrad.co/283432-tayny-broukenvuda-1-sezon-2015.html	9	2015	Новая Зеландия	драма, детектив	Майк Смит, Джошуа Фриззелл, Майкл Херст	
4106	Посланники (1 сезон)	https://kinokrad.co/281660-poslanniki-1-sezon-2015.html	8	2015	США	фантастика	Дуан Кларк, Гай Норман Би, Джеймс Л. Конуэй	60
4107	Красные браслеты (2 сезон)	https://kinokrad.co/280370-krasnye-braslety-2-sezon-12-seriya.html	6	2015	Испания	драма, комедия	Пау Фрейксас, Ориоль Феррер, Марта Паисса	45
4108	Леди-детектив мисс Фрайни Фишер (3 сезон)	https://kinokrad.co/282222-ledi-detektiv-miss-frayni-fisher-3-sezon-2015.html	8	2015	Австралия	драма, криминал, детектив	Тони Тилс, Питер Андрикидис, Даина Рейд	43
4109	Тут / Тутанхамон (1 сезон)	https://kinokrad.co/282835-tut-tutanhamon-1-sezon-2015.html	9	2015	Канада	драма, биография, история	Дэвид Фон Энкен	45
4110	Доктор Блейк (3 сезон)	https://kinokrad.co/289858-doktor-bleyk-3-sezon-2015.html	8	2015	Австралия	детектив	Деклан Имис, Йен Бэрри, Эндрю Проуз	57
4111	Зажигай! (2 сезон)	https://kinokrad.co/283435-zazhigay-2-sezon-2015.html	9	2015	США	драма, мелодрама	Дэйзи фон Шерлер Майер, Тамра Дэвис, Милисент Шелтон	60
4112	Тофу (1 сезон)	https://kinokrad.co/289759-tofu-1-sezon-2015.html	5	2015	Великобритания	документальный, короткометражка	Бенжамин Кук	11
4113	Звёздные войны: Повстанцы (2 сезон)	https://kinokrad.co/282717-zvjozdnye-voyny-povstancy-2-sezon-2015.html	9	2015	США	мультфильм, фантастика, фэнтези, боевик, приключения	Стюарт Ли, Дэйв Филони, Стивен Дж. Ли	30
4114	Однокурсники / Сообщество (6 сезон)	https://kinokrad.co/281620-odnokursniki-soobschestvo-6-sezon-2015.html	7	2015	США	комедия	Тристрам Шапиро, Джо Руссо, Энтони Руссо	22
4115	Под подозрением (1 сезон)	https://kinokrad.co/283228-pod-podozreniem-1-sezon-2015.html	7	2015	Испания	триллер	Сильвия Кер, Хорхе Санчес-Кабесудо, Рамон Кампос	60
4116	Оправданный (1 сезон)	https://kinokrad.co/286879-opravdannyy-1-sezon-2015.html	7	2015	Норвегия	драма, криминал	Руне Денстад Лангло, Гер Хеннинг Хопланд	45
4117	Доказательство (1 сезон)	https://kinokrad.co/282512-dokazatelstvo-1-sezon-2015.html	7	2015	США, Канада	драма	Алекс Грейвз, Эллисон Андерс, Нельсон МакКормик	45
4118	Версаль (1 сезон)	https://kinokrad.co/286035-versal-1-sezon-2015.html	7	2015	Франция, Канада	драма, биография, история	Дэниэл Роби, Кристоф Шреве, Жалиль Леспер	52
4119	Реанимация (1 сезон)	https://kinokrad.co/283684-reanimaciya-1-sezon-2015.html	8	2015	США	драма	Ли Роуз, Дэвид Семел, Адам Кэйн	42
4120	Важная мама (1 сезон)	https://kinokrad.co/283433-vazhnaya-1-sezon-2015.html	8	2015	США	комедия	Трип Рид, Джон Путч, Джонатан Силвермен	24
4121	Когда мы дома (2 сезон)	https://kinokrad.co/283831-kogda-my-doma-2-sezon-2015.html	9	2015	Украина	комедия	Максим Литвинов	56
4122	Континуум (4 сезон)	https://kinokrad.co/283255-kontinuum-4-sezon-2015.html	8	2015	Канада	фантастика, боевик, триллер	Пэт Уильямс, Уильям Варинг, Дэвид Фрэйзи	44
4123	Красная королева (1 сезон)	https://kinokrad.co/283780-krasnaya-koroleva-1-sezon-2015.html	8	2015	Россия, Украина	драма, биографический	Алёна Семёнова	50
4124	Восстание Техаса (1 сезон)	https://kinokrad.co/282253-vosstanie-tehasa-1-sezon-2015.html	7	2015	США	драма, вестерн	Роланд Жоффе	45
4125	Сожители (1 сезон)	https://kinokrad.co/282388-sozhiteli-1-sezon-2015.html	5	2015	Корея Южная	драма, комедия, мелодрама	Ын-тхэ Ким	60
4126	Чокнутая бывшая (1 сезон)	https://kinokrad.co/285021-choknutaya-byvshaya-1-sezon-2015.html	6	2015	США	мюзикл, комедия	Тамра Дэвис, Алекс Хардкасл, Джоэнна Кернс	42
4127	Всё включено (7 сезон)	https://kinokrad.co/292024-vsjo-vklyucheno-7-sezon-2015.html	7	2015	Великобритания	комедия	Сэнди Джонсон, Дэвид Сент, Кевин Аллен	30
4128	Шаманка (1 сезон)	https://kinokrad.co/287725-shamanka-1-sezon-2015.html	6	2015	Россия	детектив	Анна Богуславская	43
4129	Как избежать наказания за убийство (2 сезон)	https://kinokrad.co/283592-kak-izbezhat-nakazaniya-za-ubiystvo-2-sezon-2015.html	8	2015	США	триллер, драма, криминал, детектив	Билл Д’Элиа, Лора Иннес, Майк Листо	43
4130	Помнить всё / Незабываемое (4 сезон)	https://kinokrad.co/285969-pomnit-vsjo-4-sezon-2015.html	8	2015	США	драма, криминал	Жан Де Сегонзак, Пол Холахан, Мэтт Эрл Бисли	43
4131	Милые обманщицы (6 сезон)	https://kinokrad.co/282351-milye-obmanschicy-6-sezon-2015.html	8	2015	США	триллер, драма, детектив	Норман Бакли, Рон Лагомарсино, Чад Лоу	43
4132	Красная дорога (2 сезон)	https://kinokrad.co/281401-krasnaya-doroga-2-sezon-1-seriya.html	7	2015	США	драма	Лодж Х. Керриган, Дж. Майкл Муро, Джеймс Грэй	60
4133	Луи (5 сезон)	https://kinokrad.co/281624-lui-5-sezon-2015.html	7	2015	США	драма, комедия	Луис С.К., Лиз Плонка	23
4134	Успех в Голливуде, Флорида	https://kinokrad.co/281360-uspeh-v-gollivude-florida-2-seriya.html	7	2015	США	комедия	Дэн Шимпф	23
4135	Полдарк (1 сезон)	https://kinokrad.co/281060-poldark-1-sezon-3-seriya.html	8	2015	Великобритания	драма	Эдвард Базалгетт, Уильям МакГрегор	60
4136	Лонгмайр (4 сезон)	https://kinokrad.co/283613-longmayr-4-sezon.html	7	2015	США	боевик, драма, криминал, вестерн	Кристофер Чулак, Джеймс М. Муро, Майкл Оффер	43
4137	Бойтесь ходячих мертвецов (1 сезон)	https://kinokrad.co/283226-boytes-hodyachih-mertvecov-1-sezon-2015.html	8	2015	США	ужасы, драма	Адам Дэвидсон, Кари Скогланд, Стефан Шварц	60
4138	Любовники (2 сезон)	https://kinokrad.co/284809-lyubovniki-2-sezon-2015.html	8	2015	США	драма	Джеффри Рейнер, Райан Флек, Карл Франклин	60
4139	В пустыне смерти (1 сезон)	https://kinokrad.co/284963-v-pustyne-smerti-1-sezon-2015.html	9	2015	США	боевик, драма, приключения	Дэвид Добкин	42
4140	Коварные горничные (3 сезон)	https://kinokrad.co/282224-kovarnye-gornichnye-3-sezon-2015.html	8	2015	США	драма, комедия, детектив	Тара Николь Вейр, Дэвид Уоррен, Тауния Маккирнан	43
4141	Нация Z (2 сезон)	https://kinokrad.co/283452-naciya-z-2-sezon-2015.html	8	2015	США	ужасы, фантастика, боевик, драма	Джон Хайамс, Тим Эндрю, Луис Прието	43
4142	Убийство первой степени (2 сезон)	https://kinokrad.co/282396-ubiystvo-pervoy-stepeni-2-sezon-2015.html	7	2015	США	драма, криминал, детектив	Джесси Бокко, Эллисон Андерс, Реджинальд Хадлин	42
4143	На грани / Предел (1 сезон)	https://kinokrad.co/282432-na-grani-predel-1-sezon-2015.html	9	2015	США	комедия	Джон Полл, Джей Роуч, Скотт Уинант	30
4144	Папочка (4 сезон)	https://kinokrad.co/280217-papochka-4-sezon-9-seriya.html	6	2015	США	драма, комедия, семейный	Майкл Лембек, Арлин Санфорд, Робби Кантримэн	22
4145	Доктор Блейк (2 сезон)	https://kinokrad.co/280537-doktor-bleyk-2-sezon-5-seriya.html	7	2015	Австралия	детектив	Йен Бэрри, Деклан Имис, Эндрю Проуз	57
4146	Манхэттен (2 сезон)	https://kinokrad.co/284649-manhjetten-2-sezon-2015.html	5	2015	США	драма	Томас Шламми, Дэниэл Эттиэс, Эндрю Бернштейн	43
4147	Деффчонки (5 сезон)	https://kinokrad.co/284459-deffchonki-5-sezon-2015.html	8	2015	Россия	комедия	Сергей Корягин, Ольга Френкель, Нигина Сайфуллаева	24
4148	Восьмидесятые (5 сезон)	https://kinokrad.co/284605-vosmidesyatye-5-sezon-2015.html	9	2015	Россия	комедия, мелодрама	Фёдор Стуков, Юлия Лёвкина, Филипп Коршунов	25
4149	Призраки Энфилда (1 сезон)	https://kinokrad.co/282038-prizraki-jenfilda-1-sezon-2015.html	9	2015	Великобритания	детектив, мистика	Кристоффер Нюхольм	45
4150	Последователи (3 сезон)	https://kinokrad.co/272499-posledovateli-3-sezon-6-seriya.html	8	2015	США	триллер, драма, криминал, детектив	Маркос Сига, Джошуа Батлер, Лиз Фридлендер	43
4151	Осадок / Остаток (1 сезон)	https://kinokrad.co/282019-osadok-ostatok-1-sezon-2015.html	6	2015	Великобритания	триллер, ужасы, фантастика	Алекс Гарсиа Лопес	45
4152	Преданность (5 серия)	https://kinokrad.co/280532-predannost-5-seriya.html	7	2015	США	драма	Джордж Нолфи	42
4153	Министерство времени (1 сезон)	https://kinokrad.co/283595-ministerstvo-vremeni-1-sezon-2015.html	8	2015	Испания	приключения	Марк Вихиль, Хорхе С. Дорадо, Abigail Schaaff	70
4154	Последняя электричка 1 сезон (8 серия)	https://kinokrad.co/272952-poslednyaya-jelektrichka-1-sezon-8-seriya.html	6	2015	Россия	мелодрама, музыка	Анна Гресь	50
4155	Наставник (1-4 серия)	https://kinokrad.co/280909-nastavnik.html	6	2015	Россия	детектив, криминал	Григорий Жихаревич	46
4156	Семейный бизнес (2 сезон)	https://kinokrad.co/283820-semeynyy-biznes-2-sezon-2015.html	8	2015	Россия	комедия	Алексей Чистиков	25
4157	Моцарт в джунглях (2 сезон)	https://kinokrad.co/286043-mocart-v-dzhunglyah-2-sezon-2015.html	8	2015	США	драма, комедия, музыка	Пол Вайц, Тришиа Брок, Адам Брукс	29
4158	Члены королевской семьи (2 сезон)	https://kinokrad.co/286037-chleny-korolevskoy-2-sezon-2015.html	6	2015	США	драма	Марк Шван, Том Вон, Жан Де Сегонзак	42
4159	Лютер (4 сезон)	https://kinokrad.co/286029-lyuter-4-sezon-2015.html	9	2015	Великобритания	драма, криминал, детектив	Сэм Миллер, Брайан Кирк, Стефан Шварц	60
4160	Юная (1 сезон)	https://kinokrad.co/281929-yunaya-1-sezon-2015.html	6	2015	США	комедия	Даррен Стар, Тамра Дэвис	22
4161	Последний корабль (2 сезон)	https://kinokrad.co/282449-posledniy-korabl-2-sezon-2015.html	8	2015	США	фантастика, боевик, триллер, драма	Джек Бендер, Серджо Мимика-Геззан, Майкл Кэтлман	43
4162	Тиран (2 сезон)	https://kinokrad.co/282395-tiran-2-sezon-2015.html	8	2015	США	боевик, триллер, драма	Майкл Леманн, Гвинет Хердер-Пэйтон, Дэвид Петрарка	60
4163	Мистер Робот (1 сезон)	https://kinokrad.co/282184-mister-robot-1-sezon-2015.html	9	2015	США	драма, криминал		60
4164	СашаТаня (4 сезон)	https://kinokrad.co/283227-sashatanya-4-sezon-2015.html	8	2015	Россия	комедия	Сергей Казачанский, Михаил Старчак, Андрей Богатырев	24
4165	Нарки (1 сезон)	https://kinokrad.co/283351-narki-1-sezon-2015.html	9	2015	США	драма, криминал	Жозе Падилья	52
4166	Майк и Молли (5 сезон)	https://kinokrad.co/272425-mayk-i-molli-5-sezon-9-seriya.html	6	2015	США	комедия	Джеймс Берроуз, Фил Льюис, Марк Робертс	22
4167	Последнее королевство (1 сезон)	https://kinokrad.co/283931-poslednee-korolevstvo-1-sezon-2015.html	9	2015	Великобритания	боевик, мелодрама, история	Энтони Бирн, Бен Чанан, Питер Хор	60
4168	Последний мент (1 сезон)	https://kinokrad.co/284143-posledniy-ment-1-sezon-2015.html	8	2015	Россия	детектив, драма, комедия	Михаил Жерневский	39
4169	Ментовские войны 9 (9 сезон)	https://kinokrad.co/284647-mentovskie-voyny-9-sezon-2015.html	8	2015	Россия	детектив, криминал	Денис Скворцов	43
4170	Американцы (3 сезон)	https://kinokrad.co/280382-amerikancy-3-sezon-10-seriya.html	8	2015	США	триллер, драма, криминал, детектив	Дэниэл Сакхейм, Адам Аркин, Джон Дал	43
4171	Склифосовский (4 сезон)	https://kinokrad.co/281452-sklifosovskiy-4-sezon-2015.html	8	2015	Россия	драма, мелодрама	Андрей Селиванов, Юлия Краснова	45
4172	Седьмая руна (1 сезон)	https://kinokrad.co/281668-sedmaya-runa-1-sezon-2015.html	7	2015	Россия	триллер, приключения, детектив	Сергей Попов	50
4173	Правосудие (6 сезон)	https://kinokrad.co/280276-pravosudie-6-sezon-10-seriya.html	8	2015	США	боевик, триллер, драма, криминал	Питер Уэрнер, Майкл Диннер, Адам Аркин	43
4174	Люди (1 сезон)	https://kinokrad.co/282361-lyudi-1-sezon-2015.html	9	2015	США, Великобритания	фантастика, драма	Льюис Арнольд, Сэмюэл Донован, Чина Му-Ен	45
4175	Странная парочка (1 сезон)	https://kinokrad.co/280740-strannaya-parochka-4-seriya.html	7	2015	США	комедия	Фил Льюис, Марк Сендроуски	21
4176	Сорвиголова (1 сезон)	https://kinokrad.co/281503-sorvigolova-1-sezon-2015.html	9	2015	США	фантастика, боевик	Фил Абрахам, Стивен С. ДеНайт, Кен Джиротти	60
4177	Пощечина (8 серия)	https://kinokrad.co/280569-poschechina-8-seriya.html	7	2015	США	драма	Лиза Холоденко	43
4178	Укушенная (2 сезон)	https://kinokrad.co/280488-ukushennaya-2-sezon-2015.html	8	2015	Канада	ужасы, фэнтези, драма, детектив	Грант Харви, Т.Дж. Скотт, Джеймс Даннисон	43
4179	Город хищниц 6 сезон	https://kinokrad.co/279960-gorod-hischnic-6-sezon-13-seriya.html	7	2015	США	комедия	Майкл МакДональд, Джон Путч	22
4180	Между двух огней (1-16 серия)	https://kinokrad.co/281272-mezhdu-dvuh-ogney.html	8	2015	Россия	мелодрама	Дмитрий Булин	45
4181	Эпизоды (4 сезон)	https://kinokrad.co/280283-jepizody-4-sezon-9-seriya.html	8	2015	США, Великобритания	комедия	Джим Филд Смит, Иэн Б. МакДональд, Джеймс Гриффитс	28
4182	Между нами, девочками	https://kinokrad.co/281083-mezhdu-nami-devochkami-2015.html	8	2015	Россия, Украина	комедия	Алексей Кирющенко	45
4183	Обитель лжи 4 сезон (12 серия)	https://kinokrad.co/274441-obitel-lzhi-4-sezon-12-seriya.html	8	2015	США	драма, комедия	Стивен Хопкинс, Мэттью Карнахан, Адам Бернштейн	29
4184	Бесстыдники (5 сезон)	https://kinokrad.co/280095-besstydniki-5-sezon-11-seriya.html	9	2015	США	драма, комедия	Марк Майлод, Мими Ледер, Энтони Хемингуэй	55
4185	Трюкач	https://kinokrad.co/281460-tryukach-2015.html	8	2015	Россия	драма, мелодрама	Сергей Щербин	45
4186	Государственный секретарь	https://kinokrad.co/280241-gosudarstvennyy-sekretar-11-seriya.html	8	2015	США	драма	Дэвид Семел, Джереми Уэбб	45
4187	Великая (1 сезон)	https://kinokrad.co/272022-velikaya-1-sezon-2015.html	8	2015	Россия	драма, история	Игорь Зайцев	47
4188	Клуб жён астронавтов (1 сезон)	https://kinokrad.co/272069-klub-zhjon-astronavtov-1-sezon-2015.html	7	2015	США	драма	Дж. Миллер Тобин	43
4189	Стелла (4 сезон)	https://kinokrad.co/281933-stella-4-sezon-2015.html	6	2015	Великобритания	драма, комедия	Эшли Вэй, Тони Дау, Сьюзэн Талли	60
4190	Лесник (3 сезон)	https://kinokrad.co/272432-lesnik-3-2015.html	8	2015	Россия	детектив	Александр Калугин, Борис Казаков	45
4191	Своенравные сосны / Уэйуорд Пайнс (1 сезон)	https://kinokrad.co/272688-ueyuord-payns-1-sezon-2015.html	9	2015	США	драма, детектив	Зал Батманглидж, Тим Хантер, Нимрод Антал	60
4192	Катастрофа (1 сезон)	https://kinokrad.co/283111-katastrofa-1-sezon-2015.html	7	2015	Великобритания	комедия	Бен Тэйлор	30
4193	Без обид (1 сезон)	https://kinokrad.co/283635-bez-obid-1-sezon-2015.html	7	2015	Великобритания	драма, комедия, криминал	Катрин Морсхэд, Гарри Брэдбир, Дэвид Керр	42
4194	Окрыленные (1 сезон)	https://kinokrad.co/284016-okrylennye-1-sezon-2015.html	7	2015	Россия	драма, комедия	Анна Писаненко	39
4195	От заката до рассвета (2 сезон)	https://kinokrad.co/283312-ot-zakata-do-rassveta-2-sezon-2015.html	7	2015	США	боевик, ужасы, криминал, фэнтези	Роберт Родригес, Джо Менендес, Эдуардо Санчес	60
4196	Менты. Улицы разбитых фонарей 14 сезон (36 серия)	https://kinokrad.co/280177-menty.-ulicy-razbityh-fonarey-14-sezon-36-seriya.html	7	2015	Россия	боевик, драма, криминал, приключения	Александр Рогожкин, Дмитрий Светозаров, Кирилл Капица	48
4197	Тест на беременность (1-16 серия)	https://kinokrad.co/280170-test-na-beremennost.html	9	2015	Россия	мелодрама	Михаил Вайнберг	52
4198	Легко ли быть молодым? (1-8 серия)	https://kinokrad.co/280175-legko-li-byt-molodym.html	8	2015	Россия	комедия	Александр Наумов	22
4199	Галавант 1 сезон (8 серия)	https://kinokrad.co/279959-galavant-1-sezon-8-seriya.html	8	2015	США	мюзикл, комедия	Крис Кох, Джон Фортенберри, Джеймс Гриффитс	22
4200	Тайны острова Мако (2 сезон)	https://kinokrad.co/280727-tayny-ostrova-mako-2-sezon-5-seriya.html	9	2015	Австралия	фэнтези, комедия, приключения	Грант Браун, Ивэн Кларри, Tom Hooper	22
4201	За пределами (2 сезон)	https://kinokrad.co/282761-za-predelami-2-sezon-2015.html	8	2015	США	фантастика, триллер, драма	Дэн Лернер, Кристин Мур, Адам Кэйн	42
4202	Под куполом (3 сезон)	https://kinokrad.co/282023-pod-kupolom-3-sezon-2015.html	8	2015	США	фантастика, триллер, драма, детектив	Джек Бендер, Дэвид Баррет, Питер Лето	43
4203	Сложности (1 сезон)	https://kinokrad.co/283438-slozhnosti-1-sezon-2015.html	7	2015	США	триллер, драма, криминал	Мэтт Никс, Скотт Питерс, Арвин Браун	42
4204	Нереально (1 сезон)	https://kinokrad.co/283436-nerealno-1-sezon-2015.html	8	2015	США	драма	Питер О’Фаллон, Ута Бризвитц, Лев Л. Спиро	42
4205	Тайны Броукенвуда (1 сезон)	https://kinokrad.co/283432-tayny-broukenvuda-1-sezon-2015.html	9	2015	Новая Зеландия	драма, детектив	Майк Смит, Джошуа Фриззелл, Майкл Херст	
4206	Посланники (1 сезон)	https://kinokrad.co/281660-poslanniki-1-sezon-2015.html	8	2015	США	фантастика	Дуан Кларк, Гай Норман Би, Джеймс Л. Конуэй	60
4207	Красные браслеты (2 сезон)	https://kinokrad.co/280370-krasnye-braslety-2-sezon-12-seriya.html	6	2015	Испания	драма, комедия	Пау Фрейксас, Ориоль Феррер, Марта Паисса	45
4208	Леди-детектив мисс Фрайни Фишер (3 сезон)	https://kinokrad.co/282222-ledi-detektiv-miss-frayni-fisher-3-sezon-2015.html	8	2015	Австралия	драма, криминал, детектив	Тони Тилс, Питер Андрикидис, Даина Рейд	43
4209	Тут / Тутанхамон (1 сезон)	https://kinokrad.co/282835-tut-tutanhamon-1-sezon-2015.html	9	2015	Канада	драма, биография, история	Дэвид Фон Энкен	45
4210	Доктор Блейк (3 сезон)	https://kinokrad.co/289858-doktor-bleyk-3-sezon-2015.html	8	2015	Австралия	детектив	Деклан Имис, Йен Бэрри, Эндрю Проуз	57
4211	Зажигай! (2 сезон)	https://kinokrad.co/283435-zazhigay-2-sezon-2015.html	9	2015	США	драма, мелодрама	Дэйзи фон Шерлер Майер, Тамра Дэвис, Милисент Шелтон	60
4212	Тофу (1 сезон)	https://kinokrad.co/289759-tofu-1-sezon-2015.html	5	2015	Великобритания	документальный, короткометражка	Бенжамин Кук	11
4213	Звёздные войны: Повстанцы (2 сезон)	https://kinokrad.co/282717-zvjozdnye-voyny-povstancy-2-sezon-2015.html	9	2015	США	мультфильм, фантастика, фэнтези, боевик, приключения	Стюарт Ли, Дэйв Филони, Стивен Дж. Ли	30
4214	Однокурсники / Сообщество (6 сезон)	https://kinokrad.co/281620-odnokursniki-soobschestvo-6-sezon-2015.html	7	2015	США	комедия	Тристрам Шапиро, Джо Руссо, Энтони Руссо	22
4215	Под подозрением (1 сезон)	https://kinokrad.co/283228-pod-podozreniem-1-sezon-2015.html	7	2015	Испания	триллер	Сильвия Кер, Хорхе Санчес-Кабесудо, Рамон Кампос	60
4216	Оправданный (1 сезон)	https://kinokrad.co/286879-opravdannyy-1-sezon-2015.html	7	2015	Норвегия	драма, криминал	Руне Денстад Лангло, Гер Хеннинг Хопланд	45
4217	Доказательство (1 сезон)	https://kinokrad.co/282512-dokazatelstvo-1-sezon-2015.html	7	2015	США, Канада	драма	Алекс Грейвз, Эллисон Андерс, Нельсон МакКормик	45
4218	Версаль (1 сезон)	https://kinokrad.co/286035-versal-1-sezon-2015.html	7	2015	Франция, Канада	драма, биография, история	Дэниэл Роби, Кристоф Шреве, Жалиль Леспер	52
4219	Реанимация (1 сезон)	https://kinokrad.co/283684-reanimaciya-1-sezon-2015.html	8	2015	США	драма	Ли Роуз, Дэвид Семел, Адам Кэйн	42
4220	Важная мама (1 сезон)	https://kinokrad.co/283433-vazhnaya-1-sezon-2015.html	8	2015	США	комедия	Трип Рид, Джон Путч, Джонатан Силвермен	24
4221	Когда мы дома (2 сезон)	https://kinokrad.co/283831-kogda-my-doma-2-sezon-2015.html	9	2015	Украина	комедия	Максим Литвинов	56
4222	Континуум (4 сезон)	https://kinokrad.co/283255-kontinuum-4-sezon-2015.html	8	2015	Канада	фантастика, боевик, триллер	Пэт Уильямс, Уильям Варинг, Дэвид Фрэйзи	44
4223	Красная королева (1 сезон)	https://kinokrad.co/283780-krasnaya-koroleva-1-sezon-2015.html	8	2015	Россия, Украина	драма, биографический	Алёна Семёнова	50
4224	Восстание Техаса (1 сезон)	https://kinokrad.co/282253-vosstanie-tehasa-1-sezon-2015.html	7	2015	США	драма, вестерн	Роланд Жоффе	45
4225	Сожители (1 сезон)	https://kinokrad.co/282388-sozhiteli-1-sezon-2015.html	5	2015	Корея Южная	драма, комедия, мелодрама	Ын-тхэ Ким	60
4226	Чокнутая бывшая (1 сезон)	https://kinokrad.co/285021-choknutaya-byvshaya-1-sezon-2015.html	6	2015	США	мюзикл, комедия	Тамра Дэвис, Алекс Хардкасл, Джоэнна Кернс	42
4227	Всё включено (7 сезон)	https://kinokrad.co/292024-vsjo-vklyucheno-7-sezon-2015.html	7	2015	Великобритания	комедия	Сэнди Джонсон, Дэвид Сент, Кевин Аллен	30
4228	Шаманка (1 сезон)	https://kinokrad.co/287725-shamanka-1-sezon-2015.html	6	2015	Россия	детектив	Анна Богуславская	43
4229	Как избежать наказания за убийство (2 сезон)	https://kinokrad.co/283592-kak-izbezhat-nakazaniya-za-ubiystvo-2-sezon-2015.html	8	2015	США	триллер, драма, криминал, детектив	Билл Д’Элиа, Лора Иннес, Майк Листо	43
4230	Помнить всё / Незабываемое (4 сезон)	https://kinokrad.co/285969-pomnit-vsjo-4-sezon-2015.html	8	2015	США	драма, криминал	Жан Де Сегонзак, Пол Холахан, Мэтт Эрл Бисли	43
4231	Милые обманщицы (6 сезон)	https://kinokrad.co/282351-milye-obmanschicy-6-sezon-2015.html	8	2015	США	триллер, драма, детектив	Норман Бакли, Рон Лагомарсино, Чад Лоу	43
4232	Красная дорога (2 сезон)	https://kinokrad.co/281401-krasnaya-doroga-2-sezon-1-seriya.html	7	2015	США	драма	Лодж Х. Керриган, Дж. Майкл Муро, Джеймс Грэй	60
4233	Луи (5 сезон)	https://kinokrad.co/281624-lui-5-sezon-2015.html	7	2015	США	драма, комедия	Луис С.К., Лиз Плонка	23
4234	Успех в Голливуде, Флорида	https://kinokrad.co/281360-uspeh-v-gollivude-florida-2-seriya.html	7	2015	США	комедия	Дэн Шимпф	23
4235	Полдарк (1 сезон)	https://kinokrad.co/281060-poldark-1-sezon-3-seriya.html	8	2015	Великобритания	драма	Эдвард Базалгетт, Уильям МакГрегор	60
4236	Лонгмайр (4 сезон)	https://kinokrad.co/283613-longmayr-4-sezon.html	7	2015	США	боевик, драма, криминал, вестерн	Кристофер Чулак, Джеймс М. Муро, Майкл Оффер	43
4237	Бойтесь ходячих мертвецов (1 сезон)	https://kinokrad.co/283226-boytes-hodyachih-mertvecov-1-sezon-2015.html	8	2015	США	ужасы, драма	Адам Дэвидсон, Кари Скогланд, Стефан Шварц	60
4238	Любовники (2 сезон)	https://kinokrad.co/284809-lyubovniki-2-sezon-2015.html	8	2015	США	драма	Джеффри Рейнер, Райан Флек, Карл Франклин	60
4239	В пустыне смерти (1 сезон)	https://kinokrad.co/284963-v-pustyne-smerti-1-sezon-2015.html	9	2015	США	боевик, драма, приключения	Дэвид Добкин	42
4240	Коварные горничные (3 сезон)	https://kinokrad.co/282224-kovarnye-gornichnye-3-sezon-2015.html	8	2015	США	драма, комедия, детектив	Тара Николь Вейр, Дэвид Уоррен, Тауния Маккирнан	43
4241	Нация Z (2 сезон)	https://kinokrad.co/283452-naciya-z-2-sezon-2015.html	8	2015	США	ужасы, фантастика, боевик, драма	Джон Хайамс, Тим Эндрю, Луис Прието	43
4242	Убийство первой степени (2 сезон)	https://kinokrad.co/282396-ubiystvo-pervoy-stepeni-2-sezon-2015.html	7	2015	США	драма, криминал, детектив	Джесси Бокко, Эллисон Андерс, Реджинальд Хадлин	42
4243	На грани / Предел (1 сезон)	https://kinokrad.co/282432-na-grani-predel-1-sezon-2015.html	9	2015	США	комедия	Джон Полл, Джей Роуч, Скотт Уинант	30
4244	Папочка (4 сезон)	https://kinokrad.co/280217-papochka-4-sezon-9-seriya.html	6	2015	США	драма, комедия, семейный	Майкл Лембек, Арлин Санфорд, Робби Кантримэн	22
4245	Доктор Блейк (2 сезон)	https://kinokrad.co/280537-doktor-bleyk-2-sezon-5-seriya.html	7	2015	Австралия	детектив	Йен Бэрри, Деклан Имис, Эндрю Проуз	57
4246	Манхэттен (2 сезон)	https://kinokrad.co/284649-manhjetten-2-sezon-2015.html	5	2015	США	драма	Томас Шламми, Дэниэл Эттиэс, Эндрю Бернштейн	43
4247	Деффчонки (5 сезон)	https://kinokrad.co/284459-deffchonki-5-sezon-2015.html	8	2015	Россия	комедия	Сергей Корягин, Ольга Френкель, Нигина Сайфуллаева	24
4248	Восьмидесятые (5 сезон)	https://kinokrad.co/284605-vosmidesyatye-5-sezon-2015.html	9	2015	Россия	комедия, мелодрама	Фёдор Стуков, Юлия Лёвкина, Филипп Коршунов	25
4249	Призраки Энфилда (1 сезон)	https://kinokrad.co/282038-prizraki-jenfilda-1-sezon-2015.html	9	2015	Великобритания	детектив, мистика	Кристоффер Нюхольм	45
4250	Последователи (3 сезон)	https://kinokrad.co/272499-posledovateli-3-sezon-6-seriya.html	8	2015	США	триллер, драма, криминал, детектив	Маркос Сига, Джошуа Батлер, Лиз Фридлендер	43
4251	Осадок / Остаток (1 сезон)	https://kinokrad.co/282019-osadok-ostatok-1-sezon-2015.html	6	2015	Великобритания	триллер, ужасы, фантастика	Алекс Гарсиа Лопес	45
4252	Преданность (5 серия)	https://kinokrad.co/280532-predannost-5-seriya.html	7	2015	США	драма	Джордж Нолфи	42
4253	Министерство времени (1 сезон)	https://kinokrad.co/283595-ministerstvo-vremeni-1-sezon-2015.html	8	2015	Испания	приключения	Марк Вихиль, Хорхе С. Дорадо, Abigail Schaaff	70
4254	Последняя электричка 1 сезон (8 серия)	https://kinokrad.co/272952-poslednyaya-jelektrichka-1-sezon-8-seriya.html	6	2015	Россия	мелодрама, музыка	Анна Гресь	50
4255	Наставник (1-4 серия)	https://kinokrad.co/280909-nastavnik.html	6	2015	Россия	детектив, криминал	Григорий Жихаревич	46
4256	Семейный бизнес (2 сезон)	https://kinokrad.co/283820-semeynyy-biznes-2-sezon-2015.html	8	2015	Россия	комедия	Алексей Чистиков	25
4257	Моцарт в джунглях (2 сезон)	https://kinokrad.co/286043-mocart-v-dzhunglyah-2-sezon-2015.html	8	2015	США	драма, комедия, музыка	Пол Вайц, Тришиа Брок, Адам Брукс	29
4258	Члены королевской семьи (2 сезон)	https://kinokrad.co/286037-chleny-korolevskoy-2-sezon-2015.html	6	2015	США	драма	Марк Шван, Том Вон, Жан Де Сегонзак	42
4259	Лютер (4 сезон)	https://kinokrad.co/286029-lyuter-4-sezon-2015.html	9	2015	Великобритания	драма, криминал, детектив	Сэм Миллер, Брайан Кирк, Стефан Шварц	60
4260	Юная (1 сезон)	https://kinokrad.co/281929-yunaya-1-sezon-2015.html	6	2015	США	комедия	Даррен Стар, Тамра Дэвис	22
4261	Последний корабль (2 сезон)	https://kinokrad.co/282449-posledniy-korabl-2-sezon-2015.html	8	2015	США	фантастика, боевик, триллер, драма	Джек Бендер, Серджо Мимика-Геззан, Майкл Кэтлман	43
4262	Тиран (2 сезон)	https://kinokrad.co/282395-tiran-2-sezon-2015.html	8	2015	США	боевик, триллер, драма	Майкл Леманн, Гвинет Хердер-Пэйтон, Дэвид Петрарка	60
4263	Мистер Робот (1 сезон)	https://kinokrad.co/282184-mister-robot-1-sezon-2015.html	9	2015	США	драма, криминал		60
4264	СашаТаня (4 сезон)	https://kinokrad.co/283227-sashatanya-4-sezon-2015.html	8	2015	Россия	комедия	Сергей Казачанский, Михаил Старчак, Андрей Богатырев	24
4265	Нарки (1 сезон)	https://kinokrad.co/283351-narki-1-sezon-2015.html	9	2015	США	драма, криминал	Жозе Падилья	52
4266	Майк и Молли (5 сезон)	https://kinokrad.co/272425-mayk-i-molli-5-sezon-9-seriya.html	6	2015	США	комедия	Джеймс Берроуз, Фил Льюис, Марк Робертс	22
4267	Последнее королевство (1 сезон)	https://kinokrad.co/283931-poslednee-korolevstvo-1-sezon-2015.html	9	2015	Великобритания	боевик, мелодрама, история	Энтони Бирн, Бен Чанан, Питер Хор	60
4268	Последний мент (1 сезон)	https://kinokrad.co/284143-posledniy-ment-1-sezon-2015.html	8	2015	Россия	детектив, драма, комедия	Михаил Жерневский	39
4269	Ментовские войны 9 (9 сезон)	https://kinokrad.co/284647-mentovskie-voyny-9-sezon-2015.html	8	2015	Россия	детектив, криминал	Денис Скворцов	43
4270	Американцы (3 сезон)	https://kinokrad.co/280382-amerikancy-3-sezon-10-seriya.html	8	2015	США	триллер, драма, криминал, детектив	Дэниэл Сакхейм, Адам Аркин, Джон Дал	43
4271	Склифосовский (4 сезон)	https://kinokrad.co/281452-sklifosovskiy-4-sezon-2015.html	8	2015	Россия	драма, мелодрама	Андрей Селиванов, Юлия Краснова	45
4272	Седьмая руна (1 сезон)	https://kinokrad.co/281668-sedmaya-runa-1-sezon-2015.html	7	2015	Россия	триллер, приключения, детектив	Сергей Попов	50
4273	Правосудие (6 сезон)	https://kinokrad.co/280276-pravosudie-6-sezon-10-seriya.html	8	2015	США	боевик, триллер, драма, криминал	Питер Уэрнер, Майкл Диннер, Адам Аркин	43
4274	Люди (1 сезон)	https://kinokrad.co/282361-lyudi-1-sezon-2015.html	9	2015	США, Великобритания	фантастика, драма	Льюис Арнольд, Сэмюэл Донован, Чина Му-Ен	45
4275	Странная парочка (1 сезон)	https://kinokrad.co/280740-strannaya-parochka-4-seriya.html	7	2015	США	комедия	Фил Льюис, Марк Сендроуски	21
4276	Сорвиголова (1 сезон)	https://kinokrad.co/281503-sorvigolova-1-sezon-2015.html	9	2015	США	фантастика, боевик	Фил Абрахам, Стивен С. ДеНайт, Кен Джиротти	60
4277	Пощечина (8 серия)	https://kinokrad.co/280569-poschechina-8-seriya.html	7	2015	США	драма	Лиза Холоденко	43
4278	Укушенная (2 сезон)	https://kinokrad.co/280488-ukushennaya-2-sezon-2015.html	8	2015	Канада	ужасы, фэнтези, драма, детектив	Грант Харви, Т.Дж. Скотт, Джеймс Даннисон	43
4279	Город хищниц 6 сезон	https://kinokrad.co/279960-gorod-hischnic-6-sezon-13-seriya.html	7	2015	США	комедия	Майкл МакДональд, Джон Путч	22
4280	Между двух огней (1-16 серия)	https://kinokrad.co/281272-mezhdu-dvuh-ogney.html	8	2015	Россия	мелодрама	Дмитрий Булин	45
4281	Эпизоды (4 сезон)	https://kinokrad.co/280283-jepizody-4-sezon-9-seriya.html	8	2015	США, Великобритания	комедия	Джим Филд Смит, Иэн Б. МакДональд, Джеймс Гриффитс	28
4282	Между нами, девочками	https://kinokrad.co/281083-mezhdu-nami-devochkami-2015.html	8	2015	Россия, Украина	комедия	Алексей Кирющенко	45
4283	Обитель лжи 4 сезон (12 серия)	https://kinokrad.co/274441-obitel-lzhi-4-sezon-12-seriya.html	8	2015	США	драма, комедия	Стивен Хопкинс, Мэттью Карнахан, Адам Бернштейн	29
4284	Бесстыдники (5 сезон)	https://kinokrad.co/280095-besstydniki-5-sezon-11-seriya.html	9	2015	США	драма, комедия	Марк Майлод, Мими Ледер, Энтони Хемингуэй	55
4285	Трюкач	https://kinokrad.co/281460-tryukach-2015.html	8	2015	Россия	драма, мелодрама	Сергей Щербин	45
4286	Государственный секретарь	https://kinokrad.co/280241-gosudarstvennyy-sekretar-11-seriya.html	8	2015	США	драма	Дэвид Семел, Джереми Уэбб	45
4287	Великая (1 сезон)	https://kinokrad.co/272022-velikaya-1-sezon-2015.html	8	2015	Россия	драма, история	Игорь Зайцев	47
4288	Клуб жён астронавтов (1 сезон)	https://kinokrad.co/272069-klub-zhjon-astronavtov-1-sezon-2015.html	7	2015	США	драма	Дж. Миллер Тобин	43
4289	Стелла (4 сезон)	https://kinokrad.co/281933-stella-4-sezon-2015.html	6	2015	Великобритания	драма, комедия	Эшли Вэй, Тони Дау, Сьюзэн Талли	60
4290	Лесник (3 сезон)	https://kinokrad.co/272432-lesnik-3-2015.html	8	2015	Россия	детектив	Александр Калугин, Борис Казаков	45
4291	Своенравные сосны / Уэйуорд Пайнс (1 сезон)	https://kinokrad.co/272688-ueyuord-payns-1-sezon-2015.html	9	2015	США	драма, детектив	Зал Батманглидж, Тим Хантер, Нимрод Антал	60
4292	Катастрофа (1 сезон)	https://kinokrad.co/283111-katastrofa-1-sezon-2015.html	7	2015	Великобритания	комедия	Бен Тэйлор	30
4293	Без обид (1 сезон)	https://kinokrad.co/283635-bez-obid-1-sezon-2015.html	7	2015	Великобритания	драма, комедия, криминал	Катрин Морсхэд, Гарри Брэдбир, Дэвид Керр	42
4294	Окрыленные (1 сезон)	https://kinokrad.co/284016-okrylennye-1-sezon-2015.html	7	2015	Россия	драма, комедия	Анна Писаненко	39
4295	От заката до рассвета (2 сезон)	https://kinokrad.co/283312-ot-zakata-do-rassveta-2-sezon-2015.html	7	2015	США	боевик, ужасы, криминал, фэнтези	Роберт Родригес, Джо Менендес, Эдуардо Санчес	60
4296	Менты. Улицы разбитых фонарей 14 сезон (36 серия)	https://kinokrad.co/280177-menty.-ulicy-razbityh-fonarey-14-sezon-36-seriya.html	7	2015	Россия	боевик, драма, криминал, приключения	Александр Рогожкин, Дмитрий Светозаров, Кирилл Капица	48
4297	Тест на беременность (1-16 серия)	https://kinokrad.co/280170-test-na-beremennost.html	9	2015	Россия	мелодрама	Михаил Вайнберг	52
4298	Легко ли быть молодым? (1-8 серия)	https://kinokrad.co/280175-legko-li-byt-molodym.html	8	2015	Россия	комедия	Александр Наумов	22
4299	Галавант 1 сезон (8 серия)	https://kinokrad.co/279959-galavant-1-sezon-8-seriya.html	8	2015	США	мюзикл, комедия	Крис Кох, Джон Фортенберри, Джеймс Гриффитс	22
4300	Тайны острова Мако (2 сезон)	https://kinokrad.co/280727-tayny-ostrova-mako-2-sezon-5-seriya.html	9	2015	Австралия	фэнтези, комедия, приключения	Грант Браун, Ивэн Кларри, Tom Hooper	22
4301	Доктор Фостер (1 сезон)	https://kinokrad.co/283609-doktor-foster-1-sezon-2015.html	7	2015	Великобритания	драма	Том Вон, Брюс Гудисон	60
4302	Лучше не бывает (1 сезон)	https://kinokrad.co/283763-luchshe-ne-byvaet-1-sezon-2015.html	5	2015	Россия	комедия, мелодрама	Евгений Семенов	
4303	Кухня (5 сезон)	https://kinokrad.co/281421-kuhnya-5-sezon.html	9	2015	Россия	комедия	Дмитрий Дьяченко, Жора Крыжовников, Антон Федотов	25
4304	Последний из Магикян (5 сезон)	https://kinokrad.co/283385-posledniy-iz-magikyan-5-sezon-online-2015.html	7	2015	Россия	комедия, семейный	Резо Гигинеишвили, Акаки Сахелашвили	24
4305	Бумажки (1 сезон)	https://kinokrad.co/283736-bumazhki-1-sezon-2015.html	7	2015	Россия	мультфильм, комедия	Алексей Миронов, Артур Толстобров, Кирилл Кравченко	5
4306	Вице-президент (4 сезон)	https://kinokrad.co/281664-vice-prezident-4-sezon-2015.html	6	2015	США	комедия	Бекки Мартин, Армандо Ианнуччи, Крис Эддисон	30
4307	Кремниевая долина (2 сезон)	https://kinokrad.co/281622-kremnievaya-dolina-2-sezon-2015.html	8	2015	США	комедия	Майк Джадж, Алек Берг, Тришиа Брок	30
4308	Что живёт внутри (1 сезон)	https://kinokrad.co/282352-chto-zhivjot-vnutri-1-sezon-2015.html	8	2015	США	фэнтези	Роберт Стромберг	13
4309	Эвермор (1 сезон)	https://kinokrad.co/282314-evermor-1-sezon-2015.html	8	2015	США	приключения	Крис Коттэм	30
4310	Агент / Поворот (2 сезон)	https://kinokrad.co/281566-agent-2-sezon-2015.html	7	2015	США	драма, военный	Эгил Эгилссон, Эдвард Бьянчи, С.Дж. Кларксон	60
4311	Я – зомби (1 сезон)	https://kinokrad.co/281082-ya-zombi-1-sezon-3-seriya.html	8	2015	США	ужасы, фантастика, драма, криминал	Майрзи Алмас, Роб Томас	43
4312	В поиске (2 сезон)	https://kinokrad.co/280284-v-poiske-2-sezon-5-seriya.html	7	2015	США	драма, комедия	Эндрю Хэй, Джеми Бэббит, Райан Флек	30
4313	Киллджойс (1 сезон)	https://kinokrad.co/282430-killjoys-1-sezon-2015.html	8	2015	Канада	фантастика	Крис Грисмер, Паоло Барзмен, Энди Микита	60
4314	Парки и зоны отдыха 7 сезон (13 серия)	https://kinokrad.co/280384-parki-i-zony-otdyha-7-sezon-13-seriya.html	6	2015	США	комедия	Дин Холлэнд, Майкл Шур, Трой Миллер	21
4315	Вместе / Единство (8 серия)	https://kinokrad.co/280240-vmeste-edinstvo-8-seriya.html	7	2015	США	комедия	Джей Дюпласс, Марк Дюпласс	30
4316	Безрассудный (13 серия)	https://kinokrad.co/280381-bezrassudnyy-13-seriya.html	7	2015	США	драма, криминал	Джон Грэй, Майкл Аптед, Джошуа Батлер	45
4317	Члены королевской семьи (1 сезон)	https://kinokrad.co/281087-chleny-korolevskoy-semi-1-sezon-3-seriya.html	8	2015	США	драма	Марк Шван	42
4318	Парад смерти (1 сезон)	https://kinokrad.co/282009-parad-smerti-1-sezon-2015.html	9	2015	Япония	аниме, мультфильм, драма	Юдзуру Татикава	23
4319	Убежище (1 сезон)	https://kinokrad.co/282022-ubezhische-1-sezon-2015.html	6	2015	Великобритания	триллер	Марк Эванс	60
4320	Мужчина ищет женщину 1 сезон (10 серия)	https://kinokrad.co/279963-muzhchina-ischet-zhenschinu-1-sezon-10-seriya.html	6	2015	США	комедия	Тим Киркби, Бен Берман, Джонатан Крисел	21
4321	Родословная 1 сезон (1-13 серия)	https://kinokrad.co/281251-rodoslovnaya-1-sezon.html	6	2015	США	триллер, драма	Йохан Ренк, Дэниэл Эттиэс, Саймон Селлан Джоунс	60
4322	Американская одиссея (1 сезон)	https://kinokrad.co/281667-amerikanskaya-odisseya-1-sezon-2015.html	7	2015	США	триллер, драма	Джэми Пэйн, Питер Хортон	60
4323	Взгляд в прошлое (10 серия)	https://kinokrad.co/280544-vzglyad-v-proshloe-10-seriya.html	7	2015	США	драма	Майкл Трим, Брэдли Уолш, Джонатан Фрейкс	30
4324	Орлова и Александров (1-16 серия)	https://kinokrad.co/281221-orlova-i-aleksandrov.html	7	2015	Россия	мелодрама, история, биография	Виталий Москаленко	51
4325	Скандал (4 сезон)	https://kinokrad.co/280504-skandal-4-sezon-8-seriya.html	8	2015	США	триллер, драма	Том Верика, Оливер Бокельберг, Эллисон Лидди	43
4326	Святые из Вегаса (1 сезон)	https://kinokrad.co/281592-svyatye-iz-vegasa-1-sezon-2015.html	7	2015	США	комедия	Брайан Гордон, Фред Сэвэдж	23
4327	Потерянные (2 сезон)	https://kinokrad.co/280230-poteryannye-2-sezon-8-seriya.html	7	2015	Австралия	фантастика, приключения	Даина Рейд, Питер Кастэйрс, Алистер Грирсон	25
4328	Граница времени (23 серия)	https://kinokrad.co/280620-granica-vremeni-23-seriya.html	5	2015	Россия	фантастика, детектив, приключения	Филипп Коршунов, Василий Пичул	49
4329	Женщина в беде (2 сезон)	https://kinokrad.co/281626-zhenschina-v-bede-2-sezon-2015.html	7	2015	Россия	криминал, мелодрама	Алексей Праздников	45
4330	Арчер (6 сезон)	https://kinokrad.co/280199-archer-6-sezon-11-seriya.html	7	2015	США	мультфильм, боевик, комедия	Адам Рид, Брайан Фордни	22
4331	Родина (2015) сериал	https://kinokrad.co/272981-rodina-serials-2015.html	8	2015	Россия	драма	Павел Лунгин	60
4332	Всё только начинается	https://kinokrad.co/281258-vsjo-tolko-nachinaetsya-2015.html	7	2015	Россия	мелодрама	Дмитрий Кузьмин	45
4333	Место преступления: Лас-Вегас 15 сезон (18 серия)	https://kinokrad.co/280799-mesto-prestupleniya-las-vegas-15-sezon-18-seriya.html	8	2015	США, Канада	триллер, драма, криминал, детектив	Кеннет Финк, Ричард Дж. Льюис	43
4334	Пропавший без вести 1 сезон (1-8 серия)	https://kinokrad.co/281402-propavshiy-bez-vesti-1-sezon.html	8	2015	Великобритания, США	драма, криминал, детектив	Том Шенклэнд	60
4335	Фарца (1-8 серия)	https://kinokrad.co/281361-farca.html	8	2015	Россия	драма	Егор Баранов	55
4336	Мистер Селфридж 3 сезон (10 серия)	https://kinokrad.co/280212-mister-selfridzh-3-sezon-10-seriya.html	9	2015	Великобритания	драма	Энтони Бирн, Роб Эванс, Майкл Кейллор	45
4337	Косатка (1-20 серия)	https://kinokrad.co/280182-kosatka.html	8	2015	Россия	детектив, криминал	Илья Максимов	45
4338	Мотель Бейтсов (3 сезон)	https://kinokrad.co/280947-motel-beytsov-3-sezon-4-seriya.html	8	2015	США	триллер, детектив, ужасы	Такер Гейтс, Эдвард Бьянчи, С.Дж. Кларксон	43
4339	Галлиполи (1 сезон)	https://kinokrad.co/281621-gallipoli-1-sezon-2015.html	8	2015	Австралия	военный	Глендин Айвин	
4340	Последний из Магикян (4 сезон)	https://kinokrad.co/280752-posledniy-iz-magikyan-4-sezon-2015-onlayn.html	7	2015	Россия	комедия, семейный	Резо Гигинеишвили, Акаки Сахелашвили	24
4341	Звезда против сил зла (1 сезон)	https://kinokrad.co/280793-zvezda-protiv-sil-zla-3-seriya.html	8	2015	США	мультфильм, фантастика, мистика	Майкл Маллен, Дэвид Вассон	20
4342	Рик и Морти (2 сезон)	https://kinokrad.co/282106-rik-i-morti-2-sezon-2015.html	9	2015	США	мультфильм, комедия, фантастика	Пит Мишелс, Джон Райс, Стивен Сандовал	22
4343	Штамм (2 сезон)	https://kinokrad.co/282715-shtamm-2-sezon-2015.html	9	2015	США	ужасы, триллер, драма	Фил Абрахам, Питер Уэллер, Дэвид Семел	43
4344	Доминион (2 сезон)	https://kinokrad.co/282716-dominion-2-sezon-2015.html	8	2015	США	ужасы, фантастика, фэнтези, боевик, драма	Алекс Холмс, Рик Джейкобсон, Ларри Шоу	43
4345	Мастера секса (3 сезон)	https://kinokrad.co/283540-mastera-seksa-3-sezon-2015.html	7	2015	США	драма	Майкл Аптед, Адам Аркин, Джереми Уэбб	43
4346	Измены (1 сезон)	https://kinokrad.co/283532-izmeny-1-sezon-2015.html	9	2015	Россия	мелодрама	Вадим Перельман	48
4347	Альфа-дом (2 сезон)	https://kinokrad.co/271577-alfa-dom-2-sezon-10-seriya.html	6	2015	США	драма, комедия	Адам Бернштейн	25
4348	Случайная вакансия (3 серия)	https://kinokrad.co/280626-sluchaynaya-vakansiya-3-seriya.html	7	2015	Великобритания	драма, комедия	Джонни Кэмпбелл	60
4349	Алхимик. Эликсир Фауста (1-12 серия)	https://kinokrad.co/280726-alhimik.-eliksir-fausta.html	7	2015	Россия	детектив, мелодрама	Александр Муратов	53
4350	Выстрел (1-12 серия)	https://kinokrad.co/280498-vystrel.html	8	2015	Россия	драма, спорт	Сергей Коротаев	50
4351	Агент Картер (8 серия)	https://kinokrad.co/280285-agent-karter-8-seriya.html	8	2015	США	фантастика, боевик, приключения	Стивен Крегг, Луис Д’Эспозито, Питер Лето	42
4352	Анжелика 2 сезон (1-20 серия)	https://kinokrad.co/280147-anzhelika-2-sezon.html	8	2015	Россия	комедия	Радда Новикова, Антон Федотов, Валерия Ивановская	20
4353	Внутри девятого номера (2 сезон)	https://kinokrad.co/281393-vnutri-devyatogo-nomera-2-sezon-2-seriya.html	7	2015	Великобритания	комедия, детектив	Дэвид Керр, Гильем Моралес, Дэн Зефф	30
4354	Раскопки (1 сезон)	https://kinokrad.co/281461-raskopki-1-sezon-2015.html	7	2015	США	триллер, драма, детектив	Гидеон Рафф, С.Дж. Кларксон	60
4355	Закон каменных джунглей 1 сезон (1-8 серия)	https://kinokrad.co/280919-zakon-kamennyh-dzhungley-1-sezon.html	9	2015	Россия	драма, криминал	Игорь Хомский, Иван Бурлаков	43
4356	Луна (1-30 серия)	https://kinokrad.co/280290-luna.html	8	2015	Россия	детектив, драма, фэнтези	Николай Саркисов	45
4357	Приятный на вид (10 серия)	https://kinokrad.co/280214-priyatnyy-na-vid-10-seriya.html	8	2015	США	триллер, драма, криминал, детектив	Рассел Малкэй, Кэтрин Хардвик	40
4358	Лузеры / Хор 6 сезон (13 серия)	https://kinokrad.co/280266-luzery-hor-6-sezon-13-seriya.html	7	2015	США	мюзикл, драма, комедия, музыка	Брэд Фалчук, Брэдли Букер, Эрик Столц	43
4359	Молодая гвардия	https://kinokrad.co/281849-molodaya-gvardiya-2015.html	8	2015	Россия	военный, драма	Леонид Пляскин	47
4360	Особо тяжкие преступления (3 сезон)	https://kinokrad.co/272931-osobo-tyazhkie-prestupleniya-3-sezon-2015.html	8	2015	США	драма, криминал, детектив	Дэвид МакУиртер, Стив Робин, Майкл М. Робин	43
4361	Истребители: Последний бой (2 сезон)	https://kinokrad.co/281845-istrebiteli-posledniy-boy-2-sezon-2015.html	8	2015	Россия	военный, драма	Зиновий Ройзман	50
4362	Одиночки с причудами (1 сезон)	https://kinokrad.co/281462-odinochki-s-prichudami-1-sezon-2015.html	7	2015	США	комедия	Джейк Кэздан, Роберт Коэн, Реджинальд Хадлин	25
4363	Это любовь	https://kinokrad.co/281148-jeto-lyubov-8-seriya.html	8	2015	Россия	комедия	Александр Богданенко	24
4364	Тайны и ложь	https://kinokrad.co/281222-tayny-i-lozh-2015.html	9	2015	США	драма, криминал	Тимоти Басфилд, Чарльз МакДугалл, Ник Копус	45
4365	Внутри Эми Шумер 1 сезон (9 серия)	https://kinokrad.co/280380-vnutri-jemi-shumer-1-sezon-9-seriya.html	6	2015	США	комедия	Нил Бреннан, Стивен К. Цутида, Райан МакФол	20
4366	Несгибаемая Кимми Шмидт 1 сезон (13 серия)	https://kinokrad.co/281056-nesgibaemaya-kimmi-shmidt-1-sezon-13-seriya.html	7	2015	США	комедия	Тристрам Шапиро, Майкл Энглер	30
4367	Тайны миллиардера (6 серия)	https://kinokrad.co/280912-tayny-milliardera-6-seriya.html	7	2015	США	документальный	Эндрю Джареки	50
4368	В Филадельфии всегда солнечно 10 сезон (10 серия)	https://kinokrad.co/272460-v-filadelfii-vsegda-solnechno-10-sezon-10-seriya.html	6	2015	США	комедия	Мэтт Шекман, Фред Сэвэдж, Дэниэл Эттиэс	22
4369	Смерть в раю 4 сезон (8 серия)	https://kinokrad.co/280215-smert-v-rayu-4-sezon-8-seriya.html	7	2015	Великобритания, Франция	триллер, драма, криминал, детектив	Олрик Райли, Роджер Голдби, Пол Харрисон	58
4370	Папа на вырост (1-20 серия)	https://kinokrad.co/280751-papa-na-vyrost.html	8	2015	Россия	комедия, семейный	Радда Новикова	24
4371	Взрыв из прошлого (1-4 серия)	https://kinokrad.co/281053-vzryv-iz-proshlogo.html	7	2015	Россия	детектив	Андрей Иванов	45
4372	Пропавший жених (1-2 серия)	https://kinokrad.co/281050-propavshiy-zhenih.html	7	2015	Россия	криминал, мелодрама	Сергей Кешишев	90
4373	Темное дитя 1 сезон (1-10 серия)	https://kinokrad.co/272746-temnoe-ditya-1-sezon-.html	8	2015	Канада, США	фантастика, боевик, драма	Джон Фоусет, Т.Дж. Скотт, Дэвид Фрэйзи	43
4374	Слепая (1 сезон)	https://kinokrad.co/283393-slepaya-1-sezon-2014.html	8	2014	Россия	драма	Кира Мещерякова, Алина Поличук, Дмитрий Ющенко	24
4375	Опасный Генри (3  сезон)	https://kinokrad.co/317978-opasnyy-genri-3-sezon-2016.html	7	2014	США	фантастика, боевик, комедия, семейный	Стив Хофер, Адам Вайсман, Нэйтан Кресс	30
4376	Очевидное (2 сезон)	https://kinokrad.co/272207-ochevidnoe-2.html	4	2014		комедия	Джилл Солоуэй	
4377	Больница Никербокер 1 сезон (10 серия)	https://kinokrad.co/272176-bolnica-nikerboker-1-sezon-10-seriya.html	9	2014	США	драма	Стивен Содерберг	
4378	Гранчестер (3 сезон)	https://kinokrad.co/323411-granchester-3-sezon.html	8	2014	Великобритания	драма, криминал, детектив	Тим Файвелл, Эдвард Беннет, Гарри Брэдбир	45
4379	Банши 2 сезон (1-10 серия)	https://kinokrad.co/2974-banshi-2-sezon.html	9	2014	США	боевик, триллер, драма, криминал, детектив	Грег Яйтанс, Оле Кристиан Мадсен	43
4380	Оставленные (1-10 серия)	https://kinokrad.co/272195-ostavlennye.html	7	2014	США	фэнтези, драма, детектив	Мими Ледер, Питер Берг, Карл Франклин	60
4381	Родина (4 сезон)	https://kinokrad.co/272377-rodina-4-sezon-12-seriya.html	8	2014	США	триллер, драма, детектив	Майкл Куэста, Лесли Линка Глаттер, Кларк Джонсон	55
4382	Фарго 1 сезон (1-10 серия)	https://kinokrad.co/281223-fargo-1-sezon.html	9	2014	США	триллер, драма, криминал	Рэндолл Айнхорн, Адам Бернштейн, Колин Бакси	53
4383	Свидетели (1 сезон)	https://kinokrad.co/328859-svideteli-1-sezon.html	8	2014	Франция, Бельгия	криминал, детектив	Эрве Адмар, Эм Пинк Кристофало	52
4384	Американская история ужасов (3 сезон)	https://kinokrad.co/335131-amerikanskaya-istoriya-uzhasov-3-sezon.html	7	2014	США	ужасы, триллер, драма	Брэдли Букер, Альфонсо Гомес-Рехон, Майкл Аппендаль	43
4385	Сверхъестественное (10 сезон)	https://kinokrad.co/277210-sverhestestvennoe-10-sezon-17-seriya.html	9	2014	США	ужасы, фэнтези, триллер, драма, детектив, мистика	Роберт Сингер, Филип Сгриккиа	43
4386	Карточный домик 2 сезон (1-13 серия)	https://kinokrad.co/281022-kartochnyy-domik-2-sezon.html	8	2014	США	драма	Джеймс Фоули, Джон Дэвид Коулз, Карл Франклин	50
4387	Екатерина (1 сезон)	https://kinokrad.co/324986-ekaterina-1-sezon.html	6	2014	Россия	драма, мелодрама	Александр Баранов, Рамиль Сабитов	44
4388	Балабол / Одинокий волк Саня (1 сезон)	https://kinokrad.co/329231-balabol-odinokiy-volk-sanya-1-sezon.html	5	2014	Россия	криминал	Владимир Мельник	52
4389	Правильная жена (6 сезон)	https://kinokrad.co/272437-pravilnaya-zhena-6-sezon.html	8	2014	США	драма, криминал, детектив	Розмари Родригез, Майкл Цинберг, Брук Кеннеди	43
4390	Ходячие мертвецы (5 сезон)	https://kinokrad.co/272258-hodyachie-mertvecy-5-sezone-16-seriya-18-04.html	9	2014	США	ужасы, триллер, драма	Эрнест Р. Дикерсон, Грег Никотеро, Гай Ферленд	43
4391	Девочки (3 сезон)	https://kinokrad.co/284913-devochki-3-sezon-2014.html	6	2014	США	драма, комедия	Лина Данэм, Джесси Перец, Ричард Шепард	30
4392	Власть в ночном городе (1 сезон)	https://kinokrad.co/304949-vlast-v-nochnom-gorode-1-sezon.html	7	2014	США	драма, криминал	Сэнфорд Букставер, Джордж Тиллман мл., Майкл Дж. Бассетт	50
4393	Босх (4 сезон)	https://kinokrad.co/326780-bosh-4-sezon.html	7	2014	США	драма, криминал	Алекс Закржевский, Эрнест Р. Дикерсон, Кевин Даулинг	51
4394	Когда зовёт сердце (6 сезон)	https://kinokrad.co/336172-kogda-zovet-serdce-6-sezon.html	6	2014	США	драма	Нилл Фернли, Питер ДеЛуис, Майк Рол	43
4395	Воскресший Эртугрул (1 сезон)	https://kinokrad.co/308699-voskresshiy-jertugrul-1-sezon-2014.html	8	2014	Турция	боевик, драма, история	Метин Гюнай, Akif Özkan, Хакан Арслан	120
4396	В надежде на спасение (3 сезон)	https://kinokrad.co/272615-v-nadezhde-na-spasenie-3-sezon-2014.html	7	2014	Канада	фэнтези, драма, мистика	Дэвид Уэллингтон, Джон Фоусет, Келли Макин	44
4397	София Прекрасная (2 сезон)	https://kinokrad.co/317998-sofiya-prekrasnaya-2-sezon-2014.html	7	2014	США	мультфильм, мюзикл, фэнтези, семейный	Джэми Митчелл, Ларри Лэйчлитер, Мирчи Мантта	30
4398	Завербован (1 сезон)	https://kinokrad.co/256130-zaverbovan.html	7	2014	США	комедия	Фил Трэйл, Фред Госс	22
4399	Сирены (1 сезон)	https://kinokrad.co/271700-sireny-1-sezon-2014.html	7	2014	США	комедия	Майкл Блиден, Джейсон Энслер, Джон Фортенберри	22
4400	Такая работа (2 сезон)	https://kinokrad.co/303686-takaya-rabota-2-sezon-2015.html	5	2014	Россия	детектив	Владимир Койфман, Сергей Мезенцев, Дмитрий Изместьев	
4401	Доктор Фостер (1 сезон)	https://kinokrad.co/283609-doktor-foster-1-sezon-2015.html	7	2015	Великобритания	драма	Том Вон, Брюс Гудисон	60
4402	Лучше не бывает (1 сезон)	https://kinokrad.co/283763-luchshe-ne-byvaet-1-sezon-2015.html	5	2015	Россия	комедия, мелодрама	Евгений Семенов	
4403	Кухня (5 сезон)	https://kinokrad.co/281421-kuhnya-5-sezon.html	9	2015	Россия	комедия	Дмитрий Дьяченко, Жора Крыжовников, Антон Федотов	25
4404	Последний из Магикян (5 сезон)	https://kinokrad.co/283385-posledniy-iz-magikyan-5-sezon-online-2015.html	7	2015	Россия	комедия, семейный	Резо Гигинеишвили, Акаки Сахелашвили	24
4405	Бумажки (1 сезон)	https://kinokrad.co/283736-bumazhki-1-sezon-2015.html	7	2015	Россия	мультфильм, комедия	Алексей Миронов, Артур Толстобров, Кирилл Кравченко	5
4406	Вице-президент (4 сезон)	https://kinokrad.co/281664-vice-prezident-4-sezon-2015.html	6	2015	США	комедия	Бекки Мартин, Армандо Ианнуччи, Крис Эддисон	30
4407	Кремниевая долина (2 сезон)	https://kinokrad.co/281622-kremnievaya-dolina-2-sezon-2015.html	8	2015	США	комедия	Майк Джадж, Алек Берг, Тришиа Брок	30
4408	Что живёт внутри (1 сезон)	https://kinokrad.co/282352-chto-zhivjot-vnutri-1-sezon-2015.html	8	2015	США	фэнтези	Роберт Стромберг	13
4409	Эвермор (1 сезон)	https://kinokrad.co/282314-evermor-1-sezon-2015.html	8	2015	США	приключения	Крис Коттэм	30
4410	Агент / Поворот (2 сезон)	https://kinokrad.co/281566-agent-2-sezon-2015.html	7	2015	США	драма, военный	Эгил Эгилссон, Эдвард Бьянчи, С.Дж. Кларксон	60
4411	Я – зомби (1 сезон)	https://kinokrad.co/281082-ya-zombi-1-sezon-3-seriya.html	8	2015	США	ужасы, фантастика, драма, криминал	Майрзи Алмас, Роб Томас	43
4412	В поиске (2 сезон)	https://kinokrad.co/280284-v-poiske-2-sezon-5-seriya.html	7	2015	США	драма, комедия	Эндрю Хэй, Джеми Бэббит, Райан Флек	30
4413	Киллджойс (1 сезон)	https://kinokrad.co/282430-killjoys-1-sezon-2015.html	8	2015	Канада	фантастика	Крис Грисмер, Паоло Барзмен, Энди Микита	60
4414	Парки и зоны отдыха 7 сезон (13 серия)	https://kinokrad.co/280384-parki-i-zony-otdyha-7-sezon-13-seriya.html	6	2015	США	комедия	Дин Холлэнд, Майкл Шур, Трой Миллер	21
4415	Вместе / Единство (8 серия)	https://kinokrad.co/280240-vmeste-edinstvo-8-seriya.html	7	2015	США	комедия	Джей Дюпласс, Марк Дюпласс	30
4416	Безрассудный (13 серия)	https://kinokrad.co/280381-bezrassudnyy-13-seriya.html	7	2015	США	драма, криминал	Джон Грэй, Майкл Аптед, Джошуа Батлер	45
4417	Члены королевской семьи (1 сезон)	https://kinokrad.co/281087-chleny-korolevskoy-semi-1-sezon-3-seriya.html	8	2015	США	драма	Марк Шван	42
4418	Парад смерти (1 сезон)	https://kinokrad.co/282009-parad-smerti-1-sezon-2015.html	9	2015	Япония	аниме, мультфильм, драма	Юдзуру Татикава	23
4419	Убежище (1 сезон)	https://kinokrad.co/282022-ubezhische-1-sezon-2015.html	6	2015	Великобритания	триллер	Марк Эванс	60
4420	Мужчина ищет женщину 1 сезон (10 серия)	https://kinokrad.co/279963-muzhchina-ischet-zhenschinu-1-sezon-10-seriya.html	6	2015	США	комедия	Тим Киркби, Бен Берман, Джонатан Крисел	21
4421	Родословная 1 сезон (1-13 серия)	https://kinokrad.co/281251-rodoslovnaya-1-sezon.html	6	2015	США	триллер, драма	Йохан Ренк, Дэниэл Эттиэс, Саймон Селлан Джоунс	60
4422	Американская одиссея (1 сезон)	https://kinokrad.co/281667-amerikanskaya-odisseya-1-sezon-2015.html	7	2015	США	триллер, драма	Джэми Пэйн, Питер Хортон	60
4423	Взгляд в прошлое (10 серия)	https://kinokrad.co/280544-vzglyad-v-proshloe-10-seriya.html	7	2015	США	драма	Майкл Трим, Брэдли Уолш, Джонатан Фрейкс	30
4424	Орлова и Александров (1-16 серия)	https://kinokrad.co/281221-orlova-i-aleksandrov.html	7	2015	Россия	мелодрама, история, биография	Виталий Москаленко	51
4425	Скандал (4 сезон)	https://kinokrad.co/280504-skandal-4-sezon-8-seriya.html	8	2015	США	триллер, драма	Том Верика, Оливер Бокельберг, Эллисон Лидди	43
4426	Святые из Вегаса (1 сезон)	https://kinokrad.co/281592-svyatye-iz-vegasa-1-sezon-2015.html	7	2015	США	комедия	Брайан Гордон, Фред Сэвэдж	23
4427	Потерянные (2 сезон)	https://kinokrad.co/280230-poteryannye-2-sezon-8-seriya.html	7	2015	Австралия	фантастика, приключения	Даина Рейд, Питер Кастэйрс, Алистер Грирсон	25
4428	Граница времени (23 серия)	https://kinokrad.co/280620-granica-vremeni-23-seriya.html	5	2015	Россия	фантастика, детектив, приключения	Филипп Коршунов, Василий Пичул	49
4429	Женщина в беде (2 сезон)	https://kinokrad.co/281626-zhenschina-v-bede-2-sezon-2015.html	7	2015	Россия	криминал, мелодрама	Алексей Праздников	45
4430	Арчер (6 сезон)	https://kinokrad.co/280199-archer-6-sezon-11-seriya.html	7	2015	США	мультфильм, боевик, комедия	Адам Рид, Брайан Фордни	22
4431	Родина (2015) сериал	https://kinokrad.co/272981-rodina-serials-2015.html	8	2015	Россия	драма	Павел Лунгин	60
4432	Всё только начинается	https://kinokrad.co/281258-vsjo-tolko-nachinaetsya-2015.html	7	2015	Россия	мелодрама	Дмитрий Кузьмин	45
4433	Место преступления: Лас-Вегас 15 сезон (18 серия)	https://kinokrad.co/280799-mesto-prestupleniya-las-vegas-15-sezon-18-seriya.html	8	2015	США, Канада	триллер, драма, криминал, детектив	Кеннет Финк, Ричард Дж. Льюис	43
4434	Пропавший без вести 1 сезон (1-8 серия)	https://kinokrad.co/281402-propavshiy-bez-vesti-1-sezon.html	8	2015	Великобритания, США	драма, криминал, детектив	Том Шенклэнд	60
4435	Фарца (1-8 серия)	https://kinokrad.co/281361-farca.html	8	2015	Россия	драма	Егор Баранов	55
4436	Мистер Селфридж 3 сезон (10 серия)	https://kinokrad.co/280212-mister-selfridzh-3-sezon-10-seriya.html	9	2015	Великобритания	драма	Энтони Бирн, Роб Эванс, Майкл Кейллор	45
4437	Косатка (1-20 серия)	https://kinokrad.co/280182-kosatka.html	8	2015	Россия	детектив, криминал	Илья Максимов	45
4438	Мотель Бейтсов (3 сезон)	https://kinokrad.co/280947-motel-beytsov-3-sezon-4-seriya.html	8	2015	США	триллер, детектив, ужасы	Такер Гейтс, Эдвард Бьянчи, С.Дж. Кларксон	43
4439	Галлиполи (1 сезон)	https://kinokrad.co/281621-gallipoli-1-sezon-2015.html	8	2015	Австралия	военный	Глендин Айвин	
4440	Последний из Магикян (4 сезон)	https://kinokrad.co/280752-posledniy-iz-magikyan-4-sezon-2015-onlayn.html	7	2015	Россия	комедия, семейный	Резо Гигинеишвили, Акаки Сахелашвили	24
4441	Звезда против сил зла (1 сезон)	https://kinokrad.co/280793-zvezda-protiv-sil-zla-3-seriya.html	8	2015	США	мультфильм, фантастика, мистика	Майкл Маллен, Дэвид Вассон	20
4442	Рик и Морти (2 сезон)	https://kinokrad.co/282106-rik-i-morti-2-sezon-2015.html	9	2015	США	мультфильм, комедия, фантастика	Пит Мишелс, Джон Райс, Стивен Сандовал	22
4443	Штамм (2 сезон)	https://kinokrad.co/282715-shtamm-2-sezon-2015.html	9	2015	США	ужасы, триллер, драма	Фил Абрахам, Питер Уэллер, Дэвид Семел	43
4444	Доминион (2 сезон)	https://kinokrad.co/282716-dominion-2-sezon-2015.html	8	2015	США	ужасы, фантастика, фэнтези, боевик, драма	Алекс Холмс, Рик Джейкобсон, Ларри Шоу	43
4445	Мастера секса (3 сезон)	https://kinokrad.co/283540-mastera-seksa-3-sezon-2015.html	7	2015	США	драма	Майкл Аптед, Адам Аркин, Джереми Уэбб	43
4446	Измены (1 сезон)	https://kinokrad.co/283532-izmeny-1-sezon-2015.html	9	2015	Россия	мелодрама	Вадим Перельман	48
4447	Альфа-дом (2 сезон)	https://kinokrad.co/271577-alfa-dom-2-sezon-10-seriya.html	6	2015	США	драма, комедия	Адам Бернштейн	25
4448	Случайная вакансия (3 серия)	https://kinokrad.co/280626-sluchaynaya-vakansiya-3-seriya.html	7	2015	Великобритания	драма, комедия	Джонни Кэмпбелл	60
4449	Алхимик. Эликсир Фауста (1-12 серия)	https://kinokrad.co/280726-alhimik.-eliksir-fausta.html	7	2015	Россия	детектив, мелодрама	Александр Муратов	53
4450	Выстрел (1-12 серия)	https://kinokrad.co/280498-vystrel.html	8	2015	Россия	драма, спорт	Сергей Коротаев	50
4451	Агент Картер (8 серия)	https://kinokrad.co/280285-agent-karter-8-seriya.html	8	2015	США	фантастика, боевик, приключения	Стивен Крегг, Луис Д’Эспозито, Питер Лето	42
4452	Анжелика 2 сезон (1-20 серия)	https://kinokrad.co/280147-anzhelika-2-sezon.html	8	2015	Россия	комедия	Радда Новикова, Антон Федотов, Валерия Ивановская	20
4453	Внутри девятого номера (2 сезон)	https://kinokrad.co/281393-vnutri-devyatogo-nomera-2-sezon-2-seriya.html	7	2015	Великобритания	комедия, детектив	Дэвид Керр, Гильем Моралес, Дэн Зефф	30
4454	Раскопки (1 сезон)	https://kinokrad.co/281461-raskopki-1-sezon-2015.html	7	2015	США	триллер, драма, детектив	Гидеон Рафф, С.Дж. Кларксон	60
4455	Закон каменных джунглей 1 сезон (1-8 серия)	https://kinokrad.co/280919-zakon-kamennyh-dzhungley-1-sezon.html	9	2015	Россия	драма, криминал	Игорь Хомский, Иван Бурлаков	43
4456	Луна (1-30 серия)	https://kinokrad.co/280290-luna.html	8	2015	Россия	детектив, драма, фэнтези	Николай Саркисов	45
4457	Приятный на вид (10 серия)	https://kinokrad.co/280214-priyatnyy-na-vid-10-seriya.html	8	2015	США	триллер, драма, криминал, детектив	Рассел Малкэй, Кэтрин Хардвик	40
4458	Лузеры / Хор 6 сезон (13 серия)	https://kinokrad.co/280266-luzery-hor-6-sezon-13-seriya.html	7	2015	США	мюзикл, драма, комедия, музыка	Брэд Фалчук, Брэдли Букер, Эрик Столц	43
4459	Молодая гвардия	https://kinokrad.co/281849-molodaya-gvardiya-2015.html	8	2015	Россия	военный, драма	Леонид Пляскин	47
4460	Особо тяжкие преступления (3 сезон)	https://kinokrad.co/272931-osobo-tyazhkie-prestupleniya-3-sezon-2015.html	8	2015	США	драма, криминал, детектив	Дэвид МакУиртер, Стив Робин, Майкл М. Робин	43
4461	Истребители: Последний бой (2 сезон)	https://kinokrad.co/281845-istrebiteli-posledniy-boy-2-sezon-2015.html	8	2015	Россия	военный, драма	Зиновий Ройзман	50
4462	Одиночки с причудами (1 сезон)	https://kinokrad.co/281462-odinochki-s-prichudami-1-sezon-2015.html	7	2015	США	комедия	Джейк Кэздан, Роберт Коэн, Реджинальд Хадлин	25
4463	Это любовь	https://kinokrad.co/281148-jeto-lyubov-8-seriya.html	8	2015	Россия	комедия	Александр Богданенко	24
4464	Тайны и ложь	https://kinokrad.co/281222-tayny-i-lozh-2015.html	9	2015	США	драма, криминал	Тимоти Басфилд, Чарльз МакДугалл, Ник Копус	45
4465	Внутри Эми Шумер 1 сезон (9 серия)	https://kinokrad.co/280380-vnutri-jemi-shumer-1-sezon-9-seriya.html	6	2015	США	комедия	Нил Бреннан, Стивен К. Цутида, Райан МакФол	20
4466	Несгибаемая Кимми Шмидт 1 сезон (13 серия)	https://kinokrad.co/281056-nesgibaemaya-kimmi-shmidt-1-sezon-13-seriya.html	7	2015	США	комедия	Тристрам Шапиро, Майкл Энглер	30
4467	Тайны миллиардера (6 серия)	https://kinokrad.co/280912-tayny-milliardera-6-seriya.html	7	2015	США	документальный	Эндрю Джареки	50
4468	В Филадельфии всегда солнечно 10 сезон (10 серия)	https://kinokrad.co/272460-v-filadelfii-vsegda-solnechno-10-sezon-10-seriya.html	6	2015	США	комедия	Мэтт Шекман, Фред Сэвэдж, Дэниэл Эттиэс	22
4469	Смерть в раю 4 сезон (8 серия)	https://kinokrad.co/280215-smert-v-rayu-4-sezon-8-seriya.html	7	2015	Великобритания, Франция	триллер, драма, криминал, детектив	Олрик Райли, Роджер Голдби, Пол Харрисон	58
4470	Папа на вырост (1-20 серия)	https://kinokrad.co/280751-papa-na-vyrost.html	8	2015	Россия	комедия, семейный	Радда Новикова	24
4471	Взрыв из прошлого (1-4 серия)	https://kinokrad.co/281053-vzryv-iz-proshlogo.html	7	2015	Россия	детектив	Андрей Иванов	45
4472	Пропавший жених (1-2 серия)	https://kinokrad.co/281050-propavshiy-zhenih.html	7	2015	Россия	криминал, мелодрама	Сергей Кешишев	90
4473	Темное дитя 1 сезон (1-10 серия)	https://kinokrad.co/272746-temnoe-ditya-1-sezon-.html	8	2015	Канада, США	фантастика, боевик, драма	Джон Фоусет, Т.Дж. Скотт, Дэвид Фрэйзи	43
4474	Слепая (1 сезон)	https://kinokrad.co/283393-slepaya-1-sezon-2014.html	8	2014	Россия	драма	Кира Мещерякова, Алина Поличук, Дмитрий Ющенко	24
4475	Опасный Генри (3  сезон)	https://kinokrad.co/317978-opasnyy-genri-3-sezon-2016.html	7	2014	США	фантастика, боевик, комедия, семейный	Стив Хофер, Адам Вайсман, Нэйтан Кресс	30
4476	Очевидное (2 сезон)	https://kinokrad.co/272207-ochevidnoe-2.html	4	2014		комедия	Джилл Солоуэй	
4477	Больница Никербокер 1 сезон (10 серия)	https://kinokrad.co/272176-bolnica-nikerboker-1-sezon-10-seriya.html	9	2014	США	драма	Стивен Содерберг	
4478	Гранчестер (3 сезон)	https://kinokrad.co/323411-granchester-3-sezon.html	8	2014	Великобритания	драма, криминал, детектив	Тим Файвелл, Эдвард Беннет, Гарри Брэдбир	45
4479	Банши 2 сезон (1-10 серия)	https://kinokrad.co/2974-banshi-2-sezon.html	9	2014	США	боевик, триллер, драма, криминал, детектив	Грег Яйтанс, Оле Кристиан Мадсен	43
4480	Оставленные (1-10 серия)	https://kinokrad.co/272195-ostavlennye.html	7	2014	США	фэнтези, драма, детектив	Мими Ледер, Питер Берг, Карл Франклин	60
4481	Родина (4 сезон)	https://kinokrad.co/272377-rodina-4-sezon-12-seriya.html	8	2014	США	триллер, драма, детектив	Майкл Куэста, Лесли Линка Глаттер, Кларк Джонсон	55
4482	Фарго 1 сезон (1-10 серия)	https://kinokrad.co/281223-fargo-1-sezon.html	9	2014	США	триллер, драма, криминал	Рэндолл Айнхорн, Адам Бернштейн, Колин Бакси	53
4483	Свидетели (1 сезон)	https://kinokrad.co/328859-svideteli-1-sezon.html	8	2014	Франция, Бельгия	криминал, детектив	Эрве Адмар, Эм Пинк Кристофало	52
4484	Американская история ужасов (3 сезон)	https://kinokrad.co/335131-amerikanskaya-istoriya-uzhasov-3-sezon.html	7	2014	США	ужасы, триллер, драма	Брэдли Букер, Альфонсо Гомес-Рехон, Майкл Аппендаль	43
4485	Сверхъестественное (10 сезон)	https://kinokrad.co/277210-sverhestestvennoe-10-sezon-17-seriya.html	9	2014	США	ужасы, фэнтези, триллер, драма, детектив, мистика	Роберт Сингер, Филип Сгриккиа	43
4486	Карточный домик 2 сезон (1-13 серия)	https://kinokrad.co/281022-kartochnyy-domik-2-sezon.html	8	2014	США	драма	Джеймс Фоули, Джон Дэвид Коулз, Карл Франклин	50
4487	Екатерина (1 сезон)	https://kinokrad.co/324986-ekaterina-1-sezon.html	6	2014	Россия	драма, мелодрама	Александр Баранов, Рамиль Сабитов	44
4488	Балабол / Одинокий волк Саня (1 сезон)	https://kinokrad.co/329231-balabol-odinokiy-volk-sanya-1-sezon.html	5	2014	Россия	криминал	Владимир Мельник	52
4489	Правильная жена (6 сезон)	https://kinokrad.co/272437-pravilnaya-zhena-6-sezon.html	8	2014	США	драма, криминал, детектив	Розмари Родригез, Майкл Цинберг, Брук Кеннеди	43
4490	Ходячие мертвецы (5 сезон)	https://kinokrad.co/272258-hodyachie-mertvecy-5-sezone-16-seriya-18-04.html	9	2014	США	ужасы, триллер, драма	Эрнест Р. Дикерсон, Грег Никотеро, Гай Ферленд	43
4491	Девочки (3 сезон)	https://kinokrad.co/284913-devochki-3-sezon-2014.html	6	2014	США	драма, комедия	Лина Данэм, Джесси Перец, Ричард Шепард	30
4492	Власть в ночном городе (1 сезон)	https://kinokrad.co/304949-vlast-v-nochnom-gorode-1-sezon.html	7	2014	США	драма, криминал	Сэнфорд Букставер, Джордж Тиллман мл., Майкл Дж. Бассетт	50
4493	Босх (4 сезон)	https://kinokrad.co/326780-bosh-4-sezon.html	7	2014	США	драма, криминал	Алекс Закржевский, Эрнест Р. Дикерсон, Кевин Даулинг	51
4494	Когда зовёт сердце (6 сезон)	https://kinokrad.co/336172-kogda-zovet-serdce-6-sezon.html	6	2014	США	драма	Нилл Фернли, Питер ДеЛуис, Майк Рол	43
4495	Воскресший Эртугрул (1 сезон)	https://kinokrad.co/308699-voskresshiy-jertugrul-1-sezon-2014.html	8	2014	Турция	боевик, драма, история	Метин Гюнай, Akif Özkan, Хакан Арслан	120
4496	В надежде на спасение (3 сезон)	https://kinokrad.co/272615-v-nadezhde-na-spasenie-3-sezon-2014.html	7	2014	Канада	фэнтези, драма, мистика	Дэвид Уэллингтон, Джон Фоусет, Келли Макин	44
4497	София Прекрасная (2 сезон)	https://kinokrad.co/317998-sofiya-prekrasnaya-2-sezon-2014.html	7	2014	США	мультфильм, мюзикл, фэнтези, семейный	Джэми Митчелл, Ларри Лэйчлитер, Мирчи Мантта	30
4498	Завербован (1 сезон)	https://kinokrad.co/256130-zaverbovan.html	7	2014	США	комедия	Фил Трэйл, Фред Госс	22
4499	Сирены (1 сезон)	https://kinokrad.co/271700-sireny-1-sezon-2014.html	7	2014	США	комедия	Майкл Блиден, Джейсон Энслер, Джон Фортенберри	22
4500	Такая работа (2 сезон)	https://kinokrad.co/303686-takaya-rabota-2-sezon-2015.html	5	2014	Россия	детектив	Владимир Койфман, Сергей Мезенцев, Дмитрий Изместьев	
4501	Такая работа (1 сезон)	https://kinokrad.co/303683-takaya-rabota-1-sezon-2014.html	3	2014	Россия	детектив	Владимир Койфман, Сергей Мезенцев, Дмитрий Изместьев	
4502	Красные дубы (1 сезон)	https://kinokrad.co/308510-krasnye-duby-1-sezon-2014.html	8	2014	США	комедия	Дэвид Гордон Грин, Хэл Хартли, Эндрю Флеминг	25
4503	Золото Одина (1 сезон)	https://kinokrad.co/308198-zoloto-odina-1-sezon-2014.html	7	2014	Норвегия	криминал	Атле Кнудсен	
4504	Район Эль Принсипе (1 сезон)	https://kinokrad.co/295267-rayon-jel-prinsipe-1-sezon-2014.html	6	2014	Испания	триллер, драма	Iñaki Mercero, Хавьер Кинтас, Хосе Рамос Паино	
4505	Комплексная сделка / Пакетное соглашение (2 сезон)	https://kinokrad.co/318290-kompleksnaya-sdelka-paketnoe-soglashenie-2-sezon-2014.html	6	2014	Канада	комедия	Джонатан А. Розенбаум, Кит Сэмплз, Адам Вайсман	21
4506	Морская полиция: Новый Орлеан (1 сезон)	https://kinokrad.co/322675-morskaya-policiya-novyy-orlean-1-sezon.html	8	2014	США	драма, криминал	Джеймс Хейман, Тони Уормби, Майкл Цинберг	42
4507	Обед в пятницу вечером (3 сезон)	https://kinokrad.co/301859-obed-v-pyatnicu-vecherom-3-sezon-2014.html	6	2014	Великобритания	комедия	Мартин Деннис, Стив Бенделак	22
4508	Когда зовёт сердце (1 сезон)	https://kinokrad.co/320830-kogda-zovet-serdce-1-sezon-2014.html	6	2014	США	драма	Нилл Фернли, Майкл Лэндон мл., Мартин Вуд	43
4509	Однажды в сказке (4 сезон)	https://kinokrad.co/16016-odnazhdy-v-skazke-4-sezon-17-seriya.html	8	2014	США	фэнтези, драма, мелодрама, детектив, приключения	Дин Уайт, Ральф Хемекер, Милан Чейлов	43
4510	В надежде на спасение (4 сезон)	https://kinokrad.co/321354-v-nadezhde-na-spasenie-4-sezon-2015.html	8	2014	Канада	фэнтези, драма	Дэвид Уэллингтон, Питер Веллингтон, Грегори Смит	44
4511	Халк и агенты СМЭШ (2 сезон)	https://kinokrad.co/318966-halk-i-agenty-smjesh-2-sezon-2014.html	6	2014	США	мультфильм, фантастика, боевик, комедия, приключения	Дэн Фосетт, Патрик Арчибальд, Рой Аллен Смит	22
4512	Опасный Генри (1 сезон)	https://kinokrad.co/317970-opasnyy-genri-1-sezon-2014.html	8	2014	США	фантастика, боевик, комедия, семейный	Стив Хофер, Адам Вайсман, Нэйтан Кресс	30
4513	Под прикрытием (4 сезон)	https://kinokrad.co/318414-pod-prikrytiem-4-sezon-2014.html	6	2014	Болгария	боевик, драма, криминал	Виктор Божинов, Мартин Макариев, Zoran Petrovski	60
4514	Такая работа (3 сезон)	https://kinokrad.co/303689-takaya-rabota-3-sezon-2016.html	5	2014	Россия	детектив	Владимир Койфман, Сергей Мезенцев, Дмитрий Изместьев	
4515	Закусочная Боба (5 сезон)	https://kinokrad.co/309946-zakusochnaya-boba-5-sezon-2014.html	4	2014	США	мультфильм, комедия	Бернард Дерриман, Дженнифер Койл, Тайри Диллихей	22
4516	Скотт и Бейли (4 сезон)	https://kinokrad.co/306818-skott-i-beyli-4-sezon.html	7	2014	Великобритания	драма, детектив, криминал	Мораг Фуллартон, Чина Му-Ен, Пол Уолкер	43
4517	Воскресший Эртугрул (2 сезон)	https://kinokrad.co/308702-voskresshiy-jertugrul-2-sezon-2014.html	8	2014	Турция	боевик, драма, история	Метин Гюнай, Akif Özkan, Хакан Арслан	120
4518	Бездельницы (2 сезон)	https://kinokrad.co/309596-bezdelnicy-2-sezon-2014.html	5	2014	Великобритания	комедия	Аль Кэмпбелл, Саймон Делани, Том Маршалл	23
4519	Тост из Лондона (2 сезон)	https://kinokrad.co/302024-tost-iz-londona-2-sezon-2014.html	4	2014	Великобритания	комедия	Майкл Камминг	30
4520	Парни из Трейлерпарка (8 сезон)	https://kinokrad.co/321258-parni-iz-treylerparka-8-sezon-2014.html	6	2014	Канада	драма, комедия, криминал	Майк Клаттенбёрг, Рон Мерфи, Кори Боулз	30
4521	Чистильщик (4 сезон)	https://kinokrad.co/320450-chistilschik-4-sezon-2014.html	7	2014	Германия	комедия	Арни Фельдхузен	26
4522	Чистильщик (3 сезон)	https://kinokrad.co/320446-chistilschik-3-sezon-2014.html	7	2014	Германия	комедия	Арни Фельдхузен	26
4523	Плебеи (2 сезон)	https://kinokrad.co/292756-plebei-2-sezon-2014.html	7	2014	Великобритания	комедия	Сэм Лейфер	22
4524	Дом игр (1 сезон)	https://kinokrad.co/292042-dom-igr-1-sezon-2014.html	7	2014	США	комедия	Стюарт МакДональд, Тим Киркби, Джеффри Блитц	30
4525	Сладкая жизнь (3 сезон)	https://kinokrad.co/294313-sladkaya-zhizn-3-sezon-2016.html	8	2014	Россия	драма, комедия	Андрей Джунковский, Давид Кочаров	44
4526	Под подозрением (2 сезон)	https://kinokrad.co/287962-pod-podozreniem-2-sezon-2016.html	7	2014	Испания	триллер	Сильвия Кер, Хорхе Санчес-Кабесудо, Мигель Конде	70
4527	Великий сыщик Филинта (1 сезон)	https://kinokrad.co/317758-velikiy-syschik-filinta-1-sezon-2014.html	5	2014	Турция	история	Süleyman Mert Özdemir, Кудрет Сабанджи, Gökhan Erkut	
4528	Код (1 сезон)	https://kinokrad.co/303254-kod-1-sezon-2014.html	6	2014	Австралия	триллер, драма	Шон Сит	56
4529	Фабрика (2 сезон)	https://kinokrad.co/273055-fabrika-2-sezon.html	7	2014	Великобритания	драма	Джеймс Хоуз, Сьюзэн Талли	60
4530	Секретные агенты (5 сезон)	https://kinokrad.co/273082-sekretnye-agenty-5-sezon.html	7	2014	Великобритания	драма, семейный	Саймон Хук, Мат Кинг, Ричард Элсон	28
4531	Галерея Вельвет (2 сезон)	https://kinokrad.co/303086-galereya-velvet-2-sezon-2014.html	6	2014	Испания	драма, история	Карлос Седес, Давид Пинильос, Хорхе Санчес-Кабесудо	43
4532	В ударе (1 сезон)	https://kinokrad.co/272920-v-udare-1-sezon.html	7	2014	США	боевик, комедия, семейный	Шон К. Ламберт, Эрик Дин Ситон, Шелли Дженсен	22
4533	Закон и порядок: Лондон (1 сезон)	https://kinokrad.co/271584-zakon-i-poryadok-london-1-sezon.html	6	2014	Великобритания	драма, криминал, детектив	Энди Годдар, Мат Кинг, Марк Эверест	43
4534	Галерея Вельвет (1 сезон)	https://kinokrad.co/303083-galereya-velvet-1-sezon-2014.html	7	2014	Испания	драма, история	Карлос Седес, Давид Пинильос, Хорхе Санчес-Кабесудо	43
4535	Вспомнить все связи (1 сезон)	https://kinokrad.co/303943-vspomnit-vse-svyazi-1-sezon-2014.html	5	2014	Великобритания	комедия	Гордон Андерсон, Эллиот Хегарти	24
4536	Флэш (3 сезон)	https://kinokrad.co/305702-flesh-3-sezon.html	8	2014	США	фантастика, боевик, драма, приключения	Дермотт Даунс, Ральф Хемекер, Джесси Уарн	43
4537	Загадочные убийства Агаты Кристи (1 сезон)	https://kinokrad.co/272809-zagadochnye-ubiystva-agaty-kristi-1-sezon.html	8	2014	Франция, Швейцария	криминал, детектив	Эрик Ворет, Марк Анджело, Рено Бертран	90
4538	Трудоголики (1 сезон)	https://kinokrad.co/272801-trudogoliki-1-sezon.html	5	2014	США	комедия	Кайл Ньюачек, Джей Карас, Тристрам Шапиро	22
4539	Социопат (1 сезон)	https://kinokrad.co/272771-sociopat-1-sezon.html	7	2014	США	триллер, драма, детектив	Гэвин Полон, Джо Лазаров, Дэйзи фон Шерлер Майер	42
4540	Служба расследований (1 сезон)	https://kinokrad.co/272993-sluzhba-rassledovaniy-1-sezon.html	7	2014	Франция	криминал	Жерар Маркс, Эрик Ле Ру, Жан-Люк Брайтенштайн	50
4541	Кей и Пил (4 сезон)	https://kinokrad.co/272057-key-i-pil-4-sezon.html	6	2014	США	комедия	Питер Атенсио	30
4542	Сын (1 сезон)	https://kinokrad.co/293785-syn-1-sezon-2014.html	4	2014	Россия	драма	Вячеслав Росс	41
4543	Сладкая жизнь (1 сезон)	https://kinokrad.co/307634-sladkaya-zhizn-1-sezon-2014.html	7	2014	Россия	драма, комедия	Андрей Джунковский, Давид Кочаров	44
4544	Дикте Свендсен (2 сезон)	https://kinokrad.co/309512-dikte-svendsen-2-sezon-2014.html	7	2014	Дания	драма, криминал, семейный	Каспер Барфоэд, Шарлота Сакс Боструп, Йеспер В. Нильсен	60
4545	Мент в законе (9 сезон)	https://kinokrad.co/279678-ment-v-zakone-9-sezon-4-seriya.html	5	2014	Россия	криминал, детектив	Стас Егерев, Сергей Попов	48
4546	Маша и Медведь. Машкины страшилки	https://kinokrad.co/279726-masha-i-medved.-mashkiny-strashilki-2-seriya.html	7	2014	Россия	мультфильм, комедия, семейный	Олег Кузовков, Олег Ужинов, Денис Червяцов	7
4547	Богатство / Мамона (1 сезон)	https://kinokrad.co/298678-bogatstvo-mamona-1-sezon-2014.html	7	2014	Норвегия	боевик, триллер, криминал, детектив	Сесиль А. Мосли, Яник Хиен	56
4580	Конь БоДжек (1 сезон)	https://kinokrad.co/285137-kon-bodzhek-1-sezon-2014.html	6	2014	США	мультфильм, драма, комедия	JC Gonzalez, Amy Winfrey, Джоэль Мосер	25
4548	Безмолвный свидетель (17 сезон)	https://kinokrad.co/301709-bezmolvnyy-svidetel-17-sezon-2014.html	8	2014	Великобритания	драма, криминал, детектив	Тадеус О’Салливан, Дэвид Ричардс, Ричард Сайни	43
4549	Налёт (3 сезон)	https://kinokrad.co/321082-nalet-3-sezon-2014.html	8	2014	Франция	триллер, криминал	Ксавьер Палю, Оливье Маршаль, Фредерик Шёндёрфер	50
4550	Изабелла (3 сезон)	https://kinokrad.co/298849-izabella-3-sezon-2014.html	7	2014	Испания	история	Хорди Фрадес, Ориоль Феррер, Сальвадор Гарсия Руис	60
4551	Вишнёвый сезон (1 сезон)	https://kinokrad.co/279905-vishnjovyy-sezon-1-sezon-2014.html	7	2014	Турция	мелодрама, комедия	Eda Teksöz, Filiz Gülmez Pakman	120
4552	Раскаяния выжившего (1 сезон)	https://kinokrad.co/320334-raskayaniya-vyzhivshego-1-sezon-2014.html	6	2014	США	драма	Виктор Левин, Питер Сигал, Кен Уиттингэм	30
4553	Гоморра (1 сезон)	https://kinokrad.co/294661-gomorra-1-sezon-2014.html	8	2014	Италия, Германия	драма, криминал	Стефано Соллима, Клаудио Капеллини, Франческа Коменчини	50
4554	Внутри Эми Шумер (2 сезон)	https://kinokrad.co/311230-vnutri-jemi-shumer-2-sezon-2014.html	5	2014	США	комедия	Райан МакФол, Нил Бреннан, Стивен К. Цутида	22
4555	Серые кардиналы / Закулисные игры (2 сезон)	https://kinokrad.co/318238-serye-kardinaly-zakulisnye-igry-2-sezon-2014.html	6	2014	Франция	драма	Фридерик Теллье, Жан-Марк Брондоло, Фредерик Гарсон	
4556	Голдберги (2 сезон)	https://kinokrad.co/318222-goldbergi-2-sezon-2014.html	5	2014	США	комедия	Дэвид Катценберг, Джей Чандрашекхар, Виктор Нелли мл	22
4557	Остановись и гори (3 сезон)	https://kinokrad.co/306602-ostanovis-i-gori.html	4	2014	США	драма	Хуан Хосе Кампанелла, Карин Кусама, Дэйзи фон Шерлер Майер	43
4558	Законы улиц (1 сезон)	https://kinokrad.co/293725-zakony-ulic-1-sezon-2014.html	7	2014	Россия	детектив, криминал	Рустам Уразаев	45
4559	Полиция Чикаго (4 сезон)	https://kinokrad.co/306449-policiya-chikago.html	7	2014	США	боевик, триллер, драма, криминал	Марк Тинкер, Ник Гомез, Фред Бернер	43
4560	Обзор (1 сезон)	https://kinokrad.co/303371-obzor-1-sezon-2014.html	4	2014	США	комедия	Джеффри Блитц	30
4561	Интерны (4 сезон)	https://kinokrad.co/307835-interny-4-sezon-2014.html	6	2014	Россия	комедия	Максим Пежемский, Заур Болотаев, Милан Килибарда	25
4562	Валландер (3 сезон)	https://kinokrad.co/297808-vallander-3-sezon-2014.html	6	2014	Швеция	триллер, драма, криминал, детектив	Стефан Апельгрен, Агнета Фагерстрём-Ольссон, Лейф Магнуссон	89
4563	До последнего (1 сезон)	https://kinokrad.co/298162-do-poslednego-1-sezon-2014.html	5	2014	Франция	драма	Франсуа Вель	56
4564	Черепашки-ниндзя (3 сезон)	https://kinokrad.co/291637-cherepashki-nindzya-3-sezon-2014.html	9	2014	США	мультфильм, фантастика, боевик, драма, комедия, приключения, семейный	Сиро Ниели, Майкл Чанг, Алан Ван	22
4565	Гуще, чем вода (1 сезон)	https://kinokrad.co/271933-gusche-chem-voda-1-sezon.html	7	2014	Швеция	драма	Лиза Эриксдоттер, Эрик Лейжонборг, Анетт Уинблад	58
4566	Любовь/Ненависть (5 сезон)	https://kinokrad.co/271525-lyubov-nenavist-5-sezon.html	7	2014	Ирландия	драма, криминал	Дэвид Кэффри, Энтони Бирн	51
4567	Единство (2 сезон)	https://kinokrad.co/271959-edinstvo.html	6	2014	США	комедия	Джей Дюпласс, Марк Дюпласс	30
4568	7 гномов (1 сезон)	https://kinokrad.co/271644-7-gnomov-1-sezon.html	7	2014	США	мультфильм, фэнтези, комедия, семейный	Чарльз Виссер, Альфред Гимено	30
4569	Мажор (1 сезон)	https://kinokrad.co/279365-mazhor-1-sezon-2014.html	9	2014	Россия	драма, криминал	Константин Статский	60
4570	Полюби меня (2 сезон)	https://kinokrad.co/271899-polyubi-menya-2.html	6	2014	Австралия	драма, комедия	Мэттью Савилл	30
4571	По долгу службы (2 сезон)	https://kinokrad.co/271597-po-dolgu-sluzhby-2-sezon.html	6	2014	Великобритания	триллер, драма, криминал	Дуглас Маккиннон, Дэвид Кэффри, Дэниэл Неттхейм	58
4572	Ты — воплощение порока (3 сезон)	https://kinokrad.co/305690-ty-voploschenie-poroka-3-sezon.html	6	2014	США	комедия, мелодрама	Венди Станцлер, Алекс Хардкасл, Стефен Фальк	24
4573	Гравити Фолз (2 сезон)	https://kinokrad.co/279917-graviti-folz-2-sezon-11-seriya.html	9	2014	США	мультфильм, фэнтези, комедия, детектив, семейный	Джо Питт, Джон Аошима, Аарон Спринджер	22
4574	Лига (6 сезон)	https://kinokrad.co/304298-liga-6-sezon-2014.html	6	2014	США	комедия, спорт	Джефф Шеффер, Джеки Маркус	22
4575	Гранчестер (1 сезон)	https://kinokrad.co/293188-granchester-1-sezon-2014.html	9	2014	Великобритания	драма, детектив	Тим Файвелл, Гарри Брэдбир, Джилл Робертсон	45
4576	Партнеры (1 сезон)	https://kinokrad.co/296047-partnery-1-sezon-2014.html	8	2014	США	комедия	Рич Коррелл, Келси Грэммер, Джо Регалбуто	22
4577	Черноватый (1 сезон)	https://kinokrad.co/284817-chernovatyy-1-sezon-2015.html	6	2014	США	комедия	Виктор Нелли мл., Мэттью Сон, Кен Уиттингэм	22
4578	Скорпион (3 сезон)	https://kinokrad.co/305738-skorpion.html	8	2014	США	боевик, драма	Сэм Хилл, Омар Мадха, Мэл Дэмски	43
4579	Волчица и чёрный принц (1 сезон)	https://kinokrad.co/285611-volchica-i-chjornyy-princ-1-sezon-2014.html	9	2014	Япония	аниме, мультфильм, комедия		25
4582	От заката до рассвета (1 сезон)	https://kinokrad.co/284937-ot-zakata-do-rassveta-1-sezon-2014.html	7	2014	США	боевик, ужасы, криминал, фэнтези	Роберт Родригес, Джо Менендес, Дуайт Х. Литтл	60
4583	Закон и порядок. Специальный корпус (13 сезон)	https://kinokrad.co/272830-zakon-i-poryadok.-specialnyy-korpus-13-sezon.html	7	2014	США	триллер, драма, криминал, детектив	Дэвид Платт, Питер Лето, Константин Макрис	43
4584	19-2 / Девятнадцать Два (1 сезон)	https://kinokrad.co/284911-19-2-1-sezon-2014.html	6	2014	Канада	драма	Луи Шокетт, Эрик Канюэль, Дэниэл Гру	
4585	Русалки (1 сезон)	https://kinokrad.co/293347-rusalki-1-sezon-2014.html	6	2014	Израиль	триллер, детектив	Адам Сэндерсон	40
4586	Грозная семейка (1 сезон)	https://kinokrad.co/272734-groznaya-semeyka-1-sezon-23-seriya.html	8	2014	США	фантастика, боевик, комедия, семейный	Робби Кантримэн, Шеннон Флинн, Джонатан Джадж	23
4587	Наруто: Ураганные хроники (18 сезон)	https://kinokrad.co/283177-naruto-uragannye-hroniki-18-sezon-2014.html	8	2014	Япония	аниме, мультфильм, фантастика, боевик, триллер, приключения	Хаято Датэ, Юки Эри	24
4588	Наруто: Ураганные хроники (17 сезон)	https://kinokrad.co/283176-naruto-uragannye-hroniki-17-sezon-2014.html	8	2014	Япония	аниме, мультфильм, фантастика, боевик, триллер, приключения	Хаято Датэ, Юки Эри	24
4589	Наруто: Ураганные хроники (16 сезон)	https://kinokrad.co/283175-naruto-uragannye-hroniki-16-sezon-2014.html	8	2014	Япония	аниме, мультфильм, фантастика, боевик, триллер, приключения	Хаято Датэ, Юки Эри	24
4590	Курт Сеит и Александра (1 сезон)	https://kinokrad.co/291688-kurt-seit-i-aleksandra-1-sezon-2015.html	8	2014	Турция	драма, мелодрама, военный, история	Хилаль Сарал	
4591	Мелисса и Джоуи (4 сезон)	https://kinokrad.co/272813-melissa-i-dzhoui-4-sezon-2015.html	6	2014	США	комедия	Джеффри Мэлман, Роб Шиллер, Дэвид Трейнер	22
4592	Мотив (2 сезон)	https://kinokrad.co/282404-motiv-2-sezon-2014.html	7	2014	Канада	триллер, драма, криминал, детектив	Стурла Гуннарссон, Дэвид Фрэйзи, Энди Микита	42
4593	Десница Божий (1 сезон)	https://kinokrad.co/281985-desnica-bozhiy-1-sezon-2015.html	8	2014	США	драма	Марк Форстер, Эрнест Р. Дикерсон	60
4594	Копы-новобранцы (5 сезон)	https://kinokrad.co/272781-kopy-novobrancy-5-sezon.html	6	2014	Канада	драма, криминал	Дэвид Уэллингтон, Джон Фоусет, Питер Веллингтон	43
4595	Высшая школа видеоигр (3 сезон)	https://kinokrad.co/271516-vysshaya-shkola-videoigr-3-sezon.html	6	2014	США	боевик, комедия	Мэттью Арнольд, Брэндон Лаатш, Фредди Вонг	15
4596	Полиция Чикаго (1 сезон)	https://kinokrad.co/291334-policiya-chikago-1-sezon-2014.html	7	2014	США	боевик, драма	Марк Тинкер, Ник Гомез, Сэнфорд Букставер	60
4597	Проект Минди (3 сезон)	https://kinokrad.co/272787-proekt-mindi-3-sezon-2014.html	7	2014	США	комедия	Майкл Спиллер, Майкл Уивер, Роб Шрэб	22
4598	Дым (1 сезон)	https://kinokrad.co/280383-dym-4-seriya.html	7	2014	Великобритания	драма	Майк Баркер, Сэмюэл Донован, Джулиан Холмс	44
4599	Майя (1 сезон)	https://kinokrad.co/288259-mayya-1-sezon-2014.html	6	2014	Россия	детектив	Душан Глигоров	46
4600	Под каблуком (1 сезон)	https://kinokrad.co/272938-pod-kablukom-1-sezon.html	8	2014	Россия	мелодрама	Александр Кириенко	50
4601	Такая работа (1 сезон)	https://kinokrad.co/303683-takaya-rabota-1-sezon-2014.html	3	2014	Россия	детектив	Владимир Койфман, Сергей Мезенцев, Дмитрий Изместьев	
4602	Красные дубы (1 сезон)	https://kinokrad.co/308510-krasnye-duby-1-sezon-2014.html	8	2014	США	комедия	Дэвид Гордон Грин, Хэл Хартли, Эндрю Флеминг	25
4603	Золото Одина (1 сезон)	https://kinokrad.co/308198-zoloto-odina-1-sezon-2014.html	7	2014	Норвегия	криминал	Атле Кнудсен	
4604	Район Эль Принсипе (1 сезон)	https://kinokrad.co/295267-rayon-jel-prinsipe-1-sezon-2014.html	6	2014	Испания	триллер, драма	Iñaki Mercero, Хавьер Кинтас, Хосе Рамос Паино	
4605	Комплексная сделка / Пакетное соглашение (2 сезон)	https://kinokrad.co/318290-kompleksnaya-sdelka-paketnoe-soglashenie-2-sezon-2014.html	6	2014	Канада	комедия	Джонатан А. Розенбаум, Кит Сэмплз, Адам Вайсман	21
4606	Морская полиция: Новый Орлеан (1 сезон)	https://kinokrad.co/322675-morskaya-policiya-novyy-orlean-1-sezon.html	8	2014	США	драма, криминал	Джеймс Хейман, Тони Уормби, Майкл Цинберг	42
4607	Обед в пятницу вечером (3 сезон)	https://kinokrad.co/301859-obed-v-pyatnicu-vecherom-3-sezon-2014.html	6	2014	Великобритания	комедия	Мартин Деннис, Стив Бенделак	22
4608	Когда зовёт сердце (1 сезон)	https://kinokrad.co/320830-kogda-zovet-serdce-1-sezon-2014.html	6	2014	США	драма	Нилл Фернли, Майкл Лэндон мл., Мартин Вуд	43
4609	Однажды в сказке (4 сезон)	https://kinokrad.co/16016-odnazhdy-v-skazke-4-sezon-17-seriya.html	8	2014	США	фэнтези, драма, мелодрама, детектив, приключения	Дин Уайт, Ральф Хемекер, Милан Чейлов	43
4610	В надежде на спасение (4 сезон)	https://kinokrad.co/321354-v-nadezhde-na-spasenie-4-sezon-2015.html	8	2014	Канада	фэнтези, драма	Дэвид Уэллингтон, Питер Веллингтон, Грегори Смит	44
4643	Сладкая жизнь (1 сезон)	https://kinokrad.co/307634-sladkaya-zhizn-1-sezon-2014.html	7	2014	Россия	драма, комедия	Андрей Джунковский, Давид Кочаров	44
4611	Халк и агенты СМЭШ (2 сезон)	https://kinokrad.co/318966-halk-i-agenty-smjesh-2-sezon-2014.html	6	2014	США	мультфильм, фантастика, боевик, комедия, приключения	Дэн Фосетт, Патрик Арчибальд, Рой Аллен Смит	22
4612	Опасный Генри (1 сезон)	https://kinokrad.co/317970-opasnyy-genri-1-sezon-2014.html	8	2014	США	фантастика, боевик, комедия, семейный	Стив Хофер, Адам Вайсман, Нэйтан Кресс	30
4613	Под прикрытием (4 сезон)	https://kinokrad.co/318414-pod-prikrytiem-4-sezon-2014.html	6	2014	Болгария	боевик, драма, криминал	Виктор Божинов, Мартин Макариев, Zoran Petrovski	60
4614	Такая работа (3 сезон)	https://kinokrad.co/303689-takaya-rabota-3-sezon-2016.html	5	2014	Россия	детектив	Владимир Койфман, Сергей Мезенцев, Дмитрий Изместьев	
4615	Закусочная Боба (5 сезон)	https://kinokrad.co/309946-zakusochnaya-boba-5-sezon-2014.html	4	2014	США	мультфильм, комедия	Бернард Дерриман, Дженнифер Койл, Тайри Диллихей	22
4616	Скотт и Бейли (4 сезон)	https://kinokrad.co/306818-skott-i-beyli-4-sezon.html	7	2014	Великобритания	драма, детектив, криминал	Мораг Фуллартон, Чина Му-Ен, Пол Уолкер	43
4617	Воскресший Эртугрул (2 сезон)	https://kinokrad.co/308702-voskresshiy-jertugrul-2-sezon-2014.html	8	2014	Турция	боевик, драма, история	Метин Гюнай, Akif Özkan, Хакан Арслан	120
4618	Бездельницы (2 сезон)	https://kinokrad.co/309596-bezdelnicy-2-sezon-2014.html	5	2014	Великобритания	комедия	Аль Кэмпбелл, Саймон Делани, Том Маршалл	23
4619	Тост из Лондона (2 сезон)	https://kinokrad.co/302024-tost-iz-londona-2-sezon-2014.html	4	2014	Великобритания	комедия	Майкл Камминг	30
4620	Парни из Трейлерпарка (8 сезон)	https://kinokrad.co/321258-parni-iz-treylerparka-8-sezon-2014.html	6	2014	Канада	драма, комедия, криминал	Майк Клаттенбёрг, Рон Мерфи, Кори Боулз	30
4621	Чистильщик (4 сезон)	https://kinokrad.co/320450-chistilschik-4-sezon-2014.html	7	2014	Германия	комедия	Арни Фельдхузен	26
4622	Чистильщик (3 сезон)	https://kinokrad.co/320446-chistilschik-3-sezon-2014.html	7	2014	Германия	комедия	Арни Фельдхузен	26
4623	Плебеи (2 сезон)	https://kinokrad.co/292756-plebei-2-sezon-2014.html	7	2014	Великобритания	комедия	Сэм Лейфер	22
4624	Дом игр (1 сезон)	https://kinokrad.co/292042-dom-igr-1-sezon-2014.html	7	2014	США	комедия	Стюарт МакДональд, Тим Киркби, Джеффри Блитц	30
4625	Сладкая жизнь (3 сезон)	https://kinokrad.co/294313-sladkaya-zhizn-3-sezon-2016.html	8	2014	Россия	драма, комедия	Андрей Джунковский, Давид Кочаров	44
4626	Под подозрением (2 сезон)	https://kinokrad.co/287962-pod-podozreniem-2-sezon-2016.html	7	2014	Испания	триллер	Сильвия Кер, Хорхе Санчес-Кабесудо, Мигель Конде	70
4627	Великий сыщик Филинта (1 сезон)	https://kinokrad.co/317758-velikiy-syschik-filinta-1-sezon-2014.html	5	2014	Турция	история	Süleyman Mert Özdemir, Кудрет Сабанджи, Gökhan Erkut	
4628	Код (1 сезон)	https://kinokrad.co/303254-kod-1-sezon-2014.html	6	2014	Австралия	триллер, драма	Шон Сит	56
4629	Фабрика (2 сезон)	https://kinokrad.co/273055-fabrika-2-sezon.html	7	2014	Великобритания	драма	Джеймс Хоуз, Сьюзэн Талли	60
4630	Секретные агенты (5 сезон)	https://kinokrad.co/273082-sekretnye-agenty-5-sezon.html	7	2014	Великобритания	драма, семейный	Саймон Хук, Мат Кинг, Ричард Элсон	28
4631	Галерея Вельвет (2 сезон)	https://kinokrad.co/303086-galereya-velvet-2-sezon-2014.html	6	2014	Испания	драма, история	Карлос Седес, Давид Пинильос, Хорхе Санчес-Кабесудо	43
4632	В ударе (1 сезон)	https://kinokrad.co/272920-v-udare-1-sezon.html	7	2014	США	боевик, комедия, семейный	Шон К. Ламберт, Эрик Дин Ситон, Шелли Дженсен	22
4633	Закон и порядок: Лондон (1 сезон)	https://kinokrad.co/271584-zakon-i-poryadok-london-1-sezon.html	6	2014	Великобритания	драма, криминал, детектив	Энди Годдар, Мат Кинг, Марк Эверест	43
4634	Галерея Вельвет (1 сезон)	https://kinokrad.co/303083-galereya-velvet-1-sezon-2014.html	7	2014	Испания	драма, история	Карлос Седес, Давид Пинильос, Хорхе Санчес-Кабесудо	43
4635	Вспомнить все связи (1 сезон)	https://kinokrad.co/303943-vspomnit-vse-svyazi-1-sezon-2014.html	5	2014	Великобритания	комедия	Гордон Андерсон, Эллиот Хегарти	24
4636	Флэш (3 сезон)	https://kinokrad.co/305702-flesh-3-sezon.html	8	2014	США	фантастика, боевик, драма, приключения	Дермотт Даунс, Ральф Хемекер, Джесси Уарн	43
4637	Загадочные убийства Агаты Кристи (1 сезон)	https://kinokrad.co/272809-zagadochnye-ubiystva-agaty-kristi-1-sezon.html	8	2014	Франция, Швейцария	криминал, детектив	Эрик Ворет, Марк Анджело, Рено Бертран	90
4638	Трудоголики (1 сезон)	https://kinokrad.co/272801-trudogoliki-1-sezon.html	5	2014	США	комедия	Кайл Ньюачек, Джей Карас, Тристрам Шапиро	22
4639	Социопат (1 сезон)	https://kinokrad.co/272771-sociopat-1-sezon.html	7	2014	США	триллер, драма, детектив	Гэвин Полон, Джо Лазаров, Дэйзи фон Шерлер Майер	42
4640	Служба расследований (1 сезон)	https://kinokrad.co/272993-sluzhba-rassledovaniy-1-sezon.html	7	2014	Франция	криминал	Жерар Маркс, Эрик Ле Ру, Жан-Люк Брайтенштайн	50
4641	Кей и Пил (4 сезон)	https://kinokrad.co/272057-key-i-pil-4-sezon.html	6	2014	США	комедия	Питер Атенсио	30
4644	Дикте Свендсен (2 сезон)	https://kinokrad.co/309512-dikte-svendsen-2-sezon-2014.html	7	2014	Дания	драма, криминал, семейный	Каспер Барфоэд, Шарлота Сакс Боструп, Йеспер В. Нильсен	60
4645	Мент в законе (9 сезон)	https://kinokrad.co/279678-ment-v-zakone-9-sezon-4-seriya.html	5	2014	Россия	криминал, детектив	Стас Егерев, Сергей Попов	48
4646	Маша и Медведь. Машкины страшилки	https://kinokrad.co/279726-masha-i-medved.-mashkiny-strashilki-2-seriya.html	7	2014	Россия	мультфильм, комедия, семейный	Олег Кузовков, Олег Ужинов, Денис Червяцов	7
4647	Богатство / Мамона (1 сезон)	https://kinokrad.co/298678-bogatstvo-mamona-1-sezon-2014.html	7	2014	Норвегия	боевик, триллер, криминал, детектив	Сесиль А. Мосли, Яник Хиен	56
4648	Безмолвный свидетель (17 сезон)	https://kinokrad.co/301709-bezmolvnyy-svidetel-17-sezon-2014.html	8	2014	Великобритания	драма, криминал, детектив	Тадеус О’Салливан, Дэвид Ричардс, Ричард Сайни	43
4649	Налёт (3 сезон)	https://kinokrad.co/321082-nalet-3-sezon-2014.html	8	2014	Франция	триллер, криминал	Ксавьер Палю, Оливье Маршаль, Фредерик Шёндёрфер	50
4650	Изабелла (3 сезон)	https://kinokrad.co/298849-izabella-3-sezon-2014.html	7	2014	Испания	история	Хорди Фрадес, Ориоль Феррер, Сальвадор Гарсия Руис	60
4651	Вишнёвый сезон (1 сезон)	https://kinokrad.co/279905-vishnjovyy-sezon-1-sezon-2014.html	7	2014	Турция	мелодрама, комедия	Eda Teksöz, Filiz Gülmez Pakman	120
4652	Раскаяния выжившего (1 сезон)	https://kinokrad.co/320334-raskayaniya-vyzhivshego-1-sezon-2014.html	6	2014	США	драма	Виктор Левин, Питер Сигал, Кен Уиттингэм	30
4653	Гоморра (1 сезон)	https://kinokrad.co/294661-gomorra-1-sezon-2014.html	8	2014	Италия, Германия	драма, криминал	Стефано Соллима, Клаудио Капеллини, Франческа Коменчини	50
4654	Внутри Эми Шумер (2 сезон)	https://kinokrad.co/311230-vnutri-jemi-shumer-2-sezon-2014.html	5	2014	США	комедия	Райан МакФол, Нил Бреннан, Стивен К. Цутида	22
4655	Серые кардиналы / Закулисные игры (2 сезон)	https://kinokrad.co/318238-serye-kardinaly-zakulisnye-igry-2-sezon-2014.html	6	2014	Франция	драма	Фридерик Теллье, Жан-Марк Брондоло, Фредерик Гарсон	
4656	Голдберги (2 сезон)	https://kinokrad.co/318222-goldbergi-2-sezon-2014.html	5	2014	США	комедия	Дэвид Катценберг, Джей Чандрашекхар, Виктор Нелли мл	22
4657	Остановись и гори (3 сезон)	https://kinokrad.co/306602-ostanovis-i-gori.html	4	2014	США	драма	Хуан Хосе Кампанелла, Карин Кусама, Дэйзи фон Шерлер Майер	43
4658	Законы улиц (1 сезон)	https://kinokrad.co/293725-zakony-ulic-1-sezon-2014.html	7	2014	Россия	детектив, криминал	Рустам Уразаев	45
4659	Полиция Чикаго (4 сезон)	https://kinokrad.co/306449-policiya-chikago.html	7	2014	США	боевик, триллер, драма, криминал	Марк Тинкер, Ник Гомез, Фред Бернер	43
4660	Обзор (1 сезон)	https://kinokrad.co/303371-obzor-1-sezon-2014.html	4	2014	США	комедия	Джеффри Блитц	30
4661	Интерны (4 сезон)	https://kinokrad.co/307835-interny-4-sezon-2014.html	6	2014	Россия	комедия	Максим Пежемский, Заур Болотаев, Милан Килибарда	25
4662	Валландер (3 сезон)	https://kinokrad.co/297808-vallander-3-sezon-2014.html	6	2014	Швеция	триллер, драма, криминал, детектив	Стефан Апельгрен, Агнета Фагерстрём-Ольссон, Лейф Магнуссон	89
4663	До последнего (1 сезон)	https://kinokrad.co/298162-do-poslednego-1-sezon-2014.html	5	2014	Франция	драма	Франсуа Вель	56
4664	Черепашки-ниндзя (3 сезон)	https://kinokrad.co/291637-cherepashki-nindzya-3-sezon-2014.html	9	2014	США	мультфильм, фантастика, боевик, драма, комедия, приключения, семейный	Сиро Ниели, Майкл Чанг, Алан Ван	22
4665	Гуще, чем вода (1 сезон)	https://kinokrad.co/271933-gusche-chem-voda-1-sezon.html	7	2014	Швеция	драма	Лиза Эриксдоттер, Эрик Лейжонборг, Анетт Уинблад	58
4666	Любовь/Ненависть (5 сезон)	https://kinokrad.co/271525-lyubov-nenavist-5-sezon.html	7	2014	Ирландия	драма, криминал	Дэвид Кэффри, Энтони Бирн	51
4667	Единство (2 сезон)	https://kinokrad.co/271959-edinstvo.html	6	2014	США	комедия	Джей Дюпласс, Марк Дюпласс	30
4668	7 гномов (1 сезон)	https://kinokrad.co/271644-7-gnomov-1-sezon.html	7	2014	США	мультфильм, фэнтези, комедия, семейный	Чарльз Виссер, Альфред Гимено	30
4669	Мажор (1 сезон)	https://kinokrad.co/279365-mazhor-1-sezon-2014.html	9	2014	Россия	драма, криминал	Константин Статский	60
4670	Полюби меня (2 сезон)	https://kinokrad.co/271899-polyubi-menya-2.html	6	2014	Австралия	драма, комедия	Мэттью Савилл	30
4671	По долгу службы (2 сезон)	https://kinokrad.co/271597-po-dolgu-sluzhby-2-sezon.html	6	2014	Великобритания	триллер, драма, криминал	Дуглас Маккиннон, Дэвид Кэффри, Дэниэл Неттхейм	58
4672	Ты — воплощение порока (3 сезон)	https://kinokrad.co/305690-ty-voploschenie-poroka-3-sezon.html	6	2014	США	комедия, мелодрама	Венди Станцлер, Алекс Хардкасл, Стефен Фальк	24
4673	Гравити Фолз (2 сезон)	https://kinokrad.co/279917-graviti-folz-2-sezon-11-seriya.html	9	2014	США	мультфильм, фэнтези, комедия, детектив, семейный	Джо Питт, Джон Аошима, Аарон Спринджер	22
4674	Лига (6 сезон)	https://kinokrad.co/304298-liga-6-sezon-2014.html	6	2014	США	комедия, спорт	Джефф Шеффер, Джеки Маркус	22
4675	Гранчестер (1 сезон)	https://kinokrad.co/293188-granchester-1-sezon-2014.html	9	2014	Великобритания	драма, детектив	Тим Файвелл, Гарри Брэдбир, Джилл Робертсон	45
4676	Партнеры (1 сезон)	https://kinokrad.co/296047-partnery-1-sezon-2014.html	8	2014	США	комедия	Рич Коррелл, Келси Грэммер, Джо Регалбуто	22
4677	Черноватый (1 сезон)	https://kinokrad.co/284817-chernovatyy-1-sezon-2015.html	6	2014	США	комедия	Виктор Нелли мл., Мэттью Сон, Кен Уиттингэм	22
4678	Скорпион (3 сезон)	https://kinokrad.co/305738-skorpion.html	8	2014	США	боевик, драма	Сэм Хилл, Омар Мадха, Мэл Дэмски	43
4679	Волчица и чёрный принц (1 сезон)	https://kinokrad.co/285611-volchica-i-chjornyy-princ-1-sezon-2014.html	9	2014	Япония	аниме, мультфильм, комедия		25
4680	Конь БоДжек (1 сезон)	https://kinokrad.co/285137-kon-bodzhek-1-sezon-2014.html	6	2014	США	мультфильм, драма, комедия	JC Gonzalez, Amy Winfrey, Джоэль Мосер	25
4681	Чёрный Иисус (1 сезон)	https://kinokrad.co/285019-chjornyy-iisus-1-sezon-2014.html	5	2014	США	комедия	Майк Клаттенбёрг	20
4682	От заката до рассвета (1 сезон)	https://kinokrad.co/284937-ot-zakata-do-rassveta-1-sezon-2014.html	7	2014	США	боевик, ужасы, криминал, фэнтези	Роберт Родригес, Джо Менендес, Дуайт Х. Литтл	60
4683	Закон и порядок. Специальный корпус (13 сезон)	https://kinokrad.co/272830-zakon-i-poryadok.-specialnyy-korpus-13-sezon.html	7	2014	США	триллер, драма, криминал, детектив	Дэвид Платт, Питер Лето, Константин Макрис	43
4684	19-2 / Девятнадцать Два (1 сезон)	https://kinokrad.co/284911-19-2-1-sezon-2014.html	6	2014	Канада	драма	Луи Шокетт, Эрик Канюэль, Дэниэл Гру	
4685	Русалки (1 сезон)	https://kinokrad.co/293347-rusalki-1-sezon-2014.html	6	2014	Израиль	триллер, детектив	Адам Сэндерсон	40
4686	Грозная семейка (1 сезон)	https://kinokrad.co/272734-groznaya-semeyka-1-sezon-23-seriya.html	8	2014	США	фантастика, боевик, комедия, семейный	Робби Кантримэн, Шеннон Флинн, Джонатан Джадж	23
4687	Наруто: Ураганные хроники (18 сезон)	https://kinokrad.co/283177-naruto-uragannye-hroniki-18-sezon-2014.html	8	2014	Япония	аниме, мультфильм, фантастика, боевик, триллер, приключения	Хаято Датэ, Юки Эри	24
4688	Наруто: Ураганные хроники (17 сезон)	https://kinokrad.co/283176-naruto-uragannye-hroniki-17-sezon-2014.html	8	2014	Япония	аниме, мультфильм, фантастика, боевик, триллер, приключения	Хаято Датэ, Юки Эри	24
4689	Наруто: Ураганные хроники (16 сезон)	https://kinokrad.co/283175-naruto-uragannye-hroniki-16-sezon-2014.html	8	2014	Япония	аниме, мультфильм, фантастика, боевик, триллер, приключения	Хаято Датэ, Юки Эри	24
4690	Курт Сеит и Александра (1 сезон)	https://kinokrad.co/291688-kurt-seit-i-aleksandra-1-sezon-2015.html	8	2014	Турция	драма, мелодрама, военный, история	Хилаль Сарал	
4691	Мелисса и Джоуи (4 сезон)	https://kinokrad.co/272813-melissa-i-dzhoui-4-sezon-2015.html	6	2014	США	комедия	Джеффри Мэлман, Роб Шиллер, Дэвид Трейнер	22
4692	Мотив (2 сезон)	https://kinokrad.co/282404-motiv-2-sezon-2014.html	7	2014	Канада	триллер, драма, криминал, детектив	Стурла Гуннарссон, Дэвид Фрэйзи, Энди Микита	42
4693	Десница Божий (1 сезон)	https://kinokrad.co/281985-desnica-bozhiy-1-sezon-2015.html	8	2014	США	драма	Марк Форстер, Эрнест Р. Дикерсон	60
4694	Копы-новобранцы (5 сезон)	https://kinokrad.co/272781-kopy-novobrancy-5-sezon.html	6	2014	Канада	драма, криминал	Дэвид Уэллингтон, Джон Фоусет, Питер Веллингтон	43
4695	Высшая школа видеоигр (3 сезон)	https://kinokrad.co/271516-vysshaya-shkola-videoigr-3-sezon.html	6	2014	США	боевик, комедия	Мэттью Арнольд, Брэндон Лаатш, Фредди Вонг	15
4696	Полиция Чикаго (1 сезон)	https://kinokrad.co/291334-policiya-chikago-1-sezon-2014.html	7	2014	США	боевик, драма	Марк Тинкер, Ник Гомез, Сэнфорд Букставер	60
4697	Проект Минди (3 сезон)	https://kinokrad.co/272787-proekt-mindi-3-sezon-2014.html	7	2014	США	комедия	Майкл Спиллер, Майкл Уивер, Роб Шрэб	22
4698	Дым (1 сезон)	https://kinokrad.co/280383-dym-4-seriya.html	7	2014	Великобритания	драма	Майк Баркер, Сэмюэл Донован, Джулиан Холмс	44
4699	Майя (1 сезон)	https://kinokrad.co/288259-mayya-1-sezon-2014.html	6	2014	Россия	детектив	Душан Глигоров	46
4700	Под каблуком (1 сезон)	https://kinokrad.co/272938-pod-kablukom-1-sezon.html	8	2014	Россия	мелодрама	Александр Кириенко	50
4701	Дом призраков семьи Хэтэуэй (2 сезон)	https://kinokrad.co/272548-dom-prizrakov-semi-heteuey-2-sezon.html	7	2014	США	фэнтези, комедия, семейный, мистика	Роджер Кристиансен, Шеннон Флинн, Тревор Киршнер	30
4702	Такова жизнь (5 сезон)	https://kinokrad.co/272847-takova-zhizn-5-sezon.html	6	2014	Австралия	драма, комедия	Кейт Дэннис, Эмма Фриман, Ширли Баррет	43
4703	Игры разума (1 сезон)	https://kinokrad.co/272864-igry-razuma-1-sezon.html	7	2014	США	драма	Тимоти Басфилд, Мигель Сапочник, Сара Пиа Андерсон	60
4704	Атлантида (2 сезон)	https://kinokrad.co/279003-atlantida-2-sezon-6-seriya.html	8	2014	Великобритания	фэнтези, приключения	Джастин Молотников	43
4705	Фиксики (2 сезон)	https://kinokrad.co/287123-fiksiki-2-sezon-2014.html	8	2014	Россия	мультфильм, детский	Васико Бедошвили, Андрей Колпин, Сергей Меринов	6
4706	Американская семейка (6 сезон)	https://kinokrad.co/272441-amerikanskaya-semeyka-6-sezon-19-seriya.html	7	2014	США	комедия	Майкл Спиллер, Джейсон Уайнер, Гейл Манкусо	22
4707	Пожарные Чикаго / Чикаго в огне (3 сезон)	https://kinokrad.co/276594-pozharnye-chikago-3-sezon-18-seriya.html	8	2014	США	драма	Джо Чаппелль, Жан Де Сегонзак	43
4708	Фостеры (2 сезон)	https://kinokrad.co/271874-fostery-2-sezon-17-seriya.html	7	2014	США	драма	Норман Бакли, Марта Митчелл, Ли Роуз	45
4709	Черная река (1 сезон)	https://kinokrad.co/282014-chernaya-reka-1-sezon-2015.html	7	2014	Россия	боевик	Стас Иванов	45
4710	Касл (7 сезон)	https://kinokrad.co/276707-kasl-7-sezon-19-seriya.html	8	2014	США	драма, комедия, криминал, детектив	Джон Терлески, Роб Боумен	43
4711	Агенты «Щ.И.Т.» (2 сезон)	https://kinokrad.co/278530-agenty-sch.i.t.-2-sezon-15-seriya.html	8	2014	США	фантастика, боевик, драма	Винс Мисиано, Бобби Рот, Милан Чейлов	45
4712	Мушкетеры (2 сезон)	https://kinokrad.co/279906-mushketery-2-sezon-10-seriya.html	8	2014	Великобритания	драма	Фэррен Блэкберн, Ричард Кларк, Энди Хэй	55
4713	Бывает и хуже (6 сезон)	https://kinokrad.co/275563-byvaet-i-huzhe-6-sezon-18-seriya.html	7	2014	США	комедия	Ли Шаллат Чемел, Эллиот Хегарти	22
4714	Американский папаша (10 сезон)	https://kinokrad.co/274136-amerikanskiy-papasha-10-11-seriya.html	8	2014	США	мультфильм, комедия	Рон Хьюгарт, Брент Вудс, Энтони Льои	22
4715	Чёрный список (2 сезон)	https://kinokrad.co/272630-chernyy-spisok-2-sezon-18-seriya.html	9	2014	США	триллер, драма, криминал, детектив	Майкл В. Уоткинс, Винс Мисиано, Джо Карнахан	43
4716	Письма на стекле (1 сезон)	https://kinokrad.co/280203-pisma-na-stekle-1-sezon-2014.html	8	2014	Россия	мелодрама	Рената Грицкова	43
4717	Гримм (4 сезон)	https://kinokrad.co/272320-grimm-4-sezon-16-seriya.html	9	2014	США	ужасы, фэнтези, драма, детектив	Норберто Барба, Терренс О’Хара, Стивен ДеПол	43
4718	Элементарно (3 сезон)	https://kinokrad.co/278326-elementarno-3-sezon-18-seriya.html	9	2014	США	драма, криминал, детектив	Сет Манн, Джон Полсон	43
4719	Гавайи 5.0 (5 сезон)	https://kinokrad.co/272580-gavayi-5.0-5-sezon-19-seriya.html	7	2014	США	боевик, драма, криминал	Брайан Спайсер, Стив Бойум, Ларри Тенг	43
4720	Чужой район 3 (3 сезон)	https://kinokrad.co/284993-chuzhoy-rayon-3-3-sezon-2014.html	7	2014	Россия	детектив, криминал	Игорь Драка, Дмитрий Аверин, Богдан Дробязко	45
4721	Блудливая Калифорния (7 сезон)	https://kinokrad.co/281817-bludlivaya-kaliforniya-7-sezon-2014.html	10	2014	США	драма, комедия	Дэвид Фон Энкен, Адам Бернштейн, Джон Дал	28
4722	Готэм (1 сезон)	https://kinokrad.co/271993-gotem-1-sezon-18-seriya.html	9	2014	США	триллер, драма, криминал	Дэнни Кэннон	44
4723	Подопытные (3 сезон)	https://kinokrad.co/272762-podopytnye-3-sezon.html	7	2014	США	фэнтези, боевик, комедия	Виктор Гонзалез, Гай Дистад, Джоди Марголин	22
4724	Две девицы на мели (4 сезон)	https://kinokrad.co/272468-dve-devicy-na-meli-4-sezon.html	8	2014	США	комедия	Дон Скардино, Фред Сэвэдж, Фил Льюис	22
4725	Служба расследований (2 сезон)	https://kinokrad.co/272989-sluzhba-rassledovaniy-8-sezon.html	6	2014	Франция	криминал	Жерар Маркс, Эрик Ле Ру, Жан-Люк Брайтенштайн	50
4726	Последствия (4 сезон)	https://kinokrad.co/272953-posledstviya-4-sezon.html	9	2014	Великобритания	драма, криминал	Джеймс Хоуз, Билл Андерсон, Марек Лоузи	45
4727	Пересекая черту (2 сезон)	https://kinokrad.co/272927-peresekaya-chertu-2-sezon.html	5	2014	Франция, Германия, США	боевик, драма, криминал	Дэниэл Персивал, Эрик Валетт, Ксавье Жанс	43
4728	Телеведущие (2 сезон)	https://kinokrad.co/272916-televeduschie-2-sezon.html	7	2014	США	новости, комедия	Джим Маргулис, Джо Бурк, Османи Родригез	11
4729	Бесы (1-4 серия)	https://kinokrad.co/272594-besy-18-04.html	8	2014	Россия	драма, детектив	Владимир Хотиненко	60
4730	Склифосовский 3 сезон (1-24 серия)	https://kinokrad.co/272327-sklifosovskiy-3-sezon-18-04.html	8	2014	Россия	драма, мелодрама	Андрей Селиванов, Юлия Краснова	45
4731	Череп и кости (1-9 серия)	https://kinokrad.co/271621-cherep-i-kosti-18-04.html	8	2014	США	драма, приключения	Дэниэл Эттиэс, Киаран Доннелли, Деран Сарафян	60
4732	Да здравствует король Джулиан (1 сезон)	https://kinokrad.co/280735-da-zdravstvuet-korol-dzhulian-1-seriya.html	8	2014	США	мультфильм, комедия, семейный	Christo Stamboliev, Мэтт Энгстром, Джеймс Вуттон	22
4733	Верь мне (1-8 серия)	https://kinokrad.co/272551-ver-mne-18-04.html	8	2014	Россия	драма	Павел Дроздов	44
4734	Положение дел (1 сезон)	https://kinokrad.co/272945-polozhenie-del-1-sezon-4-seriya.html	5	2014	США	триллер, драма	Джо Карнахан	45
4735	Мой безумный дневник (2 сезон)	https://kinokrad.co/283534-moy-bezumnyy-dnevnik-2-sezon-2014.html	7	2014	Великобритания	драма, мелодрама, комедия	Алекс Винклер, Бенжамин Карон, Тим Киркби	47
4736	Добро пожаловать в Швецию (1 сезон)	https://kinokrad.co/280928-dobro-pozhalovat-v-shveciyu-1-sezon-6-seriya.html	6	2014	Швеция	комедия	Карл Остранд	21
4768	Гриффины (13 сезон)	https://kinokrad.co/272355-griffiny-13-sezon-13-seriya.html	7	2014	США	мультфильм, комедия	Питер Шин, Джеймс Пурдум, Пит Мишелс	22
4737	Зои Харт из южного штата (4 сезон)	https://kinokrad.co/283498-zoi-hart-iz-yuzhnogo-shtata-4-sezon-2014.html	7	2014	США	драма, мелодрама, комедия	Дэвид Пэймер, Тим Мэтисон, Джеймс Хейман	43
4738	Их перепутали в роддоме (3 сезон)	https://kinokrad.co/14831-ih-pereputali-v-roddome-3-sezon.html	8	2014	США	драма, семейный	Стив Майнер, Рон Лагомарсино	43
4739	Уэнтуорт (2 сезон)	https://kinokrad.co/272903-uentuort-2-sezon-7-seriya.html	8	2014	Австралия	криминал	Кевин Карлин, Катрин Миллар, Тори Гаррет	
4740	Сказка о хвосте феи (2 сезон)	https://kinokrad.co/256152-skazka-o-hvoste-fei-2-sezon-52-seriya.html	8	2014	Япония	аниме, мультфильм, фэнтези, приключения	Синдзи Ишихира	25
4741	Счастливая долина (1 сезон)	https://kinokrad.co/287081-schastlivaya-dolina-1-sezon-2014.html	7	2014	Великобритания	драма, криминал	Салли Уэйнрайт, Эрос Лин, Тим Файвелл	60
4742	Бездельник (1 сезон)	https://kinokrad.co/287045-bezdelnik-1-sezon-2014.html	7	2014	США	комедия, фэнтези, мистика	Трой Миллер, Тодд Бирман, Хит Калленс	22
4743	Родители (6 сезон)	https://kinokrad.co/272797-roditeli-6-sezon.html	8	2014	США	драма, комедия	Лоуренс Триллинг, Патрик Р. Норрис, Кен Уиттингэм	43
4744	Морская полиция: Спецотдел (12 сезон)	https://kinokrad.co/278119-morskaya-policiya-specotdel-12-sezon-15-seriya.html	8	2014	США	боевик, триллер, драма, комедия, криминал, детектив	Дэннис Смит, Томас Дж. Райт	43
4745	Вызов (2 сезон)	https://kinokrad.co/282406-vyzov-2-sezon-2014.html	7	2014	США	фантастика, боевик, драма	Майкл Нанкин, Аллен Крокер, Энди Волк	43
4746	Тиран (1 сезон)	https://kinokrad.co/282409-tiran-1-sezon-2014.html	8	2014	США	боевик, триллер, драма	Майкл Леманн, Гвинет Хердер-Пэйтон, Дэвид Петрарка	60
4747	Убийство первой степени (1 сезон)	https://kinokrad.co/282405-ubiystvo-pervoy-stepeni-1-sezon-2014.html	8	2014	США	драма, криминал, детектив	Джесси Бокко, Эллисон Андерс, Реджинальд Хадлин	42
4748	Американский папаша (11 сезон)	https://kinokrad.co/286337-amerikanskiy-papasha-11-sezon-2014.html	7	2014	США	мультфильм, комедия	Рон Хьюгарт, Брент Вудс, Энтони Льои	22
4749	Время приключений (6 сезон)	https://kinokrad.co/272389-vremya-priklyucheniy-6-sezon-31-seriya.html	8	2014	США	мультфильм, фэнтези, комедия, приключения	Ларри Лэйчлитер, Элизабет Ито, Адам Муто	11
4750	Политические игры (1 сезон)	https://kinokrad.co/279977-politicheskie-igry-1-sezon-4-seriya.html	5	2014	Австралия	драма	Кейт Дэннис, Эмма Фриман	44
4751	Место, что домом зовётся (2 сезон)	https://kinokrad.co/290128-mesto-chto-domom-zovjotsya-2-sezon-2014.html	7	2014	Австралия	драма	Линн-Мэри Дэнзе, Марк Джофф, Йен Бэрри	60
4752	Однокурсники (5 сезон)	https://kinokrad.co/284717-odnokursniki-5-sezon-2014.html	6	2014	США	комедия	Тристрам Шапиро, Джо Руссо, Энтони Руссо	22
4753	Бриклберри (3 сезон)	https://kinokrad.co/281464-briklberri-3-sezon-2014.html	8	2014	США	мультфильм, комедия	Захари Монкриф, Род Амадор, Брайан ЛоСкьяво	22
4754	Фальсификация (2 сезон)	https://kinokrad.co/276989-falsifikaciya-2-sezon-10-seriya.html	6	2014	США	комедия	Джеми Трэвис, Клер Скэнлон	30
4755	Плохая судья (1 сезон)	https://kinokrad.co/277563-plohaya-sudya-1-sezon-2014.html	8	2014	США	комедия	Эндрю Флеминг	20
4756	Восприятие (3 сезон)	https://kinokrad.co/272518-vospriyatie-3-sezon-12-seriya.html	7	2014	США	триллер, драма, криминал, детектив	Крис Мисиано, Грег Биман, Кеннет Биллер	43
4757	Ты — воплощение порока (1 сезон)	https://kinokrad.co/283439-ty-voploschenie-poroka-1-sezon-2014.html	8	2014	США	комедия, мелодрама	Алекс Хардкасл, Джордан Вот-Робертс, Мэтт Шекман	24
4758	Вызовите акушерку (3 сезон)	https://kinokrad.co/272480-vyzovite-akusherku-3-sezon.html	8	2014	Великобритания	драма	Филиппа Лоуторп, Чина Му-Ен, Минки Спиро	58
4759	Девственница Джейн (1 сезон)	https://kinokrad.co/272012-devstvennica-dzheyn-1-sezon-16-seriya.html	8	2014	США	драма	Брэд Силберлинг	60
4760	Наш зоопарк (1 сезон)	https://kinokrad.co/282386-nash-zoopark-1-sezon-2014.html	9	2014	Великобритания	драма	Энди де Эммони, Роберт МакКиллоп, Сауль Метцштайн	55
4761	Матадор (1 сезон)	https://kinokrad.co/272146-matador-1-sezon-7-seriya.html	7	2014	США	боевик	Ник Копус, Джошуа Батлер, Роберт Родригес	48
4762	Супружеский долг (1 сезон)	https://kinokrad.co/282389-supruzheskiy-dolg-1-sezon-2014.html	8	2014	США	драма	Кевин Брэй, Майкл Смит, Дженнифер Гетцингер	44
4763	Кости (10 сезон)	https://kinokrad.co/272277-kosti-10-sezon-12-seriya.html	9	2014	США	драма, мелодрама, комедия, криминал, детектив	Иэн Тойнтон, Дуайт Х. Литтл, Жанно Шварц	43
4764	Ошибки прошлого (2 сезон)	https://kinokrad.co/271791-oshibki-proshlogo-2-sezon.html	7	2014	США	драма	Стивен Джилленхол, Билл Джирхарт, Джим МакКэй	46
4765	Малыш Мун (3 сезон)	https://kinokrad.co/271892-malysh-mun-3.html	8	2014	Великобритания, Ирландия	комедия	Деклан Лауни, Йен Фитцгиббон	23
4766	Всё включено (6 сезон)	https://kinokrad.co/292021-vsjo-vklyucheno-6-sezon-2014.html	4	2014	Великобритания	комедия	Сэнди Джонсон, Дэвид Сент, Кевин Аллен	30
4767	Военная хроника (1 сезон)	https://kinokrad.co/271745-voennaya-hronika-1-sezon.html	6	2014	Франция, Бельгия	фантастика, боевик	Уильям Лубрано	22
4769	Морская полиция: Лос-Анджелес (6 сезон)	https://kinokrad.co/272834-morskaya-policiya-los-andzheles-6-sezon-19-seriya.html	7	2014	США	триллер, драма, криминал, детектив	Тони Уормби, Терренс О’Хара, Джеймс Уитмор мл	43
4770	Чужестранка (1 сезон)	https://kinokrad.co/273033-chuzhestranka-9-seriya.html	8	2014	США	фантастика, драма, мелодрама	Брайан Келли, Анна Ферстер, Ричард Кларк	60
4771	Универ. Новая общага (2 сезон)	https://kinokrad.co/272336-univer-novaya-obschaga-2-sezon-58-seriya.html	8	2014	Россия	комедия	Константин Смирнов, Максим Зыков	23
4772	Континуум (3 сезон)	https://kinokrad.co/283262-kontinuum-3-sezon-2014.html	8	2014	Канада	фантастика, боевик, триллер	Пэт Уильямс, Уильям Варинг, Дэвид Фрэйзи	44
4773	Тайны Хейвена (5 сезон)	https://kinokrad.co/272566-tayny-heyvena-5-sezon-13-seriya.html	7	2014	Канада, США	ужасы, фантастика, фэнтези, триллер, драма, криминал, детектив	Шон Пиллер, Ли Роуз, Т.У. Пикок	43
4774	Флэш (1 сезон)	https://kinokrad.co/273019-flesh-1-sezon-17-seriya.html	9	2014	США	фантастика, фэнтези, боевик, драма, приключения	Дэвид Наттер, Джесси Уарн	
4775	Речные монстры (6 сезон)	https://kinokrad.co/282035-rechnye-monstry-6-sezon-2014.html	7	2014	США	документальный	Барни Ревилл, Доминик Уэстон, Шарлотта Джонс	45
4776	Сотня 1 сезон (1-13 серия)	https://kinokrad.co/280955-sotnya-1-sezon.html	8	2014	США	фантастика, драма	Дин Уайт, П.Дж. Пеше, Джон Шоуолтер	60
4777	Две разорившиеся девочки (4 сезон)	https://kinokrad.co/278780-dve-razorivshiesya-devochki-4-sezon-16-seriya.html	7	2014	США	комедия	Дон Скардино, Фред Сэвэдж	22
4778	Нэшвилл (3 сезон)	https://kinokrad.co/9960-njeshvill-3-sezon-14-seriya.html	8	2014	США	драма, музыка, слова	Пол МакКрейн, Р.Дж. Катлер, Стивен Крегг	43
4779	Сотня 2 сезон (1-16 серия)	https://kinokrad.co/278305-sotnya-2-sezon.html	9	2014	США	фантастика, драма	Дин Уайт, П.Дж. Пеше, Джон Шоуолтер	60
4780	Неудачница / Скамья подсудимых (12 серия)	https://kinokrad.co/280542-neudachnica-skamya-podsudimyh-12-seriya.html	7	2014	США	комедия	Эрик Аппель, Майкл МакДональд, Виктор Нелли мл	23
4781	Звездные войны: Повстанцы 1 сезон (14 серия)	https://kinokrad.co/272027-zvezdnye-voyny-povstancy-1-sezon-14-seriya.html	8	2014	США	мультфильм, фантастика, фэнтези, боевик, приключения	Steven G. Lee, Стюарт Ли	30
4782	Последний настоящий мужчина (4 сезон)	https://kinokrad.co/271905-posledniy-nastoyaschiy-muzhchina-4.html	7	2014	США	комедия	Джон Пасквин, Тед Уасс, Джонатан Тейлор Томас	22
4783	Новенькая (4 сезон)	https://kinokrad.co/272444-novenkaya-4-sezon-14-seriya.html	7	2014	США	комедия	Джейк Кэздан, Макс Уинклер, Джесси Перетц	22
4784	Мафиоза (5 сезон)	https://kinokrad.co/271896-mafioza-5-sezon.html	7	2014	Франция	драма, криминал	Эрик Рошан, Пьер Леччия, Луи Шокетт	416
4785	Девочки поймут (1 сезон)	https://kinokrad.co/271787-devochki-poymut-1-sezon.html	7	2014	Россия	комедия	Владимир Нагорный	23
4786	Это Джинси (1 сезон)	https://kinokrad.co/271801-jeto-dzhinsi-1-sezon.html	4	2014	Великобритания	мюзикл, комедия	Мэтт Липси, Крис Брэн, Джастин Чубб	22
4787	Американцы (2 сезон)	https://kinokrad.co/284697-amerikancy-2-sezon-2014.html	8	2014	США	триллер, драма, криминал, детектив	Дэниэл Сакхайм, Томас Шламми, Кевин Даулинг	43
4788	Мистер Ди (3 сезон)	https://kinokrad.co/271719-mister-di-3-sezon.html	3	2014	Канада	комедия	Стив Райт, Кит Сэмплз, Джейкоб Тирни	30
4789	Крёстный (1 сезон)	https://kinokrad.co/272077-krjostnyy-1-sezon.html	8	2014	Россия	драма	Тимур Алпатов	45
4790	Девушка познаёт мир (1 сезон)	https://kinokrad.co/272016-devushka-poznaet-mir-1-sezon.html	9	2014	США	драма, комедия, семейный	Джон Уайтселл, Бен Сэвидж, Райдер Стронг	20
4791	Гудини (1 сезон)	https://kinokrad.co/272001-gudini-1-sezon.html	9	2014	Канада	драма, биография	Ули Эдел	45
4792	Американская революция (1 сезон)	https://kinokrad.co/281663-amerikanskaya-revolyuciya-1-sezon-2014.html	7	2014	США	документальный, военный, история	Кевин Р. Хершбергер	45
4793	Скорпион (1 сезон)	https://kinokrad.co/276358-skorpion-1-sezon-20-seriya.html	8	2014	США	боевик, драма	Гэри Фледер, Дуайт Х. Литтл, Бобби Рот	42
4794	Королевство (1 сезон)	https://kinokrad.co/282972-korolevstvo-1-sezon-2014.html	9	2014	США	драма	Майкл Моррис, Гэри Фледер, Адам Дэвидсон	43
4795	Инструкция по разводу для женщин (1 сезон)	https://kinokrad.co/280720-instrukciya-po-razvodu-dlya-zhenschin-4-seriya.html	6	2014	США	драма, комедия	Виктор Нелли мл., Сильвер Три	60
4796	Анатомия страсти (11 сезон)	https://kinokrad.co/276593-anatomiya-strasti-11-sezon-18-seriya.html	8	2014	США	драма, мелодрама	Роб Корн, Тони Фелан, Том Верика	43
4797	Присяжные / Суд присяжных (1 сезон)	https://kinokrad.co/281059-prisyazhnye-sud-prisyazhnyh-1-sezon-9-seriya.html	6	2014	США	триллер	Кевин Танчароэн, Шоун Ку	22
4798	Спираль (2 сезон)	https://kinokrad.co/279981-spiral-2-sezon-12-seriya.html	7	2014	США, Канада	фантастика, триллер	Брэд Тернер, Джеримайя С. Чечик, Дуан Кларк	40
4799	Дневники вампира (6 сезон)	https://kinokrad.co/276832-dnevniki-vampira-6-sezon-17-seriya.html	8	2014	США	ужасы, фэнтези, триллер, драма, мелодрама, детектив	Маркос Сига, Крис Грисмер	43
4800	Семейный бизнес (1 сезон)	https://kinokrad.co/275104-semeynyy-biznes-2014.html	9	2014	Россия	отечественный, комедия	Алексей Чистиков	20
4801	Дом призраков семьи Хэтэуэй (2 сезон)	https://kinokrad.co/272548-dom-prizrakov-semi-heteuey-2-sezon.html	7	2014	США	фэнтези, комедия, семейный, мистика	Роджер Кристиансен, Шеннон Флинн, Тревор Киршнер	30
4802	Такова жизнь (5 сезон)	https://kinokrad.co/272847-takova-zhizn-5-sezon.html	6	2014	Австралия	драма, комедия	Кейт Дэннис, Эмма Фриман, Ширли Баррет	43
4803	Игры разума (1 сезон)	https://kinokrad.co/272864-igry-razuma-1-sezon.html	7	2014	США	драма	Тимоти Басфилд, Мигель Сапочник, Сара Пиа Андерсон	60
4804	Атлантида (2 сезон)	https://kinokrad.co/279003-atlantida-2-sezon-6-seriya.html	8	2014	Великобритания	фэнтези, приключения	Джастин Молотников	43
4805	Фиксики (2 сезон)	https://kinokrad.co/287123-fiksiki-2-sezon-2014.html	8	2014	Россия	мультфильм, детский	Васико Бедошвили, Андрей Колпин, Сергей Меринов	6
4806	Американская семейка (6 сезон)	https://kinokrad.co/272441-amerikanskaya-semeyka-6-sezon-19-seriya.html	7	2014	США	комедия	Майкл Спиллер, Джейсон Уайнер, Гейл Манкусо	22
4807	Пожарные Чикаго / Чикаго в огне (3 сезон)	https://kinokrad.co/276594-pozharnye-chikago-3-sezon-18-seriya.html	8	2014	США	драма	Джо Чаппелль, Жан Де Сегонзак	43
4808	Фостеры (2 сезон)	https://kinokrad.co/271874-fostery-2-sezon-17-seriya.html	7	2014	США	драма	Норман Бакли, Марта Митчелл, Ли Роуз	45
4809	Черная река (1 сезон)	https://kinokrad.co/282014-chernaya-reka-1-sezon-2015.html	7	2014	Россия	боевик	Стас Иванов	45
4810	Касл (7 сезон)	https://kinokrad.co/276707-kasl-7-sezon-19-seriya.html	8	2014	США	драма, комедия, криминал, детектив	Джон Терлески, Роб Боумен	43
4811	Агенты «Щ.И.Т.» (2 сезон)	https://kinokrad.co/278530-agenty-sch.i.t.-2-sezon-15-seriya.html	8	2014	США	фантастика, боевик, драма	Винс Мисиано, Бобби Рот, Милан Чейлов	45
4812	Мушкетеры (2 сезон)	https://kinokrad.co/279906-mushketery-2-sezon-10-seriya.html	8	2014	Великобритания	драма	Фэррен Блэкберн, Ричард Кларк, Энди Хэй	55
4813	Бывает и хуже (6 сезон)	https://kinokrad.co/275563-byvaet-i-huzhe-6-sezon-18-seriya.html	7	2014	США	комедия	Ли Шаллат Чемел, Эллиот Хегарти	22
4814	Американский папаша (10 сезон)	https://kinokrad.co/274136-amerikanskiy-papasha-10-11-seriya.html	8	2014	США	мультфильм, комедия	Рон Хьюгарт, Брент Вудс, Энтони Льои	22
4815	Чёрный список (2 сезон)	https://kinokrad.co/272630-chernyy-spisok-2-sezon-18-seriya.html	9	2014	США	триллер, драма, криминал, детектив	Майкл В. Уоткинс, Винс Мисиано, Джо Карнахан	43
4816	Письма на стекле (1 сезон)	https://kinokrad.co/280203-pisma-na-stekle-1-sezon-2014.html	8	2014	Россия	мелодрама	Рената Грицкова	43
4817	Гримм (4 сезон)	https://kinokrad.co/272320-grimm-4-sezon-16-seriya.html	9	2014	США	ужасы, фэнтези, драма, детектив	Норберто Барба, Терренс О’Хара, Стивен ДеПол	43
4818	Элементарно (3 сезон)	https://kinokrad.co/278326-elementarno-3-sezon-18-seriya.html	9	2014	США	драма, криминал, детектив	Сет Манн, Джон Полсон	43
4819	Гавайи 5.0 (5 сезон)	https://kinokrad.co/272580-gavayi-5.0-5-sezon-19-seriya.html	7	2014	США	боевик, драма, криминал	Брайан Спайсер, Стив Бойум, Ларри Тенг	43
4820	Чужой район 3 (3 сезон)	https://kinokrad.co/284993-chuzhoy-rayon-3-3-sezon-2014.html	7	2014	Россия	детектив, криминал	Игорь Драка, Дмитрий Аверин, Богдан Дробязко	45
4821	Блудливая Калифорния (7 сезон)	https://kinokrad.co/281817-bludlivaya-kaliforniya-7-sezon-2014.html	10	2014	США	драма, комедия	Дэвид Фон Энкен, Адам Бернштейн, Джон Дал	28
4822	Готэм (1 сезон)	https://kinokrad.co/271993-gotem-1-sezon-18-seriya.html	9	2014	США	триллер, драма, криминал	Дэнни Кэннон	44
4823	Подопытные (3 сезон)	https://kinokrad.co/272762-podopytnye-3-sezon.html	7	2014	США	фэнтези, боевик, комедия	Виктор Гонзалез, Гай Дистад, Джоди Марголин	22
4824	Две девицы на мели (4 сезон)	https://kinokrad.co/272468-dve-devicy-na-meli-4-sezon.html	8	2014	США	комедия	Дон Скардино, Фред Сэвэдж, Фил Льюис	22
4825	Служба расследований (2 сезон)	https://kinokrad.co/272989-sluzhba-rassledovaniy-8-sezon.html	6	2014	Франция	криминал	Жерар Маркс, Эрик Ле Ру, Жан-Люк Брайтенштайн	50
4826	Последствия (4 сезон)	https://kinokrad.co/272953-posledstviya-4-sezon.html	9	2014	Великобритания	драма, криминал	Джеймс Хоуз, Билл Андерсон, Марек Лоузи	45
4827	Пересекая черту (2 сезон)	https://kinokrad.co/272927-peresekaya-chertu-2-sezon.html	5	2014	Франция, Германия, США	боевик, драма, криминал	Дэниэл Персивал, Эрик Валетт, Ксавье Жанс	43
4828	Телеведущие (2 сезон)	https://kinokrad.co/272916-televeduschie-2-sezon.html	7	2014	США	новости, комедия	Джим Маргулис, Джо Бурк, Османи Родригез	11
4829	Бесы (1-4 серия)	https://kinokrad.co/272594-besy-18-04.html	8	2014	Россия	драма, детектив	Владимир Хотиненко	60
4830	Склифосовский 3 сезон (1-24 серия)	https://kinokrad.co/272327-sklifosovskiy-3-sezon-18-04.html	8	2014	Россия	драма, мелодрама	Андрей Селиванов, Юлия Краснова	45
4988	Легавый 2 сезон (1-33 серия)	https://kinokrad.co/9191-legavyy-2-sezon.html	7	2014	Россия	детектив	Рустам Уразаев, Сергей Артимович	45
4831	Череп и кости (1-9 серия)	https://kinokrad.co/271621-cherep-i-kosti-18-04.html	8	2014	США	драма, приключения	Дэниэл Эттиэс, Киаран Доннелли, Деран Сарафян	60
4832	Да здравствует король Джулиан (1 сезон)	https://kinokrad.co/280735-da-zdravstvuet-korol-dzhulian-1-seriya.html	8	2014	США	мультфильм, комедия, семейный	Christo Stamboliev, Мэтт Энгстром, Джеймс Вуттон	22
4833	Верь мне (1-8 серия)	https://kinokrad.co/272551-ver-mne-18-04.html	8	2014	Россия	драма	Павел Дроздов	44
4834	Положение дел (1 сезон)	https://kinokrad.co/272945-polozhenie-del-1-sezon-4-seriya.html	5	2014	США	триллер, драма	Джо Карнахан	45
4835	Мой безумный дневник (2 сезон)	https://kinokrad.co/283534-moy-bezumnyy-dnevnik-2-sezon-2014.html	7	2014	Великобритания	драма, мелодрама, комедия	Алекс Винклер, Бенжамин Карон, Тим Киркби	47
4836	Добро пожаловать в Швецию (1 сезон)	https://kinokrad.co/280928-dobro-pozhalovat-v-shveciyu-1-sezon-6-seriya.html	6	2014	Швеция	комедия	Карл Остранд	21
4837	Зои Харт из южного штата (4 сезон)	https://kinokrad.co/283498-zoi-hart-iz-yuzhnogo-shtata-4-sezon-2014.html	7	2014	США	драма, мелодрама, комедия	Дэвид Пэймер, Тим Мэтисон, Джеймс Хейман	43
4838	Их перепутали в роддоме (3 сезон)	https://kinokrad.co/14831-ih-pereputali-v-roddome-3-sezon.html	8	2014	США	драма, семейный	Стив Майнер, Рон Лагомарсино	43
4839	Уэнтуорт (2 сезон)	https://kinokrad.co/272903-uentuort-2-sezon-7-seriya.html	8	2014	Австралия	криминал	Кевин Карлин, Катрин Миллар, Тори Гаррет	
4840	Сказка о хвосте феи (2 сезон)	https://kinokrad.co/256152-skazka-o-hvoste-fei-2-sezon-52-seriya.html	8	2014	Япония	аниме, мультфильм, фэнтези, приключения	Синдзи Ишихира	25
4841	Счастливая долина (1 сезон)	https://kinokrad.co/287081-schastlivaya-dolina-1-sezon-2014.html	7	2014	Великобритания	драма, криминал	Салли Уэйнрайт, Эрос Лин, Тим Файвелл	60
4842	Бездельник (1 сезон)	https://kinokrad.co/287045-bezdelnik-1-sezon-2014.html	7	2014	США	комедия, фэнтези, мистика	Трой Миллер, Тодд Бирман, Хит Калленс	22
4843	Родители (6 сезон)	https://kinokrad.co/272797-roditeli-6-sezon.html	8	2014	США	драма, комедия	Лоуренс Триллинг, Патрик Р. Норрис, Кен Уиттингэм	43
4844	Морская полиция: Спецотдел (12 сезон)	https://kinokrad.co/278119-morskaya-policiya-specotdel-12-sezon-15-seriya.html	8	2014	США	боевик, триллер, драма, комедия, криминал, детектив	Дэннис Смит, Томас Дж. Райт	43
4845	Вызов (2 сезон)	https://kinokrad.co/282406-vyzov-2-sezon-2014.html	7	2014	США	фантастика, боевик, драма	Майкл Нанкин, Аллен Крокер, Энди Волк	43
4846	Тиран (1 сезон)	https://kinokrad.co/282409-tiran-1-sezon-2014.html	8	2014	США	боевик, триллер, драма	Майкл Леманн, Гвинет Хердер-Пэйтон, Дэвид Петрарка	60
4847	Убийство первой степени (1 сезон)	https://kinokrad.co/282405-ubiystvo-pervoy-stepeni-1-sezon-2014.html	8	2014	США	драма, криминал, детектив	Джесси Бокко, Эллисон Андерс, Реджинальд Хадлин	42
4848	Американский папаша (11 сезон)	https://kinokrad.co/286337-amerikanskiy-papasha-11-sezon-2014.html	7	2014	США	мультфильм, комедия	Рон Хьюгарт, Брент Вудс, Энтони Льои	22
4849	Время приключений (6 сезон)	https://kinokrad.co/272389-vremya-priklyucheniy-6-sezon-31-seriya.html	8	2014	США	мультфильм, фэнтези, комедия, приключения	Ларри Лэйчлитер, Элизабет Ито, Адам Муто	11
4850	Политические игры (1 сезон)	https://kinokrad.co/279977-politicheskie-igry-1-sezon-4-seriya.html	5	2014	Австралия	драма	Кейт Дэннис, Эмма Фриман	44
4851	Место, что домом зовётся (2 сезон)	https://kinokrad.co/290128-mesto-chto-domom-zovjotsya-2-sezon-2014.html	7	2014	Австралия	драма	Линн-Мэри Дэнзе, Марк Джофф, Йен Бэрри	60
4852	Однокурсники (5 сезон)	https://kinokrad.co/284717-odnokursniki-5-sezon-2014.html	6	2014	США	комедия	Тристрам Шапиро, Джо Руссо, Энтони Руссо	22
4853	Бриклберри (3 сезон)	https://kinokrad.co/281464-briklberri-3-sezon-2014.html	8	2014	США	мультфильм, комедия	Захари Монкриф, Род Амадор, Брайан ЛоСкьяво	22
4854	Фальсификация (2 сезон)	https://kinokrad.co/276989-falsifikaciya-2-sezon-10-seriya.html	6	2014	США	комедия	Джеми Трэвис, Клер Скэнлон	30
4855	Плохая судья (1 сезон)	https://kinokrad.co/277563-plohaya-sudya-1-sezon-2014.html	8	2014	США	комедия	Эндрю Флеминг	20
4856	Восприятие (3 сезон)	https://kinokrad.co/272518-vospriyatie-3-sezon-12-seriya.html	7	2014	США	триллер, драма, криминал, детектив	Крис Мисиано, Грег Биман, Кеннет Биллер	43
4857	Ты — воплощение порока (1 сезон)	https://kinokrad.co/283439-ty-voploschenie-poroka-1-sezon-2014.html	8	2014	США	комедия, мелодрама	Алекс Хардкасл, Джордан Вот-Робертс, Мэтт Шекман	24
4858	Вызовите акушерку (3 сезон)	https://kinokrad.co/272480-vyzovite-akusherku-3-sezon.html	8	2014	Великобритания	драма	Филиппа Лоуторп, Чина Му-Ен, Минки Спиро	58
4859	Девственница Джейн (1 сезон)	https://kinokrad.co/272012-devstvennica-dzheyn-1-sezon-16-seriya.html	8	2014	США	драма	Брэд Силберлинг	60
4860	Наш зоопарк (1 сезон)	https://kinokrad.co/282386-nash-zoopark-1-sezon-2014.html	9	2014	Великобритания	драма	Энди де Эммони, Роберт МакКиллоп, Сауль Метцштайн	55
4861	Матадор (1 сезон)	https://kinokrad.co/272146-matador-1-sezon-7-seriya.html	7	2014	США	боевик	Ник Копус, Джошуа Батлер, Роберт Родригес	48
4862	Супружеский долг (1 сезон)	https://kinokrad.co/282389-supruzheskiy-dolg-1-sezon-2014.html	8	2014	США	драма	Кевин Брэй, Майкл Смит, Дженнифер Гетцингер	44
4863	Кости (10 сезон)	https://kinokrad.co/272277-kosti-10-sezon-12-seriya.html	9	2014	США	драма, мелодрама, комедия, криминал, детектив	Иэн Тойнтон, Дуайт Х. Литтл, Жанно Шварц	43
4864	Ошибки прошлого (2 сезон)	https://kinokrad.co/271791-oshibki-proshlogo-2-sezon.html	7	2014	США	драма	Стивен Джилленхол, Билл Джирхарт, Джим МакКэй	46
4865	Малыш Мун (3 сезон)	https://kinokrad.co/271892-malysh-mun-3.html	8	2014	Великобритания, Ирландия	комедия	Деклан Лауни, Йен Фитцгиббон	23
4866	Всё включено (6 сезон)	https://kinokrad.co/292021-vsjo-vklyucheno-6-sezon-2014.html	4	2014	Великобритания	комедия	Сэнди Джонсон, Дэвид Сент, Кевин Аллен	30
4867	Военная хроника (1 сезон)	https://kinokrad.co/271745-voennaya-hronika-1-sezon.html	6	2014	Франция, Бельгия	фантастика, боевик	Уильям Лубрано	22
4868	Гриффины (13 сезон)	https://kinokrad.co/272355-griffiny-13-sezon-13-seriya.html	7	2014	США	мультфильм, комедия	Питер Шин, Джеймс Пурдум, Пит Мишелс	22
4869	Морская полиция: Лос-Анджелес (6 сезон)	https://kinokrad.co/272834-morskaya-policiya-los-andzheles-6-sezon-19-seriya.html	7	2014	США	триллер, драма, криминал, детектив	Тони Уормби, Терренс О’Хара, Джеймс Уитмор мл	43
4870	Чужестранка (1 сезон)	https://kinokrad.co/273033-chuzhestranka-9-seriya.html	8	2014	США	фантастика, драма, мелодрама	Брайан Келли, Анна Ферстер, Ричард Кларк	60
4871	Универ. Новая общага (2 сезон)	https://kinokrad.co/272336-univer-novaya-obschaga-2-sezon-58-seriya.html	8	2014	Россия	комедия	Константин Смирнов, Максим Зыков	23
4872	Континуум (3 сезон)	https://kinokrad.co/283262-kontinuum-3-sezon-2014.html	8	2014	Канада	фантастика, боевик, триллер	Пэт Уильямс, Уильям Варинг, Дэвид Фрэйзи	44
4873	Тайны Хейвена (5 сезон)	https://kinokrad.co/272566-tayny-heyvena-5-sezon-13-seriya.html	7	2014	Канада, США	ужасы, фантастика, фэнтези, триллер, драма, криминал, детектив	Шон Пиллер, Ли Роуз, Т.У. Пикок	43
4874	Флэш (1 сезон)	https://kinokrad.co/273019-flesh-1-sezon-17-seriya.html	9	2014	США	фантастика, фэнтези, боевик, драма, приключения	Дэвид Наттер, Джесси Уарн	
4875	Речные монстры (6 сезон)	https://kinokrad.co/282035-rechnye-monstry-6-sezon-2014.html	7	2014	США	документальный	Барни Ревилл, Доминик Уэстон, Шарлотта Джонс	45
4876	Сотня 1 сезон (1-13 серия)	https://kinokrad.co/280955-sotnya-1-sezon.html	8	2014	США	фантастика, драма	Дин Уайт, П.Дж. Пеше, Джон Шоуолтер	60
4877	Две разорившиеся девочки (4 сезон)	https://kinokrad.co/278780-dve-razorivshiesya-devochki-4-sezon-16-seriya.html	7	2014	США	комедия	Дон Скардино, Фред Сэвэдж	22
4878	Нэшвилл (3 сезон)	https://kinokrad.co/9960-njeshvill-3-sezon-14-seriya.html	8	2014	США	драма, музыка, слова	Пол МакКрейн, Р.Дж. Катлер, Стивен Крегг	43
4879	Сотня 2 сезон (1-16 серия)	https://kinokrad.co/278305-sotnya-2-sezon.html	9	2014	США	фантастика, драма	Дин Уайт, П.Дж. Пеше, Джон Шоуолтер	60
4880	Неудачница / Скамья подсудимых (12 серия)	https://kinokrad.co/280542-neudachnica-skamya-podsudimyh-12-seriya.html	7	2014	США	комедия	Эрик Аппель, Майкл МакДональд, Виктор Нелли мл	23
4881	Звездные войны: Повстанцы 1 сезон (14 серия)	https://kinokrad.co/272027-zvezdnye-voyny-povstancy-1-sezon-14-seriya.html	8	2014	США	мультфильм, фантастика, фэнтези, боевик, приключения	Steven G. Lee, Стюарт Ли	30
4882	Последний настоящий мужчина (4 сезон)	https://kinokrad.co/271905-posledniy-nastoyaschiy-muzhchina-4.html	7	2014	США	комедия	Джон Пасквин, Тед Уасс, Джонатан Тейлор Томас	22
4883	Новенькая (4 сезон)	https://kinokrad.co/272444-novenkaya-4-sezon-14-seriya.html	7	2014	США	комедия	Джейк Кэздан, Макс Уинклер, Джесси Перетц	22
4884	Мафиоза (5 сезон)	https://kinokrad.co/271896-mafioza-5-sezon.html	7	2014	Франция	драма, криминал	Эрик Рошан, Пьер Леччия, Луи Шокетт	416
4885	Девочки поймут (1 сезон)	https://kinokrad.co/271787-devochki-poymut-1-sezon.html	7	2014	Россия	комедия	Владимир Нагорный	23
4886	Это Джинси (1 сезон)	https://kinokrad.co/271801-jeto-dzhinsi-1-sezon.html	4	2014	Великобритания	мюзикл, комедия	Мэтт Липси, Крис Брэн, Джастин Чубб	22
4887	Американцы (2 сезон)	https://kinokrad.co/284697-amerikancy-2-sezon-2014.html	8	2014	США	триллер, драма, криминал, детектив	Дэниэл Сакхайм, Томас Шламми, Кевин Даулинг	43
4888	Мистер Ди (3 сезон)	https://kinokrad.co/271719-mister-di-3-sezon.html	3	2014	Канада	комедия	Стив Райт, Кит Сэмплз, Джейкоб Тирни	30
4889	Крёстный (1 сезон)	https://kinokrad.co/272077-krjostnyy-1-sezon.html	8	2014	Россия	драма	Тимур Алпатов	45
4890	Девушка познаёт мир (1 сезон)	https://kinokrad.co/272016-devushka-poznaet-mir-1-sezon.html	9	2014	США	драма, комедия, семейный	Джон Уайтселл, Бен Сэвидж, Райдер Стронг	20
4891	Гудини (1 сезон)	https://kinokrad.co/272001-gudini-1-sezon.html	9	2014	Канада	драма, биография	Ули Эдел	45
4892	Американская революция (1 сезон)	https://kinokrad.co/281663-amerikanskaya-revolyuciya-1-sezon-2014.html	7	2014	США	документальный, военный, история	Кевин Р. Хершбергер	45
4893	Скорпион (1 сезон)	https://kinokrad.co/276358-skorpion-1-sezon-20-seriya.html	8	2014	США	боевик, драма	Гэри Фледер, Дуайт Х. Литтл, Бобби Рот	42
4894	Королевство (1 сезон)	https://kinokrad.co/282972-korolevstvo-1-sezon-2014.html	9	2014	США	драма	Майкл Моррис, Гэри Фледер, Адам Дэвидсон	43
4895	Инструкция по разводу для женщин (1 сезон)	https://kinokrad.co/280720-instrukciya-po-razvodu-dlya-zhenschin-4-seriya.html	6	2014	США	драма, комедия	Виктор Нелли мл., Сильвер Три	60
4896	Анатомия страсти (11 сезон)	https://kinokrad.co/276593-anatomiya-strasti-11-sezon-18-seriya.html	8	2014	США	драма, мелодрама	Роб Корн, Тони Фелан, Том Верика	43
4897	Присяжные / Суд присяжных (1 сезон)	https://kinokrad.co/281059-prisyazhnye-sud-prisyazhnyh-1-sezon-9-seriya.html	6	2014	США	триллер	Кевин Танчароэн, Шоун Ку	22
4898	Спираль (2 сезон)	https://kinokrad.co/279981-spiral-2-sezon-12-seriya.html	7	2014	США, Канада	фантастика, триллер	Брэд Тернер, Джеримайя С. Чечик, Дуан Кларк	40
4899	Дневники вампира (6 сезон)	https://kinokrad.co/276832-dnevniki-vampira-6-sezon-17-seriya.html	8	2014	США	ужасы, фэнтези, триллер, драма, мелодрама, детектив	Маркос Сига, Крис Грисмер	43
4900	Семейный бизнес (1 сезон)	https://kinokrad.co/275104-semeynyy-biznes-2014.html	9	2014	Россия	отечественный, комедия	Алексей Чистиков	20
4901	Злые птички (2 сезон)	https://kinokrad.co/280802-zlye-ptichki-2-sezon-25-seriya.html	8	2014	Финляндия	мультфильм	Eric Guaglione, Ким Хельминен, Кристофер Сэдлер	3
4902	12 обезьян (1 сезон)	https://kinokrad.co/279942-12-obezyan-1-sezon-12-seriya.html	7	2014	США	фантастика, триллер, драма, детектив, приключения	Дэвид Гроссман, Майкл Ваксман, Джон Бэдэм	42
4903	Стелла (3 сезон)	https://kinokrad.co/281932-stella-3-sezon-2014.html	9	2014	Великобритания	драма, комедия	Эшли Вэй, Тони Дау, Сьюзэн Талли	60
4904	Тёмный мир: Равновесие (1-12 серия)	https://kinokrad.co/281287-tjomnyy-mir-ravnovesie.html	8	2014	Россия	фэнтези	Олег Асадулин	48
4905	Молодые и голодные 1 сезон (1-10 серия)	https://kinokrad.co/281284-molodye-i-golodnye-1-sezon.html	8	2014	США	комедия	Энди Кэдифф, Фил Льюис, Кэти Гарретсон	22
4906	У друзей жизнь лучше	https://kinokrad.co/271780-u-druzey-zhizn-luchshe-11-seriya.html	7	2014	США	комедия	Фред Сэвэдж, Тодд Холлэнд, Джеймс Берроуз	22
4907	Голубая кровь (5 сезон)	https://kinokrad.co/271987-golubaya-krov-5-sezon-2015.html	6	2014	США	драма, криминал	Дэвид Баррет, Ральф Хемекер, Алекс Закржевский	43
4908	Стрела (3 сезон)	https://kinokrad.co/255780-strela-3-sezon-18-seriya.html	8	2014	США	фантастика, боевик, драма, криминал, детектив, приключения	Джон Беринг, Гай Норман Би	43
4909	Зов крови. Потерянная. Фэйри  (5 сезон)	https://kinokrad.co/279559-zov-krovi.-poteryannaya.-feyri-5-sezon-8-seriya.html	8	2014	Канада	фэнтези, криминал	Стив ДиМарко, Рон Мерфи, Джон Фоусет	43
4910	Манхэттенская история любви 1 сезон (11 серия)	https://kinokrad.co/272139-manhettenskaya-istoriya-lyubvi-1-sezon-11-seriya.html	8	2014	США	комедия	Майкл Фреско	30
4911	Виолетта 2 сезон (1-80 серия)	https://kinokrad.co/280385-violetta-2-sezon.html	9	2014	Аргентина	мелодрама, комедия, семейный	Хорхе Ниско, Мартин Саббан, Матиас Риси	43
4912	Сердце звезды (89 серия)	https://kinokrad.co/279533-serdce-zvezdy-89-seriya.html	7	2014	Россия	мелодрама	Сергей Борчуков, Сахат Дурсунов, Эдуард Пальмов	44
4913	Манхэттен (13 серия)	https://kinokrad.co/279874-manhetten-13-seriya.html	7	2014	США	драма	Томас Шламми, Пэрис Барклай, Билл Д’Элиа	43
4914	Бывшие 4 сезон (4 серия)	https://kinokrad.co/271881-byvshie-4-sezon-4-seriya.html	7	2014	США	комедия	Энди Кэдифф, Джеффри Мэлман, Шелли Дженсен	22
4915	Слабая женщина (1-4 серия)	https://kinokrad.co/279723-slabaya-zhenschina-1-4-seriya.html	7	2014	Россия	мелодрама	Всеволод Аравин	46
4916	Пока станица спит (1-270 серия)	https://kinokrad.co/255804-poka-stanica-spit.html	7	2014	Россия, Украина	мелодрама	Александр Мохов, Елена Цыплакова	43
4917	Миллеры в разводе 2 сезон (11 серия)	https://kinokrad.co/272169-millery-v-razvode-2-sezon-11-seriya.html	7	2014	США	комедия	Джеймс Берроуз	22
4918	Покемон 17 сезон (1-39 серия)	https://kinokrad.co/272942-pokemon-17-sezon.html	8	2014	Япония	аниме, мультфильм, комедия, приключения, семейный	Кунихико Юяма, Норихико Судо, Масамицу Хидака	22
4919	Братья по обмену (2 сезон)	https://kinokrad.co/283760-bratya-po-obmenu-2-sezon-2014.html	7	2014	Россия	комедия	Александр Жигалкин	44
4920	Линия Марты (1-4 серия)	https://kinokrad.co/256129-liniya-marty.html	8	2014	Россия	мелодрама	Олег Газе	52
4921	Клондайк (1-7 серия)	https://kinokrad.co/256132-klondayk.html	7	2014	США, Канада	драма, приключения, вестерн	Саймон Селлан Джоунс	46
4922	Дерек 2 сезон (1-6 серия)	https://kinokrad.co/271817-derek-2-sezon.html	8	2014	Великобритания	драма, комедия	Рики Джервэйс	25
4923	Лонгмайр 3 сезон (1-10 серия)	https://kinokrad.co/271825-longmayr-3-sezon.html	7	2014	США	боевик, драма, криминал, вестерн	Кристофер Чулак, Дж. Майкл Муро, Майкл Оффер	43
4924	Женщины-убийцы (1-8 серия)	https://kinokrad.co/255712-zhenschiny-ubiycy.html	7	2014	США	драма, вестерн	Колин Бакси, Дэвид Гроссман	60
4925	Опасные женщины (1-8 серия)	https://kinokrad.co/271856-opasnye-zhenschiny.html	8	2014	США	драма, вестерн	Колин Бакси, Дэвид Гроссман, Марк Роскин	60
4926	Малыш Мун 2 сезон (1-6 серия)	https://kinokrad.co/271889-malysh-mun-2-sezon.html	8	2014	Великобритания, Ирландия	комедия	Деклан Лауни, Йен Фитцгиббон	23
4927	Те, кто убивают (1-10 серия)	https://kinokrad.co/271908-te-kto-ubivayut.html	8	2014	США	боевик, триллер, криминал	Дэвид Петрарка, Фил Абрахам, Джо Карнахан	60
4928	Бывших не бывает (1-4 серия)	https://kinokrad.co/271951-byvshih-ne-byvaet-onlayn.html	7	2014	Россия	боевик	Зиновий Ройзман	
4929	Полиция Чикаго (2 сезон)	https://kinokrad.co/5100-policiya-chikago-2-sezon-17-seriya.html	8	2014	США	боевик, драма	Джо Чаппелль	60
4930	Белая ночь (1 сезон)	https://kinokrad.co/282315-belaya-noch-1-sezon-2015.html	8	2014	Россия	военный	Александр Якимчук	45
4931	Принц Сибири (1 сезон)	https://kinokrad.co/282016-princ-sibiri-1-sezon-2015.html	8	2014	Россия	комедия, приключения	Павел Смирнов, Денис Елеонский	45
4932	Брод Сити 1 сезон (1-10 серия)	https://kinokrad.co/271940-brod-siti.html	7	2014	США	комедия	Люсия Аньелло, Джон Ли, Николас Йасеновец	21
4933	Легенда о Корре 4 сезон (13 серия)	https://kinokrad.co/272366-legenda-o-korre-4-sezon-13-seriya.html	9	2014	США	мультфильм, фэнтези, боевик, приключения, семейный	Хоаким Дос Сантос, Ки Хьюн Рю, Йен Грэхэм	22
4934	Сильнее судьбы (1-16 серия)	https://kinokrad.co/272484-silnee-sudby.html	6	2014	Россия	мелодрама	Александр Хван	45
4935	Тайны следствия 14 сезон (16 серия)	https://kinokrad.co/279406-tayny-sledstviya-14-sezon-16-seriya.html	8	2014	Россия	криминал, детектив	Александр Бурцев, Илья Макаров, Михаил Вассербаум	45
4936	Из рода волков / Волчья кровь (3 сезон)	https://kinokrad.co/272854-volchya-krov-3-sezon-9-seriya.html	8	2014	Великобритания	фэнтези	Эндрю Ганн, Деклан О’Двайр, Уильям Синклер	22
4937	Убийство 4 сезон (1-6 серия)	https://kinokrad.co/272455-ubiystvo-4-sezon.html	9	2014	США, Канада	триллер, драма, криминал, детектив	Эдвард Бьянчи, Николь Кэссел, Фил Абрахам	43
4938	Всякая всячина 2 сезон (6 серия)	https://kinokrad.co/3323-vsyakaya-vsyachina-2-sezon-6-seriya.html	6	2014	Великобритания	комедия	Мартин Деннис	30
4939	Коварные горничные 2 сезон (1-13 серия)	https://kinokrad.co/272492-kovarnye-gornichnye-2-sezon.html	8	2014	США	драма, комедия, детектив	Дэвид Уоррен, Тауния Маккирнан, Джон Скотт	43
4940	Сестра Джеки 6 сезон (1-12 серия)	https://kinokrad.co/272522-sestra-dzheki-6-sezon.html	5	2014	США	драма, комедия	Пол Фиг, Джесси Перетц, Рэндолл Айнхорн	22
4941	Ад на колёсах 4 сезон (1-13 серия)	https://kinokrad.co/272529-ad-na-kolesah-4-sezon.html	8	2014	Канада, Великобритания	драма, вестерн	Дэвид Фон Энкен, Адам Дэвидсон, Нил ЛаБут	43
4942	Грейспойнт 1 сезон (10 серия)	https://kinokrad.co/271997-greyspoynt-1-sezon-10-seriya.html	7	2014	США	детектив	Джеймс Стронг, Эрос Лин, Дэвид Петрарка	
4943	Кодекс чести 7 сезон (32 серия)	https://kinokrad.co/279060-kodeks-chesti-7-sezon-32-seriya.html	7	2014	Россия	боевик	Мурад Алиев, Олег Штром	45
4944	Салем (1-13 серия)	https://kinokrad.co/272640-salem-.html	9	2014	США	триллер, драма	Дэвид Фон Энкен, Алекс Закржевский, Тришиа Брок	60
4945	Уилфред 4 сезон (1-10 серия)	https://kinokrad.co/272664-uilfred-4-sezon-.html	7	2014	США	комедия	Рэндолл Айнхорн, Виктор Нелли мл	22
4946	Вызов (1 сезон)	https://kinokrad.co/272644-vyzov-1-sezon.html	8	2014	США	фантастика, боевик, драма	Майкл Нанкин, Аллен Крокер, Энди Волк	43
4947	Кислород (1-13 серия)	https://kinokrad.co/272660-kislorod.html	9	2014	США	фантастика, мелодрама	Гэри Фледер, Эдвард Орнелас, Норман Бакли	43
4948	Южный Парк (18 сезон)	https://kinokrad.co/276164-yuzhnyy-park-18-sezon-10-seriya.html	7	2014	США	мультфильм, комедия	Трей Паркер, Эрик Сточ	22
4949	Halo: Сумерки 1 сезон (5 серия)	https://kinokrad.co/279002-halo-sumerki-5-seriya.html	8	2014	США	фантастика, боевик, триллер, приключения	Серджо Мимика-Геззан	30
4950	Арчер 5 сезон (1-13 серия)	https://kinokrad.co/280892-archer-5-sezon.html	6	2014	США	мультфильм, боевик, комедия	Адам Рид, Брайан Фордни	22
4951	Выживание Джека (8 серия)	https://kinokrad.co/271762-vyzhivanie-dzheka-8-seriya.html	5	2014	США	комедия	Роджер Камбл, Майкл МакДональд, Виктор Нелли мл	30
4952	Безумцы (7 сезон)	https://kinokrad.co/272495-bezumcy-7-sezon.html	7	2014	США	драма	Фил Абрахам, Майкл Аппендаль, Мэттью Уэйнер	47
4953	Мыслить как преступник (10 сезон)	https://kinokrad.co/274186-myslit-kak-prestupnik-10-sezon-16-seriya.html	7	2014	США, Канада	триллер, драма, криминал, детектив	Гленн Кершоу, Феликс Энрикез Алькала, Эдвард Аллен Бернеро	43
4954	Сталкер (1 сезон)	https://kinokrad.co/279025-stalker-1-sezon-17-seriya.html	9	2014	США	триллер, драма	Лиз Фридлендер, Кевин Брэй, Роксанн Доусон	60
4955	Демоны Да Винчи (2 сезон)	https://kinokrad.co/282027-demony-da-vinchi-2-sezon-2014.html	8	2014	США	фэнтези, драма, детектив, приключения, история	Питер Хор, Майкл Дж. Бассетт, Дэвид С. Гойер	59
4956	13 (1-24 серия)	https://kinokrad.co/272851-13-serial.html	5	2014	Россия	триллер, детектив, драма	Григорий Федоров, Иван Щёголев, Михаил Кабанов	48
4957	Библиотекари (1 сезон)	https://kinokrad.co/279558-bibliotekarie-10-seriya-18-04.html	9	2014	США	приключения	Дин Девлин, Марк Роскин, Джонатан Фрейкс	42
4958	Улыбка пересмешника (16 серия)	https://kinokrad.co/278387-ulybka-peresmeshnikae-2014-16-17-18-04.html	9	2014	Россия	детектив, мелодрама	Алексей Рудаков	46
4959	Читающий мысли (5 сезон)	https://kinokrad.co/272535-chitayuschiy-myslie-5-sezon-13-seriya-18-04.html	8	2014	Канада	фантастика, фэнтези, драма, криминал	Клемент Вирго, Кари Скогланд, Фархад Манн	43
4960	Слава / Фетисов (1 сезон)	https://kinokrad.co/282018-slava-fetisov-1-sezon-2015.html	7	2014	Россия	драма, спорт, биография	Антон Азаров	205
4961	Доктор смерть (1-4 серия)	https://kinokrad.co/272858-doktor-smert.html	6	2014	Россия	драмы, криминальные	Александр Назаров	44
4962	Мастера секса 2 сезон (1-12 серия)	https://kinokrad.co/272869-mastera-seksa-2-sezon.html	8	2014	США	драма	Майкл Аптед, Майкл Диннер, Дженнифер Гетцингер	43
4963	Последний из Магикян 3 сезон (1-12 серия)	https://kinokrad.co/278864-posledniy-iz-magikyan-3-sezon.html	8	2014	Россия	комедия, семейный	Резо Гигинеишвили, Акаки Сахелашвили	24
4964	Мистер Селфридж 2 сезон (1-10 серия)	https://kinokrad.co/272879-mister-selfridzh-2-sezon.html	8	2014	Великобритания	драма	Энтони Бирн, Роб Эванс, Майкл Кейллор	45
4965	Искусственный интеллект 1 сезон (1-13 серия)	https://kinokrad.co/5330-iskusstvennyy-intellekt-1-sezon.html	8	2014	США	фантастика, боевик	Дэвид Семел	43
4966	Мой безумный дневник 1 сезон (1-6 серия)	https://kinokrad.co/272886-moy-bezumnyy-dnevnik-1-sezon.html	9	2014	Великобритания	драма, комедия	Бен Карон, Тим Киркби, Энтони Филипсон	47
4967	Шетланд 2 сезон (1-4 серия)	https://kinokrad.co/272906-shetland-2-sezon.html	8	2014	Великобритания	драма, криминал	Питер Хор, John McKay, Дэйв Мур	60
4968	Красотки в Кливленде 5 сезон (1-8 серия)	https://kinokrad.co/273098-krasotki-v-klivlende-5-sezon.html	7	2014	США	комедия	Энди Кэдифф, Дэвид Трейнер, Джил Джангер	22
4969	Деревня 2 сезон (1-6 серия)	https://kinokrad.co/281273-derevnya-2-sezon.html	8	2014	Великобритания	драма	Антония Бёрд, Гиллис МакКиннон, Доминик Леклерк	59
4970	Волчье солнце (1 сезон)	https://kinokrad.co/271966-volche-solnce-1-sezon.html	8	2014	Россия, Беларусь	драма, приключения	Сергей Гинзбург	50
4971	Травма (1 сезон)	https://kinokrad.co/271917-travma-1-sezon.html	8	2014	Канада	драма	Франсуа Жингра	60
4972	Черные паруса (2 сезон)	https://kinokrad.co/280146-chernye-parusa-2-sezon-10-seriya.html	8	2014	США, ЮАР	драма, приключения	Стив Бойум, Нил Маршалл, Сэм Миллер	56
4973	Блю (1 сезон)	https://kinokrad.co/271925-blyu-1-sezon.html	7	2014	США	драма	Родриго Гарсия	8
4974	Брод Сити (2 сезон)	https://kinokrad.co/271945-brod-siti-2-sezon.html	8	2014	США	комедия	Люсия Аньелло, Джон Ли, Николас Йасеновец	21
4975	Хилер (20 серия)	https://kinokrad.co/279871-hiler-20-seriya.html	7	2014	Корея Южная	комедия, мелодрама, триллер	Чон Соп Ли, Джин У Ким	60
4976	Лимбо (2 сезон)	https://kinokrad.co/272122-limbo-2-sezon.html	8	2014	Дания	боевик, драма, семейный	Пауль Берг, Кристиан Грёнвалль, Каспар Мунк	14
4977	Вера (4 сезон)	https://kinokrad.co/271952-vera-4-sezon.html	8	2014	Великобритания	криминал	Питер Хор, Пол Уиттингтон	95
4978	Милые обманщицы 5 сезон (25 серия)	https://kinokrad.co/272370-milye-obmanschicy-5-sezon-25-seriya.html	9	2014	США	триллер, драма, детектив	Норман Бакли, Рон Лагомарсино, Чад Лоу	43
4979	Льюис (8 сезон)	https://kinokrad.co/272544-lyuis-8-sezon.html	8	2014	Великобритания	драма, криминал, детектив	Дэн Рид, Николас Рентон, Билл Андерсон	45
4980	Небесный суд. Продолжение (2 сезон)	https://kinokrad.co/272818-nebesnyy-sud-prodolzhenie-2-sezon.html	9	2014	Россия	драма	Алена Званцова	50
4981	Улица потрошителя (1 сезон)	https://kinokrad.co/272611-ulica-potroshitelya-1-sezon.html	9	2014	Великобритания, Ирландия	криминал, детектив	Энди Уилсон, Том Шенклэнд, Энтони Бирн	55
4982	Синдром Шахматиста (1-4 серия)	https://kinokrad.co/271565-sindrom-shahmatista-18-04.html	8	2014	Россия	боевик	Карен Адамян	46
4983	Господа-товарищи (16 серия)	https://kinokrad.co/279063-gospoda-tovarischi-16-seriya-18-04.html	8	2014	Россия	детективы	Василий Сериков, Всеволод Аравин, Алексей Рудаков	52
4984	Кухня 3 сезон (1-20 серия)	https://kinokrad.co/281416-kuhnya-3-sezon.html	8	2014	Россия	комедия	Дмитрий Дьяченко, Жора Крыжовников, Антон Федотов	25
4985	Чудотворец 1 сезон (1-8 серия)	https://kinokrad.co/273027-chudotvorec-1-sezon.html	8	2014	Россия	драмы	Дмитрий Константинов	
4986	Красная дорога 1 сезон (1-6 серия)	https://kinokrad.co/281397-krasnaya-doroga-1-sezon.html	7	2014	США	драма	Лодж Х. Керриган, Дж. Майкл Муро, Джеймс Грэй	45
4987	Внутри девятого номера 1 сезон (1-6 серия)	https://kinokrad.co/281394-vnutri-devyatogo-nomera-1-sezon.html	7	2014	Великобритания	комедия, детектив	Дэвид Керр, Гильем Моралес, Дэн Зефф	30
4989	Марьина роща 2 сезон (1-18 серия)	https://kinokrad.co/278833-marina-roscha-2-sezon.html	7	2014	Россия	история, детектив	Евгений Серов	43
4990	Литейный 8 сезон (1-31 серия)	https://kinokrad.co/278411-liteynyy-8-sezon.html	8	2014	Россия	боевик, криминал, детектив	Игорь Мужжухин, Андрей Щербинин, Станислав Мареев	42
4991	Лиллехаммер 3 сезон (8 серия)	https://kinokrad.co/272749-lillehammer-3-sezon-8-seriya.html	9	2014	США, Норвегия	драма, комедия, криминал	Гер Хеннинг Хопланд, Симен Альсвик, Оле Эндресен	45
4992	Незабываемое 3 сезон (13 серия)	https://kinokrad.co/272526-nezabyvaemoe-3-sezon-13-seriya.html	8	2014	США	драма, криминал	Жан Де Сегонзак, Пол Холахан, Питер Уэрнер	43
4993	Рухнувшие небеса 4 сезон (1-12 серия)	https://kinokrad.co/278759-ruhnuvshie-nebesa-4-sezon-1-12-seriya.html	8	2014	США, Канада	фантастика, боевик, триллер	Грег Биман, Серджо Мимика-Геззан	43
4994	Сквозь пространство и время с Морганом Фрименом (5 сезон)	https://kinokrad.co/272510-skvoz-prostranstvo-i-vremya-5-sezon.html	8	2014	США	документальный, детектив, семейный	Курт Сайенга, Джеффри Шарп, Дэвид Ламаттина	43
4995	Воскрешение 2 сезон (13 серия)	https://kinokrad.co/277154-voskreshenie-2-sezon-13-seriya.html	7	2014	США	фэнтези, драма	Дэниэл Эттиэс, Крис Мисиано, Рон Андервуд	43
4996	Месть (4 сезон)	https://kinokrad.co/276988-mest-4-sezon-18-seriya.html	8	2014	США	триллер, драма, мелодрама, детектив	Кеннет Финк, Мэтт Эрл Бисли, Сэнфорд Букставер	43
4997	Древние (2 сезон)	https://kinokrad.co/255888-drevnie-2-sezon-16-seriya.html	9	2014	США	ужасы, фэнтези, драма, детектив	Крис Грисмер, Джесси Уарн	43
4998	Бесстыдники 4 сезон (1-12 серия)	https://kinokrad.co/280091-besstydniki-4-sezon.html	9	2014	США	драма, комедия	Марк Майлод, Мими Ледер, Энтони Хемингуэй	55
4999	Красотка Ляля (1-30 серия)	https://kinokrad.co/278557-krasotka-lyalya-30-seriya.html	7	2014	Украина	мелодрама	Дмитрий Гольдман	45
5000	1864 (8 серия)	https://kinokrad.co/279336-1864-8-seriya.html	6	2014	Дания, Норвегия, Швеция, Германия	драма, военный	Уле Борнедаль	57
5001	Злые птички (2 сезон)	https://kinokrad.co/280802-zlye-ptichki-2-sezon-25-seriya.html	8	2014	Финляндия	мультфильм	Eric Guaglione, Ким Хельминен, Кристофер Сэдлер	3
5002	12 обезьян (1 сезон)	https://kinokrad.co/279942-12-obezyan-1-sezon-12-seriya.html	7	2014	США	фантастика, триллер, драма, детектив, приключения	Дэвид Гроссман, Майкл Ваксман, Джон Бэдэм	42
5003	Стелла (3 сезон)	https://kinokrad.co/281932-stella-3-sezon-2014.html	9	2014	Великобритания	драма, комедия	Эшли Вэй, Тони Дау, Сьюзэн Талли	60
5004	Тёмный мир: Равновесие (1-12 серия)	https://kinokrad.co/281287-tjomnyy-mir-ravnovesie.html	8	2014	Россия	фэнтези	Олег Асадулин	48
5005	Молодые и голодные 1 сезон (1-10 серия)	https://kinokrad.co/281284-molodye-i-golodnye-1-sezon.html	8	2014	США	комедия	Энди Кэдифф, Фил Льюис, Кэти Гарретсон	22
5006	У друзей жизнь лучше	https://kinokrad.co/271780-u-druzey-zhizn-luchshe-11-seriya.html	7	2014	США	комедия	Фред Сэвэдж, Тодд Холлэнд, Джеймс Берроуз	22
5007	Голубая кровь (5 сезон)	https://kinokrad.co/271987-golubaya-krov-5-sezon-2015.html	6	2014	США	драма, криминал	Дэвид Баррет, Ральф Хемекер, Алекс Закржевский	43
5008	Стрела (3 сезон)	https://kinokrad.co/255780-strela-3-sezon-18-seriya.html	8	2014	США	фантастика, боевик, драма, криминал, детектив, приключения	Джон Беринг, Гай Норман Би	43
5009	Зов крови. Потерянная. Фэйри  (5 сезон)	https://kinokrad.co/279559-zov-krovi.-poteryannaya.-feyri-5-sezon-8-seriya.html	8	2014	Канада	фэнтези, криминал	Стив ДиМарко, Рон Мерфи, Джон Фоусет	43
5010	Манхэттенская история любви 1 сезон (11 серия)	https://kinokrad.co/272139-manhettenskaya-istoriya-lyubvi-1-sezon-11-seriya.html	8	2014	США	комедия	Майкл Фреско	30
5011	Виолетта 2 сезон (1-80 серия)	https://kinokrad.co/280385-violetta-2-sezon.html	9	2014	Аргентина	мелодрама, комедия, семейный	Хорхе Ниско, Мартин Саббан, Матиас Риси	43
5012	Сердце звезды (89 серия)	https://kinokrad.co/279533-serdce-zvezdy-89-seriya.html	7	2014	Россия	мелодрама	Сергей Борчуков, Сахат Дурсунов, Эдуард Пальмов	44
5013	Манхэттен (13 серия)	https://kinokrad.co/279874-manhetten-13-seriya.html	7	2014	США	драма	Томас Шламми, Пэрис Барклай, Билл Д’Элиа	43
5014	Бывшие 4 сезон (4 серия)	https://kinokrad.co/271881-byvshie-4-sezon-4-seriya.html	7	2014	США	комедия	Энди Кэдифф, Джеффри Мэлман, Шелли Дженсен	22
5015	Слабая женщина (1-4 серия)	https://kinokrad.co/279723-slabaya-zhenschina-1-4-seriya.html	7	2014	Россия	мелодрама	Всеволод Аравин	46
5016	Пока станица спит (1-270 серия)	https://kinokrad.co/255804-poka-stanica-spit.html	7	2014	Россия, Украина	мелодрама	Александр Мохов, Елена Цыплакова	43
5017	Миллеры в разводе 2 сезон (11 серия)	https://kinokrad.co/272169-millery-v-razvode-2-sezon-11-seriya.html	7	2014	США	комедия	Джеймс Берроуз	22
5018	Покемон 17 сезон (1-39 серия)	https://kinokrad.co/272942-pokemon-17-sezon.html	8	2014	Япония	аниме, мультфильм, комедия, приключения, семейный	Кунихико Юяма, Норихико Судо, Масамицу Хидака	22
5019	Братья по обмену (2 сезон)	https://kinokrad.co/283760-bratya-po-obmenu-2-sezon-2014.html	7	2014	Россия	комедия	Александр Жигалкин	44
5020	Линия Марты (1-4 серия)	https://kinokrad.co/256129-liniya-marty.html	8	2014	Россия	мелодрама	Олег Газе	52
5021	Клондайк (1-7 серия)	https://kinokrad.co/256132-klondayk.html	7	2014	США, Канада	драма, приключения, вестерн	Саймон Селлан Джоунс	46
5022	Дерек 2 сезон (1-6 серия)	https://kinokrad.co/271817-derek-2-sezon.html	8	2014	Великобритания	драма, комедия	Рики Джервэйс	25
5023	Лонгмайр 3 сезон (1-10 серия)	https://kinokrad.co/271825-longmayr-3-sezon.html	7	2014	США	боевик, драма, криминал, вестерн	Кристофер Чулак, Дж. Майкл Муро, Майкл Оффер	43
5024	Женщины-убийцы (1-8 серия)	https://kinokrad.co/255712-zhenschiny-ubiycy.html	7	2014	США	драма, вестерн	Колин Бакси, Дэвид Гроссман	60
5025	Опасные женщины (1-8 серия)	https://kinokrad.co/271856-opasnye-zhenschiny.html	8	2014	США	драма, вестерн	Колин Бакси, Дэвид Гроссман, Марк Роскин	60
5026	Малыш Мун 2 сезон (1-6 серия)	https://kinokrad.co/271889-malysh-mun-2-sezon.html	8	2014	Великобритания, Ирландия	комедия	Деклан Лауни, Йен Фитцгиббон	23
5027	Те, кто убивают (1-10 серия)	https://kinokrad.co/271908-te-kto-ubivayut.html	8	2014	США	боевик, триллер, криминал	Дэвид Петрарка, Фил Абрахам, Джо Карнахан	60
5028	Бывших не бывает (1-4 серия)	https://kinokrad.co/271951-byvshih-ne-byvaet-onlayn.html	7	2014	Россия	боевик	Зиновий Ройзман	
5029	Полиция Чикаго (2 сезон)	https://kinokrad.co/5100-policiya-chikago-2-sezon-17-seriya.html	8	2014	США	боевик, драма	Джо Чаппелль	60
5030	Белая ночь (1 сезон)	https://kinokrad.co/282315-belaya-noch-1-sezon-2015.html	8	2014	Россия	военный	Александр Якимчук	45
5031	Принц Сибири (1 сезон)	https://kinokrad.co/282016-princ-sibiri-1-sezon-2015.html	8	2014	Россия	комедия, приключения	Павел Смирнов, Денис Елеонский	45
5032	Брод Сити 1 сезон (1-10 серия)	https://kinokrad.co/271940-brod-siti.html	7	2014	США	комедия	Люсия Аньелло, Джон Ли, Николас Йасеновец	21
5033	Легенда о Корре 4 сезон (13 серия)	https://kinokrad.co/272366-legenda-o-korre-4-sezon-13-seriya.html	9	2014	США	мультфильм, фэнтези, боевик, приключения, семейный	Хоаким Дос Сантос, Ки Хьюн Рю, Йен Грэхэм	22
5034	Сильнее судьбы (1-16 серия)	https://kinokrad.co/272484-silnee-sudby.html	6	2014	Россия	мелодрама	Александр Хван	45
5035	Тайны следствия 14 сезон (16 серия)	https://kinokrad.co/279406-tayny-sledstviya-14-sezon-16-seriya.html	8	2014	Россия	криминал, детектив	Александр Бурцев, Илья Макаров, Михаил Вассербаум	45
5036	Из рода волков / Волчья кровь (3 сезон)	https://kinokrad.co/272854-volchya-krov-3-sezon-9-seriya.html	8	2014	Великобритания	фэнтези	Эндрю Ганн, Деклан О’Двайр, Уильям Синклер	22
5037	Убийство 4 сезон (1-6 серия)	https://kinokrad.co/272455-ubiystvo-4-sezon.html	9	2014	США, Канада	триллер, драма, криминал, детектив	Эдвард Бьянчи, Николь Кэссел, Фил Абрахам	43
5038	Всякая всячина 2 сезон (6 серия)	https://kinokrad.co/3323-vsyakaya-vsyachina-2-sezon-6-seriya.html	6	2014	Великобритания	комедия	Мартин Деннис	30
5039	Коварные горничные 2 сезон (1-13 серия)	https://kinokrad.co/272492-kovarnye-gornichnye-2-sezon.html	8	2014	США	драма, комедия, детектив	Дэвид Уоррен, Тауния Маккирнан, Джон Скотт	43
5040	Сестра Джеки 6 сезон (1-12 серия)	https://kinokrad.co/272522-sestra-dzheki-6-sezon.html	5	2014	США	драма, комедия	Пол Фиг, Джесси Перетц, Рэндолл Айнхорн	22
5041	Ад на колёсах 4 сезон (1-13 серия)	https://kinokrad.co/272529-ad-na-kolesah-4-sezon.html	8	2014	Канада, Великобритания	драма, вестерн	Дэвид Фон Энкен, Адам Дэвидсон, Нил ЛаБут	43
5042	Грейспойнт 1 сезон (10 серия)	https://kinokrad.co/271997-greyspoynt-1-sezon-10-seriya.html	7	2014	США	детектив	Джеймс Стронг, Эрос Лин, Дэвид Петрарка	
5043	Кодекс чести 7 сезон (32 серия)	https://kinokrad.co/279060-kodeks-chesti-7-sezon-32-seriya.html	7	2014	Россия	боевик	Мурад Алиев, Олег Штром	45
5044	Салем (1-13 серия)	https://kinokrad.co/272640-salem-.html	9	2014	США	триллер, драма	Дэвид Фон Энкен, Алекс Закржевский, Тришиа Брок	60
5045	Уилфред 4 сезон (1-10 серия)	https://kinokrad.co/272664-uilfred-4-sezon-.html	7	2014	США	комедия	Рэндолл Айнхорн, Виктор Нелли мл	22
5046	Вызов (1 сезон)	https://kinokrad.co/272644-vyzov-1-sezon.html	8	2014	США	фантастика, боевик, драма	Майкл Нанкин, Аллен Крокер, Энди Волк	43
5047	Кислород (1-13 серия)	https://kinokrad.co/272660-kislorod.html	9	2014	США	фантастика, мелодрама	Гэри Фледер, Эдвард Орнелас, Норман Бакли	43
5048	Южный Парк (18 сезон)	https://kinokrad.co/276164-yuzhnyy-park-18-sezon-10-seriya.html	7	2014	США	мультфильм, комедия	Трей Паркер, Эрик Сточ	22
5049	Halo: Сумерки 1 сезон (5 серия)	https://kinokrad.co/279002-halo-sumerki-5-seriya.html	8	2014	США	фантастика, боевик, триллер, приключения	Серджо Мимика-Геззан	30
5050	Арчер 5 сезон (1-13 серия)	https://kinokrad.co/280892-archer-5-sezon.html	6	2014	США	мультфильм, боевик, комедия	Адам Рид, Брайан Фордни	22
5213	Пригород 3 сезон (1-13 серия)	https://kinokrad.co/256150-prigorod-3-sezon.html	7	2014	США	комедия	Алекс Хардкасл, Кен Уиттингэм	22
5051	Выживание Джека (8 серия)	https://kinokrad.co/271762-vyzhivanie-dzheka-8-seriya.html	5	2014	США	комедия	Роджер Камбл, Майкл МакДональд, Виктор Нелли мл	30
5052	Безумцы (7 сезон)	https://kinokrad.co/272495-bezumcy-7-sezon.html	7	2014	США	драма	Фил Абрахам, Майкл Аппендаль, Мэттью Уэйнер	47
5053	Мыслить как преступник (10 сезон)	https://kinokrad.co/274186-myslit-kak-prestupnik-10-sezon-16-seriya.html	7	2014	США, Канада	триллер, драма, криминал, детектив	Гленн Кершоу, Феликс Энрикез Алькала, Эдвард Аллен Бернеро	43
5054	Сталкер (1 сезон)	https://kinokrad.co/279025-stalker-1-sezon-17-seriya.html	9	2014	США	триллер, драма	Лиз Фридлендер, Кевин Брэй, Роксанн Доусон	60
5055	Демоны Да Винчи (2 сезон)	https://kinokrad.co/282027-demony-da-vinchi-2-sezon-2014.html	8	2014	США	фэнтези, драма, детектив, приключения, история	Питер Хор, Майкл Дж. Бассетт, Дэвид С. Гойер	59
5056	13 (1-24 серия)	https://kinokrad.co/272851-13-serial.html	5	2014	Россия	триллер, детектив, драма	Григорий Федоров, Иван Щёголев, Михаил Кабанов	48
5057	Библиотекари (1 сезон)	https://kinokrad.co/279558-bibliotekarie-10-seriya-18-04.html	9	2014	США	приключения	Дин Девлин, Марк Роскин, Джонатан Фрейкс	42
5058	Улыбка пересмешника (16 серия)	https://kinokrad.co/278387-ulybka-peresmeshnikae-2014-16-17-18-04.html	9	2014	Россия	детектив, мелодрама	Алексей Рудаков	46
5059	Читающий мысли (5 сезон)	https://kinokrad.co/272535-chitayuschiy-myslie-5-sezon-13-seriya-18-04.html	8	2014	Канада	фантастика, фэнтези, драма, криминал	Клемент Вирго, Кари Скогланд, Фархад Манн	43
5060	Слава / Фетисов (1 сезон)	https://kinokrad.co/282018-slava-fetisov-1-sezon-2015.html	7	2014	Россия	драма, спорт, биография	Антон Азаров	205
5061	Доктор смерть (1-4 серия)	https://kinokrad.co/272858-doktor-smert.html	6	2014	Россия	драмы, криминальные	Александр Назаров	44
5062	Мастера секса 2 сезон (1-12 серия)	https://kinokrad.co/272869-mastera-seksa-2-sezon.html	8	2014	США	драма	Майкл Аптед, Майкл Диннер, Дженнифер Гетцингер	43
5063	Последний из Магикян 3 сезон (1-12 серия)	https://kinokrad.co/278864-posledniy-iz-magikyan-3-sezon.html	8	2014	Россия	комедия, семейный	Резо Гигинеишвили, Акаки Сахелашвили	24
5064	Мистер Селфридж 2 сезон (1-10 серия)	https://kinokrad.co/272879-mister-selfridzh-2-sezon.html	8	2014	Великобритания	драма	Энтони Бирн, Роб Эванс, Майкл Кейллор	45
5065	Искусственный интеллект 1 сезон (1-13 серия)	https://kinokrad.co/5330-iskusstvennyy-intellekt-1-sezon.html	8	2014	США	фантастика, боевик	Дэвид Семел	43
5066	Мой безумный дневник 1 сезон (1-6 серия)	https://kinokrad.co/272886-moy-bezumnyy-dnevnik-1-sezon.html	9	2014	Великобритания	драма, комедия	Бен Карон, Тим Киркби, Энтони Филипсон	47
5067	Шетланд 2 сезон (1-4 серия)	https://kinokrad.co/272906-shetland-2-sezon.html	8	2014	Великобритания	драма, криминал	Питер Хор, John McKay, Дэйв Мур	60
5068	Красотки в Кливленде 5 сезон (1-8 серия)	https://kinokrad.co/273098-krasotki-v-klivlende-5-sezon.html	7	2014	США	комедия	Энди Кэдифф, Дэвид Трейнер, Джил Джангер	22
5069	Деревня 2 сезон (1-6 серия)	https://kinokrad.co/281273-derevnya-2-sezon.html	8	2014	Великобритания	драма	Антония Бёрд, Гиллис МакКиннон, Доминик Леклерк	59
5070	Волчье солнце (1 сезон)	https://kinokrad.co/271966-volche-solnce-1-sezon.html	8	2014	Россия, Беларусь	драма, приключения	Сергей Гинзбург	50
5071	Травма (1 сезон)	https://kinokrad.co/271917-travma-1-sezon.html	8	2014	Канада	драма	Франсуа Жингра	60
5072	Черные паруса (2 сезон)	https://kinokrad.co/280146-chernye-parusa-2-sezon-10-seriya.html	8	2014	США, ЮАР	драма, приключения	Стив Бойум, Нил Маршалл, Сэм Миллер	56
5073	Блю (1 сезон)	https://kinokrad.co/271925-blyu-1-sezon.html	7	2014	США	драма	Родриго Гарсия	8
5074	Брод Сити (2 сезон)	https://kinokrad.co/271945-brod-siti-2-sezon.html	8	2014	США	комедия	Люсия Аньелло, Джон Ли, Николас Йасеновец	21
5075	Хилер (20 серия)	https://kinokrad.co/279871-hiler-20-seriya.html	7	2014	Корея Южная	комедия, мелодрама, триллер	Чон Соп Ли, Джин У Ким	60
5076	Лимбо (2 сезон)	https://kinokrad.co/272122-limbo-2-sezon.html	8	2014	Дания	боевик, драма, семейный	Пауль Берг, Кристиан Грёнвалль, Каспар Мунк	14
5077	Вера (4 сезон)	https://kinokrad.co/271952-vera-4-sezon.html	8	2014	Великобритания	криминал	Питер Хор, Пол Уиттингтон	95
5078	Милые обманщицы 5 сезон (25 серия)	https://kinokrad.co/272370-milye-obmanschicy-5-sezon-25-seriya.html	9	2014	США	триллер, драма, детектив	Норман Бакли, Рон Лагомарсино, Чад Лоу	43
5079	Льюис (8 сезон)	https://kinokrad.co/272544-lyuis-8-sezon.html	8	2014	Великобритания	драма, криминал, детектив	Дэн Рид, Николас Рентон, Билл Андерсон	45
5080	Небесный суд. Продолжение (2 сезон)	https://kinokrad.co/272818-nebesnyy-sud-prodolzhenie-2-sezon.html	9	2014	Россия	драма	Алена Званцова	50
5081	Улица потрошителя (1 сезон)	https://kinokrad.co/272611-ulica-potroshitelya-1-sezon.html	9	2014	Великобритания, Ирландия	криминал, детектив	Энди Уилсон, Том Шенклэнд, Энтони Бирн	55
5082	Синдром Шахматиста (1-4 серия)	https://kinokrad.co/271565-sindrom-shahmatista-18-04.html	8	2014	Россия	боевик	Карен Адамян	46
5083	Господа-товарищи (16 серия)	https://kinokrad.co/279063-gospoda-tovarischi-16-seriya-18-04.html	8	2014	Россия	детективы	Василий Сериков, Всеволод Аравин, Алексей Рудаков	52
5084	Кухня 3 сезон (1-20 серия)	https://kinokrad.co/281416-kuhnya-3-sezon.html	8	2014	Россия	комедия	Дмитрий Дьяченко, Жора Крыжовников, Антон Федотов	25
5085	Чудотворец 1 сезон (1-8 серия)	https://kinokrad.co/273027-chudotvorec-1-sezon.html	8	2014	Россия	драмы	Дмитрий Константинов	
5086	Красная дорога 1 сезон (1-6 серия)	https://kinokrad.co/281397-krasnaya-doroga-1-sezon.html	7	2014	США	драма	Лодж Х. Керриган, Дж. Майкл Муро, Джеймс Грэй	45
5087	Внутри девятого номера 1 сезон (1-6 серия)	https://kinokrad.co/281394-vnutri-devyatogo-nomera-1-sezon.html	7	2014	Великобритания	комедия, детектив	Дэвид Керр, Гильем Моралес, Дэн Зефф	30
5088	Легавый 2 сезон (1-33 серия)	https://kinokrad.co/9191-legavyy-2-sezon.html	7	2014	Россия	детектив	Рустам Уразаев, Сергей Артимович	45
5089	Марьина роща 2 сезон (1-18 серия)	https://kinokrad.co/278833-marina-roscha-2-sezon.html	7	2014	Россия	история, детектив	Евгений Серов	43
5090	Литейный 8 сезон (1-31 серия)	https://kinokrad.co/278411-liteynyy-8-sezon.html	8	2014	Россия	боевик, криминал, детектив	Игорь Мужжухин, Андрей Щербинин, Станислав Мареев	42
5091	Лиллехаммер 3 сезон (8 серия)	https://kinokrad.co/272749-lillehammer-3-sezon-8-seriya.html	9	2014	США, Норвегия	драма, комедия, криминал	Гер Хеннинг Хопланд, Симен Альсвик, Оле Эндресен	45
5092	Незабываемое 3 сезон (13 серия)	https://kinokrad.co/272526-nezabyvaemoe-3-sezon-13-seriya.html	8	2014	США	драма, криминал	Жан Де Сегонзак, Пол Холахан, Питер Уэрнер	43
5093	Рухнувшие небеса 4 сезон (1-12 серия)	https://kinokrad.co/278759-ruhnuvshie-nebesa-4-sezon-1-12-seriya.html	8	2014	США, Канада	фантастика, боевик, триллер	Грег Биман, Серджо Мимика-Геззан	43
5094	Сквозь пространство и время с Морганом Фрименом (5 сезон)	https://kinokrad.co/272510-skvoz-prostranstvo-i-vremya-5-sezon.html	8	2014	США	документальный, детектив, семейный	Курт Сайенга, Джеффри Шарп, Дэвид Ламаттина	43
5095	Воскрешение 2 сезон (13 серия)	https://kinokrad.co/277154-voskreshenie-2-sezon-13-seriya.html	7	2014	США	фэнтези, драма	Дэниэл Эттиэс, Крис Мисиано, Рон Андервуд	43
5096	Месть (4 сезон)	https://kinokrad.co/276988-mest-4-sezon-18-seriya.html	8	2014	США	триллер, драма, мелодрама, детектив	Кеннет Финк, Мэтт Эрл Бисли, Сэнфорд Букставер	43
5097	Древние (2 сезон)	https://kinokrad.co/255888-drevnie-2-sezon-16-seriya.html	9	2014	США	ужасы, фэнтези, драма, детектив	Крис Грисмер, Джесси Уарн	43
5098	Бесстыдники 4 сезон (1-12 серия)	https://kinokrad.co/280091-besstydniki-4-sezon.html	9	2014	США	драма, комедия	Марк Майлод, Мими Ледер, Энтони Хемингуэй	55
5099	Красотка Ляля (1-30 серия)	https://kinokrad.co/278557-krasotka-lyalya-30-seriya.html	7	2014	Украина	мелодрама	Дмитрий Гольдман	45
5100	1864 (8 серия)	https://kinokrad.co/279336-1864-8-seriya.html	6	2014	Дания, Норвегия, Швеция, Германия	драма, военный	Уле Борнедаль	57
5101	Светофор 7 сезон (20 серия)	https://kinokrad.co/17066-svetofor-7-sezon-20-seriya.html	8	2014	Россия	комедия	Роман Фокин	24
5102	Хорошие руки	https://kinokrad.co/275044-horoshie-ruki.html	8	2014	Россия	отечественный, криминал, драма	Юрий Кузьменко	50
5103	Физрук 1 сезон	https://kinokrad.co/256176-fizruk-1-sezon.html	8	2014	Россия	комедия	Сергей Сенцов, Фёдор Стуков	25
5104	Ясновидец 8 сезон	https://kinokrad.co/256155-yasnovidec-8-sezon.html	7	2014	США	комедия, криминал, детектив	Мэл Дэмски, Стив Фрэнкс	43
5105	Куприн. Поединок (1-13 серия)	https://kinokrad.co/272082-kuprin.-poedinok.html	7	2014	Россия	мелодрама, драма	Андрей Малюков	48
5106	Доминион (1-8 серия)	https://kinokrad.co/272019-dominion.html	8	2014	США	ужасы, фантастика, фэнтези, боевик, драма	Алекс Холмс, Рик Джейкобсон, Ларри Шоу	90
5107	Мэрон 2 сезон (1-13 серия)	https://kinokrad.co/272145-meron-2-sezon.html	8	2014	США	комедия	Люк Мэзени, Боб Голдтуэйт, Роберт Коэн	
5108	Остановись и гори (1-10 серия)	https://kinokrad.co/272189-ostanovis-i-gori.html	7	2014	США	драма	Хуан Хосе Кампанелла, Джон Эмиел, Эдвард Бьянчи	60
5109	Два отца и два сына 2 сезон (1-20 все серии)	https://kinokrad.co/272417-dva-otca-i-dva-syna-2-sezon.html	9	2014	Россия	комедия, семейный	Радда Новикова	24
5110	Хроники ломбарда (21 серия)	https://kinokrad.co/279062-hroniki-lombarda-21-seriya.html	7	2014	Россия	драма	Дмитрий Суворов	23
5111	Пляж (1-32 серия)	https://kinokrad.co/10371-plyazh.html	7	2014	Россия, Украина	комедия, детектив	Дмитрий Пантелеев	
5112	Бездомный Бог (1-12 серия)	https://kinokrad.co/256143-bezdomnyy-bog.html	9	2014	Япония	аниме, боевик, мистика, приключения	Тамура Котаро	24
5113	Пригород 3 сезон (1-13 серия)	https://kinokrad.co/256150-prigorod-3-sezon.html	7	2014	США	комедия	Алекс Хардкасл, Кен Уиттингэм	22
5114	24 часа: Проживи еще один день (1-12 серия)	https://kinokrad.co/271535-24-chasa-prozhivi-esche-odin-den.html	7	2014	США	боевик, триллер, драма, детектив	Джон Кассар, Милан Чейлов, Адам Кэйн	46
5115	Оборотень / Волчонок (4 сезон)	https://kinokrad.co/272572-oboroten-4-sezon.html	9	2014	США	ужасы, триллер, драма, мелодрама, комедия	Рассел Малкэй, Тим Эндрю, Тоби Уилкинс	43
5116	Зайцев + 1 3 сезон (1-16 серия)	https://kinokrad.co/255800-zaycev-1-3-sezon.html	7	2014	Россия	комедия	Максим Пежемский	22
5117	Возвращение Ляли (1-35 серия)	https://kinokrad.co/278779-vozvraschenie-lyali.html	8	2014	Украина	мелодрама	Дмитрий Гольдман, Екатерина Некрасова, Александр Сальников	45
5118	Две зимы и три лета (1-26 серия)	https://kinokrad.co/255896-dve-zimy-i-tri-leta.html	7	2014	Россия	драма	Теймураз Эсадзе	45
5119	Марко Поло (1 сезон)	https://kinokrad.co/279364-marko-polo-10-seriya.html	9	2014	США		Дэвид Петрарка, Алик Сахаров, Хоаким Роннинг	
5120	Деффчонки 4 сезон (26 серия)	https://kinokrad.co/267700-deffchonki-4-sezon-26-seriya.html	9	2014	Россия	комедия	Сергей Корягин, Ольга Френкель, Нигина Сайфуллаева	24
5121	Верь (1-13 серия)	https://kinokrad.co/272538-ver.html	8	2014	США	фэнтези, драма	Сэм Хилл, Дэвид Бойд, Альфонсо Куарон	43
5122	Неслучайная встреча (8 серия)	https://kinokrad.co/279244-nesluchaynaya-vstrecha-8-seriya.html	7	2014	Россия	детектив	Иван Китаев	50
5123	Дорогой доктор / Пациент всегда прав (6 сезон)	https://kinokrad.co/272568-dorogoy-doktor-6-sezon.html	7	2014	США	драма, комедия	Мэттью Пенн, Майкл В. Уоткинс, Эмиль Левисетти	43
5124	Смерть в раю 3 сезон (1-8 серия)	https://kinokrad.co/272569-smert-v-rayu-3-sezon.html	7	2014	Великобритания, Франция	триллер, драма, криминал, детектив	Олрик Райли, Роджер Голдби, Пол Харрисон	43
5125	Космос: Пространство и время (1-13 серия)	https://kinokrad.co/272577-kosmos-prostranstvo-i-vremya.html	9	2014	США	документальный	Брэннон Брага, Энн Драйэн, Билл Поуп	60
5126	Молодой Морс (2 сезон)	https://kinokrad.co/272583-indevor-2-sezon.html	8	2014	Великобритания	драма, криминал, детектив	Эдвард Базалгетт, Колм МакКарти, Том Вон	90
5127	Сын ворона 1 сезон (1-8 серия)	https://kinokrad.co/279388-syn-vorona-1-sezon-1-8-seriya.html	6	2014	Россия	боевик, приключения, история	Александр Щурихин	45
5128	Форс-мажоры 4 сезон (1-16 серия)	https://kinokrad.co/272284-fors-mazhory-4-sezon.html	9	2014	США	драма, комедия	Кевин Брэй, Майкл Смит, Антон Кроппер	43
5129	Как избежать наказания за убийство (1 сезон)	https://kinokrad.co/272037-kak-izbezhat-nakazaniya-za-ubiystvo-1-sezon-15-seriya.html	8	2014	США	драма, криминал, детектив	Майкл Оффер	45
5130	Погоня за жизнью (17 серия)	https://kinokrad.co/272668-pogonya-za-zhiznyu-17-seriya.html	9	2014	США	драма	Стив Майнер, Мелани Мейрон, Норман Бакли	60
5131	Кремниевая долина (1-8 серия)	https://kinokrad.co/272908-kremnievaya-dolina.html	8	2014	США	комедия	Майк Джадж, Алек Берг, Тришиа Брок	30
5132	Позднее раскаяние (1-16 серия)	https://kinokrad.co/5083-pozdnee-raskayanie.html	7	2014	Россия	мелодрама	Оксана Байрак	45
5133	Последний корабль (1-10 серия)	https://kinokrad.co/272948-posledniy-korabl.html	8	2014	США	фантастика, боевик, триллер, драма	Джек Бендер, Пол Холахан, Майкл Кэтлман	43
5134	Семья 3Д	https://kinokrad.co/272912-semya-3d.html	6	2014	Россия	комедия	Илья Аксенов	23
5135	Посредник (1-4 серия)	https://kinokrad.co/272957-posrednik.html	7	2014	Россия	боевик	Игорь Москвитин	45
5136	Рейк 3 сезон (1-8 серия)	https://kinokrad.co/272976-reyk-3-sezon.html	8	2014	Австралия	драма, комедия	Джесика Хоббс, Питер Дункан, Джеффри Уокер	43
5137	Симпсоны (26 сезон)	https://kinokrad.co/272261-simpsony-26-sezon-17-seriya.html	9	2014	США	мультфильм, комедия, семейный	Марк Керклэнд, Стивен Дин Мур, Джим Рирдон	22
5138	Компаньоны / Франклин и Бэш (4 сезон)	https://kinokrad.co/273075-kompanony-4-sezon-5-seriya.html	7	2014	США	комедия, криминал	Джейсон Энслер, Ричи Кин, Майк Листо	44
5139	Ночная смена (1 сезон)	https://kinokrad.co/281992-nochnaya-smena-1-sezon-2014.html	8	2014	США	боевик, драма, комедия	Дэвид Бойд, Эрик Ла Салль, Тимоти Басфилд	60
5140	СашаТаня (2 сезон)	https://kinokrad.co/279979-sashatanya-2-sezon-16-seriya.html	8	2014	Россия	комедия	Сергей Казачанский, Михаил Старчак	24
5141	Царство (2 сезон)	https://kinokrad.co/275428-carstvo-2-sezon-17-seriya.html	9	2014	США	фэнтези, драма	Джеримайя С. Чечик, Холли Дэйл, Фред Гербер	43
5142	Страшные сказки (1-8 серия)	https://kinokrad.co/272671-strashnye-skazki.html	9	2014	США, Ирландия, Великобритания	ужасы, драма, мистика	Хуан Антонио Байона, Коки Гидройч, Джеймс Хоуз	60
5143	Колыбель над бездной (1-12 серия)	https://kinokrad.co/279242-kolybel-nad-bezdnoy-1-12-seriya.html	7	2014	Россия	драма	Михаил Колпахчиев	46
5144	Оранжевый — хит сезона (2 сезон)	https://kinokrad.co/272695-oranzhevyy-hit-sezona-2-sezon.html	8	2014	США	драма, комедия, криминал	Майкл Трим, Эндрю МакКарти, Фил Абрахам	51
5145	Преступные связи (1-13 серия)	https://kinokrad.co/272702-prestupnye-svyazi.html	8	2014	США	криминал, драма, детектив, триллер	Нельсон МакКормик, Милан Чейлов, Эллисон Андерс	43
5177	Предельная глубина (1-4 серия)	https://kinokrad.co/272607-predelnaya-glubina.html	7	2014	Россия	мелодрама, приключения	Константин Максимов	43
5146	Темное дитя 2 сезон (1-10 серия)	https://kinokrad.co/272706-temnoe-ditya-2-sezon.html	8	2014	Канада, США	фантастика, боевик, драма	Джон Фоусет, Т.Дж. Скотт, Дэвид Фрэйзи	43
5147	Черепашки мутанты ниндзя 2 сезон (1-13 серия)	https://kinokrad.co/272719-cherepashki-mutanty-nindzya-2-sezon.html	8	2014	США	мультфильм, фантастика, фэнтези, боевик, триллер, драма, комедия, криминал, детектив, приключения	Билл Вульф, Тони Лав, Майк Стюарт	22
5148	Нижний этаж 2 сезон (10 серия)	https://kinokrad.co/280152-nizhniy-jetazh-2-sezon-10-seriya.html	6	2014	США	комедия	Гейл Манкусо, Джоди Марголин	22
5149	Риццоли и Айлс (5 сезон)	https://kinokrad.co/280109-riccoli-i-ayls-5-sezon-18-seriya.html	8	2014	США	драма, криминал, детектив	Марк Абер, Майкл Кэтлман, Стив Робин	43
5150	Укушенная 1 сезон (1-13 серия)	https://kinokrad.co/255926-ukushennaya-1-sezon.html	8	2014	Канада	ужасы, фэнтези, драма, детектив	Джеймс Даннисон, Пол Фокс	43
5151	Очевидное 1 сезон (10 серия)	https://kinokrad.co/279912-ochevidnoe-1-sezon-10-seriya.html	5	2014	США	комедия	Джилл Солоуэй, Ниша Ганатра	30
5152	Палач (1-10 серия)	https://kinokrad.co/279902-palach.html	8	2014	Россия	триллер	Вячеслав Никифоров	50
5153	Сыны анархии 7 сезон (1-13 серия)	https://kinokrad.co/272385-syny-anarhii-7-sezon.html	9	2014	США	триллер, драма, криминал	Пэрис Барклай, Гвинет Хердер-Пэйтон, Гай Ферленд	45
5154	Аббатство Даунтон 5 сезон (11 серия)	https://kinokrad.co/272309-abbatstvo-daunton-5-sezon-11-seriya.html	8	2014	Великобритания, США	драма	Брайан Персивал, Энди Годдар, Брайан Келли	54
5155	Моцарт в джунглях (10 серия)	https://kinokrad.co/272173-mocart-v-dzhunglyah-10-seriya.html	7	2014	США	комедия	Пол Вайц	30
5156	Когда мы дома (1 сезон)	https://kinokrad.co/279877-kogda-my-doma-92-seriya.html	9	2014	Украина	комедия	Максим Литвинов, Антон Щербаков	25
5157	Город хищниц 5 сезон (1-13 серия)	https://kinokrad.co/256137-gorod-hischnic-5-sezon-serial.html	7	2014	США	комедия	Майкл МакДональд, Джон Путч	22
5158	В поле зрения (4 сезон)	https://kinokrad.co/272421-v-pole-zreniya-4-sezon-18-seriya.html	8	2014	США	фантастика, боевик, триллер, драма, детектив	Ричард Дж. Льюис, Фред Туа, Крис Фишер	44
5159	Вечность (1 сезон)	https://kinokrad.co/276442-serial-vechnost-19-seriya.html	9	2014	США	фантастика, драма		43
5160	Шаман 2 сезон (1-32 серия)	https://kinokrad.co/255901-shaman-2-sezon.html	7	2014	Россия	драма, криминал	Максим Кубринский	45
5161	H2O: Просто добавь воды 4 сезон	https://kinokrad.co/275509-h2o-prosto-dobav-vody-4-sezon.html	9	2014	Австралия	фэнтези, драма, семейный	Колин Баддс, Джеффри Уокер	22
5162	Парфюмерша (1-8 серия)	https://kinokrad.co/272208-parfyumersha.html	8	2014	Россия	мелодрама	Игорь Ройзман	
5163	Настоящая кровь 7 сезон (1-10 серия)	https://kinokrad.co/272347-nastoyaschaya-krov-7-sezon.html	8	2014	США	фэнтези, триллер, драма, мелодрама, детектив	Майкл Леманн, Скотт Уинант, Даниэль Минахан	53
5164	Последний из Магикян 2 сезон (1-16 серия)	https://kinokrad.co/272373-posledniy-iz-magikyan-2-sezon.html	8	2014	Россия	комедия, семейный	Резо Гигинеишвили, Акаки Сахелашвили	24
5165	Гетто 4 сезон (1-10 серия)	https://kinokrad.co/272392-getto-4-sezon.html	7	2014	США	аниме, мультфильм, боевик, драма, комедия	Сюн Юнь Ким, Сон-хун Ким, Боб Хэчкок	22
5166	Робоцып 7 сезон (1-12 серия)	https://kinokrad.co/272401-robocyp-7-sezon.html	7	2014	США	мультфильм, комедия	Крис МакКей, Зеб Уэллс, Кевин Шиник	12
5167	Чисто английские убийства 16 сезон (1-5 серия)	https://kinokrad.co/272405-chisto-angliyskie-ubiystva-16-sezon.html	8	2014	Великобритания	драма, криминал, детектив	Питер Смит, Ренни Рай, Ричард Холтхоуз	91
5168	Спецотряд «Кобра» 20 сезон (1-12 серия)	https://kinokrad.co/271705-specotryad-kobra-20-sezon.html	9	2014	Германия	боевик, драма, криминал	Хайнц Дитц, Эксел Барт, Рауль В. Геймрих	47
5169	Агент (1-10 серия)	https://kinokrad.co/271559-agent.html	8	2014	США	драма, военный	Эдвард Бьянчи, С.Дж. Кларксон, Ник Копус	60
5170	Мой мальчик (1-6 серия)	https://kinokrad.co/271588-moy-malchik.html	7	2014	США	драма, мелодрама, комедия	Майкл Уивер, Адам Дэвидсон, Эрик Аппель	22
5171	Ребенок Розмари (1-4 серия)	https://kinokrad.co/271601-rebenok-rozmari.html	7	2014	США	ужасы, драма, детектив	Агнешка Холланд	170
5172	Фальсификация (1-8 серия)	https://kinokrad.co/271613-falsifikaciya.html	7	2014	США	комедия	Джеми Трэвис, Клер Скэнлон	30
5173	Чёрный ящик (1-13 серия)	https://kinokrad.co/271637-chjornyy-yaschik.html	8	2014	США	драма	Тришиа Брок, Саймон Кертис, Бронуэн Хьюз	42
5174	Доброе имя (1-12 серия)	https://kinokrad.co/271688-dobroe-imya.html	5	2014	Россия	мелодрама, детектив	Александр Аравин	45
5175	Комиссар Рекс 6 сезон (1-12 серия)	https://kinokrad.co/271694-komissar-reks-6-sezon.html	9	2014	Италия		Марко Серафини, Андреа Костантини, Фернандо Мурака	45
5176	Ведьмина магия в деле (1-12 серия)	https://kinokrad.co/255722-vedmina-magiya-v-dele.html	8	2014	Япония	аниме, мультфильм, комедия		25
5178	Женщина в беде (1-4 серия)	https://kinokrad.co/272603-zhenschina-v-bede.html	7	2014	Россия	криминал, мелодрама	Андрей Щербинин	44
5179	Мост 2 сезон (1-10 серия)	https://kinokrad.co/272618-most-2-sezon.html	9	2014	Швеция, Дания	триллер, криминал, детектив	Хенрик Георгссон, Шарлотта Зилинг, Кэтрин Уиндфельд	57
5180	Все сокровища мира (1-8 все серии)	https://kinokrad.co/279387-vse-sokrovischa-mira-1-8-vse-serii.html	8	2014	Россия	драма	Александр Ефремов	43
5181	Сонная Лощина (2 сезон)	https://kinokrad.co/255911-sonnaya-loschina-2-sezon-18-seriya.html	8	2014	США	фэнтези, триллер, драма, детектив, приключения, мистика	Кен Олин, Пол А. Эдвардс	43
5182	Босх (10 серия)	https://kinokrad.co/271936-bosh-10-seriya.html	8	2014	США	драма, детектив	Джим МакКэй	51
5183	В час беды (1-4 серия)	https://kinokrad.co/280625-v-chas-bedy.html	6	2014	Россия	мелодрама	Ольга Ланд	45
5184	Менталист 7 сезон (13 серия)	https://kinokrad.co/279846-mentalist-7-sezon-13-seriya.html	9	2014	США	триллер, драма, криминал, детектив	Крис Лонг, Эрик Ланёвилль, Джон Шоуолтер	43
5185	Неуклюжая 4 сезон (21 серия)	https://kinokrad.co/272506-neuklyuzhaya-4-sezon-21-seriya.html	7	2014	США	драма, мелодрама, комедия	Райан Шираки, Дэвид Катценберг, Джо Нуссбаум	20
5186	Константин 1 сезон (13 серия)	https://kinokrad.co/272074-konstantin-1-sezon-13-seriya.html	9	2014	США	ужасы, фэнтези, мистика	Нил Маршалл	45
5187	Маги в законе (1-12 серия)	https://kinokrad.co/255758-magi-v-zakone.html	7	2014	Япония	аниме, мультфильм, фэнтези, приключения	Ясуоми Уметсу	25
5188	Параллельная жизнь (1-12 серия)	https://kinokrad.co/255903-parallelnaya-zhizn.html	7	2014	Россия	криминал, детектив	Сергей Бобров	45
5189	Ладога (1-4 серия)	https://kinokrad.co/255916-ladoga.html	8	2014	Россия	военный, драма	Александр Велединский	52
5190	Сашка (1-100 серия)	https://kinokrad.co/255802-sashka-2014-serial.html	9	2014	Россия, Украина	мелодрама	Антон Гойда, Владимир Дяченко	44
5191	Нация Z (1 сезон)	https://kinokrad.co/278955-naciya-z-1-sezon-13-seriya.html	8	2014	США	ужасы, фантастика, боевик, драма	Джон Хайамс, Тим Эндрю, Луис Прието	43
5192	Старое ружьё (1-4 серия)	https://kinokrad.co/272998-staroe-ruzhe.html	8	2014	Россия	военный, драма	Кирилл Белевич	
5193	За пределами 1 сезон (1-13 серия)	https://kinokrad.co/273002-za-predelami-1-sezon.html	8	2014	США	фантастика, триллер, драма	Дэниэл Эттиэс, Пэрис Барклай, Мэтт Эрл Бисли	42
5194	Таинственные девушки (1-10 серия)	https://kinokrad.co/273006-tainstvennye-devushki.html	8	2014	США	комедия	Майкл Лембек, Роб Шиллер, Джил Джангер	30
5195	Корабль (1-26 серия)	https://kinokrad.co/3902-korabl.html	8	2014	Россия	фантастика, приключения, мелодрама	Олег Асадулин	48
5196	Тайны и ложь (1-6 серия)	https://kinokrad.co/273009-tayny-i-lozh.html	9	2014	Австралия	триллер, драма	Кейт Дэннис, Питер Сэлмон	42
5197	Сучьи войны (1-8 серия)	https://kinokrad.co/277976-suchi-voyny-8-seriya.html	7	2014	Россия	военный, драма, история	Николай Борц	50
5198	Анжелика 1 сезон (1-20 серия)	https://kinokrad.co/277585-anzhelika-1-20-seriya.html	8	2014	Россия	комедия	Радда Новикова, Антон Маслов	20
5199	Соблазн (1-16 серия)	https://kinokrad.co/278936-soblazn-1-16-seriya.html	8	2014	Россия	мелодрама	Ольга Субботина	50
5200	Подпольная империя 5 сезон (8 серия)	https://kinokrad.co/272312-podpolnaya-imperiya-5-sezon-8-seriya.html	8	2014	США	драма, криминал	Тимоти Ван Паттен, Аллен Култер, Джереми Подесва	55
5201	Светофор 7 сезон (20 серия)	https://kinokrad.co/17066-svetofor-7-sezon-20-seriya.html	8	2014	Россия	комедия	Роман Фокин	24
5202	Хорошие руки	https://kinokrad.co/275044-horoshie-ruki.html	8	2014	Россия	отечественный, криминал, драма	Юрий Кузьменко	50
5203	Физрук 1 сезон	https://kinokrad.co/256176-fizruk-1-sezon.html	8	2014	Россия	комедия	Сергей Сенцов, Фёдор Стуков	25
5204	Ясновидец 8 сезон	https://kinokrad.co/256155-yasnovidec-8-sezon.html	7	2014	США	комедия, криминал, детектив	Мэл Дэмски, Стив Фрэнкс	43
5205	Куприн. Поединок (1-13 серия)	https://kinokrad.co/272082-kuprin.-poedinok.html	7	2014	Россия	мелодрама, драма	Андрей Малюков	48
5206	Доминион (1-8 серия)	https://kinokrad.co/272019-dominion.html	8	2014	США	ужасы, фантастика, фэнтези, боевик, драма	Алекс Холмс, Рик Джейкобсон, Ларри Шоу	90
5207	Мэрон 2 сезон (1-13 серия)	https://kinokrad.co/272145-meron-2-sezon.html	8	2014	США	комедия	Люк Мэзени, Боб Голдтуэйт, Роберт Коэн	
5208	Остановись и гори (1-10 серия)	https://kinokrad.co/272189-ostanovis-i-gori.html	7	2014	США	драма	Хуан Хосе Кампанелла, Джон Эмиел, Эдвард Бьянчи	60
5209	Два отца и два сына 2 сезон (1-20 все серии)	https://kinokrad.co/272417-dva-otca-i-dva-syna-2-sezon.html	9	2014	Россия	комедия, семейный	Радда Новикова	24
5210	Хроники ломбарда (21 серия)	https://kinokrad.co/279062-hroniki-lombarda-21-seriya.html	7	2014	Россия	драма	Дмитрий Суворов	23
5211	Пляж (1-32 серия)	https://kinokrad.co/10371-plyazh.html	7	2014	Россия, Украина	комедия, детектив	Дмитрий Пантелеев	
5212	Бездомный Бог (1-12 серия)	https://kinokrad.co/256143-bezdomnyy-bog.html	9	2014	Япония	аниме, боевик, мистика, приключения	Тамура Котаро	24
5214	24 часа: Проживи еще один день (1-12 серия)	https://kinokrad.co/271535-24-chasa-prozhivi-esche-odin-den.html	7	2014	США	боевик, триллер, драма, детектив	Джон Кассар, Милан Чейлов, Адам Кэйн	46
5215	Оборотень / Волчонок (4 сезон)	https://kinokrad.co/272572-oboroten-4-sezon.html	9	2014	США	ужасы, триллер, драма, мелодрама, комедия	Рассел Малкэй, Тим Эндрю, Тоби Уилкинс	43
5216	Зайцев + 1 3 сезон (1-16 серия)	https://kinokrad.co/255800-zaycev-1-3-sezon.html	7	2014	Россия	комедия	Максим Пежемский	22
5217	Возвращение Ляли (1-35 серия)	https://kinokrad.co/278779-vozvraschenie-lyali.html	8	2014	Украина	мелодрама	Дмитрий Гольдман, Екатерина Некрасова, Александр Сальников	45
5218	Две зимы и три лета (1-26 серия)	https://kinokrad.co/255896-dve-zimy-i-tri-leta.html	7	2014	Россия	драма	Теймураз Эсадзе	45
5219	Марко Поло (1 сезон)	https://kinokrad.co/279364-marko-polo-10-seriya.html	9	2014	США		Дэвид Петрарка, Алик Сахаров, Хоаким Роннинг	
5220	Деффчонки 4 сезон (26 серия)	https://kinokrad.co/267700-deffchonki-4-sezon-26-seriya.html	9	2014	Россия	комедия	Сергей Корягин, Ольга Френкель, Нигина Сайфуллаева	24
5221	Верь (1-13 серия)	https://kinokrad.co/272538-ver.html	8	2014	США	фэнтези, драма	Сэм Хилл, Дэвид Бойд, Альфонсо Куарон	43
5222	Неслучайная встреча (8 серия)	https://kinokrad.co/279244-nesluchaynaya-vstrecha-8-seriya.html	7	2014	Россия	детектив	Иван Китаев	50
5223	Дорогой доктор / Пациент всегда прав (6 сезон)	https://kinokrad.co/272568-dorogoy-doktor-6-sezon.html	7	2014	США	драма, комедия	Мэттью Пенн, Майкл В. Уоткинс, Эмиль Левисетти	43
5224	Смерть в раю 3 сезон (1-8 серия)	https://kinokrad.co/272569-smert-v-rayu-3-sezon.html	7	2014	Великобритания, Франция	триллер, драма, криминал, детектив	Олрик Райли, Роджер Голдби, Пол Харрисон	43
5225	Космос: Пространство и время (1-13 серия)	https://kinokrad.co/272577-kosmos-prostranstvo-i-vremya.html	9	2014	США	документальный	Брэннон Брага, Энн Драйэн, Билл Поуп	60
5226	Молодой Морс (2 сезон)	https://kinokrad.co/272583-indevor-2-sezon.html	8	2014	Великобритания	драма, криминал, детектив	Эдвард Базалгетт, Колм МакКарти, Том Вон	90
5227	Сын ворона 1 сезон (1-8 серия)	https://kinokrad.co/279388-syn-vorona-1-sezon-1-8-seriya.html	6	2014	Россия	боевик, приключения, история	Александр Щурихин	45
5228	Форс-мажоры 4 сезон (1-16 серия)	https://kinokrad.co/272284-fors-mazhory-4-sezon.html	9	2014	США	драма, комедия	Кевин Брэй, Майкл Смит, Антон Кроппер	43
5229	Как избежать наказания за убийство (1 сезон)	https://kinokrad.co/272037-kak-izbezhat-nakazaniya-za-ubiystvo-1-sezon-15-seriya.html	8	2014	США	драма, криминал, детектив	Майкл Оффер	45
5230	Погоня за жизнью (17 серия)	https://kinokrad.co/272668-pogonya-za-zhiznyu-17-seriya.html	9	2014	США	драма	Стив Майнер, Мелани Мейрон, Норман Бакли	60
5231	Кремниевая долина (1-8 серия)	https://kinokrad.co/272908-kremnievaya-dolina.html	8	2014	США	комедия	Майк Джадж, Алек Берг, Тришиа Брок	30
5232	Позднее раскаяние (1-16 серия)	https://kinokrad.co/5083-pozdnee-raskayanie.html	7	2014	Россия	мелодрама	Оксана Байрак	45
5233	Последний корабль (1-10 серия)	https://kinokrad.co/272948-posledniy-korabl.html	8	2014	США	фантастика, боевик, триллер, драма	Джек Бендер, Пол Холахан, Майкл Кэтлман	43
5234	Семья 3Д	https://kinokrad.co/272912-semya-3d.html	6	2014	Россия	комедия	Илья Аксенов	23
5235	Посредник (1-4 серия)	https://kinokrad.co/272957-posrednik.html	7	2014	Россия	боевик	Игорь Москвитин	45
5236	Рейк 3 сезон (1-8 серия)	https://kinokrad.co/272976-reyk-3-sezon.html	8	2014	Австралия	драма, комедия	Джесика Хоббс, Питер Дункан, Джеффри Уокер	43
5237	Симпсоны (26 сезон)	https://kinokrad.co/272261-simpsony-26-sezon-17-seriya.html	9	2014	США	мультфильм, комедия, семейный	Марк Керклэнд, Стивен Дин Мур, Джим Рирдон	22
5238	Компаньоны / Франклин и Бэш (4 сезон)	https://kinokrad.co/273075-kompanony-4-sezon-5-seriya.html	7	2014	США	комедия, криминал	Джейсон Энслер, Ричи Кин, Майк Листо	44
5239	Ночная смена (1 сезон)	https://kinokrad.co/281992-nochnaya-smena-1-sezon-2014.html	8	2014	США	боевик, драма, комедия	Дэвид Бойд, Эрик Ла Салль, Тимоти Басфилд	60
5240	СашаТаня (2 сезон)	https://kinokrad.co/279979-sashatanya-2-sezon-16-seriya.html	8	2014	Россия	комедия	Сергей Казачанский, Михаил Старчак	24
5241	Царство (2 сезон)	https://kinokrad.co/275428-carstvo-2-sezon-17-seriya.html	9	2014	США	фэнтези, драма	Джеримайя С. Чечик, Холли Дэйл, Фред Гербер	43
5242	Страшные сказки (1-8 серия)	https://kinokrad.co/272671-strashnye-skazki.html	9	2014	США, Ирландия, Великобритания	ужасы, драма, мистика	Хуан Антонио Байона, Коки Гидройч, Джеймс Хоуз	60
5243	Колыбель над бездной (1-12 серия)	https://kinokrad.co/279242-kolybel-nad-bezdnoy-1-12-seriya.html	7	2014	Россия	драма	Михаил Колпахчиев	46
5244	Оранжевый — хит сезона (2 сезон)	https://kinokrad.co/272695-oranzhevyy-hit-sezona-2-sezon.html	8	2014	США	драма, комедия, криминал	Майкл Трим, Эндрю МакКарти, Фил Абрахам	51
5276	Ведьмина магия в деле (1-12 серия)	https://kinokrad.co/255722-vedmina-magiya-v-dele.html	8	2014	Япония	аниме, мультфильм, комедия		25
5245	Преступные связи (1-13 серия)	https://kinokrad.co/272702-prestupnye-svyazi.html	8	2014	США	криминал, драма, детектив, триллер	Нельсон МакКормик, Милан Чейлов, Эллисон Андерс	43
5246	Темное дитя 2 сезон (1-10 серия)	https://kinokrad.co/272706-temnoe-ditya-2-sezon.html	8	2014	Канада, США	фантастика, боевик, драма	Джон Фоусет, Т.Дж. Скотт, Дэвид Фрэйзи	43
5247	Черепашки мутанты ниндзя 2 сезон (1-13 серия)	https://kinokrad.co/272719-cherepashki-mutanty-nindzya-2-sezon.html	8	2014	США	мультфильм, фантастика, фэнтези, боевик, триллер, драма, комедия, криминал, детектив, приключения	Билл Вульф, Тони Лав, Майк Стюарт	22
5248	Нижний этаж 2 сезон (10 серия)	https://kinokrad.co/280152-nizhniy-jetazh-2-sezon-10-seriya.html	6	2014	США	комедия	Гейл Манкусо, Джоди Марголин	22
5249	Риццоли и Айлс (5 сезон)	https://kinokrad.co/280109-riccoli-i-ayls-5-sezon-18-seriya.html	8	2014	США	драма, криминал, детектив	Марк Абер, Майкл Кэтлман, Стив Робин	43
5250	Укушенная 1 сезон (1-13 серия)	https://kinokrad.co/255926-ukushennaya-1-sezon.html	8	2014	Канада	ужасы, фэнтези, драма, детектив	Джеймс Даннисон, Пол Фокс	43
5251	Очевидное 1 сезон (10 серия)	https://kinokrad.co/279912-ochevidnoe-1-sezon-10-seriya.html	5	2014	США	комедия	Джилл Солоуэй, Ниша Ганатра	30
5252	Палач (1-10 серия)	https://kinokrad.co/279902-palach.html	8	2014	Россия	триллер	Вячеслав Никифоров	50
5253	Сыны анархии 7 сезон (1-13 серия)	https://kinokrad.co/272385-syny-anarhii-7-sezon.html	9	2014	США	триллер, драма, криминал	Пэрис Барклай, Гвинет Хердер-Пэйтон, Гай Ферленд	45
5254	Аббатство Даунтон 5 сезон (11 серия)	https://kinokrad.co/272309-abbatstvo-daunton-5-sezon-11-seriya.html	8	2014	Великобритания, США	драма	Брайан Персивал, Энди Годдар, Брайан Келли	54
5255	Моцарт в джунглях (10 серия)	https://kinokrad.co/272173-mocart-v-dzhunglyah-10-seriya.html	7	2014	США	комедия	Пол Вайц	30
5256	Когда мы дома (1 сезон)	https://kinokrad.co/279877-kogda-my-doma-92-seriya.html	9	2014	Украина	комедия	Максим Литвинов, Антон Щербаков	25
5257	Город хищниц 5 сезон (1-13 серия)	https://kinokrad.co/256137-gorod-hischnic-5-sezon-serial.html	7	2014	США	комедия	Майкл МакДональд, Джон Путч	22
5258	В поле зрения (4 сезон)	https://kinokrad.co/272421-v-pole-zreniya-4-sezon-18-seriya.html	8	2014	США	фантастика, боевик, триллер, драма, детектив	Ричард Дж. Льюис, Фред Туа, Крис Фишер	44
5259	Вечность (1 сезон)	https://kinokrad.co/276442-serial-vechnost-19-seriya.html	9	2014	США	фантастика, драма		43
5260	Шаман 2 сезон (1-32 серия)	https://kinokrad.co/255901-shaman-2-sezon.html	7	2014	Россия	драма, криминал	Максим Кубринский	45
5261	H2O: Просто добавь воды 4 сезон	https://kinokrad.co/275509-h2o-prosto-dobav-vody-4-sezon.html	9	2014	Австралия	фэнтези, драма, семейный	Колин Баддс, Джеффри Уокер	22
5262	Парфюмерша (1-8 серия)	https://kinokrad.co/272208-parfyumersha.html	8	2014	Россия	мелодрама	Игорь Ройзман	
5263	Настоящая кровь 7 сезон (1-10 серия)	https://kinokrad.co/272347-nastoyaschaya-krov-7-sezon.html	8	2014	США	фэнтези, триллер, драма, мелодрама, детектив	Майкл Леманн, Скотт Уинант, Даниэль Минахан	53
5264	Последний из Магикян 2 сезон (1-16 серия)	https://kinokrad.co/272373-posledniy-iz-magikyan-2-sezon.html	8	2014	Россия	комедия, семейный	Резо Гигинеишвили, Акаки Сахелашвили	24
5265	Гетто 4 сезон (1-10 серия)	https://kinokrad.co/272392-getto-4-sezon.html	7	2014	США	аниме, мультфильм, боевик, драма, комедия	Сюн Юнь Ким, Сон-хун Ким, Боб Хэчкок	22
5266	Робоцып 7 сезон (1-12 серия)	https://kinokrad.co/272401-robocyp-7-sezon.html	7	2014	США	мультфильм, комедия	Крис МакКей, Зеб Уэллс, Кевин Шиник	12
5267	Чисто английские убийства 16 сезон (1-5 серия)	https://kinokrad.co/272405-chisto-angliyskie-ubiystva-16-sezon.html	8	2014	Великобритания	драма, криминал, детектив	Питер Смит, Ренни Рай, Ричард Холтхоуз	91
5268	Спецотряд «Кобра» 20 сезон (1-12 серия)	https://kinokrad.co/271705-specotryad-kobra-20-sezon.html	9	2014	Германия	боевик, драма, криминал	Хайнц Дитц, Эксел Барт, Рауль В. Геймрих	47
5269	Агент (1-10 серия)	https://kinokrad.co/271559-agent.html	8	2014	США	драма, военный	Эдвард Бьянчи, С.Дж. Кларксон, Ник Копус	60
5270	Мой мальчик (1-6 серия)	https://kinokrad.co/271588-moy-malchik.html	7	2014	США	драма, мелодрама, комедия	Майкл Уивер, Адам Дэвидсон, Эрик Аппель	22
5271	Ребенок Розмари (1-4 серия)	https://kinokrad.co/271601-rebenok-rozmari.html	7	2014	США	ужасы, драма, детектив	Агнешка Холланд	170
5272	Фальсификация (1-8 серия)	https://kinokrad.co/271613-falsifikaciya.html	7	2014	США	комедия	Джеми Трэвис, Клер Скэнлон	30
5273	Чёрный ящик (1-13 серия)	https://kinokrad.co/271637-chjornyy-yaschik.html	8	2014	США	драма	Тришиа Брок, Саймон Кертис, Бронуэн Хьюз	42
5274	Доброе имя (1-12 серия)	https://kinokrad.co/271688-dobroe-imya.html	5	2014	Россия	мелодрама, детектив	Александр Аравин	45
5275	Комиссар Рекс 6 сезон (1-12 серия)	https://kinokrad.co/271694-komissar-reks-6-sezon.html	9	2014	Италия		Марко Серафини, Андреа Костантини, Фернандо Мурака	45
5277	Предельная глубина (1-4 серия)	https://kinokrad.co/272607-predelnaya-glubina.html	7	2014	Россия	мелодрама, приключения	Константин Максимов	43
5278	Женщина в беде (1-4 серия)	https://kinokrad.co/272603-zhenschina-v-bede.html	7	2014	Россия	криминал, мелодрама	Андрей Щербинин	44
5279	Мост 2 сезон (1-10 серия)	https://kinokrad.co/272618-most-2-sezon.html	9	2014	Швеция, Дания	триллер, криминал, детектив	Хенрик Георгссон, Шарлотта Зилинг, Кэтрин Уиндфельд	57
5280	Все сокровища мира (1-8 все серии)	https://kinokrad.co/279387-vse-sokrovischa-mira-1-8-vse-serii.html	8	2014	Россия	драма	Александр Ефремов	43
5281	Сонная Лощина (2 сезон)	https://kinokrad.co/255911-sonnaya-loschina-2-sezon-18-seriya.html	8	2014	США	фэнтези, триллер, драма, детектив, приключения, мистика	Кен Олин, Пол А. Эдвардс	43
5282	Босх (10 серия)	https://kinokrad.co/271936-bosh-10-seriya.html	8	2014	США	драма, детектив	Джим МакКэй	51
5283	В час беды (1-4 серия)	https://kinokrad.co/280625-v-chas-bedy.html	6	2014	Россия	мелодрама	Ольга Ланд	45
5284	Менталист 7 сезон (13 серия)	https://kinokrad.co/279846-mentalist-7-sezon-13-seriya.html	9	2014	США	триллер, драма, криминал, детектив	Крис Лонг, Эрик Ланёвилль, Джон Шоуолтер	43
5285	Неуклюжая 4 сезон (21 серия)	https://kinokrad.co/272506-neuklyuzhaya-4-sezon-21-seriya.html	7	2014	США	драма, мелодрама, комедия	Райан Шираки, Дэвид Катценберг, Джо Нуссбаум	20
5286	Константин 1 сезон (13 серия)	https://kinokrad.co/272074-konstantin-1-sezon-13-seriya.html	9	2014	США	ужасы, фэнтези, мистика	Нил Маршалл	45
5287	Маги в законе (1-12 серия)	https://kinokrad.co/255758-magi-v-zakone.html	7	2014	Япония	аниме, мультфильм, фэнтези, приключения	Ясуоми Уметсу	25
5288	Параллельная жизнь (1-12 серия)	https://kinokrad.co/255903-parallelnaya-zhizn.html	7	2014	Россия	криминал, детектив	Сергей Бобров	45
5289	Ладога (1-4 серия)	https://kinokrad.co/255916-ladoga.html	8	2014	Россия	военный, драма	Александр Велединский	52
5290	Сашка (1-100 серия)	https://kinokrad.co/255802-sashka-2014-serial.html	9	2014	Россия, Украина	мелодрама	Антон Гойда, Владимир Дяченко	44
5291	Нация Z (1 сезон)	https://kinokrad.co/278955-naciya-z-1-sezon-13-seriya.html	8	2014	США	ужасы, фантастика, боевик, драма	Джон Хайамс, Тим Эндрю, Луис Прието	43
5292	Старое ружьё (1-4 серия)	https://kinokrad.co/272998-staroe-ruzhe.html	8	2014	Россия	военный, драма	Кирилл Белевич	
5293	За пределами 1 сезон (1-13 серия)	https://kinokrad.co/273002-za-predelami-1-sezon.html	8	2014	США	фантастика, триллер, драма	Дэниэл Эттиэс, Пэрис Барклай, Мэтт Эрл Бисли	42
5294	Таинственные девушки (1-10 серия)	https://kinokrad.co/273006-tainstvennye-devushki.html	8	2014	США	комедия	Майкл Лембек, Роб Шиллер, Джил Джангер	30
5295	Корабль (1-26 серия)	https://kinokrad.co/3902-korabl.html	8	2014	Россия	фантастика, приключения, мелодрама	Олег Асадулин	48
5296	Тайны и ложь (1-6 серия)	https://kinokrad.co/273009-tayny-i-lozh.html	9	2014	Австралия	триллер, драма	Кейт Дэннис, Питер Сэлмон	42
5297	Сучьи войны (1-8 серия)	https://kinokrad.co/277976-suchi-voyny-8-seriya.html	7	2014	Россия	военный, драма, история	Николай Борц	50
5298	Анжелика 1 сезон (1-20 серия)	https://kinokrad.co/277585-anzhelika-1-20-seriya.html	8	2014	Россия	комедия	Радда Новикова, Антон Маслов	20
5299	Соблазн (1-16 серия)	https://kinokrad.co/278936-soblazn-1-16-seriya.html	8	2014	Россия	мелодрама	Ольга Субботина	50
5300	Подпольная империя 5 сезон (8 серия)	https://kinokrad.co/272312-podpolnaya-imperiya-5-sezon-8-seriya.html	8	2014	США	драма, криминал	Тимоти Ван Паттен, Аллен Култер, Джереми Подесва	55
5301	Обнимая небо (1-12 серия)	https://kinokrad.co/4812-obnimaya-nebo.html	8	2014	Россия	драма	Милена Фадеева	60
5302	Королева бандитов 2 сезон (1-16 серия)	https://kinokrad.co/3904-koroleva-banditov-2-sezon-16-seriya.html	7	2014	Россия	мелодрама	Валерий Девятилов	43
5303	Куку 2 сезон (7 серия)	https://kinokrad.co/278149-kuku-2-sezon-7-seriya.html	7	2014	Великобритания	комедия	Бен Тэйлор	22
5304	Несчастные (1-13 серия)	https://kinokrad.co/272737-neschastnye.html	8	2014	США	фантастика, мелодрама	Гэри Фледер, Эдвард Орнелас, Норман Бакли	43
5305	Любовницы (1 сезон)	https://kinokrad.co/272766-lyubovnicy-1-sezon.html	8	2014	США, Великобритания	триллер, драма	Рон Лагомарсино, Константин Макрис, Джон Скотт	43
5306	Лучшая свадьба (16 серия)	https://kinokrad.co/276803-luchshaya-svadba-16-seriya.html	7	2014	Южная Корея	Романтика, драма, комедия	Чон Рок О	60
5307	Практика 1 сезон (1-40 серия)	https://kinokrad.co/272961-praktika-1-sezon.html	9	2014	Россия	драма	Андрей Силкин	47
5308	Отец Матвей (1-16 серия)	https://kinokrad.co/276714-otec-matvey.html	8	2014	Россия	мелодрамы, детективы, отечественные	Валерий Девятилов	43
5309	Пятницкий 4 сезон (1-32 серия)	https://kinokrad.co/10809-pyatnickiy-4-sezon.html	8	2014	Россия	драма	Сергей Лесогоров, Мичислав Юзовский	45
5310	Позывной «Стая» 2 сезон (1-12 серия)	https://kinokrad.co/279179-pozyvnoy-staya-2-sezon.html	8	2014	Россия	боевик	Михаил Колпахчиев	90
5311	Физрук 2 сезон	https://kinokrad.co/256707-fizruk-2-sezon-2014.html	9	2014	Россия	комедия	Сергей Сенцов, Фёдор Стуков	25
5312	Крах 2 сезон (6 серия)	https://kinokrad.co/279727-krah-2-sezon-6-seriya.html	9	2014	Великобритания, США	триллер, драма	Джейкоб Вербрюгген	58
5313	Черные паруса (1-8 серия)	https://kinokrad.co/255718-chernye-parusa.html	8	2014	США, ЮАР	драма, приключения	Нил Маршалл, Сэм Миллер	56
5314	Утопия 2 сезон (1-6 серия)	https://kinokrad.co/271706-utopiya-2-sezon.html	8	2014	Великобритания	фантастика, триллер, драма, детектив	Марк Манден, Алекс Гарсиа Лопес, Уэйн Йип	50
5315	Бестия 2 сезон (1-3 серия)	https://kinokrad.co/271709-bestiya-2-sezon.html	6	2014	США, Канада	боевик, триллер, драма, криминал	Лариса Кондрацки, Ник Хэмм, Майк Баркер	50
5316	Женщина-констебль 2 сезон (1-5 серия)	https://kinokrad.co/271736-zhenschina-konstebl-2-sezon.html	7	2014	Великобритания	драма	Ниал Фрайзер, Йен Барбер, Джеймс Ларкин	45
5317	Луи 4 сезон (1-14 серия)	https://kinokrad.co/271772-lui-4-sezon.html	7	2014	США	драма, комедия	Луис С.К., Лиз Плонка	23
5318	Мужчины в деле 3 сезон (1-10 серия)	https://kinokrad.co/271776-muzhchiny-v-dele-3-sezon-9-10-seriya.html	8	2014	США	драма, комедия	Марк Сендроуски, Дэвид Трейнер, Линда Мендоза	22
5319	Белый воротничок 6 сезон (6 серия)	https://kinokrad.co/272306-belyy-vorotnichok-6-sezon-6-seriya.html	9	2014	США	детектив, криминал, драма, комедия	Джон Т. Кречмер, Рассел Ли Файн, Пол Холахан	43
5320	В поиске (1-8 серия)	https://kinokrad.co/271784-v-poiske.html	8	2014	США	драма, комедия	Эндрю Хэй, Джеми Бэббит, Райан Флек	30
5321	По лезвию бритвы (1-8 серия)	https://kinokrad.co/271798-po-lezviyu-britvy.html	7	2014	Россия	драма, военный	Сергей Кожевников	416
5322	Эпизоды 3 сезон (1-9 серия)	https://kinokrad.co/272436-epizody-3-sezon.html	7	2014	США, Великобритания	комедия	Джим Филд Смит, Иэн Б. МакДональд, Джеймс Гриффитс	28
5323	Могучие рейнджеры: Мегасила (1-22 серия)	https://kinokrad.co/272451-moguchie-reyndzhery-megasila.html	8	2014	США	фантастика, фэнтези, боевик, приключения	James Barr, Акихиро Ногучи, Джонатан Тзачер	23
5324	Убийство на пляже (1-8 серия)	https://kinokrad.co/272452-ubiystvo-na-plyazhe.html	9	2014	Великобритания	драма, криминал, детектив	Джеймс Стронг, Эрос Лин	46
5325	Братаны 4 сезон (1-33 серия)	https://kinokrad.co/272502-bratany-4-sezon-33-seriya.html	8	2014	Россия	боевик, криминал	Александр Мохов	45
5326	Настоящий детектив 1 сезон (1-8 серия)	https://kinokrad.co/278440-nastoyaschiy-detektiv-1-sezon-1-8-seriya.html	9	2014	США	детектив, криминал, драма	Кэри Фукунага, Джастин Лин	60
5327	Ведьмы Ист-Энда (2 сезон)	https://kinokrad.co/272464-vedmy-ist-jenda-2-sezon.html	8	2014	США	фэнтези, драма	Джон Скотт, Аллан Аркуш, Патрик Р. Норрис	43
5328	Под куполом (2 сезон)	https://kinokrad.co/272381-pod-kupolom-2-sezon.html	9	2014	США	триллер, драма, детектив	Джек Бендер, Дэвид Баррет, Питер Лето	43
5329	Брат за брата 3 сезон (1-30 серия)	https://kinokrad.co/7486-brat-za-brata-3-sezon.html	8	2014	Украина	драма, криминал	Олег Туранский, Олег Филипенко	45
5330	Избранный 1 сезон	https://kinokrad.co/275881-izbrannyy-1-sezon.html	7	2014	США	драма	Бен Кетаи, Тоби Уилкинс	22
5331	1001 (1-4 серия)	https://kinokrad.co/272624-1001-serial.html	5	2014	Россия	мелодрама, фантастика	Александр Котт	
5332	Хемлок Гроув 2 сезон (1-10 серия)	https://kinokrad.co/272627-hemlok-grouv-2-sezon.html	8	2014	США	ужасы, триллер, детектив	Деран Сарафян, Дэвид Стрейтон, Т.Дж. Скотт	50
5333	Избранный 3 сезон	https://kinokrad.co/271765-izbrannyy-3-sezon.html	9	2014	США	драма	Бен Кетаи, Тоби Уилкинс	22
5334	Братские узы (1-4 серия)	https://kinokrad.co/279335-bratskie-uzy-1-4-seriya.html	8	2014	Россия, Украина	мелодрама	Владимир Харченко-Куликовский	48
5335	Избранный 1 сезон (3 серия)	https://kinokrad.co/255728-izbrannyy-1-sezon.html	6	2014	США	мультфильм, комедия, приключения, семейный		22
5336	Во плоти 2 сезон (1-6 серия)	https://kinokrad.co/272636-vo-ploti-2-sezon.html	7	2014	Великобритания	ужасы, драма	Джонни Кэмпбелл, Джим О’Хенлон, Дэймон Томас	43
5337	Ржавчина (1-24 серия)	https://kinokrad.co/10914-rzhavchina.html	8	2014	Россия	боевик, криминал	Андрей Балашов	45
5338	Тальянка 1 сезон (1-8 серия)	https://kinokrad.co/279310-talyanka-1-sezon-1-8-seriya.html	8	2014	Россия	драма, мелодрама	Евгений Звездаков	50
5339	Тайные связи 5 сезон (16 серия)	https://kinokrad.co/272587-taynye-svyazi-5-sezon-16-seriya.html	7	2014	США	боевик, триллер, драма, криминал, детектив	Стефен Т. Кэй, Феликс Энрикез Алькала, Аллен Крокер	43
5340	Доктор Кто 8 сезон (13 серия)	https://kinokrad.co/274023-doktor-kto-8-sezon-13-seriya.html	8	2014	Великобритания	фантастика, драма, комедия, приключения, семейный	Грэм Харпер, Эрос Лин, Джеймс Стронг	43
5341	Быть человеком 4 сезон (1-13 серия)	https://kinokrad.co/255924-byt-chelovekom-4-sezon.html	8	2014	Канада, США	ужасы, фэнтези, драма, мистика	Паоло Барзмен, Стефан Плещински	43
5833	Бесценная любовь (1-4 серия)	https://kinokrad.co/3037-bescennaya-lyubov.html	7	2013	Россия	мелодрама	Игорь Ройзман	45
5342	Мушкетеры 1 сезон (1-10 серия)	https://kinokrad.co/255931-mushketery.html	8	2014	Великобритания	драма	Фэррен Блэкберн, Ричард Кларк	55
5343	Этаж (1-32 серия)	https://kinokrad.co/255934-etazh-smotret-onlayn.html	7	2014	Россия	комедия	Иван Щеголев, Сергей Алексеев	
5344	Верни мою любовь (23, 24 серия)	https://kinokrad.co/279453-verni-moyu-lyubov-23-24-seriya.html	8	2014	Россия, Украина	мелодрама	Евгений Баранов	42
5345	Карпов 3 сезон (1-33 серия)	https://kinokrad.co/277157-karpov-3-sezon.html	9	2014	Россия	детектив, криминал	Иван Щёголев, Владислав Николаев	42
5346	Николя ле Флок 4 сезон (1-2 серия)	https://kinokrad.co/271838-nikolya-le-flok-4-sezon.html	6	2014	Франция	драма, криминал, детектив	Николас Пикард, Эдвин Бейли, Филипп Беренжер	105
5347	Острые козырьки / Заточенные кепки 2 сезон (1-6 серия)	https://kinokrad.co/272758-ostrye-kozyrki-2-sezon.html	9	2014	Великобритания	драма, криминал	Колм МакКарти, Отто Баферст, Том Харпер	60
5348	Кухня 4 сезон (1-20 серия)	https://kinokrad.co/272231-kuhnya-4-sezon.html	9	2014	Россия	комедия	Дмитрий Дьяченко, Жора Крыжовников	25
5349	Вице-президент 3 сезон (1-10 серия)	https://kinokrad.co/273065-vice-prezident-3-sezon.html	8	2014	США	комедия	Армандо Ианнуччи, Крис Эддисон, Бекки Мартин	30
5350	После (1 серия)	https://kinokrad.co/273054-posle.html	9	2014	США	фантастика, драма	Крис Картер	55
5351	Сватьи (1-12 серия)	https://kinokrad.co/273071-svatyi.html	8	2014	Россия	комедия	Юрий Морозов	46
5352	Телепапа 1 сезон (1-2 серия)	https://kinokrad.co/273088-telepapa-1-sezon.html	4	2014	США	драма, комедия, семейный	Джоди Марголин, Ричард Коррелл, Джонатан Джадж	23
5353	Земляк (1-6 серия)	https://kinokrad.co/272786-zemlyak.html	7	2014	Россия	боевик	Максим Бриус	50
5354	Красивая жизнь (1-20 серия)	https://kinokrad.co/279061-krasivaya-zhizn.html	8	2014	Россия	мелодрама	Александр Замятин	47
5355	Грейсленд 2 сезон (1-13 серия)	https://kinokrad.co/272789-greyslend-2-sezon.html	8	2014	США	боевик, драма, криминал	Рассел Ли Файн, Сэнфорд Букставер, Ренни Харлин	43
5356	В Москве всегда солнечно (1-16 серия)	https://kinokrad.co/272793-v-moskve-vsegda-solnechno.html	6	2014	Россия	комедия	Александр Наумов, Сергей Сенцов	23
5357	Контуженый или Уроки плавания вольным стилем (1-4 серия)	https://kinokrad.co/272805-kontuzhenyy-ili-uroki-plavaniya-volnym-stilem.html	7	2014	Россия	комедия, драма	Владимир Зайкин	50
5358	Чиста вода у истока (1-4 серия)	https://kinokrad.co/272837-chista-voda-u-istoka.html	6	2014	Россия	детектив, криминал, драма	Юрий Попович	45
5359	Разорванные нити (1-4 серия)	https://kinokrad.co/272843-razorvannye-niti.html	7	2014	Россия	мелодрама	Андрей Канивченко	50
5360	Легенды 1 сезон (1-10 серия)	https://kinokrad.co/272085-legendy-1-sezon.html	8	2014	США	драма	Дэвид Семел, Брэд Тернер, Джон Беринг	60
5361	Адепт Святого знака 2 сезон (1-12 серия)	https://kinokrad.co/278554-adept-svyatogo-znaka-2-sezon-1-12-seriya.html	7	2014	Япония	аниме, мультфильм, приключения	Юу Нобута	25
5362	Обитель лжи 3 сезон (1-12 серия)	https://kinokrad.co/255708-obitel-lzhi-3-sezon.html	8	2014	США	драма, комедия	Стивен Хопкинс, Адам Бернштейн	29
5363	Долгий путь домой (1-16 серия)	https://kinokrad.co/278304-dolgiy-put-domoy-1-16-seriya.html	7	2014	Россия	драма	Ольга Доброва-Куликова	55
5364	Очень плохая училка 1 сезон (13 серия)	https://kinokrad.co/271546-ochen-plohaya-uchilka-13-seriya.html	8	2014	США	комедия	Фред Госс, Эрик Аппель, Адам Дэвидсон	30
5365	Ганнибал 2 сезон (1-13 серия)	https://kinokrad.co/272408-gannibal-2-sezon.html	9	2014	США	детектив, криминал, драма, триллер	Майкл Раймер, Дэвид Слэйд, Тим Хантер	43
5366	Спираль (1-13 серия)	https://kinokrad.co/255920-spiral-vse-serii.html	8	2014	США, Канада	фантастика, триллер	Брэд Тернер, Джеримайя С. Чечик	40
5367	Восьмидесятые 4 сезон (1-20 серия)	https://kinokrad.co/275910-vosmidesyatye-4-sezon.html	9	2014	Россия	комедия	Фёдор Стуков	25
5368	Аромат шиповника (1-32 серия)	https://kinokrad.co/275009-aromat-shipovnika.html	8	2014	Россия	мелодрама	Татьяна Мирошник, Вадим Дербенёв, Николай Викторов	45
5369	Штамм 1 сезон (1-13 серия)	https://kinokrad.co/273047-shtamm-1-sezon.html	9	2014	США	ужасы, фантастика, драма	Гильермо дель Торо, Дэвид Семел, Питер Уэллер	42
5370	Ментовские войны 8 сезон (1-16 серия)	https://kinokrad.co/274138-mentovskie-voyny-8-vse-serii.html	8	2014	Россия	боевик, драма, криминал	Павел Мальков	42
5371	Шетланд (4 сезон)	https://kinokrad.co/325859-shetland-4-sezon.html	8	2013	Великобритания	драма, криминал, детектив	Jan Matthys, Тадеус О’Салливан, Rebecca Gatward	60
5372	София Прекрасная (4 сезон)	https://kinokrad.co/318006-sofiya-prekrasnaya-4-sezon-2017.html	7	2013	США	мультфильм, мюзикл, фэнтези, семейный	Джэми Митчелл, Ларри Лэйчлитер, Мирчи Мантта	30
5373	Родина (1 сезон)	https://kinokrad.co/312418-rodina-1-sezon-2013.html	8	2013	США	триллер, драма, криминал, детектив	Лесли Линка Глаттер, Майкл Куэста, Дэниэл Эттиэс	55
5898	Царство (1 сезон)	https://kinokrad.co/6013-carstvo-1-sezon.html	8	2013	США	фэнтези, драма	Брэд Силберлинг	43
5374	Родина (3 сезон)	https://kinokrad.co/312510-rodina-3-sezon-2013.html	8	2013	США	триллер, драма, криминал, детектив	Лесли Линка Глаттер, Майкл Куэста, Дэниэл Эттиэс	55
5375	Карточный домик 1 сезон (1-13 серия)	https://kinokrad.co/281021-kartochnyy-domik-1-sezon.html	8	2013	США	драма	Джеймс Фоули, Джон Дэвид Коулз, Карл Франклин	50
5376	Солдаты: Снова в строю 17 сезон (1-20 серия)	https://kinokrad.co/5618-soldaty-snova-v-stroyu-17-sezon.html	7	2013	Россия	комедия	Владимир Тумаев, Роман Зимин	45
5377	Молодёжка (3 сезон)	https://kinokrad.co/324602-molodezhka-3-sezon.html	7	2013	Россия	драма, спорт	Сергей Арланов, Андрей Головков	48
5378	Молодёжка (2 сезон)	https://kinokrad.co/324596-molodezhka-2-sezon.html	7	2013	Россия	драма, спорт	Сергей Арланов, Андрей Головков	48
5379	Молодёжка (1 сезон)	https://kinokrad.co/324593-molodezhka-1-sezon.html	6	2013	Россия	драма, спорт	Сергей Арланов, Андрей Головков	48
5380	Мост 2 сезон	https://kinokrad.co/15577-most-2-sezon-2013-onlayn-serial.html	8	2013	Швеция, Дания	триллер, криминал, детектив	Хенрик Георгссон, Шарлотта Зилинг	57
5381	Правильная жена 5 сезон (1-22 серия)	https://kinokrad.co/256154-pravilnaya-zhena-5-sezon.html	7	2013	США	драма, криминал, детектив	Розмари Родригез, Майкл Цинберг	43
5382	Братья	https://kinokrad.co/255563-bratya-2013-onlayn-serial.html	3	2013	Россия	драма	Дмитрий Фикс, Сергей Репецкий, Илья Максимов	45
5383	Сверхъестественное (9 сезон)	https://kinokrad.co/255779-sverhestestvennoe-9-sezon.html	9	2013	США	ужасы, фэнтези, триллер, драма, детектив, мистика	Роберт Сингер, Филип Сгриккиа	43
5384	Банши 1 сезон (1-10 серия)	https://kinokrad.co/280940-banshi-1-sezon.html	9	2013	США	боевик, триллер, драма, криминал, детектив	Грег Яйтанс, Оле Кристиан Мадсен, Лони Перистер	43
5385	Ходячие мертвецы 4 сезон (1-16 серия)	https://kinokrad.co/254787-hodyachie-mertvecy-4-sezon-smotret-18-04.html	9	2013	США	ужасы, триллер, драма	Эрнест Р. Дикерсон, Гай Ферленд, Грег Никотеро	43
5386	Маша и медведь	https://kinokrad.co/255480-masha-i-medved-55-seriya.html	8	2013	Россия	мультфильм, комедия, семейный	Олег Кузовков, Олег Ужинов	7
5387	Затроленный / Супермаркет (3 сезон)	https://kinokrad.co/318478-zatrolennyy-3-sezon-2013.html	5	2013	Великобритания	комедия	Пол Харрисон, Джонатан Гершфилд, Пол Уолкер	26
5388	Викинги (5 сезон)	https://kinokrad.co/323123-vikingi-5-sezon.html	8	2013	Ирландия, Канада	боевик, драма, мелодрама, военный, история	Кен Джиротти, Киаран Доннелли, Джефф Вулнаф	45
5389	Девочки (2 сезон)	https://kinokrad.co/285723-devochki-2-sezon-2013.html	5	2013	США	драма, комедия	Лина Данэм, Джесси Перец, Ричард Шепард	30
5390	Битва экстрасенсов 14 сезон	https://kinokrad.co/255550-bitva-ekstrasensov-14-sezon-smotret-onlayn.html	6	2013	Россия	реальное ТВ	Фёдор Торстенсен, Ольга Шмид	48
5391	Карпов 2 сезон	https://kinokrad.co/8861-karpov-2-sezon-2013-onlayn-serial.html	6	2013	Россия	детектив, криминал	Иван Щёголев	45
5392	София Прекрасная (3 сезон)	https://kinokrad.co/318002-sofiya-prekrasnaya-3-sezon-2015.html	7	2013	США	мультфильм, мюзикл, фэнтези, семейный	Джэми Митчелл, Ларри Лэйчлитер, Мирчи Мантта	30
5393	София Прекрасная (1 сезон)	https://kinokrad.co/317994-sofiya-prekrasnaya-1-sezon-2013.html	7	2013	США	мультфильм, мюзикл, фэнтези, семейный	Джэми Митчелл, Ларри Лэйчлитер, Мирчи Мантта	30
5394	Вторжение титанов (1 сезон)	https://kinokrad.co/317370-vtorzhenie-titanov-1-sezon-2014.html	8	2013	Япония	аниме, мультфильм, драма, фэнтези, боевик	Хироюки Танака, Синпэй Эдзаки, Киёси Фукумото	25
5395	Убийство (3 сезон)	https://kinokrad.co/301229-ubiystvo-3-sezon-2013.html	8	2013	США, Канада	триллер, драма, криминал, детектив	Эдвард Бьянчи, Николь Кэссел, Фил Абрахам	43
5396	Лицемеры (1 сезон)	https://kinokrad.co/318286-licemery-1-sezon-2013.html	6	2013	Аргентина	драма	Дэниэл Бароне, Хорхе Бечара, Лукас Хиль	50
5397	Перевозчик (1 сезон)	https://kinokrad.co/298084-perevozchik-1-sezon-2013.html	7	2013	Канада, Франция, США, Германия	боевик, криминал	Брэд Тернер, Эрик Валетт, Энди Микита	43
5398	Изабелла (2 сезон)	https://kinokrad.co/298846-izabella-2-sezon-2013.html	8	2013	Испания	история	Хорди Фрадес, Ориоль Феррер, Сальвадор Гарсия Руис	60
5399	Голдберги (1 сезон)	https://kinokrad.co/318218-goldbergi-1-sezon-2013.html	8	2013	США	комедия	Дэвид Катценберг, Джей Чандрашекхар, Виктор Нелли мл	22
5400	Халк и агенты СМЭШ (1 сезон)	https://kinokrad.co/318962-halk-i-agenty-smjesh-1-sezon-2013.html	6	2013	США	мультфильм, фантастика, боевик, комедия, приключения	Дэн Фосетт, Патрик Арчибальд, Рой Аллен Смит	22
5401	Обнимая небо (1-12 серия)	https://kinokrad.co/4812-obnimaya-nebo.html	8	2014	Россия	драма	Милена Фадеева	60
5402	Королева бандитов 2 сезон (1-16 серия)	https://kinokrad.co/3904-koroleva-banditov-2-sezon-16-seriya.html	7	2014	Россия	мелодрама	Валерий Девятилов	43
5403	Куку 2 сезон (7 серия)	https://kinokrad.co/278149-kuku-2-sezon-7-seriya.html	7	2014	Великобритания	комедия	Бен Тэйлор	22
5404	Несчастные (1-13 серия)	https://kinokrad.co/272737-neschastnye.html	8	2014	США	фантастика, мелодрама	Гэри Фледер, Эдвард Орнелас, Норман Бакли	43
5405	Любовницы (1 сезон)	https://kinokrad.co/272766-lyubovnicy-1-sezon.html	8	2014	США, Великобритания	триллер, драма	Рон Лагомарсино, Константин Макрис, Джон Скотт	43
5406	Лучшая свадьба (16 серия)	https://kinokrad.co/276803-luchshaya-svadba-16-seriya.html	7	2014	Южная Корея	Романтика, драма, комедия	Чон Рок О	60
5407	Практика 1 сезон (1-40 серия)	https://kinokrad.co/272961-praktika-1-sezon.html	9	2014	Россия	драма	Андрей Силкин	47
5408	Отец Матвей (1-16 серия)	https://kinokrad.co/276714-otec-matvey.html	8	2014	Россия	мелодрамы, детективы, отечественные	Валерий Девятилов	43
5409	Пятницкий 4 сезон (1-32 серия)	https://kinokrad.co/10809-pyatnickiy-4-sezon.html	8	2014	Россия	драма	Сергей Лесогоров, Мичислав Юзовский	45
5410	Позывной «Стая» 2 сезон (1-12 серия)	https://kinokrad.co/279179-pozyvnoy-staya-2-sezon.html	8	2014	Россия	боевик	Михаил Колпахчиев	90
5411	Физрук 2 сезон	https://kinokrad.co/256707-fizruk-2-sezon-2014.html	9	2014	Россия	комедия	Сергей Сенцов, Фёдор Стуков	25
5412	Крах 2 сезон (6 серия)	https://kinokrad.co/279727-krah-2-sezon-6-seriya.html	9	2014	Великобритания, США	триллер, драма	Джейкоб Вербрюгген	58
5413	Черные паруса (1-8 серия)	https://kinokrad.co/255718-chernye-parusa.html	8	2014	США, ЮАР	драма, приключения	Нил Маршалл, Сэм Миллер	56
5414	Утопия 2 сезон (1-6 серия)	https://kinokrad.co/271706-utopiya-2-sezon.html	8	2014	Великобритания	фантастика, триллер, драма, детектив	Марк Манден, Алекс Гарсиа Лопес, Уэйн Йип	50
5415	Бестия 2 сезон (1-3 серия)	https://kinokrad.co/271709-bestiya-2-sezon.html	6	2014	США, Канада	боевик, триллер, драма, криминал	Лариса Кондрацки, Ник Хэмм, Майк Баркер	50
5416	Женщина-констебль 2 сезон (1-5 серия)	https://kinokrad.co/271736-zhenschina-konstebl-2-sezon.html	7	2014	Великобритания	драма	Ниал Фрайзер, Йен Барбер, Джеймс Ларкин	45
5417	Луи 4 сезон (1-14 серия)	https://kinokrad.co/271772-lui-4-sezon.html	7	2014	США	драма, комедия	Луис С.К., Лиз Плонка	23
5418	Мужчины в деле 3 сезон (1-10 серия)	https://kinokrad.co/271776-muzhchiny-v-dele-3-sezon-9-10-seriya.html	8	2014	США	драма, комедия	Марк Сендроуски, Дэвид Трейнер, Линда Мендоза	22
5419	Белый воротничок 6 сезон (6 серия)	https://kinokrad.co/272306-belyy-vorotnichok-6-sezon-6-seriya.html	9	2014	США	детектив, криминал, драма, комедия	Джон Т. Кречмер, Рассел Ли Файн, Пол Холахан	43
5420	В поиске (1-8 серия)	https://kinokrad.co/271784-v-poiske.html	8	2014	США	драма, комедия	Эндрю Хэй, Джеми Бэббит, Райан Флек	30
5421	По лезвию бритвы (1-8 серия)	https://kinokrad.co/271798-po-lezviyu-britvy.html	7	2014	Россия	драма, военный	Сергей Кожевников	416
5422	Эпизоды 3 сезон (1-9 серия)	https://kinokrad.co/272436-epizody-3-sezon.html	7	2014	США, Великобритания	комедия	Джим Филд Смит, Иэн Б. МакДональд, Джеймс Гриффитс	28
5423	Могучие рейнджеры: Мегасила (1-22 серия)	https://kinokrad.co/272451-moguchie-reyndzhery-megasila.html	8	2014	США	фантастика, фэнтези, боевик, приключения	James Barr, Акихиро Ногучи, Джонатан Тзачер	23
5424	Убийство на пляже (1-8 серия)	https://kinokrad.co/272452-ubiystvo-na-plyazhe.html	9	2014	Великобритания	драма, криминал, детектив	Джеймс Стронг, Эрос Лин	46
5425	Братаны 4 сезон (1-33 серия)	https://kinokrad.co/272502-bratany-4-sezon-33-seriya.html	8	2014	Россия	боевик, криминал	Александр Мохов	45
5426	Настоящий детектив 1 сезон (1-8 серия)	https://kinokrad.co/278440-nastoyaschiy-detektiv-1-sezon-1-8-seriya.html	9	2014	США	детектив, криминал, драма	Кэри Фукунага, Джастин Лин	60
5427	Ведьмы Ист-Энда (2 сезон)	https://kinokrad.co/272464-vedmy-ist-jenda-2-sezon.html	8	2014	США	фэнтези, драма	Джон Скотт, Аллан Аркуш, Патрик Р. Норрис	43
5428	Под куполом (2 сезон)	https://kinokrad.co/272381-pod-kupolom-2-sezon.html	9	2014	США	триллер, драма, детектив	Джек Бендер, Дэвид Баррет, Питер Лето	43
5429	Брат за брата 3 сезон (1-30 серия)	https://kinokrad.co/7486-brat-za-brata-3-sezon.html	8	2014	Украина	драма, криминал	Олег Туранский, Олег Филипенко	45
5430	Избранный 1 сезон	https://kinokrad.co/275881-izbrannyy-1-sezon.html	7	2014	США	драма	Бен Кетаи, Тоби Уилкинс	22
5431	1001 (1-4 серия)	https://kinokrad.co/272624-1001-serial.html	5	2014	Россия	мелодрама, фантастика	Александр Котт	
5432	Хемлок Гроув 2 сезон (1-10 серия)	https://kinokrad.co/272627-hemlok-grouv-2-sezon.html	8	2014	США	ужасы, триллер, детектив	Деран Сарафян, Дэвид Стрейтон, Т.Дж. Скотт	50
5433	Избранный 3 сезон	https://kinokrad.co/271765-izbrannyy-3-sezon.html	9	2014	США	драма	Бен Кетаи, Тоби Уилкинс	22
5434	Братские узы (1-4 серия)	https://kinokrad.co/279335-bratskie-uzy-1-4-seriya.html	8	2014	Россия, Украина	мелодрама	Владимир Харченко-Куликовский	48
5435	Избранный 1 сезон (3 серия)	https://kinokrad.co/255728-izbrannyy-1-sezon.html	6	2014	США	мультфильм, комедия, приключения, семейный		22
5899	Домработница (1 сезон)	https://kinokrad.co/255536-domrabotnica.html	6	2013	Россия	мелодрама	Эдуард Пальмов	45
5436	Во плоти 2 сезон (1-6 серия)	https://kinokrad.co/272636-vo-ploti-2-sezon.html	7	2014	Великобритания	ужасы, драма	Джонни Кэмпбелл, Джим О’Хенлон, Дэймон Томас	43
5437	Ржавчина (1-24 серия)	https://kinokrad.co/10914-rzhavchina.html	8	2014	Россия	боевик, криминал	Андрей Балашов	45
5438	Тальянка 1 сезон (1-8 серия)	https://kinokrad.co/279310-talyanka-1-sezon-1-8-seriya.html	8	2014	Россия	драма, мелодрама	Евгений Звездаков	50
5439	Тайные связи 5 сезон (16 серия)	https://kinokrad.co/272587-taynye-svyazi-5-sezon-16-seriya.html	7	2014	США	боевик, триллер, драма, криминал, детектив	Стефен Т. Кэй, Феликс Энрикез Алькала, Аллен Крокер	43
5440	Доктор Кто 8 сезон (13 серия)	https://kinokrad.co/274023-doktor-kto-8-sezon-13-seriya.html	8	2014	Великобритания	фантастика, драма, комедия, приключения, семейный	Грэм Харпер, Эрос Лин, Джеймс Стронг	43
5441	Быть человеком 4 сезон (1-13 серия)	https://kinokrad.co/255924-byt-chelovekom-4-sezon.html	8	2014	Канада, США	ужасы, фэнтези, драма, мистика	Паоло Барзмен, Стефан Плещински	43
5442	Мушкетеры 1 сезон (1-10 серия)	https://kinokrad.co/255931-mushketery.html	8	2014	Великобритания	драма	Фэррен Блэкберн, Ричард Кларк	55
5443	Этаж (1-32 серия)	https://kinokrad.co/255934-etazh-smotret-onlayn.html	7	2014	Россия	комедия	Иван Щеголев, Сергей Алексеев	
5444	Верни мою любовь (23, 24 серия)	https://kinokrad.co/279453-verni-moyu-lyubov-23-24-seriya.html	8	2014	Россия, Украина	мелодрама	Евгений Баранов	42
5445	Карпов 3 сезон (1-33 серия)	https://kinokrad.co/277157-karpov-3-sezon.html	9	2014	Россия	детектив, криминал	Иван Щёголев, Владислав Николаев	42
5446	Николя ле Флок 4 сезон (1-2 серия)	https://kinokrad.co/271838-nikolya-le-flok-4-sezon.html	6	2014	Франция	драма, криминал, детектив	Николас Пикард, Эдвин Бейли, Филипп Беренжер	105
5447	Острые козырьки / Заточенные кепки 2 сезон (1-6 серия)	https://kinokrad.co/272758-ostrye-kozyrki-2-sezon.html	9	2014	Великобритания	драма, криминал	Колм МакКарти, Отто Баферст, Том Харпер	60
5448	Кухня 4 сезон (1-20 серия)	https://kinokrad.co/272231-kuhnya-4-sezon.html	9	2014	Россия	комедия	Дмитрий Дьяченко, Жора Крыжовников	25
5449	Вице-президент 3 сезон (1-10 серия)	https://kinokrad.co/273065-vice-prezident-3-sezon.html	8	2014	США	комедия	Армандо Ианнуччи, Крис Эддисон, Бекки Мартин	30
5450	После (1 серия)	https://kinokrad.co/273054-posle.html	9	2014	США	фантастика, драма	Крис Картер	55
5451	Сватьи (1-12 серия)	https://kinokrad.co/273071-svatyi.html	8	2014	Россия	комедия	Юрий Морозов	46
5452	Телепапа 1 сезон (1-2 серия)	https://kinokrad.co/273088-telepapa-1-sezon.html	4	2014	США	драма, комедия, семейный	Джоди Марголин, Ричард Коррелл, Джонатан Джадж	23
5453	Земляк (1-6 серия)	https://kinokrad.co/272786-zemlyak.html	7	2014	Россия	боевик	Максим Бриус	50
5454	Красивая жизнь (1-20 серия)	https://kinokrad.co/279061-krasivaya-zhizn.html	8	2014	Россия	мелодрама	Александр Замятин	47
5455	Грейсленд 2 сезон (1-13 серия)	https://kinokrad.co/272789-greyslend-2-sezon.html	8	2014	США	боевик, драма, криминал	Рассел Ли Файн, Сэнфорд Букставер, Ренни Харлин	43
5456	В Москве всегда солнечно (1-16 серия)	https://kinokrad.co/272793-v-moskve-vsegda-solnechno.html	6	2014	Россия	комедия	Александр Наумов, Сергей Сенцов	23
5457	Контуженый или Уроки плавания вольным стилем (1-4 серия)	https://kinokrad.co/272805-kontuzhenyy-ili-uroki-plavaniya-volnym-stilem.html	7	2014	Россия	комедия, драма	Владимир Зайкин	50
5458	Чиста вода у истока (1-4 серия)	https://kinokrad.co/272837-chista-voda-u-istoka.html	6	2014	Россия	детектив, криминал, драма	Юрий Попович	45
5459	Разорванные нити (1-4 серия)	https://kinokrad.co/272843-razorvannye-niti.html	7	2014	Россия	мелодрама	Андрей Канивченко	50
5460	Легенды 1 сезон (1-10 серия)	https://kinokrad.co/272085-legendy-1-sezon.html	8	2014	США	драма	Дэвид Семел, Брэд Тернер, Джон Беринг	60
5461	Адепт Святого знака 2 сезон (1-12 серия)	https://kinokrad.co/278554-adept-svyatogo-znaka-2-sezon-1-12-seriya.html	7	2014	Япония	аниме, мультфильм, приключения	Юу Нобута	25
5462	Обитель лжи 3 сезон (1-12 серия)	https://kinokrad.co/255708-obitel-lzhi-3-sezon.html	8	2014	США	драма, комедия	Стивен Хопкинс, Адам Бернштейн	29
5463	Долгий путь домой (1-16 серия)	https://kinokrad.co/278304-dolgiy-put-domoy-1-16-seriya.html	7	2014	Россия	драма	Ольга Доброва-Куликова	55
5464	Очень плохая училка 1 сезон (13 серия)	https://kinokrad.co/271546-ochen-plohaya-uchilka-13-seriya.html	8	2014	США	комедия	Фред Госс, Эрик Аппель, Адам Дэвидсон	30
5465	Ганнибал 2 сезон (1-13 серия)	https://kinokrad.co/272408-gannibal-2-sezon.html	9	2014	США	детектив, криминал, драма, триллер	Майкл Раймер, Дэвид Слэйд, Тим Хантер	43
5466	Спираль (1-13 серия)	https://kinokrad.co/255920-spiral-vse-serii.html	8	2014	США, Канада	фантастика, триллер	Брэд Тернер, Джеримайя С. Чечик	40
5467	Восьмидесятые 4 сезон (1-20 серия)	https://kinokrad.co/275910-vosmidesyatye-4-sezon.html	9	2014	Россия	комедия	Фёдор Стуков	25
5468	Аромат шиповника (1-32 серия)	https://kinokrad.co/275009-aromat-shipovnika.html	8	2014	Россия	мелодрама	Татьяна Мирошник, Вадим Дербенёв, Николай Викторов	45
5469	Штамм 1 сезон (1-13 серия)	https://kinokrad.co/273047-shtamm-1-sezon.html	9	2014	США	ужасы, фантастика, драма	Гильермо дель Торо, Дэвид Семел, Питер Уэллер	42
5470	Ментовские войны 8 сезон (1-16 серия)	https://kinokrad.co/274138-mentovskie-voyny-8-vse-serii.html	8	2014	Россия	боевик, драма, криминал	Павел Мальков	42
5471	Шетланд (4 сезон)	https://kinokrad.co/325859-shetland-4-sezon.html	8	2013	Великобритания	драма, криминал, детектив	Jan Matthys, Тадеус О’Салливан, Rebecca Gatward	60
5472	София Прекрасная (4 сезон)	https://kinokrad.co/318006-sofiya-prekrasnaya-4-sezon-2017.html	7	2013	США	мультфильм, мюзикл, фэнтези, семейный	Джэми Митчелл, Ларри Лэйчлитер, Мирчи Мантта	30
5473	Родина (1 сезон)	https://kinokrad.co/312418-rodina-1-sezon-2013.html	8	2013	США	триллер, драма, криминал, детектив	Лесли Линка Глаттер, Майкл Куэста, Дэниэл Эттиэс	55
5474	Родина (3 сезон)	https://kinokrad.co/312510-rodina-3-sezon-2013.html	8	2013	США	триллер, драма, криминал, детектив	Лесли Линка Глаттер, Майкл Куэста, Дэниэл Эттиэс	55
5475	Карточный домик 1 сезон (1-13 серия)	https://kinokrad.co/281021-kartochnyy-domik-1-sezon.html	8	2013	США	драма	Джеймс Фоули, Джон Дэвид Коулз, Карл Франклин	50
5476	Солдаты: Снова в строю 17 сезон (1-20 серия)	https://kinokrad.co/5618-soldaty-snova-v-stroyu-17-sezon.html	7	2013	Россия	комедия	Владимир Тумаев, Роман Зимин	45
5477	Молодёжка (3 сезон)	https://kinokrad.co/324602-molodezhka-3-sezon.html	7	2013	Россия	драма, спорт	Сергей Арланов, Андрей Головков	48
5478	Молодёжка (2 сезон)	https://kinokrad.co/324596-molodezhka-2-sezon.html	7	2013	Россия	драма, спорт	Сергей Арланов, Андрей Головков	48
5479	Молодёжка (1 сезон)	https://kinokrad.co/324593-molodezhka-1-sezon.html	6	2013	Россия	драма, спорт	Сергей Арланов, Андрей Головков	48
5480	Мост 2 сезон	https://kinokrad.co/15577-most-2-sezon-2013-onlayn-serial.html	8	2013	Швеция, Дания	триллер, криминал, детектив	Хенрик Георгссон, Шарлотта Зилинг	57
5481	Правильная жена 5 сезон (1-22 серия)	https://kinokrad.co/256154-pravilnaya-zhena-5-sezon.html	7	2013	США	драма, криминал, детектив	Розмари Родригез, Майкл Цинберг	43
5482	Братья	https://kinokrad.co/255563-bratya-2013-onlayn-serial.html	3	2013	Россия	драма	Дмитрий Фикс, Сергей Репецкий, Илья Максимов	45
5483	Сверхъестественное (9 сезон)	https://kinokrad.co/255779-sverhestestvennoe-9-sezon.html	9	2013	США	ужасы, фэнтези, триллер, драма, детектив, мистика	Роберт Сингер, Филип Сгриккиа	43
5484	Банши 1 сезон (1-10 серия)	https://kinokrad.co/280940-banshi-1-sezon.html	9	2013	США	боевик, триллер, драма, криминал, детектив	Грег Яйтанс, Оле Кристиан Мадсен, Лони Перистер	43
5485	Ходячие мертвецы 4 сезон (1-16 серия)	https://kinokrad.co/254787-hodyachie-mertvecy-4-sezon-smotret-18-04.html	9	2013	США	ужасы, триллер, драма	Эрнест Р. Дикерсон, Гай Ферленд, Грег Никотеро	43
5486	Маша и медведь	https://kinokrad.co/255480-masha-i-medved-55-seriya.html	8	2013	Россия	мультфильм, комедия, семейный	Олег Кузовков, Олег Ужинов	7
5487	Затроленный / Супермаркет (3 сезон)	https://kinokrad.co/318478-zatrolennyy-3-sezon-2013.html	5	2013	Великобритания	комедия	Пол Харрисон, Джонатан Гершфилд, Пол Уолкер	26
5488	Викинги (5 сезон)	https://kinokrad.co/323123-vikingi-5-sezon.html	8	2013	Ирландия, Канада	боевик, драма, мелодрама, военный, история	Кен Джиротти, Киаран Доннелли, Джефф Вулнаф	45
5489	Девочки (2 сезон)	https://kinokrad.co/285723-devochki-2-sezon-2013.html	5	2013	США	драма, комедия	Лина Данэм, Джесси Перец, Ричард Шепард	30
5490	Битва экстрасенсов 14 сезон	https://kinokrad.co/255550-bitva-ekstrasensov-14-sezon-smotret-onlayn.html	6	2013	Россия	реальное ТВ	Фёдор Торстенсен, Ольга Шмид	48
5491	Карпов 2 сезон	https://kinokrad.co/8861-karpov-2-sezon-2013-onlayn-serial.html	6	2013	Россия	детектив, криминал	Иван Щёголев	45
5492	София Прекрасная (3 сезон)	https://kinokrad.co/318002-sofiya-prekrasnaya-3-sezon-2015.html	7	2013	США	мультфильм, мюзикл, фэнтези, семейный	Джэми Митчелл, Ларри Лэйчлитер, Мирчи Мантта	30
5493	София Прекрасная (1 сезон)	https://kinokrad.co/317994-sofiya-prekrasnaya-1-sezon-2013.html	7	2013	США	мультфильм, мюзикл, фэнтези, семейный	Джэми Митчелл, Ларри Лэйчлитер, Мирчи Мантта	30
5494	Вторжение титанов (1 сезон)	https://kinokrad.co/317370-vtorzhenie-titanov-1-sezon-2014.html	8	2013	Япония	аниме, мультфильм, драма, фэнтези, боевик	Хироюки Танака, Синпэй Эдзаки, Киёси Фукумото	25
5495	Убийство (3 сезон)	https://kinokrad.co/301229-ubiystvo-3-sezon-2013.html	8	2013	США, Канада	триллер, драма, криминал, детектив	Эдвард Бьянчи, Николь Кэссел, Фил Абрахам	43
5496	Лицемеры (1 сезон)	https://kinokrad.co/318286-licemery-1-sezon-2013.html	6	2013	Аргентина	драма	Дэниэл Бароне, Хорхе Бечара, Лукас Хиль	50
5497	Перевозчик (1 сезон)	https://kinokrad.co/298084-perevozchik-1-sezon-2013.html	7	2013	Канада, Франция, США, Германия	боевик, криминал	Брэд Тернер, Эрик Валетт, Энди Микита	43
5498	Изабелла (2 сезон)	https://kinokrad.co/298846-izabella-2-sezon-2013.html	8	2013	Испания	история	Хорди Фрадес, Ориоль Феррер, Сальвадор Гарсия Руис	60
5499	Голдберги (1 сезон)	https://kinokrad.co/318218-goldbergi-1-sezon-2013.html	8	2013	США	комедия	Дэвид Катценберг, Джей Чандрашекхар, Виктор Нелли мл	22
5500	Халк и агенты СМЭШ (1 сезон)	https://kinokrad.co/318962-halk-i-agenty-smjesh-1-sezon-2013.html	6	2013	США	мультфильм, фантастика, боевик, комедия, приключения	Дэн Фосетт, Патрик Арчибальд, Рой Аллен Смит	22
5501	Метод Лавровой 2 (2 сезон)	https://kinokrad.co/306914-metod-lavrovoy-2-2-sezon.html	6	2013	Россия	драма, мелодрама, детектив	Валерия Ивановская	48
5502	Скотт и Бейли (3 сезон)	https://kinokrad.co/306815-skott-i-beyli-3-sezon.html	7	2013	Великобритания	драма, детектив, криминал	Мораг Фуллартон, Чина Му-Ен, Пол Уолкер	43
5503	Борджиа (3 сезон)	https://kinokrad.co/302453-bordzhia-3-sezon-2013.html	8	2013	Венгрия, Ирландия, Канада	драма, криминал, история	Нил Джордан, Кари Скогланд, Джон Мэйбери	55
5504	Закусочная Боба (4 сезон)	https://kinokrad.co/309942-zakusochnaya-boba-4-sezon-2013.html	5	2013	США	мультфильм, комедия	Бернард Дерриман, Дженнифер Койл, Тайри Диллихей	22
5505	Бездельницы (1 сезон)	https://kinokrad.co/309593-bezdelnicy-1-sezon-2013.html	6	2013	Великобритания	комедия	Аль Кэмпбелл, Саймон Делани, Том Маршалл	23
5506	Штисель (1 сезон)	https://kinokrad.co/308843-shtisel-1-sezon-2013.html	7	2013	Израиль	драма	Алон Зингман	45
5507	Безмолвный свидетель (16 сезон)	https://kinokrad.co/299937-bezmolvnyy-svidetel-16-sezon-2013.html	7	2013	Великобритания	драма, криминал, детектив	Тадеус О’Салливан, Дэвид Ричардс, Ричард Сайни	43
5508	Шерлок (3 сезон)	https://kinokrad.co/301562-sherlok-3-sezon-2013.html	9	2013	Великобритания, США	триллер, драма, криминал, детектив	Пол МакГиган, Ник Харран, Коки Гидройч	90
5509	Парк Авеню, 666 (1 сезон)	https://kinokrad.co/302045-park-avenyu-666-1-sezon-2013.html	8	2013	США	фантастика, фэнтези, триллер, драма, детектив, мистика	Роберт Данкан МакНил, Джон Беринг, Стивен Крегг	43
5510	Отчаянные меры (1 сезон)	https://kinokrad.co/301052-otchayannye-mery-1-sezon-2013.html	8	2013	США	фантастика, боевик, триллер, драма, детектив	Майкл Оффер, Мартин Кэмпбелл, Стивен ДеПол	43
5511	Реальные пацаны (5 сезон)	https://kinokrad.co/307850-realnye-pacany-5-sezon-2013.html	7	2013	Россия	комедия	Жанна Кадникова	24
5512	Ниндзяго: Мастера Кружитцу (3 сезон)	https://kinokrad.co/318346-nindzyago-mastera-kruzhitcu-3-sezon-2013.html	6	2013	Дания, Сингапур, Канада, США	мультфильм, фантастика, фэнтези, боевик, комедия, приключения, семейный	Петер Хауснер, Майкл Хельмут Хансен, Трюлле Вильструп	30
5513	Черное зеркало (2 сезон)	https://kinokrad.co/319738-chernoe-zerkalo-2-sezon-2013.html	8	2013	Великобритания	фантастика, триллер, драма	Оуэн Харрис, Карл Тиббеттс, Отто Баферст	43
5514	Черное зеркало (1 сезон)	https://kinokrad.co/319734-chernoe-zerkalo-1-sezon-2013.html	7	2013	Великобритания	фантастика, триллер, драма	Оуэн Харрис, Карл Тиббеттс, Отто Баферст	43
5515	Их перепутали в роддоме (2 сезон)	https://kinokrad.co/303164-ih-pereputali-v-roddome-2-sezon-2013.html	8	2013	США	драма, мелодрама, семейный	Стив Майнер, Рон Лагомарсино, Мелани Мейрон	43
5516	В надежде на спасение (2 сезон)	https://kinokrad.co/302999-v-nadezhde-na-spasenie-2-sezon-2013.html	8	2013	Канада	фэнтези, драма, мистика	Дэвид Уэллингтон, Грегори Смит, Стив ДиМарко	44
5517	Кладоискатели Америки (1 сезон)	https://kinokrad.co/309581-kladoiskateli-ameriki-1-sezon-2013.html	7	2013	США	документальный	Джонатан Хауг	20
5518	Дикте Свендсен (1 сезон)	https://kinokrad.co/309509-dikte-svendsen-1-sezon-2013.html	7	2013	Дания	драма, криминал, семейный	Каспер Барфоэд, Шарлота Сакс Боструп, Йеспер В. Нильсен	60
5519	Фостеры (1 сезон)	https://kinokrad.co/298288-fostery-1-sezon-2013.html	7	2013	США	драма	Элоди Кин, Норман Бакли, Марта Митчелл	45
5520	Чистильщик (2 сезон)	https://kinokrad.co/320442-chistilschik-2-sezon-2013.html	7	2013	Германия	комедия	Арни Фельдхузен	26
5521	Мастера секса (4 сезон)	https://kinokrad.co/306665-mastera-seksa-4-sezon.html	9	2013	США	драма, мелодрама	Майкл Аптед, Адам Аркин, Джереми Уэбб	43
5522	Третий глаз (1 сезон)	https://kinokrad.co/319702-tretiy-glaz-1-sezon-2013.html	7	2013	Норвегия	драма, криминал	Gunnar Vikene, Тригве Аллистер Дайсен, Гер Хеннинг Хопланд	44
5523	В поле зрения (2 сезон)	https://kinokrad.co/294793-v-pole-zreniya-2-sezon-2013.html	8	2013	США	фантастика, боевик, триллер, драма, детектив	Крис Фишер, Ричард Дж. Льюис, Фред Туа	44
5524	В поле зрения (1 сезон)	https://kinokrad.co/294790-v-pole-zreniya-1-sezon-2013.html	8	2013	США	фантастика, боевик, триллер, драма, детектив	Крис Фишер, Ричард Дж. Льюис, Фред Туа	44
5525	Дело Дойлов (5 сезон)	https://kinokrad.co/271675-delo-doylov-5-sezon.html	7	2013	Канада	драма, комедия, криминал	Стефан Скайни, Джон Ватчер, Кит Сэмплз	43
5968	Восьмидесятые 3 сезон (1-20 серия)	https://kinokrad.co/13697-vosmidesyatye-3-sezon.html	9	2013	Россия	комедия	Федор Стуков	25
5526	Комплексная сделка / Пакетное соглашение (1 сезон)	https://kinokrad.co/318246-paketnoe-soglashenie-1-sezon-2013.html	6	2013	Канада	комедия	Джонатан А. Розенбаум, Кит Сэмплз, Адам Вайсман	
5527	Расследования Мердока (7 сезон)	https://kinokrad.co/293086-rassledovaniya-merdoka-7-sezon-2013.html	8	2013	Канада, Великобритания	драма, криминал, детектив	Лори Линд, Кэл Кунс, Харви Кросслэнд	43
5528	Расследования Мердока (6 сезон)	https://kinokrad.co/293083-rassledovaniya-merdoka-6-sezon-2013.html	8	2013	Канада, Великобритания	драма, криминал, детектив	Лори Линд, Кэл Кунс, Харви Кросслэнд	43
5529	Папочка (2 сезон)	https://kinokrad.co/316662-papochka-2-sezon-2013.html	7	2013	США	драма, мелодрама, комедия, семейный	Майкл Лембек, Арлин Санфорд, Робби Кантримэн	22
5530	Сила сердца (1 сезон)	https://kinokrad.co/293716-sila-serdca-1-sezon-2013.html	3	2013	Россия	мелодрама	Игорь Штернберг	43
5531	Туннель (1 сезон)	https://kinokrad.co/293602-tunnel-1-sezon-2013.html	7	2013	Великобритания, Франция	триллер, драма, криминал, детектив	Томас Винсент, Хетти Макдональд, Доминик Молль	60
5532	Город мечты (2 сезон)	https://kinokrad.co/302822-gorod-mechty-2-sezon-2013.html	8	2013	США	драма, криминал, детектив	Эдвард Бьянчи, Саймон Селлан Джоунс, Дэвид Петрарка	50
5533	Город гангстеров (1 сезон)	https://kinokrad.co/302804-gorod-gangsterov-1-sezon-2013.html	7	2013	США	триллер, драма, криминал, детектив	Фрэнк Дарабонт, Гай Ферленд	60
5534	Черепашки-ниндзя (2 сезон)	https://kinokrad.co/291631-cherepashki-nindzya-2-sezon-2013.html	8	2013	США	мультфильм, фантастика, боевик, драма, комедия, приключения, семейный	Сиро Ниели, Майкл Чанг, Алан Ван	22
5535	Рыцари Marvel: Нелюди	https://kinokrad.co/282066-rycari-marvel-nelyudi.html	5	2013	США	мультфильм, фантастика, боевик	Карл Апсделл, Мауро Казалезе	132
5536	Крах (1 сезон)	https://kinokrad.co/307430-krah-1-sezon-2013.html	8	2013	Великобритания	триллер, драма, криминал	Аллан Кабитт, Якоб Вербрюгген	58
5537	Орлиное сердце (3 сезон)	https://kinokrad.co/300813-orlinoe-serdce-3-sezon-2013.html	6	2013	США	боевик, комедия	Джейсон Уолинер, Эрик Аппель, Джей Карас	11
5538	Вера (3 сезон)	https://kinokrad.co/287356-vera-3-sezon-2013.html	8	2013	Великобритания	драма, криминал, детектив	Уильям Синклер, Питер Хор, Пол Уиттингтон	95
5539	Ошибки прошлого (1 сезон)	https://kinokrad.co/287267-oshibki-proshlogo-1-sezon-2013.html	7	2013	США	драма	Стивен Джилленхол, Билл Джирхарт, Николь Кэссел	46
5540	Лига (5 сезон)	https://kinokrad.co/304295-liga-5-sezon-2013.html	5	2013	США	комедия, спорт	Джефф Шеффер, Джеки Маркус	22
5541	Сестра Джеки (5 сезон)	https://kinokrad.co/285941-sestra-dzheki-5-sezon-2013.html	7	2013	США	драма, комедия	Пол Фиг, Джесси Перец, Брендан Уолш	22
5542	Дорогой доктор (5 сезон)	https://kinokrad.co/285873-dorogoy-doktor-5-sezon-2013.html	6	2013	США	драма, комедия	Мэттью Пенн, Эмиль Левисетти, Майкл Ройч	43
5543	Правосудие (4 сезон)	https://kinokrad.co/285115-pravosudie-4-sezon-2013.html	8	2013	США	боевик, триллер, драма, криминал	Адам Аркин, Джон Эвнет, Питер Уэрнер	43
5544	Тайны острова Мако (1 сезон)	https://kinokrad.co/285081-tayny-ostrova-mako-1-sezon-2013.html	9	2013	Австралия	фэнтези, комедия, приключения	Ивэн Кларри, Грант Браун, Tom Hooper	22
5545	Альфа-дом (1 сезон)	https://kinokrad.co/284619-alfa-dom-1-sezon-2013.html	6	2013	США	драма, комедия	Майкл Майер, Эндрю МакКарти, Боб Бэлабан	25
5546	Синдикат (2 сезон)	https://kinokrad.co/284935-sindikat-2-sezon-2013.html	4	2013	Великобритания	драма	Кэй Меллор, Доминик Леклерк, Сидни Макартни	60
5547	Два с половиной человека (11 сезон)	https://kinokrad.co/284885-dva-s-polovinoy-cheloveka-11-sezon-2013.html	8	2013	США	комедия	Джеймс Уиддоуз, Гари Хэлворсон, Памела Фрайман	22
5548	Лесник. Продолжение (2 сезон)	https://kinokrad.co/284863-lesnik-prodolzhenie-2-sezon-2013.html	8	2013	Россия	детектив	Владимир Виноградов, Максим Кубринский, Михаил Вассербаум	45
5549	Наруто: Ураганные хроники (15 сезон)	https://kinokrad.co/283174-naruto-uragannye-hroniki-15-sezon-2013.html	7	2013	Япония	аниме, мультфильм, фантастика, боевик, триллер, приключения	Хаято Датэ, Юки Эри	24
5550	День расплаты (1 сезон)	https://kinokrad.co/291685-den-rasplaty-1-sezon-2013.html	7	2013	США	боевик	Дэмиен Лихтенштайн	
5551	Из рода волков / Волчья кровь (2 сезон)	https://kinokrad.co/292141-iz-roda-volkov-volchya-krov-2-sezon-2013.html	8	2013	Великобритания	фэнтези, семейный	Jermain Julien, Мэттью Эванс, Эндрю Ганн	22
5552	Лонгмайр (2 сезон)	https://kinokrad.co/291331-longmayr-2-sezon-2013.html	7	2013	США	боевик, драма, криминал, вестерн	Кристофер Чулак, Джеймс М. Муро, Майкл Оффер	43
5553	Клуб Винкс (6 сезон)	https://kinokrad.co/255478-klub-vinks-6-sezon-22-seriya.html	8	2013	Италия	мультфильм, приключения, семейный	Иджинио Страффи	22
5554	Проект Минди (2 сезон)	https://kinokrad.co/288268-proekt-mindi-2-sezon-2013.html	7	2013	США	комедия	Майкл Алан Спиллер, Майкл Уивер, Дэвид Роджерс	22
5555	Плебеи (1 сезон)	https://kinokrad.co/292753-plebei-1-sezon-2013.html	8	2013	Великобритания	комедия	Сэм Лейфер	22
5556	Американская семейка (5 сезон)	https://kinokrad.co/285753-amerikanskaya-semeyka-5-sezon-2013.html	6	2013	США	комедия	Гейл Манкусо, Майкл Алан Спиллер, Джейсон Уайнер	22
5557	Рик и Морти (1 сезон)	https://kinokrad.co/282099-rik-i-morti-1-sezon-2013.html	9	2013	США	мультфильм, комедия, фантастика	Пит Мишелс, Джон Райс, Стивен Сандовал	22
5558	Американцы (1 сезон)	https://kinokrad.co/285335-amerikancy-1-sezon-2013.html	8	2013	США	триллер, драма, криминал, детектив	Дэниэл Сакхайм, Томас Шламми, Кевин Даулинг	43
5559	Наруто: Ураганные хроники (14 сезон)	https://kinokrad.co/285307-naruto-uragannye-hroniki-14-sezon-2013.html	7	2013	Япония	аниме, мультфильм, фантастика, боевик, триллер, приключения	Хаято Датэ, Юки Эри	24
5560	В Филадельфии всегда солнечно (9 сезон)	https://kinokrad.co/284857-v-filadelfii-vsegda-solnechno-9-sezon-2013.html	8	2013	США	комедия	Мэтт Шекман, Фред Сэвэдж, Дэниэл Эттиэс	22
5561	Бесконечный мир (1 сезон)	https://kinokrad.co/284405-beskonechnyy-mir-1-sezon-2013.html	7	2013	Канада, Германия, Великобритания	триллер, драма, мелодрама, история	Майкл Кейтон-Джонс	45
5562	Блудливая Калифорния (6 сезон)	https://kinokrad.co/281815-bludlivaya-kaliforniya-6-sezon-2013.html	9	2013	США	драма, комедия	Дэвид Фон Энкен, Адам Бернштейн, Джон Дал	28
5563	Бестия (1 сезон)	https://kinokrad.co/291367-bestiya-1-sezon-2013.html	5	2013	США, Канада	боевик, триллер, драма, криминал	Лариса Кондрацки, Клемент Вирго, Ник Хэмм	50
5564	Ментовские войны 7 сезон (1-24 серия)	https://kinokrad.co/255914-mentovskie-voyny-7-sezons-18-04.html	8	2013	Россия	боевик, криминал, детектив	Сергей Раевский	46
5565	Кухня 2 сезон (1-20 серия)	https://kinokrad.co/281415-kuhnya-2-sezon-18-04.html	8	2013	Россия	комедия	Дмитрий Дьяченко, Жора Крыжовников, Антон Федотов	25
5566	Тайны следствия 13 сезон (1-20 серия)	https://kinokrad.co/255734-tayny-sledstviya-13-sezon-18-04.html	7	2013	Россия	криминал, детектив	Александр Бурцев, Илья Макаров	45
5567	Брак по завещанию (3 сезон)	https://kinokrad.co/256161-brak-po-zaveschaniyu.html	8	2013	Россия	мелодрама, приключения	Николай Борц	45
5568	Страна чудес	https://kinokrad.co/279860-strana-chudes-3-seriya.html	6	2013	Австралия	драма, комедия	Даррен Эштон, Джовита О’Шонесси, Дженнифер Лиси	44
5569	Зои Харт из южного штата (3 сезон)	https://kinokrad.co/283497-zoi-hart-iz-yuzhnogo-shtata-3-sezon-2013.html	8	2013	США	драма, мелодрама, комедия	Дэвид Пэймер, Тим Мэтисон, Джеймс Хейман	43
5570	Морская полиция: Лос-Анджелес (5 сезон)	https://kinokrad.co/291208-morskaya-policiya-los-andzheles-5-sezon-2013.html	8	2013	США	триллер, драма, криминал, детектив	Тони Уормби, Терренс О’Хара, Дэннис Смит	43
5571	Место, что домом зовётся (1 сезон)	https://kinokrad.co/290125-mesto-chto-domom-zovjotsya-1-sezon-2013.html	8	2013	Австралия	драма	Линн-Мэри Дэнзе, Марк Джофф, Йен Бэрри	60
5572	Шетланд (1 сезон)	https://kinokrad.co/288253-shetland-1-sezon-2013.html	6	2013	Великобритания	драма, криминал, детектив	Jan Matthys, Тадеус О’Салливан, Питер Хор	60
5573	Викинги (1 сезон)	https://kinokrad.co/287015-vikingi-1-sezon-2013.html	8	2013	Ирландия, Канада	боевик, драма, военный, история	Кен Джиротти, Киаран Доннелли, Джефф Вулнаф	45
5574	Мамаша (2 сезон)	https://kinokrad.co/279864-mamasha-2-sezon-10-seriya.html	7	2013	США	комедия	Джефф Гринштейн, Джеймс Уиддоуз, Тед Уасс	22
5575	Молодой Морс (1 сезон)	https://kinokrad.co/286463-molodoy-mors-1-sezon-2013.html	8	2013	Великобритания	драма, криминал, детектив	Колм МакКарти, Эдвард Базалгетт, Том Вон	90
5576	Война Фойла (7 сезон)	https://kinokrad.co/286153-voyna-foyla-7-sezon-2013.html	7	2013	Великобритания	драма, криминал, детектив, военный	Джереми Силберстон, Стюарт Орм, Гэвин Миллар	90
5577	Коварные горничные (1 сезон)	https://kinokrad.co/282225-kovarnye-gornichnye-1-sezon-2013.html	7	2013	США	драма, комедия, детектив	Тара Николь Вейр, Дэвид Уоррен, Тауния Маккирнан	43
5578	Леди-детектив мисс Фрайни Фишер (2 сезон)	https://kinokrad.co/282221-ledi-detektiv-miss-frayni-fisher-2-sezon-2013.html	7	2013	Австралия	драма, криминал, детектив	Тони Тилс, Питер Андрикидис, Даина Рейд	43
5579	Однокурсники (4 сезон)	https://kinokrad.co/285467-odnokursniki-4-sezon-2013.html	8	2013	США	комедия	Тристрам Шапиро, Джо Руссо, Энтони Руссо	22
5580	Оранжевый — хит сезона (1 сезон)	https://kinokrad.co/285401-oranzhevyy-hit-sezona-1-sezon-2013.html	8	2013	США	драма, комедия, криминал	Эндрю МакКарти, Майкл Трим, Константин Макрис	51
5581	Человек со звезды (1 сезон)	https://kinokrad.co/284887-chelovek-so-zvezdy-1-sezon-2013.html	8	2013	Корея Южная	комедия, мелодрама, фантастика	Чан Тхэ-ю	58
5582	Зажигай! (1 сезон)	https://kinokrad.co/283434-zazhigay-1-sezon-2014.html	8	2013	США	драма, мелодрама	Дэйзи фон Шерлер Майер, Тамра Дэвис, Милисент Шелтон	60
5583	Доктор Блейк (1 сезон)	https://kinokrad.co/289855-doktor-bleyk-1-sezon-2013.html	9	2013	Австралия	детектив	Деклан Имис, Йен Бэрри, Эндрю Проуз	57
5642	Дорогой доктор (5 сезон)	https://kinokrad.co/285873-dorogoy-doktor-5-sezon-2013.html	6	2013	США	драма, комедия	Мэттью Пенн, Эмиль Левисетти, Майкл Ройч	43
5584	Кунг-фу Панда: Удивительные легенды (3 сезон)	https://kinokrad.co/15056-kung-fu-panda-udivitelnye-legendy-3-sezon.html	9	2013	США	мультфильм, боевик, комедия, приключения, семейный	Майк Маллен, Хуан Хосе Меса-Леон	22
5585	Быть Мэри Джейн (1 сезон)	https://kinokrad.co/286793-byt-mjeri-dzheyn-1-sezon-2013.html	7	2013	США	драма, мелодрама	Салим Акил, Реджина Кинг, Нима Барнетт	60
5586	Императрица Ки (1 сезон)	https://kinokrad.co/286747-imperatrica-ki-1-sezon-2013.html	8	2013	Корея Южная	драма, мелодрама, история	Хан Хи, Ли Сон Чжун	60
5587	Мотив (1 сезон)	https://kinokrad.co/282403-motiv-1-sezon-2013.html	8	2013	Канада	триллер, драма, криминал, детектив	Стурла Гуннарссон, Дэвид Фрэйзи, Энди Микита	42
5588	Молокососы (7 сезон)	https://kinokrad.co/282683-molokososy-7-sezon-2013.html	7	2013	Великобритания	драма	Чарльз Мартин, Саймон Мэсси, Джек Клоф	45
5589	Вице-президент (2 сезон)	https://kinokrad.co/286059-vice-prezident-2-sezon-2013.html	8	2013	США	комедия	Армандо Ианнуччи, Крис Эддисон, Бекки Мартин	30
5590	Грешники / Порочные (1 сезон)	https://kinokrad.co/273051-greshniki-porochnye-1-sezon-2013.html	7	2013	Великобритания	комедия	Эд Бай	23
5591	Как я встретил вашу маму (9 сезон)	https://kinokrad.co/282157-kak-ya-vstretil-vashu-mamu-9-sezon-2013.html	8	2013	США	комедия, мелодрама, драма	Памела Фрайман, Роб Гринберг, Майкл Дж. Ши	22
5592	Ответный удар (4 сезон)	https://kinokrad.co/284959-otvetnyy-udar-4-sezon-2013.html	8	2013	Великобритания	боевик, триллер, драма	Дэниэл Персивал, Майкл Дж. Бассетт, Пол Вильшурст	46
5593	Бруклин 9-9 (2 сезон)	https://kinokrad.co/272822-bruklin-9-9-2-sezon-19-seriya.html	8	2013	США	комедия, криминал	Крейг Зиск, Джули Энн Робинсон, Джейсон Энслер	23
5594	Речные монстры (5 сезон)	https://kinokrad.co/282034-rechnye-monstry-5-sezon-2013.html	8	2013	США	документальный	Барни Ревилл, Доминик Уэстон, Шарлотта Джонс	45
5595	Лютер (3 сезон)	https://kinokrad.co/286027-lyuter-3-sezon-2013.html	8	2013	Великобритания	драма, криминал, детектив	Сэм Миллер, Брайан Кирк, Стефан Шварц	60
5596	Не те парни (1 сезон)	https://kinokrad.co/271731-ne-te-parni-1-sezon.html	7	2013	Великобритания	триллер, комедия	Джим Филд Смит	29
5597	Особо тяжкие преступления (2 сезон)	https://kinokrad.co/284691-osobo-tyazhkie-prestupleniya-2-sezon-2013.html	7	2013	США	драма, криминал, детектив	Дэвид МакУиртер, Стив Робин, Майкл М. Робин	43
5598	Мистер Ди (2 сезон)	https://kinokrad.co/271727-mister-di-2-sezon.html	6	2013	Канада	комедия	Стив Райт, Кит Сэмплз, Джейкоб Тирни	30
5599	Бывшие (3 сезон)	https://kinokrad.co/282977-byvshie-3-sezon-2013.html	5	2013	США	комедия	Энди Кэдифф, Джеффри Мэлман, Терри Хьюз	22
5600	Мелисса и Джоуи (3 сезон)	https://kinokrad.co/284625-melissa-i-dzhoui-3-sezon-2013.html	7	2013	США	комедия	Роб Шиллер, Джеффри Мэлман, Дэвид Трейнер	22
5601	Метод Лавровой 2 (2 сезон)	https://kinokrad.co/306914-metod-lavrovoy-2-2-sezon.html	6	2013	Россия	драма, мелодрама, детектив	Валерия Ивановская	48
5602	Скотт и Бейли (3 сезон)	https://kinokrad.co/306815-skott-i-beyli-3-sezon.html	7	2013	Великобритания	драма, детектив, криминал	Мораг Фуллартон, Чина Му-Ен, Пол Уолкер	43
5603	Борджиа (3 сезон)	https://kinokrad.co/302453-bordzhia-3-sezon-2013.html	8	2013	Венгрия, Ирландия, Канада	драма, криминал, история	Нил Джордан, Кари Скогланд, Джон Мэйбери	55
5604	Закусочная Боба (4 сезон)	https://kinokrad.co/309942-zakusochnaya-boba-4-sezon-2013.html	5	2013	США	мультфильм, комедия	Бернард Дерриман, Дженнифер Койл, Тайри Диллихей	22
5605	Бездельницы (1 сезон)	https://kinokrad.co/309593-bezdelnicy-1-sezon-2013.html	6	2013	Великобритания	комедия	Аль Кэмпбелл, Саймон Делани, Том Маршалл	23
5606	Штисель (1 сезон)	https://kinokrad.co/308843-shtisel-1-sezon-2013.html	7	2013	Израиль	драма	Алон Зингман	45
5607	Безмолвный свидетель (16 сезон)	https://kinokrad.co/299937-bezmolvnyy-svidetel-16-sezon-2013.html	7	2013	Великобритания	драма, криминал, детектив	Тадеус О’Салливан, Дэвид Ричардс, Ричард Сайни	43
5608	Шерлок (3 сезон)	https://kinokrad.co/301562-sherlok-3-sezon-2013.html	9	2013	Великобритания, США	триллер, драма, криминал, детектив	Пол МакГиган, Ник Харран, Коки Гидройч	90
5609	Парк Авеню, 666 (1 сезон)	https://kinokrad.co/302045-park-avenyu-666-1-sezon-2013.html	8	2013	США	фантастика, фэнтези, триллер, драма, детектив, мистика	Роберт Данкан МакНил, Джон Беринг, Стивен Крегг	43
5610	Отчаянные меры (1 сезон)	https://kinokrad.co/301052-otchayannye-mery-1-sezon-2013.html	8	2013	США	фантастика, боевик, триллер, драма, детектив	Майкл Оффер, Мартин Кэмпбелл, Стивен ДеПол	43
5611	Реальные пацаны (5 сезон)	https://kinokrad.co/307850-realnye-pacany-5-sezon-2013.html	7	2013	Россия	комедия	Жанна Кадникова	24
5612	Ниндзяго: Мастера Кружитцу (3 сезон)	https://kinokrad.co/318346-nindzyago-mastera-kruzhitcu-3-sezon-2013.html	6	2013	Дания, Сингапур, Канада, США	мультфильм, фантастика, фэнтези, боевик, комедия, приключения, семейный	Петер Хауснер, Майкл Хельмут Хансен, Трюлле Вильструп	30
5613	Черное зеркало (2 сезон)	https://kinokrad.co/319738-chernoe-zerkalo-2-sezon-2013.html	8	2013	Великобритания	фантастика, триллер, драма	Оуэн Харрис, Карл Тиббеттс, Отто Баферст	43
5614	Черное зеркало (1 сезон)	https://kinokrad.co/319734-chernoe-zerkalo-1-sezon-2013.html	7	2013	Великобритания	фантастика, триллер, драма	Оуэн Харрис, Карл Тиббеттс, Отто Баферст	43
5615	Их перепутали в роддоме (2 сезон)	https://kinokrad.co/303164-ih-pereputali-v-roddome-2-sezon-2013.html	8	2013	США	драма, мелодрама, семейный	Стив Майнер, Рон Лагомарсино, Мелани Мейрон	43
5616	В надежде на спасение (2 сезон)	https://kinokrad.co/302999-v-nadezhde-na-spasenie-2-sezon-2013.html	8	2013	Канада	фэнтези, драма, мистика	Дэвид Уэллингтон, Грегори Смит, Стив ДиМарко	44
5617	Кладоискатели Америки (1 сезон)	https://kinokrad.co/309581-kladoiskateli-ameriki-1-sezon-2013.html	7	2013	США	документальный	Джонатан Хауг	20
5618	Дикте Свендсен (1 сезон)	https://kinokrad.co/309509-dikte-svendsen-1-sezon-2013.html	7	2013	Дания	драма, криминал, семейный	Каспер Барфоэд, Шарлота Сакс Боструп, Йеспер В. Нильсен	60
5619	Фостеры (1 сезон)	https://kinokrad.co/298288-fostery-1-sezon-2013.html	7	2013	США	драма	Элоди Кин, Норман Бакли, Марта Митчелл	45
5620	Чистильщик (2 сезон)	https://kinokrad.co/320442-chistilschik-2-sezon-2013.html	7	2013	Германия	комедия	Арни Фельдхузен	26
5621	Мастера секса (4 сезон)	https://kinokrad.co/306665-mastera-seksa-4-sezon.html	9	2013	США	драма, мелодрама	Майкл Аптед, Адам Аркин, Джереми Уэбб	43
5622	Третий глаз (1 сезон)	https://kinokrad.co/319702-tretiy-glaz-1-sezon-2013.html	7	2013	Норвегия	драма, криминал	Gunnar Vikene, Тригве Аллистер Дайсен, Гер Хеннинг Хопланд	44
5623	В поле зрения (2 сезон)	https://kinokrad.co/294793-v-pole-zreniya-2-sezon-2013.html	8	2013	США	фантастика, боевик, триллер, драма, детектив	Крис Фишер, Ричард Дж. Льюис, Фред Туа	44
5624	В поле зрения (1 сезон)	https://kinokrad.co/294790-v-pole-zreniya-1-sezon-2013.html	8	2013	США	фантастика, боевик, триллер, драма, детектив	Крис Фишер, Ричард Дж. Льюис, Фред Туа	44
5625	Дело Дойлов (5 сезон)	https://kinokrad.co/271675-delo-doylov-5-sezon.html	7	2013	Канада	драма, комедия, криминал	Стефан Скайни, Джон Ватчер, Кит Сэмплз	43
5626	Комплексная сделка / Пакетное соглашение (1 сезон)	https://kinokrad.co/318246-paketnoe-soglashenie-1-sezon-2013.html	6	2013	Канада	комедия	Джонатан А. Розенбаум, Кит Сэмплз, Адам Вайсман	
5627	Расследования Мердока (7 сезон)	https://kinokrad.co/293086-rassledovaniya-merdoka-7-sezon-2013.html	8	2013	Канада, Великобритания	драма, криминал, детектив	Лори Линд, Кэл Кунс, Харви Кросслэнд	43
5628	Расследования Мердока (6 сезон)	https://kinokrad.co/293083-rassledovaniya-merdoka-6-sezon-2013.html	8	2013	Канада, Великобритания	драма, криминал, детектив	Лори Линд, Кэл Кунс, Харви Кросслэнд	43
5629	Папочка (2 сезон)	https://kinokrad.co/316662-papochka-2-sezon-2013.html	7	2013	США	драма, мелодрама, комедия, семейный	Майкл Лембек, Арлин Санфорд, Робби Кантримэн	22
5630	Сила сердца (1 сезон)	https://kinokrad.co/293716-sila-serdca-1-sezon-2013.html	3	2013	Россия	мелодрама	Игорь Штернберг	43
5631	Туннель (1 сезон)	https://kinokrad.co/293602-tunnel-1-sezon-2013.html	7	2013	Великобритания, Франция	триллер, драма, криминал, детектив	Томас Винсент, Хетти Макдональд, Доминик Молль	60
5632	Город мечты (2 сезон)	https://kinokrad.co/302822-gorod-mechty-2-sezon-2013.html	8	2013	США	драма, криминал, детектив	Эдвард Бьянчи, Саймон Селлан Джоунс, Дэвид Петрарка	50
5633	Город гангстеров (1 сезон)	https://kinokrad.co/302804-gorod-gangsterov-1-sezon-2013.html	7	2013	США	триллер, драма, криминал, детектив	Фрэнк Дарабонт, Гай Ферленд	60
5634	Черепашки-ниндзя (2 сезон)	https://kinokrad.co/291631-cherepashki-nindzya-2-sezon-2013.html	8	2013	США	мультфильм, фантастика, боевик, драма, комедия, приключения, семейный	Сиро Ниели, Майкл Чанг, Алан Ван	22
5635	Рыцари Marvel: Нелюди	https://kinokrad.co/282066-rycari-marvel-nelyudi.html	5	2013	США	мультфильм, фантастика, боевик	Карл Апсделл, Мауро Казалезе	132
5636	Крах (1 сезон)	https://kinokrad.co/307430-krah-1-sezon-2013.html	8	2013	Великобритания	триллер, драма, криминал	Аллан Кабитт, Якоб Вербрюгген	58
5637	Орлиное сердце (3 сезон)	https://kinokrad.co/300813-orlinoe-serdce-3-sezon-2013.html	6	2013	США	боевик, комедия	Джейсон Уолинер, Эрик Аппель, Джей Карас	11
5638	Вера (3 сезон)	https://kinokrad.co/287356-vera-3-sezon-2013.html	8	2013	Великобритания	драма, криминал, детектив	Уильям Синклер, Питер Хор, Пол Уиттингтон	95
5639	Ошибки прошлого (1 сезон)	https://kinokrad.co/287267-oshibki-proshlogo-1-sezon-2013.html	7	2013	США	драма	Стивен Джилленхол, Билл Джирхарт, Николь Кэссел	46
5640	Лига (5 сезон)	https://kinokrad.co/304295-liga-5-sezon-2013.html	5	2013	США	комедия, спорт	Джефф Шеффер, Джеки Маркус	22
5641	Сестра Джеки (5 сезон)	https://kinokrad.co/285941-sestra-dzheki-5-sezon-2013.html	7	2013	США	драма, комедия	Пол Фиг, Джесси Перец, Брендан Уолш	22
5643	Правосудие (4 сезон)	https://kinokrad.co/285115-pravosudie-4-sezon-2013.html	8	2013	США	боевик, триллер, драма, криминал	Адам Аркин, Джон Эвнет, Питер Уэрнер	43
5644	Тайны острова Мако (1 сезон)	https://kinokrad.co/285081-tayny-ostrova-mako-1-sezon-2013.html	9	2013	Австралия	фэнтези, комедия, приключения	Ивэн Кларри, Грант Браун, Tom Hooper	22
5645	Альфа-дом (1 сезон)	https://kinokrad.co/284619-alfa-dom-1-sezon-2013.html	6	2013	США	драма, комедия	Майкл Майер, Эндрю МакКарти, Боб Бэлабан	25
5646	Синдикат (2 сезон)	https://kinokrad.co/284935-sindikat-2-sezon-2013.html	4	2013	Великобритания	драма	Кэй Меллор, Доминик Леклерк, Сидни Макартни	60
5647	Два с половиной человека (11 сезон)	https://kinokrad.co/284885-dva-s-polovinoy-cheloveka-11-sezon-2013.html	8	2013	США	комедия	Джеймс Уиддоуз, Гари Хэлворсон, Памела Фрайман	22
5648	Лесник. Продолжение (2 сезон)	https://kinokrad.co/284863-lesnik-prodolzhenie-2-sezon-2013.html	8	2013	Россия	детектив	Владимир Виноградов, Максим Кубринский, Михаил Вассербаум	45
5649	Наруто: Ураганные хроники (15 сезон)	https://kinokrad.co/283174-naruto-uragannye-hroniki-15-sezon-2013.html	7	2013	Япония	аниме, мультфильм, фантастика, боевик, триллер, приключения	Хаято Датэ, Юки Эри	24
5650	День расплаты (1 сезон)	https://kinokrad.co/291685-den-rasplaty-1-sezon-2013.html	7	2013	США	боевик	Дэмиен Лихтенштайн	
5651	Из рода волков / Волчья кровь (2 сезон)	https://kinokrad.co/292141-iz-roda-volkov-volchya-krov-2-sezon-2013.html	8	2013	Великобритания	фэнтези, семейный	Jermain Julien, Мэттью Эванс, Эндрю Ганн	22
5652	Лонгмайр (2 сезон)	https://kinokrad.co/291331-longmayr-2-sezon-2013.html	7	2013	США	боевик, драма, криминал, вестерн	Кристофер Чулак, Джеймс М. Муро, Майкл Оффер	43
5653	Клуб Винкс (6 сезон)	https://kinokrad.co/255478-klub-vinks-6-sezon-22-seriya.html	8	2013	Италия	мультфильм, приключения, семейный	Иджинио Страффи	22
5654	Проект Минди (2 сезон)	https://kinokrad.co/288268-proekt-mindi-2-sezon-2013.html	7	2013	США	комедия	Майкл Алан Спиллер, Майкл Уивер, Дэвид Роджерс	22
5655	Плебеи (1 сезон)	https://kinokrad.co/292753-plebei-1-sezon-2013.html	8	2013	Великобритания	комедия	Сэм Лейфер	22
5656	Американская семейка (5 сезон)	https://kinokrad.co/285753-amerikanskaya-semeyka-5-sezon-2013.html	6	2013	США	комедия	Гейл Манкусо, Майкл Алан Спиллер, Джейсон Уайнер	22
5657	Рик и Морти (1 сезон)	https://kinokrad.co/282099-rik-i-morti-1-sezon-2013.html	9	2013	США	мультфильм, комедия, фантастика	Пит Мишелс, Джон Райс, Стивен Сандовал	22
5658	Американцы (1 сезон)	https://kinokrad.co/285335-amerikancy-1-sezon-2013.html	8	2013	США	триллер, драма, криминал, детектив	Дэниэл Сакхайм, Томас Шламми, Кевин Даулинг	43
5659	Наруто: Ураганные хроники (14 сезон)	https://kinokrad.co/285307-naruto-uragannye-hroniki-14-sezon-2013.html	7	2013	Япония	аниме, мультфильм, фантастика, боевик, триллер, приключения	Хаято Датэ, Юки Эри	24
5660	В Филадельфии всегда солнечно (9 сезон)	https://kinokrad.co/284857-v-filadelfii-vsegda-solnechno-9-sezon-2013.html	8	2013	США	комедия	Мэтт Шекман, Фред Сэвэдж, Дэниэл Эттиэс	22
5661	Бесконечный мир (1 сезон)	https://kinokrad.co/284405-beskonechnyy-mir-1-sezon-2013.html	7	2013	Канада, Германия, Великобритания	триллер, драма, мелодрама, история	Майкл Кейтон-Джонс	45
5662	Блудливая Калифорния (6 сезон)	https://kinokrad.co/281815-bludlivaya-kaliforniya-6-sezon-2013.html	9	2013	США	драма, комедия	Дэвид Фон Энкен, Адам Бернштейн, Джон Дал	28
5663	Бестия (1 сезон)	https://kinokrad.co/291367-bestiya-1-sezon-2013.html	5	2013	США, Канада	боевик, триллер, драма, криминал	Лариса Кондрацки, Клемент Вирго, Ник Хэмм	50
5664	Ментовские войны 7 сезон (1-24 серия)	https://kinokrad.co/255914-mentovskie-voyny-7-sezons-18-04.html	8	2013	Россия	боевик, криминал, детектив	Сергей Раевский	46
5665	Кухня 2 сезон (1-20 серия)	https://kinokrad.co/281415-kuhnya-2-sezon-18-04.html	8	2013	Россия	комедия	Дмитрий Дьяченко, Жора Крыжовников, Антон Федотов	25
5666	Тайны следствия 13 сезон (1-20 серия)	https://kinokrad.co/255734-tayny-sledstviya-13-sezon-18-04.html	7	2013	Россия	криминал, детектив	Александр Бурцев, Илья Макаров	45
5667	Брак по завещанию (3 сезон)	https://kinokrad.co/256161-brak-po-zaveschaniyu.html	8	2013	Россия	мелодрама, приключения	Николай Борц	45
5668	Страна чудес	https://kinokrad.co/279860-strana-chudes-3-seriya.html	6	2013	Австралия	драма, комедия	Даррен Эштон, Джовита О’Шонесси, Дженнифер Лиси	44
5669	Зои Харт из южного штата (3 сезон)	https://kinokrad.co/283497-zoi-hart-iz-yuzhnogo-shtata-3-sezon-2013.html	8	2013	США	драма, мелодрама, комедия	Дэвид Пэймер, Тим Мэтисон, Джеймс Хейман	43
5670	Морская полиция: Лос-Анджелес (5 сезон)	https://kinokrad.co/291208-morskaya-policiya-los-andzheles-5-sezon-2013.html	8	2013	США	триллер, драма, криминал, детектив	Тони Уормби, Терренс О’Хара, Дэннис Смит	43
5671	Место, что домом зовётся (1 сезон)	https://kinokrad.co/290125-mesto-chto-domom-zovjotsya-1-sezon-2013.html	8	2013	Австралия	драма	Линн-Мэри Дэнзе, Марк Джофф, Йен Бэрри	60
5672	Шетланд (1 сезон)	https://kinokrad.co/288253-shetland-1-sezon-2013.html	6	2013	Великобритания	драма, криминал, детектив	Jan Matthys, Тадеус О’Салливан, Питер Хор	60
5673	Викинги (1 сезон)	https://kinokrad.co/287015-vikingi-1-sezon-2013.html	8	2013	Ирландия, Канада	боевик, драма, военный, история	Кен Джиротти, Киаран Доннелли, Джефф Вулнаф	45
5674	Мамаша (2 сезон)	https://kinokrad.co/279864-mamasha-2-sezon-10-seriya.html	7	2013	США	комедия	Джефф Гринштейн, Джеймс Уиддоуз, Тед Уасс	22
5675	Молодой Морс (1 сезон)	https://kinokrad.co/286463-molodoy-mors-1-sezon-2013.html	8	2013	Великобритания	драма, криминал, детектив	Колм МакКарти, Эдвард Базалгетт, Том Вон	90
5676	Война Фойла (7 сезон)	https://kinokrad.co/286153-voyna-foyla-7-sezon-2013.html	7	2013	Великобритания	драма, криминал, детектив, военный	Джереми Силберстон, Стюарт Орм, Гэвин Миллар	90
5677	Коварные горничные (1 сезон)	https://kinokrad.co/282225-kovarnye-gornichnye-1-sezon-2013.html	7	2013	США	драма, комедия, детектив	Тара Николь Вейр, Дэвид Уоррен, Тауния Маккирнан	43
5678	Леди-детектив мисс Фрайни Фишер (2 сезон)	https://kinokrad.co/282221-ledi-detektiv-miss-frayni-fisher-2-sezon-2013.html	7	2013	Австралия	драма, криминал, детектив	Тони Тилс, Питер Андрикидис, Даина Рейд	43
5679	Однокурсники (4 сезон)	https://kinokrad.co/285467-odnokursniki-4-sezon-2013.html	8	2013	США	комедия	Тристрам Шапиро, Джо Руссо, Энтони Руссо	22
5680	Оранжевый — хит сезона (1 сезон)	https://kinokrad.co/285401-oranzhevyy-hit-sezona-1-sezon-2013.html	8	2013	США	драма, комедия, криминал	Эндрю МакКарти, Майкл Трим, Константин Макрис	51
5681	Человек со звезды (1 сезон)	https://kinokrad.co/284887-chelovek-so-zvezdy-1-sezon-2013.html	8	2013	Корея Южная	комедия, мелодрама, фантастика	Чан Тхэ-ю	58
5682	Зажигай! (1 сезон)	https://kinokrad.co/283434-zazhigay-1-sezon-2014.html	8	2013	США	драма, мелодрама	Дэйзи фон Шерлер Майер, Тамра Дэвис, Милисент Шелтон	60
5683	Доктор Блейк (1 сезон)	https://kinokrad.co/289855-doktor-bleyk-1-sezon-2013.html	9	2013	Австралия	детектив	Деклан Имис, Йен Бэрри, Эндрю Проуз	57
5684	Кунг-фу Панда: Удивительные легенды (3 сезон)	https://kinokrad.co/15056-kung-fu-panda-udivitelnye-legendy-3-sezon.html	9	2013	США	мультфильм, боевик, комедия, приключения, семейный	Майк Маллен, Хуан Хосе Меса-Леон	22
5685	Быть Мэри Джейн (1 сезон)	https://kinokrad.co/286793-byt-mjeri-dzheyn-1-sezon-2013.html	7	2013	США	драма, мелодрама	Салим Акил, Реджина Кинг, Нима Барнетт	60
5686	Императрица Ки (1 сезон)	https://kinokrad.co/286747-imperatrica-ki-1-sezon-2013.html	8	2013	Корея Южная	драма, мелодрама, история	Хан Хи, Ли Сон Чжун	60
5687	Мотив (1 сезон)	https://kinokrad.co/282403-motiv-1-sezon-2013.html	8	2013	Канада	триллер, драма, криминал, детектив	Стурла Гуннарссон, Дэвид Фрэйзи, Энди Микита	42
5688	Молокососы (7 сезон)	https://kinokrad.co/282683-molokososy-7-sezon-2013.html	7	2013	Великобритания	драма	Чарльз Мартин, Саймон Мэсси, Джек Клоф	45
5689	Вице-президент (2 сезон)	https://kinokrad.co/286059-vice-prezident-2-sezon-2013.html	8	2013	США	комедия	Армандо Ианнуччи, Крис Эддисон, Бекки Мартин	30
5690	Грешники / Порочные (1 сезон)	https://kinokrad.co/273051-greshniki-porochnye-1-sezon-2013.html	7	2013	Великобритания	комедия	Эд Бай	23
5691	Как я встретил вашу маму (9 сезон)	https://kinokrad.co/282157-kak-ya-vstretil-vashu-mamu-9-sezon-2013.html	8	2013	США	комедия, мелодрама, драма	Памела Фрайман, Роб Гринберг, Майкл Дж. Ши	22
5692	Ответный удар (4 сезон)	https://kinokrad.co/284959-otvetnyy-udar-4-sezon-2013.html	8	2013	Великобритания	боевик, триллер, драма	Дэниэл Персивал, Майкл Дж. Бассетт, Пол Вильшурст	46
5693	Бруклин 9-9 (2 сезон)	https://kinokrad.co/272822-bruklin-9-9-2-sezon-19-seriya.html	8	2013	США	комедия, криминал	Крейг Зиск, Джули Энн Робинсон, Джейсон Энслер	23
5694	Речные монстры (5 сезон)	https://kinokrad.co/282034-rechnye-monstry-5-sezon-2013.html	8	2013	США	документальный	Барни Ревилл, Доминик Уэстон, Шарлотта Джонс	45
5695	Лютер (3 сезон)	https://kinokrad.co/286027-lyuter-3-sezon-2013.html	8	2013	Великобритания	драма, криминал, детектив	Сэм Миллер, Брайан Кирк, Стефан Шварц	60
5696	Не те парни (1 сезон)	https://kinokrad.co/271731-ne-te-parni-1-sezon.html	7	2013	Великобритания	триллер, комедия	Джим Филд Смит	29
5697	Особо тяжкие преступления (2 сезон)	https://kinokrad.co/284691-osobo-tyazhkie-prestupleniya-2-sezon-2013.html	7	2013	США	драма, криминал, детектив	Дэвид МакУиртер, Стив Робин, Майкл М. Робин	43
5698	Мистер Ди (2 сезон)	https://kinokrad.co/271727-mister-di-2-sezon.html	6	2013	Канада	комедия	Стив Райт, Кит Сэмплз, Джейкоб Тирни	30
5699	Бывшие (3 сезон)	https://kinokrad.co/282977-byvshie-3-sezon-2013.html	5	2013	США	комедия	Энди Кэдифф, Джеффри Мэлман, Терри Хьюз	22
5700	Мелисса и Джоуи (3 сезон)	https://kinokrad.co/284625-melissa-i-dzhoui-3-sezon-2013.html	7	2013	США	комедия	Роб Шиллер, Джеффри Мэлман, Дэвид Трейнер	22
5701	Большая школа (1 сезон)	https://kinokrad.co/284621-bolshaya-shkola-1-sezon-2013.html	7	2013	Великобритания	комедия	Тони Дау, Мэтт Липси	30
5702	Мисс Марпл Агаты Кристи (6 сезон)	https://kinokrad.co/282818-miss-marpl-agaty-kristi-6-sezon-2013.html	8	2013	Великобритания	драма, криминал, детектив	Чарльз Палмер, Энди Уилсон, Джон Стриклэнд	94
5703	Стелла (2 сезон)	https://kinokrad.co/281931-stella-2-sezon-2013.html	5	2013	Великобритания	драма, комедия	Эшли Вэй, Тони Дау, Сьюзэн Талли	60
5704	Деревня 1 сезон (1-6 серия)	https://kinokrad.co/281277-derevnya-1-sezon.html	6	2013	Великобритания	драма	Антония Бёрд, Гиллис МакКиннон, Доминик Леклерк	59
5705	Великолепный век 4 cезон (46 серия)	https://kinokrad.co/13508-velikolepnyy-vek-4-sezon-46-seriya.html	8	2013	Турция	драма, мелодрама, военный, биография, история	Дурул Тайлан, Ягмур Тайлан	100
5706	Отель «Адлон»: Семейная сага (1-3 серия)	https://kinokrad.co/280423-otel-adlon-semeynaya-saga.html	8	2013	Германия	драма	Ули Эдель	90
5707	Универ. Саша и Таня (1-41 серия)	https://kinokrad.co/255930-univer.-sasha-i-tanya-1-sezon.html	8	2013	Россия	комедия	Сергей Казачанский, Михаил Старчак	24
5708	Оса (1-99 серия)	https://kinokrad.co/255535-osa.html	7	2013	Россия	детектив	Юрий Харнас, Игорь Твердохлебов	45
5709	Последний из Магикян (1 сезон)	https://kinokrad.co/283762-posledniy-iz-magikyan-1-sezon-2013.html	7	2013	Россия	комедия, семейный	Резо Гигинеишвили, Акаки Сахелашвили	24
5710	Белый воротничок 5 сезон (1-13 серия)	https://kinokrad.co/255803-belyy-vorotnichok-5-sezon-onlayn.html	8	2013	США	детектив, криминал, драма, комедия	Джон Т. Кречмер, Рассел Ли Файн	43
5711	Мунфлит (1-2 серия)	https://kinokrad.co/255732-munflit.html	7	2013	Великобритания	драма	Энди де Эммони	30
5712	Южный Парк 17 сезон (1-10 серия)	https://kinokrad.co/255725-yuzhnyy-park-17-sezon-2013-onlayn-serial.html	8	2013	США	мультфильм, комедия	Трей Паркер, Эрик Сточ	22
5713	Мэрон (1 сезон)	https://kinokrad.co/282335-meron-1-sezon-2013.html	6	2013	США	комедия	Люк Мэзени, Роберт Коэн, Боб Голдтуэйт	22
5714	Фатих (1-5 серия)	https://kinokrad.co/255571-fatih.html	8	2013	Турция	драма, мелодрама, военный, история	Мерве Гиргин	45
5715	Виктория - победительница 4 сезон (1-13 серия)	https://kinokrad.co/255382-viktoriya-pobeditelnica-4-sezon-smotret-onlayn.html	7	2013	США	драма, комедия, семейный	Стив Хофер, Адам Вайсман	22
5716	Студия 17 (1-16 серия)	https://kinokrad.co/255380-studiya-17.html	7	2013	Россия	комедия	Сергей Сенцов, Александр Наумов	25
5717	Милые обманщицы 4 сезон (1-25 серия)	https://kinokrad.co/251764-milye-obmanschicy-4-sezon-onlayn.html	9	2013	США	триллер, драма, детектив	Норман Бакли, Рон Лагомарсино	43
5718	Красавица и чудовище 2 сезон (1-22 серия)	https://kinokrad.co/9070-krasavica-i-chudovische-2-sezon.html	9	2013	США	триллер, драма	Рик Бота, Стивен А. Эделсон	43
5719	Аватар: Легенда о Корре (2 сезон)	https://kinokrad.co/9194-avatar-legenda-o-korre-2-sezon.html	8	2013	США	мультфильм, фэнтези, боевик, приключения, семейный	Хоаким Дос Сантос, Ки Хьюн Рю	22
5720	Континуум 2 сезон (1-13 серия)	https://kinokrad.co/8999-kontinuum-2-sezon.html	8	2013	Канада	фантастика, триллер	Пэт Уильямс, Дэвид Фрэйзи	43
5721	Арчер 4 сезон (1-13 серия)	https://kinokrad.co/280889-archer-4-sezon.html	8	2013	США	мультфильм, боевик, комедия	Адам Рид, Брайан Фордни	22
5722	Демоны Да Винчи (1 сезон)	https://kinokrad.co/282026-demony-da-vinchi-1-sezon-2013.html	8	2013	США	фэнтези, драма, детектив, приключения, история	Питер Хор, Майкл Дж. Бассетт, Дэвид С. Гойер	59
5723	Следы апостолов (1-4 серия)	https://kinokrad.co/5574-sledy-apostolov.html	7	2013	Беларусь	приключения	Сергей Талыбов	52
5724	Сила Веры (1-4 серия)	https://kinokrad.co/5538-sila-very.html	7	2013	Россия	мелодрама	Александр Карпиловский	45
5725	Рейк 1 сезон (1-13 серия)	https://kinokrad.co/5371-reyk-1-sezon.html	9	2013	США	драма, комедия	Сэм Рэйми	55
5726	Пятая стража 2 сезон (1-63 серия)	https://kinokrad.co/5311-pyataya-strazha-2-sezon.html	7	2013	Россия	фантастика, детектив	Василий Пичул	47
5727	Бруклин 9-9 (1 сезон)	https://kinokrad.co/3106-bruklin-9-9-1-sezon.html	9	2013	США	комедия	Фил Лорд, Крис Миллер	45
5728	Княжна из хрущевки (1-4 серия)	https://kinokrad.co/273157-knyazhna-iz-hruschevki.html	8	2013	Россия	комедия, мелодрама	Тимур Кабулов	88
5729	Провинциальная муза (1-4 серия)	https://kinokrad.co/273160-provincialnaya-muza.html	8	2013	Россия	мелодрама	Иван Криворучко	45
5730	Билет на двоих (1-4 серия)	https://kinokrad.co/273250-bilet-na-dvoih.html	7	2013	Украина	мелодрама	Владимир Балкашинов	
5731	Убийство на пляже / Бродчерч 1 сезон (1-8 серия)	https://kinokrad.co/3103-ubiystvo-na-plyazhe-brodcherch-1-sezon.html	9	2013	Великобритания	драма, криминал	Джеймс Стронг, Эрос Лин	46
5732	Библия (1-10 серия)	https://kinokrad.co/3042-bibliya.html	8	2013	США, Великобритания	боевик, драма	Криспин Рис, Кристофер Спенсер	41
5733	Бесценная любовь (1-4 серия)	https://kinokrad.co/3037-bescennaya-lyubov.html	7	2013	Россия	мелодрама	Игорь Ройзман	45
5734	Мотель Бейтсов 1 сезон (1-10 серия)	https://kinokrad.co/281192-motel-beytsov-1-sezon.html	9	2013	США	триллер, детектив, ужасы	Такер Гейтс	43
5736	Последователи 1 сезон (1-15 серия)	https://kinokrad.co/274056-posledovateli-1-sezon.html	9	2013	США	триллер, драма, криминал, детектив	Маркос Сига, Джошуа Батлер, Лиз Фридлендер	43
5737	Правосудие (5 сезон)	https://kinokrad.co/285083-pravosudie-5-sezon-2013.html	8	2013	США	боевик, триллер, драма, криминал	Адам Аркин, Джон Эвнет, Питер Уэрнер	43
5738	Универ. Новая общага 1 сезон (1-100 серия)	https://kinokrad.co/17857-univer-novaya-obschagas.html	9	2013	Россия	комедия	Константин Смирнов, Максим Зыков	23
5739	Риццоли и Айлс 4 сезон (1-16 серия)	https://kinokrad.co/280104-riccoli-i-ayls-4-sezon.html	9	2013	США	драма, криминал, детектив	Марк Абер, Майкл Кэтлман, Стив Робин	43
5740	Обитель лжи 2 сезон (1-12 серия)	https://kinokrad.co/274440-obitel-lzhi-2-sezon.html	6	2013	США	драма, комедия	Стивен Хопкинс, Мэттью Карнахан, Адам Бернштейн	29
5741	Бесстыдники 3 сезон (1-12 серия)	https://kinokrad.co/280090-besstydniki-3-sezon.html	9	2013	США	драма, комедия	Марк Майлод, Мими Ледер, Энтони Хемингуэй	55
5742	Бывает и хуже (4 сезон)	https://kinokrad.co/255724-byvaet-i-huzhe-4-sezon.html	8	2013	США	комедия	Ли Шаллат Чемел, Эллиот Хегарти	22
5743	Новенькая 3 сезон (1-23 серия)	https://kinokrad.co/256151-novenkaya-3-sezon.html	8	2013	США	комедия	Джейк Кэздан, Макс Уинклер	22
5744	Последователи 2 сезон (1-15 серия)	https://kinokrad.co/256138-posledovateli-2-sezon-smotret-onlayn.html	8	2013	США	триллер, драма, криминал, детектив	Маркос Сига, Джошуа Батлер	43
5745	Трансформеры: Прайм (3 сезон)	https://kinokrad.co/283656-transformery-praym-3-sezon-2013.html	8	2013	США	мультфильм, фантастика, боевик, приключения	Дэвид Хартман, Шонт Нигогосян, Винтон Хёк	22
5746	Декстер 8 сезон (1-12 серия)	https://kinokrad.co/255572-dekster-8-sezon.html	10	2013	США	триллер, драма, криминал, детектив	Джон Дал, Стив Шилл	55
5747	Сыны Анархии 6 сезон (1-13 серия)	https://kinokrad.co/255570-syny-anarhii-6-sezon.html	9	2013	США	триллер, драма, криминал	Пэрис Барклай, Гвинет Хердер-Пэйтон	45
5748	Одинокие сердца (1-2 серия)	https://kinokrad.co/255554-odinokie-serdca.html	7	2013	Россия	отечественный, мелодрама	Сергей Комаров	45
5749	Менталист 6 сезон (1-22 серия)	https://kinokrad.co/255565-mentalist-6-sezon.html	9	2013	США	триллер, драма, криминал, детектив	Крис Лонг, Джон Шоуолтер	45
5750	Касл 6 сезон (1-23 серия)	https://kinokrad.co/255564-kasl-6-sezon.html	9	2013	США	драма, комедия, криминал, детектив	Джон Терлески, Роб Боумен	43
5751	Нэшвилл 2 сезон (1-22 серия)	https://kinokrad.co/276900-neshvill-2-sezon-1-22-seriya.html	5	2013	США	драма, музыка, слова	Пол МакКрейн, Р.Дж. Катлер, Стивен Крегг	43
5752	Лилехаммер 2 сезон (1-8 серия)	https://kinokrad.co/255562-lilehammer-2-sezon.html	8	2013	США, Норвегия	драма, комедия, криминал	Гер Хеннинг Хопланд	45
5753	Кукловоды (1-4 серия)	https://kinokrad.co/255556-kuklovody.html	6	2013	Россия	триллер	Марина Исаева	45
5754	Восьмидесятые 2 сезон (1-20 все серии)	https://kinokrad.co/276648-vosmidesyatye-2-sezon-1-20-vse-serii.html	8	2013	Россия	комедия	Фёдор Стуков	25
5755	Пожарные Чикаго / Чикаго в огне 2 сезон (1-22 все серии)	https://kinokrad.co/10447-pozharnye-chikago-2-sezon.html	8	2013	США	драма	Джо Чаппелль, Жан Де Сегонзак	43
5756	Потерянные (1-13 серия)	https://kinokrad.co/256133-poteryannye.html	8	2013	Австралия	фантастика, приключения	Даина Рейд, Питер Кастэйрс	45
5757	Розыск 1 сезон	https://kinokrad.co/276345-rozysk-1-sezon.html	8	2013	Россия	боевик, детектив	Рустам Мосафир	45
5758	Деффчонки 2 сезон (1-21 серия)	https://kinokrad.co/256142-deffchonki-2-sezon.html	8	2013	Россия	комедия	Сергей Корягин, Ольга Френкель	24
5759	Стрела 1 сезон (1-23 серия)	https://kinokrad.co/255544-strela-1-sezon.html	8	2013	США	фантастика, боевик, драма, криминал, детектив, приключения	Джон Беринг, Гай Норман Би	43
5760	Ганнибал 1 сезон (1-13 серия)	https://kinokrad.co/278251-gannibal-1-sezon.html	9	2013	США	детектив, триллер, криминал, драма	Майкл Раймер, Дэвид Слэйд, Тим Хантер	43
5761	Полет бабочки (1-4 серия)	https://kinokrad.co/5094-polet-babochki.html	6	2013	Россия, Украина	мелодрама	Николай Михайлов	30
5762	Сумасшедшие 1 сезон (1-22 серия)	https://kinokrad.co/256163-sumasshedshi-1-sezon.html	7	2013	США	комедия	Джейсон Уайнер, Билл Д’Элиа	30
5763	Скандал 3 сезон (1-18 серия)	https://kinokrad.co/256164-skandal-3-sezon.html	8	2013	США	триллер, драма	Том Верика, Оливер Бокельберг	43
5764	Кривое зеркало души (1-4 серия)	https://kinokrad.co/271522-krivoe-zerkalo-dushi.html	8	2013	Украина	приключения, детектив, мелодрама	Максим Мехеда	45
5765	Джо (1-8 серия)	https://kinokrad.co/255477-dzho.html	8	2013	Франция, Великобритания	криминал, детектив	Шери Фольксон	43
5766	Рухнувшие небеса 3 сезон (1-10 серия)	https://kinokrad.co/16977-soshedshie-s-nebes-3-sezon.html	8	2013	США, Канада	фантастика, боевик, триллер	Грег Биман, Серджо Мимика-Геззан	43
5767	Подпольная империя 4 сезон (1-12 серия)	https://kinokrad.co/252979-podpolnaya-imperiya-4-sezon.html	9	2013	США	драма, криминал	Тимоти Ван Паттен, Аллен Култер	55
5768	Под куполом 1 сезон (1-13 серия)	https://kinokrad.co/5067-pod-kupolom-1-sezon.html	8	2013	США	ужасы, фантастика	Джек Бендер, Кари Скогланд	43
5769	Спецнах: Сан-Диего 3 сезон (1-13 серия)	https://kinokrad.co/255469-specnaz-san-diego-3-sezon.html	7	2013	США	комедия	Райан МакФол, Эрик Аппель	15
5770	Маленькие секреты (1-18 серия)	https://kinokrad.co/251598-malenkie-sekreti.html	6	2013	Турция	драма	А. Танер Эльхан	110
5771	Людмила (1-8 серия)	https://kinokrad.co/4336-lyudmila-vse-serii.html	6	2013	Россия	драма, биография	Александр Павловский	44
5772	Майк и Молли 4 сезон (1-22 серия)	https://kinokrad.co/251583-mayk-i-molli-4-sezon.html	10	2013	США	комедия	Джеймс Берроуз, Фил Льюис	22
5773	Разведчицы (1-12 серия)	https://kinokrad.co/5331-razvedchicy-vse-serii.html	8	2013	Россия	драма, военный	Феликс Герчиков	46
5774	Фэйри 4 сезон (1-13 серия)	https://kinokrad.co/250825-feyri-4-sezon.html	8	2013	Канада	ужасы, фэнтези, криминал	Стив ДиМарко, Джон Фоусет	43
5775	Нижний этаж 1 сезон (1-10 серия)	https://kinokrad.co/255763-nizhniy-etazh-1-sezon.html	7	2013	США	комедия	Гэйл Манкусо	22
5776	Форс-мажоры 3 сезон (1-16 серия)	https://kinokrad.co/17934-fors-mazhory-3-sezon.html	9	2013	США	драма, комедия	Кевин Брэй, Джон Скотт	43
5777	Пятая стража 1 сезон (1-62 серия)	https://kinokrad.co/255741-pyataya-strazha.html	8	2013	Россия	фантастика, детектив	Василий Пичул, Наталия Микрюкова	47
5778	Плохие / Отбросы 5 сезон (1-8 серия)	https://kinokrad.co/280687-plohie-otbrosy-5-sezon.html	9	2013	Великобритания	фантастика, фэнтези, драма, комедия	Том Грин, Джонатан ван Тюллекен, Том Харпер	43
5779	Наследники 1 сезон (1-20 серия)	https://kinokrad.co/4686-nasledniki-1-sezon.html	8	2013	Корея Южная	мелодрама	Кан Шин Хё	65
5780	Мотель Бейтсов 2 сезон (1-10 серия)	https://kinokrad.co/4631-motel-beytsov-2-sezon.html	8	2013	США	триллер, детектив, ужасы	Такер Гейтс	43
5781	Монстры против пришельцев (1-25 серия)	https://kinokrad.co/4613-monstry-protiv-prishelcev.html	8	2013	США	мультфильм, комедия, семейный	Sunil Hall, Мэтт Энгстром	15
5782	Преступление Фердинанда фон Шираха (1 сезон)	https://kinokrad.co/281989-prestuplenie-ferdinanda-fon-shiraha-1-sezon.html	9	2013	Германия	криминал	Йобст Эцман, Ханну Салонен	45
5783	Спартак: Война проклятых (4 сезон)	https://kinokrad.co/281983-spartak-voyna-proklyatyh-4-sezon-2013.html	9	2013	США	боевик, драма, приключения, биография, история	Джесси Уарн, Майкл Херст, Рик Джейкобсон	52
5784	Мастера секса 1 сезон (1-12 серия)	https://kinokrad.co/4494-mastera-seksa-1-sezon.html	8	2013	США	драма	Майкл Эптед, Майкл Диннер	43
5785	Мамаша  1 сезон (1-22 серия)	https://kinokrad.co/4460-mamasha-1-sezon.html	8	2013	США	комедия	Джефф Гринштейн	30
5786	Драконы: Всадники Олуха 2 сезон (1-20 серия)	https://kinokrad.co/8324-drakony-vsadniki-oluha-2-sezon.html	9	2013	США	мультфильм, фэнтези, комедия, приключения, семейный	Энтони Белл, Джон Санфорд	22
5787	Хемлок Гроув 1 сезон (1-13 серия)	https://kinokrad.co/272723-hemlok-grouv-1-sezon.html	8	2013	США	ужасы, триллер, детектив	Деран Сарафян, Дэвид Стрейтон, Т.Дж. Скотт	50
5788	Во плоти (1-3 серия)	https://kinokrad.co/272727-vo-ploti.html	7	2013	Великобритания	ужасы, драма	Джонни Кэмпбелл, Джим О’Хенлон, Дэймон Томас	43
5789	Безмолвный свидетель 13 сезон (1-10 серия)	https://kinokrad.co/272731-bezmolvnyy-svidetel-13-sezon.html	8	2013	Великобритания	драма, криминал, детектив	Ричард Сайни, Ренни Рай, Николас Рентон	43
5790	Последний настоящий мужчина 3 сезон (1-22 серия)	https://kinokrad.co/278240-posledniy-nastoyaschiy-muzhchina-3-sezon.html	7	2013	США	комедия	Джон Пасквин, Тед Уасс, Джонатан Тейлор Томас	22
5791	Ясновидец 7 сезон (1-16 серия)	https://kinokrad.co/273994-yasnovidec-7-sezon.html	7	2013	США	комедия, криминал, детектив	Мэл Дэмски, Стив Фрэнкс, Джеймс Родэй	43
5792	Дневники Кэрри 1 сезон (1-13 серия)	https://kinokrad.co/274087-dnevniki-kjerri-1-sezon.html	8	2013	США	мелодрама, комедия	Эми Хекерлинг, Энди Волк, Норман Бакли	43
5793	Город хищниц 4 сезон (1-15 серия)	https://kinokrad.co/274086-gorod-hischnic-4-sezon.html	8	2013	США	комедия	Майкл МакДональд, Джон Путч, Кортни Кокс	22
5794	Управление гневом 2 сезон (90 серия)	https://kinokrad.co/11756-upravlenie-gnevom-2-sezon-90-seriya.html	8	2013	США	комедия	Джерри Коэн, Боб Коэрр	22
5795	Смертельная битва: Наследие 2 сезон (1-10 серия)	https://kinokrad.co/279922-smertelnaya-bitva-nasledie-2-sezon.html	8	2013	США, Канада	фэнтези, боевик, триллер, криминал	Кевин Танчароэн	12
5796	Бриклберри (2 сезон)	https://kinokrad.co/281889-briklberri-2-sezon-2013.html	8	2013	США	мультфильм, комедия	Захари Монкриф, Род Амадор, Брайан ЛоСкьяво	22
5797	Убить Сталина (1-8 серия)	https://kinokrad.co/5886-ubit-stalina.html	7	2013	Россия	детектив	Сергей Гинзбург	45
5798	Царство (1 сезон)	https://kinokrad.co/6013-carstvo-1-sezon.html	8	2013	США	фэнтези, драма	Брэд Силберлинг	43
5799	Домработница (1 сезон)	https://kinokrad.co/255536-domrabotnica.html	6	2013	Россия	мелодрама	Эдуард Пальмов	45
6036	Жить дальше (1-12 серия)	https://kinokrad.co/3720-zhit-dalshe.html	7	2013	Россия	мелодрама	Нурбек Эген	45
5800	Пыльная работа (1-40 серия)	https://kinokrad.co/16813-pylnaya-rabota.html	7	2013	Россия	детектив	Игорь Ромащенко, Александр Захаренков	53
5801	Большая школа (1 сезон)	https://kinokrad.co/284621-bolshaya-shkola-1-sezon-2013.html	7	2013	Великобритания	комедия	Тони Дау, Мэтт Липси	30
5802	Мисс Марпл Агаты Кристи (6 сезон)	https://kinokrad.co/282818-miss-marpl-agaty-kristi-6-sezon-2013.html	8	2013	Великобритания	драма, криминал, детектив	Чарльз Палмер, Энди Уилсон, Джон Стриклэнд	94
5803	Стелла (2 сезон)	https://kinokrad.co/281931-stella-2-sezon-2013.html	5	2013	Великобритания	драма, комедия	Эшли Вэй, Тони Дау, Сьюзэн Талли	60
5804	Деревня 1 сезон (1-6 серия)	https://kinokrad.co/281277-derevnya-1-sezon.html	6	2013	Великобритания	драма	Антония Бёрд, Гиллис МакКиннон, Доминик Леклерк	59
5805	Великолепный век 4 cезон (46 серия)	https://kinokrad.co/13508-velikolepnyy-vek-4-sezon-46-seriya.html	8	2013	Турция	драма, мелодрама, военный, биография, история	Дурул Тайлан, Ягмур Тайлан	100
5806	Отель «Адлон»: Семейная сага (1-3 серия)	https://kinokrad.co/280423-otel-adlon-semeynaya-saga.html	8	2013	Германия	драма	Ули Эдель	90
5807	Универ. Саша и Таня (1-41 серия)	https://kinokrad.co/255930-univer.-sasha-i-tanya-1-sezon.html	8	2013	Россия	комедия	Сергей Казачанский, Михаил Старчак	24
5808	Оса (1-99 серия)	https://kinokrad.co/255535-osa.html	7	2013	Россия	детектив	Юрий Харнас, Игорь Твердохлебов	45
5809	Последний из Магикян (1 сезон)	https://kinokrad.co/283762-posledniy-iz-magikyan-1-sezon-2013.html	7	2013	Россия	комедия, семейный	Резо Гигинеишвили, Акаки Сахелашвили	24
5810	Белый воротничок 5 сезон (1-13 серия)	https://kinokrad.co/255803-belyy-vorotnichok-5-sezon-onlayn.html	8	2013	США	детектив, криминал, драма, комедия	Джон Т. Кречмер, Рассел Ли Файн	43
5811	Мунфлит (1-2 серия)	https://kinokrad.co/255732-munflit.html	7	2013	Великобритания	драма	Энди де Эммони	30
5812	Южный Парк 17 сезон (1-10 серия)	https://kinokrad.co/255725-yuzhnyy-park-17-sezon-2013-onlayn-serial.html	8	2013	США	мультфильм, комедия	Трей Паркер, Эрик Сточ	22
5813	Мэрон (1 сезон)	https://kinokrad.co/282335-meron-1-sezon-2013.html	6	2013	США	комедия	Люк Мэзени, Роберт Коэн, Боб Голдтуэйт	22
5814	Фатих (1-5 серия)	https://kinokrad.co/255571-fatih.html	8	2013	Турция	драма, мелодрама, военный, история	Мерве Гиргин	45
5815	Виктория - победительница 4 сезон (1-13 серия)	https://kinokrad.co/255382-viktoriya-pobeditelnica-4-sezon-smotret-onlayn.html	7	2013	США	драма, комедия, семейный	Стив Хофер, Адам Вайсман	22
5816	Студия 17 (1-16 серия)	https://kinokrad.co/255380-studiya-17.html	7	2013	Россия	комедия	Сергей Сенцов, Александр Наумов	25
5817	Милые обманщицы 4 сезон (1-25 серия)	https://kinokrad.co/251764-milye-obmanschicy-4-sezon-onlayn.html	9	2013	США	триллер, драма, детектив	Норман Бакли, Рон Лагомарсино	43
5818	Красавица и чудовище 2 сезон (1-22 серия)	https://kinokrad.co/9070-krasavica-i-chudovische-2-sezon.html	9	2013	США	триллер, драма	Рик Бота, Стивен А. Эделсон	43
5819	Аватар: Легенда о Корре (2 сезон)	https://kinokrad.co/9194-avatar-legenda-o-korre-2-sezon.html	8	2013	США	мультфильм, фэнтези, боевик, приключения, семейный	Хоаким Дос Сантос, Ки Хьюн Рю	22
5820	Континуум 2 сезон (1-13 серия)	https://kinokrad.co/8999-kontinuum-2-sezon.html	8	2013	Канада	фантастика, триллер	Пэт Уильямс, Дэвид Фрэйзи	43
5821	Арчер 4 сезон (1-13 серия)	https://kinokrad.co/280889-archer-4-sezon.html	8	2013	США	мультфильм, боевик, комедия	Адам Рид, Брайан Фордни	22
5822	Демоны Да Винчи (1 сезон)	https://kinokrad.co/282026-demony-da-vinchi-1-sezon-2013.html	8	2013	США	фэнтези, драма, детектив, приключения, история	Питер Хор, Майкл Дж. Бассетт, Дэвид С. Гойер	59
5823	Следы апостолов (1-4 серия)	https://kinokrad.co/5574-sledy-apostolov.html	7	2013	Беларусь	приключения	Сергей Талыбов	52
5824	Сила Веры (1-4 серия)	https://kinokrad.co/5538-sila-very.html	7	2013	Россия	мелодрама	Александр Карпиловский	45
5825	Рейк 1 сезон (1-13 серия)	https://kinokrad.co/5371-reyk-1-sezon.html	9	2013	США	драма, комедия	Сэм Рэйми	55
5826	Пятая стража 2 сезон (1-63 серия)	https://kinokrad.co/5311-pyataya-strazha-2-sezon.html	7	2013	Россия	фантастика, детектив	Василий Пичул	47
5827	Бруклин 9-9 (1 сезон)	https://kinokrad.co/3106-bruklin-9-9-1-sezon.html	9	2013	США	комедия	Фил Лорд, Крис Миллер	45
5828	Княжна из хрущевки (1-4 серия)	https://kinokrad.co/273157-knyazhna-iz-hruschevki.html	8	2013	Россия	комедия, мелодрама	Тимур Кабулов	88
5829	Провинциальная муза (1-4 серия)	https://kinokrad.co/273160-provincialnaya-muza.html	8	2013	Россия	мелодрама	Иван Криворучко	45
5830	Билет на двоих (1-4 серия)	https://kinokrad.co/273250-bilet-na-dvoih.html	7	2013	Украина	мелодрама	Владимир Балкашинов	
5831	Убийство на пляже / Бродчерч 1 сезон (1-8 серия)	https://kinokrad.co/3103-ubiystvo-na-plyazhe-brodcherch-1-sezon.html	9	2013	Великобритания	драма, криминал	Джеймс Стронг, Эрос Лин	46
5832	Библия (1-10 серия)	https://kinokrad.co/3042-bibliya.html	8	2013	США, Великобритания	боевик, драма	Криспин Рис, Кристофер Спенсер	41
5834	Мотель Бейтсов 1 сезон (1-10 серия)	https://kinokrad.co/281192-motel-beytsov-1-sezon.html	9	2013	США	триллер, детектив, ужасы	Такер Гейтс	43
5835	Оттепель (1-13 серия)	https://kinokrad.co/4925-ottepel-18-04.html	8	2013	Россия	драма	Валерий Тодоровский	55
5836	Последователи 1 сезон (1-15 серия)	https://kinokrad.co/274056-posledovateli-1-sezon.html	9	2013	США	триллер, драма, криминал, детектив	Маркос Сига, Джошуа Батлер, Лиз Фридлендер	43
5837	Правосудие (5 сезон)	https://kinokrad.co/285083-pravosudie-5-sezon-2013.html	8	2013	США	боевик, триллер, драма, криминал	Адам Аркин, Джон Эвнет, Питер Уэрнер	43
5838	Универ. Новая общага 1 сезон (1-100 серия)	https://kinokrad.co/17857-univer-novaya-obschagas.html	9	2013	Россия	комедия	Константин Смирнов, Максим Зыков	23
5839	Риццоли и Айлс 4 сезон (1-16 серия)	https://kinokrad.co/280104-riccoli-i-ayls-4-sezon.html	9	2013	США	драма, криминал, детектив	Марк Абер, Майкл Кэтлман, Стив Робин	43
5840	Обитель лжи 2 сезон (1-12 серия)	https://kinokrad.co/274440-obitel-lzhi-2-sezon.html	6	2013	США	драма, комедия	Стивен Хопкинс, Мэттью Карнахан, Адам Бернштейн	29
5841	Бесстыдники 3 сезон (1-12 серия)	https://kinokrad.co/280090-besstydniki-3-sezon.html	9	2013	США	драма, комедия	Марк Майлод, Мими Ледер, Энтони Хемингуэй	55
5842	Бывает и хуже (4 сезон)	https://kinokrad.co/255724-byvaet-i-huzhe-4-sezon.html	8	2013	США	комедия	Ли Шаллат Чемел, Эллиот Хегарти	22
5843	Новенькая 3 сезон (1-23 серия)	https://kinokrad.co/256151-novenkaya-3-sezon.html	8	2013	США	комедия	Джейк Кэздан, Макс Уинклер	22
5844	Последователи 2 сезон (1-15 серия)	https://kinokrad.co/256138-posledovateli-2-sezon-smotret-onlayn.html	8	2013	США	триллер, драма, криминал, детектив	Маркос Сига, Джошуа Батлер	43
5845	Трансформеры: Прайм (3 сезон)	https://kinokrad.co/283656-transformery-praym-3-sezon-2013.html	8	2013	США	мультфильм, фантастика, боевик, приключения	Дэвид Хартман, Шонт Нигогосян, Винтон Хёк	22
5846	Декстер 8 сезон (1-12 серия)	https://kinokrad.co/255572-dekster-8-sezon.html	10	2013	США	триллер, драма, криминал, детектив	Джон Дал, Стив Шилл	55
5847	Сыны Анархии 6 сезон (1-13 серия)	https://kinokrad.co/255570-syny-anarhii-6-sezon.html	9	2013	США	триллер, драма, криминал	Пэрис Барклай, Гвинет Хердер-Пэйтон	45
5848	Одинокие сердца (1-2 серия)	https://kinokrad.co/255554-odinokie-serdca.html	7	2013	Россия	отечественный, мелодрама	Сергей Комаров	45
5849	Менталист 6 сезон (1-22 серия)	https://kinokrad.co/255565-mentalist-6-sezon.html	9	2013	США	триллер, драма, криминал, детектив	Крис Лонг, Джон Шоуолтер	45
5850	Касл 6 сезон (1-23 серия)	https://kinokrad.co/255564-kasl-6-sezon.html	9	2013	США	драма, комедия, криминал, детектив	Джон Терлески, Роб Боумен	43
5851	Нэшвилл 2 сезон (1-22 серия)	https://kinokrad.co/276900-neshvill-2-sezon-1-22-seriya.html	5	2013	США	драма, музыка, слова	Пол МакКрейн, Р.Дж. Катлер, Стивен Крегг	43
5852	Лилехаммер 2 сезон (1-8 серия)	https://kinokrad.co/255562-lilehammer-2-sezon.html	8	2013	США, Норвегия	драма, комедия, криминал	Гер Хеннинг Хопланд	45
5853	Кукловоды (1-4 серия)	https://kinokrad.co/255556-kuklovody.html	6	2013	Россия	триллер	Марина Исаева	45
5854	Восьмидесятые 2 сезон (1-20 все серии)	https://kinokrad.co/276648-vosmidesyatye-2-sezon-1-20-vse-serii.html	8	2013	Россия	комедия	Фёдор Стуков	25
5855	Пожарные Чикаго / Чикаго в огне 2 сезон (1-22 все серии)	https://kinokrad.co/10447-pozharnye-chikago-2-sezon.html	8	2013	США	драма	Джо Чаппелль, Жан Де Сегонзак	43
5856	Потерянные (1-13 серия)	https://kinokrad.co/256133-poteryannye.html	8	2013	Австралия	фантастика, приключения	Даина Рейд, Питер Кастэйрс	45
5857	Розыск 1 сезон	https://kinokrad.co/276345-rozysk-1-sezon.html	8	2013	Россия	боевик, детектив	Рустам Мосафир	45
5858	Деффчонки 2 сезон (1-21 серия)	https://kinokrad.co/256142-deffchonki-2-sezon.html	8	2013	Россия	комедия	Сергей Корягин, Ольга Френкель	24
5859	Стрела 1 сезон (1-23 серия)	https://kinokrad.co/255544-strela-1-sezon.html	8	2013	США	фантастика, боевик, драма, криминал, детектив, приключения	Джон Беринг, Гай Норман Би	43
5860	Ганнибал 1 сезон (1-13 серия)	https://kinokrad.co/278251-gannibal-1-sezon.html	9	2013	США	детектив, триллер, криминал, драма	Майкл Раймер, Дэвид Слэйд, Тим Хантер	43
5861	Полет бабочки (1-4 серия)	https://kinokrad.co/5094-polet-babochki.html	6	2013	Россия, Украина	мелодрама	Николай Михайлов	30
5862	Сумасшедшие 1 сезон (1-22 серия)	https://kinokrad.co/256163-sumasshedshi-1-sezon.html	7	2013	США	комедия	Джейсон Уайнер, Билл Д’Элиа	30
5863	Скандал 3 сезон (1-18 серия)	https://kinokrad.co/256164-skandal-3-sezon.html	8	2013	США	триллер, драма	Том Верика, Оливер Бокельберг	43
5864	Кривое зеркало души (1-4 серия)	https://kinokrad.co/271522-krivoe-zerkalo-dushi.html	8	2013	Украина	приключения, детектив, мелодрама	Максим Мехеда	45
5865	Джо (1-8 серия)	https://kinokrad.co/255477-dzho.html	8	2013	Франция, Великобритания	криминал, детектив	Шери Фольксон	43
5866	Рухнувшие небеса 3 сезон (1-10 серия)	https://kinokrad.co/16977-soshedshie-s-nebes-3-sezon.html	8	2013	США, Канада	фантастика, боевик, триллер	Грег Биман, Серджо Мимика-Геззан	43
5867	Подпольная империя 4 сезон (1-12 серия)	https://kinokrad.co/252979-podpolnaya-imperiya-4-sezon.html	9	2013	США	драма, криминал	Тимоти Ван Паттен, Аллен Култер	55
5868	Под куполом 1 сезон (1-13 серия)	https://kinokrad.co/5067-pod-kupolom-1-sezon.html	8	2013	США	ужасы, фантастика	Джек Бендер, Кари Скогланд	43
5869	Спецнах: Сан-Диего 3 сезон (1-13 серия)	https://kinokrad.co/255469-specnaz-san-diego-3-sezon.html	7	2013	США	комедия	Райан МакФол, Эрик Аппель	15
5870	Маленькие секреты (1-18 серия)	https://kinokrad.co/251598-malenkie-sekreti.html	6	2013	Турция	драма	А. Танер Эльхан	110
5871	Людмила (1-8 серия)	https://kinokrad.co/4336-lyudmila-vse-serii.html	6	2013	Россия	драма, биография	Александр Павловский	44
5872	Майк и Молли 4 сезон (1-22 серия)	https://kinokrad.co/251583-mayk-i-molli-4-sezon.html	10	2013	США	комедия	Джеймс Берроуз, Фил Льюис	22
5873	Разведчицы (1-12 серия)	https://kinokrad.co/5331-razvedchicy-vse-serii.html	8	2013	Россия	драма, военный	Феликс Герчиков	46
5874	Фэйри 4 сезон (1-13 серия)	https://kinokrad.co/250825-feyri-4-sezon.html	8	2013	Канада	ужасы, фэнтези, криминал	Стив ДиМарко, Джон Фоусет	43
5875	Нижний этаж 1 сезон (1-10 серия)	https://kinokrad.co/255763-nizhniy-etazh-1-sezon.html	7	2013	США	комедия	Гэйл Манкусо	22
5876	Форс-мажоры 3 сезон (1-16 серия)	https://kinokrad.co/17934-fors-mazhory-3-sezon.html	9	2013	США	драма, комедия	Кевин Брэй, Джон Скотт	43
5877	Пятая стража 1 сезон (1-62 серия)	https://kinokrad.co/255741-pyataya-strazha.html	8	2013	Россия	фантастика, детектив	Василий Пичул, Наталия Микрюкова	47
5878	Плохие / Отбросы 5 сезон (1-8 серия)	https://kinokrad.co/280687-plohie-otbrosy-5-sezon.html	9	2013	Великобритания	фантастика, фэнтези, драма, комедия	Том Грин, Джонатан ван Тюллекен, Том Харпер	43
5879	Наследники 1 сезон (1-20 серия)	https://kinokrad.co/4686-nasledniki-1-sezon.html	8	2013	Корея Южная	мелодрама	Кан Шин Хё	65
5880	Мотель Бейтсов 2 сезон (1-10 серия)	https://kinokrad.co/4631-motel-beytsov-2-sezon.html	8	2013	США	триллер, детектив, ужасы	Такер Гейтс	43
5881	Монстры против пришельцев (1-25 серия)	https://kinokrad.co/4613-monstry-protiv-prishelcev.html	8	2013	США	мультфильм, комедия, семейный	Sunil Hall, Мэтт Энгстром	15
5882	Преступление Фердинанда фон Шираха (1 сезон)	https://kinokrad.co/281989-prestuplenie-ferdinanda-fon-shiraha-1-sezon.html	9	2013	Германия	криминал	Йобст Эцман, Ханну Салонен	45
5883	Спартак: Война проклятых (4 сезон)	https://kinokrad.co/281983-spartak-voyna-proklyatyh-4-sezon-2013.html	9	2013	США	боевик, драма, приключения, биография, история	Джесси Уарн, Майкл Херст, Рик Джейкобсон	52
5884	Мастера секса 1 сезон (1-12 серия)	https://kinokrad.co/4494-mastera-seksa-1-sezon.html	8	2013	США	драма	Майкл Эптед, Майкл Диннер	43
5885	Мамаша  1 сезон (1-22 серия)	https://kinokrad.co/4460-mamasha-1-sezon.html	8	2013	США	комедия	Джефф Гринштейн	30
5886	Драконы: Всадники Олуха 2 сезон (1-20 серия)	https://kinokrad.co/8324-drakony-vsadniki-oluha-2-sezon.html	9	2013	США	мультфильм, фэнтези, комедия, приключения, семейный	Энтони Белл, Джон Санфорд	22
5887	Хемлок Гроув 1 сезон (1-13 серия)	https://kinokrad.co/272723-hemlok-grouv-1-sezon.html	8	2013	США	ужасы, триллер, детектив	Деран Сарафян, Дэвид Стрейтон, Т.Дж. Скотт	50
5888	Во плоти (1-3 серия)	https://kinokrad.co/272727-vo-ploti.html	7	2013	Великобритания	ужасы, драма	Джонни Кэмпбелл, Джим О’Хенлон, Дэймон Томас	43
5889	Безмолвный свидетель 13 сезон (1-10 серия)	https://kinokrad.co/272731-bezmolvnyy-svidetel-13-sezon.html	8	2013	Великобритания	драма, криминал, детектив	Ричард Сайни, Ренни Рай, Николас Рентон	43
5890	Последний настоящий мужчина 3 сезон (1-22 серия)	https://kinokrad.co/278240-posledniy-nastoyaschiy-muzhchina-3-sezon.html	7	2013	США	комедия	Джон Пасквин, Тед Уасс, Джонатан Тейлор Томас	22
5891	Ясновидец 7 сезон (1-16 серия)	https://kinokrad.co/273994-yasnovidec-7-sezon.html	7	2013	США	комедия, криминал, детектив	Мэл Дэмски, Стив Фрэнкс, Джеймс Родэй	43
5892	Дневники Кэрри 1 сезон (1-13 серия)	https://kinokrad.co/274087-dnevniki-kjerri-1-sezon.html	8	2013	США	мелодрама, комедия	Эми Хекерлинг, Энди Волк, Норман Бакли	43
5893	Город хищниц 4 сезон (1-15 серия)	https://kinokrad.co/274086-gorod-hischnic-4-sezon.html	8	2013	США	комедия	Майкл МакДональд, Джон Путч, Кортни Кокс	22
5894	Управление гневом 2 сезон (90 серия)	https://kinokrad.co/11756-upravlenie-gnevom-2-sezon-90-seriya.html	8	2013	США	комедия	Джерри Коэн, Боб Коэрр	22
5895	Смертельная битва: Наследие 2 сезон (1-10 серия)	https://kinokrad.co/279922-smertelnaya-bitva-nasledie-2-sezon.html	8	2013	США, Канада	фэнтези, боевик, триллер, криминал	Кевин Танчароэн	12
5896	Бриклберри (2 сезон)	https://kinokrad.co/281889-briklberri-2-sezon-2013.html	8	2013	США	мультфильм, комедия	Захари Монкриф, Род Амадор, Брайан ЛоСкьяво	22
5897	Убить Сталина (1-8 серия)	https://kinokrad.co/5886-ubit-stalina.html	7	2013	Россия	детектив	Сергей Гинзбург	45
5900	Пыльная работа (1-40 серия)	https://kinokrad.co/16813-pylnaya-rabota.html	7	2013	Россия	детектив	Игорь Ромащенко, Александр Захаренков	53
5901	Любовь с испытательным сроком (1-4 серия)	https://kinokrad.co/255553-lyubov-s-ispytatelnym-srokom.html	7	2013	Украина	мелодрама	Александр Итыгилов мл	48
5902	Истребители (1 сезон)	https://kinokrad.co/281843-istrebiteli-1-sezon-2013.html	8	2013	Россия	драма, военный	Алексей Мурадов	43
5903	Последняя минута 2 сезон (1-6 серия)	https://kinokrad.co/5153-poslednyaya-minuta-2-sezon.html	6	2013	Россия	триллер, драма	Владимир Нахабцев мл., Денис Червяков	45
5904	Братья по обмену	https://kinokrad.co/3099-bratya-po-obmenu.html	9	2013	Россия	комедия	Александр Жигалкин	44
5905	Дневники Кэрри 2 сезон	https://kinokrad.co/255927-dnevniki-kerri-2-sezon-smotret-onlayn.html	8	2013	США	мелодрама, комедия	Эми Хекерлинг, Энди Волк	43
5906	Оборотень / Волчонок (3 сезон)	https://kinokrad.co/255905-oboroten-3-sezon-smotret-onlayn.html	9	2013	США	ужасы, триллер, драма, мелодрама, комедия	Рассел Малкэй, Тим Эндрю	43
5907	Кости 9 сезон (1-24 серия)	https://kinokrad.co/255893-kosti-9-sezon-smotret-onlayn.html	9	2013	США	драма, мелодрама, комедия, криминал, детектив	Иэн Тойнтон, Дуайт Х. Литтл	43
5908	Пятерка за крутость (1-26 серия)	https://kinokrad.co/16817-pyaterka-za-krutost.html	7	2013	США	мультфильм	Джордж Самильски, Себастьян Бродин	21
5909	Рэй Донован 1 сезон (1-12 серия)	https://kinokrad.co/5433-rjey-donovan-1-sezon.html	8	2013	США	драма	Аллен Култер	43
5910	Спецотряд Шторм (1-16 серия)	https://kinokrad.co/255552-specotryad-shtorm.html	8	2013	Россия	драма, криминал	Валерий Ибрагимов	45
5911	Острые козырьки / Заточенные кепки 1 сезон (1-6 серия)	https://kinokrad.co/255546-ostrye-kozyrki-1-sezon.html	8	2013	Великобритания	драма, криминал	Отто Баферст, Том Харпер	60
5912	Друзья, любимые, враги 3 сезон (1-6 серия)	https://kinokrad.co/272213-druzya-lyubimye-vragi-3-sezon.html	7	2013	Франция	комедия	Жером Наварро, Сильви Эйм	52
5913	Пока живу, люблю (1-4 серия)	https://kinokrad.co/255542-poka-zhivu-lyublyu.html	8	2013	США	мелодрама	Эдуард Пальмов	45
5914	Эйнштейн. Теория любви (1-4 серия)	https://kinokrad.co/255541-eynshteyn-teoriya-lyubvi.html	6	2013	Россия	мелодрама, детектив, биография	Елена Николаева	45
5915	Идеальный брак (1-8 серия)	https://kinokrad.co/256140-idealnyy-brak-onlayn.html	7	2013	Россия	мелодрама	Егор Анашкин	52
5916	В поле зрения 3 сезон (1- 23 серия)	https://kinokrad.co/255723-podozrevaemye-3-sezon.html	9	2013	США	боевик, триллер, драма, детектив	Ричард Дж. Льюис, Джеффри Дж. Хант	44
5917	Следствие по телу 3 сезон (1-13 серия)	https://kinokrad.co/17249-sledstvie-po-telu-3-sezon.html	9	2013	США	драма, криминал, детектив	Кристин Мур, Нельсон МакКормик	43
5918	Пятницкий 3 сезон (1-30 серия)	https://kinokrad.co/16821-pyatnickiy-3-sezon.html	8	2013	Россия	драма, детектив	Сергей Лесогоров, Мичислав Юзовский	46
5919	Последний настоящий мужик 2 сезон (1-18 серия)	https://kinokrad.co/16517-posledniy-nastoyaschiy-muzhik-2-sezon.html	7	2013	США	комедия	Джон Пасквин	22
5920	Проспект Бразилии (1-173 серия)	https://kinokrad.co/10736-prospekt-brazilii.html	8	2013	Бразилия	драма, комедия, детектив	Андре Камара, Густаво Фернандез	43
5921	Элементарно (2 сезон)	https://kinokrad.co/12127-serial-elementarno-2-sezon.html	9	2013	США	драма, криминал, детектив	Сет Манн, Джон Полсон	43
5922	Гримм 3 сезон (1-22 серия)	https://kinokrad.co/13966-grimm-3-sezon-onlayn.html	9	2013	США	ужасы, фэнтези, драма, детектив, мистика	Норберто Барба, Терренс О’Хара	43
5923	Место преступления: Лас-Вегас 14 сезон (1-22 серия)	https://kinokrad.co/255738-mesto-prestupleniya-las-vegas-14-sezon.html	8	2013	США, Канада	триллер, драма, криминал, детектив	Кеннет Финк, Ричард Дж. Льюис	43
5924	У меня мало друзей: Далее (1-12 серия)	https://kinokrad.co/280530-u-menya-malo-druzey-dalee.html	8	2013	Япония	аниме, мультфильм, комедия	Тору Китахата	25
5925	Секретные операции (1-3 серия)	https://kinokrad.co/255757-sekretnye-operacii.html	8	2013	США	документальный	Даг Шульц	44
5926	Гавайи 5.0 4 сезон (1-22 серия)	https://kinokrad.co/255753-gavayi-5.0-4-sezon.html	8	2013	США	боевик, драма, криминал	Брайан Спайсер, Стив Бойум	43
5927	Гриффины (12 сезон)	https://kinokrad.co/255907-griffiny-12-sezon.html	8	2013	США	мультфильм, комедия	Питер Шин, Пит Мишелс	22
5928	Анатомия страсти 10 сезон (1-24 серия)	https://kinokrad.co/255909-anatomiya-strasti-10-sezon.html	9	2013	США	драма, мелодрама	Роб Корн, Тони Фелан, Том Верика	43
5929	Мыслить как преступник 9 сезон (1-24 серия)	https://kinokrad.co/255912-myslit-kak-prestupnik-9-sezon.html	8	2013	США, Канада	триллер, драма, криминал, детектив	Гленн Кершоу	43
5930	Люди будущего 1 сезон (1-22 серия)	https://kinokrad.co/4326-lyudi-buduschego-1-sezon.html	8	2013	США	фантастика, драма	Дэнни Кэннон	45
5931	Любовницы 2 сезон (1-13 серия)	https://kinokrad.co/4264-lyubovnicy-2-sezon.html	8	2013	США, Великобритания	триллер, драма	Чери Ноулан, Джон Скотт	43
5932	Мистер Селфридж 1 сезон (1-10 серия)	https://kinokrad.co/280983-mister-selfridzh-1-sezon.html	7	2013	Великобритания	драма	Роб Эванс, Лоуренс Тилль, Энтони Бирн	45
5933	Ловушка (1-24 серия)	https://kinokrad.co/4043-lovushka.html	8	2013	Россия	драма, криминал	Сергей Коротаев	40
5934	Ледников (1-16 серия)	https://kinokrad.co/4001-lednikov.html	8	2013	Россия	детектив	Олег Фомин	42
5935	Заложники (1-15 серия)	https://kinokrad.co/3761-zalozhniki.html	8	2013	США	триллер, драма	Джеффри Начманофф	43
5936	Жить дальше (1-12 серия)	https://kinokrad.co/3720-zhit-dalshe.html	7	2013	Россия	мелодрама	Нурбек Эген	45
5937	Городские шпионы (1-12 серия)	https://kinokrad.co/3429-gorodskie-shpiony-smotret-onlayn-serial-1-12-vse-serii.html	7	2013	Россия	детектив, приключения	Дмитрий Черкасов	30
5938	Морская полиция: Спецотдел 11 сезон (1-24 серия)	https://kinokrad.co/255933-morskaya-policiya-11-sezon.html	8	2013	США	боевик, триллер, драма, комедия, криминал, детектив	Дэннис Смит, Томас Дж. Райт	43
5939	Деффчонки 3 сезон (1-17 серия)	https://kinokrad.co/8164-deffchonki-3-sezon.html	8	2013	Россия	комедия	Сергей Корягин, Ольга Френкель	24
5940	Быть человеком 3 сезон (1-13 серия)	https://kinokrad.co/274109-byt-chelovekom-3-sezon.html	8	2013	Канада, США	ужасы, фэнтези, драма, мистика	Паоло Барзмен, Стефан Плещински, Адам Кэйн	43
5941	Горюнов (1-36 серия)	https://kinokrad.co/7979-goryunov.html	8	2013	Россия	мелодрама	Владимир Балкашинов, Мирослав Малич	45
5942	Ведьмы Ист-Энда 1 сезон (1-10 серия)	https://kinokrad.co/7615-vedmy-ist-enda-1-sezon.html	9	2013	США	драма	Марк Уотерс	60
5943	Бездна (1-5 серия)	https://kinokrad.co/7351-bezdna.html	8	2013	Великобритания	триллер, драма, детектив	Колм МакКарти	57
5944	Шерлок Холмс (1-16 серия)	https://kinokrad.co/6096-sherlok-holms.html	8	2013	Россия	триллер, детектив, приключения	Андрей Кавун	44
5945	Черный список 1 сезон (1-22 серия)	https://kinokrad.co/6065-chernyy-spisok-1-sezon.html	9	2013	США	драма, криминал	Джо Карнахан	43
5946	Уилфред 3 сезон (1-13 серия)	https://kinokrad.co/272738-uilfred-3-sezon.html	8	2013	США	комедия	Рэндолл Айнхорн, Виктор Нелли мл	22
5947	Человек ниоткуда (1-16 серия)	https://kinokrad.co/6045-chelovek-niotkuda.html	7	2013	Россия	драма, криминал	Евгений Малков	45
5948	ХБ шоу (1-19 серия)	https://kinokrad.co/5977-hb-shou-9.html	7	2013	Россия	комедия	Егор Баранов	23
5949	Рэй Донован 2 сезон (1-12 серия)	https://kinokrad.co/272826-rey-donovan-2-sezon.html	9	2013	США	драма, криминал	Такер Гейтс, Майкл Аппендаль, Дэниэл Эттиэс	43
5950	Обман (1-11 серия)	https://kinokrad.co/275692-obman-1-sezon.html	7	2013	США	драма, криминал, детектив	Джонас Пейт, Эндрю Бернштейн, Тейт Донован	43
5951	Пропавшие без вести (1-30 серия)	https://kinokrad.co/255530-propavshie-bez-vesti.html	8	2013	Россия	детектив	Рен ТВ	35
5952	Выжить После (1-12 серия)	https://kinokrad.co/272428-vyzhit-posle.html	8	2013	Россия	триллер	Душан Глигоров, Александр Богуславский	48
5953	Симпсоны 25 сезон (1-22 серия)	https://kinokrad.co/255479-simpsony-25-sezon.html	10	2013	США	мультфильм, комедия, семейный	Марк Керклэнд	22
5954	Дневники вампира (5 сезон)	https://kinokrad.co/255468-dnevniki-vampira-5-sezon.html	8	2013	США	ужасы, фэнтези, триллер, драма, мелодрама, детектив	Маркос Сига, Крис Грисмер	43
5955	Крик Совы (1-10 серия)	https://kinokrad.co/255458-krik-sovy.html	8	2013	Россия	детектив, криминал	Олег Погодин	45
5956	Водоворот чужих желаний (1-4 серия)	https://kinokrad.co/255555-vodovorot-chuzhih-zhelaniy.html	5	2013	Россия	детектив	Вячеслав Лавров	45
5957	Кто, если не я? (1-24 серия)	https://kinokrad.co/9142-kto-esli-ne-ya.html	8	2013	Россия	драма	Ольга Ланд	46
5958	Семейные обстоятельства (1-44 серия)	https://kinokrad.co/255534-semeynye-obstoyatelstva.html	5	2013	Россия	мелодрама	Сергей Мезенцев	45
5959	Незабудки (1-2 серия)	https://kinokrad.co/255557-nezabudki.html	7	2013	Россия	мелодрама	Юрий Павлов	45
5960	Вина (1-3 серия)	https://kinokrad.co/255543-vina-vse-serii.html	6	2013	Великобритания	драма	Эдвард Базалгетт	45
5961	Дело Дойлов 4 сезон (13 серия)	https://kinokrad.co/250253-delo-doylov-4-sezon-13-seriya.html	8	2013	Канада	драма, комедия, криминал	Стефан Скайни, Кейт Сэмплз	43
5962	Дневники летних каникул (1-8 серия)	https://kinokrad.co/255545-dnevniki-letnih-kanikul.html	7	2013	Израиль	мелодрама		25
5963	Новости 2 сезон (1-9 серия)	https://kinokrad.co/255547-novosti-2-sezon.html	7	2013	США	драма	Алан Пол, Грег Моттола	60
5964	Цена жизни (1-16 серия)	https://kinokrad.co/6021-cena-zhizni.html	7	2013	Россия	детектив	Вадим Островский	45
5965	Департамент (1-16 серия)	https://kinokrad.co/3527-departament.html	8	2013	Россия	криминал	Армен Арутюнян	45
5966	Американский папаша 9 сезон	https://kinokrad.co/255915-amerikanskiy-papasha-9-sezon.html	8	2013	США	мультфильм, комедия	Рон Хьюгарт, Брент Вудс	22
5967	Две разорившиеся девочки 3 сезон	https://kinokrad.co/256149-dve-razorivshiesya-devochki-3-sezon.html	8	2013	США	комедия	Дон Скардино, Фред Сэвэдж	22
5969	Стрела 2 сезон (1-23 серия)	https://kinokrad.co/11416-strela-2-sezon.html	9	2013	США	фантастика, боевик, драма, криминал, детектив, приключения	Гай Норман Би, Джон Беринг	43
5970	Шеф (1 сезон)	https://kinokrad.co/12071-shef-1-sezon.html	8	2013	Россия	криминал	Олег Ларин, Анатолий Артамонов	45
5971	Избранный 2 сезон (1-6 серия)	https://kinokrad.co/255711-izbrannyy-2-sezon.html	7	2013	США	драма	Тоби Уилкинс, Бен Кетаи	22
5972	Три товарища (1-4 серия)	https://kinokrad.co/11633-tri-tovarischa.html	7	2013	Россия	мелодрама	Тигран Кеосаян	45
5973	Улица потрошителя 2 сезон (1-8 серия)	https://kinokrad.co/11739-ulica-potroshitelya-2-sezon.html	9	2013	Великобритания, Ирландия	детектив	Энди Уилсон, Том Шенклэнд	55
5974	Революция 2 сезон (1-22 серия)	https://kinokrad.co/10897-revolyuciya-2-sezon.html	8	2013	США	фантастика, боевик, драма, приключения	Чарльз Бисон, Стив Бойум	43
5975	Королек птичка певчая	https://kinokrad.co/255466-korolek-ptichka-pevchaya-serial-smotret-onlayn.html	9	2013	Турция	драма, мелодрама, история	Доган Юмит Караджа	45
5976	Шеф 2 сезон (1-32 серия)	https://kinokrad.co/255921-shef-2-sezon.html	8	2013	Россия	криминал	Олег Ларин, Анатолий Артамонов	45
5977	Рейвенсвуд 1 сезон (1-10 серия)	https://kinokrad.co/255928-reyvensvud.html	8	2013	США	ужасы, драма	Рон Лагомарсино, Мик Гэррис	43
5978	Почти человек 1 сезон (1-13 серия)	https://kinokrad.co/256127-pochti-chelovek.html	9	2013	США	фантастика, боевик, драма, криминал	Брэд Андерсон, Сэм Хилл	43
5979	Древние (1 сезон)	https://kinokrad.co/3640-drevnie-1-sezon.html	9	2013	США	ужасы, фантастика, драма	Крис Грисмер, Джесси Уарн	43
5980	До смерти красива 5 сезон (1-13 серия)	https://kinokrad.co/3585-do-smerti-krasiva-5-sezon.html	7	2013	США	фантастика, драма, комедия	Майкл Гроссман, Джеми Бэббит	43
5981	Грейсленд 1 сезон (1-12 серия)	https://kinokrad.co/3445-greyslend.html	7	2013	США	боевик, драма, криминал	Рассел Ли Файн, Ренни Харлин	43
5982	Ты заплатишь за всё (1-2 серия)	https://kinokrad.co/273248-ty-zaplatish-za-vse.html	7	2013	Россия	мелодрама	Дмитрий Сорокин	170
5983	Выжить после (1-12 серия)	https://kinokrad.co/3340-vyzhit-posle.html	8	2013	Россия	триллер	Душан Глигоров, Александр Богуславский	45
5984	Второе дыхание (1-12 серия)	https://kinokrad.co/3326-vtoroe-dyhanie.html	7	2013	Россия	мелодрама	Сергей Пикалов	50
5985	Викинги 2 сезон (1-10 серия)	https://kinokrad.co/3222-vikingi-2-sezon.html	9	2013	Ирландия, Канада	боевик, драма, военный, история	Киаран Доннелли, Кен Джиротти	45
5986	Уэнтуорт 1 сезон (1-10 серия)	https://kinokrad.co/5936-ventvort-1-sezon.html	8	2013	Австралия	криминал	Кевин Карлин, Тори Гаррет	35
5987	Танцы марионеток (1-4 серия)	https://kinokrad.co/5775-tancy-marionetok-.html	7	2013	Россия	детектив	Вячеслав Лавров	45
5988	Менты. Улицы разбитых фонарей 13 сезон (1-40 серия)	https://kinokrad.co/5907-menty.-ulicy-razbityh-fonarey-13-sezon.html	6	2013	Россия	боевик, драма, криминал, приключения	Валерий Захарьев, Вадим Саетгалиев	48
5989	Супер Макс 1 сезон (1-20 серия)	https://kinokrad.co/5728-super-maks-1-sezon.html	9	2013	Россия	комедия	Василий Бархатов, Вадим Данцигер	24
5990	Сонная Лощина 1 сезон (1-13 серия)	https://kinokrad.co/5629-sonnaya-loschina-1-sezon.html	9	2013	США	фантастика, триллер	Лен Уайзман	45
5991	Светофор 5 сезон (1-20 серии)	https://kinokrad.co/277807-svetofor-5-sezon-1-20-serii.html	7	2013	Россия	комедия	Роман Фокин	24
5992	Светофор 6 сезон (1-20 серии)	https://kinokrad.co/277673-svetofor-6-sezon-1-20-serii.html	7	2013	Россия	комедия	Роман Фокин	24
5993	Месть 3 сезон (1-22 серия)	https://kinokrad.co/277559-mest-3-sezon.html	9	2013	США	триллер, драма, мелодрама, детектив	Кеннет Финк, Мэтт Эрл Бисли, Сэнфорд Букставер	43
5994	Во все тяжкие 5 сезон (1-16 серия)	https://kinokrad.co/255778-vo-vse-tyazhkie-5-sezon.html	9	2013	США	триллер, драма, криминал	Мишель Максвелл МакЛарен, Адам Бернштейн	47
5995	Фэйри 3 сезон (1-13 серия)	https://kinokrad.co/274347-zov-krovi-3-sezon.html	9	2013	Канада	фэнтези, криминал	Стив ДиМарко, Рон Мерфи, Джон Фоусет	43
5996	Агенты «Щ.И.Т.» 1 сезон (1-22 серия)	https://kinokrad.co/278529-agenty-sch.i.t.-1-sezon-1-2013.html	8	2013	США	фантастика, боевик, драма	Винс Мисиано, Бобби Рот, Милан Чейлов	45
5997	Птица в клетке (1-4 серия)	https://kinokrad.co/255533-ptica-v-kletke.html	8	2013	Украина	мелодрама	Анатолий Григорьев	45
5998	Розыск 2 сезон (1-16 серия)	https://kinokrad.co/4822-rozysk-2-sezon.html	8	2013	Россия	боевик, детектив	Рустам Мосафир	45
5999	Два отца и два сына (1-20 серия)	https://kinokrad.co/255540-dva-otca-i-dva-syna.html	8	2013	Россия	комедия	Радда Новикова	25
6000	Бомба (1-8 серия)	https://kinokrad.co/3084-bomba.html	8	2013	Украина	боевик, история	Олег Фесенко	35
6001	Любовь с испытательным сроком (1-4 серия)	https://kinokrad.co/255553-lyubov-s-ispytatelnym-srokom.html	7	2013	Украина	мелодрама	Александр Итыгилов мл	48
6002	Истребители (1 сезон)	https://kinokrad.co/281843-istrebiteli-1-sezon-2013.html	8	2013	Россия	драма, военный	Алексей Мурадов	43
6003	Последняя минута 2 сезон (1-6 серия)	https://kinokrad.co/5153-poslednyaya-minuta-2-sezon.html	6	2013	Россия	триллер, драма	Владимир Нахабцев мл., Денис Червяков	45
6004	Братья по обмену	https://kinokrad.co/3099-bratya-po-obmenu.html	9	2013	Россия	комедия	Александр Жигалкин	44
6005	Дневники Кэрри 2 сезон	https://kinokrad.co/255927-dnevniki-kerri-2-sezon-smotret-onlayn.html	8	2013	США	мелодрама, комедия	Эми Хекерлинг, Энди Волк	43
6006	Оборотень / Волчонок (3 сезон)	https://kinokrad.co/255905-oboroten-3-sezon-smotret-onlayn.html	9	2013	США	ужасы, триллер, драма, мелодрама, комедия	Рассел Малкэй, Тим Эндрю	43
6007	Кости 9 сезон (1-24 серия)	https://kinokrad.co/255893-kosti-9-sezon-smotret-onlayn.html	9	2013	США	драма, мелодрама, комедия, криминал, детектив	Иэн Тойнтон, Дуайт Х. Литтл	43
6008	Пятерка за крутость (1-26 серия)	https://kinokrad.co/16817-pyaterka-za-krutost.html	7	2013	США	мультфильм	Джордж Самильски, Себастьян Бродин	21
6009	Рэй Донован 1 сезон (1-12 серия)	https://kinokrad.co/5433-rjey-donovan-1-sezon.html	8	2013	США	драма	Аллен Култер	43
6010	Спецотряд Шторм (1-16 серия)	https://kinokrad.co/255552-specotryad-shtorm.html	8	2013	Россия	драма, криминал	Валерий Ибрагимов	45
6011	Острые козырьки / Заточенные кепки 1 сезон (1-6 серия)	https://kinokrad.co/255546-ostrye-kozyrki-1-sezon.html	8	2013	Великобритания	драма, криминал	Отто Баферст, Том Харпер	60
6012	Друзья, любимые, враги 3 сезон (1-6 серия)	https://kinokrad.co/272213-druzya-lyubimye-vragi-3-sezon.html	7	2013	Франция	комедия	Жером Наварро, Сильви Эйм	52
6013	Пока живу, люблю (1-4 серия)	https://kinokrad.co/255542-poka-zhivu-lyublyu.html	8	2013	США	мелодрама	Эдуард Пальмов	45
6014	Эйнштейн. Теория любви (1-4 серия)	https://kinokrad.co/255541-eynshteyn-teoriya-lyubvi.html	6	2013	Россия	мелодрама, детектив, биография	Елена Николаева	45
6015	Идеальный брак (1-8 серия)	https://kinokrad.co/256140-idealnyy-brak-onlayn.html	7	2013	Россия	мелодрама	Егор Анашкин	52
6016	В поле зрения 3 сезон (1- 23 серия)	https://kinokrad.co/255723-podozrevaemye-3-sezon.html	9	2013	США	боевик, триллер, драма, детектив	Ричард Дж. Льюис, Джеффри Дж. Хант	44
6017	Следствие по телу 3 сезон (1-13 серия)	https://kinokrad.co/17249-sledstvie-po-telu-3-sezon.html	9	2013	США	драма, криминал, детектив	Кристин Мур, Нельсон МакКормик	43
6018	Пятницкий 3 сезон (1-30 серия)	https://kinokrad.co/16821-pyatnickiy-3-sezon.html	8	2013	Россия	драма, детектив	Сергей Лесогоров, Мичислав Юзовский	46
6019	Последний настоящий мужик 2 сезон (1-18 серия)	https://kinokrad.co/16517-posledniy-nastoyaschiy-muzhik-2-sezon.html	7	2013	США	комедия	Джон Пасквин	22
6020	Проспект Бразилии (1-173 серия)	https://kinokrad.co/10736-prospekt-brazilii.html	8	2013	Бразилия	драма, комедия, детектив	Андре Камара, Густаво Фернандез	43
6021	Элементарно (2 сезон)	https://kinokrad.co/12127-serial-elementarno-2-sezon.html	9	2013	США	драма, криминал, детектив	Сет Манн, Джон Полсон	43
6022	Гримм 3 сезон (1-22 серия)	https://kinokrad.co/13966-grimm-3-sezon-onlayn.html	9	2013	США	ужасы, фэнтези, драма, детектив, мистика	Норберто Барба, Терренс О’Хара	43
6023	Место преступления: Лас-Вегас 14 сезон (1-22 серия)	https://kinokrad.co/255738-mesto-prestupleniya-las-vegas-14-sezon.html	8	2013	США, Канада	триллер, драма, криминал, детектив	Кеннет Финк, Ричард Дж. Льюис	43
6024	У меня мало друзей: Далее (1-12 серия)	https://kinokrad.co/280530-u-menya-malo-druzey-dalee.html	8	2013	Япония	аниме, мультфильм, комедия	Тору Китахата	25
6025	Секретные операции (1-3 серия)	https://kinokrad.co/255757-sekretnye-operacii.html	8	2013	США	документальный	Даг Шульц	44
6026	Гавайи 5.0 4 сезон (1-22 серия)	https://kinokrad.co/255753-gavayi-5.0-4-sezon.html	8	2013	США	боевик, драма, криминал	Брайан Спайсер, Стив Бойум	43
6027	Гриффины (12 сезон)	https://kinokrad.co/255907-griffiny-12-sezon.html	8	2013	США	мультфильм, комедия	Питер Шин, Пит Мишелс	22
6028	Анатомия страсти 10 сезон (1-24 серия)	https://kinokrad.co/255909-anatomiya-strasti-10-sezon.html	9	2013	США	драма, мелодрама	Роб Корн, Тони Фелан, Том Верика	43
6029	Мыслить как преступник 9 сезон (1-24 серия)	https://kinokrad.co/255912-myslit-kak-prestupnik-9-sezon.html	8	2013	США, Канада	триллер, драма, криминал, детектив	Гленн Кершоу	43
6030	Люди будущего 1 сезон (1-22 серия)	https://kinokrad.co/4326-lyudi-buduschego-1-sezon.html	8	2013	США	фантастика, драма	Дэнни Кэннон	45
6031	Любовницы 2 сезон (1-13 серия)	https://kinokrad.co/4264-lyubovnicy-2-sezon.html	8	2013	США, Великобритания	триллер, драма	Чери Ноулан, Джон Скотт	43
6032	Мистер Селфридж 1 сезон (1-10 серия)	https://kinokrad.co/280983-mister-selfridzh-1-sezon.html	7	2013	Великобритания	драма	Роб Эванс, Лоуренс Тилль, Энтони Бирн	45
6033	Ловушка (1-24 серия)	https://kinokrad.co/4043-lovushka.html	8	2013	Россия	драма, криминал	Сергей Коротаев	40
6034	Ледников (1-16 серия)	https://kinokrad.co/4001-lednikov.html	8	2013	Россия	детектив	Олег Фомин	42
6035	Заложники (1-15 серия)	https://kinokrad.co/3761-zalozhniki.html	8	2013	США	триллер, драма	Джеффри Начманофф	43
6037	Городские шпионы (1-12 серия)	https://kinokrad.co/3429-gorodskie-shpiony-smotret-onlayn-serial-1-12-vse-serii.html	7	2013	Россия	детектив, приключения	Дмитрий Черкасов	30
6038	Морская полиция: Спецотдел 11 сезон (1-24 серия)	https://kinokrad.co/255933-morskaya-policiya-11-sezon.html	8	2013	США	боевик, триллер, драма, комедия, криминал, детектив	Дэннис Смит, Томас Дж. Райт	43
6039	Деффчонки 3 сезон (1-17 серия)	https://kinokrad.co/8164-deffchonki-3-sezon.html	8	2013	Россия	комедия	Сергей Корягин, Ольга Френкель	24
6040	Быть человеком 3 сезон (1-13 серия)	https://kinokrad.co/274109-byt-chelovekom-3-sezon.html	8	2013	Канада, США	ужасы, фэнтези, драма, мистика	Паоло Барзмен, Стефан Плещински, Адам Кэйн	43
6041	Горюнов (1-36 серия)	https://kinokrad.co/7979-goryunov.html	8	2013	Россия	мелодрама	Владимир Балкашинов, Мирослав Малич	45
6042	Ведьмы Ист-Энда 1 сезон (1-10 серия)	https://kinokrad.co/7615-vedmy-ist-enda-1-sezon.html	9	2013	США	драма	Марк Уотерс	60
6043	Бездна (1-5 серия)	https://kinokrad.co/7351-bezdna.html	8	2013	Великобритания	триллер, драма, детектив	Колм МакКарти	57
6044	Шерлок Холмс (1-16 серия)	https://kinokrad.co/6096-sherlok-holms.html	8	2013	Россия	триллер, детектив, приключения	Андрей Кавун	44
6045	Черный список 1 сезон (1-22 серия)	https://kinokrad.co/6065-chernyy-spisok-1-sezon.html	9	2013	США	драма, криминал	Джо Карнахан	43
6046	Уилфред 3 сезон (1-13 серия)	https://kinokrad.co/272738-uilfred-3-sezon.html	8	2013	США	комедия	Рэндолл Айнхорн, Виктор Нелли мл	22
6047	Человек ниоткуда (1-16 серия)	https://kinokrad.co/6045-chelovek-niotkuda.html	7	2013	Россия	драма, криминал	Евгений Малков	45
6048	ХБ шоу (1-19 серия)	https://kinokrad.co/5977-hb-shou-9.html	7	2013	Россия	комедия	Егор Баранов	23
6049	Рэй Донован 2 сезон (1-12 серия)	https://kinokrad.co/272826-rey-donovan-2-sezon.html	9	2013	США	драма, криминал	Такер Гейтс, Майкл Аппендаль, Дэниэл Эттиэс	43
6050	Обман (1-11 серия)	https://kinokrad.co/275692-obman-1-sezon.html	7	2013	США	драма, криминал, детектив	Джонас Пейт, Эндрю Бернштейн, Тейт Донован	43
6051	Пропавшие без вести (1-30 серия)	https://kinokrad.co/255530-propavshie-bez-vesti.html	8	2013	Россия	детектив	Рен ТВ	35
6052	Выжить После (1-12 серия)	https://kinokrad.co/272428-vyzhit-posle.html	8	2013	Россия	триллер	Душан Глигоров, Александр Богуславский	48
6053	Симпсоны 25 сезон (1-22 серия)	https://kinokrad.co/255479-simpsony-25-sezon.html	10	2013	США	мультфильм, комедия, семейный	Марк Керклэнд	22
6054	Дневники вампира (5 сезон)	https://kinokrad.co/255468-dnevniki-vampira-5-sezon.html	8	2013	США	ужасы, фэнтези, триллер, драма, мелодрама, детектив	Маркос Сига, Крис Грисмер	43
6055	Крик Совы (1-10 серия)	https://kinokrad.co/255458-krik-sovy.html	8	2013	Россия	детектив, криминал	Олег Погодин	45
6056	Водоворот чужих желаний (1-4 серия)	https://kinokrad.co/255555-vodovorot-chuzhih-zhelaniy.html	5	2013	Россия	детектив	Вячеслав Лавров	45
6057	Кто, если не я? (1-24 серия)	https://kinokrad.co/9142-kto-esli-ne-ya.html	8	2013	Россия	драма	Ольга Ланд	46
6058	Семейные обстоятельства (1-44 серия)	https://kinokrad.co/255534-semeynye-obstoyatelstva.html	5	2013	Россия	мелодрама	Сергей Мезенцев	45
6059	Незабудки (1-2 серия)	https://kinokrad.co/255557-nezabudki.html	7	2013	Россия	мелодрама	Юрий Павлов	45
6060	Вина (1-3 серия)	https://kinokrad.co/255543-vina-vse-serii.html	6	2013	Великобритания	драма	Эдвард Базалгетт	45
6061	Дело Дойлов 4 сезон (13 серия)	https://kinokrad.co/250253-delo-doylov-4-sezon-13-seriya.html	8	2013	Канада	драма, комедия, криминал	Стефан Скайни, Кейт Сэмплз	43
6062	Дневники летних каникул (1-8 серия)	https://kinokrad.co/255545-dnevniki-letnih-kanikul.html	7	2013	Израиль	мелодрама		25
6063	Новости 2 сезон (1-9 серия)	https://kinokrad.co/255547-novosti-2-sezon.html	7	2013	США	драма	Алан Пол, Грег Моттола	60
6064	Цена жизни (1-16 серия)	https://kinokrad.co/6021-cena-zhizni.html	7	2013	Россия	детектив	Вадим Островский	45
6065	Департамент (1-16 серия)	https://kinokrad.co/3527-departament.html	8	2013	Россия	криминал	Армен Арутюнян	45
6066	Американский папаша 9 сезон	https://kinokrad.co/255915-amerikanskiy-papasha-9-sezon.html	8	2013	США	мультфильм, комедия	Рон Хьюгарт, Брент Вудс	22
6067	Две разорившиеся девочки 3 сезон	https://kinokrad.co/256149-dve-razorivshiesya-devochki-3-sezon.html	8	2013	США	комедия	Дон Скардино, Фред Сэвэдж	22
6068	Восьмидесятые 3 сезон (1-20 серия)	https://kinokrad.co/13697-vosmidesyatye-3-sezon.html	9	2013	Россия	комедия	Федор Стуков	25
6069	Стрела 2 сезон (1-23 серия)	https://kinokrad.co/11416-strela-2-sezon.html	9	2013	США	фантастика, боевик, драма, криминал, детектив, приключения	Гай Норман Би, Джон Беринг	43
6070	Шеф (1 сезон)	https://kinokrad.co/12071-shef-1-sezon.html	8	2013	Россия	криминал	Олег Ларин, Анатолий Артамонов	45
6071	Избранный 2 сезон (1-6 серия)	https://kinokrad.co/255711-izbrannyy-2-sezon.html	7	2013	США	драма	Тоби Уилкинс, Бен Кетаи	22
6072	Три товарища (1-4 серия)	https://kinokrad.co/11633-tri-tovarischa.html	7	2013	Россия	мелодрама	Тигран Кеосаян	45
6073	Улица потрошителя 2 сезон (1-8 серия)	https://kinokrad.co/11739-ulica-potroshitelya-2-sezon.html	9	2013	Великобритания, Ирландия	детектив	Энди Уилсон, Том Шенклэнд	55
6074	Революция 2 сезон (1-22 серия)	https://kinokrad.co/10897-revolyuciya-2-sezon.html	8	2013	США	фантастика, боевик, драма, приключения	Чарльз Бисон, Стив Бойум	43
6075	Королек птичка певчая	https://kinokrad.co/255466-korolek-ptichka-pevchaya-serial-smotret-onlayn.html	9	2013	Турция	драма, мелодрама, история	Доган Юмит Караджа	45
6076	Шеф 2 сезон (1-32 серия)	https://kinokrad.co/255921-shef-2-sezon.html	8	2013	Россия	криминал	Олег Ларин, Анатолий Артамонов	45
6077	Рейвенсвуд 1 сезон (1-10 серия)	https://kinokrad.co/255928-reyvensvud.html	8	2013	США	ужасы, драма	Рон Лагомарсино, Мик Гэррис	43
6078	Почти человек 1 сезон (1-13 серия)	https://kinokrad.co/256127-pochti-chelovek.html	9	2013	США	фантастика, боевик, драма, криминал	Брэд Андерсон, Сэм Хилл	43
6079	Древние (1 сезон)	https://kinokrad.co/3640-drevnie-1-sezon.html	9	2013	США	ужасы, фантастика, драма	Крис Грисмер, Джесси Уарн	43
6080	До смерти красива 5 сезон (1-13 серия)	https://kinokrad.co/3585-do-smerti-krasiva-5-sezon.html	7	2013	США	фантастика, драма, комедия	Майкл Гроссман, Джеми Бэббит	43
6081	Грейсленд 1 сезон (1-12 серия)	https://kinokrad.co/3445-greyslend.html	7	2013	США	боевик, драма, криминал	Рассел Ли Файн, Ренни Харлин	43
6082	Ты заплатишь за всё (1-2 серия)	https://kinokrad.co/273248-ty-zaplatish-za-vse.html	7	2013	Россия	мелодрама	Дмитрий Сорокин	170
6083	Выжить после (1-12 серия)	https://kinokrad.co/3340-vyzhit-posle.html	8	2013	Россия	триллер	Душан Глигоров, Александр Богуславский	45
6084	Второе дыхание (1-12 серия)	https://kinokrad.co/3326-vtoroe-dyhanie.html	7	2013	Россия	мелодрама	Сергей Пикалов	50
6085	Викинги 2 сезон (1-10 серия)	https://kinokrad.co/3222-vikingi-2-sezon.html	9	2013	Ирландия, Канада	боевик, драма, военный, история	Киаран Доннелли, Кен Джиротти	45
6086	Уэнтуорт 1 сезон (1-10 серия)	https://kinokrad.co/5936-ventvort-1-sezon.html	8	2013	Австралия	криминал	Кевин Карлин, Тори Гаррет	35
6087	Танцы марионеток (1-4 серия)	https://kinokrad.co/5775-tancy-marionetok-.html	7	2013	Россия	детектив	Вячеслав Лавров	45
6088	Менты. Улицы разбитых фонарей 13 сезон (1-40 серия)	https://kinokrad.co/5907-menty.-ulicy-razbityh-fonarey-13-sezon.html	6	2013	Россия	боевик, драма, криминал, приключения	Валерий Захарьев, Вадим Саетгалиев	48
6089	Супер Макс 1 сезон (1-20 серия)	https://kinokrad.co/5728-super-maks-1-sezon.html	9	2013	Россия	комедия	Василий Бархатов, Вадим Данцигер	24
6090	Сонная Лощина 1 сезон (1-13 серия)	https://kinokrad.co/5629-sonnaya-loschina-1-sezon.html	9	2013	США	фантастика, триллер	Лен Уайзман	45
6091	Светофор 5 сезон (1-20 серии)	https://kinokrad.co/277807-svetofor-5-sezon-1-20-serii.html	7	2013	Россия	комедия	Роман Фокин	24
6092	Светофор 6 сезон (1-20 серии)	https://kinokrad.co/277673-svetofor-6-sezon-1-20-serii.html	7	2013	Россия	комедия	Роман Фокин	24
6093	Месть 3 сезон (1-22 серия)	https://kinokrad.co/277559-mest-3-sezon.html	9	2013	США	триллер, драма, мелодрама, детектив	Кеннет Финк, Мэтт Эрл Бисли, Сэнфорд Букставер	43
6094	Во все тяжкие 5 сезон (1-16 серия)	https://kinokrad.co/255778-vo-vse-tyazhkie-5-sezon.html	9	2013	США	триллер, драма, криминал	Мишель Максвелл МакЛарен, Адам Бернштейн	47
6095	Фэйри 3 сезон (1-13 серия)	https://kinokrad.co/274347-zov-krovi-3-sezon.html	9	2013	Канада	фэнтези, криминал	Стив ДиМарко, Рон Мерфи, Джон Фоусет	43
6096	Агенты «Щ.И.Т.» 1 сезон (1-22 серия)	https://kinokrad.co/278529-agenty-sch.i.t.-1-sezon-1-2013.html	8	2013	США	фантастика, боевик, драма	Винс Мисиано, Бобби Рот, Милан Чейлов	45
6097	Птица в клетке (1-4 серия)	https://kinokrad.co/255533-ptica-v-kletke.html	8	2013	Украина	мелодрама	Анатолий Григорьев	45
6098	Розыск 2 сезон (1-16 серия)	https://kinokrad.co/4822-rozysk-2-sezon.html	8	2013	Россия	боевик, детектив	Рустам Мосафир	45
6099	Два отца и два сына (1-20 серия)	https://kinokrad.co/255540-dva-otca-i-dva-syna.html	8	2013	Россия	комедия	Радда Новикова	25
6100	Бомба (1-8 серия)	https://kinokrad.co/3084-bomba.html	8	2013	Украина	боевик, история	Олег Фесенко	35
6101	Майор полиции (1-16 серия)	https://kinokrad.co/4380-mayor-policii.html	5	2013	Россия	детектив	Артем Антонов	45
6102	Причал любви и надежды (1-4 серия)	https://kinokrad.co/255532-prichal-lyubvi-i-nadezhdy.html	5	2013	Россия	мелодрама	Максим Бриус	43
6103	Кулинар 2 сезон (1-20 серия)	https://kinokrad.co/3976-kulinar-2-sezon.html	7	2013	Украина	приключения	Андрей Иванов	45
6104	Аббатство Даунтон 4 сезон (1-9 серия)	https://kinokrad.co/255721-abbatstvo-daunton-4-sezon.html	7	2013	Великобритания	драма	Брайан Персивал, Энди Годдар	54
6105	Ангел в сердце (1-4 серия)	https://kinokrad.co/7224-angel-v-serdce.html	7	2013	Россия	мелодрама	Елена Николаева	52
6106	Бывает и хуже 5 сезон	https://kinokrad.co/275567-byvaet-i-huzhe-5.html	8	2013	США	комедия	Ли Шаллат Чемел, Эллиот Хегарти	22
6107	Дракула (1-10 серия)	https://kinokrad.co/256128-drakula-vse-serii.html	9	2013	США	ужасы, драма	Энди Годдар, Брайан Келли	43
6108	До смерти красива 6 сезон (1-13 серия)	https://kinokrad.co/255561-do-smerti-krasiva-6-sezon.html	7	2013	США	фантастика, драма, комедия	Майкл Гроссман	43
6109	Неопалимая купина (1-3 серия)	https://kinokrad.co/276888-neopalimaya-kupina.html	5	2013	Чехия	драма, биография	Агнешка Холланд	80
6110	Родина (2 сезон)	https://kinokrad.co/312494-rodina-2-sezon-2012.html	8	2012	США	триллер, драма, криминал, детектив	Лесли Линка Глаттер, Майкл Куэста, Дэниэл Эттиэс	55
6111	Американская история ужасов (2 сезон)	https://kinokrad.co/335089-amerikanskaya-istoriya-uzhasov-2-sezon.html	7	2012	США	ужасы, триллер, драма	Брэдли Букер, Альфонсо Гомес-Рехон, Майкл Аппендаль	43
6112	Скандал (7 сезон)	https://kinokrad.co/323231-skandal-7-sezon.html	7	2012	США	триллер, драма	Том Верика, Оливер Бокельберг, Эллисон Лидди	43
6113	Правильная жена 4 сезон (1-22 серия)	https://kinokrad.co/274016-pravilnaya-zhena-4-sezon.html	7	2012	США	драма, криминал, детектив	Розмари Родригез, Майкл Цинберг, Брук Кеннеди	43
6114	Сверхъестественное (8 сезон)	https://kinokrad.co/255885-sverhestestvennoe-8-sezon.html	9	2012	США	ужасы, фэнтези, триллер, драма, детектив, мистика	Роберт Сингер, Филип Сгриккиа	43
6115	Ходячие мертвецы 3 сезон (все серии)	https://kinokrad.co/256159-hodyachie-mertvecy-3-sezons-18-04.html	9	2012	США	ужасы, триллер, драма	Эрнест Р. Дикерсон, Грег Никотеро	43
6116	Девочки (1 сезон)	https://kinokrad.co/285721-devochki-1-sezon-2012.html	7	2012	США	драма, комедия	Лина Данэм, Джесси Перец, Ричард Шепард	30
6117	Дом в горах (1 сезон)	https://kinokrad.co/328637-dom-v-gorah-1-sezon.html	5	2012	Эстония	триллер, драма, криминал, детектив	Герда Кордемец	50
6118	Милые обманщицы (3 сезон)	https://kinokrad.co/255782-milye-obmanschicy-3-sezon-2012-onlayn-serial.html	7	2012	США	триллер, драма, детектив	Норман Бакли, Рон Лагомарсино	43
6119	Без лица (2 сезон)	https://kinokrad.co/320998-bez-lica-2-sezon-2012.html	6	2012	США	игра, реальное ТВ	Питер Ней, Джейсон С. Эдвардс	43
6120	Лига (4 сезон)	https://kinokrad.co/304292-liga-4-sezon-2012.html	5	2012	США	комедия, спорт	Джефф Шеффер, Джеки Маркус	22
6121	Грабь награбленное (5 сезон)	https://kinokrad.co/302681-grab-nagrablennoe-5-sezon-2012.html	9	2012	США	боевик, криминал, детектив	Марк Роскин, Дин Девлин, Джонатан Фрейкс	43
6122	Алькатрас (1 сезон)	https://kinokrad.co/302225-alkatras-1-sezon-2012.html	7	2012	США, Канада	фантастика, боевик, триллер, детектив	Джек Бендер, Пол А. Эдвардс, Брэд Андерсон	43
6123	Убийство (2 сезон)	https://kinokrad.co/301226-ubiystvo-2-sezon-2012.html	9	2012	США, Канада	триллер, драма, криминал, детектив	Эдвард Бьянчи, Николь Кэссел, Фил Абрахам	43
6124	Тост из Лондона (1 сезон)	https://kinokrad.co/301913-tost-iz-londona-1-sezon-2012.html	5	2012	Великобритания	комедия	Майкл Камминг	30
6125	Обед в пятницу вечером (2 сезон)	https://kinokrad.co/301856-obed-v-pyatnicu-vecherom-2-sezon-2012.html	6	2012	Великобритания	комедия	Мартин Деннис, Стив Бенделак	22
6126	Валландер (3 сезон)	https://kinokrad.co/298690-vallander-3-sezon-2012.html	7	2012	Великобритания, Швеция, США, Германия	триллер, криминал, драма, детектив	Филип Мартин, Найал МакКормик, Хетти Макдональд	90
6127	Изабелла (1 сезон)	https://kinokrad.co/298840-izabella-1-sezon-2012.html	7	2012	Испания	история	Хорди Фрадес, Ориоль Феррер, Сальвадор Гарсия Руис	60
6128	Байкеры: Братья по оружию (1 сезон)	https://kinokrad.co/318622-baykery-bratya-po-oruzhiyu-1-sezon-2012.html	7	2012	Австралия	драма	Питер Андрикидис	43
6129	Затроленный / Супермаркет (2 сезон)	https://kinokrad.co/318474-zatrolennyy-2-sezon-2012.html	5	2012	Великобритания	комедия	Пол Харрисон, Джонатан Гершфилд, Пол Уолкер	26
6130	Под прикрытием (3 сезон)	https://kinokrad.co/318410-pod-prikrytiem-3-sezon-2012.html	6	2012	Болгария	боевик, драма, криминал	Виктор Божинов, Мартин Макариев, Zoran Petrovski	60
6131	Лонгмайр (5 сезон)	https://kinokrad.co/307139-longmayr-5-sezon.html	7	2012	США	боевик, драма, криминал, вестерн	Джеймс М. Муро, Кристофер Чулак, Майкл Оффер	43
6132	Дядя (1 сезон)	https://kinokrad.co/312030-dyadya-1-sezon-2016.html	7	2012	Великобритания	комедия	Oliver Refson	30
6133	Кайф с доставкой (1 сезон)	https://kinokrad.co/306932-kayf-s-dostavkoy-1-sezon.html	6	2012	США	комедия	Катя Бликфелд, Бен Синклер, Сара Войлет-Блайс	30
6134	Скотт и Бейли (1 сезон)	https://kinokrad.co/306809-skott-i-beyli-1-sezon.html	9	2012	Великобритания	драма, детектив, криминал	Мораг Фуллартон, Чина Му-Ен, Пол Уолкер	43
6135	Скотт и Бейли (2 сезон)	https://kinokrad.co/306812-skott-i-beyli-2-sezon.html	8	2012	Великобритания	драма, детектив, криминал	Мораг Фуллартон, Чина Му-Ен, Пол Уолкер	43
6136	Стелла (5 сезон)	https://kinokrad.co/306821-stella-5-sezon.html	6	2012	Великобритания	драма, комедия	Эшли Вэй, Тони Дау, Саймон Делани	60
6166	Орлиное сердце (2 сезон)	https://kinokrad.co/300811-orlinoe-serdce-2-sezon-2012.html	5	2012	США	боевик, комедия	Джейсон Уолинер, Эрик Аппель, Джей Карас	11
6137	Борджиа (2 сезон)	https://kinokrad.co/302450-bordzhia-2-sezon-2012.html	8	2012	Венгрия, Ирландия, Канада	драма, криминал, история	Нил Джордан, Кари Скогланд, Джон Мэйбери	55
6138	Закусочная Боба (3 сезон)	https://kinokrad.co/309938-zakusochnaya-boba-3-sezon-2012.html	5	2012	США	мультфильм, комедия	Бернард Дерриман, Дженнифер Койл, Тайри Диллихей	22
6139	Закусочная Боба (2 сезон)	https://kinokrad.co/309934-zakusochnaya-boba-2-sezon-2012.html	5	2012	США	мультфильм, комедия	Бернард Дерриман, Дженнифер Койл, Тайри Диллихей	22
6140	Безмолвный свидетель (15 сезон)	https://kinokrad.co/299934-bezmolvnyy-svidetel-15-sezon-2012.html	7	2012	Великобритания	драма, криминал, детектив	Тадеус О’Салливан, Дэвид Ричардс, Ричард Сайни	43
6141	Шерлок (2 сезон)	https://kinokrad.co/301559-sherlok-2-sezon-2012.html	9	2012	Великобритания, США	триллер, драма, криминал, детектив	Пол МакГиган, Ник Харран, Коки Гидройч	90
6142	Реальные пацаны (4 сезон)	https://kinokrad.co/307847-realnye-pacany-4-sezon-2012.html	6	2012	Россия	комедия	Жанна Кадникова	24
6143	По долгу службы (1 сезон)	https://kinokrad.co/293341-po-dolgu-sluzhby-1-sezon-2012.html	7	2012	Великобритания	триллер, драма, криминал	Дуглас Маккиннон, Дэвид Кэффри, Дэниэл Неттхейм	60
6144	Умар ибн аль-Хаттаб (1 сезон)	https://kinokrad.co/318958-umar-ibn-al-hattab-1-sezon-2012.html	8	2012	Марокко	драма, военный, биография, история	Хэйтем Али	45
6145	Ниндзяго: Мастера Кружитцу (2 сезон)	https://kinokrad.co/318342-nindzyago-mastera-kruzhitcu-2-sezon-2012.html	6	2012	Дания, Сингапур, Канада, США	мультфильм, фантастика, фэнтези, боевик, комедия, приключения, семейный	Петер Хауснер, Майкл Хельмут Хансен, Трюлле Вильструп	30
6146	Закон и порядок. Специальный корпус (14 сезон)	https://kinokrad.co/307421-zakon-i-poryadok.-specialnyy-korpus-14-sezon-2012.html	7	2012	США	триллер, драма, криминал, детектив	Дэвид Платт, Питер Лето, Жан Де Сегонзак	43
6147	Стрела (5 сезон)	https://kinokrad.co/305729-strela-5-sezon.html	7	2012	США	фантастика, боевик, драма, криминал, детектив, приключения	Джон Беринг, Майкл Шульц, Глен Винтер	43
6148	Пустая корона (1 сезон)	https://kinokrad.co/293938-pustaya-korona-1-sezon-2012.html	7	2012	Великобритания	драма, история	Доминик Кук, Ричард Эйр, Руперт Гулд	132
6149	Рейк (2 сезон)	https://kinokrad.co/298372-reyk-2-sezon-2012.html	5	2012	Австралия	драма, комедия	Питер Дункан, Роуэн Вудс, Джесика Хоббс	43
6150	Роковые ошибки Тодда Маргарета (2 сезон)	https://kinokrad.co/298393-rokovye-oshibki-todda-margareta-2-sezon-2012.html	5	2012	США, Великобритания	комедия	Алекс Хардкасл, Бен Грегор, Джон Хардвик	22
6151	Чистильщик (1 сезон)	https://kinokrad.co/320438-chistilschik-1-sezon-2012.html	6	2012	Германия	комедия	Арни Фельдхузен	26
6152	Истсайдеры (1 сезон)	https://kinokrad.co/291640-istsaydery-1-sezon-2012.html	5	2012	США	драма	Кит Уильямсон	11
6153	Неприрученные (7 сезон)	https://kinokrad.co/307577-nepriruchennye-7-sezon-2012.html	6	2012	Великобритания	драма	Николас Лафлэнд, Пол Харрисон, Морис Филлипс	47
6154	Тайный круг (1 сезон)	https://kinokrad.co/301118-taynyy-krug-1-sezon-2012.html	9	2012	США, Канада	ужасы, фэнтези, драма, мелодрама	Лиз Фридлендер, Дэвид Баррет, Джон Фоусет	43
6155	Хандерби (1 сезон)	https://kinokrad.co/319714-handerbi-1-sezon-2012.html	5	2012	Великобритания	комедия	Тони Дау	30
6156	Скандал (2 сезон)	https://kinokrad.co/294673-skandal-2-sezon-2012.html	7	2012	США	триллер, драма	Том Верика, Оливер Бокельберг, Эллисон Лидди	43
6157	Скандал (1 сезон)	https://kinokrad.co/294670-skandal-1-sezon-2012.html	7	2012	США	триллер, драма	Том Верика, Оливер Бокельберг, Эллисон Лидди	43
6158	Военнопленный (2 сезон)	https://kinokrad.co/286783-voennoplennyy-2-sezon-2012.html	6	2012	Израиль	драма	Гидеон Рафф	55
6159	Серые кардиналы / Закулисные игры (1 сезон)	https://kinokrad.co/318234-serye-kardinaly-zakulisnye-igry-1-sezon-2012.html	5	2012	Франция	драма	Фридерик Теллье, Жан-Марк Брондоло, Фредерик Гарсон	
6160	Расследования Мердока (5 сезон)	https://kinokrad.co/293080-rassledovaniya-merdoka-5-sezon-2012.html	8	2012	Канада, Великобритания	драма, криминал, детектив	Лори Линд, Кэл Кунс, Харви Кросслэнд	43
6161	Папочка (1 сезон)	https://kinokrad.co/316658-papochka-1-sezon-2012.html	6	2012	США	драма, мелодрама, комедия, семейный	Майкл Лембек, Арлин Санфорд, Робби Кантримэн	22
6162	Город мечты (1 сезон)	https://kinokrad.co/302819-gorod-mechty-1-sezon-2012.html	7	2012	США	драма, криминал, детектив	Эдвард Бьянчи, Саймон Селлан Джоунс, Дэвид Петрарка	50
6163	Интерны (3 сезон)	https://kinokrad.co/307832-interny-3-sezon-2012.html	6	2012	Россия	комедия	Максим Пежемский, Заур Болотаев, Милан Килибарда	25
6164	Черепашки-ниндзя (1 сезон)	https://kinokrad.co/291628-cherepashki-nindzya-1-sezon-2012.html	9	2012	США	мультфильм, фантастика, боевик, драма, комедия, приключения, семейный	Сиро Ниели, Майкл Чанг, Алан Ван	22
6165	Куку (1 сезон)	https://kinokrad.co/292357-kuku-1-sezon-2012.html	7	2012	Великобритания	комедия	Бен Тэйлор, Пол Мерфи	22
6167	Люди Альфа (2 сезон)	https://kinokrad.co/300773-lyudi-alfa-2-sezon-2012.html	8	2012	США	фантастика, боевик, триллер, драма	Ник Копус, Мэттью Хатингс, Лесли Либман	43
6168	Дурман (8 сезон)	https://kinokrad.co/286601-durman-8-sezon-2012.html	8	2012	США	драма, комедия, криминал	Крейг Зиск, Майкл Трим, Скотт Эллис	25
6169	Вера (2 сезон)	https://kinokrad.co/287353-vera-2-sezon-2012.html	8	2012	Великобритания	драма, криминал, детектив	Уильям Синклер, Питер Хор, Пол Уиттингтон	95
6170	В надежде на спасение (1 сезон)	https://kinokrad.co/302996-v-nadezhde-na-spasenie-1-sezon-2012.html	7	2012	Канада	фэнтези, драма, мистика	Дэвид Уэллингтон, Грегори Смит, Стив ДиМарко	44
6171	Сестра Джеки (4 сезон)	https://kinokrad.co/285939-sestra-dzheki-4-sezon-2012.html	4	2012	США	драма, комедия	Пол Фиг, Джесси Перец, Брендан Уолш	22
6172	Синдикат (1 сезон)	https://kinokrad.co/285875-sindikat-1-sezon-2012.html	5	2012	Великобритания	драма	Кэй Меллор, Доминик Леклерк, Сидни Макартни	60
6173	Дорогой доктор (4 сезон)	https://kinokrad.co/285871-dorogoy-doktor-4-sezon-2012.html	7	2012	США	драма, комедия	Мэттью Пенн, Эмиль Левисетти, Майкл Ройч	43
6174	Время приключений (4 сезон)	https://kinokrad.co/292687-vremya-priklyucheniy-4-sezon-2012.html	8	2012	США	мультфильм, фэнтези, комедия, приключения, семейный	Ларри Лэйчлитер, Элизабет Ито, Андрес Салафф	22
6175	Правосудие (3 сезон)	https://kinokrad.co/285113-pravosudie-3-sezon-2012.html	8	2012	США	боевик, триллер, драма, криминал	Адам Аркин, Джон Эвнет, Питер Уэрнер	43
6176	Анатомия страсти (9 сезон)	https://kinokrad.co/285353-anatomiya-strasti-9-sezon-2012.html	8	2012	США	драма, мелодрама	Роб Корн, Шандра Уилсон, Тони Фелан	43
6177	Трансформеры: Прайм (2 сезон)	https://kinokrad.co/283655-transformery-praym-2-sezon-2012.html	9	2012	США	мультфильм, фантастика, боевик, приключения	Дэвид Хартман, Шонт Нигогосян, Винтон Хёк	22
6178	Грань (5 сезон)	https://kinokrad.co/283938-gran-5-sezon-2012.html	9	2012	США, Канада	фантастика, триллер, драма, детектив	Джо Чаппелль, Брэд Андерсон, Фред Туа	43
6179	Из рода волков / Волчья кровь (1 сезон)	https://kinokrad.co/292138-iz-roda-volkov-volchya-krov-1-sezon-2012.html	8	2012	Великобритания	фэнтези, семейный	Jermain Julien, Мэттью Эванс, Эндрю Ганн	22
6180	Джек Айриш (1 сезон)	https://kinokrad.co/292132-dzhek-ayrish-1-sezon-2012.html	7	2012	Австралия	криминал	Киран Дарси-Смит, Марк Джофф, Дэниэл Неттхейм	52
6181	Кости (8 сезон)	https://kinokrad.co/286993-kosti-8-sezon-2012.html	8	2012	США	драма, мелодрама, комедия, криминал, детектив	Иэн Тойнтон, Дуайт Х. Литтл, Жанно Шварц	43
6182	Проект Минди (1 сезон)	https://kinokrad.co/288265-proekt-mindi-1-sezon-2012.html	6	2012	США	комедия	Майкл Алан Спиллер, Майкл Уивер, Дэвид Роджерс	22
6183	Неугомонная девчонка	https://kinokrad.co/279908-neugomonnaya-devchonka-8-seriya.html	8	2012	Тайвань	комедия	Эфф Аимпапорн	110
6184	Американская семейка (4 сезон)	https://kinokrad.co/285751-amerikanskaya-semeyka-4-sezon-2012.html	8	2012	США	комедия	Гейл Манкусо, Майкл Алан Спиллер, Джейсон Уайнер	22
6185	Парки и зоны отдыха (5 сезон)	https://kinokrad.co/285707-parki-i-zony-otdyha-5-sezon-2012.html	6	2012	США	комедия	Дин Холлэнд, Майкл Шур, Кен Уиттингэм	21
6186	Мелисса и Джоуи (2 сезон)	https://kinokrad.co/285679-melissa-i-dzhoui-2-sezon-2012.html	7	2012	США	комедия	Роб Шиллер, Джеффри Мэлман, Дэвид Трейнер	22
6187	Наруто: Ураганные хроники (13 сезон)	https://kinokrad.co/285305-naruto-uragannye-hroniki-13-sezon-2012.html	7	2012	Япония	аниме, мультфильм, фантастика, боевик, триллер, приключения	Хаято Датэ, Юки Эри	24
6188	Наруто: Ураганные хроники (12 сезон)	https://kinokrad.co/285303-naruto-uragannye-hroniki-12-sezon-2012.html	7	2012	Япония	аниме, мультфильм, фантастика, боевик, триллер, приключения	Хаято Датэ, Юки Эри	24
6189	Миранда (3 сезон)	https://kinokrad.co/280743-miranda-3-sezon-7-seriya.html	9	2012	Великобритания	комедия	Джульетт Мэй, Мэнди Флетчер	22
6190	Мужчина королевы Ин Хён (1 сезон)	https://kinokrad.co/284451-muzhchina-korolevy-in-hjon-1-sezon-2012.html	7	2012	Корея Южная	фантастика, мелодрама, комедия	Пён-Су Ким	45
6191	Луни Тюнз шоу (2 сезон)	https://kinokrad.co/284415-luni-tyunz-shou-2-sezon-2012.html	8	2012	США	мультфильм, комедия, семейный	Сет Кирсли, Джефф Сьергей, Спайк Брандт	22
6192	Суета (2 сезон)	https://kinokrad.co/284991-sueta-2-sezon-2012.html	5	2012	США	драма	Себастьян Лакос	
6193	Босс (2 сезон)	https://kinokrad.co/284369-boss-2-sezon-2012.html	7	2012	США	драма, криминал	Жан Де Сегонзак, Марио Ван Пиблз, Джим МакКэй	56
6194	Блудливая Калифорния (5 сезон)	https://kinokrad.co/281814-bludlivaya-kaliforniya-5-sezon-2012.html	8	2012	США	драма, комедия	Дэвид Фон Энкен, Адам Бернштейн, Джон Дал	28
6195	Зои Харт из южного штата (2 сезон)	https://kinokrad.co/283495-zoi-hart-iz-yuzhnogo-shtata-2-sezon-2012.html	8	2012	США	драма, мелодрама, комедия	Дэвид Пэймер, Тим Мэтисон, Джеймс Хейман	43
6196	Гимнастки (3 сезон)	https://kinokrad.co/282897-gimnastki-3-sezon-2012.html	9	2012	США	драма, спорт	Дэвид Пэймер, Крис Грисмер, Стив Майнер	43
6197	Лонгмайр (1 сезон)	https://kinokrad.co/291328-longmayr-1-sezon-2012.html	6	2012	США	боевик, драма, криминал, вестерн	Кристофер Чулак, Джеймс М. Муро, Майкл Оффер	43
6198	Морская полиция: Лос-Анджелес (4 сезон)	https://kinokrad.co/291205-morskaya-policiya-los-andzheles-4-sezon-2012.html	9	2012	США	триллер, драма, криминал, детектив	Тони Уормби, Терренс О’Хара, Дэннис Смит	43
6199	Эпизоды (2 сезон)	https://kinokrad.co/290896-jepizody-2-sezon-2012.html	7	2012	США, Великобритания	комедия	Иэн Б. МакДональд, Джим Филд Смит, Джеймс Гриффитс	28
6200	Леди-детектив мисс Фрайни Фишер (1 сезон)	https://kinokrad.co/282220-ledi-detektiv-miss-frayni-fisher-1-sezon-2012.html	8	2012	Австралия	драма, криминал, детектив	Тони Тилс, Питер Андрикидис, Даина Рейд	43
6201	Майор полиции (1-16 серия)	https://kinokrad.co/4380-mayor-policii.html	5	2013	Россия	детектив	Артем Антонов	45
6202	Причал любви и надежды (1-4 серия)	https://kinokrad.co/255532-prichal-lyubvi-i-nadezhdy.html	5	2013	Россия	мелодрама	Максим Бриус	43
6203	Кулинар 2 сезон (1-20 серия)	https://kinokrad.co/3976-kulinar-2-sezon.html	7	2013	Украина	приключения	Андрей Иванов	45
6204	Аббатство Даунтон 4 сезон (1-9 серия)	https://kinokrad.co/255721-abbatstvo-daunton-4-sezon.html	7	2013	Великобритания	драма	Брайан Персивал, Энди Годдар	54
6205	Ангел в сердце (1-4 серия)	https://kinokrad.co/7224-angel-v-serdce.html	7	2013	Россия	мелодрама	Елена Николаева	52
6206	Бывает и хуже 5 сезон	https://kinokrad.co/275567-byvaet-i-huzhe-5.html	8	2013	США	комедия	Ли Шаллат Чемел, Эллиот Хегарти	22
6207	Дракула (1-10 серия)	https://kinokrad.co/256128-drakula-vse-serii.html	9	2013	США	ужасы, драма	Энди Годдар, Брайан Келли	43
6208	До смерти красива 6 сезон (1-13 серия)	https://kinokrad.co/255561-do-smerti-krasiva-6-sezon.html	7	2013	США	фантастика, драма, комедия	Майкл Гроссман	43
6209	Неопалимая купина (1-3 серия)	https://kinokrad.co/276888-neopalimaya-kupina.html	5	2013	Чехия	драма, биография	Агнешка Холланд	80
6210	Родина (2 сезон)	https://kinokrad.co/312494-rodina-2-sezon-2012.html	8	2012	США	триллер, драма, криминал, детектив	Лесли Линка Глаттер, Майкл Куэста, Дэниэл Эттиэс	55
6211	Американская история ужасов (2 сезон)	https://kinokrad.co/335089-amerikanskaya-istoriya-uzhasov-2-sezon.html	7	2012	США	ужасы, триллер, драма	Брэдли Букер, Альфонсо Гомес-Рехон, Майкл Аппендаль	43
6212	Скандал (7 сезон)	https://kinokrad.co/323231-skandal-7-sezon.html	7	2012	США	триллер, драма	Том Верика, Оливер Бокельберг, Эллисон Лидди	43
6213	Правильная жена 4 сезон (1-22 серия)	https://kinokrad.co/274016-pravilnaya-zhena-4-sezon.html	7	2012	США	драма, криминал, детектив	Розмари Родригез, Майкл Цинберг, Брук Кеннеди	43
6214	Сверхъестественное (8 сезон)	https://kinokrad.co/255885-sverhestestvennoe-8-sezon.html	9	2012	США	ужасы, фэнтези, триллер, драма, детектив, мистика	Роберт Сингер, Филип Сгриккиа	43
6215	Ходячие мертвецы 3 сезон (все серии)	https://kinokrad.co/256159-hodyachie-mertvecy-3-sezons-18-04.html	9	2012	США	ужасы, триллер, драма	Эрнест Р. Дикерсон, Грег Никотеро	43
6216	Девочки (1 сезон)	https://kinokrad.co/285721-devochki-1-sezon-2012.html	7	2012	США	драма, комедия	Лина Данэм, Джесси Перец, Ричард Шепард	30
6217	Дом в горах (1 сезон)	https://kinokrad.co/328637-dom-v-gorah-1-sezon.html	5	2012	Эстония	триллер, драма, криминал, детектив	Герда Кордемец	50
6218	Милые обманщицы (3 сезон)	https://kinokrad.co/255782-milye-obmanschicy-3-sezon-2012-onlayn-serial.html	7	2012	США	триллер, драма, детектив	Норман Бакли, Рон Лагомарсино	43
6219	Без лица (2 сезон)	https://kinokrad.co/320998-bez-lica-2-sezon-2012.html	6	2012	США	игра, реальное ТВ	Питер Ней, Джейсон С. Эдвардс	43
6220	Лига (4 сезон)	https://kinokrad.co/304292-liga-4-sezon-2012.html	5	2012	США	комедия, спорт	Джефф Шеффер, Джеки Маркус	22
6221	Грабь награбленное (5 сезон)	https://kinokrad.co/302681-grab-nagrablennoe-5-sezon-2012.html	9	2012	США	боевик, криминал, детектив	Марк Роскин, Дин Девлин, Джонатан Фрейкс	43
6222	Алькатрас (1 сезон)	https://kinokrad.co/302225-alkatras-1-sezon-2012.html	7	2012	США, Канада	фантастика, боевик, триллер, детектив	Джек Бендер, Пол А. Эдвардс, Брэд Андерсон	43
6223	Убийство (2 сезон)	https://kinokrad.co/301226-ubiystvo-2-sezon-2012.html	9	2012	США, Канада	триллер, драма, криминал, детектив	Эдвард Бьянчи, Николь Кэссел, Фил Абрахам	43
6224	Тост из Лондона (1 сезон)	https://kinokrad.co/301913-tost-iz-londona-1-sezon-2012.html	5	2012	Великобритания	комедия	Майкл Камминг	30
6225	Обед в пятницу вечером (2 сезон)	https://kinokrad.co/301856-obed-v-pyatnicu-vecherom-2-sezon-2012.html	6	2012	Великобритания	комедия	Мартин Деннис, Стив Бенделак	22
6226	Валландер (3 сезон)	https://kinokrad.co/298690-vallander-3-sezon-2012.html	7	2012	Великобритания, Швеция, США, Германия	триллер, криминал, драма, детектив	Филип Мартин, Найал МакКормик, Хетти Макдональд	90
6227	Изабелла (1 сезон)	https://kinokrad.co/298840-izabella-1-sezon-2012.html	7	2012	Испания	история	Хорди Фрадес, Ориоль Феррер, Сальвадор Гарсия Руис	60
6228	Байкеры: Братья по оружию (1 сезон)	https://kinokrad.co/318622-baykery-bratya-po-oruzhiyu-1-sezon-2012.html	7	2012	Австралия	драма	Питер Андрикидис	43
6229	Затроленный / Супермаркет (2 сезон)	https://kinokrad.co/318474-zatrolennyy-2-sezon-2012.html	5	2012	Великобритания	комедия	Пол Харрисон, Джонатан Гершфилд, Пол Уолкер	26
6230	Под прикрытием (3 сезон)	https://kinokrad.co/318410-pod-prikrytiem-3-sezon-2012.html	6	2012	Болгария	боевик, драма, криминал	Виктор Божинов, Мартин Макариев, Zoran Petrovski	60
6231	Лонгмайр (5 сезон)	https://kinokrad.co/307139-longmayr-5-sezon.html	7	2012	США	боевик, драма, криминал, вестерн	Джеймс М. Муро, Кристофер Чулак, Майкл Оффер	43
6232	Дядя (1 сезон)	https://kinokrad.co/312030-dyadya-1-sezon-2016.html	7	2012	Великобритания	комедия	Oliver Refson	30
6233	Кайф с доставкой (1 сезон)	https://kinokrad.co/306932-kayf-s-dostavkoy-1-sezon.html	6	2012	США	комедия	Катя Бликфелд, Бен Синклер, Сара Войлет-Блайс	30
6234	Скотт и Бейли (1 сезон)	https://kinokrad.co/306809-skott-i-beyli-1-sezon.html	9	2012	Великобритания	драма, детектив, криминал	Мораг Фуллартон, Чина Му-Ен, Пол Уолкер	43
6235	Скотт и Бейли (2 сезон)	https://kinokrad.co/306812-skott-i-beyli-2-sezon.html	8	2012	Великобритания	драма, детектив, криминал	Мораг Фуллартон, Чина Му-Ен, Пол Уолкер	43
6236	Стелла (5 сезон)	https://kinokrad.co/306821-stella-5-sezon.html	6	2012	Великобритания	драма, комедия	Эшли Вэй, Тони Дау, Саймон Делани	60
6237	Борджиа (2 сезон)	https://kinokrad.co/302450-bordzhia-2-sezon-2012.html	8	2012	Венгрия, Ирландия, Канада	драма, криминал, история	Нил Джордан, Кари Скогланд, Джон Мэйбери	55
6238	Закусочная Боба (3 сезон)	https://kinokrad.co/309938-zakusochnaya-boba-3-sezon-2012.html	5	2012	США	мультфильм, комедия	Бернард Дерриман, Дженнифер Койл, Тайри Диллихей	22
6239	Закусочная Боба (2 сезон)	https://kinokrad.co/309934-zakusochnaya-boba-2-sezon-2012.html	5	2012	США	мультфильм, комедия	Бернард Дерриман, Дженнифер Койл, Тайри Диллихей	22
6240	Безмолвный свидетель (15 сезон)	https://kinokrad.co/299934-bezmolvnyy-svidetel-15-sezon-2012.html	7	2012	Великобритания	драма, криминал, детектив	Тадеус О’Салливан, Дэвид Ричардс, Ричард Сайни	43
6241	Шерлок (2 сезон)	https://kinokrad.co/301559-sherlok-2-sezon-2012.html	9	2012	Великобритания, США	триллер, драма, криминал, детектив	Пол МакГиган, Ник Харран, Коки Гидройч	90
6242	Реальные пацаны (4 сезон)	https://kinokrad.co/307847-realnye-pacany-4-sezon-2012.html	6	2012	Россия	комедия	Жанна Кадникова	24
6243	По долгу службы (1 сезон)	https://kinokrad.co/293341-po-dolgu-sluzhby-1-sezon-2012.html	7	2012	Великобритания	триллер, драма, криминал	Дуглас Маккиннон, Дэвид Кэффри, Дэниэл Неттхейм	60
6244	Умар ибн аль-Хаттаб (1 сезон)	https://kinokrad.co/318958-umar-ibn-al-hattab-1-sezon-2012.html	8	2012	Марокко	драма, военный, биография, история	Хэйтем Али	45
6245	Ниндзяго: Мастера Кружитцу (2 сезон)	https://kinokrad.co/318342-nindzyago-mastera-kruzhitcu-2-sezon-2012.html	6	2012	Дания, Сингапур, Канада, США	мультфильм, фантастика, фэнтези, боевик, комедия, приключения, семейный	Петер Хауснер, Майкл Хельмут Хансен, Трюлле Вильструп	30
6246	Закон и порядок. Специальный корпус (14 сезон)	https://kinokrad.co/307421-zakon-i-poryadok.-specialnyy-korpus-14-sezon-2012.html	7	2012	США	триллер, драма, криминал, детектив	Дэвид Платт, Питер Лето, Жан Де Сегонзак	43
6247	Стрела (5 сезон)	https://kinokrad.co/305729-strela-5-sezon.html	7	2012	США	фантастика, боевик, драма, криминал, детектив, приключения	Джон Беринг, Майкл Шульц, Глен Винтер	43
6248	Пустая корона (1 сезон)	https://kinokrad.co/293938-pustaya-korona-1-sezon-2012.html	7	2012	Великобритания	драма, история	Доминик Кук, Ричард Эйр, Руперт Гулд	132
6249	Рейк (2 сезон)	https://kinokrad.co/298372-reyk-2-sezon-2012.html	5	2012	Австралия	драма, комедия	Питер Дункан, Роуэн Вудс, Джесика Хоббс	43
6250	Роковые ошибки Тодда Маргарета (2 сезон)	https://kinokrad.co/298393-rokovye-oshibki-todda-margareta-2-sezon-2012.html	5	2012	США, Великобритания	комедия	Алекс Хардкасл, Бен Грегор, Джон Хардвик	22
6251	Чистильщик (1 сезон)	https://kinokrad.co/320438-chistilschik-1-sezon-2012.html	6	2012	Германия	комедия	Арни Фельдхузен	26
6252	Истсайдеры (1 сезон)	https://kinokrad.co/291640-istsaydery-1-sezon-2012.html	5	2012	США	драма	Кит Уильямсон	11
6253	Неприрученные (7 сезон)	https://kinokrad.co/307577-nepriruchennye-7-sezon-2012.html	6	2012	Великобритания	драма	Николас Лафлэнд, Пол Харрисон, Морис Филлипс	47
6254	Тайный круг (1 сезон)	https://kinokrad.co/301118-taynyy-krug-1-sezon-2012.html	9	2012	США, Канада	ужасы, фэнтези, драма, мелодрама	Лиз Фридлендер, Дэвид Баррет, Джон Фоусет	43
6255	Хандерби (1 сезон)	https://kinokrad.co/319714-handerbi-1-sezon-2012.html	5	2012	Великобритания	комедия	Тони Дау	30
6256	Скандал (2 сезон)	https://kinokrad.co/294673-skandal-2-sezon-2012.html	7	2012	США	триллер, драма	Том Верика, Оливер Бокельберг, Эллисон Лидди	43
6379	Форс-мажоры 2 сезон (1-16 серия)	https://kinokrad.co/255759-fors-mazhory-2-sezon.html	8	2012	США	драма, комедия	Кевин Брэй, Майкл Смит	43
6257	Скандал (1 сезон)	https://kinokrad.co/294670-skandal-1-sezon-2012.html	7	2012	США	триллер, драма	Том Верика, Оливер Бокельберг, Эллисон Лидди	43
6258	Военнопленный (2 сезон)	https://kinokrad.co/286783-voennoplennyy-2-sezon-2012.html	6	2012	Израиль	драма	Гидеон Рафф	55
6259	Серые кардиналы / Закулисные игры (1 сезон)	https://kinokrad.co/318234-serye-kardinaly-zakulisnye-igry-1-sezon-2012.html	5	2012	Франция	драма	Фридерик Теллье, Жан-Марк Брондоло, Фредерик Гарсон	
6260	Расследования Мердока (5 сезон)	https://kinokrad.co/293080-rassledovaniya-merdoka-5-sezon-2012.html	8	2012	Канада, Великобритания	драма, криминал, детектив	Лори Линд, Кэл Кунс, Харви Кросслэнд	43
6261	Папочка (1 сезон)	https://kinokrad.co/316658-papochka-1-sezon-2012.html	6	2012	США	драма, мелодрама, комедия, семейный	Майкл Лембек, Арлин Санфорд, Робби Кантримэн	22
6262	Город мечты (1 сезон)	https://kinokrad.co/302819-gorod-mechty-1-sezon-2012.html	7	2012	США	драма, криминал, детектив	Эдвард Бьянчи, Саймон Селлан Джоунс, Дэвид Петрарка	50
6263	Интерны (3 сезон)	https://kinokrad.co/307832-interny-3-sezon-2012.html	6	2012	Россия	комедия	Максим Пежемский, Заур Болотаев, Милан Килибарда	25
6264	Черепашки-ниндзя (1 сезон)	https://kinokrad.co/291628-cherepashki-nindzya-1-sezon-2012.html	9	2012	США	мультфильм, фантастика, боевик, драма, комедия, приключения, семейный	Сиро Ниели, Майкл Чанг, Алан Ван	22
6265	Куку (1 сезон)	https://kinokrad.co/292357-kuku-1-sezon-2012.html	7	2012	Великобритания	комедия	Бен Тэйлор, Пол Мерфи	22
6266	Орлиное сердце (2 сезон)	https://kinokrad.co/300811-orlinoe-serdce-2-sezon-2012.html	5	2012	США	боевик, комедия	Джейсон Уолинер, Эрик Аппель, Джей Карас	11
6267	Люди Альфа (2 сезон)	https://kinokrad.co/300773-lyudi-alfa-2-sezon-2012.html	8	2012	США	фантастика, боевик, триллер, драма	Ник Копус, Мэттью Хатингс, Лесли Либман	43
6268	Дурман (8 сезон)	https://kinokrad.co/286601-durman-8-sezon-2012.html	8	2012	США	драма, комедия, криминал	Крейг Зиск, Майкл Трим, Скотт Эллис	25
6269	Вера (2 сезон)	https://kinokrad.co/287353-vera-2-sezon-2012.html	8	2012	Великобритания	драма, криминал, детектив	Уильям Синклер, Питер Хор, Пол Уиттингтон	95
6270	В надежде на спасение (1 сезон)	https://kinokrad.co/302996-v-nadezhde-na-spasenie-1-sezon-2012.html	7	2012	Канада	фэнтези, драма, мистика	Дэвид Уэллингтон, Грегори Смит, Стив ДиМарко	44
6271	Сестра Джеки (4 сезон)	https://kinokrad.co/285939-sestra-dzheki-4-sezon-2012.html	4	2012	США	драма, комедия	Пол Фиг, Джесси Перец, Брендан Уолш	22
6272	Синдикат (1 сезон)	https://kinokrad.co/285875-sindikat-1-sezon-2012.html	5	2012	Великобритания	драма	Кэй Меллор, Доминик Леклерк, Сидни Макартни	60
6273	Дорогой доктор (4 сезон)	https://kinokrad.co/285871-dorogoy-doktor-4-sezon-2012.html	7	2012	США	драма, комедия	Мэттью Пенн, Эмиль Левисетти, Майкл Ройч	43
6274	Время приключений (4 сезон)	https://kinokrad.co/292687-vremya-priklyucheniy-4-sezon-2012.html	8	2012	США	мультфильм, фэнтези, комедия, приключения, семейный	Ларри Лэйчлитер, Элизабет Ито, Андрес Салафф	22
6275	Правосудие (3 сезон)	https://kinokrad.co/285113-pravosudie-3-sezon-2012.html	8	2012	США	боевик, триллер, драма, криминал	Адам Аркин, Джон Эвнет, Питер Уэрнер	43
6276	Анатомия страсти (9 сезон)	https://kinokrad.co/285353-anatomiya-strasti-9-sezon-2012.html	8	2012	США	драма, мелодрама	Роб Корн, Шандра Уилсон, Тони Фелан	43
6277	Трансформеры: Прайм (2 сезон)	https://kinokrad.co/283655-transformery-praym-2-sezon-2012.html	9	2012	США	мультфильм, фантастика, боевик, приключения	Дэвид Хартман, Шонт Нигогосян, Винтон Хёк	22
6278	Грань (5 сезон)	https://kinokrad.co/283938-gran-5-sezon-2012.html	9	2012	США, Канада	фантастика, триллер, драма, детектив	Джо Чаппелль, Брэд Андерсон, Фред Туа	43
6279	Из рода волков / Волчья кровь (1 сезон)	https://kinokrad.co/292138-iz-roda-volkov-volchya-krov-1-sezon-2012.html	8	2012	Великобритания	фэнтези, семейный	Jermain Julien, Мэттью Эванс, Эндрю Ганн	22
6280	Джек Айриш (1 сезон)	https://kinokrad.co/292132-dzhek-ayrish-1-sezon-2012.html	7	2012	Австралия	криминал	Киран Дарси-Смит, Марк Джофф, Дэниэл Неттхейм	52
6281	Кости (8 сезон)	https://kinokrad.co/286993-kosti-8-sezon-2012.html	8	2012	США	драма, мелодрама, комедия, криминал, детектив	Иэн Тойнтон, Дуайт Х. Литтл, Жанно Шварц	43
6282	Проект Минди (1 сезон)	https://kinokrad.co/288265-proekt-mindi-1-sezon-2012.html	6	2012	США	комедия	Майкл Алан Спиллер, Майкл Уивер, Дэвид Роджерс	22
6283	Неугомонная девчонка	https://kinokrad.co/279908-neugomonnaya-devchonka-8-seriya.html	8	2012	Тайвань	комедия	Эфф Аимпапорн	110
6284	Американская семейка (4 сезон)	https://kinokrad.co/285751-amerikanskaya-semeyka-4-sezon-2012.html	8	2012	США	комедия	Гейл Манкусо, Майкл Алан Спиллер, Джейсон Уайнер	22
6285	Парки и зоны отдыха (5 сезон)	https://kinokrad.co/285707-parki-i-zony-otdyha-5-sezon-2012.html	6	2012	США	комедия	Дин Холлэнд, Майкл Шур, Кен Уиттингэм	21
6286	Мелисса и Джоуи (2 сезон)	https://kinokrad.co/285679-melissa-i-dzhoui-2-sezon-2012.html	7	2012	США	комедия	Роб Шиллер, Джеффри Мэлман, Дэвид Трейнер	22
6287	Наруто: Ураганные хроники (13 сезон)	https://kinokrad.co/285305-naruto-uragannye-hroniki-13-sezon-2012.html	7	2012	Япония	аниме, мультфильм, фантастика, боевик, триллер, приключения	Хаято Датэ, Юки Эри	24
6288	Наруто: Ураганные хроники (12 сезон)	https://kinokrad.co/285303-naruto-uragannye-hroniki-12-sezon-2012.html	7	2012	Япония	аниме, мультфильм, фантастика, боевик, триллер, приключения	Хаято Датэ, Юки Эри	24
6289	Миранда (3 сезон)	https://kinokrad.co/280743-miranda-3-sezon-7-seriya.html	9	2012	Великобритания	комедия	Джульетт Мэй, Мэнди Флетчер	22
6290	Мужчина королевы Ин Хён (1 сезон)	https://kinokrad.co/284451-muzhchina-korolevy-in-hjon-1-sezon-2012.html	7	2012	Корея Южная	фантастика, мелодрама, комедия	Пён-Су Ким	45
6291	Луни Тюнз шоу (2 сезон)	https://kinokrad.co/284415-luni-tyunz-shou-2-sezon-2012.html	8	2012	США	мультфильм, комедия, семейный	Сет Кирсли, Джефф Сьергей, Спайк Брандт	22
6292	Суета (2 сезон)	https://kinokrad.co/284991-sueta-2-sezon-2012.html	5	2012	США	драма	Себастьян Лакос	
6293	Босс (2 сезон)	https://kinokrad.co/284369-boss-2-sezon-2012.html	7	2012	США	драма, криминал	Жан Де Сегонзак, Марио Ван Пиблз, Джим МакКэй	56
6294	Блудливая Калифорния (5 сезон)	https://kinokrad.co/281814-bludlivaya-kaliforniya-5-sezon-2012.html	8	2012	США	драма, комедия	Дэвид Фон Энкен, Адам Бернштейн, Джон Дал	28
6295	Зои Харт из южного штата (2 сезон)	https://kinokrad.co/283495-zoi-hart-iz-yuzhnogo-shtata-2-sezon-2012.html	8	2012	США	драма, мелодрама, комедия	Дэвид Пэймер, Тим Мэтисон, Джеймс Хейман	43
6296	Гимнастки (3 сезон)	https://kinokrad.co/282897-gimnastki-3-sezon-2012.html	9	2012	США	драма, спорт	Дэвид Пэймер, Крис Грисмер, Стив Майнер	43
6297	Лонгмайр (1 сезон)	https://kinokrad.co/291328-longmayr-1-sezon-2012.html	6	2012	США	боевик, драма, криминал, вестерн	Кристофер Чулак, Джеймс М. Муро, Майкл Оффер	43
6298	Морская полиция: Лос-Анджелес (4 сезон)	https://kinokrad.co/291205-morskaya-policiya-los-andzheles-4-sezon-2012.html	9	2012	США	триллер, драма, криминал, детектив	Тони Уормби, Терренс О’Хара, Дэннис Смит	43
6299	Эпизоды (2 сезон)	https://kinokrad.co/290896-jepizody-2-sezon-2012.html	7	2012	США, Великобритания	комедия	Иэн Б. МакДональд, Джим Филд Смит, Джеймс Гриффитс	28
6300	Леди-детектив мисс Фрайни Фишер (1 сезон)	https://kinokrad.co/282220-ledi-detektiv-miss-frayni-fisher-1-sezon-2012.html	8	2012	Австралия	драма, криминал, детектив	Тони Тилс, Питер Андрикидис, Даина Рейд	43
6301	Особо тяжкие преступления (1 сезон)	https://kinokrad.co/284719-osobo-tyazhkie-prestupleniya-1-sezon-2012.html	7	2012	США	драма, криминал, детектив	Дэвид МакУиртер, Стив Робин, Майкл М. Робин	43
6302	Мстители, общий сбор! (2 сезон)	https://kinokrad.co/279933-mstiteli-obschiy-sbor-2-sezon-9-seriya.html	7	2012	США	комедия	Крис Бёрнс, Джексон МакДональд, Пэт Кларк	22
6303	Великолепный век (3 сезон)	https://kinokrad.co/283035-velikolepnyy-vek-3-sezon-2012.html	8	2012	Турция	драма, мелодрама, военный, биография, история	Дурул Тайлан, Ягмур Тайлан	100
6304	Собака точка ком (1 сезон)	https://kinokrad.co/272558-sobaka-tochka-kom-1-sezon.html	9	2012	США	драма, комедия, семейный	Шелли Дженсен, Нил Израэл, Виктор Гонзалез	21
6305	Всё включено (5 сезон)	https://kinokrad.co/292018-vsjo-vklyucheno-5-sezon-2012.html	6	2012	Великобритания	комедия	Сэнди Джонсон, Дэвид Сент, Кевин Аллен	30
6306	Молокососы (6 сезон)	https://kinokrad.co/282682-molokososy-6-sezon-2012.html	6	2012	Великобритания	драма	Чарльз Мартин, Саймон Мэсси, Джек Клоф	45
6307	В Филадельфии всегда солнечно (8 сезон)	https://kinokrad.co/286085-v-filadelfii-vsegda-solnechno-8-sezon-2012.html	7	2012	США	комедия	Мэтт Шекман, Фред Сэвэдж, Дэниэл Эттиэс	22
6308	Вице-президент (1 сезон)	https://kinokrad.co/286057-vice-prezident-1-sezon-2012.html	8	2012	США	комедия	Армандо Ианнуччи, Крис Эддисон, Бекки Мартин	30
6309	Как я встретил вашу маму (8 сезон)	https://kinokrad.co/282156-kak-ya-vstretil-vashu-mamu-8-sezon-2012.html	8	2012	США	комедия, мелодрама, драма	Памела Фрайман, Роб Гринберг, Майкл Дж. Ши	22
6310	Континуум (1 сезон)	https://kinokrad.co/283259-kontinuum-1-sezon-2012.html	8	2012	Канада	фантастика, боевик, триллер	Пэт Уильямс, Уильям Варинг, Дэвид Фрэйзи	44
6311	Речные монстры (4 сезон)	https://kinokrad.co/282033-rechnye-monstry-4-sezon-2012.html	8	2012	США	документальный	Барни Ревилл, Доминик Уэстон, Шарлотта Джонс	45
6312	Бывшие (2 сезон)	https://kinokrad.co/282976-byvshie-2-sezon-2012.html	7	2012	США	комедия	Энди Кэдифф, Джеффри Мэлман, Терри Хьюз	22
6313	Сезон охоты (1 сезон)	https://kinokrad.co/281628-sezon-ohoty-1-sezon-2012.html	8	2012	США	комедия	Джон Маркус	10
6314	Стелла (1 сезон)	https://kinokrad.co/281930-stella-1-sezon-2012.html	9	2012	Великобритания	драма, комедия	Эшли Вэй, Тони Дау, Сьюзэн Талли	60
6315	Майк и Молли (3 сезон)	https://kinokrad.co/285235-mayk-i-molli-3-sezon-2012.html	8	2012	США	комедия	Джеймс Берроуз, Фил Льюис, Майкл МакДональд	22
6347	Обитель лжи 1 сезон (1-12 серия)	https://kinokrad.co/274439-obitel-lzhi-1-sezon.html	7	2012	США	драма, комедия	Стивен Хопкинс, Мэттью Карнахан, Адам Бернштейн	29
6316	Красавица и чудовище (1 сезон)	https://kinokrad.co/285207-krasavica-i-chudovische-1-sezon-2012.html	8	2012	Канада	триллер, драма, детектив, фантастика	Стюарт Гиллард, Стивен А. Эделсон, Рик Бота	43
6317	Улицы разбитых фонарей (12 сезон)	https://kinokrad.co/285197-ulicy-razbityh-fonarey-12-sezon-2012.html	6	2012	Россия	боевик, драма, криминал, приключения	Александр Рогожкин, Дмитрий Светозаров, Кирилл Капица	48
6318	Виолетта 1 сезон (1-80 серия)	https://kinokrad.co/256135-violetta-1-sezon.html	9	2012	Аргентина	мелодрама, комедия, семейный	Хорхе Ниско, Мартин Саббан	43
6319	Любовь не делится на два (1-4 серия)	https://kinokrad.co/9333-lyubov-ne-delitsya-na-dva.html	7	2012	Россия	мелодрама	Кира Ангелина	44
6320	Гримм 2 сезон (1-22 серия)	https://kinokrad.co/255887-grimm-2-sezon.html	9	2012	США	ужасы, фэнтези, драма, детектив, мистика	Норберто Барба, Терренс О’Хара	43
6321	Белый воротничок 4 сезон (1-16 серия)	https://kinokrad.co/255890-belyy-vorotnichok-4-sezon.html	8	2012	США	детектив, криминал, драма, комедия	Джон Т. Кречмер, Рассел Ли Файн	43
6322	Яблочный спас (1 сезон)	https://kinokrad.co/283742-yablochnyy-spas-1-sezon-2012.html	6	2012	Россия, Беларусь	мелодрама	Сергей Гиргель	45
6323	Нелюбимая (1 сезон)	https://kinokrad.co/283740-nelyubimaya-1-sezon-2012.html	6	2012	Россия	мелодрама	Артем Насыбулин	43
6324	Маленький зоомагазин (1-26 серия)	https://kinokrad.co/255736-malenkiy-zoomagazin.html	7	2012	США, Канада	мультфильм, комедия, семейный	Joel Dickie, Даллас Паркер	22
6325	Убить Дрозда (1 сезон)	https://kinokrad.co/283737-ubit-drozda-1-sezon-2012.html	5	2012	Россия	фантастика, комедия	Дмитрий Герасимов	45
6326	Сплетница 6 сезон (1-10 серия)	https://kinokrad.co/255730-spletnica-6-sezon.html	9	2012	США	драма, мелодрама	Марк Пизнарский, Норман Бакли	43
6327	Разрушители легенд 13 сезон (1-9 серия)	https://kinokrad.co/255729-razrushiteli-legend-13-sezon-onlayn.html	10	2012	США	документальный, детектив	Элис Дэллоу, Табита Лентл	43
6328	Металлопокалипсис (4 сезон)	https://kinokrad.co/283735-metallopokalipsis-4-sezon-2012.html	7	2012	США	мультфильм, комедия, музыка	Джон Шнепп, Крис Приноски, Марк Брукс	12
6329	Декстер 7 сезон (1-12 серия)	https://kinokrad.co/255726-dekster-7-sezon.html	9	2012	США	триллер, драма, криминал, детектив	Джон Дал, Стив Шилл	55
6330	Кулинар 1 сезон (1-20 серия)	https://kinokrad.co/9156-kulinar-1-sezon.html	8	2012	Россия	детектив	Андрей Иванов, Михаил Макаренко	50
6331	Закрытая школа (4 сезон)	https://kinokrad.co/282654-zakrytaya-shkola-4-sezon-2012.html	9	2012	Россия	триллер, драма, детектив	Олег Асадулин, Константин Статский, Андрей Записов	48
6332	Закрытая школа (3 сезон)	https://kinokrad.co/282653-zakrytaya-shkola-3-sezon-2012.html	8	2012	Россия	триллер, драма, детектив	Олег Асадулин, Константин Статский, Андрей Записов	48
6333	Втайне от родителей (5 сезон)	https://kinokrad.co/283202-vtayne-ot-roditeley-5-sezon-2012.html	8	2012	США	драма, мелодрама, комедия, семейный	Кит Трусделл, Энсон Уильямс, Гэйл Брэдли	43
6334	Крапленый (1-24 серия)	https://kinokrad.co/9068-kraplenyy.html	8	2012	Россия	криминал, детектив, приключения	Ярослав Мочалов	48
6335	Школа монстров 3 сезон (1-28 серия)	https://kinokrad.co/280867-shkola-monstrov-3-sezon.html	6	2012	США	мультфильм	Оду Паден, Эрик Радомски	3
6336	Непутевая невестка (1-4 серия)	https://kinokrad.co/273643-neputevaya-nevestka.html	7	2012	Россия	мелодрама	Сергей Быстрицкий	176
6337	Знахарка (1-4 серия)	https://kinokrad.co/273674-znaharka.html	7	2012	Россия	мелодрама, комедия	Владимир Тумаев	45
6338	Чемпионы из подворотни (1-4 серия)	https://kinokrad.co/273886-chempiony-iz-podvorotni-vse-serii.html	8	2012	Украина	драма, спорт	Ахтем Сейтаблаев	110
6339	Кухня 1 сезон (1-20 серия)	https://kinokrad.co/281409-kuhnya-1-sezon.html	9	2012	Россия	комедия	Дмитрий Дьяченко, Жора Крыжовников, Антон Федотов	25
6340	Гавайи 5.0 (3 сезон)	https://kinokrad.co/285123-gavayi-5-0-3-sezon-2012.html	9	2012	США	боевик, драма, криминал	Брайан Спайсер, Ларри Тенг, Стив Бойум	43
6341	Новенькая 2 сезон (1-25 серия)	https://kinokrad.co/274029-novenkaya-2-sezon.html	9	2012	США	комедия	Джейк Кэздан, Макс Уинклер, Джесси Перетц	22
6342	Деффчонки 1 сезон (1-20 серия)	https://kinokrad.co/274055-deffchonki-sserial-1-sezon.html	8	2012	Россия	комедия	Сергей Корягин, Ольга Френкель, Нигина Сайфуллаева	24
6343	Оборотень / Волчонок (2 сезон)	https://kinokrad.co/274191-oboroten-2-sezon.html	9	2012	США	ужасы, триллер, драма, мелодрама, комедия	Рассел Малкэй, Тим Эндрю, Тоби Уилкинс	43
6344	Луи (3 сезон)	https://kinokrad.co/281900-lui-3-sezon-2012.html	6	2012	США	драма, комедия	Луис С.К., Лиз Плонка	23
6345	Бесстыдники 2 сезон (1-12 серия)	https://kinokrad.co/280084-besstydniki-2-sezon.html	9	2012	США	драма, комедия	Марк Майлод, Мими Ледер, Энтони Хемингуэй	55
6346	Риццоли и Айлс 3 сезон (1-15 серия)	https://kinokrad.co/280103-riccoli-i-ayls-3-sezon.html	8	2012	США	драма, криминал, детектив	Марк Абер, Майкл Кэтлман, Стив Робин	43
6348	Мастера меча онлайн 2 сезон (24 серия)	https://kinokrad.co/275450-mastera-mecha-2-sezon-24-seriya.html	9	2012	Япония	аниме, боевик, приключения	Томохико Ито	23
6349	Нэшвилл 1 сезон (1-21 серия)	https://kinokrad.co/276899-neshvill-1-sezon-1-21-seriya.html	7	2012	США	драма, музыка, слова	Пол МакКрейн, Р.Дж. Катлер, Стивен Крегг	43
6350	Роковые красотки 2 сезон (1-12 серия)	https://kinokrad.co/16956-rokovye-krasotki-2-sezon.html	7	2012	США	триллер, детектив	Дэрин Скотт	22
6351	Восьмидесятые 1 сезон (1-12 все серии)	https://kinokrad.co/276504-vosmidesyatye-1-sezon.html	8	2012	Россия	комедия	Фёдор Стуков	25
6352	Пожарные Чикаго / Чикаго в огне 1 сезон (1-24 все серии)	https://kinokrad.co/276592-pozharnye-chikago-1-sezon.html	8	2012	США	драма	Джо Чаппелль, Жан Де Сегонзак	43
6353	Мститель (1-4 серия)	https://kinokrad.co/256134-mstitel.html	7	2012	Россия	боевик	Дмитрий Брусникин	
6354	Счастливы вместе 6 сезон (1-49 серия)	https://kinokrad.co/256160-schastlivy-vmeste-6-sezon.html	8	2012	Россия	мелодрама, комедия	Георгий Дронов, Шабан Муслимов	25
6355	Титаник (1-4 серия)	https://kinokrad.co/256177-titanik.html	8	2012	США, Канада, Венгрия, Великобритания	драма	Джон Джонс	190
6356	Касл 5 сезон (1-24 серия)	https://kinokrad.co/255783-kasl-5-sezon.html	9	2012	США	драма, комедия, криминал	Роб Боумен, Джон Терлески	43
6357	Городок (1-3 серия)	https://kinokrad.co/7975-gorodok-1-3-serii.html	6	2012	Великобритания	драма	Колин Тиг	
6358	Элементарно (1 сезон)	https://kinokrad.co/255898-elementarno-1-sezon.html	9	2012	США	драма, криминал, детектив	Джон Полсон, Эндрю Бернштейн	43
6359	Плохие / Отбросы 4 сезон (1-8 серия)	https://kinokrad.co/280686-plohie-otbrosy-4-sezon.html	8	2012	Великобритания	фантастика, фэнтези, драма, комедия	Том Грин, Джонатан ван Тюллекен, Том Харпер	43
6360	Спартак: Месть (3 сезон)	https://kinokrad.co/281982-spartak-mest-3-sezon-2012.html	8	2012	США	боевик, драма, приключения, биография, история	Джесси Уарн, Майкл Херст, Рик Джейкобсон	52
6361	Конспирация  / Заговор 365 (1-3 серия)	https://kinokrad.co/8482-konspiraciya-zagovor-365.html	7	2012	Австралия	боевик, триллер, драма, семейный	Пино Амента, Пол Голдман	49
6362	Следственный комитет (1-24 серия)	https://kinokrad.co/272985-sledstveniy-komitet.html	6	2012	Россия	детектив	Юрий Попович	46
6363	Дорога в пустоту (1-12 серия)	https://kinokrad.co/8301-doroga-v-pustotu.html	7	2012	Россия, Украина	мелодрама	Анна Гресь	49
6364	Шерлок Холмс и черные человечки (1-6 серия)	https://kinokrad.co/273953-sherlok-holms-i-chernye-chelovechki-1-6-seriya.html	7	2012	Украина	мультфильм, комедия, детектив	Александр Бубнов	6
6365	Город хищниц 3 сезон (1-15 серия)	https://kinokrad.co/274085-gorod-hischnic-3-sezon.html	9	2012	США	комедия	Майкл МакДональд, Джон Путч, Кортни Кокс	22
6366	Гравити Фолз 1 сезон (1-20 серия)	https://kinokrad.co/279916-graviti-folz-1-sezon.html	9	2012	США	мультфильм, фэнтези, комедия, детектив, семейный	Джо Питт, Джон Аошима, Аарон Спринджер	22
6367	Перевозчик 2 сезон (12 серия)	https://kinokrad.co/279873-perevozchik-2-sezon-12-seriya.html	8	2012	Канада, Франция, США, Германия	боевик, криминал	Брэд Тернер, Эрик Валетт, Энди Микита	43
6368	Бриклберри (1 сезон)	https://kinokrad.co/281886-briklberri-1-sezon-2013.html	8	2012	США	мультфильм, комедия	Захари Монкриф, Род Амадор, Брайан ЛоСкьяво	22
6369	Место преступления Лас-Вегас 13 сезон (1-22 серия)	https://kinokrad.co/274463-c-s-i-mesto-prestupleniya-13-sezon.html	7	2012	США, Канада	триллер, драма, криминал, детектив	Кеннет Финк, Ричард Дж. Льюис, Алек Смайт	43
6370	Симпсоны 24 сезон (1-22 серия)	https://kinokrad.co/255908-simpsony-24-sezon-smotret-onlayn.html	9	2012	США	мультфильм, комедия, семейный	Марк Керклэнд, Стивен Дин Мур	22
6371	Революция 1 сезон (1-20 серия)	https://kinokrad.co/255904-revolyuciya-1-sezon-smotret-onlayn.html	7	2012	США	фантастика, боевик, драма, приключения	Чарльз Бисон, Стив Бойум	43
6372	Менталист 5 сезон	https://kinokrad.co/255902-mentalist-5-sezon-smotret-onlayn.html	8	2012	США	триллер, драма, криминал, детектив	Крис Лонг, Джон Шоуолтер	43
6373	Крэш и Бернштейн 1 сезон (1-17 все серии)	https://kinokrad.co/9131-kresh-i-bernshteyn-1-sezon-smotret-onlayn-5-6-7-seriya.html	8	2012	США	комедия, семейный	Брюс Ледди	30
6374	Гриффины (11 сезон)	https://kinokrad.co/282006-griffiny-11-sezon-2012.html	8	2012	США	мультфильм, комедия	Питер Шин, Джеймс Пурдум, Доминик Бьянчи	22
6375	Две разорившиеся девочки 2 сезон	https://kinokrad.co/274032-dve-razorivshiesya-devochki-2-sezon.html	9	2012	США	комедия	Дон Скардино, Фред Сэвэдж, Фил Льюис	22
6376	Мужчины за работой 3 сезон (1-10 серия)	https://kinokrad.co/272218-muzhchiny-za-rabotoy-3-sezon.html	6	2012	США	драма, комедия	Марк Сендроуски, Дэвид Трейнер, Линда Мендоза	22
6377	Подопытные (1-19 серия)	https://kinokrad.co/10434-podopytnye.html	9	2012	США	комедия	Виктор Гонзалез, Гай Дистад	22
6378	Зайцев + 1 2 сезон (1-20 серия)	https://kinokrad.co/14537-zaycev-1-2-sezon.html	7	2012	Россия	комедия	Максим Пежемский, Всеволод Бродский	22
6380	Время приключений 5 сезон (1-26 серия)	https://kinokrad.co/255754-vremya-priklyucheniy-5-sezon-onlayn.html	9	2012	США	мультфильм, фэнтези, комедия, приключения	Ларри Лэйчлитер, Элизабет Ито	22
6381	Папа в законе (1-4 серия)	https://kinokrad.co/255906-papa-v-zakone.html	8	2012	Россия	мелодрама	Стас Иванов	42
6382	Однажды в сказке 2 сезон (1-22 серия)	https://kinokrad.co/274007-odnazhdy-v-skazke-2-sezon.html	9	2012	США	фэнтези, мелодрама, приключения	Ральф Хемекер, Дин Уайт, Рон Андервуд	43
6383	Американский папаша 8 сезон (1-19 серия)	https://kinokrad.co/274134-amerikanskiy-papasha-8-sezon.html	7	2012	США	мультфильм, комедия	Рон Хьюгарт, Брент Вудс, Энтони Льои	22
6384	Фалькон (1-4 серия)	https://kinokrad.co/11785-falkon-1-4-vse-serii.html	6	2012	Великобритания	драма, криминал	Пит Трэвис, Гэбриел Рэндж	43
6385	Во саду ли, в огороде (1-4 серия)	https://kinokrad.co/7716-vo-sadu-li-v-ogorode.html	5	2012	Россия	мелодрама	Максим Демченко	45
6386	Морская полиция: Спецотдел 10 сезон (1-24 серия)	https://kinokrad.co/278118-morskaya-policiya-specotdel-10-sezon-1-24-seriya.html	8	2012	США	боевик, триллер, драма, комедия, криминал, детектив	Дэннис Смит, Томас Дж. Райт	43
6387	Быть человеком 2 сезон (1-13 серия)	https://kinokrad.co/274108-byt-chelovekom-2-sezon.html	8	2012	Канада, США	ужасы, фэнтези, драма, мистика	Паоло Барзмен, Стефан Плещински, Адам Кэйн	43
6388	Папочка 3 сезон (1-21 серия)	https://kinokrad.co/272779-papochka-3-sezon.html	7	2012	США	драма, комедия, семейный	Майкл Лембек, Арлин Санфорд, Робби Кантримэн	22
6389	Варавва (1-2 серия)	https://kinokrad.co/255719-varavva.html	7	2012	США, Италия	драма	Сальваторе Басиле, Никола Лусуарди	200
6390	Отчаянные домохозяйки 8 сезон (1-23 серия)	https://kinokrad.co/255710-otchayannye-domohozyayki-8-sezon.html	8	2012	США	драма, мелодрама, комедия, детектив	Дэвид Гроссман, Ларри Шоу	43
6391	Правосудие Агаты 1 сезон	https://kinokrad.co/275882-pravosudie-agaty-1-sezon.html	7	2012	Польша	драма, комедия	Maciej Migas, Patrick Yoka	45
6392	Правосудие Агаты 2 сезон	https://kinokrad.co/10602-pravosudie-agaty-2-sezon.html	8	2012	Польша	драма, комедия	Maciej Migas, Patrick Yoka	45
6393	Призрак (1-20 серия)	https://kinokrad.co/10650-prizrak.html	7	2012	Корея Южная	боевик, криминал, детектив	Хён-сук Ким	60
6394	Братья	https://kinokrad.co/7493-bratya-2012-smotret-onlayn.html	7	2012	Россия	криминал	Дмитрий Фикс, Сергей Репецкий	46
6395	Дневники Вампира (4 сезон)	https://kinokrad.co/255784-dnevniki-vampira-4-sezon.html	9	2012	США	ужасы, фэнтези, триллер, драма, мелодрама, детектив	Крис Грисмер, Маркос Сига	43
6396	Виктория - победительница 4 сезон (1-13 серия)	https://kinokrad.co/255742-viktoriya-pobeditelnica-4-sezon.html	8	2012	США	драма, комедия, семейный, музыка	Стив Хофер, Адам Вайсман	22
6397	Ментовские войны 6 сезон (1-16 серия)	https://kinokrad.co/274137-mentovskie-voyny-6-sezon.html	8	2012	Россия	боевик, драма, криминал	Павел Мальков	302
6398	Рухнувшие небеса 2 сезон (1-10 серия)	https://kinokrad.co/278891-ruhnuvshie-nebesa-2-sezon-1-10-seriya.html	8	2012	США, Канада	фантастика, боевик, триллер	Грег Биман, Серджо Мимика-Геззан	43
6399	Мыслить как преступник 8 сезон (1-23 серия)	https://kinokrad.co/274184-myslit-kak-prestupnik-8-sezon.html	8	2012	США, Канада	триллер, драма, криминал, детектив	Гленн Кершоу, Феликс Энрикез Алькала, Эдвард Аллен Бернеро	43
6400	Светофор 4 сезон (1-20 серии)	https://kinokrad.co/277808-svetofor-4-sezon-1-20-serii.html	8	2012	Россия	комедия	Роман Фокин	24
6401	Особо тяжкие преступления (1 сезон)	https://kinokrad.co/284719-osobo-tyazhkie-prestupleniya-1-sezon-2012.html	7	2012	США	драма, криминал, детектив	Дэвид МакУиртер, Стив Робин, Майкл М. Робин	43
6402	Мстители, общий сбор! (2 сезон)	https://kinokrad.co/279933-mstiteli-obschiy-sbor-2-sezon-9-seriya.html	7	2012	США	комедия	Крис Бёрнс, Джексон МакДональд, Пэт Кларк	22
6403	Великолепный век (3 сезон)	https://kinokrad.co/283035-velikolepnyy-vek-3-sezon-2012.html	8	2012	Турция	драма, мелодрама, военный, биография, история	Дурул Тайлан, Ягмур Тайлан	100
6404	Собака точка ком (1 сезон)	https://kinokrad.co/272558-sobaka-tochka-kom-1-sezon.html	9	2012	США	драма, комедия, семейный	Шелли Дженсен, Нил Израэл, Виктор Гонзалез	21
6405	Всё включено (5 сезон)	https://kinokrad.co/292018-vsjo-vklyucheno-5-sezon-2012.html	6	2012	Великобритания	комедия	Сэнди Джонсон, Дэвид Сент, Кевин Аллен	30
6406	Молокососы (6 сезон)	https://kinokrad.co/282682-molokososy-6-sezon-2012.html	6	2012	Великобритания	драма	Чарльз Мартин, Саймон Мэсси, Джек Клоф	45
6407	В Филадельфии всегда солнечно (8 сезон)	https://kinokrad.co/286085-v-filadelfii-vsegda-solnechno-8-sezon-2012.html	7	2012	США	комедия	Мэтт Шекман, Фред Сэвэдж, Дэниэл Эттиэс	22
6408	Вице-президент (1 сезон)	https://kinokrad.co/286057-vice-prezident-1-sezon-2012.html	8	2012	США	комедия	Армандо Ианнуччи, Крис Эддисон, Бекки Мартин	30
6409	Как я встретил вашу маму (8 сезон)	https://kinokrad.co/282156-kak-ya-vstretil-vashu-mamu-8-sezon-2012.html	8	2012	США	комедия, мелодрама, драма	Памела Фрайман, Роб Гринберг, Майкл Дж. Ши	22
6410	Континуум (1 сезон)	https://kinokrad.co/283259-kontinuum-1-sezon-2012.html	8	2012	Канада	фантастика, боевик, триллер	Пэт Уильямс, Уильям Варинг, Дэвид Фрэйзи	44
6411	Речные монстры (4 сезон)	https://kinokrad.co/282033-rechnye-monstry-4-sezon-2012.html	8	2012	США	документальный	Барни Ревилл, Доминик Уэстон, Шарлотта Джонс	45
6412	Бывшие (2 сезон)	https://kinokrad.co/282976-byvshie-2-sezon-2012.html	7	2012	США	комедия	Энди Кэдифф, Джеффри Мэлман, Терри Хьюз	22
6413	Сезон охоты (1 сезон)	https://kinokrad.co/281628-sezon-ohoty-1-sezon-2012.html	8	2012	США	комедия	Джон Маркус	10
6414	Стелла (1 сезон)	https://kinokrad.co/281930-stella-1-sezon-2012.html	9	2012	Великобритания	драма, комедия	Эшли Вэй, Тони Дау, Сьюзэн Талли	60
6415	Майк и Молли (3 сезон)	https://kinokrad.co/285235-mayk-i-molli-3-sezon-2012.html	8	2012	США	комедия	Джеймс Берроуз, Фил Льюис, Майкл МакДональд	22
6416	Красавица и чудовище (1 сезон)	https://kinokrad.co/285207-krasavica-i-chudovische-1-sezon-2012.html	8	2012	Канада	триллер, драма, детектив, фантастика	Стюарт Гиллард, Стивен А. Эделсон, Рик Бота	43
6417	Улицы разбитых фонарей (12 сезон)	https://kinokrad.co/285197-ulicy-razbityh-fonarey-12-sezon-2012.html	6	2012	Россия	боевик, драма, криминал, приключения	Александр Рогожкин, Дмитрий Светозаров, Кирилл Капица	48
6418	Виолетта 1 сезон (1-80 серия)	https://kinokrad.co/256135-violetta-1-sezon.html	9	2012	Аргентина	мелодрама, комедия, семейный	Хорхе Ниско, Мартин Саббан	43
6419	Любовь не делится на два (1-4 серия)	https://kinokrad.co/9333-lyubov-ne-delitsya-na-dva.html	7	2012	Россия	мелодрама	Кира Ангелина	44
6420	Гримм 2 сезон (1-22 серия)	https://kinokrad.co/255887-grimm-2-sezon.html	9	2012	США	ужасы, фэнтези, драма, детектив, мистика	Норберто Барба, Терренс О’Хара	43
6421	Белый воротничок 4 сезон (1-16 серия)	https://kinokrad.co/255890-belyy-vorotnichok-4-sezon.html	8	2012	США	детектив, криминал, драма, комедия	Джон Т. Кречмер, Рассел Ли Файн	43
6422	Яблочный спас (1 сезон)	https://kinokrad.co/283742-yablochnyy-spas-1-sezon-2012.html	6	2012	Россия, Беларусь	мелодрама	Сергей Гиргель	45
6423	Нелюбимая (1 сезон)	https://kinokrad.co/283740-nelyubimaya-1-sezon-2012.html	6	2012	Россия	мелодрама	Артем Насыбулин	43
6424	Маленький зоомагазин (1-26 серия)	https://kinokrad.co/255736-malenkiy-zoomagazin.html	7	2012	США, Канада	мультфильм, комедия, семейный	Joel Dickie, Даллас Паркер	22
6425	Убить Дрозда (1 сезон)	https://kinokrad.co/283737-ubit-drozda-1-sezon-2012.html	5	2012	Россия	фантастика, комедия	Дмитрий Герасимов	45
6426	Сплетница 6 сезон (1-10 серия)	https://kinokrad.co/255730-spletnica-6-sezon.html	9	2012	США	драма, мелодрама	Марк Пизнарский, Норман Бакли	43
6427	Разрушители легенд 13 сезон (1-9 серия)	https://kinokrad.co/255729-razrushiteli-legend-13-sezon-onlayn.html	10	2012	США	документальный, детектив	Элис Дэллоу, Табита Лентл	43
6428	Металлопокалипсис (4 сезон)	https://kinokrad.co/283735-metallopokalipsis-4-sezon-2012.html	7	2012	США	мультфильм, комедия, музыка	Джон Шнепп, Крис Приноски, Марк Брукс	12
6429	Декстер 7 сезон (1-12 серия)	https://kinokrad.co/255726-dekster-7-sezon.html	9	2012	США	триллер, драма, криминал, детектив	Джон Дал, Стив Шилл	55
6430	Кулинар 1 сезон (1-20 серия)	https://kinokrad.co/9156-kulinar-1-sezon.html	8	2012	Россия	детектив	Андрей Иванов, Михаил Макаренко	50
6431	Закрытая школа (4 сезон)	https://kinokrad.co/282654-zakrytaya-shkola-4-sezon-2012.html	9	2012	Россия	триллер, драма, детектив	Олег Асадулин, Константин Статский, Андрей Записов	48
6432	Закрытая школа (3 сезон)	https://kinokrad.co/282653-zakrytaya-shkola-3-sezon-2012.html	8	2012	Россия	триллер, драма, детектив	Олег Асадулин, Константин Статский, Андрей Записов	48
6433	Втайне от родителей (5 сезон)	https://kinokrad.co/283202-vtayne-ot-roditeley-5-sezon-2012.html	8	2012	США	драма, мелодрама, комедия, семейный	Кит Трусделл, Энсон Уильямс, Гэйл Брэдли	43
6434	Крапленый (1-24 серия)	https://kinokrad.co/9068-kraplenyy.html	8	2012	Россия	криминал, детектив, приключения	Ярослав Мочалов	48
6435	Школа монстров 3 сезон (1-28 серия)	https://kinokrad.co/280867-shkola-monstrov-3-sezon.html	6	2012	США	мультфильм	Оду Паден, Эрик Радомски	3
6436	Непутевая невестка (1-4 серия)	https://kinokrad.co/273643-neputevaya-nevestka.html	7	2012	Россия	мелодрама	Сергей Быстрицкий	176
6437	Знахарка (1-4 серия)	https://kinokrad.co/273674-znaharka.html	7	2012	Россия	мелодрама, комедия	Владимир Тумаев	45
6438	Чемпионы из подворотни (1-4 серия)	https://kinokrad.co/273886-chempiony-iz-podvorotni-vse-serii.html	8	2012	Украина	драма, спорт	Ахтем Сейтаблаев	110
6439	Кухня 1 сезон (1-20 серия)	https://kinokrad.co/281409-kuhnya-1-sezon.html	9	2012	Россия	комедия	Дмитрий Дьяченко, Жора Крыжовников, Антон Федотов	25
6440	Гавайи 5.0 (3 сезон)	https://kinokrad.co/285123-gavayi-5-0-3-sezon-2012.html	9	2012	США	боевик, драма, криминал	Брайан Спайсер, Ларри Тенг, Стив Бойум	43
6441	Новенькая 2 сезон (1-25 серия)	https://kinokrad.co/274029-novenkaya-2-sezon.html	9	2012	США	комедия	Джейк Кэздан, Макс Уинклер, Джесси Перетц	22
6442	Деффчонки 1 сезон (1-20 серия)	https://kinokrad.co/274055-deffchonki-sserial-1-sezon.html	8	2012	Россия	комедия	Сергей Корягин, Ольга Френкель, Нигина Сайфуллаева	24
6443	Оборотень / Волчонок (2 сезон)	https://kinokrad.co/274191-oboroten-2-sezon.html	9	2012	США	ужасы, триллер, драма, мелодрама, комедия	Рассел Малкэй, Тим Эндрю, Тоби Уилкинс	43
6444	Луи (3 сезон)	https://kinokrad.co/281900-lui-3-sezon-2012.html	6	2012	США	драма, комедия	Луис С.К., Лиз Плонка	23
6445	Бесстыдники 2 сезон (1-12 серия)	https://kinokrad.co/280084-besstydniki-2-sezon.html	9	2012	США	драма, комедия	Марк Майлод, Мими Ледер, Энтони Хемингуэй	55
6446	Риццоли и Айлс 3 сезон (1-15 серия)	https://kinokrad.co/280103-riccoli-i-ayls-3-sezon.html	8	2012	США	драма, криминал, детектив	Марк Абер, Майкл Кэтлман, Стив Робин	43
6447	Обитель лжи 1 сезон (1-12 серия)	https://kinokrad.co/274439-obitel-lzhi-1-sezon.html	7	2012	США	драма, комедия	Стивен Хопкинс, Мэттью Карнахан, Адам Бернштейн	29
6448	Мастера меча онлайн 2 сезон (24 серия)	https://kinokrad.co/275450-mastera-mecha-2-sezon-24-seriya.html	9	2012	Япония	аниме, боевик, приключения	Томохико Ито	23
6449	Нэшвилл 1 сезон (1-21 серия)	https://kinokrad.co/276899-neshvill-1-sezon-1-21-seriya.html	7	2012	США	драма, музыка, слова	Пол МакКрейн, Р.Дж. Катлер, Стивен Крегг	43
6450	Роковые красотки 2 сезон (1-12 серия)	https://kinokrad.co/16956-rokovye-krasotki-2-sezon.html	7	2012	США	триллер, детектив	Дэрин Скотт	22
6451	Восьмидесятые 1 сезон (1-12 все серии)	https://kinokrad.co/276504-vosmidesyatye-1-sezon.html	8	2012	Россия	комедия	Фёдор Стуков	25
6452	Пожарные Чикаго / Чикаго в огне 1 сезон (1-24 все серии)	https://kinokrad.co/276592-pozharnye-chikago-1-sezon.html	8	2012	США	драма	Джо Чаппелль, Жан Де Сегонзак	43
6453	Мститель (1-4 серия)	https://kinokrad.co/256134-mstitel.html	7	2012	Россия	боевик	Дмитрий Брусникин	
6454	Счастливы вместе 6 сезон (1-49 серия)	https://kinokrad.co/256160-schastlivy-vmeste-6-sezon.html	8	2012	Россия	мелодрама, комедия	Георгий Дронов, Шабан Муслимов	25
6455	Титаник (1-4 серия)	https://kinokrad.co/256177-titanik.html	8	2012	США, Канада, Венгрия, Великобритания	драма	Джон Джонс	190
6456	Касл 5 сезон (1-24 серия)	https://kinokrad.co/255783-kasl-5-sezon.html	9	2012	США	драма, комедия, криминал	Роб Боумен, Джон Терлески	43
6457	Городок (1-3 серия)	https://kinokrad.co/7975-gorodok-1-3-serii.html	6	2012	Великобритания	драма	Колин Тиг	
6458	Элементарно (1 сезон)	https://kinokrad.co/255898-elementarno-1-sezon.html	9	2012	США	драма, криминал, детектив	Джон Полсон, Эндрю Бернштейн	43
6459	Плохие / Отбросы 4 сезон (1-8 серия)	https://kinokrad.co/280686-plohie-otbrosy-4-sezon.html	8	2012	Великобритания	фантастика, фэнтези, драма, комедия	Том Грин, Джонатан ван Тюллекен, Том Харпер	43
6460	Спартак: Месть (3 сезон)	https://kinokrad.co/281982-spartak-mest-3-sezon-2012.html	8	2012	США	боевик, драма, приключения, биография, история	Джесси Уарн, Майкл Херст, Рик Джейкобсон	52
6461	Конспирация  / Заговор 365 (1-3 серия)	https://kinokrad.co/8482-konspiraciya-zagovor-365.html	7	2012	Австралия	боевик, триллер, драма, семейный	Пино Амента, Пол Голдман	49
6462	Следственный комитет (1-24 серия)	https://kinokrad.co/272985-sledstveniy-komitet.html	6	2012	Россия	детектив	Юрий Попович	46
6463	Дорога в пустоту (1-12 серия)	https://kinokrad.co/8301-doroga-v-pustotu.html	7	2012	Россия, Украина	мелодрама	Анна Гресь	49
6464	Шерлок Холмс и черные человечки (1-6 серия)	https://kinokrad.co/273953-sherlok-holms-i-chernye-chelovechki-1-6-seriya.html	7	2012	Украина	мультфильм, комедия, детектив	Александр Бубнов	6
6465	Город хищниц 3 сезон (1-15 серия)	https://kinokrad.co/274085-gorod-hischnic-3-sezon.html	9	2012	США	комедия	Майкл МакДональд, Джон Путч, Кортни Кокс	22
6466	Гравити Фолз 1 сезон (1-20 серия)	https://kinokrad.co/279916-graviti-folz-1-sezon.html	9	2012	США	мультфильм, фэнтези, комедия, детектив, семейный	Джо Питт, Джон Аошима, Аарон Спринджер	22
6467	Перевозчик 2 сезон (12 серия)	https://kinokrad.co/279873-perevozchik-2-sezon-12-seriya.html	8	2012	Канада, Франция, США, Германия	боевик, криминал	Брэд Тернер, Эрик Валетт, Энди Микита	43
6468	Бриклберри (1 сезон)	https://kinokrad.co/281886-briklberri-1-sezon-2013.html	8	2012	США	мультфильм, комедия	Захари Монкриф, Род Амадор, Брайан ЛоСкьяво	22
6469	Место преступления Лас-Вегас 13 сезон (1-22 серия)	https://kinokrad.co/274463-c-s-i-mesto-prestupleniya-13-sezon.html	7	2012	США, Канада	триллер, драма, криминал, детектив	Кеннет Финк, Ричард Дж. Льюис, Алек Смайт	43
6470	Симпсоны 24 сезон (1-22 серия)	https://kinokrad.co/255908-simpsony-24-sezon-smotret-onlayn.html	9	2012	США	мультфильм, комедия, семейный	Марк Керклэнд, Стивен Дин Мур	22
6471	Революция 1 сезон (1-20 серия)	https://kinokrad.co/255904-revolyuciya-1-sezon-smotret-onlayn.html	7	2012	США	фантастика, боевик, драма, приключения	Чарльз Бисон, Стив Бойум	43
6472	Менталист 5 сезон	https://kinokrad.co/255902-mentalist-5-sezon-smotret-onlayn.html	8	2012	США	триллер, драма, криминал, детектив	Крис Лонг, Джон Шоуолтер	43
6473	Крэш и Бернштейн 1 сезон (1-17 все серии)	https://kinokrad.co/9131-kresh-i-bernshteyn-1-sezon-smotret-onlayn-5-6-7-seriya.html	8	2012	США	комедия, семейный	Брюс Ледди	30
6474	Гриффины (11 сезон)	https://kinokrad.co/282006-griffiny-11-sezon-2012.html	8	2012	США	мультфильм, комедия	Питер Шин, Джеймс Пурдум, Доминик Бьянчи	22
6475	Две разорившиеся девочки 2 сезон	https://kinokrad.co/274032-dve-razorivshiesya-devochki-2-sezon.html	9	2012	США	комедия	Дон Скардино, Фред Сэвэдж, Фил Льюис	22
6476	Мужчины за работой 3 сезон (1-10 серия)	https://kinokrad.co/272218-muzhchiny-za-rabotoy-3-sezon.html	6	2012	США	драма, комедия	Марк Сендроуски, Дэвид Трейнер, Линда Мендоза	22
6477	Подопытные (1-19 серия)	https://kinokrad.co/10434-podopytnye.html	9	2012	США	комедия	Виктор Гонзалез, Гай Дистад	22
6478	Зайцев + 1 2 сезон (1-20 серия)	https://kinokrad.co/14537-zaycev-1-2-sezon.html	7	2012	Россия	комедия	Максим Пежемский, Всеволод Бродский	22
6479	Форс-мажоры 2 сезон (1-16 серия)	https://kinokrad.co/255759-fors-mazhory-2-sezon.html	8	2012	США	драма, комедия	Кевин Брэй, Майкл Смит	43
6480	Время приключений 5 сезон (1-26 серия)	https://kinokrad.co/255754-vremya-priklyucheniy-5-sezon-onlayn.html	9	2012	США	мультфильм, фэнтези, комедия, приключения	Ларри Лэйчлитер, Элизабет Ито	22
6481	Папа в законе (1-4 серия)	https://kinokrad.co/255906-papa-v-zakone.html	8	2012	Россия	мелодрама	Стас Иванов	42
6482	Однажды в сказке 2 сезон (1-22 серия)	https://kinokrad.co/274007-odnazhdy-v-skazke-2-sezon.html	9	2012	США	фэнтези, мелодрама, приключения	Ральф Хемекер, Дин Уайт, Рон Андервуд	43
6483	Американский папаша 8 сезон (1-19 серия)	https://kinokrad.co/274134-amerikanskiy-papasha-8-sezon.html	7	2012	США	мультфильм, комедия	Рон Хьюгарт, Брент Вудс, Энтони Льои	22
6484	Фалькон (1-4 серия)	https://kinokrad.co/11785-falkon-1-4-vse-serii.html	6	2012	Великобритания	драма, криминал	Пит Трэвис, Гэбриел Рэндж	43
6485	Во саду ли, в огороде (1-4 серия)	https://kinokrad.co/7716-vo-sadu-li-v-ogorode.html	5	2012	Россия	мелодрама	Максим Демченко	45
6486	Морская полиция: Спецотдел 10 сезон (1-24 серия)	https://kinokrad.co/278118-morskaya-policiya-specotdel-10-sezon-1-24-seriya.html	8	2012	США	боевик, триллер, драма, комедия, криминал, детектив	Дэннис Смит, Томас Дж. Райт	43
6487	Быть человеком 2 сезон (1-13 серия)	https://kinokrad.co/274108-byt-chelovekom-2-sezon.html	8	2012	Канада, США	ужасы, фэнтези, драма, мистика	Паоло Барзмен, Стефан Плещински, Адам Кэйн	43
6488	Папочка 3 сезон (1-21 серия)	https://kinokrad.co/272779-papochka-3-sezon.html	7	2012	США	драма, комедия, семейный	Майкл Лембек, Арлин Санфорд, Робби Кантримэн	22
6489	Варавва (1-2 серия)	https://kinokrad.co/255719-varavva.html	7	2012	США, Италия	драма	Сальваторе Басиле, Никола Лусуарди	200
6490	Отчаянные домохозяйки 8 сезон (1-23 серия)	https://kinokrad.co/255710-otchayannye-domohozyayki-8-sezon.html	8	2012	США	драма, мелодрама, комедия, детектив	Дэвид Гроссман, Ларри Шоу	43
6491	Правосудие Агаты 1 сезон	https://kinokrad.co/275882-pravosudie-agaty-1-sezon.html	7	2012	Польша	драма, комедия	Maciej Migas, Patrick Yoka	45
6492	Правосудие Агаты 2 сезон	https://kinokrad.co/10602-pravosudie-agaty-2-sezon.html	8	2012	Польша	драма, комедия	Maciej Migas, Patrick Yoka	45
6493	Призрак (1-20 серия)	https://kinokrad.co/10650-prizrak.html	7	2012	Корея Южная	боевик, криминал, детектив	Хён-сук Ким	60
6494	Братья	https://kinokrad.co/7493-bratya-2012-smotret-onlayn.html	7	2012	Россия	криминал	Дмитрий Фикс, Сергей Репецкий	46
6495	Дневники Вампира (4 сезон)	https://kinokrad.co/255784-dnevniki-vampira-4-sezon.html	9	2012	США	ужасы, фэнтези, триллер, драма, мелодрама, детектив	Крис Грисмер, Маркос Сига	43
6496	Виктория - победительница 4 сезон (1-13 серия)	https://kinokrad.co/255742-viktoriya-pobeditelnica-4-sezon.html	8	2012	США	драма, комедия, семейный, музыка	Стив Хофер, Адам Вайсман	22
6497	Ментовские войны 6 сезон (1-16 серия)	https://kinokrad.co/274137-mentovskie-voyny-6-sezon.html	8	2012	Россия	боевик, драма, криминал	Павел Мальков	302
6498	Рухнувшие небеса 2 сезон (1-10 серия)	https://kinokrad.co/278891-ruhnuvshie-nebesa-2-sezon-1-10-seriya.html	8	2012	США, Канада	фантастика, боевик, триллер	Грег Биман, Серджо Мимика-Геззан	43
6499	Мыслить как преступник 8 сезон (1-23 серия)	https://kinokrad.co/274184-myslit-kak-prestupnik-8-sezon.html	8	2012	США, Канада	триллер, драма, криминал, детектив	Гленн Кершоу, Феликс Энрикез Алькала, Эдвард Аллен Бернеро	43
6500	Светофор 4 сезон (1-20 серии)	https://kinokrad.co/277808-svetofor-4-sezon-1-20-serii.html	8	2012	Россия	комедия	Роман Фокин	24
6501	Месть 2 сезон (1-22 серия)	https://kinokrad.co/277558-mest-2-sezon.html	9	2012	США	триллер, драма, мелодрама, детектив	Кеннет Финк, Мэтт Эрл Бисли, Сэнфорд Букставер	43
6502	Дело Дойлов 3 сезон (1-13 серия)	https://kinokrad.co/274437-delo-doylov-3-sezon.html	9	2012	Канада	драма, комедия, криминал	Стефан Скайни, Джон Ватчер, Кит Сэмплз	43
6503	Аббатство Даунтон 3 сезон	https://kinokrad.co/275655-abbatstvo-daunton-3-sezon.html	7	2012	Великобритания	драма	Брайан Персивал, Энди Годдар	54
6504	Американская история ужасов (1 сезон)	https://kinokrad.co/335086-amerikanskaya-istoriya-uzhasov-1-sezon.html	7	2011	США	ужасы, триллер, драма	Брэдли Букер, Альфонсо Гомес-Рехон, Майкл Аппендаль	43
6505	Правильная жена 3 сезон (1-22 серия)	https://kinokrad.co/274015-pravilnaya-zhena-3-sezon.html	7	2011	США	драма, криминал, детектив	Розмари Родригез, Майкл Цинберг, Брук Кеннеди	43
6506	Бесстыдники (8 сезон)	https://kinokrad.co/323107-besstydniki-8-sezon.html	8	2011	США	драма, комедия	Марк Майлод, Кристофер Чулак, Энтони Хемингуэй	55
6507	Ходячие мертвецы (2 сезон)	https://kinokrad.co/273997-hodyachie-mertvecy-2-sezons-18-04.html	9	2011	США	ужасы, триллер, драма	Эрнест Р. Дикерсон, Грег Никотеро, Гай Ферленд	43
6508	Сверхъестественное (7 сезон)	https://kinokrad.co/274550-sverhestestvennoe-7-sezon.html	9	2011	США	ужасы, фэнтези, триллер, драма, детектив, мистика	Роберт Сингер, Филип Сгриккиа, Ким Мэннерс	43
6509	ФонШоп (2 сезон)	https://kinokrad.co/312778-fonshop-2-sezon-2011.html	6	2011	Великобритания	комедия	Фил Баукер	30
6510	Интерны (2 сезон)	https://kinokrad.co/307829-interny-2-sezon-2011.html	6	2011	Россия	комедия	Максим Пежемский, Заур Болотаев, Милан Килибарда	25
6511	Лига (3 сезон)	https://kinokrad.co/304289-liga-3-sezon-2011.html	5	2011	США	комедия, спорт	Джефф Шеффер, Джеки Маркус	22
6512	Грабь награбленное (4 сезон)	https://kinokrad.co/302678-grab-nagrablennoe-4-sezon-2011.html	9	2011	США	боевик, криминал, детектив	Марк Роскин, Дин Девлин, Джонатан Фрейкс	43
6513	Убийство (1 сезон)	https://kinokrad.co/301220-ubiystvo-1-sezon-2011.html	8	2011	США, Канада	триллер, драма, криминал, детектив	Эдвард Бьянчи, Николь Кэссел, Фил Абрахам	43
6514	Конец игры / Эндшпиль (1 сезон)	https://kinokrad.co/300759-konec-igry-endshpil-1-sezon-2011.html	6	2011	Канада	драма, криминал	Дэвид Фрэйзи, Энн Вилер, Джеймс Хэд	43
6515	Люди Альфа (1 сезон)	https://kinokrad.co/300771-lyudi-alfa-1-sezon-2011.html	7	2011	США	фантастика, боевик, триллер, драма	Ник Копус, Мэттью Хатингс, Лесли Либман	43
6516	Обед в пятницу вечером (1 сезон)	https://kinokrad.co/301853-obed-v-pyatnicu-vecherom-1-sezon-2011.html	5	2011	Великобритания	комедия	Мартин Деннис, Стив Бенделак	22
6517	Затроленный / Супермаркет (1 сезон)	https://kinokrad.co/318422-zatrolennyy-1-sezon-2011.html	5	2011	Великобритания	комедия	Пол Харрисон, Джонатан Гершфилд, Пол Уолкер	26
6518	Под прикрытием (2 сезон)	https://kinokrad.co/318378-pod-prikrytiem-2-sezon-2011.html	6	2011	Болгария	боевик, драма, криминал	Виктор Божинов, Мартин Макариев, Zoran Petrovski	60
6519	Под прикрытием (1 сезон)	https://kinokrad.co/318374-pod-prikrytiem-1-sezon-2011.html	5	2011	Болгария	боевик, драма, криминал	Виктор Божинов, Мартин Макариев, Zoran Petrovski	60
6520	Метод Лавровой (1 сезон)	https://kinokrad.co/306911-metod-lavrovoy-1-sezon.html	7	2011	Россия	драма, мелодрама, детектив	Владислав Николаев, Андрей Ушатинский, Александр Городиский	43
6521	Борджиа (1 сезон)	https://kinokrad.co/302447-bordzhia-1-sezon-2011.html	8	2011	Венгрия, Ирландия, Канада	драма, криминал, история	Нил Джордан, Кари Скогланд, Джон Мэйбери	55
6522	Закусочная Боба (1 сезон)	https://kinokrad.co/309930-zakusochnaya-boba-1-sezon-2011.html	5	2011	США	мультфильм, комедия	Бернард Дерриман, Дженнифер Койл, Тайри Диллихей	22
6523	Мой маленький пони: Дружба – это чудо (2 сезон)	https://kinokrad.co/317234-moy-malenkiy-poni-druzhba-jeto-chudo-2-sezon-2011.html	7	2011	США, Канада	мультфильм, мюзикл, фэнтези, комедия, семейный	Джэйсон Тиссен, «Биг» Джим Миллер, Джеймс Вуттон	22
6524	Заключенный (1 сезон)	https://kinokrad.co/300555-zaklyuchennyy-1-sezon-2011.html	7	2011	Великобритания	фантастика, триллер, драма	Ник Харран	45
6525	Шерлок (1 сезон)	https://kinokrad.co/301556-sherlok-1-sezon-2011.html	9	2011	Великобритания, США	триллер, драма, криминал, детектив	Пол МакГиган, Ник Харран, Коки Гидройч	90
6526	Сверхъестественное (1 сезон)	https://kinokrad.co/308177-sverhestestvennoe-1-sezon-2011.html	7	2011	США, Япония	аниме, мультфильм, ужасы, фэнтези, драма, детектив	Ацуко Ишизука, Сигэюки Маия	22
6527	Discovery: Сквозь пространство и время с Морганом Фрименом (2 сезон)	https://kinokrad.co/283548-discovery-skvoz-prostranstvo-i-vremya-s-morganom-frimenom-2-sezon-2011.html	8	2011	США	документальный, детектив, семейный	Курт Сайенга, Джеффри Шарп, Энтони Ланд	43
6528	Пуаро (13 сезон)	https://kinokrad.co/318930-puaro-13-sezon-2011.html	8	2011	Великобритания	триллер, драма, криминал, детектив	Эдвард Беннет, Ренни Рай, Эндрю Грив	90
6529	Ниндзяго: Мастера Кружитцу (1 сезон)	https://kinokrad.co/318338-nindzyago-mastera-kruzhitcu-1-sezon-2011.html	6	2011	Дания, Сингапур, Канада, США	мультфильм, фантастика, фэнтези, боевик, комедия, приключения, семейный	Петер Хауснер, Майкл Хельмут Хансен, Трюлле Вильструп	30
6530	Их перепутали в роддоме (1 сезон)	https://kinokrad.co/303161-ih-pereputali-v-roddome-1-sezon-2011.html	8	2011	США	драма, мелодрама, семейный	Стив Майнер, Рон Лагомарсино, Мелани Мейрон	43
6531	Налёт (2 сезон)	https://kinokrad.co/321078-nalet-2-sezon-2011.html	8	2011	Франция	триллер, криминал	Ксавьер Палю, Оливье Маршаль, Фредерик Шёндёрфер	50
6532	Реальные пацаны (3 сезон)	https://kinokrad.co/307844-realnye-pacany-3-sezon-2011.html	5	2011	Россия	комедия	Жанна Кадникова	24
6533	Реальные пацаны (2 сезон)	https://kinokrad.co/307841-realnye-pacany-2-sezon-2011.html	6	2011	Россия	комедия	Жанна Кадникова	24
6534	Неприрученные (6 сезон)	https://kinokrad.co/307574-nepriruchennye-6-sezon-2011.html	5	2011	Великобритания	драма	Николас Лафлэнд, Пол Харрисон, Морис Филлипс	47
6535	Фарт (1 сезон)	https://kinokrad.co/301301-fart-1-sezon-2011.html	8	2011	США	драма, спорт	Аллен Култер, Брайан Кирк, Мими Ледер	52
6536	Терра Нова (1 сезон)	https://kinokrad.co/301124-terra-nova-1-sezon-2011.html	9	2011	Австралия, США	фантастика, детектив, приключения	Джон Кассар, Карен Гавиола, Алекс Грейвз	43
6537	Расследования Мердока (4 сезон)	https://kinokrad.co/293017-rassledovaniya-merdoka-4-sezon-2011.html	8	2011	Канада, Великобритания	драма, криминал, детектив	Лори Линд, Кэл Кунс, Харви Кросслэнд	43
6538	Чужие крылья (1 сезон)	https://kinokrad.co/309356-chuzhie-krylya-1-sezon-2011.html	7	2011	Россия	приключения, военный	Алексей Чистиков, Александр Фиронов	45
6539	Игра (1 сезон)	https://kinokrad.co/298168-igra-1-sezon-2011.html	8	2011	Россия	криминал, детектив	Георгий Гаврилов, Сергей Лесогоров, Геннадий Иванов	46
6540	C.S.I.: Майами (10 сезон)	https://kinokrad.co/291682-c-s-i-mayami-10-sezon-2011.html	9	2011	США	боевик, триллер, драма, криминал, детектив	Сэм Хилл, Джо Чаппелль, Скотт Лаутанен	43
6541	Последний настоящий мужчина (1 сезон)	https://kinokrad.co/307382-posledniy-nastoyaschiy-muzhchina-1-sezon-2011.html	8	2011	США	комедия	Джон Пасквин, Виктор Гонзалез, Тед Уасс	22
6542	Орлиное сердце (1 сезон)	https://kinokrad.co/300809-orlinoe-serdce-1-sezon-2011.html	6	2011	США	боевик, комедия	Джейсон Уолинер, Эрик Аппель, Джей Карас	11
6543	Дурман (7 сезон)	https://kinokrad.co/286599-durman-7-sezon-2011.html	8	2011	США	драма, комедия, криминал	Крейг Зиск, Майкл Трим, Скотт Эллис	25
6544	Вера (1 сезон)	https://kinokrad.co/287350-vera-1-sezon-2011.html	8	2011	Великобритания	драма, криминал, детектив	Уильям Синклер, Питер Хор, Пол Уиттингтон	95
6545	Сестра Джеки (3 сезон)	https://kinokrad.co/285937-sestra-dzheki-3-sezon-2011.html	5	2011	США	драма, комедия	Пол Фиг, Джесси Перец, Брендан Уолш	22
6546	Убежище (4 сезон)	https://kinokrad.co/292843-ubezhische-4-sezon-2011.html	9	2011	Канада	фантастика, фэнтези, драма, детектив	Мартин Вуд, Стивен А. Эделсон, Брентон Спенсер	43
6547	Торчвуд / Охотники за чужими (4 сезон)	https://kinokrad.co/295906-torchvud-ohotniki-za-chuzhimi-4-sezon-2011.html	8	2011	Великобритания, Канада	фантастика, боевик, триллер, драма	Энди Годдар, Эшли Вэй, Эрос Лин	50
6548	Дорогой доктор (3 сезон)	https://kinokrad.co/285869-dorogoy-doktor-3-sezon-2011.html	7	2011	США	драма, комедия	Мэттью Пенн, Эмиль Левисетти, Майкл Ройч	43
6549	Торчвуд / Охотники за чужими (3 сезон)	https://kinokrad.co/295903-torchvud-ohotniki-za-chuzhimi-3-sezon-2011.html	7	2011	Великобритания, Канада	фантастика, боевик, триллер, драма	Энди Годдар, Эшли Вэй, Эрос Лин	50
6550	Торчвуд / Охотники за чужими (2 сезон)	https://kinokrad.co/295900-torchvud-ohotniki-za-chuzhimi-2-sezon-2011.html	7	2011	Великобритания, Канада	фантастика, боевик, триллер, драма	Энди Годдар, Эшли Вэй, Эрос Лин	50
6551	Правосудие (2 сезон)	https://kinokrad.co/285111-pravosudie-2-sezon-2011.html	9	2011	США	боевик, триллер, драма, криминал	Адам Аркин, Джон Эвнет, Питер Уэрнер	43
6552	Лютер (2 сезон)	https://kinokrad.co/286025-lyuter-2-sezon-2011.html	9	2011	Великобритания	драма, криминал, детектив	Сэм Миллер, Брайан Кирк, Стефан Шварц	60
6553	Анатомия страсти (8 сезон)	https://kinokrad.co/285351-anatomiya-strasti-8-sezon-2011.html	9	2011	США	драма, мелодрама	Роб Корн, Шандра Уилсон, Тони Фелан	43
6554	Ответный удар (2 сезон)	https://kinokrad.co/285031-otvetnyy-udar-2-sezon-2011.html	7	2011	Великобритания	боевик, триллер, драма	Дэниэл Персивал, Майкл Дж. Бассетт, Пол Вильшурст	46
6555	Морская полиция: Спецотдел (9 сезон)	https://kinokrad.co/284549-morskaya-policiya-specotdel-9-sezon-2011.html	8	2011	США	боевик, триллер, драма, комедия, криминал, детектив	Дэннис Смит, Тони Уормби, Терренс О’Хара	43
6556	Красные браслеты (1 сезон)	https://kinokrad.co/284889-krasnye-braslety-1-sezon-2011.html	8	2011	Испания	драма, комедия	Пау Фрейксас, Ориоль Феррер, Марта Паисса	45
6557	Джейк и пираты Нетландии (1 сезон)	https://kinokrad.co/271710-dzheyk-i-piraty-netlandii-1-sezon.html	7	2011	США	мультфильм	Хауи Паркинс, Мики Коркоран	22
6558	Лесник (1 сезон)	https://kinokrad.co/284861-lesnik-1-sezon-2011.html	8	2011	Россия	детектив	Виктор Конисевич, Сергей Артимович, Алеко Цабадзе	45
6559	Милдред Пирс (1 сезон)	https://kinokrad.co/300793-mildred-pirs-1-sezon-2011.html	8	2011	США	драма	Тодд Хейнс	60
6560	Грань (4 сезон)	https://kinokrad.co/283936-gran-4-sezon-2011.html	9	2011	США, Канада	фантастика, триллер, драма, детектив	Джо Чаппелль, Брэд Андерсон, Фред Туа	43
6561	Кости (7 сезон)	https://kinokrad.co/286991-kosti-7-sezon-2011.html	9	2011	США	драма, мелодрама, комедия, криминал, детектив	Иэн Тойнтон, Дуайт Х. Литтл, Жанно Шварц	43
6562	Декстер (6 сезон)	https://kinokrad.co/287464-dekster-6-sezon-2011.html	8	2011	США	триллер, драма, криминал, детектив	Джон Дал, Стив Шилл, Кит Гордон	55
6563	Яблочное зернышко 13 (1 сезон)	https://kinokrad.co/282617-yablochnoe-zernyshko-13-1-sezon-2011.html	7	2011	Япония	аниме, мультфильм, фантастика	Такаюки Хамана	23
6564	Время приключений (3 сезон)	https://kinokrad.co/292684-vremya-priklyucheniy-3-sezon-2011.html	8	2011	США	мультфильм, фэнтези, комедия, приключения, семейный	Ларри Лэйчлитер, Элизабет Ито, Андрес Салафф	22
6565	Суета (1 сезон)	https://kinokrad.co/284989-sueta-1-sezon-2011.html	6	2011	США	драма	Себастьян Лакос	
6566	Vизитеры (2 сезон)	https://kinokrad.co/292363-vizitery-2-sezon-2011.html	8	2011	США	фантастика, триллер, драма	Ив Симоно, Дэвид Баррет, Брайан Спайсер	43
6567	Тайный дневник девушки по вызову (4 сезон)	https://kinokrad.co/286517-taynyy-dnevnik-devushki-po-vyzovu-4-sezon-2011.html	7	2011	Великобритания	драма	Ян Деманж, Сьюзэн Талли, Питер Лайдон	22
6568	Американская семейка (3 сезон)	https://kinokrad.co/285749-amerikanskaya-semeyka-3-sezon-2011.html	8	2011	США	комедия	Гейл Манкусо, Майкл Алан Спиллер, Джейсон Уайнер	22
6569	Парки и зоны отдыха (4 сезон)	https://kinokrad.co/285705-parki-i-zony-otdyha-4-sezon-2011.html	7	2011	США	комедия	Дин Холлэнд, Майкл Шур, Кен Уиттингэм	21
6570	Парки и зоны отдыха (3 сезон)	https://kinokrad.co/285703-parki-i-zony-otdyha-3-sezon-2011.html	8	2011	США	комедия	Дин Холлэнд, Майкл Шур, Кен Уиттингэм	21
6571	Наруто: Ураганные хроники (11 сезон)	https://kinokrad.co/285301-naruto-uragannye-hroniki-11-sezon-2011.html	8	2011	Япония	аниме, мультфильм, фантастика, боевик, триллер, приключения	Хаято Датэ, Юки Эри	24
6572	Наруто: Ураганные хроники (10 сезон)	https://kinokrad.co/285299-naruto-uragannye-hroniki-10-sezon-2011.html	7	2011	Япония	аниме, мультфильм, фантастика, боевик, триллер, приключения	Хаято Датэ, Юки Эри	24
6573	Луни Тюнз шоу (1 сезон)	https://kinokrad.co/284413-luni-tyunz-shou-1-sezon-2011.html	9	2011	США	мультфильм, комедия, семейный	Сет Кирсли, Джефф Сьергей, Спайк Брандт	22
6574	Босс (1 сезон)	https://kinokrad.co/284367-boss-1-sezon-2011.html	7	2011	США	драма, криминал	Жан Де Сегонзак, Марио Ван Пиблз, Джим МакКэй	56
6575	Столпы Земли (1 сезон)	https://kinokrad.co/284365-stolpy-zemli-1-sezon-2011.html	8	2011	Германия, Канада, Великобритания	триллер, драма, мелодрама, история	Серджо Мимика-Геззан	60
6576	Блудливая Калифорния (4 сезон)	https://kinokrad.co/281813-bludlivaya-kaliforniya-4-sezon-2011.html	9	2011	США	драма, комедия	Дэвид Фон Энкен, Адам Бернштейн, Джон Дал	28
6577	Зои Харт из южного штата (1 сезон)	https://kinokrad.co/283492-zoi-hart-iz-yuzhnogo-shtata-1-sezon-2011.html	8	2011	США	драма, мелодрама, комедия	Дэвид Пэймер, Тим Мэтисон, Джеймс Хейман	43
6578	Морская полиция: Лос-Анджелес (3 сезон)	https://kinokrad.co/291202-morskaya-policiya-los-andzheles-3-sezon-2011.html	8	2011	США	триллер, драма, криминал, детектив	Тони Уормби, Терренс О’Хара, Дэннис Смит	43
6579	Эпизоды (1 сезон)	https://kinokrad.co/290893-jepizody-1-sezon-2011.html	7	2011	США, Великобритания	комедия	Иэн Б. МакДональд, Джим Филд Смит, Джеймс Гриффитс	28
6580	Два с половиной человека (9 сезон)	https://kinokrad.co/290887-dva-s-polovinoy-cheloveka-9-sezon-2011.html	7	2011	США	комедия	Джеймс Уиддоуз, Гари Хэлворсон, Памела Фрайман	22
6581	Физика или химия (7 сезон)	https://kinokrad.co/283293-fizika-ili-himiya-7-sezon-2011.html	8	2011	Испания	драма, комедия	Хавьер Кинтас, Хуан Мануэль Родригес Пачон, Карлос Наварро Баллестерос	75
6582	Однокурсники (3 сезон)	https://kinokrad.co/285465-odnokursniki-3-sezon-2011.html	8	2011	США	комедия	Тристрам Шапиро, Джо Руссо, Энтони Руссо	22
6583	Южный Парк (15 сезон)	https://kinokrad.co/286743-yuzhnyy-park-15-sezon-2011.html	6	2011	США	мультфильм, комедия	Трей Паркер, Эрик Сточ, Мэтт Стоун	22
6584	Великолепный век (2 сезон)	https://kinokrad.co/283033-velikolepnyy-vek-2-sezon-2011.html	8	2011	Турция	драма, мелодрама, военный, биография, история	Дурул Тайлан, Ягмур Тайлан	100
6585	Великолепный век (1 сезон)	https://kinokrad.co/283031-velikolepnyy-vek-1-sezon-2011.html	8	2011	Турция	драма, мелодрама, военный, биография, история	Дурул Тайлан, Ягмур Тайлан	100
6586	Опасная пятёрка (1 сезон)	https://kinokrad.co/280543-opasnaya-pyatjorka-1-sezon-1-seriya.html	6	2011	Австралия	комедия, приключения	Дарио Руссо	24
6587	Брак по завещанию 2 сезон (1-8 серия)	https://kinokrad.co/274005-brak-po-zaveschaniyu-2-sezon-18-04.html	8	2011	Россия	мелодрама	Василий Сериков	44
6588	Заложники любви (1 сезон)	https://kinokrad.co/282670-zalozhniki-lyubvi-1-sezon-2011.html	6	2011	Россия	мелодрама	Эдуард Реджепов	45
6589	В Филадельфии всегда солнечно (7 сезон)	https://kinokrad.co/286083-v-filadelfii-vsegda-solnechno-7-sezon-2011.html	9	2011	США	комедия	Мэтт Шекман, Фред Сэвэдж, Дэниэл Эттиэс	22
6590	Как я встретил вашу маму (7 сезон)	https://kinokrad.co/282155-kak-ya-vstretil-vashu-mamu-7-sezon-2011.html	8	2011	США	комедия, мелодрама, драма	Памела Фрайман, Роб Гринберг, Майкл Дж. Ши	22
6591	Дневник доктора (3 сезон)	https://kinokrad.co/283218-dnevnik-doktora-3-sezon-2011.html	7	2011	Германия	комедия	София Аллет-Кохе, Франциска Мейер Прайс, Оливер Шмитц	45
6592	Гримм 1 сезон (1-22 серия)	https://kinokrad.co/280985-grimm-1-sezon.html	9	2011	США	ужасы, фэнтези, драма, детектив	Норберто Барба, Терренс О’Хара	43
6593	Форс-мажоры 1 сезон (1-12 серия)	https://kinokrad.co/280969-fors-mazhory-1-sezon.html	8	2011	США	драма, комедия	Кевин Брэй, Антон Кроппер, Майкл Смит	43
6594	Речные монстры (3 сезон)	https://kinokrad.co/282032-rechnye-monstry-3-sezon-2011.html	9	2011	США	документальный	Барни Ревилл, Доминик Уэстон, Шарлотта Джонс	45
6595	Фурцева. Легенда о Екатерине (1 сезон)	https://kinokrad.co/284751-furceva-legenda-o-ekaterine-1-sezon-2011.html	7	2011	Россия	биография	Сергей Попов	50
6596	Бывшие (1 сезон)	https://kinokrad.co/282974-byvshie-1-sezon-2011.html	8	2011	США	комедия	Энди Кэдифф, Джеффри Мэлман, Терри Хьюз	22
6597	Майк и Молли (2 сезон)	https://kinokrad.co/285231-mayk-i-molli-2-sezon-2011.html	8	2011	США	комедия	Джеймс Берроуз, Фил Льюис, Майкл МакДональд	22
6598	Призраки (1 сезон)	https://kinokrad.co/284077-prizraki-1-sezon-2015.html	8	2011	Великобритания	ужасы, фэнтези, мистика	Фэррен Блэкберн, Том Шенклэнд	56
6599	Молокососы (5 сезон)	https://kinokrad.co/282681-molokososy-5-sezon-2011.html	8	2011	Великобритания	драма	Чарльз Мартин, Саймон Мэсси, Джек Клоф	45
6600	Закрытая школа (2 сезон)	https://kinokrad.co/282652-zakrytaya-shkola-2-sezon-2011.html	8	2011	Россия	триллер, драма, детектив	Олег Асадулин, Константин Статский, Андрей Записов	48
6601	Месть 2 сезон (1-22 серия)	https://kinokrad.co/277558-mest-2-sezon.html	9	2012	США	триллер, драма, мелодрама, детектив	Кеннет Финк, Мэтт Эрл Бисли, Сэнфорд Букставер	43
6602	Дело Дойлов 3 сезон (1-13 серия)	https://kinokrad.co/274437-delo-doylov-3-sezon.html	9	2012	Канада	драма, комедия, криминал	Стефан Скайни, Джон Ватчер, Кит Сэмплз	43
6603	Аббатство Даунтон 3 сезон	https://kinokrad.co/275655-abbatstvo-daunton-3-sezon.html	7	2012	Великобритания	драма	Брайан Персивал, Энди Годдар	54
6604	Американская история ужасов (1 сезон)	https://kinokrad.co/335086-amerikanskaya-istoriya-uzhasov-1-sezon.html	7	2011	США	ужасы, триллер, драма	Брэдли Букер, Альфонсо Гомес-Рехон, Майкл Аппендаль	43
6605	Правильная жена 3 сезон (1-22 серия)	https://kinokrad.co/274015-pravilnaya-zhena-3-sezon.html	7	2011	США	драма, криминал, детектив	Розмари Родригез, Майкл Цинберг, Брук Кеннеди	43
6606	Бесстыдники (8 сезон)	https://kinokrad.co/323107-besstydniki-8-sezon.html	8	2011	США	драма, комедия	Марк Майлод, Кристофер Чулак, Энтони Хемингуэй	55
6607	Ходячие мертвецы (2 сезон)	https://kinokrad.co/273997-hodyachie-mertvecy-2-sezons-18-04.html	9	2011	США	ужасы, триллер, драма	Эрнест Р. Дикерсон, Грег Никотеро, Гай Ферленд	43
6608	Сверхъестественное (7 сезон)	https://kinokrad.co/274550-sverhestestvennoe-7-sezon.html	9	2011	США	ужасы, фэнтези, триллер, драма, детектив, мистика	Роберт Сингер, Филип Сгриккиа, Ким Мэннерс	43
6609	ФонШоп (2 сезон)	https://kinokrad.co/312778-fonshop-2-sezon-2011.html	6	2011	Великобритания	комедия	Фил Баукер	30
6610	Интерны (2 сезон)	https://kinokrad.co/307829-interny-2-sezon-2011.html	6	2011	Россия	комедия	Максим Пежемский, Заур Болотаев, Милан Килибарда	25
6611	Лига (3 сезон)	https://kinokrad.co/304289-liga-3-sezon-2011.html	5	2011	США	комедия, спорт	Джефф Шеффер, Джеки Маркус	22
6612	Грабь награбленное (4 сезон)	https://kinokrad.co/302678-grab-nagrablennoe-4-sezon-2011.html	9	2011	США	боевик, криминал, детектив	Марк Роскин, Дин Девлин, Джонатан Фрейкс	43
6613	Убийство (1 сезон)	https://kinokrad.co/301220-ubiystvo-1-sezon-2011.html	8	2011	США, Канада	триллер, драма, криминал, детектив	Эдвард Бьянчи, Николь Кэссел, Фил Абрахам	43
6614	Конец игры / Эндшпиль (1 сезон)	https://kinokrad.co/300759-konec-igry-endshpil-1-sezon-2011.html	6	2011	Канада	драма, криминал	Дэвид Фрэйзи, Энн Вилер, Джеймс Хэд	43
6615	Люди Альфа (1 сезон)	https://kinokrad.co/300771-lyudi-alfa-1-sezon-2011.html	7	2011	США	фантастика, боевик, триллер, драма	Ник Копус, Мэттью Хатингс, Лесли Либман	43
6616	Обед в пятницу вечером (1 сезон)	https://kinokrad.co/301853-obed-v-pyatnicu-vecherom-1-sezon-2011.html	5	2011	Великобритания	комедия	Мартин Деннис, Стив Бенделак	22
6617	Затроленный / Супермаркет (1 сезон)	https://kinokrad.co/318422-zatrolennyy-1-sezon-2011.html	5	2011	Великобритания	комедия	Пол Харрисон, Джонатан Гершфилд, Пол Уолкер	26
6618	Под прикрытием (2 сезон)	https://kinokrad.co/318378-pod-prikrytiem-2-sezon-2011.html	6	2011	Болгария	боевик, драма, криминал	Виктор Божинов, Мартин Макариев, Zoran Petrovski	60
6619	Под прикрытием (1 сезон)	https://kinokrad.co/318374-pod-prikrytiem-1-sezon-2011.html	5	2011	Болгария	боевик, драма, криминал	Виктор Божинов, Мартин Макариев, Zoran Petrovski	60
6620	Метод Лавровой (1 сезон)	https://kinokrad.co/306911-metod-lavrovoy-1-sezon.html	7	2011	Россия	драма, мелодрама, детектив	Владислав Николаев, Андрей Ушатинский, Александр Городиский	43
6621	Борджиа (1 сезон)	https://kinokrad.co/302447-bordzhia-1-sezon-2011.html	8	2011	Венгрия, Ирландия, Канада	драма, криминал, история	Нил Джордан, Кари Скогланд, Джон Мэйбери	55
6622	Закусочная Боба (1 сезон)	https://kinokrad.co/309930-zakusochnaya-boba-1-sezon-2011.html	5	2011	США	мультфильм, комедия	Бернард Дерриман, Дженнифер Койл, Тайри Диллихей	22
6623	Мой маленький пони: Дружба – это чудо (2 сезон)	https://kinokrad.co/317234-moy-malenkiy-poni-druzhba-jeto-chudo-2-sezon-2011.html	7	2011	США, Канада	мультфильм, мюзикл, фэнтези, комедия, семейный	Джэйсон Тиссен, «Биг» Джим Миллер, Джеймс Вуттон	22
6624	Заключенный (1 сезон)	https://kinokrad.co/300555-zaklyuchennyy-1-sezon-2011.html	7	2011	Великобритания	фантастика, триллер, драма	Ник Харран	45
6625	Шерлок (1 сезон)	https://kinokrad.co/301556-sherlok-1-sezon-2011.html	9	2011	Великобритания, США	триллер, драма, криминал, детектив	Пол МакГиган, Ник Харран, Коки Гидройч	90
6626	Сверхъестественное (1 сезон)	https://kinokrad.co/308177-sverhestestvennoe-1-sezon-2011.html	7	2011	США, Япония	аниме, мультфильм, ужасы, фэнтези, драма, детектив	Ацуко Ишизука, Сигэюки Маия	22
6627	Discovery: Сквозь пространство и время с Морганом Фрименом (2 сезон)	https://kinokrad.co/283548-discovery-skvoz-prostranstvo-i-vremya-s-morganom-frimenom-2-sezon-2011.html	8	2011	США	документальный, детектив, семейный	Курт Сайенга, Джеффри Шарп, Энтони Ланд	43
6628	Пуаро (13 сезон)	https://kinokrad.co/318930-puaro-13-sezon-2011.html	8	2011	Великобритания	триллер, драма, криминал, детектив	Эдвард Беннет, Ренни Рай, Эндрю Грив	90
6629	Ниндзяго: Мастера Кружитцу (1 сезон)	https://kinokrad.co/318338-nindzyago-mastera-kruzhitcu-1-sezon-2011.html	6	2011	Дания, Сингапур, Канада, США	мультфильм, фантастика, фэнтези, боевик, комедия, приключения, семейный	Петер Хауснер, Майкл Хельмут Хансен, Трюлле Вильструп	30
6630	Их перепутали в роддоме (1 сезон)	https://kinokrad.co/303161-ih-pereputali-v-roddome-1-sezon-2011.html	8	2011	США	драма, мелодрама, семейный	Стив Майнер, Рон Лагомарсино, Мелани Мейрон	43
6631	Налёт (2 сезон)	https://kinokrad.co/321078-nalet-2-sezon-2011.html	8	2011	Франция	триллер, криминал	Ксавьер Палю, Оливье Маршаль, Фредерик Шёндёрфер	50
6632	Реальные пацаны (3 сезон)	https://kinokrad.co/307844-realnye-pacany-3-sezon-2011.html	5	2011	Россия	комедия	Жанна Кадникова	24
6633	Реальные пацаны (2 сезон)	https://kinokrad.co/307841-realnye-pacany-2-sezon-2011.html	6	2011	Россия	комедия	Жанна Кадникова	24
6634	Неприрученные (6 сезон)	https://kinokrad.co/307574-nepriruchennye-6-sezon-2011.html	5	2011	Великобритания	драма	Николас Лафлэнд, Пол Харрисон, Морис Филлипс	47
6635	Фарт (1 сезон)	https://kinokrad.co/301301-fart-1-sezon-2011.html	8	2011	США	драма, спорт	Аллен Култер, Брайан Кирк, Мими Ледер	52
6636	Терра Нова (1 сезон)	https://kinokrad.co/301124-terra-nova-1-sezon-2011.html	9	2011	Австралия, США	фантастика, детектив, приключения	Джон Кассар, Карен Гавиола, Алекс Грейвз	43
6637	Расследования Мердока (4 сезон)	https://kinokrad.co/293017-rassledovaniya-merdoka-4-sezon-2011.html	8	2011	Канада, Великобритания	драма, криминал, детектив	Лори Линд, Кэл Кунс, Харви Кросслэнд	43
6638	Чужие крылья (1 сезон)	https://kinokrad.co/309356-chuzhie-krylya-1-sezon-2011.html	7	2011	Россия	приключения, военный	Алексей Чистиков, Александр Фиронов	45
6639	Игра (1 сезон)	https://kinokrad.co/298168-igra-1-sezon-2011.html	8	2011	Россия	криминал, детектив	Георгий Гаврилов, Сергей Лесогоров, Геннадий Иванов	46
6640	C.S.I.: Майами (10 сезон)	https://kinokrad.co/291682-c-s-i-mayami-10-sezon-2011.html	9	2011	США	боевик, триллер, драма, криминал, детектив	Сэм Хилл, Джо Чаппелль, Скотт Лаутанен	43
6641	Последний настоящий мужчина (1 сезон)	https://kinokrad.co/307382-posledniy-nastoyaschiy-muzhchina-1-sezon-2011.html	8	2011	США	комедия	Джон Пасквин, Виктор Гонзалез, Тед Уасс	22
6642	Орлиное сердце (1 сезон)	https://kinokrad.co/300809-orlinoe-serdce-1-sezon-2011.html	6	2011	США	боевик, комедия	Джейсон Уолинер, Эрик Аппель, Джей Карас	11
6643	Дурман (7 сезон)	https://kinokrad.co/286599-durman-7-sezon-2011.html	8	2011	США	драма, комедия, криминал	Крейг Зиск, Майкл Трим, Скотт Эллис	25
6644	Вера (1 сезон)	https://kinokrad.co/287350-vera-1-sezon-2011.html	8	2011	Великобритания	драма, криминал, детектив	Уильям Синклер, Питер Хор, Пол Уиттингтон	95
6645	Сестра Джеки (3 сезон)	https://kinokrad.co/285937-sestra-dzheki-3-sezon-2011.html	5	2011	США	драма, комедия	Пол Фиг, Джесси Перец, Брендан Уолш	22
6646	Убежище (4 сезон)	https://kinokrad.co/292843-ubezhische-4-sezon-2011.html	9	2011	Канада	фантастика, фэнтези, драма, детектив	Мартин Вуд, Стивен А. Эделсон, Брентон Спенсер	43
6647	Торчвуд / Охотники за чужими (4 сезон)	https://kinokrad.co/295906-torchvud-ohotniki-za-chuzhimi-4-sezon-2011.html	8	2011	Великобритания, Канада	фантастика, боевик, триллер, драма	Энди Годдар, Эшли Вэй, Эрос Лин	50
6648	Дорогой доктор (3 сезон)	https://kinokrad.co/285869-dorogoy-doktor-3-sezon-2011.html	7	2011	США	драма, комедия	Мэттью Пенн, Эмиль Левисетти, Майкл Ройч	43
6649	Торчвуд / Охотники за чужими (3 сезон)	https://kinokrad.co/295903-torchvud-ohotniki-za-chuzhimi-3-sezon-2011.html	7	2011	Великобритания, Канада	фантастика, боевик, триллер, драма	Энди Годдар, Эшли Вэй, Эрос Лин	50
6650	Торчвуд / Охотники за чужими (2 сезон)	https://kinokrad.co/295900-torchvud-ohotniki-za-chuzhimi-2-sezon-2011.html	7	2011	Великобритания, Канада	фантастика, боевик, триллер, драма	Энди Годдар, Эшли Вэй, Эрос Лин	50
6651	Правосудие (2 сезон)	https://kinokrad.co/285111-pravosudie-2-sezon-2011.html	9	2011	США	боевик, триллер, драма, криминал	Адам Аркин, Джон Эвнет, Питер Уэрнер	43
6652	Лютер (2 сезон)	https://kinokrad.co/286025-lyuter-2-sezon-2011.html	9	2011	Великобритания	драма, криминал, детектив	Сэм Миллер, Брайан Кирк, Стефан Шварц	60
6653	Анатомия страсти (8 сезон)	https://kinokrad.co/285351-anatomiya-strasti-8-sezon-2011.html	9	2011	США	драма, мелодрама	Роб Корн, Шандра Уилсон, Тони Фелан	43
6654	Ответный удар (2 сезон)	https://kinokrad.co/285031-otvetnyy-udar-2-sezon-2011.html	7	2011	Великобритания	боевик, триллер, драма	Дэниэл Персивал, Майкл Дж. Бассетт, Пол Вильшурст	46
6655	Морская полиция: Спецотдел (9 сезон)	https://kinokrad.co/284549-morskaya-policiya-specotdel-9-sezon-2011.html	8	2011	США	боевик, триллер, драма, комедия, криминал, детектив	Дэннис Смит, Тони Уормби, Терренс О’Хара	43
6656	Красные браслеты (1 сезон)	https://kinokrad.co/284889-krasnye-braslety-1-sezon-2011.html	8	2011	Испания	драма, комедия	Пау Фрейксас, Ориоль Феррер, Марта Паисса	45
6657	Джейк и пираты Нетландии (1 сезон)	https://kinokrad.co/271710-dzheyk-i-piraty-netlandii-1-sezon.html	7	2011	США	мультфильм	Хауи Паркинс, Мики Коркоран	22
6658	Лесник (1 сезон)	https://kinokrad.co/284861-lesnik-1-sezon-2011.html	8	2011	Россия	детектив	Виктор Конисевич, Сергей Артимович, Алеко Цабадзе	45
6659	Милдред Пирс (1 сезон)	https://kinokrad.co/300793-mildred-pirs-1-sezon-2011.html	8	2011	США	драма	Тодд Хейнс	60
6660	Грань (4 сезон)	https://kinokrad.co/283936-gran-4-sezon-2011.html	9	2011	США, Канада	фантастика, триллер, драма, детектив	Джо Чаппелль, Брэд Андерсон, Фред Туа	43
6661	Кости (7 сезон)	https://kinokrad.co/286991-kosti-7-sezon-2011.html	9	2011	США	драма, мелодрама, комедия, криминал, детектив	Иэн Тойнтон, Дуайт Х. Литтл, Жанно Шварц	43
6662	Декстер (6 сезон)	https://kinokrad.co/287464-dekster-6-sezon-2011.html	8	2011	США	триллер, драма, криминал, детектив	Джон Дал, Стив Шилл, Кит Гордон	55
6663	Яблочное зернышко 13 (1 сезон)	https://kinokrad.co/282617-yablochnoe-zernyshko-13-1-sezon-2011.html	7	2011	Япония	аниме, мультфильм, фантастика	Такаюки Хамана	23
6664	Время приключений (3 сезон)	https://kinokrad.co/292684-vremya-priklyucheniy-3-sezon-2011.html	8	2011	США	мультфильм, фэнтези, комедия, приключения, семейный	Ларри Лэйчлитер, Элизабет Ито, Андрес Салафф	22
6665	Суета (1 сезон)	https://kinokrad.co/284989-sueta-1-sezon-2011.html	6	2011	США	драма	Себастьян Лакос	
6666	Vизитеры (2 сезон)	https://kinokrad.co/292363-vizitery-2-sezon-2011.html	8	2011	США	фантастика, триллер, драма	Ив Симоно, Дэвид Баррет, Брайан Спайсер	43
6667	Тайный дневник девушки по вызову (4 сезон)	https://kinokrad.co/286517-taynyy-dnevnik-devushki-po-vyzovu-4-sezon-2011.html	7	2011	Великобритания	драма	Ян Деманж, Сьюзэн Талли, Питер Лайдон	22
6668	Американская семейка (3 сезон)	https://kinokrad.co/285749-amerikanskaya-semeyka-3-sezon-2011.html	8	2011	США	комедия	Гейл Манкусо, Майкл Алан Спиллер, Джейсон Уайнер	22
6669	Парки и зоны отдыха (4 сезон)	https://kinokrad.co/285705-parki-i-zony-otdyha-4-sezon-2011.html	7	2011	США	комедия	Дин Холлэнд, Майкл Шур, Кен Уиттингэм	21
6670	Парки и зоны отдыха (3 сезон)	https://kinokrad.co/285703-parki-i-zony-otdyha-3-sezon-2011.html	8	2011	США	комедия	Дин Холлэнд, Майкл Шур, Кен Уиттингэм	21
6671	Наруто: Ураганные хроники (11 сезон)	https://kinokrad.co/285301-naruto-uragannye-hroniki-11-sezon-2011.html	8	2011	Япония	аниме, мультфильм, фантастика, боевик, триллер, приключения	Хаято Датэ, Юки Эри	24
6672	Наруто: Ураганные хроники (10 сезон)	https://kinokrad.co/285299-naruto-uragannye-hroniki-10-sezon-2011.html	7	2011	Япония	аниме, мультфильм, фантастика, боевик, триллер, приключения	Хаято Датэ, Юки Эри	24
6673	Луни Тюнз шоу (1 сезон)	https://kinokrad.co/284413-luni-tyunz-shou-1-sezon-2011.html	9	2011	США	мультфильм, комедия, семейный	Сет Кирсли, Джефф Сьергей, Спайк Брандт	22
6674	Босс (1 сезон)	https://kinokrad.co/284367-boss-1-sezon-2011.html	7	2011	США	драма, криминал	Жан Де Сегонзак, Марио Ван Пиблз, Джим МакКэй	56
6675	Столпы Земли (1 сезон)	https://kinokrad.co/284365-stolpy-zemli-1-sezon-2011.html	8	2011	Германия, Канада, Великобритания	триллер, драма, мелодрама, история	Серджо Мимика-Геззан	60
6676	Блудливая Калифорния (4 сезон)	https://kinokrad.co/281813-bludlivaya-kaliforniya-4-sezon-2011.html	9	2011	США	драма, комедия	Дэвид Фон Энкен, Адам Бернштейн, Джон Дал	28
6677	Зои Харт из южного штата (1 сезон)	https://kinokrad.co/283492-zoi-hart-iz-yuzhnogo-shtata-1-sezon-2011.html	8	2011	США	драма, мелодрама, комедия	Дэвид Пэймер, Тим Мэтисон, Джеймс Хейман	43
6678	Морская полиция: Лос-Анджелес (3 сезон)	https://kinokrad.co/291202-morskaya-policiya-los-andzheles-3-sezon-2011.html	8	2011	США	триллер, драма, криминал, детектив	Тони Уормби, Терренс О’Хара, Дэннис Смит	43
6679	Эпизоды (1 сезон)	https://kinokrad.co/290893-jepizody-1-sezon-2011.html	7	2011	США, Великобритания	комедия	Иэн Б. МакДональд, Джим Филд Смит, Джеймс Гриффитс	28
6680	Два с половиной человека (9 сезон)	https://kinokrad.co/290887-dva-s-polovinoy-cheloveka-9-sezon-2011.html	7	2011	США	комедия	Джеймс Уиддоуз, Гари Хэлворсон, Памела Фрайман	22
6681	Физика или химия (7 сезон)	https://kinokrad.co/283293-fizika-ili-himiya-7-sezon-2011.html	8	2011	Испания	драма, комедия	Хавьер Кинтас, Хуан Мануэль Родригес Пачон, Карлос Наварро Баллестерос	75
6682	Однокурсники (3 сезон)	https://kinokrad.co/285465-odnokursniki-3-sezon-2011.html	8	2011	США	комедия	Тристрам Шапиро, Джо Руссо, Энтони Руссо	22
6683	Южный Парк (15 сезон)	https://kinokrad.co/286743-yuzhnyy-park-15-sezon-2011.html	6	2011	США	мультфильм, комедия	Трей Паркер, Эрик Сточ, Мэтт Стоун	22
6684	Великолепный век (2 сезон)	https://kinokrad.co/283033-velikolepnyy-vek-2-sezon-2011.html	8	2011	Турция	драма, мелодрама, военный, биография, история	Дурул Тайлан, Ягмур Тайлан	100
6685	Великолепный век (1 сезон)	https://kinokrad.co/283031-velikolepnyy-vek-1-sezon-2011.html	8	2011	Турция	драма, мелодрама, военный, биография, история	Дурул Тайлан, Ягмур Тайлан	100
6686	Опасная пятёрка (1 сезон)	https://kinokrad.co/280543-opasnaya-pyatjorka-1-sezon-1-seriya.html	6	2011	Австралия	комедия, приключения	Дарио Руссо	24
6687	Брак по завещанию 2 сезон (1-8 серия)	https://kinokrad.co/274005-brak-po-zaveschaniyu-2-sezon-18-04.html	8	2011	Россия	мелодрама	Василий Сериков	44
6688	Заложники любви (1 сезон)	https://kinokrad.co/282670-zalozhniki-lyubvi-1-sezon-2011.html	6	2011	Россия	мелодрама	Эдуард Реджепов	45
6689	В Филадельфии всегда солнечно (7 сезон)	https://kinokrad.co/286083-v-filadelfii-vsegda-solnechno-7-sezon-2011.html	9	2011	США	комедия	Мэтт Шекман, Фред Сэвэдж, Дэниэл Эттиэс	22
6690	Как я встретил вашу маму (7 сезон)	https://kinokrad.co/282155-kak-ya-vstretil-vashu-mamu-7-sezon-2011.html	8	2011	США	комедия, мелодрама, драма	Памела Фрайман, Роб Гринберг, Майкл Дж. Ши	22
6691	Дневник доктора (3 сезон)	https://kinokrad.co/283218-dnevnik-doktora-3-sezon-2011.html	7	2011	Германия	комедия	София Аллет-Кохе, Франциска Мейер Прайс, Оливер Шмитц	45
6692	Гримм 1 сезон (1-22 серия)	https://kinokrad.co/280985-grimm-1-sezon.html	9	2011	США	ужасы, фэнтези, драма, детектив	Норберто Барба, Терренс О’Хара	43
6693	Форс-мажоры 1 сезон (1-12 серия)	https://kinokrad.co/280969-fors-mazhory-1-sezon.html	8	2011	США	драма, комедия	Кевин Брэй, Антон Кроппер, Майкл Смит	43
6694	Речные монстры (3 сезон)	https://kinokrad.co/282032-rechnye-monstry-3-sezon-2011.html	9	2011	США	документальный	Барни Ревилл, Доминик Уэстон, Шарлотта Джонс	45
6695	Фурцева. Легенда о Екатерине (1 сезон)	https://kinokrad.co/284751-furceva-legenda-o-ekaterine-1-sezon-2011.html	7	2011	Россия	биография	Сергей Попов	50
6696	Бывшие (1 сезон)	https://kinokrad.co/282974-byvshie-1-sezon-2011.html	8	2011	США	комедия	Энди Кэдифф, Джеффри Мэлман, Терри Хьюз	22
6697	Майк и Молли (2 сезон)	https://kinokrad.co/285231-mayk-i-molli-2-sezon-2011.html	8	2011	США	комедия	Джеймс Берроуз, Фил Льюис, Майкл МакДональд	22
6698	Призраки (1 сезон)	https://kinokrad.co/284077-prizraki-1-sezon-2015.html	8	2011	Великобритания	ужасы, фэнтези, мистика	Фэррен Блэкберн, Том Шенклэнд	56
6699	Молокососы (5 сезон)	https://kinokrad.co/282681-molokososy-5-sezon-2011.html	8	2011	Великобритания	драма	Чарльз Мартин, Саймон Мэсси, Джек Клоф	45
6700	Закрытая школа (2 сезон)	https://kinokrad.co/282652-zakrytaya-shkola-2-sezon-2011.html	8	2011	Россия	триллер, драма, детектив	Олег Асадулин, Константин Статский, Андрей Записов	48
6701	Закрытая школа (1 сезон)	https://kinokrad.co/282651-zakrytaya-shkola-1-sezon-2011.html	8	2011	Россия	триллер, драма, детектив	Олег Асадулин, Константин Статский, Андрей Записов	48
6702	Втайне от родителей (4 сезон)	https://kinokrad.co/283201-vtayne-ot-roditeley-4-sezon-2011.html	8	2011	США	драма, мелодрама, комедия, семейный	Кит Трусделл, Энсон Уильямс, Гэйл Брэдли	43
6703	Арчер 3 сезон (1-13 серия)	https://kinokrad.co/280880-archer-3-sezon.html	7	2011	США	мультфильм, боевик, комедия	Адам Рид, Брайан Фордни	22
6704	Школа монстров 2 сезон (1-36 серия)	https://kinokrad.co/280866-shkola-monstrov-2-sezon.html	7	2011	США	мультфильм	Оду Паден, Эрик Радомски	3
6705	Безмолвный свидетель (14 сезон)	https://kinokrad.co/272648-bezmolvnyy-svidetel-14-sezon.html	8	2011	Великобритания	драма, криминал, детектив	Ричард Сайни, Ренни Рай, Николас Рентон	43
6706	Гавайи 5.0 (2 сезон)	https://kinokrad.co/285121-gavayi-5-0-2-sezon-2011.html	9	2011	США	боевик, драма, криминал	Брайан Спайсер, Ларри Тенг, Стив Бойум	43
6707	Новенькая 1 сезон (1-24 серия)	https://kinokrad.co/274028-novenkaya-1-sezon.html	9	2011	США	комедия	Джейк Кэздан, Макс Уинклер, Джесси Перетц	22
6708	Оборотень / Волчонок (1 сезон)	https://kinokrad.co/274190-oboroten-1-sezon.html	9	2011	США	ужасы, триллер, драма, мелодрама, комедия	Рассел Малкэй, Тим Эндрю, Тоби Уилкинс	43
6709	Луи (2 сезон)	https://kinokrad.co/281897-lui-2-sezon-2011.html	7	2011	США	драма, комедия	Луис С.К., Лиз Плонка	23
6710	Риццоли и Айлс 2 сезон (1-15 серия)	https://kinokrad.co/280102-riccoli-i-ayls-2-sezon.html	9	2011	США	драма, криминал, детектив	Марк Абер, Майкл Кэтлман, Стив Робин	43
6711	Бесстыдники 1 сезон (1-12 серия)	https://kinokrad.co/280081-besstydniki-1-sezon.html	9	2011	США	драма, комедия	Марк Майлод, Мими Ледер, Энтони Хемингуэй	55
6712	Однажды в сказке (3 сезон)	https://kinokrad.co/256162-odnazhdy-v-skazke-3-sezon.html	9	2011	США	фэнтези, мелодрама, приключения	Дин Уайт, Ральф Хемекер	43
6713	Доктор Кто 7 сезон (1-13 серия)	https://kinokrad.co/256153-doktor-kto-7-sezon.html	9	2011	Великобритания	фантастика, драма, комедия, приключения, семейный	Грэм Харпер, Эрос Лин	43
6714	Обмани меня 3 сезон	https://kinokrad.co/256139-obmani-menya-3-sezon-smotret-onlayn.html	9	2011	США	триллер, драма, криминал, детектив	Дэниэл Сакхейм, Майкл Цинберг	43
6715	Роковые красотки 1 сезон (1-12 серия)	https://kinokrad.co/276653-rokovye-krasotki-1-sezon-1-12-seriya.html	7	2011	США	триллер, детектив	Дэрин Скотт	22
6716	Милые обманщицы 2 сезон (1-25 серия)	https://kinokrad.co/255891-milye-obmanschicy-2-sezon.html	9	2011	США	триллер, драма, детектив	Норман Бакли, Рон Лагомарсино	43
6717	Тайны Смолвиля 10 сезон (1-22 серия)	https://kinokrad.co/255760-tayny-smolvilya-10-sezon.html	9	2011	США, Канада	фантастика, драма, мелодрама, приключения	Джеймс Маршалл, Грег Биман	43
6718	Спартак: Боги арены (2 сезон)	https://kinokrad.co/281981-spartak-bogi-areny-2-sezon-2011.html	8	2011	США	боевик, драма, приключения, биография, история	Рик Джейкобсон, Джон Фоусет, Майкл Херст	55
6719	Ясновидец 6 сезон (1-16 серия)	https://kinokrad.co/273993-yasnovidec-6-sezon.html	7	2011	США	комедия, криминал, детектив	Мэл Дэмски, Стив Фрэнкс, Джеймс Родэй	43
6720	Смертельная битва: Наследие 1 сезон (1-9 серия)	https://kinokrad.co/279920-smertelnaya-bitva-nasledie-1-sezon.html	7	2011	США, Канада	фэнтези, боевик, триллер, криминал	Кевин Танчароэн	12
6721	Борджиа 2 сезон (1-12 серия)	https://kinokrad.co/13338-bordzhia-2-sezon.html	8	2011	Франция, Германия, Чехия	драма	Метин Хусейн, Кристоф Шреве, Дирбла Уолш	53
6722	Место преступления Лас-Вегас 12 сезон (1-22 серия)	https://kinokrad.co/274462-c-s-i-mesto-prestupleniya-12-sezon.html	7	2011	США, Канада	триллер, драма, криминал, детектив	Кеннет Финк, Ричард Дж. Льюис, Алек Смайт	43
6723	Глухарь 4 сезон (1-16 серия)	https://kinokrad.co/256141-gluhar-4-sezon.html	8	2011	Россия	драма, детектив	Гузэль Киреева, Тимур Алпатов	45
6724	Доктор Хаус 8 сезон	https://kinokrad.co/255925-doktor-haus-8-sezon-smotret-onlayn.html	9	2011	США	драма, детектив	Грег Яйтанс, Деран Сарафян	43
6725	Касл 4 сезон (1-23 серия)	https://kinokrad.co/255892-kasl-4-sezon.html	8	2011	США	драма, комедия, криминал, детектив	Роб Боумен, Джон Терлески	43
6726	Гриффины (10 сезон)	https://kinokrad.co/282005-griffiny-10-sezon-2011.html	7	2011	США	мультфильм, комедия	Питер Шин, Джеймс Пурдум, Доминик Бьянчи	22
6727	Две разорившиеся девочки 1 сезон	https://kinokrad.co/274031-dve-razorivshiesya-devochki-1-sezon.html	8	2011	США	комедия	Дон Скардино, Фред Сэвэдж, Фил Льюис	22
6728	Плохие / Отбросы 3 сезон (1-8 серия)	https://kinokrad.co/280685-plohie-otbrosy-3-sezon.html	8	2011	Великобритания	фантастика, фэнтези, драма, комедия	Том Грин, Джонатан ван Тюллекен, Том Харпер	43
6729	Однажды в сказке 1 сезон (1-22 серия)	https://kinokrad.co/274006-odnazhdy-v-skazke-1-sezon.html	9	2011	США	фэнтези, мелодрама, приключения	Ральф Хемекер, Дин Уайт, Рон Андервуд	43
6730	Американский папаша 7 сезон (1-18 серия)	https://kinokrad.co/274131-amerikanskiy-papasha-7-sezon.html	7	2011	США	мультфильм, комедия	Рон Хьюгарт, Брент Вудс, Энтони Льои	22
6731	Светофор 2 сезон (1-20 серии)	https://kinokrad.co/277810-svetofor-2-sezon-1-20-serii.html	7	2011	Россия	комедия	Роман Фокин	24
6732	Светофор 3 сезон (1-20 серии)	https://kinokrad.co/277809-svetofor-3-sezon-1-20-serii.html	7	2011	Россия	комедия	Роман Фокин	24
6733	Менталист 4 сезон (1-24 серия)	https://kinokrad.co/274338-mentalist-4-sezon.html	8	2011	США	триллер, драма, криминал, детектив	Крис Лонг, Эрик Ланёвилль, Джон Шоуолтер	43
6734	Симпсоны 23 сезон (1-22 серия)	https://kinokrad.co/274227-simpsony-23-sezon.html	10	2011	США	мультфильм, комедия	Марк Керклэнд, Стивен Дин Мур, Джим Рирдон	22
6735	Шпион (1-6 серия)	https://kinokrad.co/273043-shpion.html	7	2011	Великобритания	комедия	Джон Хендерсон, Бен Тэйлор	22
6736	Быть человеком 1 сезон (1-13 серия)	https://kinokrad.co/274107-byt-chelovekom-1-sezon.html	8	2011	Канада, США	ужасы, фэнтези, драма, мистика	Паоло Барзмен, Стефан Плещински, Адам Кэйн	43
6737	Рухнувшие небеса 1 сезон (1-10 серия)	https://kinokrad.co/278890-ruhnuvshie-nebesa-1-sezon-1-10-seriya.html	7	2011	США, Канада	фантастика, боевик, триллер	Грег Биман, Серджо Мимика-Геззан	43
6738	Мыслить как преступник 7 сезон (1-22 серия)	https://kinokrad.co/274170-myslit-kak-prestupnik-7-sezon.html	8	2011	США, Канада	триллер, драма, криминал, детектив	Гленн Кершоу, Феликс Энрикез Алькала, Эдвард Аллен Бернеро	43
6739	Во все тяжкие 4 сезон (1-13 серия)	https://kinokrad.co/256148-vo-vse-tyazhkie-4-sezon.html	9	2011	США	триллер, драма, криминал	Мишель Максвелл МакЛарен	47
6740	Месть 1 сезон (1-22 серия)	https://kinokrad.co/277450-mest-1-sezon-1-22-seriya.html	8	2011	США	триллер, драма, мелодрама, детектив	Кеннет Финк, Мэтт Эрл Бисли, Сэнфорд Букставер	43
6741	Фэйри 2 сезон (1-22 серия)	https://kinokrad.co/274346-feyri-2-sezon.html	8	2011	Канада	фэнтези, криминал	Стив ДиМарко, Рон Мерфи, Джон Фоусет	43
6742	Шаман 1 сезон (1-16 серия)	https://kinokrad.co/274357-shaman-1-sezon.html	7	2011	Россия	драма, криминал	Максим Кубринский	45
6743	Дело Дойлов 2 сезон (1-13 серия)	https://kinokrad.co/274434-delo-doylov-2-sezon.html	10	2011	Канада	драма, комедия, криминал	Стефан Скайни, Джон Ватчер, Кит Сэмплз	43
6744	Бывает и хуже 3 сезон	https://kinokrad.co/275562-byvaet-i-huzhe-3.html	8	2011	США	комедия	Ли Шаллат Чемел, Эллиот Хегарти	22
6745	Аббатство Даунтон 2 сезон	https://kinokrad.co/275656-abbatstvo-daunton-2-sezon.html	7	2011	Великобритания	драма	Брайан Персивал, Энди Годдар	54
6746	Светофор 1 сезон (1-20 серии)	https://kinokrad.co/278261-svetofor-1-sezon-1-20-serii.html	7	2011	Россия	комедия	Роман Фокин	24
6747	Реальные пацаны (11 сезон)	https://kinokrad.co/325742-realnye-pacany-11-sezon.html	7	2010	Россия	комедия	Жанна Кадникова	24
6748	Правильная жена 2 сезон (1-23 серия)	https://kinokrad.co/274014-pravilnaya-zhena-2-sezon.html	8	2010	США	драма, криминал, детектив	Розмари Родригез, Майкл Цинберг, Брук Кеннеди	43
6749	Ходячие мертвецы 1 сезон	https://kinokrad.co/273995-hodyachie-mertvecy-1-sezons-18-04.html	9	2010	США	ужасы, триллер, драма	Эрнест Р. Дикерсон, Грег Никотеро, Гай Ферленд	43
6750	Гавайи 5-0 / Полиция Гавайев  (9 сезон)	https://kinokrad.co/330914-gavayi-5-0-policiya-gavayev-9-sezon.html	7	2010	США	боевик, драма, криминал	Брайан Спайсер, Майя Врвило, Ларри Тенг	43
6751	Сверхъестественное (6 сезон)	https://kinokrad.co/274549-sverhestestvennoe-6-sezon.html	9	2010	США	ужасы, фэнтези, триллер, драма, детектив, мистика	Роберт Сингер, Филип Сгриккиа, Ким Мэннерс	43
6752	Интерны (1 сезон)	https://kinokrad.co/307826-interny-1-sezon-2010.html	8	2010	Россия	комедия	Максим Пежемский, Заур Болотаев, Милан Килибарда	25
6753	Мой маленький пони: Дружба – это чудо (6 сезон)	https://kinokrad.co/317258-moy-malenkiy-poni-druzhba-jeto-chudo-6-sezon-2016.html	8	2010	США, Канада	мультфильм, мюзикл, фэнтези, комедия, семейный	Джэйсон Тиссен, «Биг» Джим Миллер, Джеймс Вуттон	22
6754	Лига (2 сезон)	https://kinokrad.co/304286-liga-2-sezon-2010.html	4	2010	США	комедия, спорт	Джефф Шеффер, Джеки Маркус	22
6755	Грабь награбленное (3 сезон)	https://kinokrad.co/302675-grab-nagrablennoe-3-sezon-2010.html	8	2010	США	боевик, криминал, детектив	Марк Роскин, Дин Девлин, Джонатан Фрейкс	43
6756	Компьютерщики (4 сезон)	https://kinokrad.co/300737-kompyuterschiki-4-sezon-2010.html	7	2010	Великобритания	комедия	Грэхэм Лайнхэн, Ричард Боден, Бен Фуллер	22
6757	Валландер (2 сезон)	https://kinokrad.co/298687-vallander-2-sezon-2010.html	7	2010	Великобритания, Швеция, США, Германия	триллер, криминал, драма, детектив	Филип Мартин, Найал МакКормик, Хетти Макдональд	90
6758	Неприрученные (5 сезон)	https://kinokrad.co/303365-nepriruchennye-5-sezon-2010.html	5	2010	Великобритания	драма	Николас Лафлэнд, Пол Харрисон, Морис Филлипс	47
6759	Мой маленький пони: Дружба – это чудо (5 сезон)	https://kinokrad.co/317254-moy-malenkiy-poni-druzhba-jeto-chudo-5-sezon-2015.html	7	2010	США, Канада	мультфильм, мюзикл, фэнтези, комедия, семейный	Джэйсон Тиссен, «Биг» Джим Миллер, Джеймс Вуттон	22
6760	Мой маленький пони: Дружба – это чудо (4 сезон)	https://kinokrad.co/317250-moy-malenkiy-poni-druzhba-jeto-chudo-4-sezon-2013.html	7	2010	США, Канада	мультфильм, мюзикл, фэнтези, комедия, семейный	Джэйсон Тиссен, «Биг» Джим Миллер, Джеймс Вуттон	22
6761	Мой маленький пони: Дружба – это чудо (3 сезон)	https://kinokrad.co/317238-moy-malenkiy-poni-druzhba-jeto-chudo-3-sezon-2012.html	7	2010	США, Канада	мультфильм, мюзикл, фэнтези, комедия, семейный	Джэйсон Тиссен, «Биг» Джим Миллер, Джеймс Вуттон	22
6762	Мой маленький пони: Дружба – это чудо (1 сезон)	https://kinokrad.co/317230-moy-malenkiy-poni-druzhba-jeto-chudo-1-sezon-2010.html	7	2010	США, Канада	мультфильм, мюзикл, фэнтези, комедия, семейный	Джэйсон Тиссен, «Биг» Джим Миллер, Джеймс Вуттон	22
6763	Я не должен был выжить! (4 сезон)	https://kinokrad.co/296242-ya-ne-dolzhen-byl-vyzhit-4-sezon-2010.html	7	2010	Великобритания, США	документальный, драма, биография, история	Йен Барнс, Жуль Уильямсон, Ренни Бартлетт	44
6764	Я не должен был выжить! (3 сезон)	https://kinokrad.co/296239-ya-ne-dolzhen-byl-vyzhit-3-sezon-2010.html	6	2010	Великобритания, США	документальный, драма, биография, история	Йен Барнс, Жуль Уильямсон, Ренни Бартлетт	44
6765	Пуаро (12 сезон)	https://kinokrad.co/318926-puaro-12-sezon-2010.html	8	2010	Великобритания	триллер, драма, криминал, детектив	Эдвард Беннет, Ренни Рай, Эндрю Грив	90
6766	Discovery: Сквозь пространство и время с Морганом Фрименом (1 сезон)	https://kinokrad.co/283545-discovery-skvoz-prostranstvo-i-vremya-s-morganom-frimenom-1-sezon-2010.html	8	2010	США	документальный, детектив, семейный	Курт Сайенга, Джеффри Шарп, Энтони Ланд	43
6767	Рейк (1 сезон)	https://kinokrad.co/298369-reyk-1-sezon-2010.html	7	2010	Австралия	драма, комедия	Питер Дункан, Роуэн Вудс, Джесика Хоббс	43
6768	Реальные пацаны (1 сезон)	https://kinokrad.co/307838-realnye-pacany-1-sezon-2010.html	7	2010	Россия	комедия	Жанна Кадникова	24
6769	Событие (1 сезон)	https://kinokrad.co/301109-sobytie-1-sezon-2010.html	8	2010	США	фантастика, триллер, драма, криминал, детектив	Джеффри Рейнер, Норберто Барба, Милан Чейлов	43
6770	Расследования Мердока (3 сезон)	https://kinokrad.co/293014-rassledovaniya-merdoka-3-sezon-2010.html	9	2010	Канада, Великобритания	драма, криминал, детектив	Лори Линд, Кэл Кунс, Харви Кросслэнд	43
6771	Не ври мне (1 сезон)	https://kinokrad.co/292978-ne-vri-mne-1-sezon-2010.html	8	2010	Россия	детектив, драма	Мария Евстафьева, Ларин Дмитрий, Инга Монаенкова	
6772	Врата (1 сезон)	https://kinokrad.co/302792-vrata-1-sezon-2010.html	8	2010	США	фэнтези, триллер, драма, криминал, детектив	Дэвид Баррет, Фред Гербер, Терри МакДонаф	43
6773	Валландер (2 сезон)	https://kinokrad.co/297805-vallander-2-sezon-2010.html	7	2010	Швеция	триллер, драма, криминал, детектив	Стефан Апельгрен, Агнета Фагерстрём-Ольссон, Лейф Магнуссон	89
6774	Дурман (6 сезон)	https://kinokrad.co/286597-durman-6-sezon-2010.html	8	2010	США	драма, комедия, криминал	Крейг Зиск, Майкл Трим, Скотт Эллис	25
6775	Дом терпимости (1 сезон)	https://kinokrad.co/294328-dom-terpimosti-1-sezon-2010.html	8	2010	Франция	драма	Мабрук Эль Мекри, Жером Корнюо, Карло Да Фонсека Парсотам	52
6776	Сестра Джеки (2 сезон)	https://kinokrad.co/285935-sestra-dzheki-2-sezon-2010.html	6	2010	США	драма, комедия	Пол Фиг, Джесси Перец, Брендан Уолш	22
6777	Убежище (3 сезон)	https://kinokrad.co/292840-ubezhische-3-sezon-2010.html	9	2010	Канада	фантастика, фэнтези, драма, детектив	Мартин Вуд, Стивен А. Эделсон, Брентон Спенсер	43
6778	Дорогой доктор (2 сезон)	https://kinokrad.co/285867-dorogoy-doktor-2-sezon-2010.html	8	2010	США	драма, комедия	Мэттью Пенн, Эмиль Левисетти, Майкл Ройч	43
6779	Торчвуд / Охотники за чужими (1 сезон)	https://kinokrad.co/295897-torchvud-ohotniki-za-chuzhimi-1-sezon-2010.html	7	2010	Великобритания, Канада	фантастика, боевик, триллер, драма	Энди Годдар, Эшли Вэй, Эрос Лин	50
6780	Правосудие (1 сезон)	https://kinokrad.co/285109-pravosudie-1-sezon-2010.html	8	2010	США	боевик, триллер, драма, криминал	Адам Аркин, Джон Эвнет, Питер Уэрнер	43
6781	Гавайи 5.0 (7 сезон)	https://kinokrad.co/306926-gavayi-5.0-7-sezon.html	7	2010	США	боевик, драма, криминал	Брайан Спайсер, Ларри Тенг, Стив Бойум	43
6782	Лютер (1 сезон)	https://kinokrad.co/285979-lyuter-1-sezon-2010.html	8	2010	Великобритания	драма, криминал, детектив	Сэм Миллер, Брайан Кирк, Стефан Шварц	60
6783	Анатомия страсти (7 сезон)	https://kinokrad.co/285349-anatomiya-strasti-7-sezon-2010.html	8	2010	США	драма, мелодрама	Роб Корн, Шандра Уилсон, Тони Фелан	43
6784	Морская полиция: Спецотдел (8 сезон)	https://kinokrad.co/284547-morskaya-policiya-specotdel-8-sezon-2010.html	8	2010	США	боевик, триллер, драма, комедия, криминал, детектив	Дэннис Смит, Тони Уормби, Терренс О’Хара	43
6785	C.S.I.: Майами (9 сезон)	https://kinokrad.co/291679-c-s-i-mayami-9-sezon-2010.html	9	2010	США	боевик, триллер, драма, криминал, детектив	Сэм Хилл, Джо Чаппелль, Скотт Лаутанен	43
6786	Закон и порядок. Специальный корпус (12 сезон)	https://kinokrad.co/300204-zakon-i-poryadok-specialnyy-korpus-12-sezon-2010.html	6	2010	США	триллер, драма, криминал, детектив	Дэвид Платт, Питер Лето, Жан Де Сегонзак	43
6787	Трансформеры: Прайм (1 сезон)	https://kinokrad.co/283654-transformery-praym-1-sezon-2010.html	8	2010	США	мультфильм, фантастика, боевик, приключения	Дэвид Хартман, Шонт Нигогосян, Винтон Хёк	22
6788	Тюдоры (4 сезон)	https://kinokrad.co/283651-tyudory-4-sezon-2010.html	8	2010	Ирландия, Канада, США	драма, мелодрама, военный, история	Киаран Доннелли, Джереми Подесва, Дирбла Уолш	53
6789	Волшебники из Вэйверли Плэйс (4 сезон)	https://kinokrad.co/282796-volshebniki-iz-vjeyverli-pljeys-4-sezon-2010.html	8	2010	США	фэнтези, комедия, семейный	Виктор Гонзалез, Боб Коэрр, Роберт Берлингер	22
6790	Грань (3 сезон)	https://kinokrad.co/283935-gran-3-sezon-2010.html	9	2010	США, Канада	фантастика, триллер, драма, детектив	Джо Чаппелль, Брэд Андерсон, Фред Туа	43
6791	Кости (6 сезон)	https://kinokrad.co/286989-kosti-6-sezon-2010.html	9	2010	США	драма, мелодрама, комедия, криминал, детектив	Иэн Тойнтон, Дуайт Х. Литтл, Жанно Шварц	43
6792	Декстер (5 сезон)	https://kinokrad.co/287461-dekster-5-sezon-2010.html	8	2010	США	триллер, драма, криминал, детектив	Джон Дал, Стив Шилл, Кит Гордон	55
6793	Время приключений (2 сезон)	https://kinokrad.co/292681-vremya-priklyucheniy-2-sezon-2010.html	8	2010	США	мультфильм, фэнтези, комедия, приключения, семейный	Ларри Лэйчлитер, Элизабет Ито, Андрес Салафф	22
6794	Время приключений (1 сезон)	https://kinokrad.co/292678-vremya-priklyucheniy-1-sezon-2010.html	9	2010	США	мультфильм, фэнтези, комедия, приключения, семейный	Ларри Лэйчлитер, Элизабет Ито, Андрес Салафф	22
6795	Выжившие (2 сезон)	https://kinokrad.co/292831-vyzhivshie-2-sezon-2010.html	8	2010	Великобритания	фантастика, драма	Джэми Пэйн, Эндрю Ганн, Иэн Б. МакДональд	52
6796	Фиксики (1 сезон)	https://kinokrad.co/287121-fiksiki-1-sezon-2010.html	8	2010	Россия	мультфильм, детский	Васико Бедошвили, Андрей Колпин, Сергей Меринов	6
6797	Тайный дневник девушки по вызову (3 сезон)	https://kinokrad.co/286515-taynyy-dnevnik-devushki-po-vyzovu-3-sezon-2010.html	7	2010	Великобритания	драма	Ян Деманж, Сьюзэн Талли, Питер Лайдон	22
6798	Ласко – Кулак Бога (2 сезон)	https://kinokrad.co/286531-lasko-kulak-boga-2-sezon-2010.html	7	2010	Германия, Австрия	боевик, приключения	Аксель Занд, Franco Tozza	60
6799	Американская семейка (2 сезон)	https://kinokrad.co/285747-amerikanskaya-semeyka-2-sezon-2010.html	8	2010	США	комедия	Гейл Манкусо, Майкл Алан Спиллер, Джейсон Уайнер	22
6800	Мелисса и Джоуи (1 сезон)	https://kinokrad.co/285669-melissa-i-dzhoui-1-sezon-2010.html	8	2010	США	комедия	Роб Шиллер, Джеффри Мэлман, Дэвид Трейнер	22
6801	Закрытая школа (1 сезон)	https://kinokrad.co/282651-zakrytaya-shkola-1-sezon-2011.html	8	2011	Россия	триллер, драма, детектив	Олег Асадулин, Константин Статский, Андрей Записов	48
6802	Втайне от родителей (4 сезон)	https://kinokrad.co/283201-vtayne-ot-roditeley-4-sezon-2011.html	8	2011	США	драма, мелодрама, комедия, семейный	Кит Трусделл, Энсон Уильямс, Гэйл Брэдли	43
6803	Арчер 3 сезон (1-13 серия)	https://kinokrad.co/280880-archer-3-sezon.html	7	2011	США	мультфильм, боевик, комедия	Адам Рид, Брайан Фордни	22
6804	Школа монстров 2 сезон (1-36 серия)	https://kinokrad.co/280866-shkola-monstrov-2-sezon.html	7	2011	США	мультфильм	Оду Паден, Эрик Радомски	3
6805	Безмолвный свидетель (14 сезон)	https://kinokrad.co/272648-bezmolvnyy-svidetel-14-sezon.html	8	2011	Великобритания	драма, криминал, детектив	Ричард Сайни, Ренни Рай, Николас Рентон	43
6806	Гавайи 5.0 (2 сезон)	https://kinokrad.co/285121-gavayi-5-0-2-sezon-2011.html	9	2011	США	боевик, драма, криминал	Брайан Спайсер, Ларри Тенг, Стив Бойум	43
6807	Новенькая 1 сезон (1-24 серия)	https://kinokrad.co/274028-novenkaya-1-sezon.html	9	2011	США	комедия	Джейк Кэздан, Макс Уинклер, Джесси Перетц	22
6808	Оборотень / Волчонок (1 сезон)	https://kinokrad.co/274190-oboroten-1-sezon.html	9	2011	США	ужасы, триллер, драма, мелодрама, комедия	Рассел Малкэй, Тим Эндрю, Тоби Уилкинс	43
6809	Луи (2 сезон)	https://kinokrad.co/281897-lui-2-sezon-2011.html	7	2011	США	драма, комедия	Луис С.К., Лиз Плонка	23
6810	Риццоли и Айлс 2 сезон (1-15 серия)	https://kinokrad.co/280102-riccoli-i-ayls-2-sezon.html	9	2011	США	драма, криминал, детектив	Марк Абер, Майкл Кэтлман, Стив Робин	43
6811	Бесстыдники 1 сезон (1-12 серия)	https://kinokrad.co/280081-besstydniki-1-sezon.html	9	2011	США	драма, комедия	Марк Майлод, Мими Ледер, Энтони Хемингуэй	55
6812	Однажды в сказке (3 сезон)	https://kinokrad.co/256162-odnazhdy-v-skazke-3-sezon.html	9	2011	США	фэнтези, мелодрама, приключения	Дин Уайт, Ральф Хемекер	43
6813	Доктор Кто 7 сезон (1-13 серия)	https://kinokrad.co/256153-doktor-kto-7-sezon.html	9	2011	Великобритания	фантастика, драма, комедия, приключения, семейный	Грэм Харпер, Эрос Лин	43
6814	Обмани меня 3 сезон	https://kinokrad.co/256139-obmani-menya-3-sezon-smotret-onlayn.html	9	2011	США	триллер, драма, криминал, детектив	Дэниэл Сакхейм, Майкл Цинберг	43
6815	Роковые красотки 1 сезон (1-12 серия)	https://kinokrad.co/276653-rokovye-krasotki-1-sezon-1-12-seriya.html	7	2011	США	триллер, детектив	Дэрин Скотт	22
6816	Милые обманщицы 2 сезон (1-25 серия)	https://kinokrad.co/255891-milye-obmanschicy-2-sezon.html	9	2011	США	триллер, драма, детектив	Норман Бакли, Рон Лагомарсино	43
6817	Тайны Смолвиля 10 сезон (1-22 серия)	https://kinokrad.co/255760-tayny-smolvilya-10-sezon.html	9	2011	США, Канада	фантастика, драма, мелодрама, приключения	Джеймс Маршалл, Грег Биман	43
6818	Спартак: Боги арены (2 сезон)	https://kinokrad.co/281981-spartak-bogi-areny-2-sezon-2011.html	8	2011	США	боевик, драма, приключения, биография, история	Рик Джейкобсон, Джон Фоусет, Майкл Херст	55
6819	Ясновидец 6 сезон (1-16 серия)	https://kinokrad.co/273993-yasnovidec-6-sezon.html	7	2011	США	комедия, криминал, детектив	Мэл Дэмски, Стив Фрэнкс, Джеймс Родэй	43
6820	Смертельная битва: Наследие 1 сезон (1-9 серия)	https://kinokrad.co/279920-smertelnaya-bitva-nasledie-1-sezon.html	7	2011	США, Канада	фэнтези, боевик, триллер, криминал	Кевин Танчароэн	12
6821	Борджиа 2 сезон (1-12 серия)	https://kinokrad.co/13338-bordzhia-2-sezon.html	8	2011	Франция, Германия, Чехия	драма	Метин Хусейн, Кристоф Шреве, Дирбла Уолш	53
6822	Место преступления Лас-Вегас 12 сезон (1-22 серия)	https://kinokrad.co/274462-c-s-i-mesto-prestupleniya-12-sezon.html	7	2011	США, Канада	триллер, драма, криминал, детектив	Кеннет Финк, Ричард Дж. Льюис, Алек Смайт	43
6823	Глухарь 4 сезон (1-16 серия)	https://kinokrad.co/256141-gluhar-4-sezon.html	8	2011	Россия	драма, детектив	Гузэль Киреева, Тимур Алпатов	45
6824	Доктор Хаус 8 сезон	https://kinokrad.co/255925-doktor-haus-8-sezon-smotret-onlayn.html	9	2011	США	драма, детектив	Грег Яйтанс, Деран Сарафян	43
6825	Касл 4 сезон (1-23 серия)	https://kinokrad.co/255892-kasl-4-sezon.html	8	2011	США	драма, комедия, криминал, детектив	Роб Боумен, Джон Терлески	43
6826	Гриффины (10 сезон)	https://kinokrad.co/282005-griffiny-10-sezon-2011.html	7	2011	США	мультфильм, комедия	Питер Шин, Джеймс Пурдум, Доминик Бьянчи	22
6827	Две разорившиеся девочки 1 сезон	https://kinokrad.co/274031-dve-razorivshiesya-devochki-1-sezon.html	8	2011	США	комедия	Дон Скардино, Фред Сэвэдж, Фил Льюис	22
6828	Плохие / Отбросы 3 сезон (1-8 серия)	https://kinokrad.co/280685-plohie-otbrosy-3-sezon.html	8	2011	Великобритания	фантастика, фэнтези, драма, комедия	Том Грин, Джонатан ван Тюллекен, Том Харпер	43
6829	Однажды в сказке 1 сезон (1-22 серия)	https://kinokrad.co/274006-odnazhdy-v-skazke-1-sezon.html	9	2011	США	фэнтези, мелодрама, приключения	Ральф Хемекер, Дин Уайт, Рон Андервуд	43
6830	Американский папаша 7 сезон (1-18 серия)	https://kinokrad.co/274131-amerikanskiy-papasha-7-sezon.html	7	2011	США	мультфильм, комедия	Рон Хьюгарт, Брент Вудс, Энтони Льои	22
6831	Светофор 2 сезон (1-20 серии)	https://kinokrad.co/277810-svetofor-2-sezon-1-20-serii.html	7	2011	Россия	комедия	Роман Фокин	24
6832	Светофор 3 сезон (1-20 серии)	https://kinokrad.co/277809-svetofor-3-sezon-1-20-serii.html	7	2011	Россия	комедия	Роман Фокин	24
6833	Менталист 4 сезон (1-24 серия)	https://kinokrad.co/274338-mentalist-4-sezon.html	8	2011	США	триллер, драма, криминал, детектив	Крис Лонг, Эрик Ланёвилль, Джон Шоуолтер	43
6834	Симпсоны 23 сезон (1-22 серия)	https://kinokrad.co/274227-simpsony-23-sezon.html	10	2011	США	мультфильм, комедия	Марк Керклэнд, Стивен Дин Мур, Джим Рирдон	22
6835	Шпион (1-6 серия)	https://kinokrad.co/273043-shpion.html	7	2011	Великобритания	комедия	Джон Хендерсон, Бен Тэйлор	22
6836	Быть человеком 1 сезон (1-13 серия)	https://kinokrad.co/274107-byt-chelovekom-1-sezon.html	8	2011	Канада, США	ужасы, фэнтези, драма, мистика	Паоло Барзмен, Стефан Плещински, Адам Кэйн	43
6837	Рухнувшие небеса 1 сезон (1-10 серия)	https://kinokrad.co/278890-ruhnuvshie-nebesa-1-sezon-1-10-seriya.html	7	2011	США, Канада	фантастика, боевик, триллер	Грег Биман, Серджо Мимика-Геззан	43
6838	Мыслить как преступник 7 сезон (1-22 серия)	https://kinokrad.co/274170-myslit-kak-prestupnik-7-sezon.html	8	2011	США, Канада	триллер, драма, криминал, детектив	Гленн Кершоу, Феликс Энрикез Алькала, Эдвард Аллен Бернеро	43
6839	Во все тяжкие 4 сезон (1-13 серия)	https://kinokrad.co/256148-vo-vse-tyazhkie-4-sezon.html	9	2011	США	триллер, драма, криминал	Мишель Максвелл МакЛарен	47
6840	Месть 1 сезон (1-22 серия)	https://kinokrad.co/277450-mest-1-sezon-1-22-seriya.html	8	2011	США	триллер, драма, мелодрама, детектив	Кеннет Финк, Мэтт Эрл Бисли, Сэнфорд Букставер	43
6841	Фэйри 2 сезон (1-22 серия)	https://kinokrad.co/274346-feyri-2-sezon.html	8	2011	Канада	фэнтези, криминал	Стив ДиМарко, Рон Мерфи, Джон Фоусет	43
6842	Шаман 1 сезон (1-16 серия)	https://kinokrad.co/274357-shaman-1-sezon.html	7	2011	Россия	драма, криминал	Максим Кубринский	45
6843	Дело Дойлов 2 сезон (1-13 серия)	https://kinokrad.co/274434-delo-doylov-2-sezon.html	10	2011	Канада	драма, комедия, криминал	Стефан Скайни, Джон Ватчер, Кит Сэмплз	43
6844	Бывает и хуже 3 сезон	https://kinokrad.co/275562-byvaet-i-huzhe-3.html	8	2011	США	комедия	Ли Шаллат Чемел, Эллиот Хегарти	22
6845	Аббатство Даунтон 2 сезон	https://kinokrad.co/275656-abbatstvo-daunton-2-sezon.html	7	2011	Великобритания	драма	Брайан Персивал, Энди Годдар	54
6846	Светофор 1 сезон (1-20 серии)	https://kinokrad.co/278261-svetofor-1-sezon-1-20-serii.html	7	2011	Россия	комедия	Роман Фокин	24
6847	Реальные пацаны (11 сезон)	https://kinokrad.co/325742-realnye-pacany-11-sezon.html	7	2010	Россия	комедия	Жанна Кадникова	24
6848	Правильная жена 2 сезон (1-23 серия)	https://kinokrad.co/274014-pravilnaya-zhena-2-sezon.html	8	2010	США	драма, криминал, детектив	Розмари Родригез, Майкл Цинберг, Брук Кеннеди	43
6849	Ходячие мертвецы 1 сезон	https://kinokrad.co/273995-hodyachie-mertvecy-1-sezons-18-04.html	9	2010	США	ужасы, триллер, драма	Эрнест Р. Дикерсон, Грег Никотеро, Гай Ферленд	43
6850	Гавайи 5-0 / Полиция Гавайев  (9 сезон)	https://kinokrad.co/330914-gavayi-5-0-policiya-gavayev-9-sezon.html	7	2010	США	боевик, драма, криминал	Брайан Спайсер, Майя Врвило, Ларри Тенг	43
6851	Сверхъестественное (6 сезон)	https://kinokrad.co/274549-sverhestestvennoe-6-sezon.html	9	2010	США	ужасы, фэнтези, триллер, драма, детектив, мистика	Роберт Сингер, Филип Сгриккиа, Ким Мэннерс	43
6852	Интерны (1 сезон)	https://kinokrad.co/307826-interny-1-sezon-2010.html	8	2010	Россия	комедия	Максим Пежемский, Заур Болотаев, Милан Килибарда	25
6853	Мой маленький пони: Дружба – это чудо (6 сезон)	https://kinokrad.co/317258-moy-malenkiy-poni-druzhba-jeto-chudo-6-sezon-2016.html	8	2010	США, Канада	мультфильм, мюзикл, фэнтези, комедия, семейный	Джэйсон Тиссен, «Биг» Джим Миллер, Джеймс Вуттон	22
6854	Лига (2 сезон)	https://kinokrad.co/304286-liga-2-sezon-2010.html	4	2010	США	комедия, спорт	Джефф Шеффер, Джеки Маркус	22
6855	Грабь награбленное (3 сезон)	https://kinokrad.co/302675-grab-nagrablennoe-3-sezon-2010.html	8	2010	США	боевик, криминал, детектив	Марк Роскин, Дин Девлин, Джонатан Фрейкс	43
6856	Компьютерщики (4 сезон)	https://kinokrad.co/300737-kompyuterschiki-4-sezon-2010.html	7	2010	Великобритания	комедия	Грэхэм Лайнхэн, Ричард Боден, Бен Фуллер	22
6857	Валландер (2 сезон)	https://kinokrad.co/298687-vallander-2-sezon-2010.html	7	2010	Великобритания, Швеция, США, Германия	триллер, криминал, драма, детектив	Филип Мартин, Найал МакКормик, Хетти Макдональд	90
6858	Неприрученные (5 сезон)	https://kinokrad.co/303365-nepriruchennye-5-sezon-2010.html	5	2010	Великобритания	драма	Николас Лафлэнд, Пол Харрисон, Морис Филлипс	47
6859	Мой маленький пони: Дружба – это чудо (5 сезон)	https://kinokrad.co/317254-moy-malenkiy-poni-druzhba-jeto-chudo-5-sezon-2015.html	7	2010	США, Канада	мультфильм, мюзикл, фэнтези, комедия, семейный	Джэйсон Тиссен, «Биг» Джим Миллер, Джеймс Вуттон	22
6860	Мой маленький пони: Дружба – это чудо (4 сезон)	https://kinokrad.co/317250-moy-malenkiy-poni-druzhba-jeto-chudo-4-sezon-2013.html	7	2010	США, Канада	мультфильм, мюзикл, фэнтези, комедия, семейный	Джэйсон Тиссен, «Биг» Джим Миллер, Джеймс Вуттон	22
6861	Мой маленький пони: Дружба – это чудо (3 сезон)	https://kinokrad.co/317238-moy-malenkiy-poni-druzhba-jeto-chudo-3-sezon-2012.html	7	2010	США, Канада	мультфильм, мюзикл, фэнтези, комедия, семейный	Джэйсон Тиссен, «Биг» Джим Миллер, Джеймс Вуттон	22
6862	Мой маленький пони: Дружба – это чудо (1 сезон)	https://kinokrad.co/317230-moy-malenkiy-poni-druzhba-jeto-chudo-1-sezon-2010.html	7	2010	США, Канада	мультфильм, мюзикл, фэнтези, комедия, семейный	Джэйсон Тиссен, «Биг» Джим Миллер, Джеймс Вуттон	22
6863	Я не должен был выжить! (4 сезон)	https://kinokrad.co/296242-ya-ne-dolzhen-byl-vyzhit-4-sezon-2010.html	7	2010	Великобритания, США	документальный, драма, биография, история	Йен Барнс, Жуль Уильямсон, Ренни Бартлетт	44
6864	Я не должен был выжить! (3 сезон)	https://kinokrad.co/296239-ya-ne-dolzhen-byl-vyzhit-3-sezon-2010.html	6	2010	Великобритания, США	документальный, драма, биография, история	Йен Барнс, Жуль Уильямсон, Ренни Бартлетт	44
6865	Пуаро (12 сезон)	https://kinokrad.co/318926-puaro-12-sezon-2010.html	8	2010	Великобритания	триллер, драма, криминал, детектив	Эдвард Беннет, Ренни Рай, Эндрю Грив	90
6866	Discovery: Сквозь пространство и время с Морганом Фрименом (1 сезон)	https://kinokrad.co/283545-discovery-skvoz-prostranstvo-i-vremya-s-morganom-frimenom-1-sezon-2010.html	8	2010	США	документальный, детектив, семейный	Курт Сайенга, Джеффри Шарп, Энтони Ланд	43
6867	Рейк (1 сезон)	https://kinokrad.co/298369-reyk-1-sezon-2010.html	7	2010	Австралия	драма, комедия	Питер Дункан, Роуэн Вудс, Джесика Хоббс	43
6868	Реальные пацаны (1 сезон)	https://kinokrad.co/307838-realnye-pacany-1-sezon-2010.html	7	2010	Россия	комедия	Жанна Кадникова	24
6869	Событие (1 сезон)	https://kinokrad.co/301109-sobytie-1-sezon-2010.html	8	2010	США	фантастика, триллер, драма, криминал, детектив	Джеффри Рейнер, Норберто Барба, Милан Чейлов	43
6870	Расследования Мердока (3 сезон)	https://kinokrad.co/293014-rassledovaniya-merdoka-3-sezon-2010.html	9	2010	Канада, Великобритания	драма, криминал, детектив	Лори Линд, Кэл Кунс, Харви Кросслэнд	43
6871	Не ври мне (1 сезон)	https://kinokrad.co/292978-ne-vri-mne-1-sezon-2010.html	8	2010	Россия	детектив, драма	Мария Евстафьева, Ларин Дмитрий, Инга Монаенкова	
6872	Врата (1 сезон)	https://kinokrad.co/302792-vrata-1-sezon-2010.html	8	2010	США	фэнтези, триллер, драма, криминал, детектив	Дэвид Баррет, Фред Гербер, Терри МакДонаф	43
6873	Валландер (2 сезон)	https://kinokrad.co/297805-vallander-2-sezon-2010.html	7	2010	Швеция	триллер, драма, криминал, детектив	Стефан Апельгрен, Агнета Фагерстрём-Ольссон, Лейф Магнуссон	89
6874	Дурман (6 сезон)	https://kinokrad.co/286597-durman-6-sezon-2010.html	8	2010	США	драма, комедия, криминал	Крейг Зиск, Майкл Трим, Скотт Эллис	25
6875	Дом терпимости (1 сезон)	https://kinokrad.co/294328-dom-terpimosti-1-sezon-2010.html	8	2010	Франция	драма	Мабрук Эль Мекри, Жером Корнюо, Карло Да Фонсека Парсотам	52
6876	Сестра Джеки (2 сезон)	https://kinokrad.co/285935-sestra-dzheki-2-sezon-2010.html	6	2010	США	драма, комедия	Пол Фиг, Джесси Перец, Брендан Уолш	22
6877	Убежище (3 сезон)	https://kinokrad.co/292840-ubezhische-3-sezon-2010.html	9	2010	Канада	фантастика, фэнтези, драма, детектив	Мартин Вуд, Стивен А. Эделсон, Брентон Спенсер	43
6878	Дорогой доктор (2 сезон)	https://kinokrad.co/285867-dorogoy-doktor-2-sezon-2010.html	8	2010	США	драма, комедия	Мэттью Пенн, Эмиль Левисетти, Майкл Ройч	43
6879	Торчвуд / Охотники за чужими (1 сезон)	https://kinokrad.co/295897-torchvud-ohotniki-za-chuzhimi-1-sezon-2010.html	7	2010	Великобритания, Канада	фантастика, боевик, триллер, драма	Энди Годдар, Эшли Вэй, Эрос Лин	50
6880	Правосудие (1 сезон)	https://kinokrad.co/285109-pravosudie-1-sezon-2010.html	8	2010	США	боевик, триллер, драма, криминал	Адам Аркин, Джон Эвнет, Питер Уэрнер	43
6881	Гавайи 5.0 (7 сезон)	https://kinokrad.co/306926-gavayi-5.0-7-sezon.html	7	2010	США	боевик, драма, криминал	Брайан Спайсер, Ларри Тенг, Стив Бойум	43
6882	Лютер (1 сезон)	https://kinokrad.co/285979-lyuter-1-sezon-2010.html	8	2010	Великобритания	драма, криминал, детектив	Сэм Миллер, Брайан Кирк, Стефан Шварц	60
6883	Анатомия страсти (7 сезон)	https://kinokrad.co/285349-anatomiya-strasti-7-sezon-2010.html	8	2010	США	драма, мелодрама	Роб Корн, Шандра Уилсон, Тони Фелан	43
6884	Морская полиция: Спецотдел (8 сезон)	https://kinokrad.co/284547-morskaya-policiya-specotdel-8-sezon-2010.html	8	2010	США	боевик, триллер, драма, комедия, криминал, детектив	Дэннис Смит, Тони Уормби, Терренс О’Хара	43
6885	C.S.I.: Майами (9 сезон)	https://kinokrad.co/291679-c-s-i-mayami-9-sezon-2010.html	9	2010	США	боевик, триллер, драма, криминал, детектив	Сэм Хилл, Джо Чаппелль, Скотт Лаутанен	43
6886	Закон и порядок. Специальный корпус (12 сезон)	https://kinokrad.co/300204-zakon-i-poryadok-specialnyy-korpus-12-sezon-2010.html	6	2010	США	триллер, драма, криминал, детектив	Дэвид Платт, Питер Лето, Жан Де Сегонзак	43
6887	Трансформеры: Прайм (1 сезон)	https://kinokrad.co/283654-transformery-praym-1-sezon-2010.html	8	2010	США	мультфильм, фантастика, боевик, приключения	Дэвид Хартман, Шонт Нигогосян, Винтон Хёк	22
6888	Тюдоры (4 сезон)	https://kinokrad.co/283651-tyudory-4-sezon-2010.html	8	2010	Ирландия, Канада, США	драма, мелодрама, военный, история	Киаран Доннелли, Джереми Подесва, Дирбла Уолш	53
6889	Волшебники из Вэйверли Плэйс (4 сезон)	https://kinokrad.co/282796-volshebniki-iz-vjeyverli-pljeys-4-sezon-2010.html	8	2010	США	фэнтези, комедия, семейный	Виктор Гонзалез, Боб Коэрр, Роберт Берлингер	22
6890	Грань (3 сезон)	https://kinokrad.co/283935-gran-3-sezon-2010.html	9	2010	США, Канада	фантастика, триллер, драма, детектив	Джо Чаппелль, Брэд Андерсон, Фред Туа	43
6891	Кости (6 сезон)	https://kinokrad.co/286989-kosti-6-sezon-2010.html	9	2010	США	драма, мелодрама, комедия, криминал, детектив	Иэн Тойнтон, Дуайт Х. Литтл, Жанно Шварц	43
6892	Декстер (5 сезон)	https://kinokrad.co/287461-dekster-5-sezon-2010.html	8	2010	США	триллер, драма, криминал, детектив	Джон Дал, Стив Шилл, Кит Гордон	55
6893	Время приключений (2 сезон)	https://kinokrad.co/292681-vremya-priklyucheniy-2-sezon-2010.html	8	2010	США	мультфильм, фэнтези, комедия, приключения, семейный	Ларри Лэйчлитер, Элизабет Ито, Андрес Салафф	22
6894	Время приключений (1 сезон)	https://kinokrad.co/292678-vremya-priklyucheniy-1-sezon-2010.html	9	2010	США	мультфильм, фэнтези, комедия, приключения, семейный	Ларри Лэйчлитер, Элизабет Ито, Андрес Салафф	22
6895	Выжившие (2 сезон)	https://kinokrad.co/292831-vyzhivshie-2-sezon-2010.html	8	2010	Великобритания	фантастика, драма	Джэми Пэйн, Эндрю Ганн, Иэн Б. МакДональд	52
6896	Фиксики (1 сезон)	https://kinokrad.co/287121-fiksiki-1-sezon-2010.html	8	2010	Россия	мультфильм, детский	Васико Бедошвили, Андрей Колпин, Сергей Меринов	6
6897	Тайный дневник девушки по вызову (3 сезон)	https://kinokrad.co/286515-taynyy-dnevnik-devushki-po-vyzovu-3-sezon-2010.html	7	2010	Великобритания	драма	Ян Деманж, Сьюзэн Талли, Питер Лайдон	22
6898	Ласко – Кулак Бога (2 сезон)	https://kinokrad.co/286531-lasko-kulak-boga-2-sezon-2010.html	7	2010	Германия, Австрия	боевик, приключения	Аксель Занд, Franco Tozza	60
6899	Американская семейка (2 сезон)	https://kinokrad.co/285747-amerikanskaya-semeyka-2-sezon-2010.html	8	2010	США	комедия	Гейл Манкусо, Майкл Алан Спиллер, Джейсон Уайнер	22
6900	Мелисса и Джоуи (1 сезон)	https://kinokrad.co/285669-melissa-i-dzhoui-1-sezon-2010.html	8	2010	США	комедия	Роб Шиллер, Джеффри Мэлман, Дэвид Трейнер	22
6901	Наруто: Ураганные хроники (9 сезон)	https://kinokrad.co/285297-naruto-uragannye-hroniki-9-sezon-2010.html	7	2010	Япония	аниме, мультфильм, фантастика, боевик, триллер, приключения	Хаято Датэ, Юки Эри	24
6902	Наруто: Ураганные хроники (8 сезон)	https://kinokrad.co/285295-naruto-uragannye-hroniki-8-sezon-2010.html	7	2010	Япония	аниме, мультфильм, фантастика, боевик, триллер, приключения	Хаято Датэ, Юки Эри	24
6903	Наруто: Ураганные хроники (7 сезон)	https://kinokrad.co/285293-naruto-uragannye-hroniki-7-sezon-2010.html	7	2010	Япония	аниме, мультфильм, фантастика, боевик, триллер, приключения	Хаято Датэ, Юки Эри	24
6904	Гимнастки (2 сезон)	https://kinokrad.co/282896-gimnastki-2-sezon-2010.html	8	2010	США	драма, спорт	Дэвид Пэймер, Крис Грисмер, Стив Майнер	43
6905	Маленький принц (1 сезон)	https://kinokrad.co/282776-malenkiy-princ-1-sezon-2011.html	9	2010	Франция, Германия	мультфильм	Пьер-Ален Чартьер	22
6906	Морская полиция: Лос-Анджелес (2 сезон)	https://kinokrad.co/291199-morskaya-policiya-los-andzheles-2-sezon-2010.html	8	2010	США	триллер, драма, криминал, детектив	Тони Уормби, Терренс О’Хара, Дэннис Смит	43
6907	Два с половиной человека (8 сезон)	https://kinokrad.co/290884-dva-s-polovinoy-cheloveka-8-sezon-2010.html	9	2010	США	комедия	Джеймс Уиддоуз, Гари Хэлворсон, Памела Фрайман	22
6908	Физика или химия (6 сезон)	https://kinokrad.co/283292-fizika-ili-himiya-6-sezon-2010.html	8	2010	Испания	драма, комедия	Хавьер Кинтас, Хуан Мануэль Родригес Пачон, Карлос Наварро Баллестерос	75
6909	Физика или химия (5 сезон)	https://kinokrad.co/283290-fizika-ili-himiya-5-sezon-2010.html	8	2010	Испания	драма, комедия	Хавьер Кинтас, Хуан Мануэль Родригес Пачон, Карлос Наварро Баллестерос	75
6910	Война Фойла (6 сезон)	https://kinokrad.co/286151-voyna-foyla-6-sezon-2010.html	8	2010	Великобритания	драма, криминал, детектив, военный	Джереми Силберстон, Стюарт Орм, Гэвин Миллар	90
6911	Однокурсники (2 сезон)	https://kinokrad.co/285463-odnokursniki-2-sezon-2010.html	7	2010	США	комедия	Тристрам Шапиро, Джо Руссо, Энтони Руссо	22
6912	Южный Парк (14 сезон)	https://kinokrad.co/286741-yuzhnyy-park-14-sezon-2010.html	7	2010	США	мультфильм, комедия	Трей Паркер, Эрик Сточ, Мэтт Стоун	22
6913	Корпорация героев / Гость из будущего (2 сезон)	https://kinokrad.co/281736-korporaciya-geroev-gost-iz-buduschego-2-sezon-2010.html	5	2010	Франция	комедия	Симон Астье, Себастьен ЛаЛэйнн	
6914	Всё включено (4 сезон)	https://kinokrad.co/292015-vsjo-vklyucheno-4-sezon-2010.html	8	2010	Великобритания	комедия	Сэнди Джонсон, Дэвид Сент, Кевин Аллен	30
6915	В Филадельфии всегда солнечно (6 сезон)	https://kinokrad.co/286081-v-filadelfii-vsegda-solnechno-6-sezon-2010.html	6	2010	США	комедия	Мэтт Шекман, Фред Сэвэдж, Дэниэл Эттиэс	22
6916	Как я встретил вашу маму (6 сезон)	https://kinokrad.co/282154-kak-ya-vstretil-vashu-mamu-6-sezon-2010.html	8	2010	США	комедия, мелодрама, драма	Памела Фрайман, Роб Гринберг, Майкл Дж. Ши	22
6917	Речные монстры (2 сезон)	https://kinokrad.co/282031-rechnye-monstry-2-sezon-2010.html	8	2010	США	документальный	Барни Ревилл, Доминик Уэстон, Шарлотта Джонс	45
6918	Миранда (2 сезон)	https://kinokrad.co/284623-miranda-2-sezon-2010.html	7	2010	Великобритания	комедия	Джульетт Мэй, Мэнди Флетчер	22
6919	Мисс Марпл Агаты Кристи (5 сезон)	https://kinokrad.co/282816-miss-marpl-agaty-kristi-5-sezon-2010.html	8	2010	Великобритания	драма, криминал, детектив	Чарльз Палмер, Энди Уилсон, Джон Стриклэнд	94
6920	Как не стоит жить (3 сезон)	https://kinokrad.co/284157-kak-ne-stoit-zhit-3-sezon-2010.html	7	2010	Великобритания	комедия	Сэм Лейфер, Дэн Кларк, Мартин Деннис	28
6921	Майк и Молли (1 сезон)	https://kinokrad.co/285229-mayk-i-molli-1-sezon-2010.html	8	2010	США	комедия	Джеймс Берроуз, Фил Льюис, Майкл МакДональд	22
6922	Улицы разбитых фонарей (11 сезон)	https://kinokrad.co/285195-ulicy-razbityh-fonarey-11-sezon-2010.html	5	2010	Россия	боевик, драма, криминал, приключения	Александр Рогожкин, Дмитрий Светозаров, Кирилл Капица	48
6923	Улицы разбитых фонарей (10 сезон)	https://kinokrad.co/285193-ulicy-razbityh-fonarey-10-sezon-2010.html	5	2010	Россия	боевик, драма, криминал, приключения	Александр Рогожкин, Дмитрий Светозаров, Кирилл Капица	48
6924	Молокососы (4 сезон)	https://kinokrad.co/282679-molokososy-4-sezon-2010.html	8	2010	Великобритания	драма	Чарльз Мартин, Саймон Мэсси, Джек Клоф	45
6925	Плен страсти (1-4 серия)	https://kinokrad.co/252676-plen-strasti.html	6	2010	Россия	драма, мелодрама, биография	Станислав Митин	44
6926	Избалованные (1 сезон)	https://kinokrad.co/282662-izbalovannye-1-sezon-2010.html	7	2010	США	комедия	Дэвид Пэймер, Майкл Энглер, Лиз Фридлендер	43
6927	Втайне от родителей (3 сезон)	https://kinokrad.co/283200-vtayne-ot-roditeley-3-sezon-2010.html	7	2010	США	драма, мелодрама, комедия, семейный	Кит Трусделл, Энсон Уильямс, Гэйл Брэдли	43
6928	Великая война (1 сезон)	https://kinokrad.co/282121-velikaya-voyna-1-sezon-2010.html	8	2010	Россия	документальный, военный, история	Анна Граждан, Валерий Бабич	50
6929	Арчер 2 сезон (1-13 серия)	https://kinokrad.co/280879-archer-2-sezon.html	7	2010	США	мультфильм, боевик, комедия	Адам Рид, Брайан Фордни	22
6930	Школа монстров 1 сезон (1-27 серия)	https://kinokrad.co/280819-shkola-monstrov-1-sezon.html	6	2010	США	мультфильм	Оду Паден, Эрик Радомски	3
6931	Гавайи 5.0 (1 сезон)	https://kinokrad.co/285117-gavayi-5-0-1-sezon-2010.html	9	2010	США	боевик, драма, криминал	Брайан Спайсер, Ларри Тенг, Стив Бойум	43
6932	Обмани меня 2 сезон (1-22 серия)	https://kinokrad.co/274058-obmani-menya-2-sezon.html	9	2010	США	триллер, драма, криминал, детектив	Дэниэл Сакхейм, Майкл Цинберг, Ваган Мусекян	43
6933	Луи (1 сезон)	https://kinokrad.co/281893-lui-1-sezon-2010.html	5	2010	США	драма, комедия	Луис С.К., Лиз Плонка	23
6934	Риццоли и Айлс 1 сезон (1-10 серия)	https://kinokrad.co/280101-riccoli-i-ayls-1-sezon.html	8	2010	США	драма, криминал, детектив	Марк Абер, Майкл Кэтлман, Стив Робин	43
6935	Мои восточные ночи	https://kinokrad.co/279001-moi-vostochnye-nochi-2014.html	8	2010	Румыния	драма, мелодрама	Юра Лункашу	45
6936	Мстители, общий сбор! 1 сезон (1-26 серия)	https://kinokrad.co/279929-mstiteli-obschiy-sbor-1-sezon.html	8	2010	США	комедия	Крис Бёрнс, Джексон МакДональд, Пэт Кларк	22
6937	Футурама 6 сезон (1-26 серия)	https://kinokrad.co/256147-futurama-6-sezon-smotret-onlayn.html	8	2010	США	мультфильм, фантастика, комедия	Питер Аванзино, Брэт Хааланд	22
6938	Братья и сестры 5 сезон	https://kinokrad.co/255381-bratya-i-sestry-5-sezon.html	4	2010	США	драма	Кен Олин, Майкл Моррис	43
6939	Спартак: Кровь и песок (1 сезон)	https://kinokrad.co/281980-spartak-krov-i-pesok-1-sezon-2010.html	8	2010	США	боевик, драма, приключения, биография, история	Джесси Уарн, Майкл Херст, Рик Джейкобсон	52
6940	Ясновидец 5 сезон (1-16 серия)	https://kinokrad.co/273992-yasnovidec-5-sezon.html	7	2010	США	комедия, криминал, детектив	Мэл Дэмски, Стив Фрэнкс, Джеймс Родэй	43
6941	Глухарь 3 сезон (1-64 серия)	https://kinokrad.co/274073-gluhar-3-sezon.html	8	2010	Россия	драма, детектив	Гузэль Киреева, Тимур Алпатов, Вячеслав Каминский	45
6942	Город хищниц 2 сезон (1-22 серия)	https://kinokrad.co/274083-gorod-hischnic-2-sezon.html	8	2010	США	комедия	Майкл МакДональд, Джон Путч, Кортни Кокс	22
6943	Доктор Хаус 7 сезон (1-23 серия)	https://kinokrad.co/274106-doktor-haus-7-sezon.html	8	2010	США	драма, детектив	Грег Яйтанс, Деран Сарафян, Дэвид Стрейтон	43
6944	Место преступления Лас-Вегас 11 сезон (1-22 серия)	https://kinokrad.co/274461-c-s-i-mesto-prestupleniya-11-sezon.html	8	2010	США, Канада	триллер, драма, криминал, детектив	Кеннет Финк, Ричард Дж. Льюис, Алек Смайт	43
6945	Гриффины (9 сезон)	https://kinokrad.co/282004-griffiny-9-sezon-2010.html	7	2010	США	мультфильм, комедия	Питер Шин, Джеймс Пурдум, Доминик Бьянчи	22
6946	Отчаянные домохозяйки 7 сезон (1-23 серия)	https://kinokrad.co/276165-otchayannye-domohozyayki-7-sezon.html	7	2010	США	драма, мелодрама, комедия, детектив	Дэвид Гроссман, Ларри Шоу	43
6947	H2O: Просто добавь воды 3 сезон (1-26 серия)	https://kinokrad.co/255715-h2o-prosto-dobav-vody-3-sezon.html	9	2010	Австралия	фэнтези, драма, семейный	Колин Баддс, Джеффри Уокер	22
6948	Плохие / Отбросы 2 сезон (1-7 серия)	https://kinokrad.co/280678-plohie-otbrosy-2-sezon.html	8	2010	Великобритания	фантастика, фэнтези, драма, комедия	Том Грин, Джонатан ван Тюллекен, Том Харпер	43
6949	Остаться в живых 6 сезон (1-18 серия)	https://kinokrad.co/255756-ostatsya-v-zhivyh-6-sezon.html	8	2010	США	фантастика, фэнтези, триллер, драма, детектив, приключения	Джек Бендер, Стивен Уильямс	43
6950	Доктор Кто 5 сезон (1-14 серия)	https://kinokrad.co/274021-doktor-kto-5-sezon.html	9	2010	Великобритания	фантастика, драма, комедия, приключения, семейный	Грэм Харпер, Эрос Лин, Джеймс Стронг	43
6951	Доктор Кто 6 сезон (1-14 серия)	https://kinokrad.co/274022-doktor-kto-6-sezon.html	8	2010	Великобритания	фантастика, драма, комедия, приключения, семейный	Грэм Харпер, Эрос Лин, Джеймс Стронг	43
6952	Дневники Вампира (2 сезон)	https://kinokrad.co/280990-dnevniki-vampira-2-sezon.html	9	2010	США	ужасы, фэнтези, триллер, драма, мелодрама, детектив	Крис Грисмер, Джошуа Батлер, Маркос Сига	43
6953	Дневники Вампира (1 сезон )	https://kinokrad.co/280986-dnevniki-vampira-1-sezon.html	8	2010	США	ужасы, фэнтези, триллер, драма, мелодрама, детектив	Крис Грисмер, Джошуа Батлер, Маркос Сига	43
6954	Американский папаша 6 сезон (1-19 серия)	https://kinokrad.co/274130-amerikanskiy-papasha-6-sezon.html	7	2010	США	мультфильм, комедия	Рон Хьюгарт, Брент Вудс, Энтони Льои	22
6955	Симпсоны 22 сезон (1-22 серия)	https://kinokrad.co/274226-simpsony-22-sezon.html	10	2010	США	мультфильм, комедия	Марк Керклэнд, Стивен Дин Мур, Джим Рирдон	22
6956	Менталист 3 сезон (1-23 серия)	https://kinokrad.co/274337-mentalist-3-sezon.html	8	2010	США	триллер, драма, криминал, детектив	Крис Лонг, Эрик Ланёвилль, Джон Шоуолтер	43
6957	Ментовские войны 5 сезон (1-16 серия)	https://kinokrad.co/274117-mentovskie-voyny-5-sezon.html	7	2010	Россия	боевик, драма, криминал	Павел Мальков	302
7074	10 причин моей ненависти (1 сезон)	https://kinokrad.co/319954-10-prichin-moey-nenavisti-1-sezon-2009.html	7	2009	США	комедия	Джил Джангер, Генри Чан, Фил Трэйл	22
6958	Мыслить как преступник 6 сезон (1-24 серия)	https://kinokrad.co/274169-myslit-kak-prestupnik-6-sezon.html	7	2010	США, Канада	триллер, драма, криминал, детектив	Гленн Кершоу, Феликс Энрикез Алькала, Эдвард Аллен Бернеро	43
6959	Во все тяжкие 3 сезон (1-13 серия)	https://kinokrad.co/274035-vo-vse-tyazhkie-serial-3.html	9	2010	США	триллер, драма, криминал	Мишель Максвелл МакЛарен, Адам Бернштейн, Винс Гиллиган	47
6960	Фэйри 1 сезон (1-13 серия)	https://kinokrad.co/274345-feyri-1-sezon.html	8	2010	Канада	фэнтези, криминал	Стив ДиМарко, Рон Мерфи, Джон Фоусет	43
6961	Дело Дойлов 1 сезон (1-12 серия)	https://kinokrad.co/274428-delo-doylov-1-sezon.html	9	2010	Канада	драма, комедия, криминал	Стефан Скайни, Джон Ватчер, Кит Сэмплз	43
6962	Аббатство Даунтон (1 сезон)	https://kinokrad.co/275657-abbatstvo-daunton-1-sezon.html	7	2010	Великобритания	драма	Брайан Персивал, Энди Годдар	54
6963	Бывает и хуже 2 сезон	https://kinokrad.co/275591-byvaet-i-huzhe-2.html	8	2010	США	комедия	Ли Шаллат Чемел, Эллиот Хегарти	22
6964	Арчер (10 сезон)	https://kinokrad.co/336579-archer-10-sezon.html	6	2009	США	мультфильм, боевик, комедия	Брайан Фордни, Мак Уильямс, Адам Рид	22
6965	Правильная жена 1 сезон (1-23 серия)	https://kinokrad.co/274013-pravilnaya-zhena-1-sezon.html	7	2009	США	драма, криминал, детектив	Розмари Родригез, Майкл Цинберг, Брук Кеннеди	43
6966	Воронины (1 сезон)	https://kinokrad.co/309119-voroniny-1-sezon.html	7	2009	Россия	комедия, семейный	Александр Жигалкин, Леонид Коновалов, Георгий Дронов	24
6967	Сверхъестественное (5 сезон)	https://kinokrad.co/274548-sverhestestvennoe-5-sezon.html	9	2009	США	ужасы, фэнтези, триллер, драма, детектив, мистика	Роберт Сингер, Филип Сгриккиа, Ким Мэннерс	43
6968	Налёт (1 сезон)	https://kinokrad.co/321070-nalet-1-sezon-2009.html	7	2009	Франция	триллер, криминал	Ксавьер Палю, Оливье Маршаль, Фредерик Шёндёрфер	50
6969	Арчер (9 сезон)	https://kinokrad.co/326843-archer-9-sezon.html	6	2009	США	мультфильм, боевик, комедия	Брайан Фордни, Мак Уильямс, Адам Рид	22
6970	ФонШоп (1 сезон)	https://kinokrad.co/312774-fonshop-1-sezon-2009.html	6	2009	Великобритания	комедия	Фил Баукер	30
6971	Лига (1 сезон)	https://kinokrad.co/304283-liga-1-sezon-2009.html	5	2009	США	комедия, спорт	Джефф Шеффер, Джеки Маркус	22
6972	Грабь награбленное (2 сезон)	https://kinokrad.co/302672-grab-nagrablennoe-2-sezon-2009.html	9	2009	США	боевик, криминал, детектив	Марк Роскин, Дин Девлин, Джонатан Фрейкс	43
6973	Грабь награбленное (1 сезон)	https://kinokrad.co/302669-grab-nagrablennoe-1-sezon-2009.html	8	2009	США	боевик, криминал, детектив	Марк Роскин, Дин Девлин, Джонатан Фрейкс	43
6974	10 причин моей ненависти (1 сезон)	https://kinokrad.co/319954-10-prichin-moey-nenavisti-1-sezon-2009.html	7	2009	США	комедия	Джил Джангер, Генри Чан, Фил Трэйл	22
6975	Неприрученные (4 сезон)	https://kinokrad.co/303362-nepriruchennye-4-sezon-2009.html	6	2009	Великобритания	драма	Николас Лафлэнд, Пол Харрисон, Морис Филлипс	47
6976	Вспомни, что будет (1 сезон)	https://kinokrad.co/300624-vspomni-chto-budet-1-sezon-2009.html	8	2009	США	фантастика, триллер, драма, детектив	Ник Гомез, Бобби Рот, Джон Полсон	43
6977	Агентура (1 сезон)	https://kinokrad.co/319838-agentura-1-sezon-2009.html	6	2009	Италия	боевик	Алексис Кехилл	100
6978	Роковые ошибки Тодда Маргарета (1 сезон)	https://kinokrad.co/298390-rokovye-oshibki-todda-margareta-1-sezon-2009.html	5	2009	США, Великобритания	комедия	Алекс Хардкасл, Бен Грегор, Джон Хардвик	22
6979	Расследования Мердока (2 сезон)	https://kinokrad.co/293011-rassledovaniya-merdoka-2-sezon-2009.html	9	2009	Канада, Великобритания	драма, криминал, детектив	Лори Линд, Кэл Кунс, Харви Кросслэнд	43
6980	Мальчики краше цветов (1 сезон)	https://kinokrad.co/291646-malchiki-krashe-cvetov-1-sezon-2009.html	9	2009	Корея Южная	драма, мелодрама, комедия	Чон Ги-сан	64
6981	Сестра Джеки (1 сезон)	https://kinokrad.co/285933-sestra-dzheki-1-sezon-2009.html	8	2009	США	драма, комедия	Пол Фиг, Джесси Перец, Брендан Уолш	22
6982	Дорогой доктор (1 сезон)	https://kinokrad.co/285865-dorogoy-doktor-1-sezon-2009.html	7	2009	США	драма, комедия	Мэттью Пенн, Эмиль Левисетти, Майкл Ройч	43
6983	Убежище (2 сезон)	https://kinokrad.co/292837-ubezhische-2-sezon-2009.html	8	2009	Канада	фантастика, фэнтези, драма, детектив	Мартин Вуд, Стивен А. Эделсон, Брентон Спенсер	43
6984	Меч (1 сезон)	https://kinokrad.co/285079-mech-1-sezon-2009.html	8	2009	Россия	боевик, драма	Рустам Уразаев, Виктор Конисевич	48
6985	Анатомия страсти (6 сезон)	https://kinokrad.co/285347-anatomiya-strasti-6-sezon-2009.html	8	2009	США	драма, мелодрама	Роб Корн, Шандра Уилсон, Тони Фелан	43
6986	Морская полиция: Спецотдел (7 сезон)	https://kinokrad.co/284545-morskaya-policiya-specotdel-7-sezon-2009.html	8	2009	США	боевик, триллер, драма, комедия, криминал, детектив	Дэннис Смит, Тони Уормби, Терренс О’Хара	43
6987	C.S.I.: Майами (8 сезон)	https://kinokrad.co/291676-c-s-i-mayami-8-sezon-2009.html	9	2009	США	боевик, триллер, драма, криминал, детектив	Сэм Хилл, Джо Чаппелль, Скотт Лаутанен	43
6988	Закон и порядок. Специальный корпус (11 сезон)	https://kinokrad.co/300201-zakon-i-poryadok-specialnyy-korpus-11-sezon-2009.html	7	2009	США	триллер, драма, криминал, детектив	Дэвид Платт, Питер Лето, Жан Де Сегонзак	43
6989	Волшебники из Вэйверли Плэйс (3 сезон)	https://kinokrad.co/282795-volshebniki-iz-vjeyverli-pljeys-3-sezon-2009.html	8	2009	США	фэнтези, комедия, семейный	Виктор Гонзалез, Боб Коэрр, Роберт Берлингер	22
6990	Тюдоры (3 сезон)	https://kinokrad.co/283649-tyudory-3-sezon-2009.html	8	2009	Ирландия, Канада, США	драма, мелодрама, военный, история	Киаран Доннелли, Джереми Подесва, Дирбла Уолш	53
6991	Грань (2 сезон)	https://kinokrad.co/283934-gran-2-sezon-2009.html	9	2009	США, Канада	фантастика, триллер, драма, детектив	Джо Чаппелль, Брэд Андерсон, Фред Туа	43
6992	Иствик (1 сезон)	https://kinokrad.co/282780-istvik-1-sezon-2009.html	8	2009	США	фэнтези, драма	Майкл Кэтлман, Дэвид Наттер, Билл Д’Элиа	43
6993	Vизитеры (1 сезон)	https://kinokrad.co/292129-vizitery-1-sezon-2009.html	8	2009	США	фантастика, триллер, драма	Ив Симоно, Дэвид Баррет, Брайан Спайсер	43
6994	Кости (5 сезон)	https://kinokrad.co/286987-kosti-5-sezon-2009.html	8	2009	США	драма, мелодрама, комедия, криминал, детектив	Иэн Тойнтон, Дуайт Х. Литтл, Жанно Шварц	43
6995	Декстер (4 сезон)	https://kinokrad.co/287458-dekster-4-sezon-2009.html	9	2009	США	триллер, драма, криминал, детектив	Джон Дал, Стив Шилл, Кит Гордон	55
6996	Дурнушка (4 сезон)	https://kinokrad.co/282650-durnushka-4-sezon-2009.html	7	2009	США	драма, комедия	Виктор Нелли мл., Джеймс Хейман, Майкл Алан Спиллер	43
6997	Одержимый (1 сезон)	https://kinokrad.co/282490-oderzhimyy-1-sezon-2009.html	7	2009	Россия	детектив	Евгений Звездаков	48
6998	Дурман (5 сезон)	https://kinokrad.co/286595-durman-5-sezon-2009.html	9	2009	США	драма, комедия, криминал	Крейг Зиск, Майкл Трим, Скотт Эллис	25
6999	Ласко – Кулак Бога (1 сезон)	https://kinokrad.co/286529-lasko-kulak-boga-1-sezon-2009.html	7	2009	Германия, Австрия	боевик, приключения	Аксель Занд, Franco Tozza	60
7000	Американская семейка (1 сезон)	https://kinokrad.co/285745-amerikanskaya-semeyka-1-sezon-2009.html	8	2009	США	комедия	Гейл Манкусо, Майкл Алан Спиллер, Джейсон Уайнер	22
7001	Наруто: Ураганные хроники (9 сезон)	https://kinokrad.co/285297-naruto-uragannye-hroniki-9-sezon-2010.html	7	2010	Япония	аниме, мультфильм, фантастика, боевик, триллер, приключения	Хаято Датэ, Юки Эри	24
7002	Наруто: Ураганные хроники (8 сезон)	https://kinokrad.co/285295-naruto-uragannye-hroniki-8-sezon-2010.html	7	2010	Япония	аниме, мультфильм, фантастика, боевик, триллер, приключения	Хаято Датэ, Юки Эри	24
7003	Наруто: Ураганные хроники (7 сезон)	https://kinokrad.co/285293-naruto-uragannye-hroniki-7-sezon-2010.html	7	2010	Япония	аниме, мультфильм, фантастика, боевик, триллер, приключения	Хаято Датэ, Юки Эри	24
7004	Гимнастки (2 сезон)	https://kinokrad.co/282896-gimnastki-2-sezon-2010.html	8	2010	США	драма, спорт	Дэвид Пэймер, Крис Грисмер, Стив Майнер	43
7005	Маленький принц (1 сезон)	https://kinokrad.co/282776-malenkiy-princ-1-sezon-2011.html	9	2010	Франция, Германия	мультфильм	Пьер-Ален Чартьер	22
7006	Морская полиция: Лос-Анджелес (2 сезон)	https://kinokrad.co/291199-morskaya-policiya-los-andzheles-2-sezon-2010.html	8	2010	США	триллер, драма, криминал, детектив	Тони Уормби, Терренс О’Хара, Дэннис Смит	43
7007	Два с половиной человека (8 сезон)	https://kinokrad.co/290884-dva-s-polovinoy-cheloveka-8-sezon-2010.html	9	2010	США	комедия	Джеймс Уиддоуз, Гари Хэлворсон, Памела Фрайман	22
7008	Физика или химия (6 сезон)	https://kinokrad.co/283292-fizika-ili-himiya-6-sezon-2010.html	8	2010	Испания	драма, комедия	Хавьер Кинтас, Хуан Мануэль Родригес Пачон, Карлос Наварро Баллестерос	75
7009	Физика или химия (5 сезон)	https://kinokrad.co/283290-fizika-ili-himiya-5-sezon-2010.html	8	2010	Испания	драма, комедия	Хавьер Кинтас, Хуан Мануэль Родригес Пачон, Карлос Наварро Баллестерос	75
7010	Война Фойла (6 сезон)	https://kinokrad.co/286151-voyna-foyla-6-sezon-2010.html	8	2010	Великобритания	драма, криминал, детектив, военный	Джереми Силберстон, Стюарт Орм, Гэвин Миллар	90
7011	Однокурсники (2 сезон)	https://kinokrad.co/285463-odnokursniki-2-sezon-2010.html	7	2010	США	комедия	Тристрам Шапиро, Джо Руссо, Энтони Руссо	22
7012	Южный Парк (14 сезон)	https://kinokrad.co/286741-yuzhnyy-park-14-sezon-2010.html	7	2010	США	мультфильм, комедия	Трей Паркер, Эрик Сточ, Мэтт Стоун	22
7013	Корпорация героев / Гость из будущего (2 сезон)	https://kinokrad.co/281736-korporaciya-geroev-gost-iz-buduschego-2-sezon-2010.html	5	2010	Франция	комедия	Симон Астье, Себастьен ЛаЛэйнн	
7014	Всё включено (4 сезон)	https://kinokrad.co/292015-vsjo-vklyucheno-4-sezon-2010.html	8	2010	Великобритания	комедия	Сэнди Джонсон, Дэвид Сент, Кевин Аллен	30
7015	В Филадельфии всегда солнечно (6 сезон)	https://kinokrad.co/286081-v-filadelfii-vsegda-solnechno-6-sezon-2010.html	6	2010	США	комедия	Мэтт Шекман, Фред Сэвэдж, Дэниэл Эттиэс	22
7472	Ликвидация (1 сезон)	https://kinokrad.co/281676-likvidaciya-1-sezon-2007.html	9	2007	Россия	боевик, триллер	Сергей Урсуляк	45
7016	Как я встретил вашу маму (6 сезон)	https://kinokrad.co/282154-kak-ya-vstretil-vashu-mamu-6-sezon-2010.html	8	2010	США	комедия, мелодрама, драма	Памела Фрайман, Роб Гринберг, Майкл Дж. Ши	22
7017	Речные монстры (2 сезон)	https://kinokrad.co/282031-rechnye-monstry-2-sezon-2010.html	8	2010	США	документальный	Барни Ревилл, Доминик Уэстон, Шарлотта Джонс	45
7018	Миранда (2 сезон)	https://kinokrad.co/284623-miranda-2-sezon-2010.html	7	2010	Великобритания	комедия	Джульетт Мэй, Мэнди Флетчер	22
7019	Мисс Марпл Агаты Кристи (5 сезон)	https://kinokrad.co/282816-miss-marpl-agaty-kristi-5-sezon-2010.html	8	2010	Великобритания	драма, криминал, детектив	Чарльз Палмер, Энди Уилсон, Джон Стриклэнд	94
7020	Как не стоит жить (3 сезон)	https://kinokrad.co/284157-kak-ne-stoit-zhit-3-sezon-2010.html	7	2010	Великобритания	комедия	Сэм Лейфер, Дэн Кларк, Мартин Деннис	28
7021	Майк и Молли (1 сезон)	https://kinokrad.co/285229-mayk-i-molli-1-sezon-2010.html	8	2010	США	комедия	Джеймс Берроуз, Фил Льюис, Майкл МакДональд	22
7022	Улицы разбитых фонарей (11 сезон)	https://kinokrad.co/285195-ulicy-razbityh-fonarey-11-sezon-2010.html	5	2010	Россия	боевик, драма, криминал, приключения	Александр Рогожкин, Дмитрий Светозаров, Кирилл Капица	48
7023	Улицы разбитых фонарей (10 сезон)	https://kinokrad.co/285193-ulicy-razbityh-fonarey-10-sezon-2010.html	5	2010	Россия	боевик, драма, криминал, приключения	Александр Рогожкин, Дмитрий Светозаров, Кирилл Капица	48
7024	Молокососы (4 сезон)	https://kinokrad.co/282679-molokososy-4-sezon-2010.html	8	2010	Великобритания	драма	Чарльз Мартин, Саймон Мэсси, Джек Клоф	45
7025	Плен страсти (1-4 серия)	https://kinokrad.co/252676-plen-strasti.html	6	2010	Россия	драма, мелодрама, биография	Станислав Митин	44
7026	Избалованные (1 сезон)	https://kinokrad.co/282662-izbalovannye-1-sezon-2010.html	7	2010	США	комедия	Дэвид Пэймер, Майкл Энглер, Лиз Фридлендер	43
7027	Втайне от родителей (3 сезон)	https://kinokrad.co/283200-vtayne-ot-roditeley-3-sezon-2010.html	7	2010	США	драма, мелодрама, комедия, семейный	Кит Трусделл, Энсон Уильямс, Гэйл Брэдли	43
7028	Великая война (1 сезон)	https://kinokrad.co/282121-velikaya-voyna-1-sezon-2010.html	8	2010	Россия	документальный, военный, история	Анна Граждан, Валерий Бабич	50
7029	Арчер 2 сезон (1-13 серия)	https://kinokrad.co/280879-archer-2-sezon.html	7	2010	США	мультфильм, боевик, комедия	Адам Рид, Брайан Фордни	22
7030	Школа монстров 1 сезон (1-27 серия)	https://kinokrad.co/280819-shkola-monstrov-1-sezon.html	6	2010	США	мультфильм	Оду Паден, Эрик Радомски	3
7031	Гавайи 5.0 (1 сезон)	https://kinokrad.co/285117-gavayi-5-0-1-sezon-2010.html	9	2010	США	боевик, драма, криминал	Брайан Спайсер, Ларри Тенг, Стив Бойум	43
7032	Обмани меня 2 сезон (1-22 серия)	https://kinokrad.co/274058-obmani-menya-2-sezon.html	9	2010	США	триллер, драма, криминал, детектив	Дэниэл Сакхейм, Майкл Цинберг, Ваган Мусекян	43
7033	Луи (1 сезон)	https://kinokrad.co/281893-lui-1-sezon-2010.html	5	2010	США	драма, комедия	Луис С.К., Лиз Плонка	23
7034	Риццоли и Айлс 1 сезон (1-10 серия)	https://kinokrad.co/280101-riccoli-i-ayls-1-sezon.html	8	2010	США	драма, криминал, детектив	Марк Абер, Майкл Кэтлман, Стив Робин	43
7035	Мои восточные ночи	https://kinokrad.co/279001-moi-vostochnye-nochi-2014.html	8	2010	Румыния	драма, мелодрама	Юра Лункашу	45
7036	Мстители, общий сбор! 1 сезон (1-26 серия)	https://kinokrad.co/279929-mstiteli-obschiy-sbor-1-sezon.html	8	2010	США	комедия	Крис Бёрнс, Джексон МакДональд, Пэт Кларк	22
7037	Футурама 6 сезон (1-26 серия)	https://kinokrad.co/256147-futurama-6-sezon-smotret-onlayn.html	8	2010	США	мультфильм, фантастика, комедия	Питер Аванзино, Брэт Хааланд	22
7038	Братья и сестры 5 сезон	https://kinokrad.co/255381-bratya-i-sestry-5-sezon.html	4	2010	США	драма	Кен Олин, Майкл Моррис	43
7039	Спартак: Кровь и песок (1 сезон)	https://kinokrad.co/281980-spartak-krov-i-pesok-1-sezon-2010.html	8	2010	США	боевик, драма, приключения, биография, история	Джесси Уарн, Майкл Херст, Рик Джейкобсон	52
7040	Ясновидец 5 сезон (1-16 серия)	https://kinokrad.co/273992-yasnovidec-5-sezon.html	7	2010	США	комедия, криминал, детектив	Мэл Дэмски, Стив Фрэнкс, Джеймс Родэй	43
7041	Глухарь 3 сезон (1-64 серия)	https://kinokrad.co/274073-gluhar-3-sezon.html	8	2010	Россия	драма, детектив	Гузэль Киреева, Тимур Алпатов, Вячеслав Каминский	45
7042	Город хищниц 2 сезон (1-22 серия)	https://kinokrad.co/274083-gorod-hischnic-2-sezon.html	8	2010	США	комедия	Майкл МакДональд, Джон Путч, Кортни Кокс	22
7043	Доктор Хаус 7 сезон (1-23 серия)	https://kinokrad.co/274106-doktor-haus-7-sezon.html	8	2010	США	драма, детектив	Грег Яйтанс, Деран Сарафян, Дэвид Стрейтон	43
7044	Место преступления Лас-Вегас 11 сезон (1-22 серия)	https://kinokrad.co/274461-c-s-i-mesto-prestupleniya-11-sezon.html	8	2010	США, Канада	триллер, драма, криминал, детектив	Кеннет Финк, Ричард Дж. Льюис, Алек Смайт	43
7045	Гриффины (9 сезон)	https://kinokrad.co/282004-griffiny-9-sezon-2010.html	7	2010	США	мультфильм, комедия	Питер Шин, Джеймс Пурдум, Доминик Бьянчи	22
7046	Отчаянные домохозяйки 7 сезон (1-23 серия)	https://kinokrad.co/276165-otchayannye-domohozyayki-7-sezon.html	7	2010	США	драма, мелодрама, комедия, детектив	Дэвид Гроссман, Ларри Шоу	43
7047	H2O: Просто добавь воды 3 сезон (1-26 серия)	https://kinokrad.co/255715-h2o-prosto-dobav-vody-3-sezon.html	9	2010	Австралия	фэнтези, драма, семейный	Колин Баддс, Джеффри Уокер	22
7048	Плохие / Отбросы 2 сезон (1-7 серия)	https://kinokrad.co/280678-plohie-otbrosy-2-sezon.html	8	2010	Великобритания	фантастика, фэнтези, драма, комедия	Том Грин, Джонатан ван Тюллекен, Том Харпер	43
7049	Остаться в живых 6 сезон (1-18 серия)	https://kinokrad.co/255756-ostatsya-v-zhivyh-6-sezon.html	8	2010	США	фантастика, фэнтези, триллер, драма, детектив, приключения	Джек Бендер, Стивен Уильямс	43
7050	Доктор Кто 5 сезон (1-14 серия)	https://kinokrad.co/274021-doktor-kto-5-sezon.html	9	2010	Великобритания	фантастика, драма, комедия, приключения, семейный	Грэм Харпер, Эрос Лин, Джеймс Стронг	43
7051	Доктор Кто 6 сезон (1-14 серия)	https://kinokrad.co/274022-doktor-kto-6-sezon.html	8	2010	Великобритания	фантастика, драма, комедия, приключения, семейный	Грэм Харпер, Эрос Лин, Джеймс Стронг	43
7052	Дневники Вампира (2 сезон)	https://kinokrad.co/280990-dnevniki-vampira-2-sezon.html	9	2010	США	ужасы, фэнтези, триллер, драма, мелодрама, детектив	Крис Грисмер, Джошуа Батлер, Маркос Сига	43
7053	Дневники Вампира (1 сезон )	https://kinokrad.co/280986-dnevniki-vampira-1-sezon.html	8	2010	США	ужасы, фэнтези, триллер, драма, мелодрама, детектив	Крис Грисмер, Джошуа Батлер, Маркос Сига	43
7054	Американский папаша 6 сезон (1-19 серия)	https://kinokrad.co/274130-amerikanskiy-papasha-6-sezon.html	7	2010	США	мультфильм, комедия	Рон Хьюгарт, Брент Вудс, Энтони Льои	22
7055	Симпсоны 22 сезон (1-22 серия)	https://kinokrad.co/274226-simpsony-22-sezon.html	10	2010	США	мультфильм, комедия	Марк Керклэнд, Стивен Дин Мур, Джим Рирдон	22
7056	Менталист 3 сезон (1-23 серия)	https://kinokrad.co/274337-mentalist-3-sezon.html	8	2010	США	триллер, драма, криминал, детектив	Крис Лонг, Эрик Ланёвилль, Джон Шоуолтер	43
7057	Ментовские войны 5 сезон (1-16 серия)	https://kinokrad.co/274117-mentovskie-voyny-5-sezon.html	7	2010	Россия	боевик, драма, криминал	Павел Мальков	302
7058	Мыслить как преступник 6 сезон (1-24 серия)	https://kinokrad.co/274169-myslit-kak-prestupnik-6-sezon.html	7	2010	США, Канада	триллер, драма, криминал, детектив	Гленн Кершоу, Феликс Энрикез Алькала, Эдвард Аллен Бернеро	43
7059	Во все тяжкие 3 сезон (1-13 серия)	https://kinokrad.co/274035-vo-vse-tyazhkie-serial-3.html	9	2010	США	триллер, драма, криминал	Мишель Максвелл МакЛарен, Адам Бернштейн, Винс Гиллиган	47
7060	Фэйри 1 сезон (1-13 серия)	https://kinokrad.co/274345-feyri-1-sezon.html	8	2010	Канада	фэнтези, криминал	Стив ДиМарко, Рон Мерфи, Джон Фоусет	43
7061	Дело Дойлов 1 сезон (1-12 серия)	https://kinokrad.co/274428-delo-doylov-1-sezon.html	9	2010	Канада	драма, комедия, криминал	Стефан Скайни, Джон Ватчер, Кит Сэмплз	43
7062	Аббатство Даунтон (1 сезон)	https://kinokrad.co/275657-abbatstvo-daunton-1-sezon.html	7	2010	Великобритания	драма	Брайан Персивал, Энди Годдар	54
7063	Бывает и хуже 2 сезон	https://kinokrad.co/275591-byvaet-i-huzhe-2.html	8	2010	США	комедия	Ли Шаллат Чемел, Эллиот Хегарти	22
7064	Арчер (10 сезон)	https://kinokrad.co/336579-archer-10-sezon.html	6	2009	США	мультфильм, боевик, комедия	Брайан Фордни, Мак Уильямс, Адам Рид	22
7065	Правильная жена 1 сезон (1-23 серия)	https://kinokrad.co/274013-pravilnaya-zhena-1-sezon.html	7	2009	США	драма, криминал, детектив	Розмари Родригез, Майкл Цинберг, Брук Кеннеди	43
7066	Воронины (1 сезон)	https://kinokrad.co/309119-voroniny-1-sezon.html	7	2009	Россия	комедия, семейный	Александр Жигалкин, Леонид Коновалов, Георгий Дронов	24
7067	Сверхъестественное (5 сезон)	https://kinokrad.co/274548-sverhestestvennoe-5-sezon.html	9	2009	США	ужасы, фэнтези, триллер, драма, детектив, мистика	Роберт Сингер, Филип Сгриккиа, Ким Мэннерс	43
7068	Налёт (1 сезон)	https://kinokrad.co/321070-nalet-1-sezon-2009.html	7	2009	Франция	триллер, криминал	Ксавьер Палю, Оливье Маршаль, Фредерик Шёндёрфер	50
7069	Арчер (9 сезон)	https://kinokrad.co/326843-archer-9-sezon.html	6	2009	США	мультфильм, боевик, комедия	Брайан Фордни, Мак Уильямс, Адам Рид	22
7070	ФонШоп (1 сезон)	https://kinokrad.co/312774-fonshop-1-sezon-2009.html	6	2009	Великобритания	комедия	Фил Баукер	30
7071	Лига (1 сезон)	https://kinokrad.co/304283-liga-1-sezon-2009.html	5	2009	США	комедия, спорт	Джефф Шеффер, Джеки Маркус	22
7072	Грабь награбленное (2 сезон)	https://kinokrad.co/302672-grab-nagrablennoe-2-sezon-2009.html	9	2009	США	боевик, криминал, детектив	Марк Роскин, Дин Девлин, Джонатан Фрейкс	43
7073	Грабь награбленное (1 сезон)	https://kinokrad.co/302669-grab-nagrablennoe-1-sezon-2009.html	8	2009	США	боевик, криминал, детектив	Марк Роскин, Дин Девлин, Джонатан Фрейкс	43
7075	Неприрученные (4 сезон)	https://kinokrad.co/303362-nepriruchennye-4-sezon-2009.html	6	2009	Великобритания	драма	Николас Лафлэнд, Пол Харрисон, Морис Филлипс	47
7076	Вспомни, что будет (1 сезон)	https://kinokrad.co/300624-vspomni-chto-budet-1-sezon-2009.html	8	2009	США	фантастика, триллер, драма, детектив	Ник Гомез, Бобби Рот, Джон Полсон	43
7077	Агентура (1 сезон)	https://kinokrad.co/319838-agentura-1-sezon-2009.html	6	2009	Италия	боевик	Алексис Кехилл	100
7078	Роковые ошибки Тодда Маргарета (1 сезон)	https://kinokrad.co/298390-rokovye-oshibki-todda-margareta-1-sezon-2009.html	5	2009	США, Великобритания	комедия	Алекс Хардкасл, Бен Грегор, Джон Хардвик	22
7079	Расследования Мердока (2 сезон)	https://kinokrad.co/293011-rassledovaniya-merdoka-2-sezon-2009.html	9	2009	Канада, Великобритания	драма, криминал, детектив	Лори Линд, Кэл Кунс, Харви Кросслэнд	43
7080	Мальчики краше цветов (1 сезон)	https://kinokrad.co/291646-malchiki-krashe-cvetov-1-sezon-2009.html	9	2009	Корея Южная	драма, мелодрама, комедия	Чон Ги-сан	64
7081	Сестра Джеки (1 сезон)	https://kinokrad.co/285933-sestra-dzheki-1-sezon-2009.html	8	2009	США	драма, комедия	Пол Фиг, Джесси Перец, Брендан Уолш	22
7082	Дорогой доктор (1 сезон)	https://kinokrad.co/285865-dorogoy-doktor-1-sezon-2009.html	7	2009	США	драма, комедия	Мэттью Пенн, Эмиль Левисетти, Майкл Ройч	43
7083	Убежище (2 сезон)	https://kinokrad.co/292837-ubezhische-2-sezon-2009.html	8	2009	Канада	фантастика, фэнтези, драма, детектив	Мартин Вуд, Стивен А. Эделсон, Брентон Спенсер	43
7084	Меч (1 сезон)	https://kinokrad.co/285079-mech-1-sezon-2009.html	8	2009	Россия	боевик, драма	Рустам Уразаев, Виктор Конисевич	48
7085	Анатомия страсти (6 сезон)	https://kinokrad.co/285347-anatomiya-strasti-6-sezon-2009.html	8	2009	США	драма, мелодрама	Роб Корн, Шандра Уилсон, Тони Фелан	43
7086	Морская полиция: Спецотдел (7 сезон)	https://kinokrad.co/284545-morskaya-policiya-specotdel-7-sezon-2009.html	8	2009	США	боевик, триллер, драма, комедия, криминал, детектив	Дэннис Смит, Тони Уормби, Терренс О’Хара	43
7087	C.S.I.: Майами (8 сезон)	https://kinokrad.co/291676-c-s-i-mayami-8-sezon-2009.html	9	2009	США	боевик, триллер, драма, криминал, детектив	Сэм Хилл, Джо Чаппелль, Скотт Лаутанен	43
7088	Закон и порядок. Специальный корпус (11 сезон)	https://kinokrad.co/300201-zakon-i-poryadok-specialnyy-korpus-11-sezon-2009.html	7	2009	США	триллер, драма, криминал, детектив	Дэвид Платт, Питер Лето, Жан Де Сегонзак	43
7089	Волшебники из Вэйверли Плэйс (3 сезон)	https://kinokrad.co/282795-volshebniki-iz-vjeyverli-pljeys-3-sezon-2009.html	8	2009	США	фэнтези, комедия, семейный	Виктор Гонзалез, Боб Коэрр, Роберт Берлингер	22
7090	Тюдоры (3 сезон)	https://kinokrad.co/283649-tyudory-3-sezon-2009.html	8	2009	Ирландия, Канада, США	драма, мелодрама, военный, история	Киаран Доннелли, Джереми Подесва, Дирбла Уолш	53
7091	Грань (2 сезон)	https://kinokrad.co/283934-gran-2-sezon-2009.html	9	2009	США, Канада	фантастика, триллер, драма, детектив	Джо Чаппелль, Брэд Андерсон, Фред Туа	43
7092	Иствик (1 сезон)	https://kinokrad.co/282780-istvik-1-sezon-2009.html	8	2009	США	фэнтези, драма	Майкл Кэтлман, Дэвид Наттер, Билл Д’Элиа	43
7093	Vизитеры (1 сезон)	https://kinokrad.co/292129-vizitery-1-sezon-2009.html	8	2009	США	фантастика, триллер, драма	Ив Симоно, Дэвид Баррет, Брайан Спайсер	43
7094	Кости (5 сезон)	https://kinokrad.co/286987-kosti-5-sezon-2009.html	8	2009	США	драма, мелодрама, комедия, криминал, детектив	Иэн Тойнтон, Дуайт Х. Литтл, Жанно Шварц	43
7095	Декстер (4 сезон)	https://kinokrad.co/287458-dekster-4-sezon-2009.html	9	2009	США	триллер, драма, криминал, детектив	Джон Дал, Стив Шилл, Кит Гордон	55
7096	Дурнушка (4 сезон)	https://kinokrad.co/282650-durnushka-4-sezon-2009.html	7	2009	США	драма, комедия	Виктор Нелли мл., Джеймс Хейман, Майкл Алан Спиллер	43
7097	Одержимый (1 сезон)	https://kinokrad.co/282490-oderzhimyy-1-sezon-2009.html	7	2009	Россия	детектив	Евгений Звездаков	48
7098	Дурман (5 сезон)	https://kinokrad.co/286595-durman-5-sezon-2009.html	9	2009	США	драма, комедия, криминал	Крейг Зиск, Майкл Трим, Скотт Эллис	25
7099	Ласко – Кулак Бога (1 сезон)	https://kinokrad.co/286529-lasko-kulak-boga-1-sezon-2009.html	7	2009	Германия, Австрия	боевик, приключения	Аксель Занд, Franco Tozza	60
7100	Американская семейка (1 сезон)	https://kinokrad.co/285745-amerikanskaya-semeyka-1-sezon-2009.html	8	2009	США	комедия	Гейл Манкусо, Майкл Алан Спиллер, Джейсон Уайнер	22
7101	Парки и зоны отдыха (2 сезон)	https://kinokrad.co/285701-parki-i-zony-otdyha-2-sezon-2009.html	7	2009	США	комедия	Дин Холлэнд, Майкл Шур, Кен Уиттингэм	21
7102	Парки и зоны отдыха (1 сезон)	https://kinokrad.co/285687-parki-i-zony-1-sezon-2009.html	8	2009	США	комедия	Дин Холлэнд, Майкл Шур, Кен Уиттингэм	21
7103	Наруто: Ураганные хроники (6 сезон)	https://kinokrad.co/285291-naruto-uragannye-hroniki-6-sezon-2009.html	7	2009	Япония	аниме, мультфильм, фантастика, боевик, триллер, приключения	Хаято Датэ, Юки Эри	24
7104	Блудливая Калифорния (3 сезон)	https://kinokrad.co/281811-bludlivaya-kaliforniya-3-sezon-2009.html	9	2009	США	драма, комедия	Дэвид Фон Энкен, Адам Бернштейн, Джон Дал	28
7105	Части тела (7 сезон)	https://kinokrad.co/281580-chasti-tela-7-sezon-2009.html	8	2009	США	драма	Майкл М. Робин, Элоди Кин, Райан Мерфи	43
7106	Гимнастки (1 сезон)	https://kinokrad.co/282895-gimnastki-1-sezon-2009.html	8	2009	США	драма, спорт	Дэвид Пэймер, Крис Грисмер, Стив Майнер	43
7107	Герои (4 сезон)	https://kinokrad.co/282754-geroi-4-sezon-2009.html	8	2009	США	фантастика, триллер, драма	Грег Биман, Аллан Аркуш, Жанно Шварц	43
7108	Морская полиция: Лос-Анджелес (1 сезон)	https://kinokrad.co/291196-morskaya-policiya-los-andzheles-1-sezon-2009.html	8	2009	США	триллер, драма, криминал, детектив	Тони Уормби, Терренс О’Хара, Дэннис Смит	43
7109	Два с половиной человека (7 сезон)	https://kinokrad.co/290881-dva-s-polovinoy-cheloveka-7-sezon-2009.html	8	2009	США	комедия	Джеймс Уиддоуз, Гари Хэлворсон, Памела Фрайман	22
7110	Прикуп (1 сезон)	https://kinokrad.co/287041-prikup-1-sezon-2009.html	9	2009	Великобритания	триллер, драма, криминал	Дэвид Друри	42
7111	Физика или химия (4 сезон)	https://kinokrad.co/283289-fizika-ili-himiya-4-sezon-2009.html	8	2009	Испания	драма, комедия	Хавьер Кинтас, Хуан Мануэль Родригес Пачон, Карлос Наварро Баллестерос	75
7112	Физика или химия (3 сезон)	https://kinokrad.co/283287-fizika-ili-himiya-3-sezon-2009.html	8	2009	Испания	драма, комедия	Хавьер Кинтас, Хуан Мануэль Родригес Пачон, Карлос Наварро Баллестерос	75
7113	Остаться в живых (5 сезон)	https://kinokrad.co/283274-ostatsya-v-zhivyh-5-sezon-2009.html	8	2009	США	фантастика, фэнтези, триллер, драма, детектив, приключения	Джек Бендер, Стивен Уильямс, Пол А. Эдвардс	43
7114	Миранда (1 сезон)	https://kinokrad.co/285655-miranda-1-sezon-2009.html	7	2009	Великобритания	комедия	Джульетт Мэй, Мэнди Флетчер	22
7115	Однокурсники (1 сезон)	https://kinokrad.co/285461-odnokursniki-1-sezon-2009.html	7	2009	США	комедия	Тристрам Шапиро, Джо Руссо, Энтони Руссо	22
7116	Числа (6 сезон)	https://kinokrad.co/285487-4isla-6-sezon-2009.html	8	2009	США	триллер, драма, криминал, детектив	Дэннис Смит, Алекс Закржевский, Джон Беринг	43
7117	Южный Парк (13 сезон)	https://kinokrad.co/286739-yuzhnyy-park-13-sezon-2009.html	7	2009	США	мультфильм, комедия	Трей Паркер, Эрик Сточ, Мэтт Стоун	22
7118	Брак по завещанию 1 сезон (1-12 серия)	https://kinokrad.co/274004-brak-po-zaveschaniyu-1-sezon-18-04.html	8	2009	Россия	мелодрама	Василий Сериков	44
7119	Клиника (8 сезон)	https://kinokrad.co/282830-klinika-8-sezon-2008.html	9	2009	США	драма, комедия	Майкл Алан Спиллер, Билл Лоуренс, Адам Бернштейн	22
7120	Остров Харпера (1 сезон)	https://kinokrad.co/289765-ostrov-harpera-1-sezon-2010.html	9	2009	США	ужасы, триллер, драма, детектив	Сэнфорд Букставер, Рик Бота, Стив Бойум	43
7121	Военнопленный (1 сезон)	https://kinokrad.co/286781-voennoplennyy-1-sezon-2009.html	6	2009	Израиль	драма	Гидеон Рафф	55
7122	Всё включено (3 сезон)	https://kinokrad.co/292012-vsjo-vklyucheno-3-sezon-2009.html	8	2009	Великобритания	комедия	Сэнди Джонсон, Дэвид Сент, Кевин Аллен	30
7123	В Филадельфии всегда солнечно (5 сезон)	https://kinokrad.co/286079-v-filadelfii-vsegda-solnechno-5-sezon-2009.html	6	2009	США	комедия	Мэтт Шекман, Фред Сэвэдж, Дэниэл Эттиэс	22
7124	Как я встретил вашу маму (5 сезон)	https://kinokrad.co/282152-kak-ya-vstretil-vashu-mamu-5-sezon-2009.html	8	2009	США	комедия, мелодрама, драма	Памела Фрайман, Роб Гринберг, Майкл Дж. Ши	22
7125	Речные монстры (1 сезон)	https://kinokrad.co/282029-rechnye-monstry-1-sezon-2009.html	9	2009	США	документальный	Барни Ревилл, Доминик Уэстон, Шарлотта Джонс	45
7126	Свинка Пеппа (6 сезон)	https://kinokrad.co/286139-svinka-peppa-6-sezon-2009.html	5	2009	Великобритания	мультфильм, семейный	Марк Бэйкер, Невилл Эстли, Mark Baker	5
7127	Логово (3 сезон)	https://kinokrad.co/281916-logovo-3-sezon-2009.html	5	2009	США	ужасы, драма, детектив	Фред Олен Рэй	22
7128	Мисс Марпл Агаты Кристи (4 сезон)	https://kinokrad.co/282815-miss-marpl-agaty-kristi-4-sezon-2009.html	8	2009	Великобритания	драма, криминал, детектив	Чарльз Палмер, Энди Уилсон, Джон Стриклэнд	94
7129	Как не стоит жить (2 сезон)	https://kinokrad.co/284151-kak-ne-stoit-zhit-2-sezon-2009.html	6	2009	Великобритания	комедия	Сэм Лейфер, Дэн Кларк, Мартин Деннис	28
7130	Дневники Вампира (3 сезон)	https://kinokrad.co/255884-dnevniki-vampira-3-sezon.html	9	2009	США	ужасы, фэнтези, триллер, драма, мелодрама, детектив	Крис Грисмер, Маркос Сига	43
7131	Клиника 9 сезон (1-13 серия)	https://kinokrad.co/255735-klinika-9-sezon.html	9	2009	США	драма, комедия	Майкл Спиллер, Билл Лоуренс	22
7132	Легенда об Искателе 2 сезон (1-22 серия)	https://kinokrad.co/255727-legenda-ob-iskatele-2-sezon-onlayn.html	9	2009	США	фэнтези, боевик, драма, приключения	Марк Бисли, Гарт Максвелл	43
7133	Молокососы (3 сезон)	https://kinokrad.co/282678-molokososy-3-sezon-2009.html	8	2009	Великобритания	драма	Чарльз Мартин, Саймон Мэсси, Джек Клоф	45
7134	Кайл XY (3 сезон)	https://kinokrad.co/282658-kayl-xy-3-sezon-2009.html	9	2009	США, Канада	фантастика, драма, детектив	Майкл Робисан, Гай Норман Би, Пэт Уильямс	43
7135	Дневник доктора (2 сезон)	https://kinokrad.co/283217-dnevnik-doktora-2-sezon-2009.html	8	2009	Германия	комедия	София Аллет-Кохе, Франциска Мейер Прайс, Оливер Шмитц	45
7136	Втайне от родителей (2 сезон)	https://kinokrad.co/283198-vtayne-ot-roditeley-2-sezon-2009.html	8	2009	США	драма, мелодрама, комедия, семейный	Кит Трусделл, Энсон Уильямс, Гэйл Брэдли	43
7137	Арчер 1 сезон (1-10 серия)	https://kinokrad.co/280878-archer-1-sezon.html	8	2009	США	мультфильм, боевик, комедия	Адам Рид, Брайан Фордни	22
7138	Обмани меня 1 сезон (1-13 серия)	https://kinokrad.co/274057-obmani-menya-serial-1-sezon.html	9	2009	США	триллер, драма, криминал, детектив	Дэниэл Сакхейм, Майкл Цинберг, Ваган Мусекян	43
7139	Глухарь 2 сезон (1-48 серия)	https://kinokrad.co/274072-gluhar-2-sezon.html	8	2009	Россия	драма, детектив	Гузэль Киреева, Тимур Алпатов, Вячеслав Каминский	45
7140	Металлопокалипсис (3 сезон)	https://kinokrad.co/283734-metallopokalipsis-3-sezon-2009.html	7	2009	США	мультфильм, комедия, музыка	Джон Шнепп, Крис Приноски, Марк Брукс	12
7141	Ясновидец 4 сезон (1-16 серия)	https://kinokrad.co/273991-yasnovidec-4-sezon.html	7	2009	США	комедия, криминал, детектив	Мэл Дэмски, Стив Фрэнкс, Джеймс Родэй	43
7142	Город хищниц 1 сезон (1-24 серия)	https://kinokrad.co/274080-gorod-hischnic-1-sezon.html	7	2009	США	комедия	Майкл МакДональд, Джон Путч, Кортни Кокс	22
7143	Доктор Хаус 6 сезон (1-22 серия)	https://kinokrad.co/274100-doktor-haus-6-sezon.html	9	2009	США	драма, детектив	Грег Яйтанс, Деран Сарафян, Дэвид Стрейтон	43
7144	Место преступления Лас-Вегас 10 сезон (1-23 серия)	https://kinokrad.co/274460-c-s-i-mesto-prestupleniya-10-sezon.html	7	2009	США, Канада	триллер, драма, криминал, детектив	Кеннет Финк, Ричард Дж. Льюис, Алек Смайт	43
7145	Гриффины (8 сезон)	https://kinokrad.co/282003-griffiny-8-sezon-2009.html	7	2009	США	мультфильм, комедия	Питер Шин, Джеймс Пурдум, Доминик Бьянчи	22
7146	Отчаянные домохозяйки 6 сезон	https://kinokrad.co/276163-otchayannye-domohozyayki-6-sezon.html	7	2009	США	драма, мелодрама, комедия, детектив	Дэвид Гроссман, Ларри Шоу	43
7147	Плохие / Отбросы 1 сезон (1-6 серия)	https://kinokrad.co/280666-plohie-otbrosy-1-sezon.html	8	2009	Великобритания	фантастика, фэнтези, драма, комедия	Том Грин, Джонатан ван Тюллекен, Том Харпер	43
7148	Морской волк (1-2 серия)	https://kinokrad.co/280563-morskoy-volk.html	7	2009	Канада, Германия	драма, мелодрама, приключения	Майк Баркер	180
7149	Американский папаша 5 сезон (1-18 серия)	https://kinokrad.co/274129-amerikanskiy-papasha-5-seriya.html	6	2009	США	мультфильм, комедия	Рон Хьюгарт, Брент Вудс, Энтони Льои	22
7150	Симпсоны 21 сезон (1-23 серия)	https://kinokrad.co/274225-simpsony-21-sezon.html	10	2009	США	мультфильм, комедия	Марк Керклэнд, Стивен Дин Мур, Джим Рирдон	22
7151	Менталист 2 сезон (1-23 серия)	https://kinokrad.co/274336-mentalist-2-sezon.html	8	2009	США	триллер, драма, криминал, детектив	Крис Лонг, Эрик Ланёвилль, Джон Шоуолтер	43
7152	Лузеры 5 сезон (1-20 серия)	https://kinokrad.co/272412-luzery-5-sezon.html	6	2009	США	мюзикл, драма, комедия, музыка	Брэд Фалчук, Брэдли Букер, Эрик Столц	43
7153	Парки и зоны отдыха 6 сезон (1-22 серия)	https://kinokrad.co/272453-parki-i-zony-otdyha-6-sezon.html	9	2009	США	комедия	Дин Холлэнд, Майкл Шур, Трой Миллер	21
7154	Клуб Винкс – Школа волшебниц 4 сезон	https://kinokrad.co/275724-klub-vinks-shkola-volshebnic-4.html	8	2009	Италия	мультфильм, приключения, семейный	Иджинио Страффи	22
7155	Мыслить как преступник 5 сезон (1-23 серия)	https://kinokrad.co/274164-myslit-kak-prestupnik-5-sezon.html	8	2009	США, Канада	триллер, драма, криминал, детектив	Гленн Кершоу, Феликс Энрикез Алькала, Эдвард Аллен Бернеро	43
7156	Во все тяжкие 2 сезон (1-13 серия)	https://kinokrad.co/274034-vo-vse-tyazhkie-2.html	9	2009	США	триллер, драма, криминал	Мишель Максвелл МакЛарен, Адам Бернштейн, Винс Гиллиган	47
7157	Адепт Святого знака 1 сезон (1-24 серия)	https://kinokrad.co/44-adept-svyatogo-znaka-1-sezon.html	8	2009	Япония	аниме, мультфильм, приключения	Юу Нобута	25
7158	Бывает и хуже 1 сезон	https://kinokrad.co/275590-byvaet-i-huzhe-1.html	7	2009	США	комедия	Ли Шаллат Чемел, Эллиот Хегарти	22
7159	Братья и сестры 4 сезон (1-24 серия)	https://kinokrad.co/277087-bratya-i-sestry-4-sezon-1-24-seriya.html	5	2009	США	драма	Кен Олин, Майкл Моррис	43
7160	Кот Саймона (1 сезон)	https://kinokrad.co/317786-kot-saymona-1-sezon-2008.html	8	2008	Великобритания	мультфильм, комедия	Саймон Тофилд	2
7161	Смешарики (2 сезон)	https://kinokrad.co/336004-smeshariki-2-sezon.html	7	2008	Россия	мультфильм, детский, комедия	Денис Чернов, Илья Максимов, Джангир Сулейманов	6
7162	Расследования Мердока (11 сезон)	https://kinokrad.co/322075-rassledovaniya-merdoka-11-sezon.html	8	2008	Канада, Великобритания	драма, криминал, детектив	Харви Кросслэнд, Кэл Кунс, Лори Линд	43
7163	Сверхъестественное (4 сезон)	https://kinokrad.co/274547-sverhestestvennoe-4-sezon.html	9	2008	США	ужасы, фэнтези, триллер, драма, детектив, мистика	Роберт Сингер, Филип Сгриккиа, Ким Мэннерс	43
7164	Компьютерщики (3 сезон)	https://kinokrad.co/300735-kompyuterschiki-3-sezon-2008.html	6	2008	Великобритания	комедия	Грэхэм Лайнхэн, Ричард Боден, Бен Фуллер	22
7165	Валландер (1 сезон)	https://kinokrad.co/298684-vallander-1-sezon-2008.html	7	2008	Великобритания, Швеция, США, Германия	триллер, криминал, драма, детектив	Филип Мартин, Найал МакКормик, Хетти Макдональд	90
7166	Неприрученные (3 сезон)	https://kinokrad.co/303359-nepriruchennye-3-sezon-2008.html	5	2008	Великобритания	драма	Николас Лафлэнд, Пол Харрисон, Морис Филлипс	47
7167	Безмолвный свидетель (12 сезон)	https://kinokrad.co/299931-bezmolvnyy-svidetel-12-sezon-2008.html	6	2008	Великобритания	драма, криминал, детектив	Тадеус О’Салливан, Дэвид Ричардс, Ричард Сайни	43
7168	Пуаро (11 сезон)	https://kinokrad.co/318922-puaro-11-sezon-2008.html	8	2008	Великобритания	триллер, драма, криминал, детектив	Эдвард Беннет, Ренни Рай, Эндрю Грив	90
7169	Расследования Мердока (1 сезон)	https://kinokrad.co/293008-rassledovaniya-merdoka-1-sezon-2008.html	8	2008	Канада, Великобритания	драма, криминал, детектив	Лори Линд, Кэл Кунс, Харви Кросслэнд	43
7170	Легенда об Искателе (1 сезон)	https://kinokrad.co/292975-legenda-ob-iskatele-1-sezon-2008.html	9	2008	США	фэнтези, боевик, драма, приключения	Марк Бисли, Гарт Максвелл, Майкл Херст	43
7171	Пять шагов по облакам (1 сезон)	https://kinokrad.co/309500-pyat-shagov-po-oblakam-1-sezon-2008.html	5	2008	Россия	детектив	Игорь Штернберг	51
7172	Всё включено (2 сезон)	https://kinokrad.co/292009-vsjo-vklyucheno-2-sezon-2008.html	7	2008	Великобритания	комедия	Сэнди Джонсон, Дэвид Сент, Кевин Аллен	30
7173	РеГенезис (4 сезон)	https://kinokrad.co/301085-regenezis-4-sezon-2008.html	6	2008	Канада	фантастика, триллер, драма	Джон Л’Экуаер, Клемент Вирго, Кен Джиротти	43
7174	Звездные врата: Атлантида (5 сезон)	https://kinokrad.co/289015-zvezdnye-vrata-atlantida-5-sezon-2008.html	10	2008	Канада, США	фантастика, боевик, драма, приключения	Мартин Вуд, Энди Микита, Уильям Варинг	43
7175	Убежище (1 сезон)	https://kinokrad.co/292834-ubezhische-1-sezon-2008.html	8	2008	Канада	фантастика, фэнтези, драма, детектив	Мартин Вуд, Стивен А. Эделсон, Брентон Спенсер	43
7176	Анатомия страсти (5 сезон)	https://kinokrad.co/285345-anatomiya-strasti-5-sezon-2008.html	8	2008	США	драма, мелодрама	Роб Корн, Шандра Уилсон, Тони Фелан	43
7177	Морская полиция: Спецотдел (6 сезон)	https://kinokrad.co/284543-morskaya-policiya-specotdel-6-sezon-2008.html	8	2008	США	боевик, триллер, драма, комедия, криминал, детектив	Дэннис Смит, Тони Уормби, Терренс О’Хара	43
7178	C.S.I.: Майами (7 сезон)	https://kinokrad.co/291673-c-s-i-mayami-7-sezon-2008.html	9	2008	США	боевик, триллер, драма, криминал, детектив	Сэм Хилл, Джо Чаппелль, Скотт Лаутанен	43
7179	Закон и порядок. Специальный корпус (10 сезон)	https://kinokrad.co/300198-zakon-i-poryadok-specialnyy-korpus-10-sezon-2008.html	6	2008	США	триллер, драма, криминал, детектив	Дэвид Платт, Питер Лето, Жан Де Сегонзак	43
7180	Волшебники из Вэйверли Плэйс (2 сезон)	https://kinokrad.co/282794-volshebniki-iz-vjeyverli-pljeys-2-sezon-2008.html	8	2008	США	фэнтези, комедия, семейный	Виктор Гонзалез, Боб Коэрр, Роберт Берлингер	22
7181	Тюдоры (2 сезон)	https://kinokrad.co/283647-tyudory-2-sezon-2008.html	8	2008	Ирландия, Канада, США	драма, мелодрама, военный, история	Киаран Доннелли, Джереми Подесва, Дирбла Уолш	53
7182	Грань (1 сезон)	https://kinokrad.co/283933-gran-1-sezon-2008.html	9	2008	США, Канада	фантастика, триллер, драма, детектив	Джо Чаппелль, Брэд Андерсон, Фред Туа	43
7183	Нашествие (1 сезон)	https://kinokrad.co/288886-nashestvie-1-sezon-2008.html	8	2008	США	ужасы, фантастика, триллер, драма, мелодрама, детектив	Лоуренс Триллинг, Серджо Мимика-Геззан, Стив Шилл	43
7184	Кости (4 сезон)	https://kinokrad.co/286985-kosti-4-sezon-2008.html	9	2008	США	драма, мелодрама, комедия, криминал, детектив	Иэн Тойнтон, Дуайт Х. Литтл, Жанно Шварц	43
7185	Рыцарь дорог (1 сезон)	https://kinokrad.co/283311-rycar-dorog-1-sezon-2008.html	9	2008	США	триллер, детектив	Джей Чандрашекхар, Аллен Крокер, Брайан Спайсер	43
7186	Дурнушка (3 сезон)	https://kinokrad.co/282649-durnushka-3-sezon-2008.html	6	2008	США	драма, комедия	Виктор Нелли мл., Джеймс Хейман, Майкл Алан Спиллер	43
7187	Выжившие (1 сезон)	https://kinokrad.co/292828-vyzhivshie-1-sezon-2008.html	8	2008	Великобритания	фантастика, драма	Джэми Пэйн, Эндрю Ганн, Иэн Б. МакДональд	52
7188	Дурман (4 сезон)	https://kinokrad.co/286593-durman-4-sezon-2008.html	8	2008	США	драма, комедия, криминал	Крейг Зиск, Майкл Трим, Скотт Эллис	25
7189	Тайный дневник девушки по вызову (2 сезон)	https://kinokrad.co/286513-taynyy-dnevnik-devushki-po-vyzovu-2-sezon-2008.html	8	2008	Великобритания	драма	Ян Деманж, Сьюзэн Талли, Питер Лайдон	22
7190	Наруто: Ураганные хроники (4 сезон)	https://kinokrad.co/285287-naruto-uragannye-hroniki-4-sezon-2008.html	7	2008	Япония	аниме, мультфильм, фантастика, боевик, триллер, приключения	Хаято Датэ, Юки Эри	24
7191	Части тела (6 сезон)	https://kinokrad.co/281579-chasti-tela-6-sezon-2008.html	9	2008	США	драма	Майкл М. Робин, Элоди Кин, Райан Мерфи	43
7192	Меня зовут Эрл (4 сезон)	https://kinokrad.co/282877-menya-zovut-jerl-4-sezon-2008.html	9	2008	США	комедия	Марк Баклэнд, Эял Гордин, Майкл Фреско	22
7193	Герои (3 сезон)	https://kinokrad.co/282752-geroi-3-sezon-2008.html	9	2008	США	фантастика, триллер, драма	Грег Биман, Аллан Аркуш, Жанно Шварц	43
7194	Декстер (3 сезон)	https://kinokrad.co/287455-dekster-3-sezon-2008.html	9	2008	США	триллер, драма, криминал, детектив	Джон Дал, Стив Шилл, Кит Гордон	55
7195	Война Фойла (5 сезон)	https://kinokrad.co/286149-voyna-foyla-5-sezon-2008.html	7	2008	Великобритания	драма, криминал, детектив, военный	Джереми Силберстон, Стюарт Орм, Гэвин Миллар	90
7196	Физика или химия (2 сезон)	https://kinokrad.co/283286-fizika-ili-himiya-2-sezon-2008.html	7	2008	Испания	драма, комедия	Хавьер Кинтас, Хуан Мануэль Родригес Пачон, Карлос Наварро Баллестерос	75
7197	Физика или химия (1 сезон)	https://kinokrad.co/283284-fizika-ili-himiya-1-sezon-2008.html	7	2008	Испания	драма, комедия	Хавьер Кинтас, Хуан Мануэль Родригес Пачон, Карлос Наварро Баллестерос	75
7198	Числа (5 сезон)	https://kinokrad.co/285485-4isla-5-sezon-2008.html	8	2008	США	триллер, драма, криминал, детектив	Дэннис Смит, Алекс Закржевский, Джон Беринг	43
7199	Южный Парк (12 сезон)	https://kinokrad.co/286737-yuzhnyy-park-12-sezon-2008.html	6	2008	США	мультфильм, комедия	Трей Паркер, Эрик Сточ, Мэтт Стоун	22
7200	Дорожный патруль (1 сезон)	https://kinokrad.co/284823-dorozhnyy-patrul-1-sezon-2008.html	5	2008	Россия	криминал, детектив, приключения	Влад Фурман, Юрий Цуркану	45
7201	Парки и зоны отдыха (2 сезон)	https://kinokrad.co/285701-parki-i-zony-otdyha-2-sezon-2009.html	7	2009	США	комедия	Дин Холлэнд, Майкл Шур, Кен Уиттингэм	21
7202	Парки и зоны отдыха (1 сезон)	https://kinokrad.co/285687-parki-i-zony-1-sezon-2009.html	8	2009	США	комедия	Дин Холлэнд, Майкл Шур, Кен Уиттингэм	21
7203	Наруто: Ураганные хроники (6 сезон)	https://kinokrad.co/285291-naruto-uragannye-hroniki-6-sezon-2009.html	7	2009	Япония	аниме, мультфильм, фантастика, боевик, триллер, приключения	Хаято Датэ, Юки Эри	24
7204	Блудливая Калифорния (3 сезон)	https://kinokrad.co/281811-bludlivaya-kaliforniya-3-sezon-2009.html	9	2009	США	драма, комедия	Дэвид Фон Энкен, Адам Бернштейн, Джон Дал	28
7205	Части тела (7 сезон)	https://kinokrad.co/281580-chasti-tela-7-sezon-2009.html	8	2009	США	драма	Майкл М. Робин, Элоди Кин, Райан Мерфи	43
7206	Гимнастки (1 сезон)	https://kinokrad.co/282895-gimnastki-1-sezon-2009.html	8	2009	США	драма, спорт	Дэвид Пэймер, Крис Грисмер, Стив Майнер	43
7207	Герои (4 сезон)	https://kinokrad.co/282754-geroi-4-sezon-2009.html	8	2009	США	фантастика, триллер, драма	Грег Биман, Аллан Аркуш, Жанно Шварц	43
7208	Морская полиция: Лос-Анджелес (1 сезон)	https://kinokrad.co/291196-morskaya-policiya-los-andzheles-1-sezon-2009.html	8	2009	США	триллер, драма, криминал, детектив	Тони Уормби, Терренс О’Хара, Дэннис Смит	43
7209	Два с половиной человека (7 сезон)	https://kinokrad.co/290881-dva-s-polovinoy-cheloveka-7-sezon-2009.html	8	2009	США	комедия	Джеймс Уиддоуз, Гари Хэлворсон, Памела Фрайман	22
7210	Прикуп (1 сезон)	https://kinokrad.co/287041-prikup-1-sezon-2009.html	9	2009	Великобритания	триллер, драма, криминал	Дэвид Друри	42
7211	Физика или химия (4 сезон)	https://kinokrad.co/283289-fizika-ili-himiya-4-sezon-2009.html	8	2009	Испания	драма, комедия	Хавьер Кинтас, Хуан Мануэль Родригес Пачон, Карлос Наварро Баллестерос	75
7212	Физика или химия (3 сезон)	https://kinokrad.co/283287-fizika-ili-himiya-3-sezon-2009.html	8	2009	Испания	драма, комедия	Хавьер Кинтас, Хуан Мануэль Родригес Пачон, Карлос Наварро Баллестерос	75
7213	Остаться в живых (5 сезон)	https://kinokrad.co/283274-ostatsya-v-zhivyh-5-sezon-2009.html	8	2009	США	фантастика, фэнтези, триллер, драма, детектив, приключения	Джек Бендер, Стивен Уильямс, Пол А. Эдвардс	43
7214	Миранда (1 сезон)	https://kinokrad.co/285655-miranda-1-sezon-2009.html	7	2009	Великобритания	комедия	Джульетт Мэй, Мэнди Флетчер	22
7215	Однокурсники (1 сезон)	https://kinokrad.co/285461-odnokursniki-1-sezon-2009.html	7	2009	США	комедия	Тристрам Шапиро, Джо Руссо, Энтони Руссо	22
7216	Числа (6 сезон)	https://kinokrad.co/285487-4isla-6-sezon-2009.html	8	2009	США	триллер, драма, криминал, детектив	Дэннис Смит, Алекс Закржевский, Джон Беринг	43
7217	Южный Парк (13 сезон)	https://kinokrad.co/286739-yuzhnyy-park-13-sezon-2009.html	7	2009	США	мультфильм, комедия	Трей Паркер, Эрик Сточ, Мэтт Стоун	22
7218	Брак по завещанию 1 сезон (1-12 серия)	https://kinokrad.co/274004-brak-po-zaveschaniyu-1-sezon-18-04.html	8	2009	Россия	мелодрама	Василий Сериков	44
7473	Главный калибр (1 сезон)	https://kinokrad.co/282873-glavnyy-kalibr-1-sezon-2007.html	7	2007	Россия	боевик, приключения	Михаил Шевчук	44
7219	Клиника (8 сезон)	https://kinokrad.co/282830-klinika-8-sezon-2008.html	9	2009	США	драма, комедия	Майкл Алан Спиллер, Билл Лоуренс, Адам Бернштейн	22
7220	Остров Харпера (1 сезон)	https://kinokrad.co/289765-ostrov-harpera-1-sezon-2010.html	9	2009	США	ужасы, триллер, драма, детектив	Сэнфорд Букставер, Рик Бота, Стив Бойум	43
7221	Военнопленный (1 сезон)	https://kinokrad.co/286781-voennoplennyy-1-sezon-2009.html	6	2009	Израиль	драма	Гидеон Рафф	55
7222	Всё включено (3 сезон)	https://kinokrad.co/292012-vsjo-vklyucheno-3-sezon-2009.html	8	2009	Великобритания	комедия	Сэнди Джонсон, Дэвид Сент, Кевин Аллен	30
7223	В Филадельфии всегда солнечно (5 сезон)	https://kinokrad.co/286079-v-filadelfii-vsegda-solnechno-5-sezon-2009.html	6	2009	США	комедия	Мэтт Шекман, Фред Сэвэдж, Дэниэл Эттиэс	22
7224	Как я встретил вашу маму (5 сезон)	https://kinokrad.co/282152-kak-ya-vstretil-vashu-mamu-5-sezon-2009.html	8	2009	США	комедия, мелодрама, драма	Памела Фрайман, Роб Гринберг, Майкл Дж. Ши	22
7225	Речные монстры (1 сезон)	https://kinokrad.co/282029-rechnye-monstry-1-sezon-2009.html	9	2009	США	документальный	Барни Ревилл, Доминик Уэстон, Шарлотта Джонс	45
7226	Свинка Пеппа (6 сезон)	https://kinokrad.co/286139-svinka-peppa-6-sezon-2009.html	5	2009	Великобритания	мультфильм, семейный	Марк Бэйкер, Невилл Эстли, Mark Baker	5
7227	Логово (3 сезон)	https://kinokrad.co/281916-logovo-3-sezon-2009.html	5	2009	США	ужасы, драма, детектив	Фред Олен Рэй	22
7228	Мисс Марпл Агаты Кристи (4 сезон)	https://kinokrad.co/282815-miss-marpl-agaty-kristi-4-sezon-2009.html	8	2009	Великобритания	драма, криминал, детектив	Чарльз Палмер, Энди Уилсон, Джон Стриклэнд	94
7229	Как не стоит жить (2 сезон)	https://kinokrad.co/284151-kak-ne-stoit-zhit-2-sezon-2009.html	6	2009	Великобритания	комедия	Сэм Лейфер, Дэн Кларк, Мартин Деннис	28
7230	Дневники Вампира (3 сезон)	https://kinokrad.co/255884-dnevniki-vampira-3-sezon.html	9	2009	США	ужасы, фэнтези, триллер, драма, мелодрама, детектив	Крис Грисмер, Маркос Сига	43
7231	Клиника 9 сезон (1-13 серия)	https://kinokrad.co/255735-klinika-9-sezon.html	9	2009	США	драма, комедия	Майкл Спиллер, Билл Лоуренс	22
7232	Легенда об Искателе 2 сезон (1-22 серия)	https://kinokrad.co/255727-legenda-ob-iskatele-2-sezon-onlayn.html	9	2009	США	фэнтези, боевик, драма, приключения	Марк Бисли, Гарт Максвелл	43
7233	Молокососы (3 сезон)	https://kinokrad.co/282678-molokososy-3-sezon-2009.html	8	2009	Великобритания	драма	Чарльз Мартин, Саймон Мэсси, Джек Клоф	45
7234	Кайл XY (3 сезон)	https://kinokrad.co/282658-kayl-xy-3-sezon-2009.html	9	2009	США, Канада	фантастика, драма, детектив	Майкл Робисан, Гай Норман Би, Пэт Уильямс	43
7235	Дневник доктора (2 сезон)	https://kinokrad.co/283217-dnevnik-doktora-2-sezon-2009.html	8	2009	Германия	комедия	София Аллет-Кохе, Франциска Мейер Прайс, Оливер Шмитц	45
7236	Втайне от родителей (2 сезон)	https://kinokrad.co/283198-vtayne-ot-roditeley-2-sezon-2009.html	8	2009	США	драма, мелодрама, комедия, семейный	Кит Трусделл, Энсон Уильямс, Гэйл Брэдли	43
7237	Арчер 1 сезон (1-10 серия)	https://kinokrad.co/280878-archer-1-sezon.html	8	2009	США	мультфильм, боевик, комедия	Адам Рид, Брайан Фордни	22
7238	Обмани меня 1 сезон (1-13 серия)	https://kinokrad.co/274057-obmani-menya-serial-1-sezon.html	9	2009	США	триллер, драма, криминал, детектив	Дэниэл Сакхейм, Майкл Цинберг, Ваган Мусекян	43
7239	Глухарь 2 сезон (1-48 серия)	https://kinokrad.co/274072-gluhar-2-sezon.html	8	2009	Россия	драма, детектив	Гузэль Киреева, Тимур Алпатов, Вячеслав Каминский	45
7240	Металлопокалипсис (3 сезон)	https://kinokrad.co/283734-metallopokalipsis-3-sezon-2009.html	7	2009	США	мультфильм, комедия, музыка	Джон Шнепп, Крис Приноски, Марк Брукс	12
7241	Ясновидец 4 сезон (1-16 серия)	https://kinokrad.co/273991-yasnovidec-4-sezon.html	7	2009	США	комедия, криминал, детектив	Мэл Дэмски, Стив Фрэнкс, Джеймс Родэй	43
7242	Город хищниц 1 сезон (1-24 серия)	https://kinokrad.co/274080-gorod-hischnic-1-sezon.html	7	2009	США	комедия	Майкл МакДональд, Джон Путч, Кортни Кокс	22
7243	Доктор Хаус 6 сезон (1-22 серия)	https://kinokrad.co/274100-doktor-haus-6-sezon.html	9	2009	США	драма, детектив	Грег Яйтанс, Деран Сарафян, Дэвид Стрейтон	43
7244	Место преступления Лас-Вегас 10 сезон (1-23 серия)	https://kinokrad.co/274460-c-s-i-mesto-prestupleniya-10-sezon.html	7	2009	США, Канада	триллер, драма, криминал, детектив	Кеннет Финк, Ричард Дж. Льюис, Алек Смайт	43
7245	Гриффины (8 сезон)	https://kinokrad.co/282003-griffiny-8-sezon-2009.html	7	2009	США	мультфильм, комедия	Питер Шин, Джеймс Пурдум, Доминик Бьянчи	22
7246	Отчаянные домохозяйки 6 сезон	https://kinokrad.co/276163-otchayannye-domohozyayki-6-sezon.html	7	2009	США	драма, мелодрама, комедия, детектив	Дэвид Гроссман, Ларри Шоу	43
7247	Плохие / Отбросы 1 сезон (1-6 серия)	https://kinokrad.co/280666-plohie-otbrosy-1-sezon.html	8	2009	Великобритания	фантастика, фэнтези, драма, комедия	Том Грин, Джонатан ван Тюллекен, Том Харпер	43
7248	Морской волк (1-2 серия)	https://kinokrad.co/280563-morskoy-volk.html	7	2009	Канада, Германия	драма, мелодрама, приключения	Майк Баркер	180
7249	Американский папаша 5 сезон (1-18 серия)	https://kinokrad.co/274129-amerikanskiy-papasha-5-seriya.html	6	2009	США	мультфильм, комедия	Рон Хьюгарт, Брент Вудс, Энтони Льои	22
7250	Симпсоны 21 сезон (1-23 серия)	https://kinokrad.co/274225-simpsony-21-sezon.html	10	2009	США	мультфильм, комедия	Марк Керклэнд, Стивен Дин Мур, Джим Рирдон	22
7251	Менталист 2 сезон (1-23 серия)	https://kinokrad.co/274336-mentalist-2-sezon.html	8	2009	США	триллер, драма, криминал, детектив	Крис Лонг, Эрик Ланёвилль, Джон Шоуолтер	43
7252	Лузеры 5 сезон (1-20 серия)	https://kinokrad.co/272412-luzery-5-sezon.html	6	2009	США	мюзикл, драма, комедия, музыка	Брэд Фалчук, Брэдли Букер, Эрик Столц	43
7253	Парки и зоны отдыха 6 сезон (1-22 серия)	https://kinokrad.co/272453-parki-i-zony-otdyha-6-sezon.html	9	2009	США	комедия	Дин Холлэнд, Майкл Шур, Трой Миллер	21
7254	Клуб Винкс – Школа волшебниц 4 сезон	https://kinokrad.co/275724-klub-vinks-shkola-volshebnic-4.html	8	2009	Италия	мультфильм, приключения, семейный	Иджинио Страффи	22
7255	Мыслить как преступник 5 сезон (1-23 серия)	https://kinokrad.co/274164-myslit-kak-prestupnik-5-sezon.html	8	2009	США, Канада	триллер, драма, криминал, детектив	Гленн Кершоу, Феликс Энрикез Алькала, Эдвард Аллен Бернеро	43
7256	Во все тяжкие 2 сезон (1-13 серия)	https://kinokrad.co/274034-vo-vse-tyazhkie-2.html	9	2009	США	триллер, драма, криминал	Мишель Максвелл МакЛарен, Адам Бернштейн, Винс Гиллиган	47
7257	Адепт Святого знака 1 сезон (1-24 серия)	https://kinokrad.co/44-adept-svyatogo-znaka-1-sezon.html	8	2009	Япония	аниме, мультфильм, приключения	Юу Нобута	25
7258	Бывает и хуже 1 сезон	https://kinokrad.co/275590-byvaet-i-huzhe-1.html	7	2009	США	комедия	Ли Шаллат Чемел, Эллиот Хегарти	22
7259	Братья и сестры 4 сезон (1-24 серия)	https://kinokrad.co/277087-bratya-i-sestry-4-sezon-1-24-seriya.html	5	2009	США	драма	Кен Олин, Майкл Моррис	43
7260	Кот Саймона (1 сезон)	https://kinokrad.co/317786-kot-saymona-1-sezon-2008.html	8	2008	Великобритания	мультфильм, комедия	Саймон Тофилд	2
7261	Смешарики (2 сезон)	https://kinokrad.co/336004-smeshariki-2-sezon.html	7	2008	Россия	мультфильм, детский, комедия	Денис Чернов, Илья Максимов, Джангир Сулейманов	6
7262	Расследования Мердока (11 сезон)	https://kinokrad.co/322075-rassledovaniya-merdoka-11-sezon.html	8	2008	Канада, Великобритания	драма, криминал, детектив	Харви Кросслэнд, Кэл Кунс, Лори Линд	43
7263	Сверхъестественное (4 сезон)	https://kinokrad.co/274547-sverhestestvennoe-4-sezon.html	9	2008	США	ужасы, фэнтези, триллер, драма, детектив, мистика	Роберт Сингер, Филип Сгриккиа, Ким Мэннерс	43
7264	Компьютерщики (3 сезон)	https://kinokrad.co/300735-kompyuterschiki-3-sezon-2008.html	6	2008	Великобритания	комедия	Грэхэм Лайнхэн, Ричард Боден, Бен Фуллер	22
7265	Валландер (1 сезон)	https://kinokrad.co/298684-vallander-1-sezon-2008.html	7	2008	Великобритания, Швеция, США, Германия	триллер, криминал, драма, детектив	Филип Мартин, Найал МакКормик, Хетти Макдональд	90
7266	Неприрученные (3 сезон)	https://kinokrad.co/303359-nepriruchennye-3-sezon-2008.html	5	2008	Великобритания	драма	Николас Лафлэнд, Пол Харрисон, Морис Филлипс	47
7267	Безмолвный свидетель (12 сезон)	https://kinokrad.co/299931-bezmolvnyy-svidetel-12-sezon-2008.html	6	2008	Великобритания	драма, криминал, детектив	Тадеус О’Салливан, Дэвид Ричардс, Ричард Сайни	43
7268	Пуаро (11 сезон)	https://kinokrad.co/318922-puaro-11-sezon-2008.html	8	2008	Великобритания	триллер, драма, криминал, детектив	Эдвард Беннет, Ренни Рай, Эндрю Грив	90
7269	Расследования Мердока (1 сезон)	https://kinokrad.co/293008-rassledovaniya-merdoka-1-sezon-2008.html	8	2008	Канада, Великобритания	драма, криминал, детектив	Лори Линд, Кэл Кунс, Харви Кросслэнд	43
7270	Легенда об Искателе (1 сезон)	https://kinokrad.co/292975-legenda-ob-iskatele-1-sezon-2008.html	9	2008	США	фэнтези, боевик, драма, приключения	Марк Бисли, Гарт Максвелл, Майкл Херст	43
7271	Пять шагов по облакам (1 сезон)	https://kinokrad.co/309500-pyat-shagov-po-oblakam-1-sezon-2008.html	5	2008	Россия	детектив	Игорь Штернберг	51
7272	Всё включено (2 сезон)	https://kinokrad.co/292009-vsjo-vklyucheno-2-sezon-2008.html	7	2008	Великобритания	комедия	Сэнди Джонсон, Дэвид Сент, Кевин Аллен	30
7273	РеГенезис (4 сезон)	https://kinokrad.co/301085-regenezis-4-sezon-2008.html	6	2008	Канада	фантастика, триллер, драма	Джон Л’Экуаер, Клемент Вирго, Кен Джиротти	43
7274	Звездные врата: Атлантида (5 сезон)	https://kinokrad.co/289015-zvezdnye-vrata-atlantida-5-sezon-2008.html	10	2008	Канада, США	фантастика, боевик, драма, приключения	Мартин Вуд, Энди Микита, Уильям Варинг	43
7275	Убежище (1 сезон)	https://kinokrad.co/292834-ubezhische-1-sezon-2008.html	8	2008	Канада	фантастика, фэнтези, драма, детектив	Мартин Вуд, Стивен А. Эделсон, Брентон Спенсер	43
7276	Анатомия страсти (5 сезон)	https://kinokrad.co/285345-anatomiya-strasti-5-sezon-2008.html	8	2008	США	драма, мелодрама	Роб Корн, Шандра Уилсон, Тони Фелан	43
7277	Морская полиция: Спецотдел (6 сезон)	https://kinokrad.co/284543-morskaya-policiya-specotdel-6-sezon-2008.html	8	2008	США	боевик, триллер, драма, комедия, криминал, детектив	Дэннис Смит, Тони Уормби, Терренс О’Хара	43
7278	C.S.I.: Майами (7 сезон)	https://kinokrad.co/291673-c-s-i-mayami-7-sezon-2008.html	9	2008	США	боевик, триллер, драма, криминал, детектив	Сэм Хилл, Джо Чаппелль, Скотт Лаутанен	43
7279	Закон и порядок. Специальный корпус (10 сезон)	https://kinokrad.co/300198-zakon-i-poryadok-specialnyy-korpus-10-sezon-2008.html	6	2008	США	триллер, драма, криминал, детектив	Дэвид Платт, Питер Лето, Жан Де Сегонзак	43
7280	Волшебники из Вэйверли Плэйс (2 сезон)	https://kinokrad.co/282794-volshebniki-iz-vjeyverli-pljeys-2-sezon-2008.html	8	2008	США	фэнтези, комедия, семейный	Виктор Гонзалез, Боб Коэрр, Роберт Берлингер	22
7281	Тюдоры (2 сезон)	https://kinokrad.co/283647-tyudory-2-sezon-2008.html	8	2008	Ирландия, Канада, США	драма, мелодрама, военный, история	Киаран Доннелли, Джереми Подесва, Дирбла Уолш	53
7282	Грань (1 сезон)	https://kinokrad.co/283933-gran-1-sezon-2008.html	9	2008	США, Канада	фантастика, триллер, драма, детектив	Джо Чаппелль, Брэд Андерсон, Фред Туа	43
7283	Нашествие (1 сезон)	https://kinokrad.co/288886-nashestvie-1-sezon-2008.html	8	2008	США	ужасы, фантастика, триллер, драма, мелодрама, детектив	Лоуренс Триллинг, Серджо Мимика-Геззан, Стив Шилл	43
7284	Кости (4 сезон)	https://kinokrad.co/286985-kosti-4-sezon-2008.html	9	2008	США	драма, мелодрама, комедия, криминал, детектив	Иэн Тойнтон, Дуайт Х. Литтл, Жанно Шварц	43
7285	Рыцарь дорог (1 сезон)	https://kinokrad.co/283311-rycar-dorog-1-sezon-2008.html	9	2008	США	триллер, детектив	Джей Чандрашекхар, Аллен Крокер, Брайан Спайсер	43
7286	Дурнушка (3 сезон)	https://kinokrad.co/282649-durnushka-3-sezon-2008.html	6	2008	США	драма, комедия	Виктор Нелли мл., Джеймс Хейман, Майкл Алан Спиллер	43
7287	Выжившие (1 сезон)	https://kinokrad.co/292828-vyzhivshie-1-sezon-2008.html	8	2008	Великобритания	фантастика, драма	Джэми Пэйн, Эндрю Ганн, Иэн Б. МакДональд	52
7288	Дурман (4 сезон)	https://kinokrad.co/286593-durman-4-sezon-2008.html	8	2008	США	драма, комедия, криминал	Крейг Зиск, Майкл Трим, Скотт Эллис	25
7289	Тайный дневник девушки по вызову (2 сезон)	https://kinokrad.co/286513-taynyy-dnevnik-devushki-po-vyzovu-2-sezon-2008.html	8	2008	Великобритания	драма	Ян Деманж, Сьюзэн Талли, Питер Лайдон	22
7290	Наруто: Ураганные хроники (4 сезон)	https://kinokrad.co/285287-naruto-uragannye-hroniki-4-sezon-2008.html	7	2008	Япония	аниме, мультфильм, фантастика, боевик, триллер, приключения	Хаято Датэ, Юки Эри	24
7291	Части тела (6 сезон)	https://kinokrad.co/281579-chasti-tela-6-sezon-2008.html	9	2008	США	драма	Майкл М. Робин, Элоди Кин, Райан Мерфи	43
7292	Меня зовут Эрл (4 сезон)	https://kinokrad.co/282877-menya-zovut-jerl-4-sezon-2008.html	9	2008	США	комедия	Марк Баклэнд, Эял Гордин, Майкл Фреско	22
7293	Герои (3 сезон)	https://kinokrad.co/282752-geroi-3-sezon-2008.html	9	2008	США	фантастика, триллер, драма	Грег Биман, Аллан Аркуш, Жанно Шварц	43
7294	Декстер (3 сезон)	https://kinokrad.co/287455-dekster-3-sezon-2008.html	9	2008	США	триллер, драма, криминал, детектив	Джон Дал, Стив Шилл, Кит Гордон	55
7295	Война Фойла (5 сезон)	https://kinokrad.co/286149-voyna-foyla-5-sezon-2008.html	7	2008	Великобритания	драма, криминал, детектив, военный	Джереми Силберстон, Стюарт Орм, Гэвин Миллар	90
7296	Физика или химия (2 сезон)	https://kinokrad.co/283286-fizika-ili-himiya-2-sezon-2008.html	7	2008	Испания	драма, комедия	Хавьер Кинтас, Хуан Мануэль Родригес Пачон, Карлос Наварро Баллестерос	75
7297	Физика или химия (1 сезон)	https://kinokrad.co/283284-fizika-ili-himiya-1-sezon-2008.html	7	2008	Испания	драма, комедия	Хавьер Кинтас, Хуан Мануэль Родригес Пачон, Карлос Наварро Баллестерос	75
7298	Числа (5 сезон)	https://kinokrad.co/285485-4isla-5-sezon-2008.html	8	2008	США	триллер, драма, криминал, детектив	Дэннис Смит, Алекс Закржевский, Джон Беринг	43
7299	Южный Парк (12 сезон)	https://kinokrad.co/286737-yuzhnyy-park-12-sezon-2008.html	6	2008	США	мультфильм, комедия	Трей Паркер, Эрик Сточ, Мэтт Стоун	22
7300	Дорожный патруль (1 сезон)	https://kinokrad.co/284823-dorozhnyy-patrul-1-sezon-2008.html	5	2008	Россия	криминал, детектив, приключения	Влад Фурман, Юрий Цуркану	45
7301	Громовы. Дом надежды (2 сезон)	https://kinokrad.co/284301-gromovy-dom-nadezhdy-2-sezon-2008.html	7	2008	Россия	драма, мелодрама, семейный	Александр Баранов	44
7302	Турецкий для начинающих (3 сезон)	https://kinokrad.co/282596-tureckiy-dlya-nachinayuschih-3-sezon-2008.html	8	2008	Германия	комедия	Оливер Шмитц, Эдзард Оннекен, Кристиан Диттер	25
7303	Корпорация героев / Гость из будущего (1 сезон)	https://kinokrad.co/281734-korporaciya-geroev-gost-iz-buduschego-1-sezon-2008.html	5	2008	Франция	комедия	Симон Астье, Себастьен ЛаЛэйнн	
7304	Щит (7 сезон)	https://kinokrad.co/282323-schit-7-sezon-2008.html	8	2008	США	триллер, драма, криминал	Гай Ферленд, Скотт Бразил, Кларк Джонсон	43
7305	Два с половиной человека (6 сезон)	https://kinokrad.co/290878-dva-s-polovinoy-cheloveka-6-sezon-2008.html	9	2008	США	комедия	Джеймс Уиддоуз, Гари Хэлворсон, Памела Фрайман	22
7306	В Филадельфии всегда солнечно (4 сезон)	https://kinokrad.co/286077-v-filadelfii-vsegda-solnechno-4-sezon-2008.html	10	2008	США	комедия	Мэтт Шекман, Фред Сэвэдж, Дэниэл Эттиэс	22
7307	Остаться в живых (4 сезон)	https://kinokrad.co/283273-ostatsya-v-zhivyh-4-sezon-2008.html	8	2008	США	фантастика, фэнтези, триллер, драма, детектив, приключения	Джек Бендер, Стивен Уильямс, Пол А. Эдвардс	43
7308	Свинка Пеппа (5 сезон)	https://kinokrad.co/286137-svinka-peppa-5-sezon-2008.html	6	2008	Великобритания	мультфильм, семейный	Марк Бэйкер, Невилл Эстли, Mark Baker	5
7309	Блудливая Калифорния 2 сезон (1-12 серия)	https://kinokrad.co/281354-bludlivaya-kaliforniya-2-sezon.html	8	2008	США	драма, комедия	Дэвид Фон Энкен, Адам Бернштейн, Джон Дал	28
7310	Логово (2 сезон)	https://kinokrad.co/281915-logovo-2-sezon-2008.html	6	2008	США	ужасы, драма, детектив	Фред Олен Рэй	22
7311	Наруто: Ураганные хроники (5 сезон)	https://kinokrad.co/285289-naruto-uragannye-hroniki-5-sezon-2008.html	7	2008	Япония	аниме, мультфильм, фантастика, боевик, триллер, приключения	Хаято Датэ, Юки Эри	24
7312	Наруто: Ураганные хроники (3 сезон)	https://kinokrad.co/285285-naruto-uragannye-hroniki-3-sezon-2008.html	7	2008	Япония	аниме, мультфильм, фантастика, боевик, триллер, приключения	Хаято Датэ, Юки Эри	24
7313	Улицы разбитых фонарей (9 сезон)	https://kinokrad.co/285191-ulicy-razbityh-fonarey-9-sezon-2008.html	6	2008	Россия	боевик, драма, криминал, приключения	Александр Рогожкин, Дмитрий Светозаров, Кирилл Капица	48
7314	Молокососы (2 сезон)	https://kinokrad.co/282677-molokososy-2-sezon-2008.html	8	2008	Великобритания	драма	Чарльз Мартин, Саймон Мэсси, Джек Клоф	45
7315	Дневник доктора (1 сезон)	https://kinokrad.co/283216-dnevnik-doktora-1-sezon-2008.html	9	2008	Германия	комедия	София Аллет-Кохе, Франциска Мейер Прайс, Оливер Шмитц	45
7316	Втайне от родителей (1 сезон)	https://kinokrad.co/283197-vtayne-ot-roditeley-1-sezon-2008.html	8	2008	США	драма, мелодрама, комедия, семейный	Кит Трусделл, Энсон Уильямс, Гэйл Брэдли	43
7317	Как я встретил вашу маму (4 сезон)	https://kinokrad.co/282151-kak-ya-vstretil-vashu-mamu-4-sezon-2008.html	8	2008	США	комедия, мелодрама, драма	Памела Фрайман, Роб Гринберг, Майкл Дж. Ши	22
7318	Прослушка (5 сезон)	https://kinokrad.co/282133-proslushka-5-sezon-2008.html	7	2008	США	триллер, драма, криминал	Джо Чаппелль, Эрнест Р. Дикерсон, Кларк Джонсон	60
7319	Глухарь 1 сезон (1-48 серия)	https://kinokrad.co/274071-gluhar-1-sezon.html	8	2008	Россия	драма, детектив	Гузэль Киреева, Тимур Алпатов, Вячеслав Каминский	45
7320	Мыслить как преступник 4 сезон (1-26 серия)	https://kinokrad.co/274163-myslit-kak-prestupnik-4-sezon.html	8	2008	США, Канада	триллер, драма, криминал, детектив	Гленн Кершоу, Феликс Энрикез Алькала, Эдвард Аллен Бернеро	43
7321	Побег (4 сезон)	https://kinokrad.co/281878-pobeg-4-sezon-2008.html	9	2008	США	боевик, триллер, драма, криминал, детектив	Бобби Рот, Кевин Хукс, Дуайт Х. Литтл	43
7322	Ясновидец 3 сезон (1-16 серия)	https://kinokrad.co/273990-yasnovidec-3-sezon.html	7	2008	США	комедия, криминал, детектив	Мэл Дэмски, Стив Фрэнкс, Джеймс Родэй	43
7323	Доктор Хаус 5 сезон (1-24 серия)	https://kinokrad.co/274095-doktor-haus-5-sezon.html	8	2008	США	драма, детектив	Грег Яйтанс, Деран Сарафян, Дэвид Стрейтон	43
7324	Место преступления Лас-Вегас 9 сезон (1-24 серия)	https://kinokrad.co/274459-c-s-i-mesto-prestupleniya-9-sezon.html	9	2008	США, Канада	триллер, драма, криминал, детектив	Кеннет Финк, Ричард Дж. Льюис, Алек Смайт	43
7325	Отчаянные домохозяйки 5 сезон	https://kinokrad.co/276162-otchayannye-domohozyayki-5-sezon.html	8	2008	США	драма, мелодрама, комедия, детектив	Дэвид Гроссман, Ларри Шоу	43
7326	Гриффины (7 сезон)	https://kinokrad.co/282002-griffiny-7-sezon-2008.html	8	2008	США	мультфильм, комедия	Питер Шин, Джеймс Пурдум, Доминик Бьянчи	22
7327	Американский папаша 4 сезон (1-20 серия)	https://kinokrad.co/274124-amerikanskiy-papasha-4-sezon.html	6	2008	США	мультфильм, комедия	Рон Хьюгарт, Брент Вудс, Энтони Льои	22
7328	Симпсоны 20 сезон (1-21 серия)	https://kinokrad.co/274224-simpsony-20-sezon.html	10	2008	США	мультфильм, комедия	Марк Керклэнд, Стивен Дин Мур, Джим Рирдон	22
7329	Менталист 1 сезон (1-23 серия)	https://kinokrad.co/274332-mentalist-1-sezon.html	8	2008	США	триллер, драма, криминал, детектив	Крис Лонг, Эрик Ланёвилль, Джон Шоуолтер	43
7330	Элитный отряд (1-4 серия)	https://kinokrad.co/255717-elitnyy-otryad.html	8	2008	Франция	криминал	Николя Кюш, Тьерри Пети	52
7331	Во все тяжкие 1 сезон (1-7 серия)	https://kinokrad.co/274033-vo-vse-tyazhkie-1-sezon.html	9	2008	США	триллер, драма, криминал	Мишель Максвелл МакЛарен, Адам Бернштейн, Винс Гиллиган	47
7332	Клуб Винкс – Школа волшебниц 5 сезон	https://kinokrad.co/255720-klub-vinks-shkola-volshebnic-5.html	8	2008	Италия	мультфильм, приключения, семейный	Иджинио Страффи	22
7333	Братья и сестры 3 сезон (1-24 серия)	https://kinokrad.co/277086-bratya-i-sestry-3-sezon-1-24-seriya.html	7	2008	США	драма	Кен Олин, Майкл Моррис	43
7334	Сверхъестественное (3 сезон)	https://kinokrad.co/274546-sverhestestvennoe-3-sezon.html	9	2007	США	ужасы, фэнтези, триллер, драма, детектив, мистика	Роберт Сингер, Филип Сгриккиа, Ким Мэннерс	43
7335	Теория большого взрыва (1 сезон)	https://kinokrad.co/311022-teoriya-bolshogo-vzryva-1-sezon.html	8	2007	США	мелодрама, комедия	Марк Сендроуски, Энтони Джозеф Рич, Питер Чакос	22
7336	Теория большого взрыва (11 сезон)	https://kinokrad.co/321618-teoriya-bolshogo-vzryva-11-sezon-2017.html	8	2007	США	мелодрама, комедия	Марк Сендроуски, Энтони Джозеф Рич, Питер Чакос	22
7337	Теория большого взрыва (12 сезон)	https://kinokrad.co/329642-teoriya-bolshogo-vzryva-12-sezon.html	9	2007	США	мелодрама, комедия	Марк Сендроуски, Энтони Джозеф Рич, Питер Чакос	22
7338	Хроники будущего (1 сезон)	https://kinokrad.co/301430-hroniki-buduschego-1-sezon-2007.html	7	2007	США	фантастика, драма	Харольд Беккер, Джонатан Фрейкс, Дарнелл Мартин	42
7339	Компьютерщики (2 сезон)	https://kinokrad.co/300733-kompyuterschiki-2-sezon-2007.html	8	2007	Великобритания	комедия	Грэхэм Лайнхэн, Ричард Боден, Бен Фуллер	22
7340	Звездные бои насмерть (6 сезон)	https://kinokrad.co/321350-zvezdnye-boi-nasmert-6-sezon-2007.html	5	2007	США	мультфильм, боевик, комедия, спорт	Эрик Фогель, Дэйв Томас, Джек Флетчер	21
7341	Арн: Рыцарь-тамплиер (1 сезон)	https://kinokrad.co/319886-arn-rycar-tamplier-1-sezon-2007.html	9	2007	Швеция, Великобритания, Дания, Норвегия, Финляндия, Германия, Марокко	боевик, драма, мелодрама, приключения, военный	Петер Флинт	139
7342	Неприрученные (2 сезон)	https://kinokrad.co/303269-nepriruchennye-2-sezon-2007.html	5	2007	Великобритания	драма	Николас Лафлэнд, Пол Харрисон, Морис Филлипс	47
7343	Безмолвный свидетель (11 сезон)	https://kinokrad.co/299928-bezmolvnyy-svidetel-11-sezon-2007.html	7	2007	Великобритания	драма, криминал, детектив	Тадеус О’Салливан, Дэвид Ричардс, Ричард Сайни	43
7344	Парни из Трейлерпарка (7 сезон)	https://kinokrad.co/321254-parni-iz-treylerparka-7-sezon-2007.html	5	2007	Канада	драма, комедия, криминал	Майк Клаттенбёрг, Рон Мерфи, Кори Боулз	30
7345	Четыре тысячи четыреста (4 сезон)	https://kinokrad.co/302042-chetyre-tysyachi-chetyresta-4-sezon-2007.html	9	2007	США, Великобритания	фантастика, триллер, драма, детектив	Скотт Питерс, Винс Мисиано, Ник Копус	43
7346	Таинственные знаки (1 сезон)	https://kinokrad.co/301115-tainstvennye-znaki-1-sezon-2007.html	6	2007	Франция, Бельгия, Швейцария	фантастика, детектив	Дидье Альбер	52
7347	Супершторм (1 сезон)	https://kinokrad.co/301112-supershtorm-1-sezon-2007.html	6	2007	Великобритания, США, Германия, Франция, Япония	фантастика, триллер, драма	Джулиан Симпсон	55
7348	Всё включено (1 сезон)	https://kinokrad.co/292006-vsjo-vklyucheno-1-sezon-2007.html	7	2007	Великобритания	комедия	Сэнди Джонсон, Дэвид Сент, Кевин Аллен	30
7349	РеГенезис (3 сезон)	https://kinokrad.co/301082-regenezis-3-sezon-2007.html	6	2007	Канада	фантастика, триллер, драма	Джон Л’Экуаер, Клемент Вирго, Кен Джиротти	43
7350	Звездные врата: Атлантида (4 сезон)	https://kinokrad.co/289012-zvezdnye-vrata-atlantida-4-sezon-2007.html	10	2007	Канада, США	фантастика, боевик, драма, приключения	Мартин Вуд, Энди Микита, Уильям Варинг	43
7351	Дурман (3 сезон)	https://kinokrad.co/286591-durman-3-sezon-2007.html	8	2007	США	драма, комедия, криминал	Крейг Зиск, Майкл Трим, Скотт Эллис	25
7352	Анатомия страсти (4 сезон)	https://kinokrad.co/285343-anatomiya-strasti-4-sezon-2007.html	8	2007	США	драма, мелодрама	Роб Корн, Шандра Уилсон, Тони Фелан	43
7353	Морская полиция: Спецотдел (5 сезон)	https://kinokrad.co/284541-morskaya-policiya-specotdel-5-sezon-2007.html	8	2007	США	боевик, триллер, драма, комедия, криминал, детектив	Дэннис Смит, Тони Уормби, Терренс О’Хара	43
7354	C.S.I.: Майами (6 сезон)	https://kinokrad.co/291670-c-s-i-mayami-6-sezon-2007.html	9	2007	США	боевик, триллер, драма, криминал, детектив	Сэм Хилл, Джо Чаппелль, Скотт Лаутанен	43
7355	Закон и порядок. Специальный корпус (9 сезон)	https://kinokrad.co/300195-zakon-i-poryadok-specialnyy-korpus-9-sezon-2007.html	7	2007	США	триллер, драма, криминал, детектив	Дэвид Платт, Питер Лето, Жан Де Сегонзак	43
7356	Волшебники из Вэйверли Плэйс (1 сезон)	https://kinokrad.co/282793-volshebniki-iz-vjeyverli-pljeys-1-sezon-2007.html	8	2007	США	фэнтези, комедия, семейный	Виктор Гонзалез, Боб Коэрр, Роберт Берлингер	22
7357	Тюдоры (1 сезон)	https://kinokrad.co/283645-tyudory-1-sezon-2007.html	7	2007	Ирландия, Канада, США	драма, мелодрама, военный, история	Киаран Доннелли, Джереми Подесва, Дирбла Уолш	53
7358	Кости (3 сезон)	https://kinokrad.co/286983-kosti-3-sezon-2007.html	8	2007	США	драма, мелодрама, комедия, криминал, детектив	Иэн Тойнтон, Дуайт Х. Литтл, Жанно Шварц	43
7359	Кайл XY (2 сезон)	https://kinokrad.co/282657-kayl-xy-2-sezon-2007.html	9	2007	США, Канада	фантастика, драма, детектив	Майкл Робисан, Гай Норман Би, Пэт Уильямс	43
7360	Кайл XY (1 сезон)	https://kinokrad.co/282656-kayl-xy-1-sezon-2007.html	8	2007	США, Канада	фантастика, драма, детектив	Майкл Робисан, Гай Норман Би, Пэт Уильямс	43
7361	Дурнушка (2 сезон)	https://kinokrad.co/282648-durnushka-2-sezon-2007.html	6	2007	США	драма, комедия	Виктор Нелли мл., Джеймс Хейман, Майкл Алан Спиллер	43
7362	Тайный дневник девушки по вызову (1 сезон)	https://kinokrad.co/286511-taynyy-dnevnik-devushki-po-vyzovu-1-sezon-2007.html	7	2007	Великобритания	драма	Ян Деманж, Сьюзэн Талли, Питер Лайдон	22
7363	Истории папы Кролика (3 сезон)	https://kinokrad.co/285521-istorii-papy-krolika-3-sezon-2007.html	6	2007	Франция, Канада	мультфильм, комедия, семейный	Эрик Бертье, Moran Caouissin	26
7364	Части тела (5 сезон)	https://kinokrad.co/281534-chasti-tela-5-sezon-2007.html	10	2007	США	драма	Майкл М. Робин, Элоди Кин, Райан Мерфи	43
7365	Меня зовут Эрл (3 сезон)	https://kinokrad.co/282876-menya-zovut-jerl-3-sezon-2007.html	9	2007	США	комедия	Марк Баклэнд, Эял Гордин, Майкл Фреско	22
7366	Герои (2 сезон)	https://kinokrad.co/282751-geroi-2-sezon-2007.html	9	2007	США	фантастика, триллер, драма	Грег Биман, Аллан Аркуш, Жанно Шварц	43
7367	Декстер (2 сезон)	https://kinokrad.co/287449-dekster-2-sezon-2007.html	9	2007	США	триллер, драма, криминал, детектив	Джон Дал, Стив Шилл, Кит Гордон	55
7368	Два с половиной человека (5 сезон)	https://kinokrad.co/286187-dva-s-polovinoy-cheloveka-5-sezon-2007.html	9	2007	США	комедия	Джеймс Уиддоуз, Гари Хэлворсон, Памела Фрайман	22
7369	Числа (4 сезон)	https://kinokrad.co/285483-4isla-4-sezon-2007.html	7	2007	США	триллер, драма, криминал, детектив	Дэннис Смит, Алекс Закржевский, Джон Беринг	43
7370	Южный Парк (11 сезон)	https://kinokrad.co/286735-yuzhnyy-park-11-sezon-2007.html	7	2007	США	мультфильм, комедия	Трей Паркер, Эрик Сточ, Мэтт Стоун	22
7371	Турецкий для начинающих (2 сезон)	https://kinokrad.co/282595-tureckiy-dlya-nachinayuschih-2-sezon-2007.html	8	2007	Германия	комедия	Оливер Шмитц, Эдзард Оннекен, Кристиан Диттер	25
7372	Ликвидация (1 сезон)	https://kinokrad.co/281676-likvidaciya-1-sezon-2007.html	9	2007	Россия	боевик, триллер	Сергей Урсуляк	45
7373	Главный калибр (1 сезон)	https://kinokrad.co/282873-glavnyy-kalibr-1-sezon-2007.html	7	2007	Россия	боевик, приключения	Михаил Шевчук	44
7374	Клиника (7 сезон)	https://kinokrad.co/282829-klinika-7-sezon-2007.html	9	2007	США	драма, комедия	Майкл Алан Спиллер, Билл Лоуренс, Адам Бернштейн	22
7375	Щит (6 сезон)	https://kinokrad.co/282322-schit-6-sezon-2007.html	8	2007	США	триллер, драма, криминал	Гай Ферленд, Скотт Бразил, Кларк Джонсон	43
7376	В Филадельфии всегда солнечно (3 сезон)	https://kinokrad.co/286075-v-filadelfii-vsegda-solnechno-3-sezon-2007.html	6	2007	США	комедия	Мэтт Шекман, Фред Сэвэдж, Дэниэл Эттиэс	22
7377	Свинка Пеппа (4 сезон)	https://kinokrad.co/286135-svinka-peppa-4-sezon-2007.html	3	2007	Великобритания	мультфильм, семейный	Марк Бэйкер, Невилл Эстли, Mark Baker	5
7378	Бухта Данте (3 сезон)	https://kinokrad.co/281640-buhta-dante-3-sezon-2007.html	3	2007	США	ужасы, триллер, драма, мелодрама, детектив, мистика	Сэм Ирвин, Майкл Костаназа	47
7379	Блудливая Калифорния 1 сезон (1-12 серия)	https://kinokrad.co/281348-bludlivaya-kaliforniya-1-sezon.html	9	2007	США	драма, комедия	Дэвид Фон Энкен, Адам Бернштейн, Джон Дал	28
7380	Логово (1 сезон)	https://kinokrad.co/281914-logovo-1-sezon-2007.html	6	2007	США	ужасы, драма, детектив	Фред Олен Рэй	22
7381	Мисс Марпл Агаты Кристи (3 сезон)	https://kinokrad.co/282814-miss-marpl-agaty-kristi-3-sezon-2007.html	7	2007	Великобритания	драма, криминал, детектив	Чарльз Палмер, Энди Уилсон, Джон Стриклэнд	94
7382	Наруто: Ураганные хроники (2 сезон)	https://kinokrad.co/285283-naruto-uragannye-hroniki-2-sezon-2007.html	7	2007	Япония	аниме, мультфильм, фантастика, боевик, триллер, приключения	Хаято Датэ, Юки Эри	24
7383	Как не стоит жить (1 сезон)	https://kinokrad.co/284145-kak-ne-stoit-zhit-1-sezon-2007.html	5	2007	Великобритания	комедия	Сэм Лейфер, Дэн Кларк, Мартин Деннис	28
7384	Наруто: Ураганные хроники (1 сезон)	https://kinokrad.co/285281-naruto-uragannye-hroniki-1-sezon-2007.html	8	2007	Япония	аниме, мультфильм, фантастика, боевик, триллер, приключения	Хаято Датэ, Юки Эри	24
7385	Молокососы (1 сезон)	https://kinokrad.co/282676-molokososy-1-sezon-2007.html	8	2007	Великобритания	драма	Чарльз Мартин, Саймон Мэсси, Джек Клоф	45
7386	Как я встретил вашу маму (3 сезон)	https://kinokrad.co/282150-kak-ya-vstretil-vashu-mamu-3-sezon-2007.html	9	2007	США	комедия, мелодрама, драма	Памела Фрайман, Роб Гринберг, Майкл Дж. Ши	22
7387	Бесы (1-6 серия)	https://kinokrad.co/3038-besy.html	6	2007	Россия	драма	Геннадий Карюк	50
7388	Мыслить как преступник 3 сезон (1-20 серия)	https://kinokrad.co/274162-myslit-kak-prestupnik-3-sezon.html	8	2007	США, Канада	триллер, драма, криминал, детектив	Гленн Кершоу, Феликс Энрикез Алькала, Эдвард Аллен Бернеро	43
7389	Побег (3 сезон)	https://kinokrad.co/281876-pobeg-3-sezon-2007.html	9	2007	США	боевик, триллер, драма, криминал, детектив	Бобби Рот, Кевин Хукс, Дуайт Х. Литтл	43
7390	Металлопокалипсис (2 сезон)	https://kinokrad.co/283733-metallopokalipsis-2-sezon-2007.html	7	2007	США	мультфильм, комедия, музыка	Джон Шнепп, Крис Приноски, Марк Брукс	12
7391	Место преступления Лас-Вегас 8 сезон (1-17 серия)	https://kinokrad.co/274456-c-s-i-mesto-prestupleniya-8-sezon.html	7	2007	США, Канада	триллер, драма, криминал, детектив	Кеннет Финк, Ричард Дж. Льюис, Алек Смайт	43
7392	Аси (1 сезон)	https://kinokrad.co/255899-asi.html	7	2007	Турция	драма, мелодрама	Джевдет Мерджан	43
7393	Под кодовым именем «Хантер» (6 серия)	https://kinokrad.co/279868-pod-kodovym-imenem-hanter-6-seriya.html	7	2007	Норвегия	триллер, драма, криминал	Jarl Emsell Larsen	60
7394	Ясновидец 2 сезон (1-16 серия)	https://kinokrad.co/273989-yasnovidec-2-sezon.html	8	2007	США	комедия, криминал, детектив	Мэл Дэмски, Стив Фрэнкс, Джеймс Родэй	43
7395	Доктор Хаус 4 сезон (1-16 серия)	https://kinokrad.co/274093-doktor-haus-4-sezon.html	8	2007	США	драма, детектив	Грег Яйтанс, Деран Сарафян, Дэвид Стрейтон	43
7396	Отчаянные домохозяйки 4 сезон	https://kinokrad.co/276161-otchayannye-domohozyayki-4-sezon.html	8	2007	США	драма, мелодрама, комедия, детектив	Дэвид Гроссман, Ларри Шоу	43
7397	Гриффины (6 сезон)	https://kinokrad.co/282001-griffiny-6-sezon-2007.html	6	2007	США	мультфильм, комедия	Питер Шин, Джеймс Пурдум, Доминик Бьянчи	22
7398	Доктор Кто 4 сезон (1-19 серия)	https://kinokrad.co/274020-doktor-kto-4-sezon-onlayn.html	8	2007	Великобритания	фантастика, драма, комедия, приключения, семейный	Грэм Харпер, Эрос Лин, Джеймс Стронг	43
7399	Американский папаша 3 сезон (1-16 серия)	https://kinokrad.co/274123-amerikanskiy-papasha-3-sezon.html	6	2007	США	мультфильм, комедия	Рон Хьюгарт, Брент Вудс, Энтони Льои	22
7400	Симпсоны 19 сезон (1-20 серия)	https://kinokrad.co/274223-simpsony-19-sezon.html	10	2007	США	мультфильм, комедия	Марк Керклэнд, Стивен Дин Мур, Джим Рирдон	22
7401	Громовы. Дом надежды (2 сезон)	https://kinokrad.co/284301-gromovy-dom-nadezhdy-2-sezon-2008.html	7	2008	Россия	драма, мелодрама, семейный	Александр Баранов	44
7402	Турецкий для начинающих (3 сезон)	https://kinokrad.co/282596-tureckiy-dlya-nachinayuschih-3-sezon-2008.html	8	2008	Германия	комедия	Оливер Шмитц, Эдзард Оннекен, Кристиан Диттер	25
7403	Корпорация героев / Гость из будущего (1 сезон)	https://kinokrad.co/281734-korporaciya-geroev-gost-iz-buduschego-1-sezon-2008.html	5	2008	Франция	комедия	Симон Астье, Себастьен ЛаЛэйнн	
7404	Щит (7 сезон)	https://kinokrad.co/282323-schit-7-sezon-2008.html	8	2008	США	триллер, драма, криминал	Гай Ферленд, Скотт Бразил, Кларк Джонсон	43
7405	Два с половиной человека (6 сезон)	https://kinokrad.co/290878-dva-s-polovinoy-cheloveka-6-sezon-2008.html	9	2008	США	комедия	Джеймс Уиддоуз, Гари Хэлворсон, Памела Фрайман	22
7406	В Филадельфии всегда солнечно (4 сезон)	https://kinokrad.co/286077-v-filadelfii-vsegda-solnechno-4-sezon-2008.html	10	2008	США	комедия	Мэтт Шекман, Фред Сэвэдж, Дэниэл Эттиэс	22
7407	Остаться в живых (4 сезон)	https://kinokrad.co/283273-ostatsya-v-zhivyh-4-sezon-2008.html	8	2008	США	фантастика, фэнтези, триллер, драма, детектив, приключения	Джек Бендер, Стивен Уильямс, Пол А. Эдвардс	43
7408	Свинка Пеппа (5 сезон)	https://kinokrad.co/286137-svinka-peppa-5-sezon-2008.html	6	2008	Великобритания	мультфильм, семейный	Марк Бэйкер, Невилл Эстли, Mark Baker	5
7409	Блудливая Калифорния 2 сезон (1-12 серия)	https://kinokrad.co/281354-bludlivaya-kaliforniya-2-sezon.html	8	2008	США	драма, комедия	Дэвид Фон Энкен, Адам Бернштейн, Джон Дал	28
7410	Логово (2 сезон)	https://kinokrad.co/281915-logovo-2-sezon-2008.html	6	2008	США	ужасы, драма, детектив	Фред Олен Рэй	22
7411	Наруто: Ураганные хроники (5 сезон)	https://kinokrad.co/285289-naruto-uragannye-hroniki-5-sezon-2008.html	7	2008	Япония	аниме, мультфильм, фантастика, боевик, триллер, приключения	Хаято Датэ, Юки Эри	24
7412	Наруто: Ураганные хроники (3 сезон)	https://kinokrad.co/285285-naruto-uragannye-hroniki-3-sezon-2008.html	7	2008	Япония	аниме, мультфильм, фантастика, боевик, триллер, приключения	Хаято Датэ, Юки Эри	24
7413	Улицы разбитых фонарей (9 сезон)	https://kinokrad.co/285191-ulicy-razbityh-fonarey-9-sezon-2008.html	6	2008	Россия	боевик, драма, криминал, приключения	Александр Рогожкин, Дмитрий Светозаров, Кирилл Капица	48
7414	Молокососы (2 сезон)	https://kinokrad.co/282677-molokososy-2-sezon-2008.html	8	2008	Великобритания	драма	Чарльз Мартин, Саймон Мэсси, Джек Клоф	45
7415	Дневник доктора (1 сезон)	https://kinokrad.co/283216-dnevnik-doktora-1-sezon-2008.html	9	2008	Германия	комедия	София Аллет-Кохе, Франциска Мейер Прайс, Оливер Шмитц	45
7416	Втайне от родителей (1 сезон)	https://kinokrad.co/283197-vtayne-ot-roditeley-1-sezon-2008.html	8	2008	США	драма, мелодрама, комедия, семейный	Кит Трусделл, Энсон Уильямс, Гэйл Брэдли	43
7417	Как я встретил вашу маму (4 сезон)	https://kinokrad.co/282151-kak-ya-vstretil-vashu-mamu-4-sezon-2008.html	8	2008	США	комедия, мелодрама, драма	Памела Фрайман, Роб Гринберг, Майкл Дж. Ши	22
7418	Прослушка (5 сезон)	https://kinokrad.co/282133-proslushka-5-sezon-2008.html	7	2008	США	триллер, драма, криминал	Джо Чаппелль, Эрнест Р. Дикерсон, Кларк Джонсон	60
7419	Глухарь 1 сезон (1-48 серия)	https://kinokrad.co/274071-gluhar-1-sezon.html	8	2008	Россия	драма, детектив	Гузэль Киреева, Тимур Алпатов, Вячеслав Каминский	45
7420	Мыслить как преступник 4 сезон (1-26 серия)	https://kinokrad.co/274163-myslit-kak-prestupnik-4-sezon.html	8	2008	США, Канада	триллер, драма, криминал, детектив	Гленн Кершоу, Феликс Энрикез Алькала, Эдвард Аллен Бернеро	43
7421	Побег (4 сезон)	https://kinokrad.co/281878-pobeg-4-sezon-2008.html	9	2008	США	боевик, триллер, драма, криминал, детектив	Бобби Рот, Кевин Хукс, Дуайт Х. Литтл	43
7422	Ясновидец 3 сезон (1-16 серия)	https://kinokrad.co/273990-yasnovidec-3-sezon.html	7	2008	США	комедия, криминал, детектив	Мэл Дэмски, Стив Фрэнкс, Джеймс Родэй	43
7423	Доктор Хаус 5 сезон (1-24 серия)	https://kinokrad.co/274095-doktor-haus-5-sezon.html	8	2008	США	драма, детектив	Грег Яйтанс, Деран Сарафян, Дэвид Стрейтон	43
7424	Место преступления Лас-Вегас 9 сезон (1-24 серия)	https://kinokrad.co/274459-c-s-i-mesto-prestupleniya-9-sezon.html	9	2008	США, Канада	триллер, драма, криминал, детектив	Кеннет Финк, Ричард Дж. Льюис, Алек Смайт	43
7425	Отчаянные домохозяйки 5 сезон	https://kinokrad.co/276162-otchayannye-domohozyayki-5-sezon.html	8	2008	США	драма, мелодрама, комедия, детектив	Дэвид Гроссман, Ларри Шоу	43
7426	Гриффины (7 сезон)	https://kinokrad.co/282002-griffiny-7-sezon-2008.html	8	2008	США	мультфильм, комедия	Питер Шин, Джеймс Пурдум, Доминик Бьянчи	22
7427	Американский папаша 4 сезон (1-20 серия)	https://kinokrad.co/274124-amerikanskiy-papasha-4-sezon.html	6	2008	США	мультфильм, комедия	Рон Хьюгарт, Брент Вудс, Энтони Льои	22
7428	Симпсоны 20 сезон (1-21 серия)	https://kinokrad.co/274224-simpsony-20-sezon.html	10	2008	США	мультфильм, комедия	Марк Керклэнд, Стивен Дин Мур, Джим Рирдон	22
7429	Менталист 1 сезон (1-23 серия)	https://kinokrad.co/274332-mentalist-1-sezon.html	8	2008	США	триллер, драма, криминал, детектив	Крис Лонг, Эрик Ланёвилль, Джон Шоуолтер	43
7430	Элитный отряд (1-4 серия)	https://kinokrad.co/255717-elitnyy-otryad.html	8	2008	Франция	криминал	Николя Кюш, Тьерри Пети	52
7431	Во все тяжкие 1 сезон (1-7 серия)	https://kinokrad.co/274033-vo-vse-tyazhkie-1-sezon.html	9	2008	США	триллер, драма, криминал	Мишель Максвелл МакЛарен, Адам Бернштейн, Винс Гиллиган	47
7432	Клуб Винкс – Школа волшебниц 5 сезон	https://kinokrad.co/255720-klub-vinks-shkola-volshebnic-5.html	8	2008	Италия	мультфильм, приключения, семейный	Иджинио Страффи	22
7433	Братья и сестры 3 сезон (1-24 серия)	https://kinokrad.co/277086-bratya-i-sestry-3-sezon-1-24-seriya.html	7	2008	США	драма	Кен Олин, Майкл Моррис	43
7434	Сверхъестественное (3 сезон)	https://kinokrad.co/274546-sverhestestvennoe-3-sezon.html	9	2007	США	ужасы, фэнтези, триллер, драма, детектив, мистика	Роберт Сингер, Филип Сгриккиа, Ким Мэннерс	43
7435	Теория большого взрыва (1 сезон)	https://kinokrad.co/311022-teoriya-bolshogo-vzryva-1-sezon.html	8	2007	США	мелодрама, комедия	Марк Сендроуски, Энтони Джозеф Рич, Питер Чакос	22
7436	Теория большого взрыва (11 сезон)	https://kinokrad.co/321618-teoriya-bolshogo-vzryva-11-sezon-2017.html	8	2007	США	мелодрама, комедия	Марк Сендроуски, Энтони Джозеф Рич, Питер Чакос	22
7437	Теория большого взрыва (12 сезон)	https://kinokrad.co/329642-teoriya-bolshogo-vzryva-12-sezon.html	9	2007	США	мелодрама, комедия	Марк Сендроуски, Энтони Джозеф Рич, Питер Чакос	22
7438	Хроники будущего (1 сезон)	https://kinokrad.co/301430-hroniki-buduschego-1-sezon-2007.html	7	2007	США	фантастика, драма	Харольд Беккер, Джонатан Фрейкс, Дарнелл Мартин	42
7439	Компьютерщики (2 сезон)	https://kinokrad.co/300733-kompyuterschiki-2-sezon-2007.html	8	2007	Великобритания	комедия	Грэхэм Лайнхэн, Ричард Боден, Бен Фуллер	22
7440	Звездные бои насмерть (6 сезон)	https://kinokrad.co/321350-zvezdnye-boi-nasmert-6-sezon-2007.html	5	2007	США	мультфильм, боевик, комедия, спорт	Эрик Фогель, Дэйв Томас, Джек Флетчер	21
7441	Арн: Рыцарь-тамплиер (1 сезон)	https://kinokrad.co/319886-arn-rycar-tamplier-1-sezon-2007.html	9	2007	Швеция, Великобритания, Дания, Норвегия, Финляндия, Германия, Марокко	боевик, драма, мелодрама, приключения, военный	Петер Флинт	139
7442	Неприрученные (2 сезон)	https://kinokrad.co/303269-nepriruchennye-2-sezon-2007.html	5	2007	Великобритания	драма	Николас Лафлэнд, Пол Харрисон, Морис Филлипс	47
7443	Безмолвный свидетель (11 сезон)	https://kinokrad.co/299928-bezmolvnyy-svidetel-11-sezon-2007.html	7	2007	Великобритания	драма, криминал, детектив	Тадеус О’Салливан, Дэвид Ричардс, Ричард Сайни	43
7444	Парни из Трейлерпарка (7 сезон)	https://kinokrad.co/321254-parni-iz-treylerparka-7-sezon-2007.html	5	2007	Канада	драма, комедия, криминал	Майк Клаттенбёрг, Рон Мерфи, Кори Боулз	30
7445	Четыре тысячи четыреста (4 сезон)	https://kinokrad.co/302042-chetyre-tysyachi-chetyresta-4-sezon-2007.html	9	2007	США, Великобритания	фантастика, триллер, драма, детектив	Скотт Питерс, Винс Мисиано, Ник Копус	43
7446	Таинственные знаки (1 сезон)	https://kinokrad.co/301115-tainstvennye-znaki-1-sezon-2007.html	6	2007	Франция, Бельгия, Швейцария	фантастика, детектив	Дидье Альбер	52
7447	Супершторм (1 сезон)	https://kinokrad.co/301112-supershtorm-1-sezon-2007.html	6	2007	Великобритания, США, Германия, Франция, Япония	фантастика, триллер, драма	Джулиан Симпсон	55
7448	Всё включено (1 сезон)	https://kinokrad.co/292006-vsjo-vklyucheno-1-sezon-2007.html	7	2007	Великобритания	комедия	Сэнди Джонсон, Дэвид Сент, Кевин Аллен	30
7449	РеГенезис (3 сезон)	https://kinokrad.co/301082-regenezis-3-sezon-2007.html	6	2007	Канада	фантастика, триллер, драма	Джон Л’Экуаер, Клемент Вирго, Кен Джиротти	43
7450	Звездные врата: Атлантида (4 сезон)	https://kinokrad.co/289012-zvezdnye-vrata-atlantida-4-sezon-2007.html	10	2007	Канада, США	фантастика, боевик, драма, приключения	Мартин Вуд, Энди Микита, Уильям Варинг	43
7451	Дурман (3 сезон)	https://kinokrad.co/286591-durman-3-sezon-2007.html	8	2007	США	драма, комедия, криминал	Крейг Зиск, Майкл Трим, Скотт Эллис	25
7452	Анатомия страсти (4 сезон)	https://kinokrad.co/285343-anatomiya-strasti-4-sezon-2007.html	8	2007	США	драма, мелодрама	Роб Корн, Шандра Уилсон, Тони Фелан	43
7453	Морская полиция: Спецотдел (5 сезон)	https://kinokrad.co/284541-morskaya-policiya-specotdel-5-sezon-2007.html	8	2007	США	боевик, триллер, драма, комедия, криминал, детектив	Дэннис Смит, Тони Уормби, Терренс О’Хара	43
7454	C.S.I.: Майами (6 сезон)	https://kinokrad.co/291670-c-s-i-mayami-6-sezon-2007.html	9	2007	США	боевик, триллер, драма, криминал, детектив	Сэм Хилл, Джо Чаппелль, Скотт Лаутанен	43
7455	Закон и порядок. Специальный корпус (9 сезон)	https://kinokrad.co/300195-zakon-i-poryadok-specialnyy-korpus-9-sezon-2007.html	7	2007	США	триллер, драма, криминал, детектив	Дэвид Платт, Питер Лето, Жан Де Сегонзак	43
7456	Волшебники из Вэйверли Плэйс (1 сезон)	https://kinokrad.co/282793-volshebniki-iz-vjeyverli-pljeys-1-sezon-2007.html	8	2007	США	фэнтези, комедия, семейный	Виктор Гонзалез, Боб Коэрр, Роберт Берлингер	22
7457	Тюдоры (1 сезон)	https://kinokrad.co/283645-tyudory-1-sezon-2007.html	7	2007	Ирландия, Канада, США	драма, мелодрама, военный, история	Киаран Доннелли, Джереми Подесва, Дирбла Уолш	53
7458	Кости (3 сезон)	https://kinokrad.co/286983-kosti-3-sezon-2007.html	8	2007	США	драма, мелодрама, комедия, криминал, детектив	Иэн Тойнтон, Дуайт Х. Литтл, Жанно Шварц	43
7459	Кайл XY (2 сезон)	https://kinokrad.co/282657-kayl-xy-2-sezon-2007.html	9	2007	США, Канада	фантастика, драма, детектив	Майкл Робисан, Гай Норман Би, Пэт Уильямс	43
7460	Кайл XY (1 сезон)	https://kinokrad.co/282656-kayl-xy-1-sezon-2007.html	8	2007	США, Канада	фантастика, драма, детектив	Майкл Робисан, Гай Норман Би, Пэт Уильямс	43
7461	Дурнушка (2 сезон)	https://kinokrad.co/282648-durnushka-2-sezon-2007.html	6	2007	США	драма, комедия	Виктор Нелли мл., Джеймс Хейман, Майкл Алан Спиллер	43
7462	Тайный дневник девушки по вызову (1 сезон)	https://kinokrad.co/286511-taynyy-dnevnik-devushki-po-vyzovu-1-sezon-2007.html	7	2007	Великобритания	драма	Ян Деманж, Сьюзэн Талли, Питер Лайдон	22
7463	Истории папы Кролика (3 сезон)	https://kinokrad.co/285521-istorii-papy-krolika-3-sezon-2007.html	6	2007	Франция, Канада	мультфильм, комедия, семейный	Эрик Бертье, Moran Caouissin	26
7464	Части тела (5 сезон)	https://kinokrad.co/281534-chasti-tela-5-sezon-2007.html	10	2007	США	драма	Майкл М. Робин, Элоди Кин, Райан Мерфи	43
7465	Меня зовут Эрл (3 сезон)	https://kinokrad.co/282876-menya-zovut-jerl-3-sezon-2007.html	9	2007	США	комедия	Марк Баклэнд, Эял Гордин, Майкл Фреско	22
7466	Герои (2 сезон)	https://kinokrad.co/282751-geroi-2-sezon-2007.html	9	2007	США	фантастика, триллер, драма	Грег Биман, Аллан Аркуш, Жанно Шварц	43
7467	Декстер (2 сезон)	https://kinokrad.co/287449-dekster-2-sezon-2007.html	9	2007	США	триллер, драма, криминал, детектив	Джон Дал, Стив Шилл, Кит Гордон	55
7468	Два с половиной человека (5 сезон)	https://kinokrad.co/286187-dva-s-polovinoy-cheloveka-5-sezon-2007.html	9	2007	США	комедия	Джеймс Уиддоуз, Гари Хэлворсон, Памела Фрайман	22
7469	Числа (4 сезон)	https://kinokrad.co/285483-4isla-4-sezon-2007.html	7	2007	США	триллер, драма, криминал, детектив	Дэннис Смит, Алекс Закржевский, Джон Беринг	43
7470	Южный Парк (11 сезон)	https://kinokrad.co/286735-yuzhnyy-park-11-sezon-2007.html	7	2007	США	мультфильм, комедия	Трей Паркер, Эрик Сточ, Мэтт Стоун	22
7471	Турецкий для начинающих (2 сезон)	https://kinokrad.co/282595-tureckiy-dlya-nachinayuschih-2-sezon-2007.html	8	2007	Германия	комедия	Оливер Шмитц, Эдзард Оннекен, Кристиан Диттер	25
7474	Клиника (7 сезон)	https://kinokrad.co/282829-klinika-7-sezon-2007.html	9	2007	США	драма, комедия	Майкл Алан Спиллер, Билл Лоуренс, Адам Бернштейн	22
7475	Щит (6 сезон)	https://kinokrad.co/282322-schit-6-sezon-2007.html	8	2007	США	триллер, драма, криминал	Гай Ферленд, Скотт Бразил, Кларк Джонсон	43
7476	В Филадельфии всегда солнечно (3 сезон)	https://kinokrad.co/286075-v-filadelfii-vsegda-solnechno-3-sezon-2007.html	6	2007	США	комедия	Мэтт Шекман, Фред Сэвэдж, Дэниэл Эттиэс	22
7477	Свинка Пеппа (4 сезон)	https://kinokrad.co/286135-svinka-peppa-4-sezon-2007.html	3	2007	Великобритания	мультфильм, семейный	Марк Бэйкер, Невилл Эстли, Mark Baker	5
7478	Бухта Данте (3 сезон)	https://kinokrad.co/281640-buhta-dante-3-sezon-2007.html	3	2007	США	ужасы, триллер, драма, мелодрама, детектив, мистика	Сэм Ирвин, Майкл Костаназа	47
7479	Блудливая Калифорния 1 сезон (1-12 серия)	https://kinokrad.co/281348-bludlivaya-kaliforniya-1-sezon.html	9	2007	США	драма, комедия	Дэвид Фон Энкен, Адам Бернштейн, Джон Дал	28
7480	Логово (1 сезон)	https://kinokrad.co/281914-logovo-1-sezon-2007.html	6	2007	США	ужасы, драма, детектив	Фред Олен Рэй	22
7481	Мисс Марпл Агаты Кристи (3 сезон)	https://kinokrad.co/282814-miss-marpl-agaty-kristi-3-sezon-2007.html	7	2007	Великобритания	драма, криминал, детектив	Чарльз Палмер, Энди Уилсон, Джон Стриклэнд	94
7482	Наруто: Ураганные хроники (2 сезон)	https://kinokrad.co/285283-naruto-uragannye-hroniki-2-sezon-2007.html	7	2007	Япония	аниме, мультфильм, фантастика, боевик, триллер, приключения	Хаято Датэ, Юки Эри	24
7483	Как не стоит жить (1 сезон)	https://kinokrad.co/284145-kak-ne-stoit-zhit-1-sezon-2007.html	5	2007	Великобритания	комедия	Сэм Лейфер, Дэн Кларк, Мартин Деннис	28
7484	Наруто: Ураганные хроники (1 сезон)	https://kinokrad.co/285281-naruto-uragannye-hroniki-1-sezon-2007.html	8	2007	Япония	аниме, мультфильм, фантастика, боевик, триллер, приключения	Хаято Датэ, Юки Эри	24
7485	Молокососы (1 сезон)	https://kinokrad.co/282676-molokososy-1-sezon-2007.html	8	2007	Великобритания	драма	Чарльз Мартин, Саймон Мэсси, Джек Клоф	45
7486	Как я встретил вашу маму (3 сезон)	https://kinokrad.co/282150-kak-ya-vstretil-vashu-mamu-3-sezon-2007.html	9	2007	США	комедия, мелодрама, драма	Памела Фрайман, Роб Гринберг, Майкл Дж. Ши	22
7487	Бесы (1-6 серия)	https://kinokrad.co/3038-besy.html	6	2007	Россия	драма	Геннадий Карюк	50
7488	Мыслить как преступник 3 сезон (1-20 серия)	https://kinokrad.co/274162-myslit-kak-prestupnik-3-sezon.html	8	2007	США, Канада	триллер, драма, криминал, детектив	Гленн Кершоу, Феликс Энрикез Алькала, Эдвард Аллен Бернеро	43
7489	Побег (3 сезон)	https://kinokrad.co/281876-pobeg-3-sezon-2007.html	9	2007	США	боевик, триллер, драма, криминал, детектив	Бобби Рот, Кевин Хукс, Дуайт Х. Литтл	43
7490	Металлопокалипсис (2 сезон)	https://kinokrad.co/283733-metallopokalipsis-2-sezon-2007.html	7	2007	США	мультфильм, комедия, музыка	Джон Шнепп, Крис Приноски, Марк Брукс	12
7491	Место преступления Лас-Вегас 8 сезон (1-17 серия)	https://kinokrad.co/274456-c-s-i-mesto-prestupleniya-8-sezon.html	7	2007	США, Канада	триллер, драма, криминал, детектив	Кеннет Финк, Ричард Дж. Льюис, Алек Смайт	43
7492	Аси (1 сезон)	https://kinokrad.co/255899-asi.html	7	2007	Турция	драма, мелодрама	Джевдет Мерджан	43
7493	Под кодовым именем «Хантер» (6 серия)	https://kinokrad.co/279868-pod-kodovym-imenem-hanter-6-seriya.html	7	2007	Норвегия	триллер, драма, криминал	Jarl Emsell Larsen	60
7494	Ясновидец 2 сезон (1-16 серия)	https://kinokrad.co/273989-yasnovidec-2-sezon.html	8	2007	США	комедия, криминал, детектив	Мэл Дэмски, Стив Фрэнкс, Джеймс Родэй	43
7495	Доктор Хаус 4 сезон (1-16 серия)	https://kinokrad.co/274093-doktor-haus-4-sezon.html	8	2007	США	драма, детектив	Грег Яйтанс, Деран Сарафян, Дэвид Стрейтон	43
7496	Отчаянные домохозяйки 4 сезон	https://kinokrad.co/276161-otchayannye-domohozyayki-4-sezon.html	8	2007	США	драма, мелодрама, комедия, детектив	Дэвид Гроссман, Ларри Шоу	43
7497	Гриффины (6 сезон)	https://kinokrad.co/282001-griffiny-6-sezon-2007.html	6	2007	США	мультфильм, комедия	Питер Шин, Джеймс Пурдум, Доминик Бьянчи	22
7498	Доктор Кто 4 сезон (1-19 серия)	https://kinokrad.co/274020-doktor-kto-4-sezon-onlayn.html	8	2007	Великобритания	фантастика, драма, комедия, приключения, семейный	Грэм Харпер, Эрос Лин, Джеймс Стронг	43
7499	Американский папаша 3 сезон (1-16 серия)	https://kinokrad.co/274123-amerikanskiy-papasha-3-sezon.html	6	2007	США	мультфильм, комедия	Рон Хьюгарт, Брент Вудс, Энтони Льои	22
7500	Симпсоны 19 сезон (1-20 серия)	https://kinokrad.co/274223-simpsony-19-sezon.html	10	2007	США	мультфильм, комедия	Марк Керклэнд, Стивен Дин Мур, Джим Рирдон	22
7501	Ментовские войны 4 сезон (1-8 серия)	https://kinokrad.co/274116-mentovskie-voyny-4-sezon.html	8	2007	Россия	боевик, драма, криминал	Павел Мальков	302
7502	Гуррен-Лаганн 1 сезон (1-27 серия)	https://kinokrad.co/278556-gurren-lagann-1-sezon-1-27-seriya.html	9	2007	Япония	аниме, мультфильм, фантастика, боевик, драма, комедия	Хироюки Имайси, Масахико Ютсука, Хироши Икетоми	25
7503	Клуб Винкс – Школа волшебниц 3 сезон	https://kinokrad.co/275723-klub-vinks-shkola-volshebnic-3.html	7	2007	Италия	мультфильм, приключения, семейный	Иджинио Страффи	22
7504	Братья и сестры 2 сезон (1-16 серия)	https://kinokrad.co/277084-bratya-i-sestry-2-sezon-1-16-seriya.html	7	2007	США	драма	Кен Олин, Майкл Моррис	43
7505	Сверхъестественное (2 сезон)	https://kinokrad.co/274545-sverhestestvennoe-2-sezon.html	9	2006	США	ужасы, фэнтези, триллер, драма, детектив, мистика	Роберт Сингер, Филип Сгриккиа, Ким Мэннерс	43
7506	Лунатики (2 сезон)	https://kinokrad.co/322443-lunatiki-2-sezon.html	6	2006	США	мультфильм, фантастика, фэнтези, боевик, комедия, приключения	Дэн Фосетт, Кенни Томпкинс, Курт Уолстид	22
7507	Король Квинса (9 сезон)	https://kinokrad.co/311034-korol-kvinsa-9-sezon-2006.html	9	2006	США	комедия	Роб Шиллер, Джеймс Уиддоуз, Памела Фрайман	22
7508	Черный оракул (2 сезон)	https://kinokrad.co/295276-chernyy-orakul-2-sezon-2006.html	6	2006	Канада	мультфильм, фантастика	Рон Мерфи, Крэйг Прайс, Пол Фокс	24
7509	Неприрученные (1 сезон)	https://kinokrad.co/303266-nepriruchennye-1-sezon-2006.html	4	2006	Великобритания	драма	Николас Лафлэнд, Пол Харрисон, Морис Филлипс	47
7510	Безмолвный свидетель (10 сезон)	https://kinokrad.co/299925-bezmolvnyy-svidetel-10-sezon-2006.html	7	2006	Великобритания	драма, криминал, детектив	Тадеус О’Салливан, Дэвид Ричардс, Ричард Сайни	43
7511	Парни из Трейлерпарка (6 сезон)	https://kinokrad.co/321250-parni-iz-treylerparka-6-sezon-2006.html	4	2006	Канада	драма, комедия, криминал	Майк Клаттенбёрг, Рон Мерфи, Кори Боулз	30
7512	Четыре тысячи четыреста (3 сезон)	https://kinokrad.co/302039-chetyre-tysyachi-chetyresta-3-sezon-2006.html	9	2006	США, Великобритания	фантастика, триллер, драма, детектив	Скотт Питерс, Винс Мисиано, Ник Копус	43
7513	Санта-Хрякус: Страшдественская сказка (1 сезон)	https://kinokrad.co/308174-santa-hryakus-strashdestvenskaya-skazka-1-sezon-2006.html	8	2006	Великобритания	фэнтези, триллер, драма, комедия	Вадим Жан	185
7514	Компьютерщики (1 сезон)	https://kinokrad.co/300731-kompyuterschiki-1-sezon-2006.html	7	2006	Великобритания	комедия	Грэхэм Лайнхэн, Ричард Боден, Бен Фуллер	22
7515	Авантюристы (2 сезон)	https://kinokrad.co/319830-avantyuristy-2-sezon-2006.html	6	2006	Испания	боевик, комедия	Хуан Пабло Лакросе, Сальвадор Калво, José Antonio Caro	50
7516	Авантюристы (1 сезон)	https://kinokrad.co/319746-avantyuristy-1-sezon-2006.html	6	2006	Испания	боевик, комедия	Хуан Пабло Лакросе, Сальвадор Калво, José Antonio Caro	50
7517	Я не должен был выжить! (2 сезон)	https://kinokrad.co/296236-ya-ne-dolzhen-byl-vyzhit-2-sezon-2006.html	6	2006	Великобритания, США	документальный, драма, биография, история	Йен Барнс, Жуль Уильямсон, Ренни Бартлетт	44
7518	РеГенезис (2 сезон)	https://kinokrad.co/301079-regenezis-2-sezon-2006.html	5	2006	Канада	фантастика, триллер, драма	Джон Л’Экуаер, Клемент Вирго, Кен Джиротти	43
7519	Звездные врата: Атлантида (3 сезон)	https://kinokrad.co/289009-zvezdnye-vrata-atlantida-3-sezon-2006.html	10	2006	Канада, США	фантастика, боевик, драма, приключения	Мартин Вуд, Энди Микита, Уильям Варинг	43
7520	Дурман (2 сезон)	https://kinokrad.co/286589-durman-2-sezon-2006.html	8	2006	США	драма, комедия, криминал	Крейг Зиск, Майкл Трим, Скотт Эллис	25
7521	Анатомия страсти (3 сезон)	https://kinokrad.co/285341-anatomiya-strasti-3-sezon-2006.html	8	2006	США	драма, мелодрама	Роб Корн, Шандра Уилсон, Тони Фелан	43
7522	Морская полиция: Спецотдел (4 сезон)	https://kinokrad.co/284539-morskaya-policiya-specotdel-4-sezon-2006.html	8	2006	США	боевик, триллер, драма, комедия, криминал, детектив	Дэннис Смит, Тони Уормби, Терренс О’Хара	43
7523	Ночные кошмары и фантастические видения: По рассказам Стивена Кинга (1 сезон)	https://kinokrad.co/300807-nochnye-koshmary-i-fantasticheskie-videniya-po-rasskazam-stivena-kinga-1-sezon-2006.html	7	2006	Австралия, США	ужасы, фантастика, фэнтези, триллер, драма, мистика	Роб Боумен, Микаэл Саломон, Марк Абер	45
7524	Новый день (1 сезон)	https://kinokrad.co/300799-novyy-den-1-sezon-2006.html	9	2006	США	фантастика, боевик, триллер, драма	Роб Боумен, Брайан Спайсер, Фредерик Кинг Келлер	43
7525	C.S.I.: Майами (5 сезон)	https://kinokrad.co/291667-c-s-i-mayami-5-sezon-2006.html	9	2006	США	боевик, триллер, драма, криминал, детектив	Сэм Хилл, Джо Чаппелль, Скотт Лаутанен	43
7526	Закон и порядок. Специальный корпус (8 сезон)	https://kinokrad.co/300192-zakon-i-poryadok-specialnyy-korpus-8-sezon-2006.html	7	2006	США	триллер, драма, криминал, детектив	Дэвид Платт, Питер Лето, Жан Де Сегонзак	43
7527	Девочки Гилмор (7 сезон)	https://kinokrad.co/282904-devochki-gilmor-7-sezon-2006.html	9	2006	США	драма, комедия	Джеми Бэббит, Эми Шерман-Палладино, Крис Лонг	43
7528	Кости (2 сезон)	https://kinokrad.co/286981-kosti-2-sezon-2006.html	9	2006	США	драма, мелодрама, комедия, криминал, детектив	Иэн Тойнтон, Дуайт Х. Литтл, Жанно Шварц	43
7529	Дурнушка (1 сезон)	https://kinokrad.co/282647-durnushka-1-sezon-2006.html	7	2006	США	драма, комедия	Виктор Нелли мл., Джеймс Хейман, Майкл Алан Спиллер	43
7530	Синхронай-сити (1 сезон)	https://kinokrad.co/287131-sinhronay-siti-1-sezon-2006.html	6	2006	Великобритания	драма, комедия	Брайан Грант, Фил Джон	47
7531	Части тела (4 сезон)	https://kinokrad.co/281533-chasti-tela-4-sezon-2006.html	9	2006	США	драма	Майкл М. Робин, Элоди Кин, Райан Мерфи	43
7532	Меня зовут Эрл (2 сезон)	https://kinokrad.co/282875-menya-zovut-jerl-2-sezon-2006.html	9	2006	США	комедия	Марк Баклэнд, Эял Гордин, Майкл Фреско	22
7533	Герои (1 сезон)	https://kinokrad.co/282749-geroi-1-sezon-2006.html	8	2006	США	фантастика, триллер, драма	Грег Биман, Аллан Аркуш, Жанно Шварц	43
7534	Декстер (1 сезон)	https://kinokrad.co/287446-dekster-1-sezon-2006.html	8	2006	США	триллер, драма, криминал, детектив	Джон Дал, Стив Шилл, Кит Гордон	55
7535	Два с половиной человека (4 сезон)	https://kinokrad.co/286185-dva-s-polovinoy-cheloveka-4-sezon-2006.html	8	2006	США	комедия	Джеймс Уиддоуз, Гари Хэлворсон, Памела Фрайман	22
7536	Война Фойла (4 сезон)	https://kinokrad.co/286147-voyna-foyla-4-sezon-2006.html	7	2006	Великобритания	драма, криминал, детектив, военный	Джереми Силберстон, Стюарт Орм, Гэвин Миллар	90
7537	Числа (3 сезон)	https://kinokrad.co/285481-4isla-3-sezon-2006.html	8	2006	США	триллер, драма, криминал, детектив	Дэннис Смит, Алекс Закржевский, Джон Беринг	43
7538	Южный Парк (10 сезон)	https://kinokrad.co/286733-yuzhnyy-park-10-sezon-2006.html	7	2006	США	мультфильм, комедия	Трей Паркер, Эрик Сточ, Мэтт Стоун	22
7539	Зона (1 сезон)	https://kinokrad.co/284291-zona-1-sezon-2006.html	7	2006	Россия	драма, криминал, детектив	Петр Штейн	44
7540	Турецкий для начинающих (1 сезон)	https://kinokrad.co/282594-tureckiy-dlya-nachinayuschih-1-sezon-2006.html	8	2006	Германия	комедия	Оливер Шмитц, Эдзард Оннекен, Кристиан Диттер	25
7541	Громовы (1 сезон)	https://kinokrad.co/284247-gromovy-1-sezon-2006.html	8	2006	Россия	драма	Александр Баранов	44
7542	Звездные врата: ЗВ-1 (10 сезон)	https://kinokrad.co/281551-zvezdnye-vrata-zv-1-10-sezon-2006.html	10	2006	США, Канада	фантастика, боевик, приключения	Питер ДеЛуис, Мартин Вуд, Энди Микита	43
7543	Клиника (6 сезон)	https://kinokrad.co/282828-klinika-6-sezon-2006.html	9	2006	США	драма, комедия	Майкл Алан Спиллер, Билл Лоуренс, Адам Бернштейн	22
7544	Клиника (5 сезон)	https://kinokrad.co/282827-klinika-5-sezon-2006.html	9	2006	США	драма, комедия	Майкл Алан Спиллер, Билл Лоуренс, Адам Бернштейн	22
7545	Щит (5 сезон)	https://kinokrad.co/282321-schit-5-sezon-2006.html	7	2006	США	триллер, драма, криминал	Гай Ферленд, Скотт Бразил, Кларк Джонсон	43
7546	Тетрадь смерти (1 сезон)	https://kinokrad.co/291649-tetrad-smerti-1-sezon-2006.html	9	2006	Япония	аниме, мультфильм, фэнтези, триллер, драма, криминал, детектив, мистика	Тэцуро Араки, Наоясу Ханьюй, Томохико Ито	22
7547	Клава, давай! (4 сезон)	https://kinokrad.co/282690-klava-davay-4-sezon-2006.html	7	2006	США	комедия	Тед Уасс, Скип Коллектор, Джонатан Уайсс	22
7548	В Филадельфии всегда солнечно (2 сезон)	https://kinokrad.co/286073-v-filadelfii-vsegda-solnechno-2-sezon-2006.html	8	2006	США	комедия	Мэтт Шекман, Фред Сэвэдж, Дэниэл Эттиэс	22
7549	Остаться в живых (3 сезон)	https://kinokrad.co/283272-ostatsya-v-zhivyh-3-sezon-2006.html	8	2006	США	фантастика, фэнтези, триллер, драма, детектив, приключения	Джек Бендер, Стивен Уильямс, Пол А. Эдвардс	43
7550	Свинка Пеппа (3 сезон)	https://kinokrad.co/286133-svinka-peppa-3-sezon-2006.html	4	2006	Великобритания	мультфильм, семейный	Марк Бэйкер, Невилл Эстли, Mark Baker	5
7551	Охотник (1 сезон)	https://kinokrad.co/283346-ohotnik-1-sezon-2006.html	7	2006	Россия	фантастика, фэнтези, приключения	Владимир Котт	53
7552	Бухта Данте (2 сезон)	https://kinokrad.co/281639-buhta-dante-2-sezon-2006.html	3	2006	США	ужасы, триллер, драма, мелодрама, детектив, мистика	Сэм Ирвин, Майкл Костаназа	47
7553	Мисс Марпл Агаты Кристи (2 сезон)	https://kinokrad.co/282812-miss-marpl-agaty-kristi-2-sezon-2006.html	8	2006	Великобритания	драма, криминал, детектив	Чарльз Палмер, Энди Уилсон, Джон Стриклэнд	94
7554	Кто в доме хозяин? (1-150 серия)	https://kinokrad.co/255737-kto-v-dome-hozyain.html	9	2006	Россия	комедия, семейный	Александр Жигалкин, Алексей Кирющенко	24
7555	Как я встретил вашу маму (2 сезон)	https://kinokrad.co/282148-kak-ya-vstretil-vashu-mamu-2-sezon-2006.html	8	2006	США	комедия, мелодрама, драма	Памела Фрайман, Роб Гринберг, Майкл Дж. Ши	22
7556	Прослушка (4 сезон)	https://kinokrad.co/282132-proslushka-4-sezon-2006.html	7	2006	США	триллер, драма, криминал	Джо Чаппелль, Эрнест Р. Дикерсон, Кларк Джонсон	60
7557	Клан Сопрано (6 сезон)	https://kinokrad.co/282113-klan-soprano-6-sezon-2006.html	9	2006	США	драма, криминал	Тимоти Ван Паттен, Джон Паттерсон, Аллен Култер	55
7558	Улицы разбитых фонарей (8 сезон)	https://kinokrad.co/285189-ulicy-razbityh-fonarey-8-sezon-2006.html	5	2006	Россия	боевик, драма, криминал, приключения	Александр Рогожкин, Дмитрий Светозаров, Кирилл Капица	48
7559	Части тела 3 сезон (1-15 серия)	https://kinokrad.co/281303-chasti-tela-3-sezon.html	8	2006	США	драма	Майкл М. Робин, Элоди Кин, Райан Мерфи	43
7560	Мыслить как преступник 2 сезон (1-23 серия)	https://kinokrad.co/274152-myslit-kak-prestupnik-2-sezon.html	9	2006	США, Канада	триллер, драма, криминал, детектив	Гленн Кершоу, Феликс Энрикез Алькала, Эдвард Аллен Бернеро	43
7561	Побег (2 сезон)	https://kinokrad.co/281874-pobeg-2-sezon-2006.html	9	2006	США	боевик, триллер, драма, криминал, детектив	Бобби Рот, Кевин Хукс, Дуайт Х. Литтл	43
7562	Металлопокалипсис (1 сезон)	https://kinokrad.co/283729-metallopokalipsis-1-sezon-2006.html	8	2006	США	мультфильм, комедия, музыка	Джон Шнепп, Крис Приноски, Марк Брукс	12
7563	Место преступления Лас-Вегас 7 сезон (1-24 серия)	https://kinokrad.co/274455-c-s-i-mesto-prestupleniya-7-sezon.html	8	2006	США, Канада	триллер, драма, криминал, детектив	Кеннет Финк, Ричард Дж. Льюис, Алек Смайт	43
7564	Ясновидец  1 сезон (1-15 серия)	https://kinokrad.co/273988-yasnovidec-1-sezon.html	8	2006	США	комедия, криминал, детектив	Мэл Дэмски, Стив Фрэнкс, Джеймс Родэй	43
7565	Доктор Хаус 3 сезон (1-24 серия)	https://kinokrad.co/274090-doktor-haus-3-sezon.html	8	2006	США	драма, детектив	Грег Яйтанс, Деран Сарафян, Дэвид Стрейтон	43
7566	Отчаянные домохозяйки 3 сезон	https://kinokrad.co/275937-otchayannye-domohozyayki-3-sezon.html	8	2006	США	драма, мелодрама, комедия, детектив	Дэвид Гроссман, Ларри Шоу	43
7567	Гриффины (5 сезон)	https://kinokrad.co/282000-griffiny-5-sezon-2006.html	7	2006	США	мультфильм, комедия	Питер Шин, Джеймс Пурдум, Доминик Бьянчи	22
7568	Доктор Кто 3 сезон (1-13 серия)	https://kinokrad.co/274019-doktor-kto-3-sezon.html	8	2006	Великобритания	фантастика, драма, комедия, приключения, семейный	Грэм Харпер, Эрос Лин, Джеймс Стронг	43
7569	Американский папаша 2 сезон (1-19 серия)	https://kinokrad.co/274122-amerikanskiy-papasha-2-sezon.html	7	2006	США	мультфильм, комедия	Рон Хьюгарт, Брент Вудс, Энтони Льои	22
7570	Симпсоны 18 сезон (1-22 серия)	https://kinokrad.co/274222-simpsony-18-sezon.html	10	2006	США	мультфильм, комедия	Марк Керклэнд, Стивен Дин Мур, Джим Рирдон	22
7571	Ментовские войны 3 сезон (1-12 серия)	https://kinokrad.co/274115-mentovskie-voyny-3-sezon.html	8	2006	Россия	боевик, драма, криминал	Павел Мальков	302
7572	Братья и сестры 1 сезон (1-23 серия)	https://kinokrad.co/277083-bratya-i-sestry-1-sezon-1-23-seriya.html	6	2006	США	драма	Кен Олин, Майкл Моррис	43
7573	Сверхъестественное (1 сезон)	https://kinokrad.co/274544-sverhestestvennoe-1-sezon.html	9	2005	США	ужасы, фэнтези, триллер, драма, детектив, мистика	Роберт Сингер, Филип Сгриккиа, Ким Мэннерс	43
7574	Сверхъестественное (13 сезон)	https://kinokrad.co/323223-sverhestestvennoe-13-sezon.html	8	2005	США	ужасы, фэнтези, триллер, драма, детектив, мистика	Роберт Сингер, Филип Сгриккиа, Джон Шоуолтер	43
7575	Сверхъестественное (12 сезон)	https://kinokrad.co/306431-sverhestestvennoe-12-sezon.html	9	2005	США	ужасы, фэнтези, триллер, драма, детектив, мистика	Роберт Сингер, Филип Сгриккиа, Ким Мэннерс	43
7576	Мыслить как преступник (12 сезон)	https://kinokrad.co/306611-myslit-kak-prestupnik-12-sezon.html	8	2005	США, Канада	триллер, драма, криминал, детектив	Гленн Кершоу, Феликс Энрикез Алькала, Эдвард Аллен Бернеро	43
7577	Это все еда (1 сезон)	https://kinokrad.co/318482-eto-vse-eda-1-sezon-2005.html	5	2005	Великобритания	документальный	Стив Смит, Бен Дункан, Грэхэм Шеррингтон	48
7578	Лунатики (1 сезон)	https://kinokrad.co/322439-lunatiki-1-sezon.html	7	2005	США	мультфильм, фантастика, фэнтези, боевик, комедия, приключения	Дэн Фосетт, Кенни Томпкинс, Курт Уолстид	22
7579	Парни из Трейлерпарка (5 сезон)	https://kinokrad.co/321246-parni-iz-treylerparka-5-sezon-2005.html	5	2005	Канада	драма, комедия, криминал	Майк Клаттенбёрг, Рон Мерфи, Кори Боулз	30
7580	Поверхность (1 сезон)	https://kinokrad.co/301073-poverhnost-1-sezon-2005.html	8	2005	США	фантастика, триллер, детектив, приключения	Джеффри Рейнер, Джон Беринг, Билл Иглз	43
7581	Пуаро (10 сезон)	https://kinokrad.co/318918-puaro-10-sezon-2005.html	8	2005	Великобритания	триллер, драма, криминал, детектив	Эдвард Беннет, Ренни Рай, Эндрю Грив	90
7582	Безмолвный свидетель (9 сезон)	https://kinokrad.co/299922-bezmolvnyy-svidetel-9-sezon-2005.html	8	2005	Великобритания	драма, криминал, детектив	Тадеус О’Салливан, Дэвид Ричардс, Ричард Сайни	43
7583	Четыре тысячи четыреста (2 сезон)	https://kinokrad.co/302030-chetyre-tysyachi-chetyresta-2-sezon-2005.html	9	2005	США, Великобритания	фантастика, триллер, драма, детектив	Скотт Питерс, Винс Мисиано, Ник Копус	43
7584	Западное крыло (7 сезон)	https://kinokrad.co/318698-zapadnoe-krylo-7-sezon-2005.html	7	2005	США	драма	Крис Мисиано, Алекс Грейвз, Томас Шламми	43
7585	Король Квинса (8 сезон)	https://kinokrad.co/311018-korol-kvinsa-8-sezon-2005.html	7	2005	США	комедия	Роб Шиллер, Джеймс Уиддоуз, Памела Фрайман	22
7586	Я не должен был выжить! (1 сезон)	https://kinokrad.co/296233-ya-ne-dolzhen-byl-vyzhit-1-sezon-2005.html	7	2005	Великобритания, США	документальный, драма, биография, история	Йен Барнс, Жуль Уильямсон, Ренни Бартлетт	44
7587	Валландер (1 сезон)	https://kinokrad.co/297802-vallander-1-sezon-2005.html	7	2005	Швеция	триллер, драма, криминал, детектив	Стефан Апельгрен, Агнета Фагерстрём-Ольссон, Лейф Магнуссон	89
7588	Звездные врата: Атлантида (2 сезон)	https://kinokrad.co/289006-zvezdnye-vrata-atlantida-2-sezon-2005.html	9	2005	Канада, США	фантастика, боевик, драма, приключения	Мартин Вуд, Энди Микита, Уильям Варинг	43
7589	Дурман (1 сезон)	https://kinokrad.co/286587-durman-1-sezon-2005.html	7	2005	США	драма, комедия, криминал	Крейг Зиск, Майкл Трим, Скотт Эллис	25
7590	Анатомия страсти (1 сезон)	https://kinokrad.co/285337-anatomiya-strasti-1-sezon-2005.html	9	2005	США	драма, мелодрама	Роб Корн, Шандра Уилсон, Тони Фелан	43
7591	Морская полиция: Спецотдел (3 сезон)	https://kinokrad.co/284535-morskaya-policiya-specotdel-3-sezon-2005.html	8	2005	США	боевик, триллер, драма, комедия, криминал, детектив	Дэннис Смит, Тони Уормби, Терренс О’Хара	43
7592	C.S.I.: Майами (4 сезон)	https://kinokrad.co/291664-c-s-i-mayami-4-sezon-2005.html	9	2005	США	боевик, триллер, драма, криминал, детектив	Сэм Хилл, Джо Чаппелль, Скотт Лаутанен	43
7593	Закон и порядок. Специальный корпус (7 сезон)	https://kinokrad.co/300189-zakon-i-poryadok-specialnyy-korpus-7-sezon-2005.html	7	2005	США	триллер, драма, криминал, детектив	Дэвид Платт, Питер Лето, Жан Де Сегонзак	43
7594	Девочки Гилмор (6 сезон)	https://kinokrad.co/282903-devochki-gilmor-6-sezon-2005.html	9	2005	США	драма, комедия	Джеми Бэббит, Эми Шерман-Палладино, Крис Лонг	43
7595	Кости (1 сезон)	https://kinokrad.co/286979-kosti-1-sezon-2005.html	9	2005	США	драма, мелодрама, комедия, криминал, детектив	Иэн Тойнтон, Дуайт Х. Литтл, Жанно Шварц	43
7596	Анатомия страсти (2 сезон)	https://kinokrad.co/285339-anatomiya-strasti-2-sezon-2005.html	8	2005	США	драма, мелодрама	Роб Корн, Шандра Уилсон, Тони Фелан	43
7597	Меня зовут Эрл (1 сезон)	https://kinokrad.co/282874-menya-zovut-jerl-1-sezon-2005.html	9	2005	США	комедия	Марк Баклэнд, Эял Гордин, Майкл Фреско	22
7598	Два с половиной человека (3 сезон)	https://kinokrad.co/286183-dva-s-polovinoy-cheloveka-3-sezon-2005.html	8	2005	США	комедия	Джеймс Уиддоуз, Гари Хэлворсон, Памела Фрайман	22
7599	Числа (2 сезон)	https://kinokrad.co/285479-4isla-2-sezon-2005.html	8	2005	США	триллер, драма, криминал, детектив	Дэннис Смит, Алекс Закржевский, Джон Беринг	43
7600	Числа (1 сезон)	https://kinokrad.co/285477-4isla-1-sezon-2005.html	8	2005	США	триллер, драма, криминал, детектив	Дэннис Смит, Алекс Закржевский, Джон Беринг	43
7601	Ментовские войны 4 сезон (1-8 серия)	https://kinokrad.co/274116-mentovskie-voyny-4-sezon.html	8	2007	Россия	боевик, драма, криминал	Павел Мальков	302
7602	Гуррен-Лаганн 1 сезон (1-27 серия)	https://kinokrad.co/278556-gurren-lagann-1-sezon-1-27-seriya.html	9	2007	Япония	аниме, мультфильм, фантастика, боевик, драма, комедия	Хироюки Имайси, Масахико Ютсука, Хироши Икетоми	25
7603	Клуб Винкс – Школа волшебниц 3 сезон	https://kinokrad.co/275723-klub-vinks-shkola-volshebnic-3.html	7	2007	Италия	мультфильм, приключения, семейный	Иджинио Страффи	22
7604	Братья и сестры 2 сезон (1-16 серия)	https://kinokrad.co/277084-bratya-i-sestry-2-sezon-1-16-seriya.html	7	2007	США	драма	Кен Олин, Майкл Моррис	43
7605	Сверхъестественное (2 сезон)	https://kinokrad.co/274545-sverhestestvennoe-2-sezon.html	9	2006	США	ужасы, фэнтези, триллер, драма, детектив, мистика	Роберт Сингер, Филип Сгриккиа, Ким Мэннерс	43
7606	Лунатики (2 сезон)	https://kinokrad.co/322443-lunatiki-2-sezon.html	6	2006	США	мультфильм, фантастика, фэнтези, боевик, комедия, приключения	Дэн Фосетт, Кенни Томпкинс, Курт Уолстид	22
7607	Король Квинса (9 сезон)	https://kinokrad.co/311034-korol-kvinsa-9-sezon-2006.html	9	2006	США	комедия	Роб Шиллер, Джеймс Уиддоуз, Памела Фрайман	22
7608	Черный оракул (2 сезон)	https://kinokrad.co/295276-chernyy-orakul-2-sezon-2006.html	6	2006	Канада	мультфильм, фантастика	Рон Мерфи, Крэйг Прайс, Пол Фокс	24
7609	Неприрученные (1 сезон)	https://kinokrad.co/303266-nepriruchennye-1-sezon-2006.html	4	2006	Великобритания	драма	Николас Лафлэнд, Пол Харрисон, Морис Филлипс	47
7610	Безмолвный свидетель (10 сезон)	https://kinokrad.co/299925-bezmolvnyy-svidetel-10-sezon-2006.html	7	2006	Великобритания	драма, криминал, детектив	Тадеус О’Салливан, Дэвид Ричардс, Ричард Сайни	43
7611	Парни из Трейлерпарка (6 сезон)	https://kinokrad.co/321250-parni-iz-treylerparka-6-sezon-2006.html	4	2006	Канада	драма, комедия, криминал	Майк Клаттенбёрг, Рон Мерфи, Кори Боулз	30
7612	Четыре тысячи четыреста (3 сезон)	https://kinokrad.co/302039-chetyre-tysyachi-chetyresta-3-sezon-2006.html	9	2006	США, Великобритания	фантастика, триллер, драма, детектив	Скотт Питерс, Винс Мисиано, Ник Копус	43
7613	Санта-Хрякус: Страшдественская сказка (1 сезон)	https://kinokrad.co/308174-santa-hryakus-strashdestvenskaya-skazka-1-sezon-2006.html	8	2006	Великобритания	фэнтези, триллер, драма, комедия	Вадим Жан	185
7614	Компьютерщики (1 сезон)	https://kinokrad.co/300731-kompyuterschiki-1-sezon-2006.html	7	2006	Великобритания	комедия	Грэхэм Лайнхэн, Ричард Боден, Бен Фуллер	22
7615	Авантюристы (2 сезон)	https://kinokrad.co/319830-avantyuristy-2-sezon-2006.html	6	2006	Испания	боевик, комедия	Хуан Пабло Лакросе, Сальвадор Калво, José Antonio Caro	50
7616	Авантюристы (1 сезон)	https://kinokrad.co/319746-avantyuristy-1-sezon-2006.html	6	2006	Испания	боевик, комедия	Хуан Пабло Лакросе, Сальвадор Калво, José Antonio Caro	50
7617	Я не должен был выжить! (2 сезон)	https://kinokrad.co/296236-ya-ne-dolzhen-byl-vyzhit-2-sezon-2006.html	6	2006	Великобритания, США	документальный, драма, биография, история	Йен Барнс, Жуль Уильямсон, Ренни Бартлетт	44
7618	РеГенезис (2 сезон)	https://kinokrad.co/301079-regenezis-2-sezon-2006.html	5	2006	Канада	фантастика, триллер, драма	Джон Л’Экуаер, Клемент Вирго, Кен Джиротти	43
7619	Звездные врата: Атлантида (3 сезон)	https://kinokrad.co/289009-zvezdnye-vrata-atlantida-3-sezon-2006.html	10	2006	Канада, США	фантастика, боевик, драма, приключения	Мартин Вуд, Энди Микита, Уильям Варинг	43
7620	Дурман (2 сезон)	https://kinokrad.co/286589-durman-2-sezon-2006.html	8	2006	США	драма, комедия, криминал	Крейг Зиск, Майкл Трим, Скотт Эллис	25
7621	Анатомия страсти (3 сезон)	https://kinokrad.co/285341-anatomiya-strasti-3-sezon-2006.html	8	2006	США	драма, мелодрама	Роб Корн, Шандра Уилсон, Тони Фелан	43
7622	Морская полиция: Спецотдел (4 сезон)	https://kinokrad.co/284539-morskaya-policiya-specotdel-4-sezon-2006.html	8	2006	США	боевик, триллер, драма, комедия, криминал, детектив	Дэннис Смит, Тони Уормби, Терренс О’Хара	43
7623	Ночные кошмары и фантастические видения: По рассказам Стивена Кинга (1 сезон)	https://kinokrad.co/300807-nochnye-koshmary-i-fantasticheskie-videniya-po-rasskazam-stivena-kinga-1-sezon-2006.html	7	2006	Австралия, США	ужасы, фантастика, фэнтези, триллер, драма, мистика	Роб Боумен, Микаэл Саломон, Марк Абер	45
7624	Новый день (1 сезон)	https://kinokrad.co/300799-novyy-den-1-sezon-2006.html	9	2006	США	фантастика, боевик, триллер, драма	Роб Боумен, Брайан Спайсер, Фредерик Кинг Келлер	43
7625	C.S.I.: Майами (5 сезон)	https://kinokrad.co/291667-c-s-i-mayami-5-sezon-2006.html	9	2006	США	боевик, триллер, драма, криминал, детектив	Сэм Хилл, Джо Чаппелль, Скотт Лаутанен	43
7626	Закон и порядок. Специальный корпус (8 сезон)	https://kinokrad.co/300192-zakon-i-poryadok-specialnyy-korpus-8-sezon-2006.html	7	2006	США	триллер, драма, криминал, детектив	Дэвид Платт, Питер Лето, Жан Де Сегонзак	43
7627	Девочки Гилмор (7 сезон)	https://kinokrad.co/282904-devochki-gilmor-7-sezon-2006.html	9	2006	США	драма, комедия	Джеми Бэббит, Эми Шерман-Палладино, Крис Лонг	43
7628	Кости (2 сезон)	https://kinokrad.co/286981-kosti-2-sezon-2006.html	9	2006	США	драма, мелодрама, комедия, криминал, детектив	Иэн Тойнтон, Дуайт Х. Литтл, Жанно Шварц	43
7629	Дурнушка (1 сезон)	https://kinokrad.co/282647-durnushka-1-sezon-2006.html	7	2006	США	драма, комедия	Виктор Нелли мл., Джеймс Хейман, Майкл Алан Спиллер	43
7630	Синхронай-сити (1 сезон)	https://kinokrad.co/287131-sinhronay-siti-1-sezon-2006.html	6	2006	Великобритания	драма, комедия	Брайан Грант, Фил Джон	47
7631	Части тела (4 сезон)	https://kinokrad.co/281533-chasti-tela-4-sezon-2006.html	9	2006	США	драма	Майкл М. Робин, Элоди Кин, Райан Мерфи	43
7632	Меня зовут Эрл (2 сезон)	https://kinokrad.co/282875-menya-zovut-jerl-2-sezon-2006.html	9	2006	США	комедия	Марк Баклэнд, Эял Гордин, Майкл Фреско	22
7633	Герои (1 сезон)	https://kinokrad.co/282749-geroi-1-sezon-2006.html	8	2006	США	фантастика, триллер, драма	Грег Биман, Аллан Аркуш, Жанно Шварц	43
7634	Декстер (1 сезон)	https://kinokrad.co/287446-dekster-1-sezon-2006.html	8	2006	США	триллер, драма, криминал, детектив	Джон Дал, Стив Шилл, Кит Гордон	55
7635	Два с половиной человека (4 сезон)	https://kinokrad.co/286185-dva-s-polovinoy-cheloveka-4-sezon-2006.html	8	2006	США	комедия	Джеймс Уиддоуз, Гари Хэлворсон, Памела Фрайман	22
7636	Война Фойла (4 сезон)	https://kinokrad.co/286147-voyna-foyla-4-sezon-2006.html	7	2006	Великобритания	драма, криминал, детектив, военный	Джереми Силберстон, Стюарт Орм, Гэвин Миллар	90
7637	Числа (3 сезон)	https://kinokrad.co/285481-4isla-3-sezon-2006.html	8	2006	США	триллер, драма, криминал, детектив	Дэннис Смит, Алекс Закржевский, Джон Беринг	43
7638	Южный Парк (10 сезон)	https://kinokrad.co/286733-yuzhnyy-park-10-sezon-2006.html	7	2006	США	мультфильм, комедия	Трей Паркер, Эрик Сточ, Мэтт Стоун	22
7639	Зона (1 сезон)	https://kinokrad.co/284291-zona-1-sezon-2006.html	7	2006	Россия	драма, криминал, детектив	Петр Штейн	44
7640	Турецкий для начинающих (1 сезон)	https://kinokrad.co/282594-tureckiy-dlya-nachinayuschih-1-sezon-2006.html	8	2006	Германия	комедия	Оливер Шмитц, Эдзард Оннекен, Кристиан Диттер	25
7641	Громовы (1 сезон)	https://kinokrad.co/284247-gromovy-1-sezon-2006.html	8	2006	Россия	драма	Александр Баранов	44
7697	Меня зовут Эрл (1 сезон)	https://kinokrad.co/282874-menya-zovut-jerl-1-sezon-2005.html	9	2005	США	комедия	Марк Баклэнд, Эял Гордин, Майкл Фреско	22
7642	Звездные врата: ЗВ-1 (10 сезон)	https://kinokrad.co/281551-zvezdnye-vrata-zv-1-10-sezon-2006.html	10	2006	США, Канада	фантастика, боевик, приключения	Питер ДеЛуис, Мартин Вуд, Энди Микита	43
7643	Клиника (6 сезон)	https://kinokrad.co/282828-klinika-6-sezon-2006.html	9	2006	США	драма, комедия	Майкл Алан Спиллер, Билл Лоуренс, Адам Бернштейн	22
7644	Клиника (5 сезон)	https://kinokrad.co/282827-klinika-5-sezon-2006.html	9	2006	США	драма, комедия	Майкл Алан Спиллер, Билл Лоуренс, Адам Бернштейн	22
7645	Щит (5 сезон)	https://kinokrad.co/282321-schit-5-sezon-2006.html	7	2006	США	триллер, драма, криминал	Гай Ферленд, Скотт Бразил, Кларк Джонсон	43
7646	Тетрадь смерти (1 сезон)	https://kinokrad.co/291649-tetrad-smerti-1-sezon-2006.html	9	2006	Япония	аниме, мультфильм, фэнтези, триллер, драма, криминал, детектив, мистика	Тэцуро Араки, Наоясу Ханьюй, Томохико Ито	22
7647	Клава, давай! (4 сезон)	https://kinokrad.co/282690-klava-davay-4-sezon-2006.html	7	2006	США	комедия	Тед Уасс, Скип Коллектор, Джонатан Уайсс	22
7648	В Филадельфии всегда солнечно (2 сезон)	https://kinokrad.co/286073-v-filadelfii-vsegda-solnechno-2-sezon-2006.html	8	2006	США	комедия	Мэтт Шекман, Фред Сэвэдж, Дэниэл Эттиэс	22
7649	Остаться в живых (3 сезон)	https://kinokrad.co/283272-ostatsya-v-zhivyh-3-sezon-2006.html	8	2006	США	фантастика, фэнтези, триллер, драма, детектив, приключения	Джек Бендер, Стивен Уильямс, Пол А. Эдвардс	43
7650	Свинка Пеппа (3 сезон)	https://kinokrad.co/286133-svinka-peppa-3-sezon-2006.html	4	2006	Великобритания	мультфильм, семейный	Марк Бэйкер, Невилл Эстли, Mark Baker	5
7651	Охотник (1 сезон)	https://kinokrad.co/283346-ohotnik-1-sezon-2006.html	7	2006	Россия	фантастика, фэнтези, приключения	Владимир Котт	53
7652	Бухта Данте (2 сезон)	https://kinokrad.co/281639-buhta-dante-2-sezon-2006.html	3	2006	США	ужасы, триллер, драма, мелодрама, детектив, мистика	Сэм Ирвин, Майкл Костаназа	47
7653	Мисс Марпл Агаты Кристи (2 сезон)	https://kinokrad.co/282812-miss-marpl-agaty-kristi-2-sezon-2006.html	8	2006	Великобритания	драма, криминал, детектив	Чарльз Палмер, Энди Уилсон, Джон Стриклэнд	94
7654	Кто в доме хозяин? (1-150 серия)	https://kinokrad.co/255737-kto-v-dome-hozyain.html	9	2006	Россия	комедия, семейный	Александр Жигалкин, Алексей Кирющенко	24
7655	Как я встретил вашу маму (2 сезон)	https://kinokrad.co/282148-kak-ya-vstretil-vashu-mamu-2-sezon-2006.html	8	2006	США	комедия, мелодрама, драма	Памела Фрайман, Роб Гринберг, Майкл Дж. Ши	22
7656	Прослушка (4 сезон)	https://kinokrad.co/282132-proslushka-4-sezon-2006.html	7	2006	США	триллер, драма, криминал	Джо Чаппелль, Эрнест Р. Дикерсон, Кларк Джонсон	60
7657	Клан Сопрано (6 сезон)	https://kinokrad.co/282113-klan-soprano-6-sezon-2006.html	9	2006	США	драма, криминал	Тимоти Ван Паттен, Джон Паттерсон, Аллен Култер	55
7658	Улицы разбитых фонарей (8 сезон)	https://kinokrad.co/285189-ulicy-razbityh-fonarey-8-sezon-2006.html	5	2006	Россия	боевик, драма, криминал, приключения	Александр Рогожкин, Дмитрий Светозаров, Кирилл Капица	48
7659	Части тела 3 сезон (1-15 серия)	https://kinokrad.co/281303-chasti-tela-3-sezon.html	8	2006	США	драма	Майкл М. Робин, Элоди Кин, Райан Мерфи	43
7660	Мыслить как преступник 2 сезон (1-23 серия)	https://kinokrad.co/274152-myslit-kak-prestupnik-2-sezon.html	9	2006	США, Канада	триллер, драма, криминал, детектив	Гленн Кершоу, Феликс Энрикез Алькала, Эдвард Аллен Бернеро	43
7661	Побег (2 сезон)	https://kinokrad.co/281874-pobeg-2-sezon-2006.html	9	2006	США	боевик, триллер, драма, криминал, детектив	Бобби Рот, Кевин Хукс, Дуайт Х. Литтл	43
7662	Металлопокалипсис (1 сезон)	https://kinokrad.co/283729-metallopokalipsis-1-sezon-2006.html	8	2006	США	мультфильм, комедия, музыка	Джон Шнепп, Крис Приноски, Марк Брукс	12
7663	Место преступления Лас-Вегас 7 сезон (1-24 серия)	https://kinokrad.co/274455-c-s-i-mesto-prestupleniya-7-sezon.html	8	2006	США, Канада	триллер, драма, криминал, детектив	Кеннет Финк, Ричард Дж. Льюис, Алек Смайт	43
7664	Ясновидец  1 сезон (1-15 серия)	https://kinokrad.co/273988-yasnovidec-1-sezon.html	8	2006	США	комедия, криминал, детектив	Мэл Дэмски, Стив Фрэнкс, Джеймс Родэй	43
7665	Доктор Хаус 3 сезон (1-24 серия)	https://kinokrad.co/274090-doktor-haus-3-sezon.html	8	2006	США	драма, детектив	Грег Яйтанс, Деран Сарафян, Дэвид Стрейтон	43
7666	Отчаянные домохозяйки 3 сезон	https://kinokrad.co/275937-otchayannye-domohozyayki-3-sezon.html	8	2006	США	драма, мелодрама, комедия, детектив	Дэвид Гроссман, Ларри Шоу	43
7667	Гриффины (5 сезон)	https://kinokrad.co/282000-griffiny-5-sezon-2006.html	7	2006	США	мультфильм, комедия	Питер Шин, Джеймс Пурдум, Доминик Бьянчи	22
7668	Доктор Кто 3 сезон (1-13 серия)	https://kinokrad.co/274019-doktor-kto-3-sezon.html	8	2006	Великобритания	фантастика, драма, комедия, приключения, семейный	Грэм Харпер, Эрос Лин, Джеймс Стронг	43
7669	Американский папаша 2 сезон (1-19 серия)	https://kinokrad.co/274122-amerikanskiy-papasha-2-sezon.html	7	2006	США	мультфильм, комедия	Рон Хьюгарт, Брент Вудс, Энтони Льои	22
7670	Симпсоны 18 сезон (1-22 серия)	https://kinokrad.co/274222-simpsony-18-sezon.html	10	2006	США	мультфильм, комедия	Марк Керклэнд, Стивен Дин Мур, Джим Рирдон	22
7671	Ментовские войны 3 сезон (1-12 серия)	https://kinokrad.co/274115-mentovskie-voyny-3-sezon.html	8	2006	Россия	боевик, драма, криминал	Павел Мальков	302
7672	Братья и сестры 1 сезон (1-23 серия)	https://kinokrad.co/277083-bratya-i-sestry-1-sezon-1-23-seriya.html	6	2006	США	драма	Кен Олин, Майкл Моррис	43
7673	Сверхъестественное (1 сезон)	https://kinokrad.co/274544-sverhestestvennoe-1-sezon.html	9	2005	США	ужасы, фэнтези, триллер, драма, детектив, мистика	Роберт Сингер, Филип Сгриккиа, Ким Мэннерс	43
7674	Сверхъестественное (13 сезон)	https://kinokrad.co/323223-sverhestestvennoe-13-sezon.html	8	2005	США	ужасы, фэнтези, триллер, драма, детектив, мистика	Роберт Сингер, Филип Сгриккиа, Джон Шоуолтер	43
7675	Сверхъестественное (12 сезон)	https://kinokrad.co/306431-sverhestestvennoe-12-sezon.html	9	2005	США	ужасы, фэнтези, триллер, драма, детектив, мистика	Роберт Сингер, Филип Сгриккиа, Ким Мэннерс	43
7676	Мыслить как преступник (12 сезон)	https://kinokrad.co/306611-myslit-kak-prestupnik-12-sezon.html	8	2005	США, Канада	триллер, драма, криминал, детектив	Гленн Кершоу, Феликс Энрикез Алькала, Эдвард Аллен Бернеро	43
7677	Это все еда (1 сезон)	https://kinokrad.co/318482-eto-vse-eda-1-sezon-2005.html	5	2005	Великобритания	документальный	Стив Смит, Бен Дункан, Грэхэм Шеррингтон	48
7678	Лунатики (1 сезон)	https://kinokrad.co/322439-lunatiki-1-sezon.html	7	2005	США	мультфильм, фантастика, фэнтези, боевик, комедия, приключения	Дэн Фосетт, Кенни Томпкинс, Курт Уолстид	22
7679	Парни из Трейлерпарка (5 сезон)	https://kinokrad.co/321246-parni-iz-treylerparka-5-sezon-2005.html	5	2005	Канада	драма, комедия, криминал	Майк Клаттенбёрг, Рон Мерфи, Кори Боулз	30
7680	Поверхность (1 сезон)	https://kinokrad.co/301073-poverhnost-1-sezon-2005.html	8	2005	США	фантастика, триллер, детектив, приключения	Джеффри Рейнер, Джон Беринг, Билл Иглз	43
7681	Пуаро (10 сезон)	https://kinokrad.co/318918-puaro-10-sezon-2005.html	8	2005	Великобритания	триллер, драма, криминал, детектив	Эдвард Беннет, Ренни Рай, Эндрю Грив	90
7682	Безмолвный свидетель (9 сезон)	https://kinokrad.co/299922-bezmolvnyy-svidetel-9-sezon-2005.html	8	2005	Великобритания	драма, криминал, детектив	Тадеус О’Салливан, Дэвид Ричардс, Ричард Сайни	43
7683	Четыре тысячи четыреста (2 сезон)	https://kinokrad.co/302030-chetyre-tysyachi-chetyresta-2-sezon-2005.html	9	2005	США, Великобритания	фантастика, триллер, драма, детектив	Скотт Питерс, Винс Мисиано, Ник Копус	43
7684	Западное крыло (7 сезон)	https://kinokrad.co/318698-zapadnoe-krylo-7-sezon-2005.html	7	2005	США	драма	Крис Мисиано, Алекс Грейвз, Томас Шламми	43
7685	Король Квинса (8 сезон)	https://kinokrad.co/311018-korol-kvinsa-8-sezon-2005.html	7	2005	США	комедия	Роб Шиллер, Джеймс Уиддоуз, Памела Фрайман	22
7686	Я не должен был выжить! (1 сезон)	https://kinokrad.co/296233-ya-ne-dolzhen-byl-vyzhit-1-sezon-2005.html	7	2005	Великобритания, США	документальный, драма, биография, история	Йен Барнс, Жуль Уильямсон, Ренни Бартлетт	44
7687	Валландер (1 сезон)	https://kinokrad.co/297802-vallander-1-sezon-2005.html	7	2005	Швеция	триллер, драма, криминал, детектив	Стефан Апельгрен, Агнета Фагерстрём-Ольссон, Лейф Магнуссон	89
7688	Звездные врата: Атлантида (2 сезон)	https://kinokrad.co/289006-zvezdnye-vrata-atlantida-2-sezon-2005.html	9	2005	Канада, США	фантастика, боевик, драма, приключения	Мартин Вуд, Энди Микита, Уильям Варинг	43
7689	Дурман (1 сезон)	https://kinokrad.co/286587-durman-1-sezon-2005.html	7	2005	США	драма, комедия, криминал	Крейг Зиск, Майкл Трим, Скотт Эллис	25
7690	Анатомия страсти (1 сезон)	https://kinokrad.co/285337-anatomiya-strasti-1-sezon-2005.html	9	2005	США	драма, мелодрама	Роб Корн, Шандра Уилсон, Тони Фелан	43
7691	Морская полиция: Спецотдел (3 сезон)	https://kinokrad.co/284535-morskaya-policiya-specotdel-3-sezon-2005.html	8	2005	США	боевик, триллер, драма, комедия, криминал, детектив	Дэннис Смит, Тони Уормби, Терренс О’Хара	43
7692	C.S.I.: Майами (4 сезон)	https://kinokrad.co/291664-c-s-i-mayami-4-sezon-2005.html	9	2005	США	боевик, триллер, драма, криминал, детектив	Сэм Хилл, Джо Чаппелль, Скотт Лаутанен	43
7693	Закон и порядок. Специальный корпус (7 сезон)	https://kinokrad.co/300189-zakon-i-poryadok-specialnyy-korpus-7-sezon-2005.html	7	2005	США	триллер, драма, криминал, детектив	Дэвид Платт, Питер Лето, Жан Де Сегонзак	43
7694	Девочки Гилмор (6 сезон)	https://kinokrad.co/282903-devochki-gilmor-6-sezon-2005.html	9	2005	США	драма, комедия	Джеми Бэббит, Эми Шерман-Палладино, Крис Лонг	43
7695	Кости (1 сезон)	https://kinokrad.co/286979-kosti-1-sezon-2005.html	9	2005	США	драма, мелодрама, комедия, криминал, детектив	Иэн Тойнтон, Дуайт Х. Литтл, Жанно Шварц	43
7696	Анатомия страсти (2 сезон)	https://kinokrad.co/285339-anatomiya-strasti-2-sezon-2005.html	8	2005	США	драма, мелодрама	Роб Корн, Шандра Уилсон, Тони Фелан	43
7698	Два с половиной человека (3 сезон)	https://kinokrad.co/286183-dva-s-polovinoy-cheloveka-3-sezon-2005.html	8	2005	США	комедия	Джеймс Уиддоуз, Гари Хэлворсон, Памела Фрайман	22
7699	Числа (2 сезон)	https://kinokrad.co/285479-4isla-2-sezon-2005.html	8	2005	США	триллер, драма, криминал, детектив	Дэннис Смит, Алекс Закржевский, Джон Беринг	43
7700	Числа (1 сезон)	https://kinokrad.co/285477-4isla-1-sezon-2005.html	8	2005	США	триллер, драма, криминал, детектив	Дэннис Смит, Алекс Закржевский, Джон Беринг	43
7701	Южный Парк (9 сезон)	https://kinokrad.co/286731-yuzhnyy-park-9-sezon-2005.html	6	2005	США	мультфильм, комедия	Трей Паркер, Эрик Сточ, Мэтт Стоун	22
7702	Малкольм в центре внимания (7 сезон)	https://kinokrad.co/284315-malkolm-v-centre-vnimaniya-7-sezon-2005.html	7	2005	США	комедия	Тодд Холлэнд, Джеффри Мэлман, Кен Куопис	22
7703	Секреты на кухне (1 сезон)	https://kinokrad.co/282999-sekrety-na-kuhne-1-sezon-2005.html	9	2005	США	комедия	Майкл Алан Спиллер, Даррен Стар, Лев Л. Спиро	22
7704	Звездные врата: ЗВ-1 (9 сезон)	https://kinokrad.co/281550-zvezdnye-vrata-zv-1-9-sezon-2005.html	10	2005	США, Канада	фантастика, боевик, приключения	Питер ДеЛуис, Мартин Вуд, Энди Микита	43
7705	Не родись красивой (1 сезон)	https://kinokrad.co/283841-ne-rodis-krasivoy-1-sezon-2005.html	8	2005	Россия	мелодрама	Александр Назаров, Карен Захаров, Станислав Назиров	43
7706	Щит (4 сезон)	https://kinokrad.co/282320-schit-4-sezon-2005.html	9	2005	США	триллер, драма, криминал	Гай Ферленд, Скотт Бразил, Кларк Джонсон	43
7707	В Филадельфии всегда солнечно (1 сезон)	https://kinokrad.co/286071-v-filadelfii-vsegda-solnechno-1-sezon-2005.html	8	2005	США	комедия	Мэтт Шекман, Фред Сэвэдж, Дэниэл Эттиэс	22
7708	Остаться в живых (2 сезон)	https://kinokrad.co/283271-ostatsya-v-zhivyh-2-sezon-2005.html	8	2005	США	фантастика, фэнтези, триллер, драма, детектив, приключения	Джек Бендер, Стивен Уильямс, Пол А. Эдвардс	43
7709	Остаться в живых (1 сезон)	https://kinokrad.co/283270-ostatsya-v-zhivyh-1-sezon-2005.html	8	2005	США	фантастика, фэнтези, триллер, драма, детектив, приключения	Джек Бендер, Стивен Уильямс, Пол А. Эдвардс	43
7710	Мастера ужасов 2 сезон (1-13 серия)	https://kinokrad.co/280963-mastera-uzhasov-2-sezon.html	8	2005	Канада, США, Япония	ужасы, триллер	Стюарт Гордон, Дарио Ардженто, Джон Карпентер	55
7711	Мастера ужасов 1 сезон (1-13 серия)	https://kinokrad.co/280956-mastera-uzhasov-1-sezon.html	8	2005	Канада, США, Япония	ужасы, триллер, мистика	Стюарт Гордон, Дарио Ардженто, Джон Карпентер	55
7712	Свинка Пеппа (2 сезон)	https://kinokrad.co/286131-svinka-peppa-2-sezon-2005.html	4	2005	Великобритания	мультфильм, семейный	Марк Бэйкер, Невилл Эстли, Mark Baker	5
7713	Оперативный псевдоним 2: Код возвращения (2 сезон)	https://kinokrad.co/284701-operativnyy-psevdonim-2-kod-vozvrascheniya-2-sezon-2005.html	7	2005	Россия	боевик	Сергей Виноградов	45
7714	Бухта Данте (1 сезон)	https://kinokrad.co/281637-buhta-dante-1-sezon-2005.html	4	2005	США	ужасы, триллер, драма, мелодрама, детектив, мистика	Сэм Ирвин, Майкл Костаназа	47
7715	Близкие друзья (5 сезон)	https://kinokrad.co/281633-blizkie-druzya-5-sezon-2005.html	9	2005	США, Канада	драма	Майкл ДеКарло, Келли Макин, Кевин Инч	45
7716	Предел (1-13 серия)	https://kinokrad.co/255573-predel.html	8	2005	США	фантастика, боевик, триллер, драма	Джон Шоуолтер	45
7717	Как я встретил вашу маму (1 сезон)	https://kinokrad.co/282146-kak-ya-vstretil-vashu-mamu-1-sezon-2005.html	10	2005	США	комедия, мелодрама, драма	Памела Фрайман, Роб Гринберг, Майкл Дж. Ши	22
7718	Фил из будущего (2 сезон)	https://kinokrad.co/281608-fil-iz-buduschego-2-sezon-2005.html	7	2005	США	фантастика, комедия, приключения, семейный	Фред Сэвэдж, Тим О’Доннелл, Сэвидж Стив Холланд	22
7719	Улицы разбитых фонарей (7 сезон)	https://kinokrad.co/285187-ulicy-razbityh-fonarey-7-sezon-2005.html	6	2005	Россия	боевик, драма, криминал, приключения	Александр Рогожкин, Дмитрий Светозаров, Кирилл Капица	48
7720	Части тела 2 сезон (1-16 серия)	https://kinokrad.co/281300-chasti-tela-2-sezon.html	8	2005	США	драма	Майкл М. Робин, Элоди Кин, Райан Мерфи	43
7721	Место преступления Лас-Вегас 6 сезон (1-24 серия)	https://kinokrad.co/274448-c-s-i-mesto-prestupleniya-6-sezon.html	8	2005	США, Канада	триллер, драма, криминал, детектив	Кеннет Финк, Ричард Дж. Льюис, Алек Смайт	43
7722	Мыслить как преступник 1 сезон (1-22 серия)	https://kinokrad.co/274148-myslit-kak-prestupnik-1-sezon.html	8	2005	США, Канада	триллер, драма, криминал, детектив	Гленн Кершоу, Феликс Энрикез Алькала, Эдвард Аллен Бернеро	43
7723	Зачарованные 8 сезон (1-22 серии)	https://kinokrad.co/255761-zacharovannye-8-sezon.html	9	2005	США	фэнтези, драма, детектив	Джон Т. Кречмер, Джеймс Л. Конуэй	43
7724	Доктор Хаус 2 сезон (1-24 серия)	https://kinokrad.co/274089-doktor-haus-2-sezon.html	9	2005	США	драма, детектив	Грег Яйтанс, Деран Сарафян, Дэвид Стрейтон	43
7725	Побег (1 сезон)	https://kinokrad.co/281873-pobeg-1-sezon-2005.html	9	2005	США	боевик, триллер, драма, криминал, детектив	Бобби Рот, Кевин Хукс, Дуайт Х. Литтл	43
7726	Гриффины (4 сезон)	https://kinokrad.co/281998-griffiny-4-sezon-2005.html	8	2005	США	мультфильм, комедия	Питер Шин, Джеймс Пурдум, Доминик Бьянчи	22
7727	Отчаянные домохозяйки 2 сезон	https://kinokrad.co/275912-otchayannye-domohozyayki-2-sezon.html	9	2005	США	драма, мелодрама, комедия, детектив	Дэвид Гроссман, Ларри Шоу	43
7728	Доктор Кто 1 сезон (1-16 серия)	https://kinokrad.co/274017-doktor-kto-1-sezon.html	8	2005	Великобритания	фантастика, драма, комедия, приключения, семейный	Грэм Харпер, Эрос Лин, Джеймс Стронг	43
7729	Доктор Кто 2 сезон (1-13 серия)	https://kinokrad.co/274018-doktor-kto-2-sezon.html	9	2005	Великобритания	фантастика, драма, комедия, приключения, семейный	Грэм Харпер, Эрос Лин, Джеймс Стронг	43
7730	Американский папаша 1 сезон (1-23 серия)	https://kinokrad.co/274121-amerikanskiy-papasha-1-sezon.html	7	2005	США	мультфильм, комедия	Рон Хьюгарт, Брент Вудс, Энтони Льои	22
7731	Симпсоны 17 сезон (1-22 серия)	https://kinokrad.co/274221-simpsony-17-sezon.html	10	2005	США	мультфильм, комедия	Марк Керклэнд, Стивен Дин Мур, Джим Рирдон	22
7732	Ментовские войны 2 сезон (1-12 серия)	https://kinokrad.co/274114-mentovskie-voyny-2-sezon.html	8	2005	Россия	боевик, драма, криминал	Павел Мальков	302
7733	Клуб Винкс – Школа волшебниц 2 сезон	https://kinokrad.co/275722-klub-vinks-shkola-volshebnic-2.html	8	2005	Италия	мультфильм, приключения, семейный	Иджинио Страффи	22
7734	Строптивая мишень (1 сезон)	https://kinokrad.co/308381-stroptivaya-mishen-1-sezon-2004.html	5	2004	Россия	триллер, криминал	Юлия Колесник	45
7735	Чудопад (1 сезон)	https://kinokrad.co/301439-chudopad-1-sezon-2004.html	6	2004	Канада, США	драма, комедия	Тодд Холлэнд, Джеми Бэббит, Марита Грабяк	43
7736	Черный оракул (1 сезон)	https://kinokrad.co/295273-chernyy-orakul-1-sezon-2004.html	7	2004	Канада	мультфильм, фантастика	Рон Мерфи, Крэйг Прайс, Пол Фокс	24
7737	Доктор Хаус 1 сезон (1-24 серия)	https://kinokrad.co/274088-doktor-haus-1-sezon.html	9	2004	США	драма, детектив	Грег Яйтанс, Деран Сарафян, Дэвид Стрейтон	43
7738	Андромеда (5 сезон)	https://kinokrad.co/302240-andromeda-5-sezon-2004.html	7	2004	Канада, США	фантастика, фэнтези, боевик, драма, мелодрама, приключения	Хорхе Монтеси, Аллан Истмэн, Ричард Флауер	43
7739	Парни из Трейлерпарка (4 сезон)	https://kinokrad.co/321242-parni-iz-treylerparka-4-sezon-2004.html	6	2004	Канада	драма, комедия, криминал	Майк Клаттенбёрг, Рон Мерфи, Кори Боулз	30
7740	Безмолвный свидетель (8 сезон)	https://kinokrad.co/299919-bezmolvnyy-svidetel-8-sezon-2004.html	7	2004	Великобритания	драма, криминал, детектив	Тадеус О’Салливан, Дэвид Ричардс, Ричард Сайни	43
7741	Четыре тысячи четыреста (1 сезон)	https://kinokrad.co/302027-chetyre-tysyachi-chetyresta-1-sezon-2004.html	9	2004	США, Великобритания	фантастика, триллер, драма, детектив	Скотт Питерс, Винс Мисиано, Ник Копус	43
7742	Мертвые, как я (2 сезон)	https://kinokrad.co/300779-mertvye-kak-ya-2-sezon-2004.html	8	2004	Канада, США	фэнтези, драма, комедия, мистика	Дэвид Гроссман, Джеймс Уитмор мл., Питер Лоэр	43
7743	Книжный магазин Блэка (3 сезон)	https://kinokrad.co/319446-knizhnyy-magazin-bleka-3-sezon-2004.html	7	2004	Великобритания	комедия	Мартин Деннис, Грэхэм Лайнхэн, Ник Вуд	25
7744	Западное крыло (6 сезон)	https://kinokrad.co/318694-zapadnoe-krylo-6-sezon-2004.html	8	2004	США	драма	Крис Мисиано, Алекс Грейвз, Томас Шламми	43
7745	Король Квинса (7 сезон)	https://kinokrad.co/311014-korol-kvinsa-7-sezon-2004.html	7	2004	США	комедия	Роб Шиллер, Джеймс Уиддоуз, Памела Фрайман	22
7746	РеГенезис (1 сезон)	https://kinokrad.co/301076-regenezis-1-sezon-2004.html	6	2004	Канада	фантастика, триллер, драма	Джон Л’Экуаер, Клемент Вирго, Кен Джиротти	43
7747	Морская полиция: Спецотдел (2 сезон)	https://kinokrad.co/284533-morskaya-policiya-specotdel-2-sezon-2004.html	7	2004	США	боевик, триллер, драма, комедия, криминал, детектив	Дэннис Смит, Тони Уормби, Терренс О’Хара	43
7748	C.S.I.: Майами (3 сезон)	https://kinokrad.co/291661-c-s-i-mayami-3-sezon-2004.html	9	2004	США	боевик, триллер, драма, криминал, детектив	Сэм Хилл, Джо Чаппелль, Скотт Лаутанен	43
7749	Закон и порядок. Специальный корпус (6 сезон)	https://kinokrad.co/300186-zakon-i-poryadok-specialnyy-korpus-6-sezon-2004.html	7	2004	США	триллер, драма, криминал, детектив	Дэвид Платт, Питер Лето, Жан Де Сегонзак	43
7750	Девочки Гилмор (5 сезон)	https://kinokrad.co/282902-devochki-gilmor-5-sezon-2004.html	9	2004	США	драма, комедия	Джеми Бэббит, Эми Шерман-Палладино, Крис Лонг	43
7751	Звездные врата: Атлантида (1 сезон)	https://kinokrad.co/289003-zvezdnye-vrata-atlantida-1-sezon-2004.html	9	2004	Канада, США	фантастика, боевик, драма, приключения	Мартин Вуд, Энди Микита, Уильям Варинг	43
7752	Истории папы Кролика (2 сезон)	https://kinokrad.co/285519-istorii-papy-krolika-2-sezon-2004.html	6	2004	Франция, Канада	мультфильм, комедия, семейный	Эрик Бертье, Moran Caouissin	26
7753	Два с половиной человека (2 сезон)	https://kinokrad.co/286157-dva-s-polovinoy-cheloveka-2-sezon-2004.html	8	2004	США	комедия	Джеймс Уиддоуз, Гари Хэлворсон, Памела Фрайман	22
7755	Война Фойла (3 сезон)	https://kinokrad.co/286145-voyna-foyla-3-sezon-2004.html	8	2004	Великобритания	драма, криминал, детектив, военный	Джереми Силберстон, Стюарт Орм, Гэвин Миллар	90
7756	Южный Парк (8 сезон)	https://kinokrad.co/286729-yuzhnyy-park-8-sezon-2004.html	7	2004	США	мультфильм, комедия	Трей Паркер, Эрик Сточ, Мэтт Стоун	22
7757	Малкольм в центре внимания (6 сезон)	https://kinokrad.co/284313-malkolm-v-centre-vnimaniya-6-sezon-2004.html	8	2004	США	комедия	Тодд Холлэнд, Джеффри Мэлман, Кен Куопис	22
7758	Звездные врата: ЗВ-1 (8 сезон)	https://kinokrad.co/281549-zvezdnye-vrata-zv-1-8-sezon-2004.html	10	2004	США, Канада	фантастика, боевик, приключения	Питер ДеЛуис, Мартин Вуд, Энди Микита	43
7759	Клиника (4 сезон)	https://kinokrad.co/282825-klinika-4-sezon-2004.html	9	2004	США	драма, комедия	Майкл Алан Спиллер, Билл Лоуренс, Адам Бернштейн	22
7760	Щит (3 сезон)	https://kinokrad.co/282319-schit-3-sezon-2004.html	7	2004	США	триллер, драма, криминал	Гай Ферленд, Скотт Бразил, Кларк Джонсон	43
7761	Клава, давай! (3 сезон)	https://kinokrad.co/282689-klava-davay-3-sezon-2004.html	5	2004	США	комедия	Тед Уасс, Скип Коллектор, Джонатан Уайсс	22
7762	Чингисхан (1 сезон)	https://kinokrad.co/285103-chingishan-1-sezon-2004.html	7	2004	Китай	боевик, драма, история	Ван Вэньцзе	45
7763	Свинка Пеппа (1 сезон)	https://kinokrad.co/286129-svinka-peppa-1-sezon-2004.html	4	2004	Великобритания	мультфильм, семейный	Марк Бэйкер, Невилл Эстли, Mark Baker	5
7764	Близкие друзья (4 сезон)	https://kinokrad.co/281632-blizkie-druzya-4-sezon-2004.html	9	2004	США, Канада	драма	Майкл ДеКарло, Келли Макин, Кевин Инч	45
7765	Мисс Марпл Агаты Кристи (1 сезон)	https://kinokrad.co/282811-miss-marpl-agaty-kristi-1-sezon-2004.html	8	2004	Великобритания	драма, криминал, детектив	Чарльз Палмер, Энди Уилсон, Джон Стриклэнд	94
7766	Переходный возраст (1 сезон)	https://kinokrad.co/282810-perehodnyy-vozrast-1-sezon-2004.html	8	2004	США	драма, комедия	Майкл Энглер, Майкл Алан Спиллер, Джон Питерс	43
7767	Прослушка (3 сезон)	https://kinokrad.co/282130-proslushka-3-sezon-2004.html	8	2004	США	триллер, драма, криминал	Джо Чаппелль, Эрнест Р. Дикерсон, Кларк Джонсон	60
7768	Клан Сопрано (5 сезон)	https://kinokrad.co/282112-klan-soprano-5-sezon-2004.html	9	2004	США	драма, криминал	Тимоти Ван Паттен, Джон Паттерсон, Аллен Култер	55
7769	Фил из будущего (1 сезон)	https://kinokrad.co/281607-fil-iz-buduschego-1-sezon-2004.html	8	2004	США	фантастика, комедия, приключения, семейный	Фред Сэвэдж, Тим О’Доннелл, Сэвидж Стив Холланд	22
7770	Улицы разбитых фонарей (6 сезон)	https://kinokrad.co/285185-ulicy-razbityh-fonarey-6-sezon-2004.html	5	2004	Россия	боевик, драма, криминал, приключения	Александр Рогожкин, Дмитрий Светозаров, Кирилл Капица	48
7771	Место преступления Лас-Вегас 5 сезон (1-25 серия)	https://kinokrad.co/274447-c-s-i-mesto-prestupleniya-5-sezon.html	8	2004	США, Канада	триллер, драма, криминал, детектив	Кеннет Финк, Ричард Дж. Льюис, Алек Смайт	43
7772	Штрафбат (1 сезон)	https://kinokrad.co/283683-shtrafbat-1-sezon-2004.html	8	2004	Россия	боевик, драма, военный	Николай Досталь	48
7773	Симпсоны 16 сезон (1-21 серия)	https://kinokrad.co/274220-simpsony-16-sezon.html	10	2004	США	мультфильм, комедия	Марк Керклэнд, Стивен Дин Мур, Джим Рирдон	22
7774	Отчаянные домохозяйки 1 сезон	https://kinokrad.co/275911-otchayannye-domohozyayki-1-sezon.html	8	2004	США	драма, мелодрама, комедия, детектив	Дэвид Гроссман, Ларри Шоу	43
7775	Ментовские войны 1 сезон (1-12 серия)	https://kinokrad.co/274113-mentovskie-voyny-1-sezon.html	8	2004	Россия	боевик, драма, криминал	Павел Мальков	302
7776	Моя прекрасная няня (1-173 серия)	https://kinokrad.co/255922-moya-prekrasnaya-nyanya.html	9	2004	Россия	комедия	Алексей Кирющенко, Андрей Кузнецов	26
7777	Вечное лето 1 сезон (1-13 серия)	https://kinokrad.co/279799-vechnoe-leto.html	7	2004	США	драма	Гарри Уайнер, Роберт Данкан МакНил, Питер О’Фаллон	43
7778	Блич (1-366 серия)	https://kinokrad.co/255932-blich.html	9	2004	Япония	аниме, мультфильм, фэнтези, боевик, триллер, приключения	Уэнди Ли, Нориюки Абе	22
7779	Эльфийская песнь (1-14 все серии)	https://kinokrad.co/279604-elfiyskaya-pesn-1-14-vse-serii.html	9	2004	Япония	аниме, мультфильм, ужасы, фантастика, триллер, драма, мелодрама	Мамору Канбэ, Сумио Ватанабэ, Акира Иванага	25
7780	Клуб Винкс – Школа волшебниц 1 сезон	https://kinokrad.co/275721-klub-vinks-shkola-volshebnic-1.html	8	2004	Италия	мультфильм, приключения, семейный	Иджинио Страффи	22
7781	Король Квинса (6 сезон)	https://kinokrad.co/311006-korol-kvinsa-6-sezon-2003.html	8	2003	США	комедия	Роб Шиллер, Джеймс Уиддоуз, Памела Фрайман	22
7782	Парни из Трейлерпарка (3 сезон)	https://kinokrad.co/321238-parni-iz-treylerparka-3-sezon-2003.html	6	2003	Канада	драма, комедия, криминал	Майк Клаттенбёрг, Рон Мерфи, Кори Боулз	30
7783	Пуаро (9 сезон)	https://kinokrad.co/318914-puaro-9-sezon-2003.html	9	2003	Великобритания	триллер, драма, криминал, детектив	Эдвард Беннет, Ренни Рай, Эндрю Грив	90
7784	Аниматрица (1 сезон)	https://kinokrad.co/319842-animatrica-1-sezon-2003.html	7	2003	США, Япония	аниме, мультфильм, фантастика, боевик, драма	Питер Чунг, Энди Джонс, Ёсиаки Кавадзири	100
7785	Чистые ключи (1 сезон)	https://kinokrad.co/309506-chistye-klyuchi-1-sezon-2003.html	3	2003	Россия	драма	Владимир Басов мл., Ольга Басова	52
7786	Безмолвный свидетель (7 сезон)	https://kinokrad.co/299916-bezmolvnyy-svidetel-7-sezon-2003.html	7	2003	Великобритания	драма, криминал, детектив	Тадеус О’Салливан, Дэвид Ричардс, Ричард Сайни	43
7787	Мертвые, как я (1 сезон)	https://kinokrad.co/300777-mertvye-kak-ya-1-sezon-2003.html	8	2003	Канада, США	фэнтези, драма, комедия, мистика	Дэвид Гроссман, Джеймс Уитмор мл., Питер Лоэр	43
7788	Святой дозор (1 сезон)	https://kinokrad.co/301106-svyatoy-dozor-1-sezon-2003.html	7	2003	США	ужасы, фантастика, фэнтези, триллер, драма, детектив	Билл Д’Элиа, Джон Фоусет, Марита Грабяк	43
7789	Западное крыло (5 сезон)	https://kinokrad.co/318690-zapadnoe-krylo-5-sezon-2003.html	4	2003	США	драма	Крис Мисиано, Алекс Грейвз, Томас Шламми	43
7790	Южный Парк (7 сезон)	https://kinokrad.co/286585-yuzhnyy-park-7-sezon-2003.html	6	2003	США	мультфильм, комедия	Трей Паркер, Эрик Сточ, Мэтт Стоун	22
7791	Самурай Джек (4 сезон)	https://kinokrad.co/287213-samuray-dzhek-4-sezon-2003.html	7	2003	США	мультфильм, фантастика, фэнтези, боевик, триллер, приключения	Генндий Тартаковский, Рэнди Майерс, Роберт Альварез	22
7792	Андромеда (4 сезон)	https://kinokrad.co/302237-andromeda-4-sezon-2003.html	8	2003	Канада, США	фантастика, фэнтези, боевик, драма, мелодрама, приключения	Хорхе Монтеси, Аллан Истмэн, Ричард Флауер	43
7793	Морская полиция: Спецотдел (1 сезон)	https://kinokrad.co/284531-morskaya-policiya-specotdel-1-sezon-2003.html	8	2003	США	боевик, триллер, драма, комедия, криминал, детектив	Дэннис Смит, Тони Уормби, Терренс О’Хара	43
7794	C.S.I.: Майами (2 сезон)	https://kinokrad.co/291658-c-s-i-mayami-2-sezon-2003.html	9	2003	США	боевик, триллер, драма, криминал, детектив	Сэм Хилл, Джо Чаппелль, Скотт Лаутанен	43
7795	Закон и порядок. Специальный корпус (5 сезон)	https://kinokrad.co/300183-zakon-i-poryadok-specialnyy-korpus-5-sezon-2003.html	7	2003	США	триллер, драма, криминал, детектив	Дэвид Платт, Питер Лето, Жан Де Сегонзак	43
7796	Девочки Гилмор (4 сезон)	https://kinokrad.co/282901-devochki-gilmor-4-sezon-2003.html	9	2003	США	драма, комедия	Джеми Бэббит, Эми Шерман-Палладино, Крис Лонг	43
7797	Агентство НЛС – 2 (2 сезон)	https://kinokrad.co/288262-agentstvo-nls-2-sezon-2003.html	7	2003	Россия	комедия, детектив, приключения	Дмитрий Парменов	47
7798	Два с половиной человека (10 сезон)	https://kinokrad.co/290890-dva-s-polovinoy-cheloveka-10-sezon-2012.html	8	2003	США	комедия	Джеймс Уиддоуз, Гари Хэлворсон, Памела Фрайман	22
7799	Два с половиной человека (1 сезон)	https://kinokrad.co/286155-dva-s-polovinoy-cheloveka-1-sezon-2003.html	9	2003	США	комедия	Джеймс Уиддоуз, Гари Хэлворсон, Памела Фрайман	22
7800	Малкольм в центре внимания (5 сезон)	https://kinokrad.co/284311-malkolm-v-centre-vnimaniya-5-sezon-2003.html	8	2003	США	комедия	Тодд Холлэнд, Джеффри Мэлман, Кен Куопис	22
7801	Южный Парк (9 сезон)	https://kinokrad.co/286731-yuzhnyy-park-9-sezon-2005.html	6	2005	США	мультфильм, комедия	Трей Паркер, Эрик Сточ, Мэтт Стоун	22
7802	Малкольм в центре внимания (7 сезон)	https://kinokrad.co/284315-malkolm-v-centre-vnimaniya-7-sezon-2005.html	7	2005	США	комедия	Тодд Холлэнд, Джеффри Мэлман, Кен Куопис	22
7803	Секреты на кухне (1 сезон)	https://kinokrad.co/282999-sekrety-na-kuhne-1-sezon-2005.html	9	2005	США	комедия	Майкл Алан Спиллер, Даррен Стар, Лев Л. Спиро	22
7804	Звездные врата: ЗВ-1 (9 сезон)	https://kinokrad.co/281550-zvezdnye-vrata-zv-1-9-sezon-2005.html	10	2005	США, Канада	фантастика, боевик, приключения	Питер ДеЛуис, Мартин Вуд, Энди Микита	43
7805	Не родись красивой (1 сезон)	https://kinokrad.co/283841-ne-rodis-krasivoy-1-sezon-2005.html	8	2005	Россия	мелодрама	Александр Назаров, Карен Захаров, Станислав Назиров	43
7806	Щит (4 сезон)	https://kinokrad.co/282320-schit-4-sezon-2005.html	9	2005	США	триллер, драма, криминал	Гай Ферленд, Скотт Бразил, Кларк Джонсон	43
7807	В Филадельфии всегда солнечно (1 сезон)	https://kinokrad.co/286071-v-filadelfii-vsegda-solnechno-1-sezon-2005.html	8	2005	США	комедия	Мэтт Шекман, Фред Сэвэдж, Дэниэл Эттиэс	22
7808	Остаться в живых (2 сезон)	https://kinokrad.co/283271-ostatsya-v-zhivyh-2-sezon-2005.html	8	2005	США	фантастика, фэнтези, триллер, драма, детектив, приключения	Джек Бендер, Стивен Уильямс, Пол А. Эдвардс	43
7809	Остаться в живых (1 сезон)	https://kinokrad.co/283270-ostatsya-v-zhivyh-1-sezon-2005.html	8	2005	США	фантастика, фэнтези, триллер, драма, детектив, приключения	Джек Бендер, Стивен Уильямс, Пол А. Эдвардс	43
7810	Мастера ужасов 2 сезон (1-13 серия)	https://kinokrad.co/280963-mastera-uzhasov-2-sezon.html	8	2005	Канада, США, Япония	ужасы, триллер	Стюарт Гордон, Дарио Ардженто, Джон Карпентер	55
7811	Мастера ужасов 1 сезон (1-13 серия)	https://kinokrad.co/280956-mastera-uzhasov-1-sezon.html	8	2005	Канада, США, Япония	ужасы, триллер, мистика	Стюарт Гордон, Дарио Ардженто, Джон Карпентер	55
7812	Свинка Пеппа (2 сезон)	https://kinokrad.co/286131-svinka-peppa-2-sezon-2005.html	4	2005	Великобритания	мультфильм, семейный	Марк Бэйкер, Невилл Эстли, Mark Baker	5
7813	Оперативный псевдоним 2: Код возвращения (2 сезон)	https://kinokrad.co/284701-operativnyy-psevdonim-2-kod-vozvrascheniya-2-sezon-2005.html	7	2005	Россия	боевик	Сергей Виноградов	45
7814	Бухта Данте (1 сезон)	https://kinokrad.co/281637-buhta-dante-1-sezon-2005.html	4	2005	США	ужасы, триллер, драма, мелодрама, детектив, мистика	Сэм Ирвин, Майкл Костаназа	47
7815	Близкие друзья (5 сезон)	https://kinokrad.co/281633-blizkie-druzya-5-sezon-2005.html	9	2005	США, Канада	драма	Майкл ДеКарло, Келли Макин, Кевин Инч	45
7816	Предел (1-13 серия)	https://kinokrad.co/255573-predel.html	8	2005	США	фантастика, боевик, триллер, драма	Джон Шоуолтер	45
7817	Как я встретил вашу маму (1 сезон)	https://kinokrad.co/282146-kak-ya-vstretil-vashu-mamu-1-sezon-2005.html	10	2005	США	комедия, мелодрама, драма	Памела Фрайман, Роб Гринберг, Майкл Дж. Ши	22
7818	Фил из будущего (2 сезон)	https://kinokrad.co/281608-fil-iz-buduschego-2-sezon-2005.html	7	2005	США	фантастика, комедия, приключения, семейный	Фред Сэвэдж, Тим О’Доннелл, Сэвидж Стив Холланд	22
7819	Улицы разбитых фонарей (7 сезон)	https://kinokrad.co/285187-ulicy-razbityh-fonarey-7-sezon-2005.html	6	2005	Россия	боевик, драма, криминал, приключения	Александр Рогожкин, Дмитрий Светозаров, Кирилл Капица	48
7820	Части тела 2 сезон (1-16 серия)	https://kinokrad.co/281300-chasti-tela-2-sezon.html	8	2005	США	драма	Майкл М. Робин, Элоди Кин, Райан Мерфи	43
7821	Место преступления Лас-Вегас 6 сезон (1-24 серия)	https://kinokrad.co/274448-c-s-i-mesto-prestupleniya-6-sezon.html	8	2005	США, Канада	триллер, драма, криминал, детектив	Кеннет Финк, Ричард Дж. Льюис, Алек Смайт	43
7822	Мыслить как преступник 1 сезон (1-22 серия)	https://kinokrad.co/274148-myslit-kak-prestupnik-1-sezon.html	8	2005	США, Канада	триллер, драма, криминал, детектив	Гленн Кершоу, Феликс Энрикез Алькала, Эдвард Аллен Бернеро	43
7823	Зачарованные 8 сезон (1-22 серии)	https://kinokrad.co/255761-zacharovannye-8-sezon.html	9	2005	США	фэнтези, драма, детектив	Джон Т. Кречмер, Джеймс Л. Конуэй	43
7824	Доктор Хаус 2 сезон (1-24 серия)	https://kinokrad.co/274089-doktor-haus-2-sezon.html	9	2005	США	драма, детектив	Грег Яйтанс, Деран Сарафян, Дэвид Стрейтон	43
7825	Побег (1 сезон)	https://kinokrad.co/281873-pobeg-1-sezon-2005.html	9	2005	США	боевик, триллер, драма, криминал, детектив	Бобби Рот, Кевин Хукс, Дуайт Х. Литтл	43
7826	Гриффины (4 сезон)	https://kinokrad.co/281998-griffiny-4-sezon-2005.html	8	2005	США	мультфильм, комедия	Питер Шин, Джеймс Пурдум, Доминик Бьянчи	22
7827	Отчаянные домохозяйки 2 сезон	https://kinokrad.co/275912-otchayannye-domohozyayki-2-sezon.html	9	2005	США	драма, мелодрама, комедия, детектив	Дэвид Гроссман, Ларри Шоу	43
7828	Доктор Кто 1 сезон (1-16 серия)	https://kinokrad.co/274017-doktor-kto-1-sezon.html	8	2005	Великобритания	фантастика, драма, комедия, приключения, семейный	Грэм Харпер, Эрос Лин, Джеймс Стронг	43
7829	Доктор Кто 2 сезон (1-13 серия)	https://kinokrad.co/274018-doktor-kto-2-sezon.html	9	2005	Великобритания	фантастика, драма, комедия, приключения, семейный	Грэм Харпер, Эрос Лин, Джеймс Стронг	43
7830	Американский папаша 1 сезон (1-23 серия)	https://kinokrad.co/274121-amerikanskiy-papasha-1-sezon.html	7	2005	США	мультфильм, комедия	Рон Хьюгарт, Брент Вудс, Энтони Льои	22
7831	Симпсоны 17 сезон (1-22 серия)	https://kinokrad.co/274221-simpsony-17-sezon.html	10	2005	США	мультфильм, комедия	Марк Керклэнд, Стивен Дин Мур, Джим Рирдон	22
7832	Ментовские войны 2 сезон (1-12 серия)	https://kinokrad.co/274114-mentovskie-voyny-2-sezon.html	8	2005	Россия	боевик, драма, криминал	Павел Мальков	302
7833	Клуб Винкс – Школа волшебниц 2 сезон	https://kinokrad.co/275722-klub-vinks-shkola-volshebnic-2.html	8	2005	Италия	мультфильм, приключения, семейный	Иджинио Страффи	22
7834	Строптивая мишень (1 сезон)	https://kinokrad.co/308381-stroptivaya-mishen-1-sezon-2004.html	5	2004	Россия	триллер, криминал	Юлия Колесник	45
7835	Чудопад (1 сезон)	https://kinokrad.co/301439-chudopad-1-sezon-2004.html	6	2004	Канада, США	драма, комедия	Тодд Холлэнд, Джеми Бэббит, Марита Грабяк	43
7836	Черный оракул (1 сезон)	https://kinokrad.co/295273-chernyy-orakul-1-sezon-2004.html	7	2004	Канада	мультфильм, фантастика	Рон Мерфи, Крэйг Прайс, Пол Фокс	24
7837	Доктор Хаус 1 сезон (1-24 серия)	https://kinokrad.co/274088-doktor-haus-1-sezon.html	9	2004	США	драма, детектив	Грег Яйтанс, Деран Сарафян, Дэвид Стрейтон	43
7838	Андромеда (5 сезон)	https://kinokrad.co/302240-andromeda-5-sezon-2004.html	7	2004	Канада, США	фантастика, фэнтези, боевик, драма, мелодрама, приключения	Хорхе Монтеси, Аллан Истмэн, Ричард Флауер	43
7839	Парни из Трейлерпарка (4 сезон)	https://kinokrad.co/321242-parni-iz-treylerparka-4-sezon-2004.html	6	2004	Канада	драма, комедия, криминал	Майк Клаттенбёрг, Рон Мерфи, Кори Боулз	30
7840	Безмолвный свидетель (8 сезон)	https://kinokrad.co/299919-bezmolvnyy-svidetel-8-sezon-2004.html	7	2004	Великобритания	драма, криминал, детектив	Тадеус О’Салливан, Дэвид Ричардс, Ричард Сайни	43
7841	Четыре тысячи четыреста (1 сезон)	https://kinokrad.co/302027-chetyre-tysyachi-chetyresta-1-sezon-2004.html	9	2004	США, Великобритания	фантастика, триллер, драма, детектив	Скотт Питерс, Винс Мисиано, Ник Копус	43
7842	Мертвые, как я (2 сезон)	https://kinokrad.co/300779-mertvye-kak-ya-2-sezon-2004.html	8	2004	Канада, США	фэнтези, драма, комедия, мистика	Дэвид Гроссман, Джеймс Уитмор мл., Питер Лоэр	43
7843	Книжный магазин Блэка (3 сезон)	https://kinokrad.co/319446-knizhnyy-magazin-bleka-3-sezon-2004.html	7	2004	Великобритания	комедия	Мартин Деннис, Грэхэм Лайнхэн, Ник Вуд	25
7844	Западное крыло (6 сезон)	https://kinokrad.co/318694-zapadnoe-krylo-6-sezon-2004.html	8	2004	США	драма	Крис Мисиано, Алекс Грейвз, Томас Шламми	43
7845	Король Квинса (7 сезон)	https://kinokrad.co/311014-korol-kvinsa-7-sezon-2004.html	7	2004	США	комедия	Роб Шиллер, Джеймс Уиддоуз, Памела Фрайман	22
7846	РеГенезис (1 сезон)	https://kinokrad.co/301076-regenezis-1-sezon-2004.html	6	2004	Канада	фантастика, триллер, драма	Джон Л’Экуаер, Клемент Вирго, Кен Джиротти	43
7847	Морская полиция: Спецотдел (2 сезон)	https://kinokrad.co/284533-morskaya-policiya-specotdel-2-sezon-2004.html	7	2004	США	боевик, триллер, драма, комедия, криминал, детектив	Дэннис Смит, Тони Уормби, Терренс О’Хара	43
7848	C.S.I.: Майами (3 сезон)	https://kinokrad.co/291661-c-s-i-mayami-3-sezon-2004.html	9	2004	США	боевик, триллер, драма, криминал, детектив	Сэм Хилл, Джо Чаппелль, Скотт Лаутанен	43
7849	Закон и порядок. Специальный корпус (6 сезон)	https://kinokrad.co/300186-zakon-i-poryadok-specialnyy-korpus-6-sezon-2004.html	7	2004	США	триллер, драма, криминал, детектив	Дэвид Платт, Питер Лето, Жан Де Сегонзак	43
7850	Девочки Гилмор (5 сезон)	https://kinokrad.co/282902-devochki-gilmor-5-sezon-2004.html	9	2004	США	драма, комедия	Джеми Бэббит, Эми Шерман-Палладино, Крис Лонг	43
7851	Звездные врата: Атлантида (1 сезон)	https://kinokrad.co/289003-zvezdnye-vrata-atlantida-1-sezon-2004.html	9	2004	Канада, США	фантастика, боевик, драма, приключения	Мартин Вуд, Энди Микита, Уильям Варинг	43
7852	Истории папы Кролика (2 сезон)	https://kinokrad.co/285519-istorii-papy-krolika-2-sezon-2004.html	6	2004	Франция, Канада	мультфильм, комедия, семейный	Эрик Бертье, Moran Caouissin	26
7853	Два с половиной человека (2 сезон)	https://kinokrad.co/286157-dva-s-polovinoy-cheloveka-2-sezon-2004.html	8	2004	США	комедия	Джеймс Уиддоуз, Гари Хэлворсон, Памела Фрайман	22
7854	Сцена (1 сезон)	https://kinokrad.co/282274-scena-1-sezon-2004.html	7	2004	США	драма, детектив	Митчелл Рэйчгут	20
7855	Война Фойла (3 сезон)	https://kinokrad.co/286145-voyna-foyla-3-sezon-2004.html	8	2004	Великобритания	драма, криминал, детектив, военный	Джереми Силберстон, Стюарт Орм, Гэвин Миллар	90
7856	Южный Парк (8 сезон)	https://kinokrad.co/286729-yuzhnyy-park-8-sezon-2004.html	7	2004	США	мультфильм, комедия	Трей Паркер, Эрик Сточ, Мэтт Стоун	22
7857	Малкольм в центре внимания (6 сезон)	https://kinokrad.co/284313-malkolm-v-centre-vnimaniya-6-sezon-2004.html	8	2004	США	комедия	Тодд Холлэнд, Джеффри Мэлман, Кен Куопис	22
7858	Звездные врата: ЗВ-1 (8 сезон)	https://kinokrad.co/281549-zvezdnye-vrata-zv-1-8-sezon-2004.html	10	2004	США, Канада	фантастика, боевик, приключения	Питер ДеЛуис, Мартин Вуд, Энди Микита	43
7859	Клиника (4 сезон)	https://kinokrad.co/282825-klinika-4-sezon-2004.html	9	2004	США	драма, комедия	Майкл Алан Спиллер, Билл Лоуренс, Адам Бернштейн	22
7860	Щит (3 сезон)	https://kinokrad.co/282319-schit-3-sezon-2004.html	7	2004	США	триллер, драма, криминал	Гай Ферленд, Скотт Бразил, Кларк Джонсон	43
7861	Клава, давай! (3 сезон)	https://kinokrad.co/282689-klava-davay-3-sezon-2004.html	5	2004	США	комедия	Тед Уасс, Скип Коллектор, Джонатан Уайсс	22
7862	Чингисхан (1 сезон)	https://kinokrad.co/285103-chingishan-1-sezon-2004.html	7	2004	Китай	боевик, драма, история	Ван Вэньцзе	45
7863	Свинка Пеппа (1 сезон)	https://kinokrad.co/286129-svinka-peppa-1-sezon-2004.html	4	2004	Великобритания	мультфильм, семейный	Марк Бэйкер, Невилл Эстли, Mark Baker	5
7864	Близкие друзья (4 сезон)	https://kinokrad.co/281632-blizkie-druzya-4-sezon-2004.html	9	2004	США, Канада	драма	Майкл ДеКарло, Келли Макин, Кевин Инч	45
7865	Мисс Марпл Агаты Кристи (1 сезон)	https://kinokrad.co/282811-miss-marpl-agaty-kristi-1-sezon-2004.html	8	2004	Великобритания	драма, криминал, детектив	Чарльз Палмер, Энди Уилсон, Джон Стриклэнд	94
7866	Переходный возраст (1 сезон)	https://kinokrad.co/282810-perehodnyy-vozrast-1-sezon-2004.html	8	2004	США	драма, комедия	Майкл Энглер, Майкл Алан Спиллер, Джон Питерс	43
7867	Прослушка (3 сезон)	https://kinokrad.co/282130-proslushka-3-sezon-2004.html	8	2004	США	триллер, драма, криминал	Джо Чаппелль, Эрнест Р. Дикерсон, Кларк Джонсон	60
7868	Клан Сопрано (5 сезон)	https://kinokrad.co/282112-klan-soprano-5-sezon-2004.html	9	2004	США	драма, криминал	Тимоти Ван Паттен, Джон Паттерсон, Аллен Култер	55
7869	Фил из будущего (1 сезон)	https://kinokrad.co/281607-fil-iz-buduschego-1-sezon-2004.html	8	2004	США	фантастика, комедия, приключения, семейный	Фред Сэвэдж, Тим О’Доннелл, Сэвидж Стив Холланд	22
7870	Улицы разбитых фонарей (6 сезон)	https://kinokrad.co/285185-ulicy-razbityh-fonarey-6-sezon-2004.html	5	2004	Россия	боевик, драма, криминал, приключения	Александр Рогожкин, Дмитрий Светозаров, Кирилл Капица	48
7871	Место преступления Лас-Вегас 5 сезон (1-25 серия)	https://kinokrad.co/274447-c-s-i-mesto-prestupleniya-5-sezon.html	8	2004	США, Канада	триллер, драма, криминал, детектив	Кеннет Финк, Ричард Дж. Льюис, Алек Смайт	43
7872	Штрафбат (1 сезон)	https://kinokrad.co/283683-shtrafbat-1-sezon-2004.html	8	2004	Россия	боевик, драма, военный	Николай Досталь	48
7873	Симпсоны 16 сезон (1-21 серия)	https://kinokrad.co/274220-simpsony-16-sezon.html	10	2004	США	мультфильм, комедия	Марк Керклэнд, Стивен Дин Мур, Джим Рирдон	22
7874	Отчаянные домохозяйки 1 сезон	https://kinokrad.co/275911-otchayannye-domohozyayki-1-sezon.html	8	2004	США	драма, мелодрама, комедия, детектив	Дэвид Гроссман, Ларри Шоу	43
7875	Ментовские войны 1 сезон (1-12 серия)	https://kinokrad.co/274113-mentovskie-voyny-1-sezon.html	8	2004	Россия	боевик, драма, криминал	Павел Мальков	302
7876	Моя прекрасная няня (1-173 серия)	https://kinokrad.co/255922-moya-prekrasnaya-nyanya.html	9	2004	Россия	комедия	Алексей Кирющенко, Андрей Кузнецов	26
7877	Вечное лето 1 сезон (1-13 серия)	https://kinokrad.co/279799-vechnoe-leto.html	7	2004	США	драма	Гарри Уайнер, Роберт Данкан МакНил, Питер О’Фаллон	43
7878	Блич (1-366 серия)	https://kinokrad.co/255932-blich.html	9	2004	Япония	аниме, мультфильм, фэнтези, боевик, триллер, приключения	Уэнди Ли, Нориюки Абе	22
7879	Эльфийская песнь (1-14 все серии)	https://kinokrad.co/279604-elfiyskaya-pesn-1-14-vse-serii.html	9	2004	Япония	аниме, мультфильм, ужасы, фантастика, триллер, драма, мелодрама	Мамору Канбэ, Сумио Ватанабэ, Акира Иванага	25
7880	Клуб Винкс – Школа волшебниц 1 сезон	https://kinokrad.co/275721-klub-vinks-shkola-volshebnic-1.html	8	2004	Италия	мультфильм, приключения, семейный	Иджинио Страффи	22
7881	Король Квинса (6 сезон)	https://kinokrad.co/311006-korol-kvinsa-6-sezon-2003.html	8	2003	США	комедия	Роб Шиллер, Джеймс Уиддоуз, Памела Фрайман	22
7882	Парни из Трейлерпарка (3 сезон)	https://kinokrad.co/321238-parni-iz-treylerparka-3-sezon-2003.html	6	2003	Канада	драма, комедия, криминал	Майк Клаттенбёрг, Рон Мерфи, Кори Боулз	30
7883	Пуаро (9 сезон)	https://kinokrad.co/318914-puaro-9-sezon-2003.html	9	2003	Великобритания	триллер, драма, криминал, детектив	Эдвард Беннет, Ренни Рай, Эндрю Грив	90
7884	Аниматрица (1 сезон)	https://kinokrad.co/319842-animatrica-1-sezon-2003.html	7	2003	США, Япония	аниме, мультфильм, фантастика, боевик, драма	Питер Чунг, Энди Джонс, Ёсиаки Кавадзири	100
7885	Чистые ключи (1 сезон)	https://kinokrad.co/309506-chistye-klyuchi-1-sezon-2003.html	3	2003	Россия	драма	Владимир Басов мл., Ольга Басова	52
7886	Безмолвный свидетель (7 сезон)	https://kinokrad.co/299916-bezmolvnyy-svidetel-7-sezon-2003.html	7	2003	Великобритания	драма, криминал, детектив	Тадеус О’Салливан, Дэвид Ричардс, Ричард Сайни	43
7887	Мертвые, как я (1 сезон)	https://kinokrad.co/300777-mertvye-kak-ya-1-sezon-2003.html	8	2003	Канада, США	фэнтези, драма, комедия, мистика	Дэвид Гроссман, Джеймс Уитмор мл., Питер Лоэр	43
7888	Святой дозор (1 сезон)	https://kinokrad.co/301106-svyatoy-dozor-1-sezon-2003.html	7	2003	США	ужасы, фантастика, фэнтези, триллер, драма, детектив	Билл Д’Элиа, Джон Фоусет, Марита Грабяк	43
7889	Западное крыло (5 сезон)	https://kinokrad.co/318690-zapadnoe-krylo-5-sezon-2003.html	4	2003	США	драма	Крис Мисиано, Алекс Грейвз, Томас Шламми	43
7890	Южный Парк (7 сезон)	https://kinokrad.co/286585-yuzhnyy-park-7-sezon-2003.html	6	2003	США	мультфильм, комедия	Трей Паркер, Эрик Сточ, Мэтт Стоун	22
7891	Самурай Джек (4 сезон)	https://kinokrad.co/287213-samuray-dzhek-4-sezon-2003.html	7	2003	США	мультфильм, фантастика, фэнтези, боевик, триллер, приключения	Генндий Тартаковский, Рэнди Майерс, Роберт Альварез	22
7892	Андромеда (4 сезон)	https://kinokrad.co/302237-andromeda-4-sezon-2003.html	8	2003	Канада, США	фантастика, фэнтези, боевик, драма, мелодрама, приключения	Хорхе Монтеси, Аллан Истмэн, Ричард Флауер	43
7893	Морская полиция: Спецотдел (1 сезон)	https://kinokrad.co/284531-morskaya-policiya-specotdel-1-sezon-2003.html	8	2003	США	боевик, триллер, драма, комедия, криминал, детектив	Дэннис Смит, Тони Уормби, Терренс О’Хара	43
7951	Король Квинса (4 сезон)	https://kinokrad.co/310922-korol-kvinsa-4-sezon-2001.html	9	2001	США	комедия	Роб Шиллер, Джеймс Уиддоуз, Памела Фрайман	22
7894	C.S.I.: Майами (2 сезон)	https://kinokrad.co/291658-c-s-i-mayami-2-sezon-2003.html	9	2003	США	боевик, триллер, драма, криминал, детектив	Сэм Хилл, Джо Чаппелль, Скотт Лаутанен	43
7895	Закон и порядок. Специальный корпус (5 сезон)	https://kinokrad.co/300183-zakon-i-poryadok-specialnyy-korpus-5-sezon-2003.html	7	2003	США	триллер, драма, криминал, детектив	Дэвид Платт, Питер Лето, Жан Де Сегонзак	43
7896	Девочки Гилмор (4 сезон)	https://kinokrad.co/282901-devochki-gilmor-4-sezon-2003.html	9	2003	США	драма, комедия	Джеми Бэббит, Эми Шерман-Палладино, Крис Лонг	43
7897	Агентство НЛС – 2 (2 сезон)	https://kinokrad.co/288262-agentstvo-nls-2-sezon-2003.html	7	2003	Россия	комедия, детектив, приключения	Дмитрий Парменов	47
7898	Два с половиной человека (10 сезон)	https://kinokrad.co/290890-dva-s-polovinoy-cheloveka-10-sezon-2012.html	8	2003	США	комедия	Джеймс Уиддоуз, Гари Хэлворсон, Памела Фрайман	22
7899	Два с половиной человека (1 сезон)	https://kinokrad.co/286155-dva-s-polovinoy-cheloveka-1-sezon-2003.html	9	2003	США	комедия	Джеймс Уиддоуз, Гари Хэлворсон, Памела Фрайман	22
7900	Малкольм в центре внимания (5 сезон)	https://kinokrad.co/284311-malkolm-v-centre-vnimaniya-5-sezon-2003.html	8	2003	США	комедия	Тодд Холлэнд, Джеффри Мэлман, Кен Куопис	22
7901	Звездные врата: ЗВ-1 (7 сезон)	https://kinokrad.co/281548-zvezdnye-vrata-zv-1-7-sezon-2003.html	10	2003	США, Канада	фантастика, боевик, приключения	Питер ДеЛуис, Мартин Вуд, Энди Микита	43
7902	Клиника (3 сезон)	https://kinokrad.co/282824-klinika-3-sezon-2003.html	9	2003	США	драма, комедия	Майкл Алан Спиллер, Билл Лоуренс, Адам Бернштейн	22
7903	Щит (2 сезон)	https://kinokrad.co/282318-schit-2-sezon-2003.html	7	2003	США	триллер, драма, криминал	Гай Ферленд, Скотт Бразил, Кларк Джонсон	43
7904	Клава, давай! (2 сезон)	https://kinokrad.co/282688-klava-davay-2-sezon-2003.html	8	2003	США	комедия	Тед Уасс, Скип Коллектор, Джонатан Уайсс	22
7905	Война Фойла (2 сезон)	https://kinokrad.co/286143-voyna-foyla-2-sezon-2003.html	7	2003	Великобритания	драма, криминал, детектив, военный	Джереми Силберстон, Стюарт Орм, Гэвин Миллар	90
7906	Оперативный псевдоним (1 сезон)	https://kinokrad.co/284699-operativnyy-psevdonim-1-sezon-2003.html	8	2003	Россия	боевик, криминал	Игорь Талпа	45
7907	Прослушка (2 сезон)	https://kinokrad.co/282128-proslushka-2-sezon-2003.html	8	2003	США	триллер, драма, криминал	Джо Чаппелль, Эрнест Р. Дикерсон, Кларк Джонсон	60
7908	Части тела 1 сезон (1-13 серия)	https://kinokrad.co/281264-chasti-tela-1-sezon.html	8	2003	США	драма	Майкл М. Робин, Элоди Кин, Райан Мерфи	43
7909	Близкие друзья (3 сезон)	https://kinokrad.co/281631-blizkie-druzya-3-sezon-2003.html	7	2003	США, Канада	драма	Майкл ДеКарло, Келли Макин, Кевин Инч	45
7910	Улицы разбитых фонарей (5 сезон)	https://kinokrad.co/285183-ulicy-razbityh-fonarey-5-sezon-2003.html	7	2003	Россия	боевик, драма, криминал, приключения	Александр Рогожкин, Дмитрий Светозаров, Кирилл Капица	48
7911	Место преступления Лас-Вегас 4 сезон (1-23 серия)	https://kinokrad.co/274446-c-s-i-mesto-prestupleniya-4-sezon.html	8	2003	США, Канада	триллер, драма, криминал, детектив	Кеннет Финк, Ричард Дж. Льюис, Алек Смайт	43
7912	Друзья 10 сезон	https://kinokrad.co/256146-druzya-10-sezon.html	9	2003	США	мелодрама, комедия	Гари Хэлворсон, Кевин Брайт	22
7913	Симпсоны 15 сезон (1-22 серия)	https://kinokrad.co/274219-simpsony-15-sezon.html	10	2003	США	мультфильм, комедия	Марк Керклэнд, Стивен Дин Мур, Джим Рирдон	22
7914	Секс в большом городе 6 сезон (1-20 серия)	https://kinokrad.co/255716-seks-v-bolshom-gorode-6-sezon.html	8	2003	США	мелодрама, комедия	Майкл Патрик Кинг, Аллен Култер	22
7915	Бригада (1 сезон)	https://kinokrad.co/305504-brigada-1-sezon.html	7	2002	Россия	драма, криминал	Алексей Сидоров	52
7916	Футурама 5 сезон	https://kinokrad.co/274040-futurama-5.html	7	2002	США	мультфильм, фантастика, комедия	Питер Аванзино, Брэт Хааланд, Грегг Ванцо	22
7917	Книжный магазин Блэка (2 сезон)	https://kinokrad.co/319442-knizhnyy-magazin-bleka-2-sezon-2002.html	8	2002	Великобритания	комедия	Мартин Деннис, Грэхэм Лайнхэн, Ник Вуд	25
7918	Западное крыло (4 сезон)	https://kinokrad.co/318682-zapadnoe-krylo-4-sezon-2002.html	7	2002	США	драма	Крис Мисиано, Алекс Грейвз, Томас Шламми	43
7919	Король Квинса (5 сезон)	https://kinokrad.co/311002-korol-kvinsa-5-sezon-2002.html	7	2002	США	комедия	Роб Шиллер, Джеймс Уиддоуз, Памела Фрайман	22
7920	Закон и порядок. Специальный корпус (4 сезон)	https://kinokrad.co/300180-zakon-i-poryadok-specialnyy-korpus-4-sezon-2002.html	7	2002	США	триллер, драма, криминал, детектив	Дэвид Платт, Питер Лето, Жан Де Сегонзак	43
7921	Баффи – истребительница вампиров (7 сезон)	https://kinokrad.co/319922-baffi-istrebitelnica-vampirov-7-sezon-2002.html	8	2002	США	фэнтези, боевик, драма, мелодрама	Джосс Уидон, Джеймс А. Контнер, Дэвид Соломон	43
7922	Парни из Трейлерпарка (2 сезон)	https://kinokrad.co/321186-parni-iz-treylerparka-2-sezon-2002.html	7	2002	Канада	драма, комедия, криминал	Майк Клаттенбёрг, Рон Мерфи, Кори Боулз	30
7923	Безмолвный свидетель (6 сезон)	https://kinokrad.co/299913-bezmolvnyy-svidetel-6-sezon-2002.html	7	2002	Великобритания	драма, криминал, детектив	Тадеус О’Салливан, Дэвид Ричардс, Ричард Сайни	43
7924	Далеко во Вселенной / На краю вселенной (4 сезон)	https://kinokrad.co/300030-daleko-vo-vselennoy-na-krayu-vselennoy-4-sezon-2002.html	8	2002	Австралия, США	фантастика, приключения	Тони Тилс, Роуэн Вудс, Эндрю Проуз	43
7925	Южный Парк (6 сезон)	https://kinokrad.co/286583-yuzhnyy-park-6-sezon-2002.html	6	2002	США	мультфильм, комедия	Трей Паркер, Эрик Сточ, Мэтт Стоун	22
7926	Андромеда (3 сезон)	https://kinokrad.co/302234-andromeda-3-sezon-2002.html	8	2002	Канада, США	фантастика, фэнтези, боевик, драма, мелодрама, приключения	Хорхе Монтеси, Аллан Истмэн, Ричард Флауер	43
7927	Бухта Доусона (6 сезон)	https://kinokrad.co/283152-buhta-dousona-6-sezon-2002.html	7	2002	США	драма	Грегори Прэндж, Дэвид Семел, Дэвид Петрарка	43
7928	C.S.I.: Майами (1 сезон)	https://kinokrad.co/291655-c-s-i-mayami-1-sezon-2002.html	9	2002	США	боевик, триллер, драма, криминал, детектив	Сэм Хилл, Джо Чаппелль, Скотт Лаутанен	43
7929	Сабрина – маленькая ведьма (7 сезон)	https://kinokrad.co/282792-sabrina-malenkaya-vedma-7-sezon-2002.html	7	2002	США	фэнтези, комедия, семейный	Кеннет Р. Кох, Гари Хэлворсон, Брайан К. Робертс	22
7930	Девочки Гилмор (3 сезон)	https://kinokrad.co/282900-devochki-gilmor-3-sezon-2002.html	7	2002	США	драма, комедия	Джеми Бэббит, Эми Шерман-Палладино, Крис Лонг	43
7931	Самурай Джек (3 сезон)	https://kinokrad.co/287211-samuray-dzhek-3-sezon-2002.html	7	2002	США	мультфильм, фантастика, фэнтези, боевик, триллер, приключения	Генндий Тартаковский, Рэнди Майерс, Роберт Альварез	22
7932	Самурай Джек (2 сезон)	https://kinokrad.co/287209-samuray-dzhek-2-sezon-2002.html	7	2002	США	мультфильм, фантастика, фэнтези, боевик, триллер, приключения	Генндий Тартаковский, Рэнди Майерс, Роберт Альварез	22
7933	Малкольм в центре внимания (4 сезон)	https://kinokrad.co/284309-malkolm-v-centre-vnimaniya-4-sezon-2002.html	8	2002	США	комедия	Тодд Холлэнд, Джеффри Мэлман, Кен Куопис	22
7934	Лиззи Магуайр (2 сезон)	https://kinokrad.co/282989-lizzi-maguayr-2-sezon-2002.html	8	2002	США	драма, комедия, семейный	Сэвидж Стив Холланд, Стив Де Джарнатт, Марк Росман	22
7935	Звездные врата: ЗВ-1 (6 сезон)	https://kinokrad.co/281547-zvezdnye-vrata-zv-1-6-sezon-2002.html	10	2002	США, Канада	фантастика, боевик, приключения	Питер ДеЛуис, Мартин Вуд, Энди Микита	43
7936	Клиника (2 сезон)	https://kinokrad.co/282823-klinika-2-sezon-2002.html	9	2002	США	драма, комедия	Майкл Алан Спиллер, Билл Лоуренс, Адам Бернштейн	22
7937	Клава, давай! (1 сезон)	https://kinokrad.co/282687-klava-davay-1-sezon-2002.html	8	2002	США	комедия	Тед Уасс, Скип Коллектор, Джонатан Уайсс	22
7938	Война Фойла (1 сезон)	https://kinokrad.co/286103-voyna-foyla-1-sezon-2002.html	7	2002	Великобритания	драма, криминал, детектив, военный	Джереми Силберстон, Стюарт Орм, Гэвин Миллар	90
7939	Хранилище 13 4 сезон (1-20 серия)	https://kinokrad.co/255740-hranilische-13-4-sezon.html	8	2002	США	фантастика, триллер, драма, детектив	Крис Фишер, Константин Макрис	43
7940	Кукла (1-12 серия)	https://kinokrad.co/255709-kukla.html	6	2002	Украина	криминал, детектив	Владимир Попков, Борис Небиеридзе	50
7941	Щит (1 сезон)	https://kinokrad.co/282317-schit-1-sezon-2002.html	8	2002	США	триллер, драма, криминал	Гай Ферленд, Скотт Бразил, Кларк Джонсон	43
7942	Прослушка (1 сезон)	https://kinokrad.co/282127-proslushka-1-sezon-2002.html	8	2002	США	триллер, драма, криминал	Джо Чаппелль, Эрнест Р. Дикерсон, Кларк Джонсон	60
7943	Близкие друзья (2 сезон)	https://kinokrad.co/281630-blizkie-druzya-2-sezon-2002.html	10	2002	США, Канада	драма	Майкл ДеКарло, Келли Макин, Кевин Инч	45
7944	Место преступления Лас-Вегас 3 сезон (1-23 серия)	https://kinokrad.co/274445-c-s-i-mesto-prestupleniya-3-sezon.html	9	2002	США, Канада	триллер, драма, криминал, детектив	Кеннет Финк, Ричард Дж. Льюис, Алек Смайт	43
7945	Секс в большом городе 5 сезон (1-8 серия)	https://kinokrad.co/281191-seks-v-bolshom-gorode-5-sezon.html	7	2002	США	мелодрама, комедия	Майкл Патрик Кинг, Аллен Култер, Майкл Энглер	22
7946	Симпсоны 14 сезон (1-22 серия)	https://kinokrad.co/274218-simpsony-14-sezon.html	10	2002	США	мультфильм, комедия	Марк Керклэнд, Стивен Дин Мур, Джим Рирдон	22
7947	Клан Сопрано (4 сезон)	https://kinokrad.co/282111-klan-soprano-4-sezon-2002.html	9	2002	США	драма, криминал	Тимоти Ван Паттен, Джон Паттерсон, Аллен Култер	55
7948	Друзья 9 сезон (1-24 серия)	https://kinokrad.co/274054-druzya-9-sezon.html	9	2002	США	мелодрама, комедия	Гари Хэлворсон, Кевин Брайт, Майкл Лембек	22
7949	Парни из Трейлерпарка (9 сезон)	https://kinokrad.co/323603-parni-iz-treylerparka-9-sezon.html	6	2001	Канада	комедия, криминал	Майк Клаттенбёрг, Рон Мерфи, Кори Боулз	30
7950	Западное крыло (3 сезон)	https://kinokrad.co/318678-zapadnoe-krylo-3-sezon-2001.html	7	2001	США	драма	Крис Мисиано, Алекс Грейвз, Томас Шламми	43
7952	Человек ниоткуда (1 сезон)	https://kinokrad.co/301433-chelovek-niotkuda-1-sezon-2001.html	7	2001	США	боевик, триллер, драма, детектив	Стив Стэффорд, Иэн Тойнтон, Джеймс Уитмор мл	44
7953	Закон и порядок. Специальный корпус (3 сезон)	https://kinokrad.co/300177-zakon-i-poryadok-specialnyy-korpus-3-sezon-2001.html	6	2001	США	триллер, драма, криминал, детектив	Дэвид Платт, Питер Лето, Жан Де Сегонзак	43
7954	Звездные бои насмерть (4 сезон)	https://kinokrad.co/321290-zvezdnye-boi-nasmert-4-sezon.html	3	2001	США	мультфильм, боевик, комедия, спорт	Эрик Фогель, Дэйв Томас, Джек Флетчер	21
7955	Баффи – истребительница вампиров (6 сезон)	https://kinokrad.co/319918-baffi-istrebitelnica-vampirov-6-sezon-2001.html	7	2001	США	фэнтези, боевик, драма, мелодрама, мистика	Джосс Уидон, Джеймс А. Контнер, Дэвид Соломон	43
7956	Пуаро (8 сезон)	https://kinokrad.co/318910-puaro-8-sezon-2001.html	8	2001	Великобритания	триллер, драма, криминал, детектив	Эдвард Беннет, Ренни Рай, Эндрю Грив	90
7957	Парижский антиквар (1 сезон)	https://kinokrad.co/309503-parizhskiy-antikvar-1-sezon-2001.html	5	2001	Россия	криминал, детектив	Игорь Шавлак	50
7958	Парни из Трейлерпарка (1 сезон)	https://kinokrad.co/321182-parni-iz-treylerparka-1-sezon-2001.html	5	2001	Канада	драма, комедия, криминал	Майк Клаттенбёрг, Рон Мерфи, Кори Боулз	30
7959	Одинокие стрелки (1 сезон)	https://kinokrad.co/300941-odinokie-strelki-1-sezon-2001.html	6	2001	Канада, США	фантастика, триллер, драма	Брайан Спайсер, Ричард Комптон, Кэрол Бенкер	45
7960	Далеко во Вселенной / На краю вселенной (3 сезон)	https://kinokrad.co/300027-daleko-vo-vselennoy-na-krayu-vselennoy-3-sezon-2001.html	8	2001	Австралия, США	фантастика, приключения	Тони Тилс, Роуэн Вудс, Эндрю Проуз	43
7961	Южный Парк (5 сезон)	https://kinokrad.co/286581-yuzhnyy-park-5-sezon-2001.html	6	2001	США	мультфильм, комедия	Трей Паркер, Эрик Сточ, Мэтт Стоун	22
7962	Андромеда (2 сезон)	https://kinokrad.co/302231-andromeda-2-sezon-2001.html	8	2001	Канада, США	фантастика, фэнтези, боевик, драма, мелодрама, приключения	Хорхе Монтеси, Аллан Истмэн, Ричард Флауер	43
7963	Бухта Доусона (5 сезон)	https://kinokrad.co/283151-buhta-dousona-5-sezon-2001.html	7	2001	США	драма	Грегори Прэндж, Дэвид Семел, Дэвид Петрарка	43
7964	Сабрина – маленькая ведьма (6 сезон)	https://kinokrad.co/282791-sabrina-malenkaya-vedma-6-sezon-2001.html	8	2001	США	фэнтези, комедия, семейный	Кеннет Р. Кох, Гари Хэлворсон, Брайан К. Робертс	22
7965	Девочки Гилмор (2 сезон)	https://kinokrad.co/282899-devochki-gilmor-2-sezon-2001.html	7	2001	США	драма, комедия	Джеми Бэббит, Эми Шерман-Палладино, Крис Лонг	43
7966	Самурай Джек (1 сезон)	https://kinokrad.co/287207-samuray-dzhek-1-sezon-2001.html	7	2001	США	мультфильм, фантастика, фэнтези, боевик, триллер, приключения	Генндий Тартаковский, Рэнди Майерс, Роберт Альварез	22
7967	Темный рыцарь (2 сезон)	https://kinokrad.co/286509-temnyy-rycar-2-sezon-2001.html	7	2001	Великобритания	фэнтези, приключения	Кит Клэкстон, Терри Марсел, Харли Коклисс	48
7968	Гриффины (3 сезон)	https://kinokrad.co/281997-griffiny-3-sezon-2001.html	7	2001	США	мультфильм, комедия	Питер Шин, Джеймс Пурдум, Доминик Бьянчи	22
7969	Истории папы Кролика (1 сезон)	https://kinokrad.co/285517-istorii-papy-krolika-1-sezon-2001.html	7	2001	Франция, Канада	мультфильм, комедия, семейный	Эрик Бертье, Moran Caouissin	26
7970	Слишком мало времени (1 сезон)	https://kinokrad.co/283085-slishkom-malo-vremeni-1-sezon-2001.html	8	2001	США	комедия	Рич Коррелл, Джин Сагал, Марк Сендроуски	22
7971	Темный ангел (2 сезон)	https://kinokrad.co/287117-temnyy-angel-2-sezon-2001.html	8	2001	США	фантастика, боевик, драма, детектив	Джефф Вулнаф, Томас Дж. Райт, Джо Энн Фогл	43
7972	Лексс (4 сезон)	https://kinokrad.co/282995-lekss-4-sezon-2001.html	7	2001	Канада, Германия, Великобритания, США	фантастика, фэнтези, комедия, приключения	Крис Боулд, Пол Донован, Кристоф Шреве	43
7973	Малкольм в центре внимания (3 сезон)	https://kinokrad.co/284307-malkolm-v-centre-vnimaniya-3-sezon-2001.html	8	2001	США	комедия	Тодд Холлэнд, Джеффри Мэлман, Кен Куопис	22
7974	Звездные врата: ЗВ-1 (5 сезон)	https://kinokrad.co/281546-zvezdnye-vrata-zv-1-5-sezon-2001.html	10	2001	США, Канада	фантастика, боевик, приключения	Питер ДеЛуис, Мартин Вуд, Энди Микита	43
7975	Секретные материалы (9 сезон)	https://kinokrad.co/286559-sekretnye-materialy-9-sezon-2001.html	9	2001	Канада	фантастика, триллер, драма, детектив	Ким Мэннерс, Роб Боумен, Дэвид Наттер	43
7976	Хеллсинг: Война с нечистью (1 сезон)	https://kinokrad.co/291652-hellsing-voyna-s-nechistyu-1-sezon-2001.html	9	2001	Япония	аниме, мультфильм, ужасы, фэнтези, боевик, триллер	Толизин Джаффе, Цутому Айда, Ясунори Урата	23
7977	Агентство НЛС (1 сезон)	https://kinokrad.co/287695-agentstvo-nls-1-sezon-2001.html	7	2001	Россия	комедия, детектив, приключения	Дмитрий Парменов	43
7978	Крот (1 сезон)	https://kinokrad.co/283388-krot-1-sezon-2015.html	8	2001	Россия	драма, криминал	Эрнест Ясан	51
7979	Лиззи Магуайр (1 сезон)	https://kinokrad.co/282988-lizzi-maguayr-1-sezon-2001.html	8	2001	США	драма, комедия, семейный	Сэвидж Стив Холланд, Стив Де Джарнатт, Марк Росман	22
7980	Клиника (1 сезон)	https://kinokrad.co/282822-klinika-1-sezon-2001.html	9	2001	США	драма, комедия	Майкл Алан Спиллер, Билл Лоуренс, Адам Бернштейн	22
7981	Улицы разбитых фонарей (4 сезон)	https://kinokrad.co/285181-ulicy-razbityh-fonarey-4-sezon-2001.html	7	2001	Россия	боевик, драма, криминал, приключения	Александр Рогожкин, Дмитрий Светозаров, Кирилл Капица	48
7982	Место преступления Лас-Вегас 2 сезон (1-23 серия)	https://kinokrad.co/274444-c-s-i-mesto-prestupleniya-2-sezon.html	8	2001	США, Канада	триллер, драма, криминал, детектив	Кеннет Финк, Ричард Дж. Льюис, Алек Смайт	43
7983	Футурама 7 сезон (1-26 серия)	https://kinokrad.co/255798-futurama-7-sezon.html	8	2001	США	мультфильм, фантастика, комедия	Питер Аванзино, Брэт Хааланд	22
7984	Секс в большом городе 4 сезон (1-18 серия)	https://kinokrad.co/281190-seks-v-bolshom-gorode-4-sezon.html	7	2001	США	мелодрама, комедия	Майкл Патрик Кинг, Аллен Култер, Майкл Энглер	22
7985	Симпсоны 13 сезон (1-22 серия)	https://kinokrad.co/274217-simpsony-13-sezon.html	10	2001	США	мультфильм, комедия	Марк Керклэнд, Стивен Дин Мур, Джим Рирдон	22
7986	Клан Сопрано (3 сезон)	https://kinokrad.co/282110-klan-soprano-3-sezon-2001.html	9	2001	США	драма, криминал	Тимоти Ван Паттен, Джон Паттерсон, Аллен Култер	55
7987	Футурама 4 сезон (1-18 серия)	https://kinokrad.co/274039-futurama-4-sezon.html	8	2001	США	мультфильм, фантастика, комедия	Питер Аванзино, Брэт Хааланд, Грегг Ванцо	22
7988	Друзья 8 сезон (1-24 серия)	https://kinokrad.co/274053-druzya-8-sezon.html	9	2001	США	мелодрама, комедия	Гари Хэлворсон, Кевин Брайт, Майкл Лембек	22
7989	Книжный магазин Блэка (1 сезон)	https://kinokrad.co/319334-knizhnyy-magazin-bleka-1-sezon-2000.html	8	2000	Великобритания	комедия	Мартин Деннис, Грэхэм Лайнхэн, Ник Вуд	25
7990	Западное крыло (2 сезон)	https://kinokrad.co/318674-zapadnoe-krylo-2-sezon-2000.html	5	2000	США	драма	Крис Мисиано, Алекс Грейвз, Томас Шламми	43
7991	Король Квинса (3 сезон)	https://kinokrad.co/310510-korol-kvinsa-3-sezon-2000.html	7	2000	США	комедия	Роб Шиллер, Джеймс Уиддоуз, Памела Фрайман	22
7992	Закон и порядок. Специальный корпус (2 сезон)	https://kinokrad.co/300174-zakon-i-poryadok-specialnyy-korpus-2-sezon-2000.html	7	2000	США	триллер, драма, криминал, детектив	Дэвид Платт, Питер Лето, Жан Де Сегонзак	43
7993	Звездные бои насмерть (3 сезон)	https://kinokrad.co/321286-zvezdnye-boi-nasmert-3-sezon.html	5	2000	США	мультфильм, боевик, комедия, спорт	Эрик Фогель, Дэйв Томас, Джек Флетчер	21
7994	Беглец: Погоня продолжается (1 сезон)	https://kinokrad.co/319946-beglec-pogonya-prodolzhaetsya-1-sezon-2000.html	7	2000	США	боевик, драма	Джеймс Фроули, Ричард Комптон, Микаэл Саломон	43
7995	Баффи – истребительница вампиров (5 сезон)	https://kinokrad.co/319914-baffi-istrebitelnica-vampirov-5-sezon-2000.html	7	2000	США	фэнтези, боевик, драма, мелодрама	Джосс Уидон, Джеймс А. Контнер, Дэвид Соломон	43
7996	Пуаро (7 сезон)	https://kinokrad.co/318902-puaro-7-sezon-2000.html	8	2000	Великобритания	триллер, драма, криминал, детектив	Эдвард Беннет, Ренни Рай, Эндрю Грив	90
7997	Безмолвный свидетель (5 сезон)	https://kinokrad.co/299910-bezmolvnyy-svidetel-5-sezon-2000.html	6	2000	Великобритания	драма, криминал, детектив	Тадеус О’Салливан, Дэвид Ричардс, Ричард Сайни	43
7998	Далеко во Вселенной / На краю вселенной (2 сезон)	https://kinokrad.co/300024-daleko-vo-vselennoy-na-krayu-vselennoy-2-sezon-2000.html	8	2000	Австралия, США	фантастика, приключения	Тони Тилс, Роуэн Вудс, Эндрю Проуз	43
7999	Южный Парк (4 сезон)	https://kinokrad.co/286579-yuzhnyy-park-4-sezon-2000.html	6	2000	США	мультфильм, комедия	Трей Паркер, Эрик Сточ, Мэтт Стоун	22
8000	Андромеда (1 сезон)	https://kinokrad.co/302228-andromeda-1-sezon-2000.html	7	2000	Канада, США	фантастика, фэнтези, боевик, драма, мелодрама, приключения	Хорхе Монтеси, Аллан Истмэн, Ричард Флауер	43
8001	Звездные врата: ЗВ-1 (7 сезон)	https://kinokrad.co/281548-zvezdnye-vrata-zv-1-7-sezon-2003.html	10	2003	США, Канада	фантастика, боевик, приключения	Питер ДеЛуис, Мартин Вуд, Энди Микита	43
8002	Клиника (3 сезон)	https://kinokrad.co/282824-klinika-3-sezon-2003.html	9	2003	США	драма, комедия	Майкл Алан Спиллер, Билл Лоуренс, Адам Бернштейн	22
8003	Щит (2 сезон)	https://kinokrad.co/282318-schit-2-sezon-2003.html	7	2003	США	триллер, драма, криминал	Гай Ферленд, Скотт Бразил, Кларк Джонсон	43
8004	Клава, давай! (2 сезон)	https://kinokrad.co/282688-klava-davay-2-sezon-2003.html	8	2003	США	комедия	Тед Уасс, Скип Коллектор, Джонатан Уайсс	22
8005	Война Фойла (2 сезон)	https://kinokrad.co/286143-voyna-foyla-2-sezon-2003.html	7	2003	Великобритания	драма, криминал, детектив, военный	Джереми Силберстон, Стюарт Орм, Гэвин Миллар	90
8006	Оперативный псевдоним (1 сезон)	https://kinokrad.co/284699-operativnyy-psevdonim-1-sezon-2003.html	8	2003	Россия	боевик, криминал	Игорь Талпа	45
8007	Прослушка (2 сезон)	https://kinokrad.co/282128-proslushka-2-sezon-2003.html	8	2003	США	триллер, драма, криминал	Джо Чаппелль, Эрнест Р. Дикерсон, Кларк Джонсон	60
8008	Части тела 1 сезон (1-13 серия)	https://kinokrad.co/281264-chasti-tela-1-sezon.html	8	2003	США	драма	Майкл М. Робин, Элоди Кин, Райан Мерфи	43
8009	Близкие друзья (3 сезон)	https://kinokrad.co/281631-blizkie-druzya-3-sezon-2003.html	7	2003	США, Канада	драма	Майкл ДеКарло, Келли Макин, Кевин Инч	45
8010	Улицы разбитых фонарей (5 сезон)	https://kinokrad.co/285183-ulicy-razbityh-fonarey-5-sezon-2003.html	7	2003	Россия	боевик, драма, криминал, приключения	Александр Рогожкин, Дмитрий Светозаров, Кирилл Капица	48
8011	Место преступления Лас-Вегас 4 сезон (1-23 серия)	https://kinokrad.co/274446-c-s-i-mesto-prestupleniya-4-sezon.html	8	2003	США, Канада	триллер, драма, криминал, детектив	Кеннет Финк, Ричард Дж. Льюис, Алек Смайт	43
8012	Друзья 10 сезон	https://kinokrad.co/256146-druzya-10-sezon.html	9	2003	США	мелодрама, комедия	Гари Хэлворсон, Кевин Брайт	22
8013	Симпсоны 15 сезон (1-22 серия)	https://kinokrad.co/274219-simpsony-15-sezon.html	10	2003	США	мультфильм, комедия	Марк Керклэнд, Стивен Дин Мур, Джим Рирдон	22
8014	Секс в большом городе 6 сезон (1-20 серия)	https://kinokrad.co/255716-seks-v-bolshom-gorode-6-sezon.html	8	2003	США	мелодрама, комедия	Майкл Патрик Кинг, Аллен Култер	22
8015	Бригада (1 сезон)	https://kinokrad.co/305504-brigada-1-sezon.html	7	2002	Россия	драма, криминал	Алексей Сидоров	52
8016	Футурама 5 сезон	https://kinokrad.co/274040-futurama-5.html	7	2002	США	мультфильм, фантастика, комедия	Питер Аванзино, Брэт Хааланд, Грегг Ванцо	22
8017	Книжный магазин Блэка (2 сезон)	https://kinokrad.co/319442-knizhnyy-magazin-bleka-2-sezon-2002.html	8	2002	Великобритания	комедия	Мартин Деннис, Грэхэм Лайнхэн, Ник Вуд	25
8018	Западное крыло (4 сезон)	https://kinokrad.co/318682-zapadnoe-krylo-4-sezon-2002.html	7	2002	США	драма	Крис Мисиано, Алекс Грейвз, Томас Шламми	43
8019	Король Квинса (5 сезон)	https://kinokrad.co/311002-korol-kvinsa-5-sezon-2002.html	7	2002	США	комедия	Роб Шиллер, Джеймс Уиддоуз, Памела Фрайман	22
8020	Закон и порядок. Специальный корпус (4 сезон)	https://kinokrad.co/300180-zakon-i-poryadok-specialnyy-korpus-4-sezon-2002.html	7	2002	США	триллер, драма, криминал, детектив	Дэвид Платт, Питер Лето, Жан Де Сегонзак	43
8021	Баффи – истребительница вампиров (7 сезон)	https://kinokrad.co/319922-baffi-istrebitelnica-vampirov-7-sezon-2002.html	8	2002	США	фэнтези, боевик, драма, мелодрама	Джосс Уидон, Джеймс А. Контнер, Дэвид Соломон	43
8022	Парни из Трейлерпарка (2 сезон)	https://kinokrad.co/321186-parni-iz-treylerparka-2-sezon-2002.html	7	2002	Канада	драма, комедия, криминал	Майк Клаттенбёрг, Рон Мерфи, Кори Боулз	30
8023	Безмолвный свидетель (6 сезон)	https://kinokrad.co/299913-bezmolvnyy-svidetel-6-sezon-2002.html	7	2002	Великобритания	драма, криминал, детектив	Тадеус О’Салливан, Дэвид Ричардс, Ричард Сайни	43
8024	Далеко во Вселенной / На краю вселенной (4 сезон)	https://kinokrad.co/300030-daleko-vo-vselennoy-na-krayu-vselennoy-4-sezon-2002.html	8	2002	Австралия, США	фантастика, приключения	Тони Тилс, Роуэн Вудс, Эндрю Проуз	43
8025	Южный Парк (6 сезон)	https://kinokrad.co/286583-yuzhnyy-park-6-sezon-2002.html	6	2002	США	мультфильм, комедия	Трей Паркер, Эрик Сточ, Мэтт Стоун	22
8026	Андромеда (3 сезон)	https://kinokrad.co/302234-andromeda-3-sezon-2002.html	8	2002	Канада, США	фантастика, фэнтези, боевик, драма, мелодрама, приключения	Хорхе Монтеси, Аллан Истмэн, Ричард Флауер	43
8027	Бухта Доусона (6 сезон)	https://kinokrad.co/283152-buhta-dousona-6-sezon-2002.html	7	2002	США	драма	Грегори Прэндж, Дэвид Семел, Дэвид Петрарка	43
8028	C.S.I.: Майами (1 сезон)	https://kinokrad.co/291655-c-s-i-mayami-1-sezon-2002.html	9	2002	США	боевик, триллер, драма, криминал, детектив	Сэм Хилл, Джо Чаппелль, Скотт Лаутанен	43
8029	Сабрина – маленькая ведьма (7 сезон)	https://kinokrad.co/282792-sabrina-malenkaya-vedma-7-sezon-2002.html	7	2002	США	фэнтези, комедия, семейный	Кеннет Р. Кох, Гари Хэлворсон, Брайан К. Робертс	22
8030	Девочки Гилмор (3 сезон)	https://kinokrad.co/282900-devochki-gilmor-3-sezon-2002.html	7	2002	США	драма, комедия	Джеми Бэббит, Эми Шерман-Палладино, Крис Лонг	43
8031	Самурай Джек (3 сезон)	https://kinokrad.co/287211-samuray-dzhek-3-sezon-2002.html	7	2002	США	мультфильм, фантастика, фэнтези, боевик, триллер, приключения	Генндий Тартаковский, Рэнди Майерс, Роберт Альварез	22
8032	Самурай Джек (2 сезон)	https://kinokrad.co/287209-samuray-dzhek-2-sezon-2002.html	7	2002	США	мультфильм, фантастика, фэнтези, боевик, триллер, приключения	Генндий Тартаковский, Рэнди Майерс, Роберт Альварез	22
8033	Малкольм в центре внимания (4 сезон)	https://kinokrad.co/284309-malkolm-v-centre-vnimaniya-4-sezon-2002.html	8	2002	США	комедия	Тодд Холлэнд, Джеффри Мэлман, Кен Куопис	22
8034	Лиззи Магуайр (2 сезон)	https://kinokrad.co/282989-lizzi-maguayr-2-sezon-2002.html	8	2002	США	драма, комедия, семейный	Сэвидж Стив Холланд, Стив Де Джарнатт, Марк Росман	22
8035	Звездные врата: ЗВ-1 (6 сезон)	https://kinokrad.co/281547-zvezdnye-vrata-zv-1-6-sezon-2002.html	10	2002	США, Канада	фантастика, боевик, приключения	Питер ДеЛуис, Мартин Вуд, Энди Микита	43
8036	Клиника (2 сезон)	https://kinokrad.co/282823-klinika-2-sezon-2002.html	9	2002	США	драма, комедия	Майкл Алан Спиллер, Билл Лоуренс, Адам Бернштейн	22
8037	Клава, давай! (1 сезон)	https://kinokrad.co/282687-klava-davay-1-sezon-2002.html	8	2002	США	комедия	Тед Уасс, Скип Коллектор, Джонатан Уайсс	22
8038	Война Фойла (1 сезон)	https://kinokrad.co/286103-voyna-foyla-1-sezon-2002.html	7	2002	Великобритания	драма, криминал, детектив, военный	Джереми Силберстон, Стюарт Орм, Гэвин Миллар	90
8039	Хранилище 13 4 сезон (1-20 серия)	https://kinokrad.co/255740-hranilische-13-4-sezon.html	8	2002	США	фантастика, триллер, драма, детектив	Крис Фишер, Константин Макрис	43
8040	Кукла (1-12 серия)	https://kinokrad.co/255709-kukla.html	6	2002	Украина	криминал, детектив	Владимир Попков, Борис Небиеридзе	50
8041	Щит (1 сезон)	https://kinokrad.co/282317-schit-1-sezon-2002.html	8	2002	США	триллер, драма, криминал	Гай Ферленд, Скотт Бразил, Кларк Джонсон	43
8042	Прослушка (1 сезон)	https://kinokrad.co/282127-proslushka-1-sezon-2002.html	8	2002	США	триллер, драма, криминал	Джо Чаппелль, Эрнест Р. Дикерсон, Кларк Джонсон	60
8043	Близкие друзья (2 сезон)	https://kinokrad.co/281630-blizkie-druzya-2-sezon-2002.html	10	2002	США, Канада	драма	Майкл ДеКарло, Келли Макин, Кевин Инч	45
8044	Место преступления Лас-Вегас 3 сезон (1-23 серия)	https://kinokrad.co/274445-c-s-i-mesto-prestupleniya-3-sezon.html	9	2002	США, Канада	триллер, драма, криминал, детектив	Кеннет Финк, Ричард Дж. Льюис, Алек Смайт	43
8045	Секс в большом городе 5 сезон (1-8 серия)	https://kinokrad.co/281191-seks-v-bolshom-gorode-5-sezon.html	7	2002	США	мелодрама, комедия	Майкл Патрик Кинг, Аллен Култер, Майкл Энглер	22
8046	Симпсоны 14 сезон (1-22 серия)	https://kinokrad.co/274218-simpsony-14-sezon.html	10	2002	США	мультфильм, комедия	Марк Керклэнд, Стивен Дин Мур, Джим Рирдон	22
8047	Клан Сопрано (4 сезон)	https://kinokrad.co/282111-klan-soprano-4-sezon-2002.html	9	2002	США	драма, криминал	Тимоти Ван Паттен, Джон Паттерсон, Аллен Култер	55
8048	Друзья 9 сезон (1-24 серия)	https://kinokrad.co/274054-druzya-9-sezon.html	9	2002	США	мелодрама, комедия	Гари Хэлворсон, Кевин Брайт, Майкл Лембек	22
8049	Парни из Трейлерпарка (9 сезон)	https://kinokrad.co/323603-parni-iz-treylerparka-9-sezon.html	6	2001	Канада	комедия, криминал	Майк Клаттенбёрг, Рон Мерфи, Кори Боулз	30
8050	Западное крыло (3 сезон)	https://kinokrad.co/318678-zapadnoe-krylo-3-sezon-2001.html	7	2001	США	драма	Крис Мисиано, Алекс Грейвз, Томас Шламми	43
8051	Король Квинса (4 сезон)	https://kinokrad.co/310922-korol-kvinsa-4-sezon-2001.html	9	2001	США	комедия	Роб Шиллер, Джеймс Уиддоуз, Памела Фрайман	22
8052	Человек ниоткуда (1 сезон)	https://kinokrad.co/301433-chelovek-niotkuda-1-sezon-2001.html	7	2001	США	боевик, триллер, драма, детектив	Стив Стэффорд, Иэн Тойнтон, Джеймс Уитмор мл	44
8053	Закон и порядок. Специальный корпус (3 сезон)	https://kinokrad.co/300177-zakon-i-poryadok-specialnyy-korpus-3-sezon-2001.html	6	2001	США	триллер, драма, криминал, детектив	Дэвид Платт, Питер Лето, Жан Де Сегонзак	43
8054	Звездные бои насмерть (4 сезон)	https://kinokrad.co/321290-zvezdnye-boi-nasmert-4-sezon.html	3	2001	США	мультфильм, боевик, комедия, спорт	Эрик Фогель, Дэйв Томас, Джек Флетчер	21
8055	Баффи – истребительница вампиров (6 сезон)	https://kinokrad.co/319918-baffi-istrebitelnica-vampirov-6-sezon-2001.html	7	2001	США	фэнтези, боевик, драма, мелодрама, мистика	Джосс Уидон, Джеймс А. Контнер, Дэвид Соломон	43
8056	Пуаро (8 сезон)	https://kinokrad.co/318910-puaro-8-sezon-2001.html	8	2001	Великобритания	триллер, драма, криминал, детектив	Эдвард Беннет, Ренни Рай, Эндрю Грив	90
8057	Парижский антиквар (1 сезон)	https://kinokrad.co/309503-parizhskiy-antikvar-1-sezon-2001.html	5	2001	Россия	криминал, детектив	Игорь Шавлак	50
8058	Парни из Трейлерпарка (1 сезон)	https://kinokrad.co/321182-parni-iz-treylerparka-1-sezon-2001.html	5	2001	Канада	драма, комедия, криминал	Майк Клаттенбёрг, Рон Мерфи, Кори Боулз	30
8059	Одинокие стрелки (1 сезон)	https://kinokrad.co/300941-odinokie-strelki-1-sezon-2001.html	6	2001	Канада, США	фантастика, триллер, драма	Брайан Спайсер, Ричард Комптон, Кэрол Бенкер	45
8060	Далеко во Вселенной / На краю вселенной (3 сезон)	https://kinokrad.co/300027-daleko-vo-vselennoy-na-krayu-vselennoy-3-sezon-2001.html	8	2001	Австралия, США	фантастика, приключения	Тони Тилс, Роуэн Вудс, Эндрю Проуз	43
8061	Южный Парк (5 сезон)	https://kinokrad.co/286581-yuzhnyy-park-5-sezon-2001.html	6	2001	США	мультфильм, комедия	Трей Паркер, Эрик Сточ, Мэтт Стоун	22
8062	Андромеда (2 сезон)	https://kinokrad.co/302231-andromeda-2-sezon-2001.html	8	2001	Канада, США	фантастика, фэнтези, боевик, драма, мелодрама, приключения	Хорхе Монтеси, Аллан Истмэн, Ричард Флауер	43
8063	Бухта Доусона (5 сезон)	https://kinokrad.co/283151-buhta-dousona-5-sezon-2001.html	7	2001	США	драма	Грегори Прэндж, Дэвид Семел, Дэвид Петрарка	43
8064	Сабрина – маленькая ведьма (6 сезон)	https://kinokrad.co/282791-sabrina-malenkaya-vedma-6-sezon-2001.html	8	2001	США	фэнтези, комедия, семейный	Кеннет Р. Кох, Гари Хэлворсон, Брайан К. Робертс	22
8065	Девочки Гилмор (2 сезон)	https://kinokrad.co/282899-devochki-gilmor-2-sezon-2001.html	7	2001	США	драма, комедия	Джеми Бэббит, Эми Шерман-Палладино, Крис Лонг	43
8066	Самурай Джек (1 сезон)	https://kinokrad.co/287207-samuray-dzhek-1-sezon-2001.html	7	2001	США	мультфильм, фантастика, фэнтези, боевик, триллер, приключения	Генндий Тартаковский, Рэнди Майерс, Роберт Альварез	22
8067	Темный рыцарь (2 сезон)	https://kinokrad.co/286509-temnyy-rycar-2-sezon-2001.html	7	2001	Великобритания	фэнтези, приключения	Кит Клэкстон, Терри Марсел, Харли Коклисс	48
8068	Гриффины (3 сезон)	https://kinokrad.co/281997-griffiny-3-sezon-2001.html	7	2001	США	мультфильм, комедия	Питер Шин, Джеймс Пурдум, Доминик Бьянчи	22
8069	Истории папы Кролика (1 сезон)	https://kinokrad.co/285517-istorii-papy-krolika-1-sezon-2001.html	7	2001	Франция, Канада	мультфильм, комедия, семейный	Эрик Бертье, Moran Caouissin	26
8070	Слишком мало времени (1 сезон)	https://kinokrad.co/283085-slishkom-malo-vremeni-1-sezon-2001.html	8	2001	США	комедия	Рич Коррелл, Джин Сагал, Марк Сендроуски	22
8071	Темный ангел (2 сезон)	https://kinokrad.co/287117-temnyy-angel-2-sezon-2001.html	8	2001	США	фантастика, боевик, драма, детектив	Джефф Вулнаф, Томас Дж. Райт, Джо Энн Фогл	43
8072	Лексс (4 сезон)	https://kinokrad.co/282995-lekss-4-sezon-2001.html	7	2001	Канада, Германия, Великобритания, США	фантастика, фэнтези, комедия, приключения	Крис Боулд, Пол Донован, Кристоф Шреве	43
8073	Малкольм в центре внимания (3 сезон)	https://kinokrad.co/284307-malkolm-v-centre-vnimaniya-3-sezon-2001.html	8	2001	США	комедия	Тодд Холлэнд, Джеффри Мэлман, Кен Куопис	22
8074	Звездные врата: ЗВ-1 (5 сезон)	https://kinokrad.co/281546-zvezdnye-vrata-zv-1-5-sezon-2001.html	10	2001	США, Канада	фантастика, боевик, приключения	Питер ДеЛуис, Мартин Вуд, Энди Микита	43
8075	Секретные материалы (9 сезон)	https://kinokrad.co/286559-sekretnye-materialy-9-sezon-2001.html	9	2001	Канада	фантастика, триллер, драма, детектив	Ким Мэннерс, Роб Боумен, Дэвид Наттер	43
8076	Хеллсинг: Война с нечистью (1 сезон)	https://kinokrad.co/291652-hellsing-voyna-s-nechistyu-1-sezon-2001.html	9	2001	Япония	аниме, мультфильм, ужасы, фэнтези, боевик, триллер	Толизин Джаффе, Цутому Айда, Ясунори Урата	23
8077	Агентство НЛС (1 сезон)	https://kinokrad.co/287695-agentstvo-nls-1-sezon-2001.html	7	2001	Россия	комедия, детектив, приключения	Дмитрий Парменов	43
8078	Крот (1 сезон)	https://kinokrad.co/283388-krot-1-sezon-2015.html	8	2001	Россия	драма, криминал	Эрнест Ясан	51
8079	Лиззи Магуайр (1 сезон)	https://kinokrad.co/282988-lizzi-maguayr-1-sezon-2001.html	8	2001	США	драма, комедия, семейный	Сэвидж Стив Холланд, Стив Де Джарнатт, Марк Росман	22
8080	Клиника (1 сезон)	https://kinokrad.co/282822-klinika-1-sezon-2001.html	9	2001	США	драма, комедия	Майкл Алан Спиллер, Билл Лоуренс, Адам Бернштейн	22
8081	Улицы разбитых фонарей (4 сезон)	https://kinokrad.co/285181-ulicy-razbityh-fonarey-4-sezon-2001.html	7	2001	Россия	боевик, драма, криминал, приключения	Александр Рогожкин, Дмитрий Светозаров, Кирилл Капица	48
8082	Место преступления Лас-Вегас 2 сезон (1-23 серия)	https://kinokrad.co/274444-c-s-i-mesto-prestupleniya-2-sezon.html	8	2001	США, Канада	триллер, драма, криминал, детектив	Кеннет Финк, Ричард Дж. Льюис, Алек Смайт	43
8083	Футурама 7 сезон (1-26 серия)	https://kinokrad.co/255798-futurama-7-sezon.html	8	2001	США	мультфильм, фантастика, комедия	Питер Аванзино, Брэт Хааланд	22
8084	Секс в большом городе 4 сезон (1-18 серия)	https://kinokrad.co/281190-seks-v-bolshom-gorode-4-sezon.html	7	2001	США	мелодрама, комедия	Майкл Патрик Кинг, Аллен Култер, Майкл Энглер	22
8085	Симпсоны 13 сезон (1-22 серия)	https://kinokrad.co/274217-simpsony-13-sezon.html	10	2001	США	мультфильм, комедия	Марк Керклэнд, Стивен Дин Мур, Джим Рирдон	22
8086	Клан Сопрано (3 сезон)	https://kinokrad.co/282110-klan-soprano-3-sezon-2001.html	9	2001	США	драма, криминал	Тимоти Ван Паттен, Джон Паттерсон, Аллен Култер	55
8087	Футурама 4 сезон (1-18 серия)	https://kinokrad.co/274039-futurama-4-sezon.html	8	2001	США	мультфильм, фантастика, комедия	Питер Аванзино, Брэт Хааланд, Грегг Ванцо	22
8088	Друзья 8 сезон (1-24 серия)	https://kinokrad.co/274053-druzya-8-sezon.html	9	2001	США	мелодрама, комедия	Гари Хэлворсон, Кевин Брайт, Майкл Лембек	22
8089	Книжный магазин Блэка (1 сезон)	https://kinokrad.co/319334-knizhnyy-magazin-bleka-1-sezon-2000.html	8	2000	Великобритания	комедия	Мартин Деннис, Грэхэм Лайнхэн, Ник Вуд	25
8090	Западное крыло (2 сезон)	https://kinokrad.co/318674-zapadnoe-krylo-2-sezon-2000.html	5	2000	США	драма	Крис Мисиано, Алекс Грейвз, Томас Шламми	43
8091	Король Квинса (3 сезон)	https://kinokrad.co/310510-korol-kvinsa-3-sezon-2000.html	7	2000	США	комедия	Роб Шиллер, Джеймс Уиддоуз, Памела Фрайман	22
8092	Закон и порядок. Специальный корпус (2 сезон)	https://kinokrad.co/300174-zakon-i-poryadok-specialnyy-korpus-2-sezon-2000.html	7	2000	США	триллер, драма, криминал, детектив	Дэвид Платт, Питер Лето, Жан Де Сегонзак	43
8093	Звездные бои насмерть (3 сезон)	https://kinokrad.co/321286-zvezdnye-boi-nasmert-3-sezon.html	5	2000	США	мультфильм, боевик, комедия, спорт	Эрик Фогель, Дэйв Томас, Джек Флетчер	21
8094	Беглец: Погоня продолжается (1 сезон)	https://kinokrad.co/319946-beglec-pogonya-prodolzhaetsya-1-sezon-2000.html	7	2000	США	боевик, драма	Джеймс Фроули, Ричард Комптон, Микаэл Саломон	43
8095	Баффи – истребительница вампиров (5 сезон)	https://kinokrad.co/319914-baffi-istrebitelnica-vampirov-5-sezon-2000.html	7	2000	США	фэнтези, боевик, драма, мелодрама	Джосс Уидон, Джеймс А. Контнер, Дэвид Соломон	43
8096	Пуаро (7 сезон)	https://kinokrad.co/318902-puaro-7-sezon-2000.html	8	2000	Великобритания	триллер, драма, криминал, детектив	Эдвард Беннет, Ренни Рай, Эндрю Грив	90
8097	Безмолвный свидетель (5 сезон)	https://kinokrad.co/299910-bezmolvnyy-svidetel-5-sezon-2000.html	6	2000	Великобритания	драма, криминал, детектив	Тадеус О’Салливан, Дэвид Ричардс, Ричард Сайни	43
8098	Далеко во Вселенной / На краю вселенной (2 сезон)	https://kinokrad.co/300024-daleko-vo-vselennoy-na-krayu-vselennoy-2-sezon-2000.html	8	2000	Австралия, США	фантастика, приключения	Тони Тилс, Роуэн Вудс, Эндрю Проуз	43
8099	Южный Парк (4 сезон)	https://kinokrad.co/286579-yuzhnyy-park-4-sezon-2000.html	6	2000	США	мультфильм, комедия	Трей Паркер, Эрик Сточ, Мэтт Стоун	22
8100	Андромеда (1 сезон)	https://kinokrad.co/302228-andromeda-1-sezon-2000.html	7	2000	Канада, США	фантастика, фэнтези, боевик, драма, мелодрама, приключения	Хорхе Монтеси, Аллан Истмэн, Ричард Флауер	43
8101	Бухта Доусона (4 сезон)	https://kinokrad.co/283150-buhta-dousona-4-sezon-2000.html	8	2000	США	драма	Грегори Прэндж, Дэвид Семел, Дэвид Петрарка	43
8102	Сабрина – маленькая ведьма (5 сезон)	https://kinokrad.co/282789-sabrina-malenkaya-vedma-5-sezon-2000.html	7	2000	США	фэнтези, комедия, семейный	Кеннет Р. Кох, Гари Хэлворсон, Брайан К. Робертс	22
8103	Темный рыцарь (1 сезон)	https://kinokrad.co/286507-temnyy-rycar-1-sezon-2000.html	6	2000	Великобритания	фэнтези, приключения	Кит Клэкстон, Терри Марсел, Харли Коклисс	48
8104	Гриффины (2 сезон)	https://kinokrad.co/281996-griffiny-2-sezon-2000.html	7	2000	США	мультфильм, комедия	Питер Шин, Джеймс Пурдум, Доминик Бьянчи	22
8105	Девочки Гилмор (1 сезон)	https://kinokrad.co/282898-devochki-gilmor-1-sezon-2000.html	8	2000	США	драма, комедия	Джеми Бэббит, Эми Шерман-Палладино, Крис Лонг	43
8106	Лучшие (2 сезон)	https://kinokrad.co/282884-luchshie-2-sezon-2000.html	8	2000	США	драма, комедия	Джеми Бэббит, Майкл М. Робин, Элоди Кин	43
8107	Темный ангел (1 сезон)	https://kinokrad.co/287115-temnyy-angel-1-sezon-2000.html	8	2000	США	фантастика, боевик, драма, детектив	Джефф Вулнаф, Томас Дж. Райт, Джо Энн Фогл	43
8108	Лексс (3 сезон)	https://kinokrad.co/282994-lekss-3-sezon-2000.html	7	2000	Канада, Германия, Великобритания, США	фантастика, фэнтези, комедия, приключения	Крис Боулд, Пол Донован, Кристоф Шреве	43
8109	Малкольм в центре внимания (2 сезон)	https://kinokrad.co/284305-malkolm-v-centre-vnimaniya-2-sezon-2000.html	9	2000	США	комедия	Тодд Холлэнд, Джеффри Мэлман, Кен Куопис	22
8110	Малкольм в центре внимания (1 сезон)	https://kinokrad.co/284303-malkolm-v-centre-vnimaniya-1-sezon-2000.html	8	2000	США	комедия	Тодд Холлэнд, Джеффри Мэлман, Кен Куопис	22
8111	Звездные врата: ЗВ-1 (4 сезон)	https://kinokrad.co/281544-zvezdnye-vrata-zv-1-4-sezon-2000.html	10	2000	США, Канада	фантастика, боевик, приключения	Питер ДеЛуис, Мартин Вуд, Энди Микита	43
8112	Секретные материалы (8 сезон)	https://kinokrad.co/286557-sekretnye-materialy-8-sezon-2000.html	9	2000	Канада	фантастика, триллер, драма, детектив	Ким Мэннерс, Роб Боумен, Дэвид Наттер	43
8113	Десятое королевство (1 сезон)	https://kinokrad.co/284705-desyatoe-korolevstvo-1-cezon-2000.html	9	2000	Великобритания, Германия, США	фэнтези, мелодрама, комедия, детектив, приключения, семейный	Дэвид Карсон, Херберт Уайз	85
8114	Близкие друзья (1 сезон)	https://kinokrad.co/281629-blizkie-druzya-1-sezon-2000.html	9	2000	США, Канада	драма	Майкл ДеКарло, Келли Макин, Кевин Инч	45
8115	Улицы разбитых фонарей (3 сезон)	https://kinokrad.co/285179-ulicy-razbityh-fonarey-3-sezon-2000.html	8	2000	Россия	боевик, драма, криминал, приключения	Александр Рогожкин, Дмитрий Светозаров, Кирилл Капица	48
8116	Место преступления Лас-Вегас 1 сезон (1-23 серия)	https://kinokrad.co/274443-c-s-i-mesto-prestupleniya-1-sezon.html	8	2000	США, Канада	триллер, драма, криминал, детектив	Кеннет Финк, Ричард Дж. Льюис, Алек Смайт	43
8117	Секс в большом городе 3 сезон (1-18 серия)	https://kinokrad.co/281188-seks-v-bolshom-gorode-3-sezon.html	7	2000	США	мелодрама, комедия	Майкл Патрик Кинг, Аллен Култер, Майкл Энглер	22
8118	Симпсоны 12 сезон (1-21 серия)	https://kinokrad.co/274216-simpsony-12-sezon.html	10	2000	США	мультфильм, комедия	Марк Керклэнд, Стивен Дин Мур, Джим Рирдон	22
8119	Клан Сопрано (2 сезон)	https://kinokrad.co/282108-klan-soprano-2-sezon-2000.html	8	2000	США	драма, криминал	Тимоти Ван Паттен, Джон Паттерсон, Аллен Култер	55
8120	Футурама 3 сезон (1-22 серия)	https://kinokrad.co/274038-futurama-3-sezon.html	8	2000	США	мультфильм, фантастика, комедия	Питер Аванзино, Брэт Хааланд, Грегг Ванцо	22
8121	Друзья 7 сезон (1-24 серия)	https://kinokrad.co/274052-druzya-7-sezon.html	9	2000	США	мелодрама, комедия	Гари Хэлворсон, Кевин Брайт, Майкл Лембек	22
8122	Закон и порядок. Специальный корпус (16 сезон)	https://kinokrad.co/331613-zakon-i-poryadok.-specialnyy-korpus-16-sezon.html	5	1999	США	триллер, драма, криминал, детектив	Дэвид Платт, Питер Лето, Жан Де Сегонзак	43
8123	Западное крыло (1 сезон)	https://kinokrad.co/318670-zapadnoe-krylo-1-sezon-1999.html	5	1999	США	драма	Крис Мисиано, Алекс Грейвз, Томас Шламми	43
8124	Король Квинса (2 сезон)	https://kinokrad.co/310502-korol-kvinsa-2-sezon-1999.html	8	1999	США	комедия	Роб Шиллер, Джеймс Уиддоуз, Памела Фрайман	22
8125	Чисто английские убийства (2 сезон)	https://kinokrad.co/322711-chisto-angliyskie-ubiystva-2-sezon.html	8	1999	Великобритания	драма, криминал, детектив	Ренни Рай, Питер Смит, Ричард Холтхоуз	91
8126	Закон и порядок. Специальный корпус (1 сезон)	https://kinokrad.co/300171-zakon-i-poryadok-specialnyy-korpus-1-sezon-1999.html	8	1999	США	триллер, драма, криминал, детектив	Дэвид Платт, Питер Лето, Жан Де Сегонзак	43
8127	Звездные бои насмерть (2 сезон)	https://kinokrad.co/321282-zvezdnye-boi-nasmert-2-sezon.html	4	1999	США	мультфильм, боевик, комедия, спорт	Эрик Фогель, Дэйв Томас, Джек Флетчер	21
8128	Баффи – истребительница вампиров (4 сезон)	https://kinokrad.co/319910-baffi-istrebitelnica-vampirov-4-sezon-1999.html	7	1999	США	фэнтези, боевик, драма, мелодрама	Джосс Уидон, Джеймс А. Контнер, Дэвид Соломон	43
8129	Безмолвный свидетель (4 сезон)	https://kinokrad.co/299907-bezmolvnyy-svidetel-4-sezon-1999.html	6	1999	Великобритания	драма, криминал, детектив	Тадеус О’Салливан, Дэвид Ричардс, Ричард Сайни	43
8130	Далеко во Вселенной / На краю вселенной (1 сезон)	https://kinokrad.co/300021-daleko-vo-vselennoy-na-krayu-vselennoy-1-sezon-1999.html	8	1999	Австралия, США	фантастика, приключения	Тони Тилс, Роуэн Вудс, Эндрю Проуз	43
8131	Южный Парк (3 сезон)	https://kinokrad.co/286577-yuzhnyy-park-3-sezon-1999.html	6	1999	США	мультфильм, комедия	Трей Паркер, Эрик Сточ, Мэтт Стоун	22
8132	Секретные материалы (7 сезон)	https://kinokrad.co/286555-sekretnye-materialy-7-sezon-1999.html	9	1999	Канада	фантастика, триллер, драма, детектив	Ким Мэннерс, Роб Боумен, Дэвид Наттер	43
8133	Бухта Доусона (3 сезон)	https://kinokrad.co/283146-buhta-dousona-3-sezon-1999.html	9	1999	США	драма	Грегори Прэндж, Дэвид Семел, Дэвид Петрарка	43
8134	Сабрина – маленькая ведьма (4 сезон)	https://kinokrad.co/282788-sabrina-malenkaya-vedma-4-sezon-1999.html	7	1999	США	фэнтези, комедия, семейный	Кеннет Р. Кох, Гари Хэлворсон, Брайан К. Робертс	22
8135	Гриффины (1 сезон)	https://kinokrad.co/281995-griffiny-1-sezon-1999.html	7	1999	США	мультфильм, комедия	Питер Шин, Джеймс Пурдум, Доминик Бьянчи	22
8136	Параллельные миры (5 сезон)	https://kinokrad.co/285053-parallelnye-miry-5-sezon-1999.html	8	1999	США	фантастика, фэнтези, приключения	Ричард Комптон, Дэвид Э. Пэкинпах, Джерри О’Коннелл	43
8137	Лучшие (1 сезон)	https://kinokrad.co/282880-luchshie-1-sezon-1999.html	7	1999	США	драма, комедия	Джеми Бэббит, Майкл М. Робин, Элоди Кин	43
8138	Беверли-Хиллз 90210 (10 сезон)	https://kinokrad.co/282576-beverli-hillz-90210-10-sezon-1999.html	7	1999	США	драма, мелодрама	Дэниэл Эттиэс, Чип Чалмерс, Джейсон Пристли	45
8139	Звездные врата: ЗВ-1 (3 сезон)	https://kinokrad.co/281541-zvezdnye-vrata-zv-1-3-sezon-1999.html	10	1999	США, Канада	фантастика, боевик, приключения	Питер ДеЛуис, Мартин Вуд, Энди Микита	43
8140	Притворщик (4 сезон)	https://kinokrad.co/283213-pritvorschik-4-sezon-1999.html	8	1999	США	фантастика, триллер, драма, детектив	Фредерик Кинг Келлер, Джеймс Уитмор мл., Терренс О’Хара	43
8141	Секс в большом городе 2 сезон (1-18 серия)	https://kinokrad.co/281185-seks-v-bolshom-gorode-2-sezon.html	8	1999	США	мелодрама, комедия	Майкл Патрик Кинг, Аллен Култер, Майкл Энглер	22
8142	Футурама 1 сезон (1-13 серия)	https://kinokrad.co/274036-futurama-1-sezon.html	8	1999	США	мультфильм, фантастика, комедия	Питер Аванзино, Брэт Хааланд, Грегг Ванцо	22
8143	Футурама 2 сезон (1-19 серия)	https://kinokrad.co/274037-futurama-serial-2-sezon.html	8	1999	США	мультфильм, фантастика, комедия	Питер Аванзино, Брэт Хааланд, Грегг Ванцо	22
8144	Симпсоны 11 сезон (1-22 серия)	https://kinokrad.co/274215-simpsony-11-sezon.html	10	1999	США	мультфильм, комедия	Марк Керклэнд, Стивен Дин Мур, Джим Рирдон	22
8145	Клан Сопрано (1 сезон)	https://kinokrad.co/282107-klan-soprano-1-sezon-1999.html	9	1999	США	драма, криминал	Тимоти Ван Паттен, Джон Паттерсон, Аллен Култер	55
8146	Друзья 6 сезон (1-25 серия)	https://kinokrad.co/274051-druzya-6-sezon.html	8	1999	США	мелодрама, комедия	Гари Хэлворсон, Кевин Брайт, Майкл Лембек	22
8147	Король Квинса (1 сезон)	https://kinokrad.co/310378-korol-kvinsa-1-sezon-1998.html	8	1998	США	комедия	Роб Шиллер, Джеймс Уиддоуз, Памела Фрайман	22
8148	Звездные бои насмерть (1 сезон)	https://kinokrad.co/321274-zvezdnye-boi-nasmert-1-sezon.html	4	1998	США	мультфильм, боевик, комедия, спорт	Эрик Фогель, Дэйв Томас, Джек Флетчер	21
8149	Баффи – истребительница вампиров (3 сезон)	https://kinokrad.co/319898-baffi-istrebitelnica-vampirov-3-sezon-1998.html	7	1998	США	фэнтези, боевик, драма, мелодрама	Джосс Уидон, Джеймс А. Контнер, Дэвид Соломон	43
8150	Безмолвный свидетель (3 сезон)	https://kinokrad.co/299904-bezmolvnyy-svidetel-3-sezon-1998.html	7	1998	Великобритания	драма, криминал, детектив	Тадеус О’Салливан, Дэвид Ричардс, Ричард Сайни	43
8151	Южный Парк (2 сезон)	https://kinokrad.co/286575-yuzhnyy-park-2-sezon-1998.html	6	1998	США	мультфильм, комедия	Трей Паркер, Эрик Сточ, Мэтт Стоун	22
8152	Секретные материалы (6 сезон)	https://kinokrad.co/286553-sekretnye-materialy-6-sezon-1998.html	9	1998	Канада	фантастика, триллер, драма, детектив	Ким Мэннерс, Роб Боумен, Дэвид Наттер	43
8153	Бухта Доусона (2 сезон)	https://kinokrad.co/283145-buhta-dousona-2-sezon-1998.html	9	1998	США	драма	Грегори Прэндж, Дэвид Семел, Дэвид Петрарка	43
8154	Вавилон 5 (5 сезон)	https://kinokrad.co/282944-vavilon-5-5-sezon-1998.html	8	1998	США	фантастика, боевик, драма, приключения	Майкл Виджер, Дэвид Дж. Эгил, Джанет Грик	43
8155	Сабрина – маленькая ведьма (3 сезон)	https://kinokrad.co/282786-sabrina-malenkaya-vedma-3-sezon-1998.html	8	1998	США	фэнтези, комедия, семейный	Кеннет Р. Кох, Гари Хэлворсон, Брайан К. Робертс	22
8156	Параллельные миры (4 сезон)	https://kinokrad.co/285051-parallelnye-miry-4-sezon-1998.html	8	1998	США	фантастика, фэнтези, приключения	Ричард Комптон, Дэвид Э. Пэкинпах, Джерри О’Коннелл	43
8157	Бухта Доусона (1 сезон)	https://kinokrad.co/283144-buhta-dousona-1-sezon-1998.html	7	1998	США	драма	Грегори Прэндж, Дэвид Семел, Дэвид Петрарка	43
8158	Строго на юг (4 сезон)	https://kinokrad.co/283049-strogo-na-yug-4-sezon-1998.html	9	1998	Канада, США	драма, комедия, криминал, приключения	Джордж Блумфилд, Стив ДиМарко, Ричард Дж. Льюис	43
8159	Няня (6 сезон)	https://kinokrad.co/282705-nyanya-6-sezon-1998.html	7	1998	США	комедия	Дороти Лиман, Ли Шаллат Чемел, Питер Марк Джейкобсон	22
8160	Беверли-Хиллз 90210 (9 сезон)	https://kinokrad.co/282575-beverli-hillz-90210-9-sezon-1998.html	9	1998	США	драма, мелодрама	Дэниэл Эттиэс, Чип Чалмерс, Джейсон Пристли	45
8161	Лексс (2 сезон)	https://kinokrad.co/282992-lekss-2-sezon-1998.html	8	1998	Канада, Германия, Великобритания, США	фантастика, фэнтези, комедия, приключения	Крис Боулд, Пол Донован, Кристоф Шреве	43
8162	Звездные врата: ЗВ-1 (2 сезон)	https://kinokrad.co/281536-zvezdnye-vrata-zv-1-2-sezon-1998.html	10	1998	США, Канада	фантастика, боевик, приключения	Питер ДеЛуис, Мартин Вуд, Энди Микита	43
8163	Притворщик (3 сезон)	https://kinokrad.co/283212-pritvorschik-3-sezon-1998.html	7	1998	США	фантастика, триллер, драма, детектив	Фредерик Кинг Келлер, Джеймс Уитмор мл., Терренс О’Хара	43
8164	Улицы разбитых фонарей (2 сезон)	https://kinokrad.co/285177-ulicy-razbityh-fonarey-2-sezon-1998.html	9	1998	Россия	боевик, драма, криминал, приключения	Александр Рогожкин, Дмитрий Светозаров, Кирилл Капица	48
8165	Секс в большом городе 1 сезон (1-12 серия)	https://kinokrad.co/281183-seks-v-bolshom-gorode-1-sezon.html	7	1998	США	мелодрама, комедия	Майкл Патрик Кинг, Аллен Култер, Майкл Энглер	22
8166	Симпсоны 10 сезон (1-23 серия)	https://kinokrad.co/274214-simpsony-10-sezon.html	10	1998	США	мультфильм, комедия	Марк Керклэнд, Стивен Дин Мур, Джим Рирдон	22
8167	Друзья 5 сезон (1-24 серия)	https://kinokrad.co/274050-druzya-5-sezon.html	9	1998	США	мелодрама, комедия	Гари Хэлворсон, Кевин Брайт, Майкл Лембек	22
8168	Чисто английские убийства (1 сезон)	https://kinokrad.co/322691-chisto-angliyskie-ubiystva-1-sezon.html	7	1997	Великобритания	драма, криминал, детектив	Ренни Рай, Питер Смит, Ричард Холтхоуз	91
8169	Баффи – истребительница вампиров (2 сезон)	https://kinokrad.co/319894-baffi-istrebitelnica-vampirov-2-sezon-1997.html	7	1997	США	фэнтези, боевик, драма, мелодрама, мистика	Джосс Уидон, Джеймс А. Контнер, Дэвид Соломон	43
8170	Баффи – истребительница вампиров (1 сезон)	https://kinokrad.co/319890-baffi-istrebitelnica-vampirov-1-sezon-1997.html	8	1997	США	фэнтези, боевик, драма, мелодрама	Джосс Уидон, Джеймс А. Контнер, Дэвид Соломон	43
8171	Безмолвный свидетель (2 сезон)	https://kinokrad.co/299901-bezmolvnyy-svidetel-2-sezon-1997.html	7	1997	Великобритания	драма, криминал, детектив	Тадеус О’Салливан, Дэвид Ричардс, Ричард Сайни	43
8172	Человек-паук (5 сезон)	https://kinokrad.co/289579-chelovek-pauk-5-sezon-1997.html	7	1997	США	мультфильм, фантастика, фэнтези, боевик, триллер, драма, мелодрама, криминал, приключения, семейный	Боб Ричардсон, Роберт Шеллхорн	22
8173	Человек-паук (4 сезон)	https://kinokrad.co/289576-chelovek-pauk-4-sezon-1997.html	7	1997	США	мультфильм, фантастика, фэнтези, боевик, триллер, драма, мелодрама, криминал, приключения, семейный	Боб Ричардсон, Роберт Шеллхорн	22
8174	Южный Парк (1 сезон)	https://kinokrad.co/286573-yuzhnyy-park-1-sezon-1997.html	7	1997	США	мультфильм, комедия	Трей Паркер, Эрик Сточ, Мэтт Стоун	22
8175	Сабрина – маленькая ведьма (2 сезон)	https://kinokrad.co/282783-sabrina-malenkaya-vedma-2-sezon-1997.html	9	1997	США	фэнтези, комедия, семейный	Кеннет Р. Кох, Гари Хэлворсон, Брайан К. Робертс	22
8176	Во имя любви (1 сезон)	https://kinokrad.co/282489-vo-imya-lyubvi-1-sezon-1997.html	5	1997	Бразилия	драма, мелодрама	Александр Аванчини, Эри Кослов, Роберто Наар	48
8177	Строго на юг (3 сезон)	https://kinokrad.co/283048-strogo-na-yug-3-sezon-1997.html	8	1997	Канада, США	драма, комедия, криминал, приключения	Джордж Блумфилд, Стив ДиМарко, Ричард Дж. Льюис	43
8178	Няня (5 сезон)	https://kinokrad.co/282704-nyanya-5-sezon-1997.html	5	1997	США	комедия	Дороти Лиман, Ли Шаллат Чемел, Питер Марк Джейкобсон	22
8179	Южный Парк (16 сезон)	https://kinokrad.co/286745-yuzhnyy-park-16-sezon-2012.html	7	1997	США	мультфильм, комедия	Трей Паркер, Эрик Сточ, Мэтт Стоун	22
8180	Беверли-Хиллз 90210 (8 сезон)	https://kinokrad.co/282574-beverli-hillz-90210-8-sezon-1997.html	8	1997	США	драма, мелодрама	Дэниэл Эттиэс, Чип Чалмерс, Джейсон Пристли	45
8181	Лексс (1 сезон)	https://kinokrad.co/282990-lekss-1-sezon-1997.html	8	1997	Канада, Германия, Великобритания, США	фантастика, фэнтези, комедия, приключения	Крис Боулд, Пол Донован, Кристоф Шреве	43
8182	Секретные материалы (5 сезон)	https://kinokrad.co/286551-sekretnye-materialy-5-sezon-1997.html	9	1997	Канада	фантастика, триллер, драма, детектив	Ким Мэннерс, Роб Боумен, Дэвид Наттер	43
8183	Звездные врата: ЗВ-1 (1 сезон)	https://kinokrad.co/281535-zvezdnye-vrata-zv-1-1-sezon-1997.html	9	1997	США, Канада	фантастика, боевик, приключения	Питер ДеЛуис, Мартин Вуд, Энди Микита	43
8184	Притворщик (2 сезон)	https://kinokrad.co/283211-pritvorschik-2-sezon-1997.html	8	1997	США	фантастика, триллер, драма, детектив	Фредерик Кинг Келлер, Джеймс Уитмор мл., Терренс О’Хара	43
8185	Улицы разбитых фонарей (1 сезон)	https://kinokrad.co/285175-ulicy-razbityh-fonarey-1-sezon-1997.html	7	1997	Россия	боевик, драма, криминал, приключения	Александр Рогожкин, Дмитрий Светозаров, Кирилл Капица	48
8186	Симпсоны 9 сезон (1-25 серия)	https://kinokrad.co/274213-simpsony-9-sezon.html	10	1997	США	мультфильм, комедия	Марк Керклэнд, Стивен Дин Мур, Джим Рирдон	22
8187	Друзья 4 сезон (1-24 серия)	https://kinokrad.co/274049-druzya-4-sezon.html	9	1997	США	мелодрама, комедия	Гари Хэлворсон, Кевин Брайт, Майкл Лембек	22
8188	Безмолвный свидетель (1 сезон)	https://kinokrad.co/299898-bezmolvnyy-svidetel-1-sezon-1996.html	7	1996	Великобритания	драма, криминал, детектив	Тадеус О’Салливан, Дэвид Ричардс, Ричард Сайни	43
8189	Человек-паук (3 сезон)	https://kinokrad.co/289573-chelovek-pauk-3-sezon-1996.html	7	1996	США	мультфильм, фантастика, фэнтези, боевик, триллер, драма, мелодрама, криминал, приключения, семейный	Боб Ричардсон, Роберт Шеллхорн	22
8190	Секретные материалы (4 сезон)	https://kinokrad.co/286549-sekretnye-materialy-4-sezon-1996.html	9	1996	Канада	фантастика, триллер, драма, детектив	Ким Мэннерс, Роб Боумен, Дэвид Наттер	43
8191	Вавилон 5 (4 сезон)	https://kinokrad.co/282943-vavilon-5-4-sezon-1996.html	8	1996	США	фантастика, боевик, драма, приключения	Майкл Виджер, Дэвид Дж. Эгил, Джанет Грик	43
8192	Сабрина – маленькая ведьма (1 сезон)	https://kinokrad.co/282781-sabrina-malenkaya-vedma-1-sezon-1996.html	8	1996	США	фэнтези, комедия, семейный	Кеннет Р. Кох, Гари Хэлворсон, Брайан К. Робертс	22
8193	Черепашки мутанты ниндзя (10 сезон)	https://kinokrad.co/285515-cherepashki-mutanty-nindzya-10-sezon-1996.html	7	1996	США	мультфильм, фантастика, фэнтези, боевик, триллер, драма, комедия, криминал, детектив, приключения	Билл Вульф, Тони Лав, Майк Стюарт	22
8194	Параллельные миры (3 сезон)	https://kinokrad.co/285049-parallelnye-miry-3-sezon-1996.html	8	1996	США	фантастика, фэнтези, приключения	Ричард Комптон, Дэвид Э. Пэкинпах, Джерри О’Коннелл	43
8195	Параллельные миры (2 сезон)	https://kinokrad.co/285047-parallelnye-miry-2-sezon-1996.html	8	1996	США	фантастика, фэнтези, приключения	Ричард Комптон, Дэвид Э. Пэкинпах, Джерри О’Коннелл	43
8196	Беверли-Хиллз 90210 (7 сезон)	https://kinokrad.co/282572-beverli-hillz-90210-7-sezon-1996.html	8	1996	США	драма, мелодрама	Дэниэл Эттиэс, Чип Чалмерс, Джейсон Пристли	45
8197	Няня (4 сезон)	https://kinokrad.co/282703-nyanya-4-sezon-1996.html	6	1996	США	комедия	Дороти Лиман, Ли Шаллат Чемел, Питер Марк Джейкобсон	22
8198	Притворщик (1 сезон)	https://kinokrad.co/283210-pritvorschik-1-sezon-1996.html	9	1996	США	фантастика, триллер, драма, детектив	Фредерик Кинг Келлер, Джеймс Уитмор мл., Терренс О’Хара	43
8199	Симпсоны 8 сезон (1-25 серия)	https://kinokrad.co/274209-simpsony-8-sezon.html	10	1996	США	мультфильм, комедия	Марк Керклэнд, Стивен Дин Мур, Джим Рирдон	22
8200	Друзья 3 сезон (1-25 серия)	https://kinokrad.co/274048-druzya-3-sezon.html	8	1996	США	мелодрама, комедия	Гари Хэлворсон, Кевин Брайт, Майкл Лембек	22
8201	Бухта Доусона (4 сезон)	https://kinokrad.co/283150-buhta-dousona-4-sezon-2000.html	8	2000	США	драма	Грегори Прэндж, Дэвид Семел, Дэвид Петрарка	43
8202	Сабрина – маленькая ведьма (5 сезон)	https://kinokrad.co/282789-sabrina-malenkaya-vedma-5-sezon-2000.html	7	2000	США	фэнтези, комедия, семейный	Кеннет Р. Кох, Гари Хэлворсон, Брайан К. Робертс	22
8203	Темный рыцарь (1 сезон)	https://kinokrad.co/286507-temnyy-rycar-1-sezon-2000.html	6	2000	Великобритания	фэнтези, приключения	Кит Клэкстон, Терри Марсел, Харли Коклисс	48
8204	Гриффины (2 сезон)	https://kinokrad.co/281996-griffiny-2-sezon-2000.html	7	2000	США	мультфильм, комедия	Питер Шин, Джеймс Пурдум, Доминик Бьянчи	22
8205	Девочки Гилмор (1 сезон)	https://kinokrad.co/282898-devochki-gilmor-1-sezon-2000.html	8	2000	США	драма, комедия	Джеми Бэббит, Эми Шерман-Палладино, Крис Лонг	43
8206	Лучшие (2 сезон)	https://kinokrad.co/282884-luchshie-2-sezon-2000.html	8	2000	США	драма, комедия	Джеми Бэббит, Майкл М. Робин, Элоди Кин	43
8207	Темный ангел (1 сезон)	https://kinokrad.co/287115-temnyy-angel-1-sezon-2000.html	8	2000	США	фантастика, боевик, драма, детектив	Джефф Вулнаф, Томас Дж. Райт, Джо Энн Фогл	43
8208	Лексс (3 сезон)	https://kinokrad.co/282994-lekss-3-sezon-2000.html	7	2000	Канада, Германия, Великобритания, США	фантастика, фэнтези, комедия, приключения	Крис Боулд, Пол Донован, Кристоф Шреве	43
8209	Малкольм в центре внимания (2 сезон)	https://kinokrad.co/284305-malkolm-v-centre-vnimaniya-2-sezon-2000.html	9	2000	США	комедия	Тодд Холлэнд, Джеффри Мэлман, Кен Куопис	22
8210	Малкольм в центре внимания (1 сезон)	https://kinokrad.co/284303-malkolm-v-centre-vnimaniya-1-sezon-2000.html	8	2000	США	комедия	Тодд Холлэнд, Джеффри Мэлман, Кен Куопис	22
8211	Звездные врата: ЗВ-1 (4 сезон)	https://kinokrad.co/281544-zvezdnye-vrata-zv-1-4-sezon-2000.html	10	2000	США, Канада	фантастика, боевик, приключения	Питер ДеЛуис, Мартин Вуд, Энди Микита	43
8212	Секретные материалы (8 сезон)	https://kinokrad.co/286557-sekretnye-materialy-8-sezon-2000.html	9	2000	Канада	фантастика, триллер, драма, детектив	Ким Мэннерс, Роб Боумен, Дэвид Наттер	43
8213	Десятое королевство (1 сезон)	https://kinokrad.co/284705-desyatoe-korolevstvo-1-cezon-2000.html	9	2000	Великобритания, Германия, США	фэнтези, мелодрама, комедия, детектив, приключения, семейный	Дэвид Карсон, Херберт Уайз	85
8214	Близкие друзья (1 сезон)	https://kinokrad.co/281629-blizkie-druzya-1-sezon-2000.html	9	2000	США, Канада	драма	Майкл ДеКарло, Келли Макин, Кевин Инч	45
8215	Улицы разбитых фонарей (3 сезон)	https://kinokrad.co/285179-ulicy-razbityh-fonarey-3-sezon-2000.html	8	2000	Россия	боевик, драма, криминал, приключения	Александр Рогожкин, Дмитрий Светозаров, Кирилл Капица	48
8216	Место преступления Лас-Вегас 1 сезон (1-23 серия)	https://kinokrad.co/274443-c-s-i-mesto-prestupleniya-1-sezon.html	8	2000	США, Канада	триллер, драма, криминал, детектив	Кеннет Финк, Ричард Дж. Льюис, Алек Смайт	43
8217	Секс в большом городе 3 сезон (1-18 серия)	https://kinokrad.co/281188-seks-v-bolshom-gorode-3-sezon.html	7	2000	США	мелодрама, комедия	Майкл Патрик Кинг, Аллен Култер, Майкл Энглер	22
8218	Симпсоны 12 сезон (1-21 серия)	https://kinokrad.co/274216-simpsony-12-sezon.html	10	2000	США	мультфильм, комедия	Марк Керклэнд, Стивен Дин Мур, Джим Рирдон	22
8219	Клан Сопрано (2 сезон)	https://kinokrad.co/282108-klan-soprano-2-sezon-2000.html	8	2000	США	драма, криминал	Тимоти Ван Паттен, Джон Паттерсон, Аллен Култер	55
8220	Футурама 3 сезон (1-22 серия)	https://kinokrad.co/274038-futurama-3-sezon.html	8	2000	США	мультфильм, фантастика, комедия	Питер Аванзино, Брэт Хааланд, Грегг Ванцо	22
8221	Друзья 7 сезон (1-24 серия)	https://kinokrad.co/274052-druzya-7-sezon.html	9	2000	США	мелодрама, комедия	Гари Хэлворсон, Кевин Брайт, Майкл Лембек	22
8222	Закон и порядок. Специальный корпус (16 сезон)	https://kinokrad.co/331613-zakon-i-poryadok.-specialnyy-korpus-16-sezon.html	5	1999	США	триллер, драма, криминал, детектив	Дэвид Платт, Питер Лето, Жан Де Сегонзак	43
8223	Западное крыло (1 сезон)	https://kinokrad.co/318670-zapadnoe-krylo-1-sezon-1999.html	5	1999	США	драма	Крис Мисиано, Алекс Грейвз, Томас Шламми	43
8224	Король Квинса (2 сезон)	https://kinokrad.co/310502-korol-kvinsa-2-sezon-1999.html	8	1999	США	комедия	Роб Шиллер, Джеймс Уиддоуз, Памела Фрайман	22
8225	Чисто английские убийства (2 сезон)	https://kinokrad.co/322711-chisto-angliyskie-ubiystva-2-sezon.html	8	1999	Великобритания	драма, криминал, детектив	Ренни Рай, Питер Смит, Ричард Холтхоуз	91
8226	Закон и порядок. Специальный корпус (1 сезон)	https://kinokrad.co/300171-zakon-i-poryadok-specialnyy-korpus-1-sezon-1999.html	8	1999	США	триллер, драма, криминал, детектив	Дэвид Платт, Питер Лето, Жан Де Сегонзак	43
8227	Звездные бои насмерть (2 сезон)	https://kinokrad.co/321282-zvezdnye-boi-nasmert-2-sezon.html	4	1999	США	мультфильм, боевик, комедия, спорт	Эрик Фогель, Дэйв Томас, Джек Флетчер	21
8228	Баффи – истребительница вампиров (4 сезон)	https://kinokrad.co/319910-baffi-istrebitelnica-vampirov-4-sezon-1999.html	7	1999	США	фэнтези, боевик, драма, мелодрама	Джосс Уидон, Джеймс А. Контнер, Дэвид Соломон	43
8229	Безмолвный свидетель (4 сезон)	https://kinokrad.co/299907-bezmolvnyy-svidetel-4-sezon-1999.html	6	1999	Великобритания	драма, криминал, детектив	Тадеус О’Салливан, Дэвид Ричардс, Ричард Сайни	43
8230	Далеко во Вселенной / На краю вселенной (1 сезон)	https://kinokrad.co/300021-daleko-vo-vselennoy-na-krayu-vselennoy-1-sezon-1999.html	8	1999	Австралия, США	фантастика, приключения	Тони Тилс, Роуэн Вудс, Эндрю Проуз	43
8231	Южный Парк (3 сезон)	https://kinokrad.co/286577-yuzhnyy-park-3-sezon-1999.html	6	1999	США	мультфильм, комедия	Трей Паркер, Эрик Сточ, Мэтт Стоун	22
8232	Секретные материалы (7 сезон)	https://kinokrad.co/286555-sekretnye-materialy-7-sezon-1999.html	9	1999	Канада	фантастика, триллер, драма, детектив	Ким Мэннерс, Роб Боумен, Дэвид Наттер	43
8233	Бухта Доусона (3 сезон)	https://kinokrad.co/283146-buhta-dousona-3-sezon-1999.html	9	1999	США	драма	Грегори Прэндж, Дэвид Семел, Дэвид Петрарка	43
8234	Сабрина – маленькая ведьма (4 сезон)	https://kinokrad.co/282788-sabrina-malenkaya-vedma-4-sezon-1999.html	7	1999	США	фэнтези, комедия, семейный	Кеннет Р. Кох, Гари Хэлворсон, Брайан К. Робертс	22
8235	Гриффины (1 сезон)	https://kinokrad.co/281995-griffiny-1-sezon-1999.html	7	1999	США	мультфильм, комедия	Питер Шин, Джеймс Пурдум, Доминик Бьянчи	22
8236	Параллельные миры (5 сезон)	https://kinokrad.co/285053-parallelnye-miry-5-sezon-1999.html	8	1999	США	фантастика, фэнтези, приключения	Ричард Комптон, Дэвид Э. Пэкинпах, Джерри О’Коннелл	43
8237	Лучшие (1 сезон)	https://kinokrad.co/282880-luchshie-1-sezon-1999.html	7	1999	США	драма, комедия	Джеми Бэббит, Майкл М. Робин, Элоди Кин	43
8238	Беверли-Хиллз 90210 (10 сезон)	https://kinokrad.co/282576-beverli-hillz-90210-10-sezon-1999.html	7	1999	США	драма, мелодрама	Дэниэл Эттиэс, Чип Чалмерс, Джейсон Пристли	45
8239	Звездные врата: ЗВ-1 (3 сезон)	https://kinokrad.co/281541-zvezdnye-vrata-zv-1-3-sezon-1999.html	10	1999	США, Канада	фантастика, боевик, приключения	Питер ДеЛуис, Мартин Вуд, Энди Микита	43
8240	Притворщик (4 сезон)	https://kinokrad.co/283213-pritvorschik-4-sezon-1999.html	8	1999	США	фантастика, триллер, драма, детектив	Фредерик Кинг Келлер, Джеймс Уитмор мл., Терренс О’Хара	43
8241	Секс в большом городе 2 сезон (1-18 серия)	https://kinokrad.co/281185-seks-v-bolshom-gorode-2-sezon.html	8	1999	США	мелодрама, комедия	Майкл Патрик Кинг, Аллен Култер, Майкл Энглер	22
8242	Футурама 1 сезон (1-13 серия)	https://kinokrad.co/274036-futurama-1-sezon.html	8	1999	США	мультфильм, фантастика, комедия	Питер Аванзино, Брэт Хааланд, Грегг Ванцо	22
8243	Футурама 2 сезон (1-19 серия)	https://kinokrad.co/274037-futurama-serial-2-sezon.html	8	1999	США	мультфильм, фантастика, комедия	Питер Аванзино, Брэт Хааланд, Грегг Ванцо	22
8244	Симпсоны 11 сезон (1-22 серия)	https://kinokrad.co/274215-simpsony-11-sezon.html	10	1999	США	мультфильм, комедия	Марк Керклэнд, Стивен Дин Мур, Джим Рирдон	22
8245	Клан Сопрано (1 сезон)	https://kinokrad.co/282107-klan-soprano-1-sezon-1999.html	9	1999	США	драма, криминал	Тимоти Ван Паттен, Джон Паттерсон, Аллен Култер	55
8246	Друзья 6 сезон (1-25 серия)	https://kinokrad.co/274051-druzya-6-sezon.html	8	1999	США	мелодрама, комедия	Гари Хэлворсон, Кевин Брайт, Майкл Лембек	22
8247	Король Квинса (1 сезон)	https://kinokrad.co/310378-korol-kvinsa-1-sezon-1998.html	8	1998	США	комедия	Роб Шиллер, Джеймс Уиддоуз, Памела Фрайман	22
8248	Звездные бои насмерть (1 сезон)	https://kinokrad.co/321274-zvezdnye-boi-nasmert-1-sezon.html	4	1998	США	мультфильм, боевик, комедия, спорт	Эрик Фогель, Дэйв Томас, Джек Флетчер	21
8249	Баффи – истребительница вампиров (3 сезон)	https://kinokrad.co/319898-baffi-istrebitelnica-vampirov-3-sezon-1998.html	7	1998	США	фэнтези, боевик, драма, мелодрама	Джосс Уидон, Джеймс А. Контнер, Дэвид Соломон	43
8250	Безмолвный свидетель (3 сезон)	https://kinokrad.co/299904-bezmolvnyy-svidetel-3-sezon-1998.html	7	1998	Великобритания	драма, криминал, детектив	Тадеус О’Салливан, Дэвид Ричардс, Ричард Сайни	43
8251	Южный Парк (2 сезон)	https://kinokrad.co/286575-yuzhnyy-park-2-sezon-1998.html	6	1998	США	мультфильм, комедия	Трей Паркер, Эрик Сточ, Мэтт Стоун	22
8252	Секретные материалы (6 сезон)	https://kinokrad.co/286553-sekretnye-materialy-6-sezon-1998.html	9	1998	Канада	фантастика, триллер, драма, детектив	Ким Мэннерс, Роб Боумен, Дэвид Наттер	43
8253	Бухта Доусона (2 сезон)	https://kinokrad.co/283145-buhta-dousona-2-sezon-1998.html	9	1998	США	драма	Грегори Прэндж, Дэвид Семел, Дэвид Петрарка	43
8254	Вавилон 5 (5 сезон)	https://kinokrad.co/282944-vavilon-5-5-sezon-1998.html	8	1998	США	фантастика, боевик, драма, приключения	Майкл Виджер, Дэвид Дж. Эгил, Джанет Грик	43
8255	Сабрина – маленькая ведьма (3 сезон)	https://kinokrad.co/282786-sabrina-malenkaya-vedma-3-sezon-1998.html	8	1998	США	фэнтези, комедия, семейный	Кеннет Р. Кох, Гари Хэлворсон, Брайан К. Робертс	22
8256	Параллельные миры (4 сезон)	https://kinokrad.co/285051-parallelnye-miry-4-sezon-1998.html	8	1998	США	фантастика, фэнтези, приключения	Ричард Комптон, Дэвид Э. Пэкинпах, Джерри О’Коннелл	43
8257	Бухта Доусона (1 сезон)	https://kinokrad.co/283144-buhta-dousona-1-sezon-1998.html	7	1998	США	драма	Грегори Прэндж, Дэвид Семел, Дэвид Петрарка	43
8258	Строго на юг (4 сезон)	https://kinokrad.co/283049-strogo-na-yug-4-sezon-1998.html	9	1998	Канада, США	драма, комедия, криминал, приключения	Джордж Блумфилд, Стив ДиМарко, Ричард Дж. Льюис	43
8259	Няня (6 сезон)	https://kinokrad.co/282705-nyanya-6-sezon-1998.html	7	1998	США	комедия	Дороти Лиман, Ли Шаллат Чемел, Питер Марк Джейкобсон	22
8260	Беверли-Хиллз 90210 (9 сезон)	https://kinokrad.co/282575-beverli-hillz-90210-9-sezon-1998.html	9	1998	США	драма, мелодрама	Дэниэл Эттиэс, Чип Чалмерс, Джейсон Пристли	45
8261	Лексс (2 сезон)	https://kinokrad.co/282992-lekss-2-sezon-1998.html	8	1998	Канада, Германия, Великобритания, США	фантастика, фэнтези, комедия, приключения	Крис Боулд, Пол Донован, Кристоф Шреве	43
8262	Звездные врата: ЗВ-1 (2 сезон)	https://kinokrad.co/281536-zvezdnye-vrata-zv-1-2-sezon-1998.html	10	1998	США, Канада	фантастика, боевик, приключения	Питер ДеЛуис, Мартин Вуд, Энди Микита	43
8263	Притворщик (3 сезон)	https://kinokrad.co/283212-pritvorschik-3-sezon-1998.html	7	1998	США	фантастика, триллер, драма, детектив	Фредерик Кинг Келлер, Джеймс Уитмор мл., Терренс О’Хара	43
8264	Улицы разбитых фонарей (2 сезон)	https://kinokrad.co/285177-ulicy-razbityh-fonarey-2-sezon-1998.html	9	1998	Россия	боевик, драма, криминал, приключения	Александр Рогожкин, Дмитрий Светозаров, Кирилл Капица	48
8265	Секс в большом городе 1 сезон (1-12 серия)	https://kinokrad.co/281183-seks-v-bolshom-gorode-1-sezon.html	7	1998	США	мелодрама, комедия	Майкл Патрик Кинг, Аллен Култер, Майкл Энглер	22
8266	Симпсоны 10 сезон (1-23 серия)	https://kinokrad.co/274214-simpsony-10-sezon.html	10	1998	США	мультфильм, комедия	Марк Керклэнд, Стивен Дин Мур, Джим Рирдон	22
8267	Друзья 5 сезон (1-24 серия)	https://kinokrad.co/274050-druzya-5-sezon.html	9	1998	США	мелодрама, комедия	Гари Хэлворсон, Кевин Брайт, Майкл Лембек	22
8268	Чисто английские убийства (1 сезон)	https://kinokrad.co/322691-chisto-angliyskie-ubiystva-1-sezon.html	7	1997	Великобритания	драма, криминал, детектив	Ренни Рай, Питер Смит, Ричард Холтхоуз	91
8269	Баффи – истребительница вампиров (2 сезон)	https://kinokrad.co/319894-baffi-istrebitelnica-vampirov-2-sezon-1997.html	7	1997	США	фэнтези, боевик, драма, мелодрама, мистика	Джосс Уидон, Джеймс А. Контнер, Дэвид Соломон	43
8270	Баффи – истребительница вампиров (1 сезон)	https://kinokrad.co/319890-baffi-istrebitelnica-vampirov-1-sezon-1997.html	8	1997	США	фэнтези, боевик, драма, мелодрама	Джосс Уидон, Джеймс А. Контнер, Дэвид Соломон	43
8271	Безмолвный свидетель (2 сезон)	https://kinokrad.co/299901-bezmolvnyy-svidetel-2-sezon-1997.html	7	1997	Великобритания	драма, криминал, детектив	Тадеус О’Салливан, Дэвид Ричардс, Ричард Сайни	43
8272	Человек-паук (5 сезон)	https://kinokrad.co/289579-chelovek-pauk-5-sezon-1997.html	7	1997	США	мультфильм, фантастика, фэнтези, боевик, триллер, драма, мелодрама, криминал, приключения, семейный	Боб Ричардсон, Роберт Шеллхорн	22
8273	Человек-паук (4 сезон)	https://kinokrad.co/289576-chelovek-pauk-4-sezon-1997.html	7	1997	США	мультфильм, фантастика, фэнтези, боевик, триллер, драма, мелодрама, криминал, приключения, семейный	Боб Ричардсон, Роберт Шеллхорн	22
8274	Южный Парк (1 сезон)	https://kinokrad.co/286573-yuzhnyy-park-1-sezon-1997.html	7	1997	США	мультфильм, комедия	Трей Паркер, Эрик Сточ, Мэтт Стоун	22
8275	Сабрина – маленькая ведьма (2 сезон)	https://kinokrad.co/282783-sabrina-malenkaya-vedma-2-sezon-1997.html	9	1997	США	фэнтези, комедия, семейный	Кеннет Р. Кох, Гари Хэлворсон, Брайан К. Робертс	22
8276	Во имя любви (1 сезон)	https://kinokrad.co/282489-vo-imya-lyubvi-1-sezon-1997.html	5	1997	Бразилия	драма, мелодрама	Александр Аванчини, Эри Кослов, Роберто Наар	48
8277	Строго на юг (3 сезон)	https://kinokrad.co/283048-strogo-na-yug-3-sezon-1997.html	8	1997	Канада, США	драма, комедия, криминал, приключения	Джордж Блумфилд, Стив ДиМарко, Ричард Дж. Льюис	43
8278	Няня (5 сезон)	https://kinokrad.co/282704-nyanya-5-sezon-1997.html	5	1997	США	комедия	Дороти Лиман, Ли Шаллат Чемел, Питер Марк Джейкобсон	22
8279	Южный Парк (16 сезон)	https://kinokrad.co/286745-yuzhnyy-park-16-sezon-2012.html	7	1997	США	мультфильм, комедия	Трей Паркер, Эрик Сточ, Мэтт Стоун	22
8280	Беверли-Хиллз 90210 (8 сезон)	https://kinokrad.co/282574-beverli-hillz-90210-8-sezon-1997.html	8	1997	США	драма, мелодрама	Дэниэл Эттиэс, Чип Чалмерс, Джейсон Пристли	45
8413	Твин Пикс (2 сезон)	https://kinokrad.co/317682-tvin-piks-2-sezon-1994.html	8	1994	США	драма, криминал, детектив	Дэвид Линч	60
8281	Лексс (1 сезон)	https://kinokrad.co/282990-lekss-1-sezon-1997.html	8	1997	Канада, Германия, Великобритания, США	фантастика, фэнтези, комедия, приключения	Крис Боулд, Пол Донован, Кристоф Шреве	43
8282	Секретные материалы (5 сезон)	https://kinokrad.co/286551-sekretnye-materialy-5-sezon-1997.html	9	1997	Канада	фантастика, триллер, драма, детектив	Ким Мэннерс, Роб Боумен, Дэвид Наттер	43
8283	Звездные врата: ЗВ-1 (1 сезон)	https://kinokrad.co/281535-zvezdnye-vrata-zv-1-1-sezon-1997.html	9	1997	США, Канада	фантастика, боевик, приключения	Питер ДеЛуис, Мартин Вуд, Энди Микита	43
8284	Притворщик (2 сезон)	https://kinokrad.co/283211-pritvorschik-2-sezon-1997.html	8	1997	США	фантастика, триллер, драма, детектив	Фредерик Кинг Келлер, Джеймс Уитмор мл., Терренс О’Хара	43
8285	Улицы разбитых фонарей (1 сезон)	https://kinokrad.co/285175-ulicy-razbityh-fonarey-1-sezon-1997.html	7	1997	Россия	боевик, драма, криминал, приключения	Александр Рогожкин, Дмитрий Светозаров, Кирилл Капица	48
8286	Симпсоны 9 сезон (1-25 серия)	https://kinokrad.co/274213-simpsony-9-sezon.html	10	1997	США	мультфильм, комедия	Марк Керклэнд, Стивен Дин Мур, Джим Рирдон	22
8287	Друзья 4 сезон (1-24 серия)	https://kinokrad.co/274049-druzya-4-sezon.html	9	1997	США	мелодрама, комедия	Гари Хэлворсон, Кевин Брайт, Майкл Лембек	22
8288	Безмолвный свидетель (1 сезон)	https://kinokrad.co/299898-bezmolvnyy-svidetel-1-sezon-1996.html	7	1996	Великобритания	драма, криминал, детектив	Тадеус О’Салливан, Дэвид Ричардс, Ричард Сайни	43
8289	Человек-паук (3 сезон)	https://kinokrad.co/289573-chelovek-pauk-3-sezon-1996.html	7	1996	США	мультфильм, фантастика, фэнтези, боевик, триллер, драма, мелодрама, криминал, приключения, семейный	Боб Ричардсон, Роберт Шеллхорн	22
8290	Секретные материалы (4 сезон)	https://kinokrad.co/286549-sekretnye-materialy-4-sezon-1996.html	9	1996	Канада	фантастика, триллер, драма, детектив	Ким Мэннерс, Роб Боумен, Дэвид Наттер	43
8291	Вавилон 5 (4 сезон)	https://kinokrad.co/282943-vavilon-5-4-sezon-1996.html	8	1996	США	фантастика, боевик, драма, приключения	Майкл Виджер, Дэвид Дж. Эгил, Джанет Грик	43
8292	Сабрина – маленькая ведьма (1 сезон)	https://kinokrad.co/282781-sabrina-malenkaya-vedma-1-sezon-1996.html	8	1996	США	фэнтези, комедия, семейный	Кеннет Р. Кох, Гари Хэлворсон, Брайан К. Робертс	22
8293	Черепашки мутанты ниндзя (10 сезон)	https://kinokrad.co/285515-cherepashki-mutanty-nindzya-10-sezon-1996.html	7	1996	США	мультфильм, фантастика, фэнтези, боевик, триллер, драма, комедия, криминал, детектив, приключения	Билл Вульф, Тони Лав, Майк Стюарт	22
8294	Параллельные миры (3 сезон)	https://kinokrad.co/285049-parallelnye-miry-3-sezon-1996.html	8	1996	США	фантастика, фэнтези, приключения	Ричард Комптон, Дэвид Э. Пэкинпах, Джерри О’Коннелл	43
8295	Параллельные миры (2 сезон)	https://kinokrad.co/285047-parallelnye-miry-2-sezon-1996.html	8	1996	США	фантастика, фэнтези, приключения	Ричард Комптон, Дэвид Э. Пэкинпах, Джерри О’Коннелл	43
8296	Беверли-Хиллз 90210 (7 сезон)	https://kinokrad.co/282572-beverli-hillz-90210-7-sezon-1996.html	8	1996	США	драма, мелодрама	Дэниэл Эттиэс, Чип Чалмерс, Джейсон Пристли	45
8297	Няня (4 сезон)	https://kinokrad.co/282703-nyanya-4-sezon-1996.html	6	1996	США	комедия	Дороти Лиман, Ли Шаллат Чемел, Питер Марк Джейкобсон	22
8298	Притворщик (1 сезон)	https://kinokrad.co/283210-pritvorschik-1-sezon-1996.html	9	1996	США	фантастика, триллер, драма, детектив	Фредерик Кинг Келлер, Джеймс Уитмор мл., Терренс О’Хара	43
8299	Симпсоны 8 сезон (1-25 серия)	https://kinokrad.co/274209-simpsony-8-sezon.html	10	1996	США	мультфильм, комедия	Марк Керклэнд, Стивен Дин Мур, Джим Рирдон	22
8300	Друзья 3 сезон (1-25 серия)	https://kinokrad.co/274048-druzya-3-sezon.html	8	1996	США	мелодрама, комедия	Гари Хэлворсон, Кевин Брайт, Майкл Лембек	22
8301	Маршал (2 сезон)	https://kinokrad.co/309167-marshal-2-sezon-1995.html	5	1995	США	боевик, драма, криминал	Верн Джиллам, Дон Джонсон, Аарон Липстадт	60
8302	Маршал (1 сезон)	https://kinokrad.co/309164-marshal-1-sezon-1995.html	5	1995	США	боевик, драма, криминал	Верн Джиллам, Дон Джонсон, Аарон Липстадт	60
8303	Человек-паук (2 сезон)	https://kinokrad.co/289570-chelovek-pauk-2-sezon-1995.html	7	1995	США	мультфильм, фантастика, фэнтези, боевик, триллер, драма, мелодрама, криминал, приключения, семейный	Боб Ричардсон, Роберт Шеллхорн	22
8304	Вавилон 5 (3 сезон)	https://kinokrad.co/282942-vavilon-5-3-sezon-1995.html	8	1995	США	фантастика, боевик, драма, приключения	Майкл Виджер, Дэвид Дж. Эгил, Джанет Грик	43
8305	Черепашки мутанты ниндзя (9 сезон)	https://kinokrad.co/285513-cherepashki-mutanty-nindzya-9-sezon-1995.html	7	1995	США	мультфильм, фантастика, фэнтези, боевик, триллер, драма, комедия, криминал, детектив, приключения	Билл Вульф, Тони Лав, Майк Стюарт	22
8306	Параллельные миры (1 сезон)	https://kinokrad.co/285045-parallelnye-miry-1-sezon-1995.html	8	1995	США	фантастика, фэнтези, приключения	Ричард Комптон, Дэвид Э. Пэкинпах, Джерри О’Коннелл	43
8307	Строго на юг (2 сезон)	https://kinokrad.co/283047-strogo-na-yug-2-sezon-1995.html	8	1995	Канада, США	драма, комедия, криминал, приключения	Джордж Блумфилд, Стив ДиМарко, Ричард Дж. Льюис	43
8308	Беверли-Хиллз 90210 (6 сезон)	https://kinokrad.co/282570-beverli-hillz-90210-6-sezon-1995.html	8	1995	США	драма, мелодрама	Дэниэл Эттиэс, Чип Чалмерс, Джейсон Пристли	45
8309	Секретные материалы (3 сезон)	https://kinokrad.co/286547-sekretnye-materialy-3-sezon-1995.html	9	1995	Канада	фантастика, триллер, драма, детектив	Ким Мэннерс, Роб Боумен, Дэвид Наттер	43
8310	Няня (3 сезон)	https://kinokrad.co/282702-nyanya-3-sezon-1995.html	6	1995	США	комедия	Дороти Лиман, Ли Шаллат Чемел, Питер Марк Джейкобсон	22
8311	Megaman ZX (2 сезон)	https://kinokrad.co/283349-megaman-zx-2-sezon-1995.html	7	1995	США, Япония	мультфильм, фантастика, боевик, семейный	Уолт Кубиак, Katsumi Minokuchi	22
8312	Агентство моделей (1-29 серия)	https://kinokrad.co/255707-agentstvo-modeley.html	8	1995	США	драма	Марина Сардженти, Чип Чалмерс	43
8313	Симпсоны 7 сезон (1-25 серия)	https://kinokrad.co/274205-simpsony-7-szeon.html	10	1995	США	мультфильм, комедия	Марк Керклэнд, Стивен Дин Мур, Джим Рирдон	22
8314	Друзья 2 сезон (1-24 серия)	https://kinokrad.co/274047-druzya-2-sezon.html	9	1995	США	мелодрама, комедия	Гари Хэлворсон, Кевин Брайт, Майкл Лембек	22
8315	Твин Пикс (2 сезон)	https://kinokrad.co/317682-tvin-piks-2-sezon-1994.html	8	1994	США	драма, криминал, детектив	Дэвид Линч	60
8316	Пуаро (6 сезон)	https://kinokrad.co/318898-puaro-6-sezon-1994.html	8	1994	Великобритания	триллер, драма, криминал, детектив	Эдвард Беннет, Ренни Рай, Эндрю Грив	90
8317	Человек-паук (1 сезон)	https://kinokrad.co/289567-chelovek-pauk-1-sezon-1994.html	8	1994	США	мультфильм, фантастика, фэнтези, боевик, триллер, драма, мелодрама, криминал, приключения, семейный	Боб Ричардсон, Роберт Шеллхорн	22
8318	Секретные материалы (2 сезон)	https://kinokrad.co/286545-sekretnye-materialy-2-sezon-1994.html	9	1994	Канада	фантастика, триллер, драма, детектив	Ким Мэннерс, Роб Боумен, Дэвид Наттер	43
8319	Вавилон 5 (2 сезон)	https://kinokrad.co/282941-vavilon-5-2-sezon-1994.html	8	1994	США	фантастика, боевик, драма, приключения	Майкл Виджер, Дэвид Дж. Эгил, Джанет Грик	43
8320	Вавилон 5 (1 сезон)	https://kinokrad.co/282940-vavilon-5-1-sezon-1994.html	8	1994	США	фантастика, боевик, драма, приключения	Майкл Виджер, Дэвид Дж. Эгил, Джанет Грик	43
8321	Черепашки мутанты ниндзя (8 сезон)	https://kinokrad.co/285511-cherepashki-mutanty-nindzya-8-sezon-1994.html	7	1994	США	мультфильм, фантастика, фэнтези, боевик, триллер, драма, комедия, криминал, детектив, приключения	Билл Вульф, Тони Лав, Майк Стюарт	22
8322	Строго на юг (1 сезон)	https://kinokrad.co/283046-strogo-na-yug-1-sezon-1994.html	10	1994	Канада, США	драма, комедия, криминал, приключения	Джордж Блумфилд, Стив ДиМарко, Ричард Дж. Льюис	43
8323	Беверли-Хиллз 90210 (5 сезон)	https://kinokrad.co/282566-beverli-hillz-90210-5-sezon-1994.html	7	1994	США	драма, мелодрама	Дэниэл Эттиэс, Чип Чалмерс, Джейсон Пристли	45
8324	Няня (2 сезон)	https://kinokrad.co/282701-nyanya-2-sezon-1994.html	6	1994	США	комедия	Дороти Лиман, Ли Шаллат Чемел, Питер Марк Джейкобсон	22
8325	Megaman ZX (1 сезон)	https://kinokrad.co/283347-megaman-zx-1-sezon.html	7	1994	США, Япония	мультфильм, фантастика, боевик, семейный	Уолт Кубиак, Katsumi Minokuchi	22
8326	Симпсоны 6 сезон (1-25 серия)	https://kinokrad.co/274203-simpsony-6-sezon.html	10	1994	США	мультфильм, комедия	Марк Керклэнд, Стивен Дин Мур, Джим Рирдон	22
8327	Друзья 1 сезон (1-24 серия)	https://kinokrad.co/274042-druzya-1-sezon.html	9	1994	США	мелодрама, комедия	Гари Хэлворсон, Кевин Брайт, Майкл Лембек	22
8328	Твин Пикс (1 сезон)	https://kinokrad.co/317678-tvin-piks-1-sezon-1993.html	8	1993	США	драма, криминал, детектив, триллер	Дэвид Линч	60
8329	Дживс и Вустер (4 сезон)	https://kinokrad.co/319234-dzhivs-i-vuster-4-sezon-1993.html	7	1993	Великобритания	комедия	Фердинанд Фэйрфакс, Саймон Лэнгтон, Роберт Янг	51
8330	Космические спасатели (1 сезон)	https://kinokrad.co/300761-kosmicheskie-spasateli-1-sezon-1993.html	6	1993	США	фантастика, боевик, приключения	Дэвид Бертон Моррис, Бен Болт, Микаэл Саломон	43
8331	Пуаро (5 сезон)	https://kinokrad.co/318894-puaro-5-sezon-1993.html	8	1993	Великобритания	триллер, драма, криминал, детектив	Эдвард Беннет, Ренни Рай, Эндрю Грив	90
8332	Секретные материалы (1 сезон)	https://kinokrad.co/286543-sekretnye-materialy-1-sezon-1993.html	9	1993	Канада	фантастика, триллер, драма, детектив	Ким Мэннерс, Роб Боумен, Дэвид Наттер	43
8333	Беверли-Хиллз 90210 (4 сезон)	https://kinokrad.co/282565-beverli-hillz-90210-4-sezon-1993.html	9	1993	США	драма, мелодрама	Дэниэл Эттиэс, Чип Чалмерс, Джейсон Пристли	45
8334	Няня (1 сезон)	https://kinokrad.co/282700-nyanya-1-sezon-1993.html	8	1993	США	комедия	Дороти Лиман, Ли Шаллат Чемел, Питер Марк Джейкобсон	22
8335	Кобра (1-22 серия)	https://kinokrad.co/281290-kobra.html	7	1993	США	боевик, приключения	Брэд Тернер, Линдон Чаббак, Джефф Вулнаф	43
8336	Симпсоны 5 сезон (1-22 серия)	https://kinokrad.co/274197-simpsony-5-sezon.html	10	1993	США	мультфильм, комедия	Марк Керклэнд, Стивен Дин Мур, Джим Рирдон	22
8337	Дживс и Вустер (3 сезон)	https://kinokrad.co/319230-dzhivs-i-vuster-3-sezon-1992.html	8	1992	Великобритания	комедия	Фердинанд Фэйрфакс, Саймон Лэнгтон, Роберт Янг	51
8338	Пуаро (4 сезон)	https://kinokrad.co/318718-puaro-4-sezon-1992.html	8	1992	Великобритания	триллер, драма, криминал, детектив	Эдвард Беннет, Ренни Рай, Эндрю Грив	90
8339	Ай – девушка с кассеты (1 сезон)	https://kinokrad.co/53-ay-devushka-s-kassety-span-serial-span.html	6	1992	Япония	аниме, мультфильм, фэнтези, драма, мелодрама, комедия	Мизухо Нишикубо	30
8340	Черепашки мутанты ниндзя (7 сезон)	https://kinokrad.co/285509-cherepashki-mutanty-nindzya-7-sezon-1992.html	7	1992	США	мультфильм, фантастика, фэнтези, боевик, триллер, драма, комедия, криминал, детектив, приключения	Билл Вульф, Тони Лав, Майк Стюарт	22
8341	Черепашки мутанты ниндзя (6 сезон)	https://kinokrad.co/285507-cherepashki-mutanty-nindzya-6-sezon-1992.html	7	1992	США	мультфильм, фантастика, фэнтези, боевик, триллер, драма, комедия, криминал, детектив, приключения	Билл Вульф, Тони Лав, Майк Стюарт	22
8342	Беверли-Хиллз 90210 (3 сезон)	https://kinokrad.co/282564-beverli-hillz-90210-3-sezon-1992.html	8	1992	США	драма, мелодрама	Дэниэл Эттиэс, Чип Чалмерс, Джейсон Пристли	45
8343	Симпсоны 4 сезон (1-22 серия)	https://kinokrad.co/274196-simpsony-4-sezon.html	10	1992	США	мультфильм, комедия	Марк Керклэнд, Стивен Дин Мур, Джим Рирдон	22
8344	Черепашки мутанты ниндзя (5 сезон)	https://kinokrad.co/285505-cherepashki-mutanty-nindzya-5-sezon-1991.html	7	1991	США	мультфильм, фантастика, фэнтези, боевик, триллер, драма, комедия, криминал, детектив, приключения	Билл Вульф, Тони Лав, Майк Стюарт	22
8345	Беверли-Хиллз 90210 (2 сезон)	https://kinokrad.co/282563-beverli-hillz-90210-2-sezon-1991.html	8	1991	США	драма, мелодрама	Дэниэл Эттиэс, Чип Чалмерс, Джейсон Пристли	45
8346	Симпсоны 3 сезон (1-24 серия)	https://kinokrad.co/274195-simpsony-3-sezon.html	10	1991	США	мультфильм, комедия	Марк Керклэнд, Стивен Дин Мур, Джим Рирдон	22
8347	Орел или решка / Повороты судьбы (1990) (все серии)	https://kinokrad.co/255733-orel-ili-reshka-povoroty-sudby-1990-onlayn-serial.html	5	1990	Австралия	драма	Роберт Маршан	213
8348	Дживс и Вустер (2 сезон)	https://kinokrad.co/319134-dzhivs-i-vuster-2-sezon-1991.html	9	1990	Великобритания	комедия	Фердинанд Фэйрфакс, Саймон Лэнгтон, Роберт Янг	51
8349	Дживс и Вустер (1 сезон)	https://kinokrad.co/319130-dzhivs-i-vuster-1-sezon-1990.html	8	1990	Великобритания	комедия	Фердинанд Фэйрфакс, Саймон Лэнгтон, Роберт Янг	51
8350	Секретный агент Макгайвер (6 сезон)	https://kinokrad.co/320058-sekretnyy-agent-makgayver-6-sezon-1990.html	5	1990	США, Канада	боевик, драма, криминал, приключения	Чарльз Коррелл, Уильям Джерегти, Майкл Виджер	46
8351	Пуаро (3 сезон)	https://kinokrad.co/318714-puaro-3-sezon-1990.html	8	1990	Великобритания	триллер, драма, криминал, детектив	Эдвард Беннет, Ренни Рай, Эндрю Грив	90
8352	Пуаро (2 сезон)	https://kinokrad.co/318710-puaro-2-sezon-1990.html	9	1990	Великобритания	триллер, драма, криминал, детектив	Эдвард Беннет, Ренни Рай, Эндрю Грив	90
8353	Черепашки мутанты ниндзя (4 сезон)	https://kinokrad.co/285503-cherepashki-mutanty-nindzya-4-sezon-1990.html	7	1990	США	мультфильм, фантастика, фэнтези, боевик, триллер, драма, комедия, криминал, детектив, приключения	Билл Вульф, Тони Лав, Майк Стюарт	22
8354	Мистер Бин (1 сезон)	https://kinokrad.co/283844-mister-bin-1-sezon-1990.html	9	1990	Великобритания	комедия, семейный	Джон Биркин, Пол Вейланд, Джон Ховард Дейвис	22
8355	Беверли-Хиллз 90210 (1 сезон)	https://kinokrad.co/282562-beverli-hillz-90210-1-sezon-1990.html	9	1990	США	драма, мелодрама	Дэниэл Эттиэс, Чип Чалмерс, Джейсон Пристли	45
8356	Симпсоны 2 сезон (1-22 серия)	https://kinokrad.co/274194-simpsony-2-sezon.html	10	1990	США	мультфильм, комедия	Марк Керклэнд, Стивен Дин Мур, Джим Рирдон	22
8357	Секретный агент Макгайвер (5 сезон)	https://kinokrad.co/320054-sekretnyy-agent-makgayver-5-sezon-1989.html	5	1989	США, Канада	боевик, драма, криминал, приключения	Чарльз Коррелл, Уильям Джерегти, Майкл Виджер	46
8358	Пуаро (1 сезон)	https://kinokrad.co/318706-puaro-1-sezon-1989.html	8	1989	Великобритания	триллер, драма, криминал, детектив	Эдвард Беннет, Ренни Рай, Эндрю Грив	90
8359	Черепашки мутанты ниндзя (3 сезон)	https://kinokrad.co/285501-cherepashki-mutanty-nindzya-3-sezon-1989.html	7	1989	США	мультфильм, фантастика, фэнтези, боевик, триллер, драма, комедия, криминал, детектив, приключения	Билл Вульф, Тони Лав, Майк Стюарт	22
8360	Просто Мария (1 сезон)	https://kinokrad.co/282397-prosto-mariya-1-sezon-1993.html	6	1989	Мексика	драма, мелодрама	Артуро Рипстейн, Беатрис Шеридан	40
8361	Симпсоны 1 сезон (1-13 серия)	https://kinokrad.co/274193-simpsony-1-sezon.html	10	1989	США	мультфильм, комедия	Марк Керклэнд, Стивен Дин Мур, Джим Рирдон	22
8362	Секретный агент Макгайвер (4 сезон)	https://kinokrad.co/320050-sekretnyy-agent-makgayver-4-sezon-1988.html	6	1988	США, Канада	боевик, драма, криминал, приключения	Чарльз Коррелл, Уильям Джерегти, Майкл Виджер	46
8363	Детективное агентство «Лунный свет» (5 сезон)	https://kinokrad.co/282986-detektivnoe-agentstvo-lunnyy-svet-5-sezon-1988.html	9	1988	США	драма, мелодрама, комедия, детектив	Аллан Аркуш, Питер Уэрнер, Кристиан И. Найби II	43
8364	Секретный агент Макгайвер (3 сезон)	https://kinokrad.co/320030-sekretnyy-agent-makgayver-3-sezon-1987.html	5	1987	США, Канада	боевик, драма, криминал, приключения	Чарльз Коррелл, Уильям Джерегти, Майкл Виджер	46
8365	Ремингтон Стил (5 сезон)	https://kinokrad.co/283304-remington-stil-5-sezon-1987.html	7	1987	США	драма, мелодрама, комедия, криминал, детектив, приключения	Сеймур Робби, Дон Уайс, Кристофер Хиблер	43
8366	Черепашки мутанты ниндзя (1 сезон)	https://kinokrad.co/285499-cherepashki-mutanty-nindzya-1-sezon-1987.html	8	1987	США	мультфильм, фантастика, фэнтези, боевик, триллер, драма, комедия, криминал, детектив, приключения	Билл Вульф, Тони Лав, Майк Стюарт	22
8367	Городской охотник (1 сезон)	https://kinokrad.co/283775-gorodskoy-ohotnik-1-sezon-1987.html	7	1987	Япония	аниме, мультфильм, комедия, приключения	Кэндзи Кодама, Киёси Эгами, Такаси Иманиси	24
8368	Детективное агентство «Лунный свет» (4 сезон)	https://kinokrad.co/282984-detektivnoe-agentstvo-lunnyy-svet-4-sezon-1987.html	9	1987	США	драма, мелодрама, комедия, детектив	Аллан Аркуш, Питер Уэрнер, Кристиан И. Найби II	43
8369	Секретный агент Макгайвер (2 сезон)	https://kinokrad.co/320026-sekretnyy-agent-makgayver-2-sezon.html	6	1986	США, Канада	боевик, драма, криминал, приключения	Чарльз Коррелл, Уильям Джерегти, Майкл Виджер	46
8370	Детективное агентство «Лунный свет» (3 сезон)	https://kinokrad.co/282983-detektivnoe-agentstvo-lunnyy-svet-3-sezon-1986.html	9	1986	США	драма, мелодрама, комедия, детектив	Аллан Аркуш, Питер Уэрнер, Кристиан И. Найби II	43
8371	Секретный агент Макгайвер (1 сезон)	https://kinokrad.co/320022-sekretnyy-agent-makgayver-1-sezon-1985.html	6	1985	США, Канада	боевик, драма, криминал, приключения	Чарльз Коррелл, Уильям Джерегти, Майкл Виджер	46
8372	Секретный агент Макгайвер (7 сезон)	https://kinokrad.co/320062-sekretnyy-agent-makgayver-7-sezon-1991.html	5	1985	США, Канада	боевик, драма, криминал, приключения	Чарльз Коррелл, Уильям Джерегти, Майкл Виджер	46
8373	Ремингтон Стил (4 сезон)	https://kinokrad.co/283303-remington-stil-4-sezon-1985.html	7	1985	США	драма, мелодрама, комедия, криминал, детектив, приключения	Сеймур Робби, Дон Уайс, Кристофер Хиблер	43
8374	Противостояние (1 сезон)	https://kinokrad.co/284985-protivostoyanie-1-sezon-1985.html	8	1985	СССР	драма, криминал, детектив, военный	Семён Аранович	63
8375	Детективное агентство «Лунный свет» (2 сезон)	https://kinokrad.co/282981-detektivnoe-agentstvo-lunnyy-svet-2-sezon-1985.html	9	1985	США	драма, мелодрама, комедия, детектив	Аллан Аркуш, Питер Уэрнер, Кристиан И. Найби II	43
8376	Детективное агентство «Лунный свет» (1 сезон)	https://kinokrad.co/282980-detektivnoe-agentstvo-lunnyy-svet-1-sezon-1985.html	9	1985	США	драма, мелодрама, комедия, детектив	Аллан Аркуш, Питер Уэрнер, Кристиан И. Найби II	43
8377	Ремингтон Стил (3 сезон)	https://kinokrad.co/283302-remington-stil-3-sezon-1984.html	7	1984	США	драма, мелодрама, комедия, криминал, детектив, приключения	Сеймур Робби, Дон Уайс, Кристофер Хиблер	43
8378	Поющие в терновнике (1 сезон)	https://kinokrad.co/287223-poyuschie-v-ternovnike-1-sezon-1983.html	7	1983	США, Австралия	драма	Дэрил Дьюк	160
8379	Ремингтон Стил (2 сезон)	https://kinokrad.co/283301-remington-stil-2-sezon-1983.html	6	1983	США	драма, мелодрама, комедия, криминал, детектив, приключения	Сеймур Робби, Дон Уайс, Кристофер Хиблер	43
8380	Чертова служба в госпитале Мэш (11 сезон)	https://kinokrad.co/302963-chertova-sluzhba-v-gospitale-mjesh-11-sezon-1982.html	8	1982	США	драма, комедия, военный	Чарльз С. Дубин, Алан Алда, Берт Меткалф	22
8381	Ремингтон Стил (1 сезон)	https://kinokrad.co/283300-remington-stil-1-sezon-1982.html	8	1982	США	драма, мелодрама, комедия, криминал, детектив, приключения	Сеймур Робби, Дон Уайс, Кристофер Хиблер	43
8382	Чертова служба в госпитале Мэш (10 сезон)	https://kinokrad.co/302960-chertova-sluzhba-v-gospitale-mjesh-10-sezon-1981.html	8	1981	США	драма, комедия, военный	Чарльз С. Дубин, Алан Алда, Берт Меткалф	22
8383	Чертова служба в госпитале Мэш (9 сезон)	https://kinokrad.co/302954-chertova-sluzhba-v-gospitale-mjesh-9-sezon-1980.html	8	1980	США	драма, комедия, военный	Чарльз С. Дубин, Алан Алда, Берт Меткалф	22
8384	Чертова служба в госпитале Мэш (8 сезон)	https://kinokrad.co/302951-chertova-sluzhba-v-gospitale-mjesh-8-sezon-1979.html	8	1979	США	драма, комедия, военный	Чарльз С. Дубин, Алан Алда, Берт Меткалф	22
8385	Чертова служба в госпитале Мэш (7 сезон)	https://kinokrad.co/302948-chertova-sluzhba-v-gospitale-mjesh-7-sezon-1978.html	8	1978	США	драма, комедия, военный	Чарльз С. Дубин, Алан Алда, Берт Меткалф	22
8386	Чертова служба в госпитале Мэш (6 сезон)	https://kinokrad.co/302945-chertova-sluzhba-v-gospitale-mjesh-6-sezon-1977.html	8	1977	США	драма, комедия, военный	Чарльз С. Дубин, Алан Алда, Берт Меткалф	22
8387	Чертова служба в госпитале Мэш (5 сезон)	https://kinokrad.co/302942-chertova-sluzhba-v-gospitale-mjesh-5-sezon-1976.html	8	1976	США	драма, комедия, военный	Чарльз С. Дубин, Алан Алда, Берт Меткалф	22
8388	Чертова служба в госпитале Мэш (4 сезон)	https://kinokrad.co/302939-chertova-sluzhba-v-gospitale-mjesh-4-sezon-1975.html	8	1975	США	драма, комедия, военный	Чарльз С. Дубин, Алан Алда, Берт Меткалф	22
8389	Чертова служба в госпитале Мэш (3 сезон)	https://kinokrad.co/302936-chertova-sluzhba-v-gospitale-mjesh-3-sezon-1974.html	8	1974	США	драма, комедия, военный	Чарльз С. Дубин, Алан Алда, Берт Меткалф	22
8390	Чертова служба в госпитале Мэш (2 сезон)	https://kinokrad.co/302933-chertova-sluzhba-v-gospitale-mjesh-2-sezon-1973.html	8	1973	США	драма, комедия, военный	Чарльз С. Дубин, Алан Алда, Берт Меткалф	22
8391	Чертова служба в госпитале Мэш (1 сезон)	https://kinokrad.co/302927-chertova-sluzhba-v-gospitale-mjesh-1-sezon-1972.html	8	1972	США	драма, комедия, военный	Чарльз С. Дубин, Алан Алда, Берт Меткалф	22
8392	Шоу Бенни Хилла (1 сезон)	https://kinokrad.co/283919-shou-benni-hilla-1-sezon-1967.html	9	1967	Великобритания	комедия, музыка	Джон Скоффилд	28
8393	Альфред Хичкок представляет (5 сезон)	https://kinokrad.co/317730-alfred-hichkok-predstavlyaet-5-sezon-1959.html	6	1959	США	триллер, драма, криминал, детектив	Роберт Стивенс, Пол Хенрейд, Хершел Догерти	25
8394	Альфред Хичкок представляет (4 сезон)	https://kinokrad.co/317722-alfred-hichkok-predstavlyaet-4-sezon-1958.html	6	1958	США	триллер, драма, криминал, детектив	Роберт Стивенс, Пол Хенрейд, Хершел Догерти	25
8395	Альфред Хичкок представляет (3 сезон)	https://kinokrad.co/317718-alfred-hichkok-predstavlyaet-3-sezon-1957.html	5	1957	США	триллер, драма, криминал, детектив	Роберт Стивенс, Пол Хенрейд, Хершел Догерти	25
8396	Альфред Хичкок представляет (2 сезон)	https://kinokrad.co/317714-alfred-hichkok-predstavlyaet-2-sezon-1956.html	4	1956	США	триллер, драма, криминал, детектив	Роберт Стивенс, Пол Хенрейд, Хершел Догерти	25
8397	Альфред Хичкок представляет (1 сезон)	https://kinokrad.co/317710-alfred-hichkok-predstavlyaet-1-sezon-1955.html	7	1955	США	триллер, драма, криминал, детектив	Роберт Стивенс, Пол Хенрейд, Хершел Догерти	25
8398	Тайны Лауры (1 сезон)	https://kinokrad.co/273013-tayny-laury-1-sezon-11-seriya.html	9		США	детектив	МакДжи	45
8399	Маршал (2 сезон)	https://kinokrad.co/309167-marshal-2-sezon-1995.html	5	1995	США	боевик, драма, криминал	Верн Джиллам, Дон Джонсон, Аарон Липстадт	60
8400	Маршал (1 сезон)	https://kinokrad.co/309164-marshal-1-sezon-1995.html	5	1995	США	боевик, драма, криминал	Верн Джиллам, Дон Джонсон, Аарон Липстадт	60
8401	Человек-паук (2 сезон)	https://kinokrad.co/289570-chelovek-pauk-2-sezon-1995.html	7	1995	США	мультфильм, фантастика, фэнтези, боевик, триллер, драма, мелодрама, криминал, приключения, семейный	Боб Ричардсон, Роберт Шеллхорн	22
8402	Вавилон 5 (3 сезон)	https://kinokrad.co/282942-vavilon-5-3-sezon-1995.html	8	1995	США	фантастика, боевик, драма, приключения	Майкл Виджер, Дэвид Дж. Эгил, Джанет Грик	43
8403	Черепашки мутанты ниндзя (9 сезон)	https://kinokrad.co/285513-cherepashki-mutanty-nindzya-9-sezon-1995.html	7	1995	США	мультфильм, фантастика, фэнтези, боевик, триллер, драма, комедия, криминал, детектив, приключения	Билл Вульф, Тони Лав, Майк Стюарт	22
8404	Параллельные миры (1 сезон)	https://kinokrad.co/285045-parallelnye-miry-1-sezon-1995.html	8	1995	США	фантастика, фэнтези, приключения	Ричард Комптон, Дэвид Э. Пэкинпах, Джерри О’Коннелл	43
8405	Строго на юг (2 сезон)	https://kinokrad.co/283047-strogo-na-yug-2-sezon-1995.html	8	1995	Канада, США	драма, комедия, криминал, приключения	Джордж Блумфилд, Стив ДиМарко, Ричард Дж. Льюис	43
8406	Беверли-Хиллз 90210 (6 сезон)	https://kinokrad.co/282570-beverli-hillz-90210-6-sezon-1995.html	8	1995	США	драма, мелодрама	Дэниэл Эттиэс, Чип Чалмерс, Джейсон Пристли	45
8407	Секретные материалы (3 сезон)	https://kinokrad.co/286547-sekretnye-materialy-3-sezon-1995.html	9	1995	Канада	фантастика, триллер, драма, детектив	Ким Мэннерс, Роб Боумен, Дэвид Наттер	43
8408	Няня (3 сезон)	https://kinokrad.co/282702-nyanya-3-sezon-1995.html	6	1995	США	комедия	Дороти Лиман, Ли Шаллат Чемел, Питер Марк Джейкобсон	22
8409	Megaman ZX (2 сезон)	https://kinokrad.co/283349-megaman-zx-2-sezon-1995.html	7	1995	США, Япония	мультфильм, фантастика, боевик, семейный	Уолт Кубиак, Katsumi Minokuchi	22
8410	Агентство моделей (1-29 серия)	https://kinokrad.co/255707-agentstvo-modeley.html	8	1995	США	драма	Марина Сардженти, Чип Чалмерс	43
8411	Симпсоны 7 сезон (1-25 серия)	https://kinokrad.co/274205-simpsony-7-szeon.html	10	1995	США	мультфильм, комедия	Марк Керклэнд, Стивен Дин Мур, Джим Рирдон	22
8412	Друзья 2 сезон (1-24 серия)	https://kinokrad.co/274047-druzya-2-sezon.html	9	1995	США	мелодрама, комедия	Гари Хэлворсон, Кевин Брайт, Майкл Лембек	22
8414	Пуаро (6 сезон)	https://kinokrad.co/318898-puaro-6-sezon-1994.html	8	1994	Великобритания	триллер, драма, криминал, детектив	Эдвард Беннет, Ренни Рай, Эндрю Грив	90
8415	Человек-паук (1 сезон)	https://kinokrad.co/289567-chelovek-pauk-1-sezon-1994.html	8	1994	США	мультфильм, фантастика, фэнтези, боевик, триллер, драма, мелодрама, криминал, приключения, семейный	Боб Ричардсон, Роберт Шеллхорн	22
8416	Секретные материалы (2 сезон)	https://kinokrad.co/286545-sekretnye-materialy-2-sezon-1994.html	9	1994	Канада	фантастика, триллер, драма, детектив	Ким Мэннерс, Роб Боумен, Дэвид Наттер	43
8417	Вавилон 5 (2 сезон)	https://kinokrad.co/282941-vavilon-5-2-sezon-1994.html	8	1994	США	фантастика, боевик, драма, приключения	Майкл Виджер, Дэвид Дж. Эгил, Джанет Грик	43
8418	Вавилон 5 (1 сезон)	https://kinokrad.co/282940-vavilon-5-1-sezon-1994.html	8	1994	США	фантастика, боевик, драма, приключения	Майкл Виджер, Дэвид Дж. Эгил, Джанет Грик	43
8419	Черепашки мутанты ниндзя (8 сезон)	https://kinokrad.co/285511-cherepashki-mutanty-nindzya-8-sezon-1994.html	7	1994	США	мультфильм, фантастика, фэнтези, боевик, триллер, драма, комедия, криминал, детектив, приключения	Билл Вульф, Тони Лав, Майк Стюарт	22
8420	Строго на юг (1 сезон)	https://kinokrad.co/283046-strogo-na-yug-1-sezon-1994.html	10	1994	Канада, США	драма, комедия, криминал, приключения	Джордж Блумфилд, Стив ДиМарко, Ричард Дж. Льюис	43
8421	Беверли-Хиллз 90210 (5 сезон)	https://kinokrad.co/282566-beverli-hillz-90210-5-sezon-1994.html	7	1994	США	драма, мелодрама	Дэниэл Эттиэс, Чип Чалмерс, Джейсон Пристли	45
8422	Няня (2 сезон)	https://kinokrad.co/282701-nyanya-2-sezon-1994.html	6	1994	США	комедия	Дороти Лиман, Ли Шаллат Чемел, Питер Марк Джейкобсон	22
8423	Megaman ZX (1 сезон)	https://kinokrad.co/283347-megaman-zx-1-sezon.html	7	1994	США, Япония	мультфильм, фантастика, боевик, семейный	Уолт Кубиак, Katsumi Minokuchi	22
8424	Симпсоны 6 сезон (1-25 серия)	https://kinokrad.co/274203-simpsony-6-sezon.html	10	1994	США	мультфильм, комедия	Марк Керклэнд, Стивен Дин Мур, Джим Рирдон	22
8425	Друзья 1 сезон (1-24 серия)	https://kinokrad.co/274042-druzya-1-sezon.html	9	1994	США	мелодрама, комедия	Гари Хэлворсон, Кевин Брайт, Майкл Лембек	22
8426	Твин Пикс (1 сезон)	https://kinokrad.co/317678-tvin-piks-1-sezon-1993.html	8	1993	США	драма, криминал, детектив, триллер	Дэвид Линч	60
8427	Дживс и Вустер (4 сезон)	https://kinokrad.co/319234-dzhivs-i-vuster-4-sezon-1993.html	7	1993	Великобритания	комедия	Фердинанд Фэйрфакс, Саймон Лэнгтон, Роберт Янг	51
8428	Космические спасатели (1 сезон)	https://kinokrad.co/300761-kosmicheskie-spasateli-1-sezon-1993.html	6	1993	США	фантастика, боевик, приключения	Дэвид Бертон Моррис, Бен Болт, Микаэл Саломон	43
8429	Пуаро (5 сезон)	https://kinokrad.co/318894-puaro-5-sezon-1993.html	8	1993	Великобритания	триллер, драма, криминал, детектив	Эдвард Беннет, Ренни Рай, Эндрю Грив	90
8430	Секретные материалы (1 сезон)	https://kinokrad.co/286543-sekretnye-materialy-1-sezon-1993.html	9	1993	Канада	фантастика, триллер, драма, детектив	Ким Мэннерс, Роб Боумен, Дэвид Наттер	43
8431	Беверли-Хиллз 90210 (4 сезон)	https://kinokrad.co/282565-beverli-hillz-90210-4-sezon-1993.html	9	1993	США	драма, мелодрама	Дэниэл Эттиэс, Чип Чалмерс, Джейсон Пристли	45
8432	Няня (1 сезон)	https://kinokrad.co/282700-nyanya-1-sezon-1993.html	8	1993	США	комедия	Дороти Лиман, Ли Шаллат Чемел, Питер Марк Джейкобсон	22
8433	Кобра (1-22 серия)	https://kinokrad.co/281290-kobra.html	7	1993	США	боевик, приключения	Брэд Тернер, Линдон Чаббак, Джефф Вулнаф	43
8434	Симпсоны 5 сезон (1-22 серия)	https://kinokrad.co/274197-simpsony-5-sezon.html	10	1993	США	мультфильм, комедия	Марк Керклэнд, Стивен Дин Мур, Джим Рирдон	22
8435	Дживс и Вустер (3 сезон)	https://kinokrad.co/319230-dzhivs-i-vuster-3-sezon-1992.html	8	1992	Великобритания	комедия	Фердинанд Фэйрфакс, Саймон Лэнгтон, Роберт Янг	51
8436	Пуаро (4 сезон)	https://kinokrad.co/318718-puaro-4-sezon-1992.html	8	1992	Великобритания	триллер, драма, криминал, детектив	Эдвард Беннет, Ренни Рай, Эндрю Грив	90
8437	Ай – девушка с кассеты (1 сезон)	https://kinokrad.co/53-ay-devushka-s-kassety-span-serial-span.html	6	1992	Япония	аниме, мультфильм, фэнтези, драма, мелодрама, комедия	Мизухо Нишикубо	30
8438	Черепашки мутанты ниндзя (7 сезон)	https://kinokrad.co/285509-cherepashki-mutanty-nindzya-7-sezon-1992.html	7	1992	США	мультфильм, фантастика, фэнтези, боевик, триллер, драма, комедия, криминал, детектив, приключения	Билл Вульф, Тони Лав, Майк Стюарт	22
8439	Черепашки мутанты ниндзя (6 сезон)	https://kinokrad.co/285507-cherepashki-mutanty-nindzya-6-sezon-1992.html	7	1992	США	мультфильм, фантастика, фэнтези, боевик, триллер, драма, комедия, криминал, детектив, приключения	Билл Вульф, Тони Лав, Майк Стюарт	22
8440	Беверли-Хиллз 90210 (3 сезон)	https://kinokrad.co/282564-beverli-hillz-90210-3-sezon-1992.html	8	1992	США	драма, мелодрама	Дэниэл Эттиэс, Чип Чалмерс, Джейсон Пристли	45
8441	Симпсоны 4 сезон (1-22 серия)	https://kinokrad.co/274196-simpsony-4-sezon.html	10	1992	США	мультфильм, комедия	Марк Керклэнд, Стивен Дин Мур, Джим Рирдон	22
8442	Черепашки мутанты ниндзя (5 сезон)	https://kinokrad.co/285505-cherepashki-mutanty-nindzya-5-sezon-1991.html	7	1991	США	мультфильм, фантастика, фэнтези, боевик, триллер, драма, комедия, криминал, детектив, приключения	Билл Вульф, Тони Лав, Майк Стюарт	22
8443	Беверли-Хиллз 90210 (2 сезон)	https://kinokrad.co/282563-beverli-hillz-90210-2-sezon-1991.html	8	1991	США	драма, мелодрама	Дэниэл Эттиэс, Чип Чалмерс, Джейсон Пристли	45
8444	Симпсоны 3 сезон (1-24 серия)	https://kinokrad.co/274195-simpsony-3-sezon.html	10	1991	США	мультфильм, комедия	Марк Керклэнд, Стивен Дин Мур, Джим Рирдон	22
8445	Орел или решка / Повороты судьбы (1990) (все серии)	https://kinokrad.co/255733-orel-ili-reshka-povoroty-sudby-1990-onlayn-serial.html	5	1990	Австралия	драма	Роберт Маршан	213
8446	Дживс и Вустер (2 сезон)	https://kinokrad.co/319134-dzhivs-i-vuster-2-sezon-1991.html	9	1990	Великобритания	комедия	Фердинанд Фэйрфакс, Саймон Лэнгтон, Роберт Янг	51
8447	Дживс и Вустер (1 сезон)	https://kinokrad.co/319130-dzhivs-i-vuster-1-sezon-1990.html	8	1990	Великобритания	комедия	Фердинанд Фэйрфакс, Саймон Лэнгтон, Роберт Янг	51
8448	Секретный агент Макгайвер (6 сезон)	https://kinokrad.co/320058-sekretnyy-agent-makgayver-6-sezon-1990.html	5	1990	США, Канада	боевик, драма, криминал, приключения	Чарльз Коррелл, Уильям Джерегти, Майкл Виджер	46
8449	Пуаро (3 сезон)	https://kinokrad.co/318714-puaro-3-sezon-1990.html	8	1990	Великобритания	триллер, драма, криминал, детектив	Эдвард Беннет, Ренни Рай, Эндрю Грив	90
8450	Пуаро (2 сезон)	https://kinokrad.co/318710-puaro-2-sezon-1990.html	9	1990	Великобритания	триллер, драма, криминал, детектив	Эдвард Беннет, Ренни Рай, Эндрю Грив	90
8451	Черепашки мутанты ниндзя (4 сезон)	https://kinokrad.co/285503-cherepashki-mutanty-nindzya-4-sezon-1990.html	7	1990	США	мультфильм, фантастика, фэнтези, боевик, триллер, драма, комедия, криминал, детектив, приключения	Билл Вульф, Тони Лав, Майк Стюарт	22
8452	Мистер Бин (1 сезон)	https://kinokrad.co/283844-mister-bin-1-sezon-1990.html	9	1990	Великобритания	комедия, семейный	Джон Биркин, Пол Вейланд, Джон Ховард Дейвис	22
8453	Беверли-Хиллз 90210 (1 сезон)	https://kinokrad.co/282562-beverli-hillz-90210-1-sezon-1990.html	9	1990	США	драма, мелодрама	Дэниэл Эттиэс, Чип Чалмерс, Джейсон Пристли	45
8454	Симпсоны 2 сезон (1-22 серия)	https://kinokrad.co/274194-simpsony-2-sezon.html	10	1990	США	мультфильм, комедия	Марк Керклэнд, Стивен Дин Мур, Джим Рирдон	22
8455	Секретный агент Макгайвер (5 сезон)	https://kinokrad.co/320054-sekretnyy-agent-makgayver-5-sezon-1989.html	5	1989	США, Канада	боевик, драма, криминал, приключения	Чарльз Коррелл, Уильям Джерегти, Майкл Виджер	46
8456	Пуаро (1 сезон)	https://kinokrad.co/318706-puaro-1-sezon-1989.html	8	1989	Великобритания	триллер, драма, криминал, детектив	Эдвард Беннет, Ренни Рай, Эндрю Грив	90
8457	Черепашки мутанты ниндзя (3 сезон)	https://kinokrad.co/285501-cherepashki-mutanty-nindzya-3-sezon-1989.html	7	1989	США	мультфильм, фантастика, фэнтези, боевик, триллер, драма, комедия, криминал, детектив, приключения	Билл Вульф, Тони Лав, Майк Стюарт	22
8458	Просто Мария (1 сезон)	https://kinokrad.co/282397-prosto-mariya-1-sezon-1993.html	6	1989	Мексика	драма, мелодрама	Артуро Рипстейн, Беатрис Шеридан	40
8459	Симпсоны 1 сезон (1-13 серия)	https://kinokrad.co/274193-simpsony-1-sezon.html	10	1989	США	мультфильм, комедия	Марк Керклэнд, Стивен Дин Мур, Джим Рирдон	22
8460	Секретный агент Макгайвер (4 сезон)	https://kinokrad.co/320050-sekretnyy-agent-makgayver-4-sezon-1988.html	6	1988	США, Канада	боевик, драма, криминал, приключения	Чарльз Коррелл, Уильям Джерегти, Майкл Виджер	46
8461	Детективное агентство «Лунный свет» (5 сезон)	https://kinokrad.co/282986-detektivnoe-agentstvo-lunnyy-svet-5-sezon-1988.html	9	1988	США	драма, мелодрама, комедия, детектив	Аллан Аркуш, Питер Уэрнер, Кристиан И. Найби II	43
8462	Секретный агент Макгайвер (3 сезон)	https://kinokrad.co/320030-sekretnyy-agent-makgayver-3-sezon-1987.html	5	1987	США, Канада	боевик, драма, криминал, приключения	Чарльз Коррелл, Уильям Джерегти, Майкл Виджер	46
8463	Ремингтон Стил (5 сезон)	https://kinokrad.co/283304-remington-stil-5-sezon-1987.html	7	1987	США	драма, мелодрама, комедия, криминал, детектив, приключения	Сеймур Робби, Дон Уайс, Кристофер Хиблер	43
8464	Черепашки мутанты ниндзя (1 сезон)	https://kinokrad.co/285499-cherepashki-mutanty-nindzya-1-sezon-1987.html	8	1987	США	мультфильм, фантастика, фэнтези, боевик, триллер, драма, комедия, криминал, детектив, приключения	Билл Вульф, Тони Лав, Майк Стюарт	22
8465	Городской охотник (1 сезон)	https://kinokrad.co/283775-gorodskoy-ohotnik-1-sezon-1987.html	7	1987	Япония	аниме, мультфильм, комедия, приключения	Кэндзи Кодама, Киёси Эгами, Такаси Иманиси	24
8466	Детективное агентство «Лунный свет» (4 сезон)	https://kinokrad.co/282984-detektivnoe-agentstvo-lunnyy-svet-4-sezon-1987.html	9	1987	США	драма, мелодрама, комедия, детектив	Аллан Аркуш, Питер Уэрнер, Кристиан И. Найби II	43
8467	Секретный агент Макгайвер (2 сезон)	https://kinokrad.co/320026-sekretnyy-agent-makgayver-2-sezon.html	6	1986	США, Канада	боевик, драма, криминал, приключения	Чарльз Коррелл, Уильям Джерегти, Майкл Виджер	46
8468	Детективное агентство «Лунный свет» (3 сезон)	https://kinokrad.co/282983-detektivnoe-agentstvo-lunnyy-svet-3-sezon-1986.html	9	1986	США	драма, мелодрама, комедия, детектив	Аллан Аркуш, Питер Уэрнер, Кристиан И. Найби II	43
8469	Секретный агент Макгайвер (1 сезон)	https://kinokrad.co/320022-sekretnyy-agent-makgayver-1-sezon-1985.html	6	1985	США, Канада	боевик, драма, криминал, приключения	Чарльз Коррелл, Уильям Джерегти, Майкл Виджер	46
8470	Секретный агент Макгайвер (7 сезон)	https://kinokrad.co/320062-sekretnyy-agent-makgayver-7-sezon-1991.html	5	1985	США, Канада	боевик, драма, криминал, приключения	Чарльз Коррелл, Уильям Джерегти, Майкл Виджер	46
8471	Ремингтон Стил (4 сезон)	https://kinokrad.co/283303-remington-stil-4-sezon-1985.html	7	1985	США	драма, мелодрама, комедия, криминал, детектив, приключения	Сеймур Робби, Дон Уайс, Кристофер Хиблер	43
8472	Противостояние (1 сезон)	https://kinokrad.co/284985-protivostoyanie-1-sezon-1985.html	8	1985	СССР	драма, криминал, детектив, военный	Семён Аранович	63
8473	Детективное агентство «Лунный свет» (2 сезон)	https://kinokrad.co/282981-detektivnoe-agentstvo-lunnyy-svet-2-sezon-1985.html	9	1985	США	драма, мелодрама, комедия, детектив	Аллан Аркуш, Питер Уэрнер, Кристиан И. Найби II	43
8474	Детективное агентство «Лунный свет» (1 сезон)	https://kinokrad.co/282980-detektivnoe-agentstvo-lunnyy-svet-1-sezon-1985.html	9	1985	США	драма, мелодрама, комедия, детектив	Аллан Аркуш, Питер Уэрнер, Кристиан И. Найби II	43
8475	Ремингтон Стил (3 сезон)	https://kinokrad.co/283302-remington-stil-3-sezon-1984.html	7	1984	США	драма, мелодрама, комедия, криминал, детектив, приключения	Сеймур Робби, Дон Уайс, Кристофер Хиблер	43
8476	Поющие в терновнике (1 сезон)	https://kinokrad.co/287223-poyuschie-v-ternovnike-1-sezon-1983.html	7	1983	США, Австралия	драма	Дэрил Дьюк	160
8477	Ремингтон Стил (2 сезон)	https://kinokrad.co/283301-remington-stil-2-sezon-1983.html	6	1983	США	драма, мелодрама, комедия, криминал, детектив, приключения	Сеймур Робби, Дон Уайс, Кристофер Хиблер	43
8478	Чертова служба в госпитале Мэш (11 сезон)	https://kinokrad.co/302963-chertova-sluzhba-v-gospitale-mjesh-11-sezon-1982.html	8	1982	США	драма, комедия, военный	Чарльз С. Дубин, Алан Алда, Берт Меткалф	22
8479	Ремингтон Стил (1 сезон)	https://kinokrad.co/283300-remington-stil-1-sezon-1982.html	8	1982	США	драма, мелодрама, комедия, криминал, детектив, приключения	Сеймур Робби, Дон Уайс, Кристофер Хиблер	43
8480	Чертова служба в госпитале Мэш (10 сезон)	https://kinokrad.co/302960-chertova-sluzhba-v-gospitale-mjesh-10-sezon-1981.html	8	1981	США	драма, комедия, военный	Чарльз С. Дубин, Алан Алда, Берт Меткалф	22
8481	Чертова служба в госпитале Мэш (9 сезон)	https://kinokrad.co/302954-chertova-sluzhba-v-gospitale-mjesh-9-sezon-1980.html	8	1980	США	драма, комедия, военный	Чарльз С. Дубин, Алан Алда, Берт Меткалф	22
8482	Чертова служба в госпитале Мэш (8 сезон)	https://kinokrad.co/302951-chertova-sluzhba-v-gospitale-mjesh-8-sezon-1979.html	8	1979	США	драма, комедия, военный	Чарльз С. Дубин, Алан Алда, Берт Меткалф	22
8483	Чертова служба в госпитале Мэш (7 сезон)	https://kinokrad.co/302948-chertova-sluzhba-v-gospitale-mjesh-7-sezon-1978.html	8	1978	США	драма, комедия, военный	Чарльз С. Дубин, Алан Алда, Берт Меткалф	22
8484	Чертова служба в госпитале Мэш (6 сезон)	https://kinokrad.co/302945-chertova-sluzhba-v-gospitale-mjesh-6-sezon-1977.html	8	1977	США	драма, комедия, военный	Чарльз С. Дубин, Алан Алда, Берт Меткалф	22
8485	Чертова служба в госпитале Мэш (5 сезон)	https://kinokrad.co/302942-chertova-sluzhba-v-gospitale-mjesh-5-sezon-1976.html	8	1976	США	драма, комедия, военный	Чарльз С. Дубин, Алан Алда, Берт Меткалф	22
8486	Чертова служба в госпитале Мэш (4 сезон)	https://kinokrad.co/302939-chertova-sluzhba-v-gospitale-mjesh-4-sezon-1975.html	8	1975	США	драма, комедия, военный	Чарльз С. Дубин, Алан Алда, Берт Меткалф	22
8487	Чертова служба в госпитале Мэш (3 сезон)	https://kinokrad.co/302936-chertova-sluzhba-v-gospitale-mjesh-3-sezon-1974.html	8	1974	США	драма, комедия, военный	Чарльз С. Дубин, Алан Алда, Берт Меткалф	22
8488	Чертова служба в госпитале Мэш (2 сезон)	https://kinokrad.co/302933-chertova-sluzhba-v-gospitale-mjesh-2-sezon-1973.html	8	1973	США	драма, комедия, военный	Чарльз С. Дубин, Алан Алда, Берт Меткалф	22
8489	Чертова служба в госпитале Мэш (1 сезон)	https://kinokrad.co/302927-chertova-sluzhba-v-gospitale-mjesh-1-sezon-1972.html	8	1972	США	драма, комедия, военный	Чарльз С. Дубин, Алан Алда, Берт Меткалф	22
8490	Шоу Бенни Хилла (1 сезон)	https://kinokrad.co/283919-shou-benni-hilla-1-sezon-1967.html	9	1967	Великобритания	комедия, музыка	Джон Скоффилд	28
8491	Альфред Хичкок представляет (5 сезон)	https://kinokrad.co/317730-alfred-hichkok-predstavlyaet-5-sezon-1959.html	6	1959	США	триллер, драма, криминал, детектив	Роберт Стивенс, Пол Хенрейд, Хершел Догерти	25
8492	Альфред Хичкок представляет (4 сезон)	https://kinokrad.co/317722-alfred-hichkok-predstavlyaet-4-sezon-1958.html	6	1958	США	триллер, драма, криминал, детектив	Роберт Стивенс, Пол Хенрейд, Хершел Догерти	25
8493	Альфред Хичкок представляет (3 сезон)	https://kinokrad.co/317718-alfred-hichkok-predstavlyaet-3-sezon-1957.html	5	1957	США	триллер, драма, криминал, детектив	Роберт Стивенс, Пол Хенрейд, Хершел Догерти	25
8494	Альфред Хичкок представляет (2 сезон)	https://kinokrad.co/317714-alfred-hichkok-predstavlyaet-2-sezon-1956.html	4	1956	США	триллер, драма, криминал, детектив	Роберт Стивенс, Пол Хенрейд, Хершел Догерти	25
8495	Альфред Хичкок представляет (1 сезон)	https://kinokrad.co/317710-alfred-hichkok-predstavlyaet-1-sezon-1955.html	7	1955	США	триллер, драма, криминал, детектив	Роберт Стивенс, Пол Хенрейд, Хершел Догерти	25
8496	Тайны Лауры (1 сезон)	https://kinokrad.co/273013-tayny-laury-1-sezon-11-seriya.html	9		США	детектив	МакДжи	45
\.


--
-- Name: coin_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.coin_id_seq', 2434, true);


--
-- Name: movie_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.movie_id_seq', 8496, true);


--
-- Name: coin coin_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.coin
    ADD CONSTRAINT coin_pkey PRIMARY KEY (id);


--
-- Name: movie movie_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movie
    ADD CONSTRAINT movie_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

