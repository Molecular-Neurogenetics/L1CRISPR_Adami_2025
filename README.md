# Pipelines + statistical and visualization scripts

This repository presents analyses for the manuscript
*LINE-1 transposable elements regulate the exit of human pluripotency and early brain 
development* 

## Organization
- `bulk` - Containing all scripts for bulk RNA sequencing CUT&RUN analysis.
- `10X` - Containing all scripts for single nuclei RNA sequencing analysis.

### For `bulk` datasets: 
*WARNING: Please note that the gRNAs in the bulk datasets are named differently in the samplesheet and scripts! However, I HAVE fixed the names in the output files / tables.*

*For the scripts and samplesheets: gRNA3 in the sample names and samplesheet is "gRNA1" in the manuscript. gRNA1 in the sample names and samplesheet is "gRNA2" in the manuscript.*

- `src` - Directory containing all pipelines and scripts:
	- [**Snakefile_bulkRNAseq**](./bulk/src/Snakefile_bulkRNAseq) - Snakemake pipeline to preprocess bulk RNAseq data.
	- [**Snakefile_cutnrun**](./bulk/src/Snakefile_cutnrun) - Snakemake pipeline to preprocess CUT&RUN datasets.
	- `src/config_files` - Directory containing all configuration files:
		* [**samplesheet_L1crispr.json**](./bulk/src/config_files/samplesheet_L1crispr.json) Json file required to run:
			+ [**Snakefile_bulkRNAseq**](./bulk/src/Snakefile_bulkRNAseq)
			+ [**Snakefile_cutnrun**](./bulk/src/Snakefile_cutnrun)
		* [**lunarc_config.json**](./bulk/src/config_files/lunarc_config.json) - Json file to set SBATCH parameters to run:
			+ [**Snakefile_bulkRNAseq**](./bulk/src/Snakefile_bulkRNAseq)
			+ [**Snakefile_cutnrun**](./bulk/src/Snakefile_cutnrun)
	- [**annotation_L1matrices.sh**](./bulk/src/annotation_L1matrices.sh) - Script to parse TE annotation BED file to produce input files for computeMatrix rules.
	- [**plot_deeptools.sh**](./bulk/src/plot_deeptools.sh) - Deeptools plotHeatmaps for all figures.
	- `r_scripts` - Directory containing all R markdowns for the visualization and statistical analysis:
		* [**gene_DEA_L1crispri.Rmd**](./bulk/src/r_scripts/gene_DEA_L1crispri.Rmd) - Visualization and statistical analysis of gene expression (gene_quantification at [**Snakefile_bulkRNAseq**](./bulk/src/Snakefile_bulkRNAseq)).
		* [**candidate_exon_visualization.Rmd**](./bulk/src/r_scripts/candidate_exon_visualization.Rmd) - Visualization of exon expression between L1 CRISPRi and Control in downregulated genes (exon_quantification at [**Snakefile_bulkRNAseq**](./bulk/src/Snakefile_bulkRNAseq)).
		* [**L1_methylation.Rmd**](./bulk/src/r_scripts/L1_methylation.Rmd) - Visualization of methylation status of L1 promoters.
		* [**size_measurements.Rmd**](./bulk/src/r_scripts/size_measurements.Rmd) - Visualization and statistical analysis of organoids' size measurements. 
		* [**cutnrun_peaks.Rmd**](./bulk/src/r_scripts/cutnrun_peaks.Rmd) - Intersect of gRNA1 and LacZ dCas9 peaks. Reformat BED files of H3K4me3 peaks to intersect with FL-L1s.
		* [**TE_subfam_DEA.Rmd**](./bulk/src/r_scripts/TE_subfam_DEA.Rmd) - Visualization of TEtranscripts quantification of TE subfamilies (TEcounts at [**Snakefile_bulkRNAseq**](./bulk/src/Snakefile_bulkRNAseq)).
		* [**TE_uniq_DEA.Rmd**](./bulk/src/r_scripts/TE_uniq_DEA.Rmd) - Statistical analysis and visualization of uniquely mapped reads over TEs (TE_quantification at [**Snakefile_bulkRNAseq**](./bulk/src/Snakefile_bulkRNAseq)).
		* [**TE_uniq_direction.Rmd**](./bulk/src/r_scripts/TE_uniq_direction.Rmd) - Visualization of the TE quantification using BAM files of uniquely mapped reads split by strand (split_bam_strand and TE_quantification_strand at [**Snakefile_bulkRNAseq**](./bulk/src/Snakefile_bulkRNAseq)). 
- `size_measurements` - Size measurements for day 15 organoids in L1-CRISPRi and controls.
- `2_tagdirs` - Peaks / regions BED files called by HOMER
	* [**AA_hiPS6_LacZ_CRISPRi_LV3599_H3K4me3_S22_regions.bed**](./bulk/2_tagdirs/AA_hiPS6_LacZ_CRISPRi_LV3599_H3K4me3_S22_regions.bed) - Peak BED file for H3K4me3 in gRNA1 L1-CRISPRi
	* [**AA_hiPS6_L1_CRISPRi_LV3824_H3K4me3_S25_regions.bed**](./bulk/2_tagdirs/AA_hiPS6_L1_CRISPRi_LV3824_H3K4me3_S25_regions.bed) - Peak BED file for H3K4me3 in gRNA1 L1-CRISPRi
	* [**H3K4me3_tagdir_regions_merged_hiPS6_hiPS48.bed**](./bulk/2_tagdirs/H3K4me3_tagdir_regions_merged_hiPS6_hiPS48.bed) - Merged H3K4me3 peaks from WT hiPS6 and hiPS48
	* [**AA_hiPS6_L1_CRISPRi_LacZ_LV3599_lightXL_CUTnRUN_Cas9_S10_peaks.bed**](./bulk/2_tagdirs/AA_hiPS6_L1_CRISPRi_LacZ_LV3599_lightXL_CUTnRUN_Cas9_S10_peaks.bed) - Peak BED file for dCas9 in LacZ sample
	* [**AA_hiPS6_L1_CRISPRi_gRNA3_LV3824_lightXL_CUTnRUN_Cas9_S11_peaks.bed**](./bulk/2_tagdirs/AA_hiPS6_L1_CRISPRi_gRNA3_LV3824_lightXL_CUTnRUN_Cas9_S11_peaks.bed) - Peak BED file for dCas9 in gRNA1 L1-CRISPRi sample
- [**samplesheet_L1crispr.tab**](./bulk/samplesheet_L1crispr.tab) - Metadata of bulk RNAseq samples 

#### Clean data for bulk experiments:
- `results/` - Directory containing tables:
	- `tables/`
		* [**genes_DEA_crispri.xlsx**](./bulk/results/tables/genes_DEA_crispri.xlsx) - Gene differential expression analysis in each bulk RNAseq experiment.
		* [**genes_GSEA_crispri.xlsx**](./bulk/results/tables/genes_GSEA_crispri.xlsx) - Gene set enrichment analysis of each bulk RNAseq experiment.
		* [**lightXL_gRNA1_peaks_only.bed**](./bulk/results/tables/lightXL_gRNA1_peaks_only.bed) - dCas9 peaks only at gRNA1 (dCas9 CUT&RUN)
		* [**H3K4me3_tagdir_regions_merged_hiPS6_hiPS48_intersect_FL_L1PA_promoters.bed**](./bulk/results/tables/H3K4me3_tagdir_regions_merged_hiPS6_hiPS48_intersect_FL_L1PA_promoters.bed) - Intersection between H3K4me3 peaks and FL-L1s (H3K4me3 CUT&RUN and bulk RNAseq)
		* [**FL_L1PAs_DEA.xlsx**](./bulk/results/tables/FL_L1PAs_DEA.xlsx) - Differentially expressed FL-L1 (bulk RNAseq)
		* [**targeted_FL_L1_DEA_crispri_iPSC.bed**](./bulk/results/tables/targeted_FL_L1_DEA_crispri_iPSC.bed) - FL-L1 DEA in CRIPSRi comparisons (bulk RNAseq)
		* [**FL_L1PA_LacZ_org_expressed_intersect_protein_genes.bed**](./bulk/results/tables/FL_L1PA_LacZ_org_expressed_intersect_protein_genes.bed) - Intersection of FL-L1 expressed at LacZ organoids to protein coding genes and their exons (bulk RNAseq)
		* [**FL_L1PA_WT_hiPSC_expressed_intersect_protein_genes.bed**](./bulk/results/tables/FL_L1PA_WT_hiPSC_expressed_intersect_protein_genes.bed) - Intersection of FL-L1 expressed at WT hiPSC to protein coding genes and their exons (bulk RNAseq)
		* [**FL_L1HS_PA4_promoter.bed**](./bulk/results/tables/FL_L1HS_PA4_promoter.bed) - BED file used to analyse methylation status over the expressed L1s' promoters (bulk RNAseq)
		* [**FL_L1HS_PA4_promoter.MN10_WT_Rep1_ontDNA_iPSC_hiPS6_human_basecalls_5mC_5hmC_hg38.sorted.cohort.segmeth.mc10.mr1.segplot_data.csv**](./bulk/results/tables/FL_L1HS_PA4_promoter.MN10_WT_Rep1_ontDNA_iPSC_hiPS6_human_basecalls_5mC_5hmC_hg38.sorted.cohort.segmeth.mc10.mr1.segplot_data.csv) - FL-L1 promoters DNA methylation status (ONT DNAseq)
		* [**FL_L1PA_LacZ_org_WT_hiPSC_expressed_promoter.MN10_WT_Rep1_ontDNA_iPSC_hiPS6_human_basecalls_5mC_5hmC_hg38.sorted.cohort.segmeth.tsv**](./bulk/results/tables/FL_L1PA_LacZ_org_WT_hiPSC_expressed_promoter.MN10_WT_Rep1_ontDNA_iPSC_hiPS6_human_basecalls_5mC_5hmC_hg38.sorted.cohort.segmeth.tsv) - DNA methylation over FL-L1 promoters from elements expressed at hiPSC AND organoids (ONT DNAseq)
		* [**FL_L1PA_WT_hiPSC_only_expressed_promoter.MN10_WT_Rep1_ontDNA_iPSC_hiPS6_human_basecalls_5mC_5hmC_hg38.sorted.cohort.segmeth.tsv**](./bulk/results/tables/FL_L1PA_WT_hiPSC_only_expressed_promoter.MN10_WT_Rep1_ontDNA_iPSC_hiPS6_human_basecalls_5mC_5hmC_hg38.sorted.cohort.segmeth.tsv) - DNA methylation over FL-L1 promoters from elements expressed at hiPSC only (ONT DNAseq)


### For `10X` datasets:
- `src` - Directory containing all pipelines and scripts:
	- [**MN07_CRISPRi_org_res0_1.py**](./10X/src/MN07_CRISPRi_org_res0_1.py) - trusTEr script to quantify TEs per sample.
	- `r_scripts` - Directory containing all R markdowns for the visualization and statistical analysis:
		* [**crispri_org.Rmd**](./10X/src/r_scripts/crispri_org.Rmd) - Cell typing visualization of single nuclei RNAseq 
		* [**crispri_org_pt2.Rmd**](./10X/src/r_scripts/crispri_org_pt2.Rmd) - Cell cycle and visualization of consistently up/downregulated genes in L1-CRISPRi organoids.
		* [**crispri_org_pseudobulk.Rmd**](./10X/src/r_scripts/crispri_org_pseudobulk.Rmd) - Normalization sizeFactors based on gene expression.
		* [**crispri_org_pseudobulk_uniq.Rmd**](./10X/src/r_scripts/crispri_org_pseudobulk_uniq.Rmd) - Visualization of trusTEr's output (TE quantification per cluster) (needs the sizefactors calculated in [**crispri_org_pseudobulk.Rmd**](./10X/src/r_scripts/crispri_org_pseudobulk.Rmd))
- [**samplesheet_L1crispr_10X.tab**](./10X/samplesheet_L1crispr_10X.tab) - Metadata of 10X single nuclei RNAseq samples

#### Clean data for the single nuclei RNAseq experiment
- `results/tables` : 
	- [**gene_DEA.xlsx**](./10X/results/tables/gene_DEA.xlsx) - Gene differential expression analysis in each experiment and cluster.
	- [**downreg_cluster_0.txt**](./10X/results/tables/downreg_cluster_0.txt) - Up/downregulated genes in cluster 0 and 1 of L1-CRISPRi organoids (log2FC < 0). NOTE: not filtered by significance
	- [**downreg_cluster_1.txt**](./10X/results/tables/downreg_cluster_1.txt) - Up/downregulated genes in cluster 0 and 1 of L1-CRISPRi organoids (log2FC < 0). NOTE: not filtered by significance
	- [**upreg_cluster_0.txt**](./10X/results/tables/upreg_cluster_0.txt) - Up/downregulated genes in cluster 0 and 1 of L1-CRISPRi organoids (log2FC > 0). NOTE: not filtered by significance
	- [**upreg_cluster_1.txt**](./10X/results/tables/upreg_cluster_1.txt) - Up/downregulated genes in cluster 0 and 1 of L1-CRISPRi organoids (log2FC > 0). NOTE: not filtered by significance
	- [**goenrich_cluster_0_1_cluster.xlsx**](./10X/results/tables/goenrich_cluster_0_1_cluster.xlsx) - Overrepresentation test of commonly upregulated genes
	
