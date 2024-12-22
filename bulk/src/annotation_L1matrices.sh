#!/bin/bash

regions="/scale/gr01/shared/jjakobsson/backup/raquelgg_fs3_jakobssonlab/annotations/hg38/rmsk/hg38.fa.fulllength.L1HS_L1PA.bed"
grep L1HS $regions  > L1HS_FL.bed
grep L1PA2 $regions  > L1PA2_FL.bed
grep L1PA3 $regions  > L1PA3_FL.bed
grep L1PA4 $regions  > L1PA4_FL.bed
  
awk '(NR>1)' L1HS_FL.bed | awk '{{if($6 == "+"){{print $0}}}}' > regions_positive_l1hs.bed
awk '(NR>1)' L1PA2_FL.bed | awk '{{if($6 == "+"){{print $0}}}}' > regions_positive_l1pa2.bed
awk '(NR>1)' L1PA3_FL.bed | awk '{{if($6 == "+"){{print $0}}}}' > regions_positive_l1pa3.bed
awk '(NR>1)' L1PA4_FL.bed | awk '{{if($6 == "+"){{print $0}}}}' > regions_positive_l1pa4.bed

awk '(NR>1)' L1HS_FL.bed | awk '{{if($6 == "-"){{print $0}}}}' > regions_negative_l1hs.bed
awk '(NR>1)' L1PA2_FL.bed | awk '{{if($6 == "-"){{print $0}}}}' > regions_negative_l1pa2.bed
awk '(NR>1)' L1PA3_FL.bed | awk '{{if($6 == "-"){{print $0}}}}' > regions_negative_l1pa3.bed
awk '(NR>1)' L1PA4_FL.bed | awk '{{if($6 == "-"){{print $0}}}}' > regions_negative_l1pa4.bed

cat regions_positive_l1hs.bed regions_positive_l1pa2.bed regions_positive_l1pa3.bed regions_positive_l1pa4.bed > regions_positive_l1hs_l1pa4.bed
cat regions_negative_l1hs.bed regions_negative_l1pa2.bed regions_negative_l1pa3.bed regions_negative_l1pa4.bed > regions_negative_l1hs_l1pa4.bed

cat L1HS_FL.bed L1PA2_FL.bed L1PA3_FL.bed L1PA4_FL.bed > L1HS_L1PA4_FL.bed 

# Expressed in hiPSC
regions_hiPS_only=/scale/gr01/shared/jjakobsson/backup/MN07_L1CRISPR/bulk/results/tables/venn_diagram_LacZ_org_WT_hiPSC/FL_L1PA_WT_hiPSC_only_expressed.bed
regions_both=/scale/gr01/shared/jjakobsson/backup/MN07_L1CRISPR/bulk/results/tables/venn_diagram_LacZ_org_WT_hiPSC/FL_L1PA_LacZ_org_WT_hiPSC_expressed.bed
regions_expressed_hiPS=/scale/gr01/shared/jjakobsson/backup/MN07_L1CRISPR/bulk/results/tables/venn_diagram_LacZ_org_WT_hiPSC/FL_L1PA_WT_hiPSC_expressed.bed

cat $regions_hiPS_only $regions_both > $regions_expressed_hiPS

grep L1HS $regions_expressed_hiPS  > L1HS_FL_expressed_hiPS.bed
grep L1PA2 $regions_expressed_hiPS  > L1PA2_FL_expressed_hiPS.bed
grep L1PA3 $regions_expressed_hiPS  > L1PA3_FL_expressed_hiPS.bed
grep L1PA4 $regions_expressed_hiPS  > L1PA4_FL_expressed_hiPS.bed

awk '(NR>1)' L1HS_FL_expressed_hiPS.bed | awk '{{if($6 == "+"){{print $0}}}}' > regions_positive_l1hs_expressed_hiPS.bed
awk '(NR>1)' L1PA2_FL_expressed_hiPS.bed | awk '{{if($6 == "+"){{print $0}}}}' > regions_positive_l1pa2_expressed_hiPS.bed
awk '(NR>1)' L1PA3_FL_expressed_hiPS.bed | awk '{{if($6 == "+"){{print $0}}}}' > regions_positive_l1pa3_expressed_hiPS.bed
awk '(NR>1)' L1PA4_FL_expressed_hiPS.bed | awk '{{if($6 == "+"){{print $0}}}}' > regions_positive_l1pa4_expressed_hiPS.bed

awk '(NR>1)' L1HS_FL_expressed_hiPS.bed | awk '{{if($6 == "-"){{print $0}}}}' > regions_negative_l1hs_expressed_hiPS.bed
awk '(NR>1)' L1PA2_FL_expressed_hiPS.bed | awk '{{if($6 == "-"){{print $0}}}}' > regions_negative_l1pa2_expressed_hiPS.bed
awk '(NR>1)' L1PA3_FL_expressed_hiPS.bed | awk '{{if($6 == "-"){{print $0}}}}' > regions_negative_l1pa3_expressed_hiPS.bed
awk '(NR>1)' L1PA4_FL_expressed_hiPS.bed | awk '{{if($6 == "-"){{print $0}}}}' > regions_negative_l1pa4_expressed_hiPS.bed

regions_org_only=/scale/gr01/shared/jjakobsson/backup/MN07_L1CRISPR/bulk/results/tables/venn_diagram_LacZ_org_WT_hiPSC/FL_L1PA_LacZ_org_only_expressed.bed
regions_expressed_org=/scale/gr01/shared/jjakobsson/backup/MN07_L1CRISPR/bulk/results/tables/venn_diagram_LacZ_org_WT_hiPSC/FL_L1PA_LacZ_org_expressed.bed

cat $regions_org_only $regions_both > $regions_expressed_org

grep L1HS $regions_expressed_org  > L1HS_FL_expressed_org.bed
grep L1PA2 $regions_expressed_org  > L1PA2_FL_expressed_org.bed
grep L1PA3 $regions_expressed_org  > L1PA3_FL_expressed_org.bed
grep L1PA4 $regions_expressed_org  > L1PA4_FL_expressed_org.bed

awk '(NR>1)' L1HS_FL_expressed_org.bed | awk '{{if($6 == "+"){{print $0}}}}' > regions_positive_l1hs_expressed_org.bed
awk '(NR>1)' L1PA2_FL_expressed_org.bed | awk '{{if($6 == "+"){{print $0}}}}' > regions_positive_l1pa2_expressed_org.bed
awk '(NR>1)' L1PA3_FL_expressed_org.bed | awk '{{if($6 == "+"){{print $0}}}}' > regions_positive_l1pa3_expressed_org.bed
awk '(NR>1)' L1PA4_FL_expressed_org.bed | awk '{{if($6 == "+"){{print $0}}}}' > regions_positive_l1pa4_expressed_org.bed

awk '(NR>1)' L1HS_FL_expressed_org.bed | awk '{{if($6 == "-"){{print $0}}}}' > regions_negative_l1hs_expressed_org.bed
awk '(NR>1)' L1PA2_FL_expressed_org.bed | awk '{{if($6 == "-"){{print $0}}}}' > regions_negative_l1pa2_expressed_org.bed
awk '(NR>1)' L1PA3_FL_expressed_org.bed | awk '{{if($6 == "-"){{print $0}}}}' > regions_negative_l1pa3_expressed_org.bed
awk '(NR>1)' L1PA4_FL_expressed_org.bed | awk '{{if($6 == "-"){{print $0}}}}' > regions_negative_l1pa4_expressed_org.bed


