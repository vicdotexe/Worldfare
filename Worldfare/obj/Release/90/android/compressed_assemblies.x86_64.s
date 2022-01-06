	.file	"compressed_assemblies.x86_64.x86_64.s"
	.include	"compressed_assemblies.x86_64-data.inc"

	.section	.data.compressed_assembly_descriptors,"aw",@progbits
	.type	.L.compressed_assembly_descriptors, @object
	.p2align	4
.L.compressed_assembly_descriptors:
	/* 0: Java.Interop.dll */
	/* uncompressed_file_size */
	.long	162816
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.quad	compressed_assembly_data_0

	/* 1: Mono.Android.dll */
	/* uncompressed_file_size */
	.long	1081344
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.quad	compressed_assembly_data_1

	/* 2: Mono.Security.dll */
	/* uncompressed_file_size */
	.long	121856
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.quad	compressed_assembly_data_2

	/* 3: MonoGame.Framework.dll */
	/* uncompressed_file_size */
	.long	1079296
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.quad	compressed_assembly_data_3

	/* 4: Newtonsoft.Json.dll */
	/* uncompressed_file_size */
	.long	684544
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.quad	compressed_assembly_data_4

	/* 5: Nez.dll */
	/* uncompressed_file_size */
	.long	748032
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.quad	compressed_assembly_data_5

	/* 6: System.Core.dll */
	/* uncompressed_file_size */
	.long	379904
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.quad	compressed_assembly_data_6

	/* 7: System.Data.dll */
	/* uncompressed_file_size */
	.long	747008
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.quad	compressed_assembly_data_7

	/* 8: System.Drawing.Common.dll */
	/* uncompressed_file_size */
	.long	29696
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.quad	compressed_assembly_data_8

	/* 9: System.Net.Http.dll */
	/* uncompressed_file_size */
	.long	212992
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.quad	compressed_assembly_data_9

	/* 10: System.Numerics.dll */
	/* uncompressed_file_size */
	.long	38912
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.quad	compressed_assembly_data_10

	/* 11: System.Runtime.Serialization.dll */
	/* uncompressed_file_size */
	.long	6144
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.quad	compressed_assembly_data_11

	/* 12: System.Xml.Linq.dll */
	/* uncompressed_file_size */
	.long	67072
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.quad	compressed_assembly_data_12

	/* 13: System.Xml.dll */
	/* uncompressed_file_size */
	.long	1420288
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.quad	compressed_assembly_data_13

	/* 14: System.dll */
	/* uncompressed_file_size */
	.long	869376
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.quad	compressed_assembly_data_14

	/* 15: Worldfare.dll */
	/* uncompressed_file_size */
	.long	47616
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.quad	compressed_assembly_data_15

	/* 16: mscorlib.dll */
	/* uncompressed_file_size */
	.long	2074624
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.quad	compressed_assembly_data_16

	.size	.L.compressed_assembly_descriptors, 272
	.section	.data.compressed_assemblies,"aw",@progbits
	.type	compressed_assemblies, @object
	.p2align	3
	.global	compressed_assemblies
compressed_assemblies:
	/* count */
	.long	17
	/* descriptors */
	.zero	4
	.quad	.L.compressed_assembly_descriptors
	.size	compressed_assemblies, 16
