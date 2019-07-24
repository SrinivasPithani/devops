#!/usr/bin/ruby

#x = ["IOIFULSU2019MCA0000115001090519","IFULSQ2021","IOIFULSU2019MCA0000120001090519","IOIFULSU2019MPA0000117001090519","IOIFULSU2019MCA0000121001090519","IOIFULSU2019MCA0000128001090519","IFNCFQ2019","IFNCFQ2021","IFULSU2021","IFEOV2020","INMNG2024","INMNG2023","IFENQ2020","IFNCFJ2021","INMNV2021","INMNV2023","INMNV2022","IOIFULSU2019MPA0000107001090519","IFATWM2023","IFATWM2022","IOIFULSQ2019MPA0000118001080519","IOIFULSU2019MCA0000114001090519","IOIFULSQ2019MPA0000114001080519","IOIFULSQ2019MCA0000121001080519","IOIFULSQ2019MPA0000113001080519","IFEOU2020","IFFBQ2022","ILSPFF#EN#N2020Q2020","IFNCFM2021","IFENZ2020","IOIFULSU2019MCA0000118001090519","IFNCFN2021","IFETU2020","IFETU2021","IFFBX2021","IFFBX2022","IFFBH2022","IFFBH2023","INMNG2022","IFATWG2023","IFATWG2022","IOIFULSQ2019MPA0000110001080519","IFNCFK2021","IOIFULSQ2019MCA0000115001080519","IFETZ2025","ILSPFF#EN#K2020M2020","IFNCFH2021","IOIFULSU2019MCA0000124001090519","IFATWF2023","IFATWF2022","IOIFULSQ2019MPA0000119001080519","IFULSX2021","IOIFULSQ2019MCA0000122001080519","IOIFULSQ2019MCA0000118001080519","IFETG2022","IFETG2021","IOIFULSU2019MPA0000109001090519","IFFBG2023","IFFBG2022","IOIFULSU2019MCA0000123001090519","IFEOQ2020","IOIFULSU2019MPA0000119001090519","IFETX2020","IFETX2021","IFATWH2022","IFAFRU2021","IFAFRU2020","IFETK2021","IFATWH2023","IFETF2022","IFETF2021","IOIFULSQ2019MCA0000116001080519","IFAFRN2021","IFAFRN2020","IFAFRN2019","IFETJ2022","IFETJ2021","IFAFRV2021","IFAFRV2020","IFFBN2022","IFEOZ2020","INMNJ2022","IOIFULSQ2019MCA0000124001080519","INMNJ2023","INMNJ2021","INMNJ2024","IOIFULSU2019MPA0000114001090519","IOIFULSU2019MPA0000118001090519","IFFBF2023","IFFBF2022","IFAFRJ2021","IFAFRJ2020","IOIFFBV2019MPA0000074502082719","IOIFULSQ2019MPA0000111001080519","IOIFULSU2019MCA0000125001090519","IFCERZ2020","IFCERZ2019","IFNCFZ2021","IFAFRH2020","IFAFRH2021","IFNCFV2021","IFAFRM2020","IFAFRM2021","IFATWZ2022","IFATWZ2023","IFATWK2022","IFATWK2023","IFNCFG2021","IFULSV2021","IFATWU2023","IFATWU2022","IFATWJ2023","IFATWJ2022","IOIFULSU2019MPA0000115001090519","IOIFULSU2019MPA0000110001090519","INMNQ2022","INMNQ2021","INMNQ2024","INMNQ2023","IOIFULSQ2019MPA0000112001080519","IFETH2022","IFETH2021","IOIFULSU2019MCA0000116001090519","IFEOX2020","IOIFULSU2019MPA0000108001090519","ILSPFF#EN#J2020M2020","IFNCFF2021","IFNCFX2021","IFATWQ2022","IFATWQ2023","IFFBJ2022","IFENU2020","IOIFULSU2019MPA0000113001090519","IOIFULSU2019MCA0000126001090519","IFFBK2022","IOIFULSQ2019MCA0000119001080519"]

y = ["JFGCZ2020","JFGCZ2021","JFQIU2020","JFALIZ2019","JFAUPZ2019","JFGCZ2019","JFQIU2019","JFHGZ2019","JFSIH2020","JFSIH2021","JFGCM2025","JFGCM2024","JFGCM2023","JFGCM2022","JFGCM2021","JFGCM2020","JFGCN2019","JFQCF2020","JFHGZ2021","JFHGZ2020","JFHGX2019","JFHGU2019","JFQIK2021","JFQIK2020","JFHGU2021","JFHGU2020","JFQIZ2020","JFHGF2020","JFGCU2019","JFHGX2020","JFHGF2021","JFHGM2020","JFSIZ2019","JFALIQ2019","JFGCZ2024","JFAUPV2019","JFGCZ2023","JFGCZ2022","JFSIQ2019","JFQOV2019","JFHGG2021","JFGCG2021","JFHGG2020","JFQOM2020","JFGCG2020","JFHGN2021","JFQCV2019","JFHGV2020","JFSIN2019","JFSIN2020","JFSIN2021","JFQOQ2019","JFSIN2022","JFSIN2023","JFSIZ2023","JFGCJ2020","JFSIZ2022","JFGCJ2021","JFSIZ2021","JFQIF2021","JFQOM2021","JFQIN2020","JFQIF2020","JFSIZ2020","JFQOV2020","JFHGN2020","JFHGV2019","JFSIK2021","JFSIK2020","JFGCV2020","JFQCX2019","JFQOJ2020","JFQOJ2021","JFQCZ2019","JFQOZ2020","JFHGN2019","JFSIF2021","JFSIF2020","JFALIV2019","JFQIZ2019","JFQOZ2019","JFQCU2019","JFQOQ2020","JFGCV2019","JFGCQ2020","JFHGQ2020","JFSIU2020","JFHGK2021","JFHGH2021","JFHGK2020","JFHGH2020","JFSIU2019","JFQCH2020","JFAUPU2019","JFALIX2019","JFHGQ2019","JFALIU2019","JFQCQ2019","JFGCQ2019","JFHGJ2020","JFQOG2020","JFQIH2021","JFQOG2021","JFQIH2020"]


z = ["FLSPFF#NG#Q2019M2021","FLSPFF#NG#Q2019M2020","FLSPFF#HO#Q2019X2019","FLSPFF#NG#Q2019G2020","FFRBJ2020","FLSPFF#HO#Z2020M2021","FLSPFF#HO#Z2020M2022","FLSPFF#CL#X2019Z2020","FLSPFF#CL#X2019Z2021","FLSPFF#PL#V2019F2020","FLSPFF#NG#M2020M2021","FLSPFF#HO#V2019M2022","FLSPFF#HO#G2020J2020","FLSPFF#HO#V2019M2021","FLSPFF#HO#V2019M2020","FFPLF2020","FLSPFF#HO#X2019Z2019","FLSPFF#NG#J2020J2021","FFBZF2020","FLSPFF#PA#Z2019H2020","FLSPFF#CL#N2020X2020","FLSPFF#NG#M2020V2020","FLSPFF#NG#N2020M2021","FLKRFF#HOCL#K2020","FFRBM2020","FFHOM2020","FFHOM2021","FFHOM2022","FLSPFF#CL#X2019J2020","FLSPFF#HO#Q2019U2019","FLSPFF#NG#J2020F2021","FLSPFF#NG#X2019M2021","FLSPFF#NG#X2019M2020","FLSPFF#HO#X2019Z2020","FLSPFF#HO#X2019Z2021","FLSPFF#CL#F2020Z2021"]

a = ["LS2_CA-USD_Q1921_U1918","LF_AG-USD_H2018","LF2_CA-USD_J2015","LN_CA_WS_CATS_JOHO","LN_AA_WS_TB80_LEGH","LN_CA_WS_CATS_ANTW","LS_AA-GBP_4M_15M27M","LS_PE-USD_1F_2F","LN_AA_WS_T121_INCH","LN_NI_WS_BPEL_ANTW","LS2_AG-USD_C_M2116","LN_ZS_WS_BILB","LF2_CA-USD_J2002","LS3_CA-USD_Q1902_3M","LF2_CA-USD_M2116","LS2_ZS-USD_F2015_H2018","LF_PB-USD_X1913","LF_PE-USD_C","LN_AH_WS_ANTW","LN_CA_WS_BILB","LF_ZS-GBP_C","LN_NI_WS_DETR","LS_PB-GBP_3F_3M","LN_AA_WS_TB26_BILB","LF_CO-JPY_C","LN_NI_WS_CAT1_NEWO","LF_PB-USD_X1920","LN_AA_WS_IN26_HULL","LN_AA_WS_S121_KAOH","LS_SN-JPY_1F_2F","LF2_ZS-USD_K2119","LF2_ZS-USD_U2016","LF_PB-USD_J2015","LF_PB-USD_V2021","LF2_AH-USD_Q2019","LF2_ZS-USD_N1931","LN_NI_WS_SING","LF2_ZS-USD_N1930","LF_LE-JPY_C","LS_AA-JPY_1F_2F","LF_NI-USD_Q2217","LF_AH-USD_H2117","LN_NI_WS_CAT2_INCH","LF2_ZS-USD_X2117","LF_MO-EUR_C","LF2_ZS-USD_N1929","LF2_ZS-USD_N1926","LF2_ZS-USD_N1924","LF2_ZS-USD_N1925","LF2_ZS-USD_N1922","LF2_ZS-USD_N1923","LS2_AU-USD_C_H2216","LS_LL-EUR_3F_3M","LS_NI-GBP_1F_2F","LS_LL-GBP_2F_3F","LN_CO_WS_CGPO_BALT","LN_NI_WS_BBRI_GWAN","LF_PB-USD_X1906","LS_CA-JPY_1F_2F","LF_PB-USD_X1904","LF2_SN-USD_N2015","LF2_ZS-USD_N1919","LF2_NI-USD_U1905","LF2_NI-USD_U1906","LF2_ZS-USD_N1916","LS1_NI-USD_3M_X1920","LF_NI-USD_V2416","LN_NI_WS_BRIQ_DUBA","LF2_ZS-USD_N1917","LF_ZS-USD_F2219","LF2_NI-USD_U1903","LF2_NI-USD_U1904","LF2_ZS-USD_N1918","LS2_ZS-USD_V1915_V1916","LS2_AH-USD_Z2016_F2120","LF_LE-EUR_3M","LN_AA_WS_JOHO","LF_NI-JPY_3M"]

z.each { |x| puts x.split("#").to_a }
