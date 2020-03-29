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
-- Name: coin id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.coin ALTER COLUMN id SET DEFAULT nextval('public.coin_id_seq'::regclass);


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
-- Name: coin_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.coin_id_seq', 2434, true);


--
-- Name: coin coin_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.coin
    ADD CONSTRAINT coin_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

