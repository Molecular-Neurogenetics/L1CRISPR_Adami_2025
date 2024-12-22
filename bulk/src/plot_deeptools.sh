#!/bin/bash

# RNAseq WT hiPSC
computeMatrixOperations relabel -m FL_L1PAs_WT_hiPSC_positive.mtx --groupLabels L1HS L1PA2 L1PA3 L1PA4 -o FL_L1PAs_WT_hiPSC_positive_relabel.mtx
computeMatrixOperations relabel -m FL_L1PAs_WT_hiPSC_reverse.mtx --groupLabels L1HS L1PA2 L1PA3 L1PA4 -o FL_L1PAs_WT_hiPSC_reverse_relabel.mtx

computeMatrixOperations rbind -m FL_L1PAs_WT_hiPSC_positive_relabel.mtx FL_L1PAs_WT_hiPSC_reverse_relabel.mtx -o FL_L1PAs_WT_hiPSC_RNAseq_fig1.mtx

plotHeatmap -m FL_L1PAs_WT_hiPSC_RNAseq_fig1.mtx -o FL_L1PAs_WT_hiPSC_RNAseq_fig1.pdf --colorMap Blues --sortUsingSamples 4 5 6 --averageTypeSummaryPlot sum
plotHeatmap -m FL_L1PAs_WT_hiPSC_RNAseq_fig1.mtx -o FL_L1PAs_WT_hiPSC_RNAseq_fig1_sort_antisense.pdf --colorMap Blues --sortUsingSamples 10 11 12 --averageTypeSummaryPlot sum

# RNAseq hiPSC crispri
computeMatrixOperations relabel -m FL_L1PAs_crispri_hiPSC_RNAseq_positive.mtx --groupLabels L1HS L1PA2 L1PA3 L1PA4 -o FL_L1PAs_crispri_hiPSC_RNAseq_positive_relabel.mtx
computeMatrixOperations relabel -m FL_L1PAs_crispri_hiPSC_RNAseq_reverse.mtx --groupLabels L1HS L1PA2 L1PA3 L1PA4 -o FL_L1PAs_crispri_hiPSC_RNAseq_reverse_relabel.mtx

computeMatrixOperations rbind -m FL_L1PAs_crispri_hiPSC_RNAseq_positive_relabel.mtx FL_L1PAs_crispri_hiPSC_RNAseq_reverse_relabel.mtx -o FL_L1PAs_crispri_hiPSC_RNAseq_fig3.mtx

plotHeatmap -m FL_L1PAs_crispri_hiPSC_RNAseq_fig3.mtx -o FL_L1PAs_crispri_hiPSC_RNAseq_fig3.pdf --colorMap Blues --averageTypeSummaryPlot sum --sortUsingSamples 16 17 18 --outFileSortedRegions FL_L1PAs_crispri_hiPSC_RNAseq_fig3.tab
plotHeatmap -m FL_L1PAs_crispri_hiPSC_RNAseq_fig3.mtx -o FL_L1PAs_crispri_hiPSC_RNAseq_fig3_sort_antisense.pdf --colorMap Blues --averageTypeSummaryPlot sum --sortUsingSamples 34 35 36

# RNAseq hiPSC crispri H3K4me3 +
computeMatrixOperations relabel -m FL_L1PAs_crispri_hiPSC_H3K4me3_cutnrun_RNAseq_positive.mtx --groupLabels peaks -o FL_L1PAs_crispri_hiPSC_H3K4me3_cutnrun_RNAseq_positive_relabel.mtx
computeMatrixOperations relabel -m FL_L1PAs_crispri_hiPSC_H3K4me3_cutnrun_RNAseq_reverse.mtx --groupLabels peaks -o FL_L1PAs_crispri_hiPSC_H3K4me3_cutnrun_RNAseq_reverse_relabel.mtx

computeMatrixOperations rbind -m FL_L1PAs_crispri_hiPSC_H3K4me3_cutnrun_RNAseq_positive_relabel.mtx FL_L1PAs_crispri_hiPSC_H3K4me3_cutnrun_RNAseq_reverse_relabel.mtx -o FL_L1PAs_crispri_hiPSC_H3K4me3_cutnrun_RNAseq_fig3.mtx

plotHeatmap -m FL_L1PAs_crispri_hiPSC_H3K4me3_cutnrun_RNAseq_fig3.mtx -o FL_L1PAs_crispri_hiPSC_H3K4me3_cutnrun_RNAseq_fig3.pdf --colorMap Blues --sortUsingSamples 10 11 12 --averageTypeSummaryPlot sum --yMax 500
plotHeatmap -m FL_L1PAs_crispri_hiPSC_H3K4me3_cutnrun_RNAseq_fig3.mtx -o FL_L1PAs_crispri_hiPSC_H3K4me3_cutnrun_RNAseq_fig3_sort_antisense.pdf --colorMap Blues --sortUsingSamples 28 29 30 --averageTypeSummaryPlot sum --yMax 500

# RNAseq WT hiPSC + LacZ Organoids
computeMatrixOperations relabel -m FL_L1PAs_WT_org_hiPSC_RNAseq_positive.mtx --groupLabels L1HS L1PA2 L1PA3 L1PA4 -o FL_L1PAs_WT_org_hiPSC_RNAseq_positive_relabel.mtx
computeMatrixOperations relabel -m FL_L1PAs_WT_org_hiPSC_RNAseq_reverse.mtx --groupLabels L1HS L1PA2 L1PA3 L1PA4 -o FL_L1PAs_WT_org_hiPSC_RNAseq_reverse_relabel.mtx

computeMatrixOperations rbind -m FL_L1PAs_WT_org_hiPSC_RNAseq_positive_relabel.mtx FL_L1PAs_WT_org_hiPSC_RNAseq_reverse_relabel.mtx -o FL_L1PAs_WT_org_hiPSC_RNAseq_fig5.mtx 

plotHeatmap -m FL_L1PAs_WT_org_hiPSC_RNAseq_fig5.mtx -o FL_L1PAs_WT_org_hiPSC_RNAseq_fig5.pdf --colorMap Blues --averageTypeSummaryPlot sum --sortUsingSamples 13 14 15 1 2 3
plotHeatmap -m FL_L1PAs_WT_org_hiPSC_RNAseq_fig5.mtx -o FL_L1PAs_WT_org_hiPSC_RNAseq_fig5_sort_antisense.pdf --colorMap Blues --averageTypeSummaryPlot sum --sortUsingSamples 19 20 21

# RNAseq CRISPRi Organoids
computeMatrixOperations relabel -m FL_L1PAs_org_crispri_RNAseq_positive.mtx --groupLabels L1HS L1PA2 L1PA3 L1PA4 -o FL_L1PAs_org_crispri_RNAseq_positive_relabel.mtx 
computeMatrixOperations relabel -m FL_L1PAs_org_crispri_RNAseq_reverse.mtx --groupLabels L1HS L1PA2 L1PA3 L1PA4 -o FL_L1PAs_org_crispri_RNAseq_reverse_relabel.mtx

computeMatrixOperations rbind -m FL_L1PAs_org_crispri_RNAseq_positive_relabel.mtx FL_L1PAs_org_crispri_RNAseq_reverse_relabel.mtx -o FL_L1PAs_org_crispri_RNAseq_fig6.mtx

plotHeatmap -m FL_L1PAs_org_crispri_RNAseq_fig6.mtx -o FL_L1PAs_org_crispri_RNAseq_fig6.pdf --colorMap Blues --averageTypeSummaryPlot sum --sortUsingSamples 9 10 11
plotHeatmap -m FL_L1PAs_org_crispri_RNAseq_fig6.mtx -o FL_L1PAs_org_crispri_RNAseq_fig6_sort_antisense.pdf --colorMap Blues --averageTypeSummaryPlot sum --sortUsingSamples 22 23 24

# RNAseq hiPSC vs Organoids venn
computeMatrixOperations relabel -m venn_FL_L1PAs_WT_hiPSC_LacZ_org_RNAseq_positive.mtx --groupLabels org_only hiPS_only both -o venn_FL_L1PAs_WT_hiPSC_LacZ_org_RNAseq_positive_relabel.mtx
computeMatrixOperations relabel -m venn_FL_L1PAs_WT_hiPSC_LacZ_org_RNAseq_reverse.mtx --groupLabels org_only hiPS_only both -o venn_FL_L1PAs_WT_hiPSC_LacZ_org_RNAseq_reverse_relabel.mtx

computeMatrixOperations rbind -m venn_FL_L1PAs_WT_hiPSC_LacZ_org_RNAseq_positive_relabel.mtx venn_FL_L1PAs_WT_hiPSC_LacZ_org_RNAseq_reverse_relabel.mtx -o venn_FL_L1PAs_WT_hiPSC_LacZ_org_RNAseq_suppfig5.mtx

plotHeatmap -m venn_FL_L1PAs_WT_hiPSC_LacZ_org_RNAseq_suppfig5.mtx -o venn_FL_L1PAs_WT_hiPSC_LacZ_org_RNAseq_suppfig5.pdf --colorMap Blues --averageTypeSummaryPlot sum --sortUsingSamples 7 8 9 4 5 6
plotHeatmap -m venn_FL_L1PAs_WT_hiPSC_LacZ_org_RNAseq_suppfig5.mtx -o venn_FL_L1PAs_WT_hiPSC_LacZ_org_RNAseq_suppfig5_sort_antisense.pdf --colorMap Blues --averageTypeSummaryPlot sum --sortUsingSamples 19 20 21

# Off target peaks
plotHeatmap -m FL_L1PAs_crispri_offtarget_RNAseq.mtx -o FL_L1PAs_crispri_offtarget_RNAseq_suppfig3.pdf --colorMap Blues --averageTypeSummaryPlot sum --sortRegions no



# RNAseq WT hiPSC extra and ESC
computeMatrixOperations relabel -m FL_L1PAs_WT_hiPSC_extra_ESC_RNAseq_positive.mtx --groupLabels L1HS L1PA2 L1PA3 L1PA4 -o FL_L1PAs_WT_hiPSC_extra_ESC_RNAseq_positive_relabel.mtx
computeMatrixOperations relabel -m FL_L1PAs_WT_hiPSC_extra_ESC_RNAseq_reverse.mtx --groupLabels L1HS L1PA2 L1PA3 L1PA4 -o FL_L1PAs_WT_hiPSC_extra_ESC_RNAseq_reverse_relabel.mtx

computeMatrixOperations rbind -m FL_L1PAs_WT_hiPSC_extra_ESC_RNAseq_positive_relabel.mtx FL_L1PAs_WT_hiPSC_extra_ESC_RNAseq_reverse_relabel.mtx -o FL_L1PAs_WT_hiPSC_extra_ESC_RNAseq_RNAseq_suppfig1.mtx

plotHeatmap -m FL_L1PAs_WT_hiPSC_extra_ESC_RNAseq_RNAseq_suppfig1.mtx -o FL_L1PAs_WT_hiPSC_extra_ESC_RNAseq_RNAseq_suppfig1.pdf --colorMap Blues --averageTypeSummaryPlot sum --sortUsingSamples 1 2 3 4 5 6 7 8
plotHeatmap -m FL_L1PAs_WT_hiPSC_extra_ESC_RNAseq_RNAseq_suppfig1.mtx -o FL_L1PAs_WT_hiPSC_extra_ESC_RNAseq_RNAseq_suppfig1_sort_antisense.pdf --colorMap Blues --averageTypeSummaryPlot sum --sortUsingSamples 12 13 14 15 16 17 18 19


##### CUT & RUN ######

# H3K4me3 WT hiPSC
plotHeatmap -m FL_L1PAs_WT_hiPSC_cutnrun.mtx -o FL_L1PAs_WT_hiPSC_cutnrun.pdf --colorMap Blues --sortUsingSamples 1 3 --yMin 0 --zMin -0.5 --missingDataColor white
plotHeatmap -m FL_L1PAs_WT_hiPSC_cutnrun_pool.mtx -o FL_L1PAs_WT_hiPSC_cutnrun_pool.pdf --colorMap Blues --sortUsingSamples 1 3 --yMin 0 --zMin -0.5 --missingDataColor white --averageTypeSummaryPlot sum
# TSS
plotHeatmap -m FL_L1PAs_WT_hiPSC_cutnrun_tss.mtx -o FL_L1PAs_WT_hiPSC_cutnrun_tss.pdf --colorMap Blues --sortUsingSamples 4 5 --yMin 0 --zMin -0.5 --zMax 12 --missingDataColor white

# H3K4me3 hiPSC crispri
plotHeatmap -m FL_L1PAs_WT_hiPSC_H3K4me3_cutnrun.mtx -o FL_L1PAs_WT_hiPSC_H3K4me3_cutnrun.pdf --colorMap Blues --sortUsingSamples 1 3 --averageTypeSummaryPlot sum --zMin -0.5
# H3K4me3 hiPSC crispri over H3K4me3 positive sites
plotHeatmap -m FL_L1PAs_hiPSC_crispri_H3K4me3_cutnrun.mtx -o FL_L1PAs_hiPSC_crispri_H3K4me3_cutnrun.pdf --colorMap Blues --sortUsingSamples 1 --zMax 12 --zMin 0 --averageTypeSummaryPlot sum

# Housekeeping genes H3K4me3
plotHeatmap -m ../cutnrun_controls/housekeeping_WT_hiPSC.mtx -o ../cutnrun_controls/housekeeping_WT_hiPSC.pdf --colorMap Blues 
plotHeatmap -m ../cutnrun_controls/pcdh_WT_hiPSC.mtx -o ../cutnrun_controls/pcdh_WT_hiPSC.pdf --colorMap Blues 

# Off target dCas9 and H3K4me3
plotHeatmap -m FL_L1PAs_crispri_offtarget_cutnrun.mtx -o FL_L1PAs_crispri_offtarget_cutnrun.pdf --colorMap Blues --averageTypeSummaryPlot sum --sortUsingSamples 1 --sortRegions no

# H3K4me3 hiPSC CRISPRi
plotHeatmap -m FL_L1PAs_hiPSC_crispri_cutnrun.mtx -o FL_L1PAs_hiPSC_crispri_cutnrun.pdf --colorMap Blues 

# dCas9 over FL L1PAs
plotHeatmap -m FL_L1PAs_crispri_dcas9.mtx -o FL_L1PAs_crispri_dcas9.pdf --colorMap Blues --averageTypeSummaryPlot sum --sortRegions no --zMin 0




