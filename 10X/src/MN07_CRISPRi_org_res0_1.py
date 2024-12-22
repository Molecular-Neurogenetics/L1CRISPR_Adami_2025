#!/bin/python
import truster
import os

path_parent = os.path.dirname(os.getcwd())
lunarc = "config_files/lunarc_config.json"
modules = "config_files/software_modules.json"

crispri = truster.Experiment("crispri", lunarc, modules)

crispri.register_sample(sample_id = "Seq254_14", sample_name = "AA_h6_L1_CRISPRi_LacZ_LV3599_d15_organoids_batch1_S16", raw_path = "/scale/gr01/shared/jjakobsson/backup/raquelgg_fs1_jakobssonlab/CTG_JGJSeq253_254_258_2023_149/230706_A00681_0890_BHLT2LDMXY/HLT2LDMXY/outs/fastq_path/10X/Seq254_14")
crispri.register_sample(sample_id = "Seq254_15", sample_name = "AA_h6_L1_CRISPRi_Lv3824_d15_organoids_batch1_S17", raw_path = "/scale/gr01/shared/jjakobsson/backup/raquelgg_fs1_jakobssonlab/CTG_JGJSeq253_254_258_2023_149/230706_A00681_0890_BHLT2LDMXY/HLT2LDMXY/outs/fastq_path/10X/Seq254_15")

crispri.register_sample(sample_id = "MN07_gRNA1_Rep1_snRNA_org_hiPS6_LV3822_L1_CRISPRi_d15_batch2", sample_name = "MN07_gRNA1_Rep1_snRNA_org_hiPS6_LV3822_L1_CRISPRi_d15_batch2", raw_path = "/scale/gr01/shared/jjakobsson/backup/rawdatasets_2024/MN07_Seq322_CTG2024_114_10X/")
crispri.register_sample(sample_id = "MN07_gRNA3_Rep1_snRNA_org_hiPS48_LV3824_L1_CRISPRi_d15_batch1", sample_name = "MN07_gRNA3_Rep1_snRNA_org_hiPS48_LV3824_L1_CRISPRi_d15_batch1", raw_path = "/scale/gr01/shared/jjakobsson/backup/rawdatasets_2024/MN07_Seq322_CTG2024_114_10X/")
crispri.register_sample(sample_id = "MN07_gRNA3_Rep1_snRNA_org_hiPS6_LV3824_L1_CRISPRi_d15_batch2", sample_name = "MN07_gRNA3_Rep1_snRNA_org_hiPS6_LV3824_L1_CRISPRi_d15_batch2", raw_path = "/scale/gr01/shared/jjakobsson/backup/rawdatasets_2024/MN07_Seq322_CTG2024_114_10X/")
crispri.register_sample(sample_id = "MN07_LacZ_Rep1_snRNA_org_hiPS48_LV3599_L1_CRISPRi_d15_batch1", sample_name = "MN07_LacZ_Rep1_snRNA_org_hiPS48_LV3599_L1_CRISPRi_d15_batch1", raw_path = "/scale/gr01/shared/jjakobsson/backup/rawdatasets_2024/MN07_Seq322_CTG2024_114_10X/")
crispri.register_sample(sample_id = "MN07_LacZ_Rep1_snRNA_org_hiPS6_LV3599_L1_CRISPRi_d15_batch2", sample_name = "MN07_LacZ_Rep1_snRNA_org_hiPS6_LV3599_L1_CRISPRi_d15_batch2", raw_path = "/scale/gr01/shared/jjakobsson/backup/rawdatasets_2024/MN07_Seq322_CTG2024_114_10X/")

crispri.register_sample(sample_id = "MN07_gRNA1_Rep2_snRNA_org_hiPS6_LV3822_L1_CRISPRi_d15_batch2", sample_name = "MN07_gRNA1_Rep2_snRNA_org_hiPS6_LV3822_L1_CRISPRi_d15_batch2", raw_path = "/scale/gr01/shared/jjakobsson/backup/rawdatasets_2024/2024_159/0_fastq/22NV7TLT3/")
crispri.register_sample(sample_id = "MN07_gRNA1_Rep3_snRNA_org_hiPS48_LV3824_L1_CRISPRi_d15_batch1", sample_name = "MN07_gRNA1_Rep3_snRNA_org_hiPS48_LV3824_L1_CRISPRi_d15_batch1", raw_path = "/scale/gr01/shared/jjakobsson/backup/rawdatasets_2024/2024_159/0_fastq/22NV7TLT3/")
crispri.register_sample(sample_id = "MN07_gRNA1_Rep3_snRNA_org_hiPS6_LV3822_L1_CRISPRi_d15_batch2", sample_name = "MN07_gRNA1_Rep3_snRNA_org_hiPS6_LV3822_L1_CRISPRi_d15_batch2", raw_path = "/scale/gr01/shared/jjakobsson/backup/rawdatasets_2024/2024_159/0_fastq/22NV7TLT3/")
crispri.register_sample(sample_id = "MN07_gRNA3_Rep2_snRNA_org_hiPS48_LV3824_L1_CRISPRi_d15_batch1", sample_name = "MN07_gRNA3_Rep2_snRNA_org_hiPS48_LV3824_L1_CRISPRi_d15_batch1", raw_path = "/scale/gr01/shared/jjakobsson/backup/rawdatasets_2024/2024_159/0_fastq/22NV7TLT3/")
crispri.register_sample(sample_id = "MN07_gRNA3_Rep2_snRNA_org_hiPS6_LV3824_L1_CRISPRi_d15_batch1", sample_name = "MN07_gRNA3_Rep2_snRNA_org_hiPS6_LV3824_L1_CRISPRi_d15_batch1", raw_path = "/scale/gr01/shared/jjakobsson/backup/rawdatasets_2024/2024_159/0_fastq/22NV7TLT3/")
crispri.register_sample(sample_id = "MN07_gRNA3_Rep2_snRNA_org_hiPS6_LV3824_L1_CRISPRi_d15_batch2", sample_name = "MN07_gRNA3_Rep2_snRNA_org_hiPS6_LV3824_L1_CRISPRi_d15_batch2", raw_path = "/scale/gr01/shared/jjakobsson/backup/rawdatasets_2024/2024_159/0_fastq/22NV7TLT3/")
crispri.register_sample(sample_id = "MN07_gRNA3_Rep3_snRNA_org_hiPS6_LV3824_L1_CRISPRi_d15_batch2", sample_name = "MN07_gRNA3_Rep3_snRNA_org_hiPS6_LV3824_L1_CRISPRi_d15_batch2", raw_path = "/scale/gr01/shared/jjakobsson/backup/rawdatasets_2024/2024_159/0_fastq/22NV7TLT3/")
crispri.register_sample(sample_id = "MN07_LacZ_Rep2_snRNA_org_hiPS48_LV3599_L1_CRISPRi_d15_batch1", sample_name = "MN07_LacZ_Rep2_snRNA_org_hiPS48_LV3599_L1_CRISPRi_d15_batch1", raw_path = "/scale/gr01/shared/jjakobsson/backup/rawdatasets_2024/2024_159/0_fastq/22NV7TLT3/")
crispri.register_sample(sample_id = "MN07_LacZ_Rep2_snRNA_org_hiPS6_LV3599_L1_CRISPRi_d15_batch1", sample_name = "MN07_LacZ_Rep2_snRNA_org_hiPS6_LV3599_L1_CRISPRi_d15_batch1", raw_path = "/scale/gr01/shared/jjakobsson/backup/rawdatasets_2024/2024_159/0_fastq/22NV7TLT3/")
crispri.register_sample(sample_id = "MN07_LacZ_Rep2_snRNA_org_hiPS6_LV3599_L1_CRISPRi_d15_batch2", sample_name = "MN07_LacZ_Rep2_snRNA_org_hiPS6_LV3599_L1_CRISPRi_d15_batch2", raw_path = "/scale/gr01/shared/jjakobsson/backup/rawdatasets_2024/2024_159/0_fastq/22NV7TLT3/")
crispri.register_sample(sample_id = "MN07_LacZ_Rep3_snRNA_org_hiPS48_LV3599_L1_CRISPRi_d15_batch1", sample_name = "MN07_LacZ_Rep3_snRNA_org_hiPS48_LV3599_L1_CRISPRi_d15_batch1", raw_path = "/scale/gr01/shared/jjakobsson/backup/rawdatasets_2024/2024_159/0_fastq/22NV7TLT3/")
crispri.register_sample(sample_id = "MN07_LacZ_Rep3_snRNA_org_hiPS6_LV3599_L1_CRISPRi_d15_batch2", sample_name = "MN07_LacZ_Rep3_snRNA_org_hiPS6_LV3599_L1_CRISPRi_d15_batch2", raw_path = "/scale/gr01/shared/jjakobsson/backup/rawdatasets_2024/2024_159/0_fastq/22NV7TLT3/")

quantification_dir = os.path.join(path_parent, "1_counts")
cellranger_index = "/scale/gr01/shared/common/genome/10Xindexes/cellranger/6.0/refdata-gex-GRCh38-2020-A/" 
samples = list(crispri.samples.keys())

#crispri.quantify(cr_index = cellranger_index, outdir = quantification_dir, jobs = 10, nuclei = {sample : True for sample in samples})

gene_gtf = "/scale/gr01/shared/jjakobsson/backup/raquelgg_fs3_jakobssonlab/annotations/hg38/gencode/v38/gencode.v38.annotation.gtf"
te_gtf = "/scale/gr01/shared/jjakobsson/backup/raquelgg_fs3_jakobssonlab/annotations/hg38/rmsk/hg38_rmsk_TEtranscripts_FL_L1_marked.gtf"

clusters_dir = os.path.join(path_parent, "2_getClusters")
for sample_id in list(crispri.samples.keys()):
    crispri.set_quantification_outdir(sample_id = sample_id, cellranger_outdir = os.path.join(quantification_dir, sample_id))

#crispri.get_clusters_all_samples(clusters_dir, perc_mitochondrial = 10, normalization_method = "LogNormalize", max_size=2000, res = 0.5, jobs=10)
crispri.set_clusters_outdir(clusters_dir)

star_index = "/scale/gr01/shared/jjakobsson/backup/raquelgg_fs5_jakobssonlab/GRCh38.p13_gencode.v38_STAR/" 
merged_dir = os.path.join(path_parent, "3_combinedUMAP_perCluster_res0.1")

#crispri.merge_samples(merged_dir, "LogNormalize", res = 0.1)

crispri.set_merge_samples_outdir(merged_dir)
merged_pipeline_dir = os.path.join(merged_dir, "clusterPipeline")

crispri.process_clusters(mode = "merged", outdir = merged_pipeline_dir, gene_gtf = gene_gtf, te_gtf = te_gtf, star_index = star_index, RAM = 132312156010, jobs=10, groups = {i : [i] for i in samples}, tsv_to_bam = False, filter_UMIs = False, bam_to_fastq = False, concatenate_lanes = False, merge_clusters = False)#, normalize_TE_counts = True)

