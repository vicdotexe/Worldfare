	.file	"typemaps.x86_64.s"

/* map_module_count: START */
	.section	.rodata.map_module_count,"a",@progbits
	.type	map_module_count, @object
	.p2align	2
	.global	map_module_count
map_module_count:
	.size	map_module_count, 4
	.long	3
/* map_module_count: END */

/* java_type_count: START */
	.section	.rodata.java_type_count,"a",@progbits
	.type	java_type_count, @object
	.p2align	2
	.global	java_type_count
java_type_count:
	.size	java_type_count, 4
	.long	259
/* java_type_count: END */

	.include	"typemaps.shared.inc"
	.include	"typemaps.x86_64-managed.inc"

/* Managed to Java map: START */
	.section	.data.rel.map_modules,"aw",@progbits
	.type	map_modules, @object
	.p2align	4
	.global	map_modules
map_modules:
	/* module_uuid: ad56211e-9c1b-48e2-9d00-d7a037525182 */
	.byte	0x1e, 0x21, 0x56, 0xad, 0x1b, 0x9c, 0xe2, 0x48, 0x9d, 0x00, 0xd7, 0xa0, 0x37, 0x52, 0x51, 0x82
	/* entry_count */
	.long	1
	/* duplicate_count */
	.long	0
	/* map */
	.quad	module0_managed_to_java
	/* duplicate_map */
	.quad	0
	/* assembly_name: Worldfare */
	.quad	.L.map_aname.0
	/* image */
	.quad	0
	/* java_name_width */
	.long	0
	/* java_map */
	.zero	4
	.quad	0

	/* module_uuid: f4b5bf3a-1033-4b9a-b594-5e18622c0769 */
	.byte	0x3a, 0xbf, 0xb5, 0xf4, 0x33, 0x10, 0x9a, 0x4b, 0xb5, 0x94, 0x5e, 0x18, 0x62, 0x2c, 0x07, 0x69
	/* entry_count */
	.long	6
	/* duplicate_count */
	.long	0
	/* map */
	.quad	module1_managed_to_java
	/* duplicate_map */
	.quad	0
	/* assembly_name: MonoGame.Framework */
	.quad	.L.map_aname.1
	/* image */
	.quad	0
	/* java_name_width */
	.long	0
	/* java_map */
	.zero	4
	.quad	0

	/* module_uuid: 2b1273b3-45e6-4da3-ad58-405db8d9cfa1 */
	.byte	0xb3, 0x73, 0x12, 0x2b, 0xe6, 0x45, 0xa3, 0x4d, 0xad, 0x58, 0x40, 0x5d, 0xb8, 0xd9, 0xcf, 0xa1
	/* entry_count */
	.long	252
	/* duplicate_count */
	.long	119
	/* map */
	.quad	module2_managed_to_java
	/* duplicate_map */
	.quad	module2_managed_to_java_duplicates
	/* assembly_name: Mono.Android */
	.quad	.L.map_aname.2
	/* image */
	.quad	0
	/* java_name_width */
	.long	0
	/* java_map */
	.zero	4
	.quad	0

	.size	map_modules, 216
/* Managed to Java map: END */

/* Java to managed map: START */
	.section	.rodata.map_java,"a",@progbits
	.type	map_java, @object
	.p2align	4
	.global	map_java
map_java:
	/* #0 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554761
	/* java_name */
	.ascii	"android/app/ActionBar"
	.zero	44
	.zero	9

	/* #1 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554762
	/* java_name */
	.ascii	"android/app/Activity"
	.zero	45
	.zero	9

	/* #2 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554763
	/* java_name */
	.ascii	"android/app/AlertDialog"
	.zero	42
	.zero	9

	/* #3 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554764
	/* java_name */
	.ascii	"android/app/AlertDialog$Builder"
	.zero	34
	.zero	9

	/* #4 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554765
	/* java_name */
	.ascii	"android/app/Application"
	.zero	42
	.zero	9

	/* #5 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554766
	/* java_name */
	.ascii	"android/app/Dialog"
	.zero	47
	.zero	9

	/* #6 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554773
	/* java_name */
	.ascii	"android/app/KeyguardManager"
	.zero	38
	.zero	9

	/* #7 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554777
	/* java_name */
	.ascii	"android/content/BroadcastReceiver"
	.zero	32
	.zero	9

	/* #8 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/content/ComponentCallbacks"
	.zero	31
	.zero	9

	/* #9 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/content/ComponentCallbacks2"
	.zero	30
	.zero	9

	/* #10 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554779
	/* java_name */
	.ascii	"android/content/ComponentName"
	.zero	36
	.zero	9

	/* #11 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554780
	/* java_name */
	.ascii	"android/content/ContentResolver"
	.zero	34
	.zero	9

	/* #12 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554782
	/* java_name */
	.ascii	"android/content/ContentUris"
	.zero	38
	.zero	9

	/* #13 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554775
	/* java_name */
	.ascii	"android/content/Context"
	.zero	42
	.zero	9

	/* #14 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554784
	/* java_name */
	.ascii	"android/content/ContextWrapper"
	.zero	35
	.zero	9

	/* #15 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/content/DialogInterface"
	.zero	34
	.zero	9

	/* #16 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/content/DialogInterface$OnCancelListener"
	.zero	17
	.zero	9

	/* #17 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/content/DialogInterface$OnClickListener"
	.zero	18
	.zero	9

	/* #18 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554776
	/* java_name */
	.ascii	"android/content/Intent"
	.zero	43
	.zero	9

	/* #19 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554798
	/* java_name */
	.ascii	"android/content/IntentFilter"
	.zero	37
	.zero	9

	/* #20 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554800
	/* java_name */
	.ascii	"android/content/pm/ApplicationInfo"
	.zero	31
	.zero	9

	/* #21 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554803
	/* java_name */
	.ascii	"android/content/pm/PackageItemInfo"
	.zero	31
	.zero	9

	/* #22 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554804
	/* java_name */
	.ascii	"android/content/pm/PackageManager"
	.zero	32
	.zero	9

	/* #23 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554807
	/* java_name */
	.ascii	"android/content/res/AssetFileDescriptor"
	.zero	26
	.zero	9

	/* #24 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554808
	/* java_name */
	.ascii	"android/content/res/AssetManager"
	.zero	33
	.zero	9

	/* #25 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554809
	/* java_name */
	.ascii	"android/content/res/Configuration"
	.zero	32
	.zero	9

	/* #26 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554811
	/* java_name */
	.ascii	"android/content/res/Resources"
	.zero	36
	.zero	9

	/* #27 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554598
	/* java_name */
	.ascii	"android/database/CharArrayBuffer"
	.zero	33
	.zero	9

	/* #28 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554599
	/* java_name */
	.ascii	"android/database/ContentObserver"
	.zero	33
	.zero	9

	/* #29 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/database/Cursor"
	.zero	42
	.zero	9

	/* #30 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554601
	/* java_name */
	.ascii	"android/database/DataSetObserver"
	.zero	33
	.zero	9

	/* #31 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554746
	/* java_name */
	.ascii	"android/graphics/Bitmap"
	.zero	42
	.zero	9

	/* #32 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554747
	/* java_name */
	.ascii	"android/graphics/Bitmap$CompressFormat"
	.zero	27
	.zero	9

	/* #33 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554748
	/* java_name */
	.ascii	"android/graphics/Bitmap$Config"
	.zero	35
	.zero	9

	/* #34 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554750
	/* java_name */
	.ascii	"android/graphics/BitmapFactory"
	.zero	35
	.zero	9

	/* #35 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554751
	/* java_name */
	.ascii	"android/graphics/BitmapFactory$Options"
	.zero	27
	.zero	9

	/* #36 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554749
	/* java_name */
	.ascii	"android/graphics/Canvas"
	.zero	42
	.zero	9

	/* #37 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554753
	/* java_name */
	.ascii	"android/graphics/Paint"
	.zero	43
	.zero	9

	/* #38 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554754
	/* java_name */
	.ascii	"android/graphics/Point"
	.zero	43
	.zero	9

	/* #39 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554755
	/* java_name */
	.ascii	"android/graphics/Rect"
	.zero	44
	.zero	9

	/* #40 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554756
	/* java_name */
	.ascii	"android/graphics/drawable/Drawable"
	.zero	31
	.zero	9

	/* #41 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/graphics/drawable/Drawable$Callback"
	.zero	22
	.zero	9

	/* #42 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554739
	/* java_name */
	.ascii	"android/hardware/Sensor"
	.zero	42
	.zero	9

	/* #43 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554741
	/* java_name */
	.ascii	"android/hardware/SensorEvent"
	.zero	37
	.zero	9

	/* #44 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/hardware/SensorEventListener"
	.zero	29
	.zero	9

	/* #45 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554736
	/* java_name */
	.ascii	"android/hardware/SensorManager"
	.zero	35
	.zero	9

	/* #46 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554722
	/* java_name */
	.ascii	"android/media/AudioManager"
	.zero	39
	.zero	9

	/* #47 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554723
	/* java_name */
	.ascii	"android/media/MediaPlayer"
	.zero	40
	.zero	9

	/* #48 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/media/MediaPlayer$OnCompletionListener"
	.zero	19
	.zero	9

	/* #49 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/media/VolumeAutomation"
	.zero	35
	.zero	9

	/* #50 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554734
	/* java_name */
	.ascii	"android/media/VolumeShaper"
	.zero	39
	.zero	9

	/* #51 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554735
	/* java_name */
	.ascii	"android/media/VolumeShaper$Configuration"
	.zero	25
	.zero	9

	/* #52 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554720
	/* java_name */
	.ascii	"android/net/Uri"
	.zero	50
	.zero	9

	/* #53 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554709
	/* java_name */
	.ascii	"android/os/BaseBundle"
	.zero	44
	.zero	9

	/* #54 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554710
	/* java_name */
	.ascii	"android/os/Build"
	.zero	49
	.zero	9

	/* #55 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554711
	/* java_name */
	.ascii	"android/os/Build$VERSION"
	.zero	41
	.zero	9

	/* #56 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554713
	/* java_name */
	.ascii	"android/os/Bundle"
	.zero	48
	.zero	9

	/* #57 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554707
	/* java_name */
	.ascii	"android/os/Handler"
	.zero	47
	.zero	9

	/* #58 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554716
	/* java_name */
	.ascii	"android/os/Looper"
	.zero	48
	.zero	9

	/* #59 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554717
	/* java_name */
	.ascii	"android/os/Parcel"
	.zero	48
	.zero	9

	/* #60 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/os/Parcelable"
	.zero	44
	.zero	9

	/* #61 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554708
	/* java_name */
	.ascii	"android/os/Vibrator"
	.zero	46
	.zero	9

	/* #62 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554589
	/* java_name */
	.ascii	"android/provider/MediaStore"
	.zero	38
	.zero	9

	/* #63 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554590
	/* java_name */
	.ascii	"android/provider/MediaStore$Audio"
	.zero	32
	.zero	9

	/* #64 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554591
	/* java_name */
	.ascii	"android/provider/MediaStore$Audio$Media"
	.zero	26
	.zero	9

	/* #65 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554592
	/* java_name */
	.ascii	"android/provider/MediaStore$Images"
	.zero	31
	.zero	9

	/* #66 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554593
	/* java_name */
	.ascii	"android/provider/MediaStore$Images$Media"
	.zero	25
	.zero	9

	/* #67 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554594
	/* java_name */
	.ascii	"android/provider/Settings"
	.zero	40
	.zero	9

	/* #68 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554595
	/* java_name */
	.ascii	"android/provider/Settings$NameValueTable"
	.zero	25
	.zero	9

	/* #69 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554596
	/* java_name */
	.ascii	"android/provider/Settings$SettingNotFoundException"
	.zero	15
	.zero	9

	/* #70 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554597
	/* java_name */
	.ascii	"android/provider/Settings$System"
	.zero	33
	.zero	9

	/* #71 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554857
	/* java_name */
	.ascii	"android/runtime/JavaProxyThrowable"
	.zero	31
	.zero	9

	/* #72 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554702
	/* java_name */
	.ascii	"android/util/AndroidException"
	.zero	36
	.zero	9

	/* #73 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/util/AttributeSet"
	.zero	40
	.zero	9

	/* #74 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554703
	/* java_name */
	.ascii	"android/util/DisplayMetrics"
	.zero	38
	.zero	9

	/* #75 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554701
	/* java_name */
	.ascii	"android/util/Log"
	.zero	49
	.zero	9

	/* #76 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554630
	/* java_name */
	.ascii	"android/view/ActionMode"
	.zero	42
	.zero	9

	/* #77 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/view/ActionMode$Callback"
	.zero	33
	.zero	9

	/* #78 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554635
	/* java_name */
	.ascii	"android/view/ActionProvider"
	.zero	38
	.zero	9

	/* #79 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/view/ContextMenu"
	.zero	41
	.zero	9

	/* #80 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/view/ContextMenu$ContextMenuInfo"
	.zero	25
	.zero	9

	/* #81 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554638
	/* java_name */
	.ascii	"android/view/ContextThemeWrapper"
	.zero	33
	.zero	9

	/* #82 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554639
	/* java_name */
	.ascii	"android/view/Display"
	.zero	45
	.zero	9

	/* #83 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554613
	/* java_name */
	.ascii	"android/view/InputDevice"
	.zero	41
	.zero	9

	/* #84 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554653
	/* java_name */
	.ascii	"android/view/InputEvent"
	.zero	42
	.zero	9

	/* #85 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554614
	/* java_name */
	.ascii	"android/view/KeyCharacterMap"
	.zero	37
	.zero	9

	/* #86 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554615
	/* java_name */
	.ascii	"android/view/KeyEvent"
	.zero	44
	.zero	9

	/* #87 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/view/KeyEvent$Callback"
	.zero	35
	.zero	9

	/* #88 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554618
	/* java_name */
	.ascii	"android/view/LayoutInflater"
	.zero	38
	.zero	9

	/* #89 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/view/LayoutInflater$Factory"
	.zero	30
	.zero	9

	/* #90 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/view/LayoutInflater$Factory2"
	.zero	29
	.zero	9

	/* #91 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/view/Menu"
	.zero	48
	.zero	9

	/* #92 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/view/MenuItem"
	.zero	44
	.zero	9

	/* #93 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/view/MenuItem$OnActionExpandListener"
	.zero	21
	.zero	9

	/* #94 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/view/MenuItem$OnMenuItemClickListener"
	.zero	20
	.zero	9

	/* #95 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554623
	/* java_name */
	.ascii	"android/view/MotionEvent"
	.zero	41
	.zero	9

	/* #96 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554675
	/* java_name */
	.ascii	"android/view/OrientationEventListener"
	.zero	28
	.zero	9

	/* #97 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554678
	/* java_name */
	.ascii	"android/view/SearchEvent"
	.zero	41
	.zero	9

	/* #98 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/view/SubMenu"
	.zero	45
	.zero	9

	/* #99 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554681
	/* java_name */
	.ascii	"android/view/Surface"
	.zero	45
	.zero	9

	/* #100 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/view/SurfaceHolder"
	.zero	39
	.zero	9

	/* #101 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/view/SurfaceHolder$Callback"
	.zero	30
	.zero	9

	/* #102 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554684
	/* java_name */
	.ascii	"android/view/SurfaceView"
	.zero	41
	.zero	9

	/* #103 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554608
	/* java_name */
	.ascii	"android/view/View"
	.zero	48
	.zero	9

	/* #104 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/view/View$OnCreateContextMenuListener"
	.zero	20
	.zero	9

	/* #105 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/view/View$OnTouchListener"
	.zero	32
	.zero	9

	/* #106 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554688
	/* java_name */
	.ascii	"android/view/ViewGroup"
	.zero	43
	.zero	9

	/* #107 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554689
	/* java_name */
	.ascii	"android/view/ViewGroup$LayoutParams"
	.zero	30
	.zero	9

	/* #108 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/view/ViewManager"
	.zero	41
	.zero	9

	/* #109 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/view/ViewParent"
	.zero	42
	.zero	9

	/* #110 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554624
	/* java_name */
	.ascii	"android/view/ViewTreeObserver"
	.zero	36
	.zero	9

	/* #111 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/view/ViewTreeObserver$OnPreDrawListener"
	.zero	18
	.zero	9

	/* #112 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554627
	/* java_name */
	.ascii	"android/view/Window"
	.zero	46
	.zero	9

	/* #113 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/view/Window$Callback"
	.zero	37
	.zero	9

	/* #114 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/view/WindowManager"
	.zero	39
	.zero	9

	/* #115 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554666
	/* java_name */
	.ascii	"android/view/WindowManager$LayoutParams"
	.zero	26
	.zero	9

	/* #116 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554694
	/* java_name */
	.ascii	"android/view/accessibility/AccessibilityEvent"
	.zero	20
	.zero	9

	/* #117 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/view/accessibility/AccessibilityEventSource"
	.zero	14
	.zero	9

	/* #118 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554695
	/* java_name */
	.ascii	"android/view/accessibility/AccessibilityRecord"
	.zero	19
	.zero	9

	/* #119 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554607
	/* java_name */
	.ascii	"android/widget/EditText"
	.zero	42
	.zero	9

	/* #120 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554606
	/* java_name */
	.ascii	"android/widget/TextView"
	.zero	42
	.zero	9

	/* #121 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554538
	/* java_name */
	.ascii	"crc64308bb1c26eb9e9ac/Activity1"
	.zero	34
	.zero	9

	/* #122 */
	/* module_index */
	.long	1
	/* type_token_id */
	.long	33554878
	/* java_name */
	.ascii	"crc64493ac3851fab1842/AndroidGameActivity"
	.zero	24
	.zero	9

	/* #123 */
	/* module_index */
	.long	1
	/* type_token_id */
	.long	33554884
	/* java_name */
	.ascii	"crc64493ac3851fab1842/MonoGameAndroidGameView"
	.zero	20
	.zero	9

	/* #124 */
	/* module_index */
	.long	1
	/* type_token_id */
	.long	33554893
	/* java_name */
	.ascii	"crc64493ac3851fab1842/OrientationListener"
	.zero	24
	.zero	9

	/* #125 */
	/* module_index */
	.long	1
	/* type_token_id */
	.long	33554895
	/* java_name */
	.ascii	"crc64493ac3851fab1842/ScreenReceiver"
	.zero	29
	.zero	9

	/* #126 */
	/* module_index */
	.long	1
	/* type_token_id */
	.long	33554812
	/* java_name */
	.ascii	"crc64f0e061189adeef62/Accelerometer_SensorListener"
	.zero	15
	.zero	9

	/* #127 */
	/* module_index */
	.long	1
	/* type_token_id */
	.long	33554814
	/* java_name */
	.ascii	"crc64f0e061189adeef62/Compass_SensorListener"
	.zero	21
	.zero	9

	/* #128 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33555006
	/* java_name */
	.ascii	"java/io/BufferedReader"
	.zero	43
	.zero	9

	/* #129 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"java/io/Closeable"
	.zero	48
	.zero	9

	/* #130 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33555007
	/* java_name */
	.ascii	"java/io/File"
	.zero	53
	.zero	9

	/* #131 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33555008
	/* java_name */
	.ascii	"java/io/FileDescriptor"
	.zero	43
	.zero	9

	/* #132 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33555009
	/* java_name */
	.ascii	"java/io/FileInputStream"
	.zero	42
	.zero	9

	/* #133 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"java/io/Flushable"
	.zero	48
	.zero	9

	/* #134 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33555018
	/* java_name */
	.ascii	"java/io/IOException"
	.zero	46
	.zero	9

	/* #135 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33555014
	/* java_name */
	.ascii	"java/io/InputStream"
	.zero	46
	.zero	9

	/* #136 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33555016
	/* java_name */
	.ascii	"java/io/InputStreamReader"
	.zero	40
	.zero	9

	/* #137 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33555017
	/* java_name */
	.ascii	"java/io/InterruptedIOException"
	.zero	35
	.zero	9

	/* #138 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33555021
	/* java_name */
	.ascii	"java/io/OutputStream"
	.zero	45
	.zero	9

	/* #139 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33555023
	/* java_name */
	.ascii	"java/io/PrintWriter"
	.zero	46
	.zero	9

	/* #140 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33555024
	/* java_name */
	.ascii	"java/io/Reader"
	.zero	51
	.zero	9

	/* #141 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"java/io/Serializable"
	.zero	45
	.zero	9

	/* #142 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33555026
	/* java_name */
	.ascii	"java/io/StringWriter"
	.zero	45
	.zero	9

	/* #143 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33555027
	/* java_name */
	.ascii	"java/io/Writer"
	.zero	51
	.zero	9

	/* #144 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"java/lang/Appendable"
	.zero	45
	.zero	9

	/* #145 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"java/lang/AutoCloseable"
	.zero	42
	.zero	9

	/* #146 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554947
	/* java_name */
	.ascii	"java/lang/Boolean"
	.zero	48
	.zero	9

	/* #147 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554948
	/* java_name */
	.ascii	"java/lang/Byte"
	.zero	51
	.zero	9

	/* #148 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"java/lang/CharSequence"
	.zero	43
	.zero	9

	/* #149 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554949
	/* java_name */
	.ascii	"java/lang/Character"
	.zero	46
	.zero	9

	/* #150 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554950
	/* java_name */
	.ascii	"java/lang/Class"
	.zero	50
	.zero	9

	/* #151 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554966
	/* java_name */
	.ascii	"java/lang/ClassCastException"
	.zero	37
	.zero	9

	/* #152 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554951
	/* java_name */
	.ascii	"java/lang/ClassNotFoundException"
	.zero	33
	.zero	9

	/* #153 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"java/lang/Cloneable"
	.zero	46
	.zero	9

	/* #154 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"java/lang/Comparable"
	.zero	45
	.zero	9

	/* #155 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554952
	/* java_name */
	.ascii	"java/lang/Double"
	.zero	49
	.zero	9

	/* #156 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554967
	/* java_name */
	.ascii	"java/lang/Enum"
	.zero	51
	.zero	9

	/* #157 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554969
	/* java_name */
	.ascii	"java/lang/Error"
	.zero	50
	.zero	9

	/* #158 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554953
	/* java_name */
	.ascii	"java/lang/Exception"
	.zero	46
	.zero	9

	/* #159 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554954
	/* java_name */
	.ascii	"java/lang/Float"
	.zero	50
	.zero	9

	/* #160 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554980
	/* java_name */
	.ascii	"java/lang/IllegalArgumentException"
	.zero	31
	.zero	9

	/* #161 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554981
	/* java_name */
	.ascii	"java/lang/IllegalStateException"
	.zero	34
	.zero	9

	/* #162 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554982
	/* java_name */
	.ascii	"java/lang/IndexOutOfBoundsException"
	.zero	30
	.zero	9

	/* #163 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554956
	/* java_name */
	.ascii	"java/lang/Integer"
	.zero	48
	.zero	9

	/* #164 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554987
	/* java_name */
	.ascii	"java/lang/LinkageError"
	.zero	43
	.zero	9

	/* #165 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554957
	/* java_name */
	.ascii	"java/lang/Long"
	.zero	51
	.zero	9

	/* #166 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554988
	/* java_name */
	.ascii	"java/lang/Math"
	.zero	51
	.zero	9

	/* #167 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554989
	/* java_name */
	.ascii	"java/lang/NoClassDefFoundError"
	.zero	35
	.zero	9

	/* #168 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554990
	/* java_name */
	.ascii	"java/lang/NullPointerException"
	.zero	35
	.zero	9

	/* #169 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554991
	/* java_name */
	.ascii	"java/lang/Number"
	.zero	49
	.zero	9

	/* #170 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554958
	/* java_name */
	.ascii	"java/lang/Object"
	.zero	49
	.zero	9

	/* #171 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"java/lang/Readable"
	.zero	47
	.zero	9

	/* #172 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554993
	/* java_name */
	.ascii	"java/lang/ReflectiveOperationException"
	.zero	27
	.zero	9

	/* #173 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"java/lang/Runnable"
	.zero	47
	.zero	9

	/* #174 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554959
	/* java_name */
	.ascii	"java/lang/RuntimeException"
	.zero	39
	.zero	9

	/* #175 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554994
	/* java_name */
	.ascii	"java/lang/SecurityException"
	.zero	38
	.zero	9

	/* #176 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554960
	/* java_name */
	.ascii	"java/lang/Short"
	.zero	50
	.zero	9

	/* #177 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554961
	/* java_name */
	.ascii	"java/lang/String"
	.zero	49
	.zero	9

	/* #178 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554963
	/* java_name */
	.ascii	"java/lang/Thread"
	.zero	49
	.zero	9

	/* #179 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554965
	/* java_name */
	.ascii	"java/lang/Throwable"
	.zero	46
	.zero	9

	/* #180 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554995
	/* java_name */
	.ascii	"java/lang/UnsupportedOperationException"
	.zero	26
	.zero	9

	/* #181 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"java/lang/annotation/Annotation"
	.zero	34
	.zero	9

	/* #182 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"java/lang/reflect/AnnotatedElement"
	.zero	31
	.zero	9

	/* #183 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"java/lang/reflect/GenericDeclaration"
	.zero	29
	.zero	9

	/* #184 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"java/lang/reflect/Type"
	.zero	43
	.zero	9

	/* #185 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"java/lang/reflect/TypeVariable"
	.zero	35
	.zero	9

	/* #186 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554881
	/* java_name */
	.ascii	"java/net/ConnectException"
	.zero	40
	.zero	9

	/* #187 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554883
	/* java_name */
	.ascii	"java/net/HttpURLConnection"
	.zero	39
	.zero	9

	/* #188 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554885
	/* java_name */
	.ascii	"java/net/InetSocketAddress"
	.zero	39
	.zero	9

	/* #189 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554886
	/* java_name */
	.ascii	"java/net/ProtocolException"
	.zero	39
	.zero	9

	/* #190 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554887
	/* java_name */
	.ascii	"java/net/Proxy"
	.zero	51
	.zero	9

	/* #191 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554888
	/* java_name */
	.ascii	"java/net/Proxy$Type"
	.zero	46
	.zero	9

	/* #192 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554889
	/* java_name */
	.ascii	"java/net/ProxySelector"
	.zero	43
	.zero	9

	/* #193 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554891
	/* java_name */
	.ascii	"java/net/SocketAddress"
	.zero	43
	.zero	9

	/* #194 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554893
	/* java_name */
	.ascii	"java/net/SocketException"
	.zero	41
	.zero	9

	/* #195 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554894
	/* java_name */
	.ascii	"java/net/SocketTimeoutException"
	.zero	34
	.zero	9

	/* #196 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554896
	/* java_name */
	.ascii	"java/net/URI"
	.zero	53
	.zero	9

	/* #197 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554897
	/* java_name */
	.ascii	"java/net/URL"
	.zero	53
	.zero	9

	/* #198 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554898
	/* java_name */
	.ascii	"java/net/URLConnection"
	.zero	43
	.zero	9

	/* #199 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554895
	/* java_name */
	.ascii	"java/net/UnknownServiceException"
	.zero	33
	.zero	9

	/* #200 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554920
	/* java_name */
	.ascii	"java/nio/Buffer"
	.zero	50
	.zero	9

	/* #201 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554924
	/* java_name */
	.ascii	"java/nio/ByteBuffer"
	.zero	46
	.zero	9

	/* #202 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554921
	/* java_name */
	.ascii	"java/nio/CharBuffer"
	.zero	46
	.zero	9

	/* #203 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"java/nio/channels/ByteChannel"
	.zero	36
	.zero	9

	/* #204 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"java/nio/channels/Channel"
	.zero	40
	.zero	9

	/* #205 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554927
	/* java_name */
	.ascii	"java/nio/channels/FileChannel"
	.zero	36
	.zero	9

	/* #206 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"java/nio/channels/GatheringByteChannel"
	.zero	27
	.zero	9

	/* #207 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"java/nio/channels/InterruptibleChannel"
	.zero	27
	.zero	9

	/* #208 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"java/nio/channels/ReadableByteChannel"
	.zero	28
	.zero	9

	/* #209 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"java/nio/channels/ScatteringByteChannel"
	.zero	26
	.zero	9

	/* #210 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"java/nio/channels/SeekableByteChannel"
	.zero	28
	.zero	9

	/* #211 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"java/nio/channels/WritableByteChannel"
	.zero	28
	.zero	9

	/* #212 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554945
	/* java_name */
	.ascii	"java/nio/channels/spi/AbstractInterruptibleChannel"
	.zero	15
	.zero	9

	/* #213 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554907
	/* java_name */
	.ascii	"java/security/KeyStore"
	.zero	43
	.zero	9

	/* #214 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"java/security/KeyStore$LoadStoreParameter"
	.zero	24
	.zero	9

	/* #215 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"java/security/KeyStore$ProtectionParameter"
	.zero	23
	.zero	9

	/* #216 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"java/security/Principal"
	.zero	42
	.zero	9

	/* #217 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554912
	/* java_name */
	.ascii	"java/security/SecureRandom"
	.zero	39
	.zero	9

	/* #218 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554913
	/* java_name */
	.ascii	"java/security/cert/Certificate"
	.zero	35
	.zero	9

	/* #219 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554915
	/* java_name */
	.ascii	"java/security/cert/CertificateFactory"
	.zero	28
	.zero	9

	/* #220 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554918
	/* java_name */
	.ascii	"java/security/cert/X509Certificate"
	.zero	31
	.zero	9

	/* #221 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"java/security/cert/X509Extension"
	.zero	33
	.zero	9

	/* #222 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554849
	/* java_name */
	.ascii	"java/util/ArrayList"
	.zero	46
	.zero	9

	/* #223 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554838
	/* java_name */
	.ascii	"java/util/Collection"
	.zero	45
	.zero	9

	/* #224 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"java/util/Enumeration"
	.zero	44
	.zero	9

	/* #225 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554840
	/* java_name */
	.ascii	"java/util/HashMap"
	.zero	48
	.zero	9

	/* #226 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554858
	/* java_name */
	.ascii	"java/util/HashSet"
	.zero	48
	.zero	9

	/* #227 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"java/util/Iterator"
	.zero	47
	.zero	9

	/* #228 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554904
	/* java_name */
	.ascii	"java/util/Random"
	.zero	49
	.zero	9

	/* #229 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"javax/microedition/khronos/egl/EGL"
	.zero	31
	.zero	9

	/* #230 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554580
	/* java_name */
	.ascii	"javax/microedition/khronos/egl/EGL10"
	.zero	29
	.zero	9

	/* #231 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554571
	/* java_name */
	.ascii	"javax/microedition/khronos/egl/EGLConfig"
	.zero	25
	.zero	9

	/* #232 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554570
	/* java_name */
	.ascii	"javax/microedition/khronos/egl/EGLContext"
	.zero	24
	.zero	9

	/* #233 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554574
	/* java_name */
	.ascii	"javax/microedition/khronos/egl/EGLDisplay"
	.zero	24
	.zero	9

	/* #234 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554576
	/* java_name */
	.ascii	"javax/microedition/khronos/egl/EGLSurface"
	.zero	24
	.zero	9

	/* #235 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554549
	/* java_name */
	.ascii	"javax/net/SocketFactory"
	.zero	42
	.zero	9

	/* #236 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"javax/net/ssl/HostnameVerifier"
	.zero	35
	.zero	9

	/* #237 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554551
	/* java_name */
	.ascii	"javax/net/ssl/HttpsURLConnection"
	.zero	33
	.zero	9

	/* #238 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"javax/net/ssl/KeyManager"
	.zero	41
	.zero	9

	/* #239 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554565
	/* java_name */
	.ascii	"javax/net/ssl/KeyManagerFactory"
	.zero	34
	.zero	9

	/* #240 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554566
	/* java_name */
	.ascii	"javax/net/ssl/SSLContext"
	.zero	41
	.zero	9

	/* #241 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"javax/net/ssl/SSLSession"
	.zero	41
	.zero	9

	/* #242 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"javax/net/ssl/SSLSessionContext"
	.zero	34
	.zero	9

	/* #243 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554567
	/* java_name */
	.ascii	"javax/net/ssl/SSLSocketFactory"
	.zero	35
	.zero	9

	/* #244 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"javax/net/ssl/TrustManager"
	.zero	39
	.zero	9

	/* #245 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554569
	/* java_name */
	.ascii	"javax/net/ssl/TrustManagerFactory"
	.zero	32
	.zero	9

	/* #246 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"javax/net/ssl/X509TrustManager"
	.zero	35
	.zero	9

	/* #247 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554545
	/* java_name */
	.ascii	"javax/security/cert/Certificate"
	.zero	34
	.zero	9

	/* #248 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554547
	/* java_name */
	.ascii	"javax/security/cert/X509Certificate"
	.zero	30
	.zero	9

	/* #249 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33555050
	/* java_name */
	.ascii	"mono/android/TypeManager"
	.zero	41
	.zero	9

	/* #250 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554791
	/* java_name */
	.ascii	"mono/android/content/DialogInterface_OnCancelListenerImplementor"
	.zero	1
	.zero	9

	/* #251 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554795
	/* java_name */
	.ascii	"mono/android/content/DialogInterface_OnClickListenerImplementor"
	.zero	2
	.zero	9

	/* #252 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554726
	/* java_name */
	.ascii	"mono/android/media/MediaPlayer_OnCompletionListenerImplementor"
	.zero	3
	.zero	9

	/* #253 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554834
	/* java_name */
	.ascii	"mono/android/runtime/InputStreamAdapter"
	.zero	26
	.zero	9

	/* #254 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"mono/android/runtime/JavaArray"
	.zero	35
	.zero	9

	/* #255 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554855
	/* java_name */
	.ascii	"mono/android/runtime/JavaObject"
	.zero	34
	.zero	9

	/* #256 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554873
	/* java_name */
	.ascii	"mono/android/runtime/OutputStreamAdapter"
	.zero	25
	.zero	9

	/* #257 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554964
	/* java_name */
	.ascii	"mono/java/lang/RunnableImplementor"
	.zero	31
	.zero	9

	/* #258 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554544
	/* java_name */
	.ascii	"xamarin/android/net/OldAndroidSSLSocketFactory"
	.zero	19
	.zero	9

	.size	map_java, 21238
/* Java to managed map: END */


/* java_name_width: START */
	.section	.rodata.java_name_width,"a",@progbits
	.type	java_name_width, @object
	.p2align	2
	.global	java_name_width
java_name_width:
	.size	java_name_width, 4
	.long	74
/* java_name_width: END */
