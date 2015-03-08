.class public Landroid/graphics/Typeface;
.super Ljava/lang/Object;
.source "Typeface.java"


# static fields
.field public static final BOLD:I = 0x1

.field public static final BOLD_ITALIC:I = 0x3

.field private static final DEBUG:Z = false

.field public static final DEFAULT:Landroid/graphics/Typeface; = null

.field public static final DEFAULT_BOLD:Landroid/graphics/Typeface; = null

.field private static final DROIDSANS:Ljava/lang/String; = "DroidSans.ttf"

.field private static final DROIDSANS_BOLD:Ljava/lang/String; = "DroidSans-Bold.ttf"

.field private static final FLIP_ALL_APPS:Z = true

.field private static final FONTS_FOLDER:Ljava/lang/String; = "/system/fonts/"

.field private static final FlipFontAppFiltertList:[Ljava/lang/String; = null

.field private static final FlipFontAppList:[Ljava/lang/String; = null

.field private static FlipFontPath:Ljava/lang/String; = null

.field private static final FontsLikeDefault:[Ljava/lang/String; = null

.field public static final ITALIC:I = 0x2

.field public static final MONOSPACE:Landroid/graphics/Typeface; = null

.field private static final MONOSPACE_INDEX:I = 0x3

.field public static final NORMAL:I = 0x0

.field private static final SANS_INDEX:I = 0x1

.field private static final SANS_LOC_PATH:Ljava/lang/String; = "/data/data/com.android.settings/app_fonts/sans.loc"

.field public static final SANS_SERIF:Landroid/graphics/Typeface; = null

.field public static final SERIF:Landroid/graphics/Typeface; = null

.field private static final SERIF_INDEX:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Monotype"

.field private static UIFontBoldPath:Ljava/lang/String; = null

.field private static UIFontPath:Ljava/lang/String; = null

.field private static final UI_FONT_BOLD_PATH:Ljava/lang/String; = "/system/fonts/UIBoldFont.ttf"

.field private static final UI_FONT_PATH:Ljava/lang/String; = "/system/fonts/UIFont.ttf"

.field public static isFlipFontUsed:Z

.field private static lastAppInList:Z

.field private static lastAppNameString:Ljava/lang/String;

.field static sDefaults:[Landroid/graphics/Typeface;

.field private static final sStaticDefaults:[Landroid/graphics/Typeface;

.field private static final sTypefaceCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Typeface;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public isLikeDefault:Z

.field private mStyle:I

.field native_instance:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 66
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v6}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Landroid/graphics/Typeface;->sTypefaceCache:Landroid/util/SparseArray;

    .line 88
    const-string v0, ""

    sput-object v0, Landroid/graphics/Typeface;->FlipFontPath:Ljava/lang/String;

    .line 100
    sput-object v1, Landroid/graphics/Typeface;->lastAppNameString:Ljava/lang/String;

    .line 101
    sput-boolean v4, Landroid/graphics/Typeface;->lastAppInList:Z

    .line 104
    sput-object v1, Landroid/graphics/Typeface;->UIFontPath:Ljava/lang/String;

    .line 105
    sput-object v1, Landroid/graphics/Typeface;->UIFontBoldPath:Ljava/lang/String;

    .line 108
    sput-boolean v4, Landroid/graphics/Typeface;->isFlipFontUsed:Z

    .line 113
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "android"

    aput-object v2, v0, v4

    const-string v2, "com.android.*"

    aput-object v2, v0, v5

    const-string v2, "com.oppo.*"

    aput-object v2, v0, v7

    const-string v2, "com.nearme.*"

    aput-object v2, v0, v6

    const/4 v2, 0x4

    const-string v3, "com.google.*"

    aput-object v3, v0, v2

    const/4 v2, 0x5

    const-string v3, "com.mediatek.*"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "com.baidu.input"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    const-string v3, "com.sohu.inputmethod.sogou"

    aput-object v3, v0, v2

    const/16 v2, 0x8

    const-string v3, "com.iflytek.speechservice"

    aput-object v3, v0, v2

    const/16 v2, 0x9

    const-string/jumbo v3, "oppo.multimedia.soundrecorder"

    aput-object v3, v0, v2

    const/16 v2, 0xa

    const-string v3, "com.sina.weibo"

    aput-object v3, v0, v2

    const/16 v2, 0xb

    const-string v3, "com.svox.pico"

    aput-object v3, v0, v2

    const/16 v2, 0xc

    const-string v3, "com.cooliris.media"

    aput-object v3, v0, v2

    const/16 v2, 0xd

    const-string v3, "jp.co.omronsoft.openwnn"

    aput-object v3, v0, v2

    const/16 v2, 0xe

    const-string v3, "com.monotypeimaging.*"

    aput-object v3, v0, v2

    sput-object v0, Landroid/graphics/Typeface;->FlipFontAppList:[Ljava/lang/String;

    .line 132
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "com.android.browser"

    aput-object v2, v0, v4

    const-string v2, "com.android.htmlviewer"

    aput-object v2, v0, v5

    const-string v2, "com.oppo.tribune"

    aput-object v2, v0, v7

    const-string v2, "com.oppo.socialhub"

    aput-object v2, v0, v6

    sput-object v0, Landroid/graphics/Typeface;->FlipFontAppFiltertList:[Ljava/lang/String;

    .line 139
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v2, "sans-serif-light"

    aput-object v2, v0, v4

    sput-object v0, Landroid/graphics/Typeface;->FontsLikeDefault:[Ljava/lang/String;

    move-object v0, v1

    .line 396
    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    move-object v0, v1

    .line 397
    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v5}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    .line 398
    const-string/jumbo v0, "sans-serif"

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 399
    const-string/jumbo v0, "serif"

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 400
    const-string/jumbo v0, "monospace"

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .line 402
    const/4 v0, 0x4

    new-array v2, v0, [Landroid/graphics/Typeface;

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    aput-object v0, v2, v4

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    aput-object v0, v2, v5

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v7}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    aput-object v0, v2, v7

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v6}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    aput-object v0, v2, v6

    sput-object v2, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    .line 409
    const/4 v0, 0x4

    new-array v2, v0, [Landroid/graphics/Typeface;

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    aput-object v0, v2, v4

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v5}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    aput-object v0, v2, v5

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v7}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    aput-object v0, v2, v7

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, v6}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    aput-object v0, v2, v6

    sput-object v2, Landroid/graphics/Typeface;->sStaticDefaults:[Landroid/graphics/Typeface;

    .line 416
    return-void
.end method

.method private constructor <init>(I)V
    .locals 2
    .parameter "ni"

    .prologue
    const/4 v0, 0x0

    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput v0, p0, Landroid/graphics/Typeface;->mStyle:I

    .line 110
    iput-boolean v0, p0, Landroid/graphics/Typeface;->isLikeDefault:Z

    .line 367
    if-nez p1, :cond_0

    .line 368
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "native typeface cannot be made"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 371
    :cond_0
    iput p1, p0, Landroid/graphics/Typeface;->native_instance:I

    .line 372
    invoke-static {p1}, Landroid/graphics/Typeface;->nativeGetStyle(I)I

    move-result v0

    iput v0, p0, Landroid/graphics/Typeface;->mStyle:I

    .line 373
    return-void
.end method

.method public static SetAppTypeFace(Ljava/lang/String;)V
    .locals 1
    .parameter "sAppName"

    .prologue
    .line 759
    return-void
.end method

.method private static SetFlipFonts()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 621
    const-string v3, ""

    .line 624
    .local v3, strFontPathBold:Ljava/lang/String;
    invoke-static {v7}, Landroid/graphics/Typeface;->getFontPathFlipFont(I)Ljava/lang/String;

    move-result-object v2

    .line 627
    .local v2, strFontPath:Ljava/lang/String;
    const-string v4, "default"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 631
    sput-boolean v6, Landroid/graphics/Typeface;->isFlipFontUsed:Z

    .line 634
    sget-object v4, Landroid/graphics/Typeface;->UIFontPath:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 638
    const-string v4, ""

    sput-object v4, Landroid/graphics/Typeface;->UIFontPath:Ljava/lang/String;

    .line 639
    const-string v4, ""

    sput-object v4, Landroid/graphics/Typeface;->UIFontBoldPath:Ljava/lang/String;

    .line 641
    new-instance v0, Ljava/io/File;

    const-string v4, "/system/fonts/UIFont.ttf"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 642
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 643
    const-string v4, "/system/fonts/UIFont.ttf"

    sput-object v4, Landroid/graphics/Typeface;->UIFontPath:Ljava/lang/String;

    .line 645
    :cond_0
    new-instance v0, Ljava/io/File;

    .end local v0           #f:Ljava/io/File;
    const-string v4, "/system/fonts/UIBoldFont.ttf"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 646
    .restart local v0       #f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 647
    const-string v4, "/system/fonts/UIBoldFont.ttf"

    sput-object v4, Landroid/graphics/Typeface;->UIFontBoldPath:Ljava/lang/String;

    .line 649
    .end local v0           #f:Ljava/io/File;
    :cond_1
    sget-object v2, Landroid/graphics/Typeface;->UIFontPath:Ljava/lang/String;

    .line 650
    sget-object v3, Landroid/graphics/Typeface;->UIFontBoldPath:Ljava/lang/String;

    .line 663
    :goto_0
    sget-object v4, Landroid/graphics/Typeface;->FlipFontPath:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 751
    :goto_1
    return-void

    .line 654
    :cond_2
    sput-boolean v7, Landroid/graphics/Typeface;->isFlipFontUsed:Z

    .line 656
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "DroidSans-Bold.ttf"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 657
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "DroidSans.ttf"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 668
    :cond_3
    sput-object v2, Landroid/graphics/Typeface;->FlipFontPath:Ljava/lang/String;

    .line 681
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iget v1, v4, Landroid/graphics/Typeface;->native_instance:I

    .line 682
    .local v1, iNative:I
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 683
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v10, v6}, Landroid/graphics/Typeface;->nativeCreate(Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Landroid/graphics/Typeface;->native_instance:I

    .line 690
    :cond_4
    :goto_2
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iget v5, v5, Landroid/graphics/Typeface;->native_instance:I

    invoke-static {v5}, Landroid/graphics/Typeface;->nativeGetStyle(I)I

    move-result v5

    iput v5, v4, Landroid/graphics/Typeface;->mStyle:I

    .line 691
    invoke-static {v1}, Landroid/graphics/Typeface;->nativeUnref(I)V

    .line 695
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    iget v1, v4, Landroid/graphics/Typeface;->native_instance:I

    .line 696
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 697
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-static {v10, v7}, Landroid/graphics/Typeface;->nativeCreate(Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Landroid/graphics/Typeface;->native_instance:I

    .line 704
    :cond_5
    :goto_3
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    iget v5, v5, Landroid/graphics/Typeface;->native_instance:I

    invoke-static {v5}, Landroid/graphics/Typeface;->nativeGetStyle(I)I

    move-result v5

    iput v5, v4, Landroid/graphics/Typeface;->mStyle:I

    .line 705
    invoke-static {v1}, Landroid/graphics/Typeface;->nativeUnref(I)V

    .line 709
    sget-object v4, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v4, v4, v6

    iget v1, v4, Landroid/graphics/Typeface;->native_instance:I

    .line 710
    sget-object v4, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v4, v4, v6

    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iget v5, v5, Landroid/graphics/Typeface;->native_instance:I

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(II)I

    move-result v5

    iput v5, v4, Landroid/graphics/Typeface;->native_instance:I

    .line 711
    sget-object v4, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v4, v4, v6

    sget-object v5, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v5, v5, v6

    iget v5, v5, Landroid/graphics/Typeface;->native_instance:I

    invoke-static {v5}, Landroid/graphics/Typeface;->nativeGetStyle(I)I

    move-result v5

    iput v5, v4, Landroid/graphics/Typeface;->mStyle:I

    .line 712
    invoke-static {v1}, Landroid/graphics/Typeface;->nativeUnref(I)V

    .line 715
    sget-object v4, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v4, v4, v7

    iget v1, v4, Landroid/graphics/Typeface;->native_instance:I

    .line 716
    sget-object v4, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v4, v4, v7

    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    iget v5, v5, Landroid/graphics/Typeface;->native_instance:I

    invoke-static {v5, v7}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(II)I

    move-result v5

    iput v5, v4, Landroid/graphics/Typeface;->native_instance:I

    .line 717
    sget-object v4, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v4, v4, v7

    sget-object v5, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v5, v5, v7

    iget v5, v5, Landroid/graphics/Typeface;->native_instance:I

    invoke-static {v5}, Landroid/graphics/Typeface;->nativeGetStyle(I)I

    move-result v5

    iput v5, v4, Landroid/graphics/Typeface;->mStyle:I

    .line 718
    invoke-static {v1}, Landroid/graphics/Typeface;->nativeUnref(I)V

    .line 721
    sget-object v4, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v4, v4, v8

    iget v1, v4, Landroid/graphics/Typeface;->native_instance:I

    .line 722
    sget-object v4, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v4, v4, v8

    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iget v5, v5, Landroid/graphics/Typeface;->native_instance:I

    invoke-static {v5, v8}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(II)I

    move-result v5

    iput v5, v4, Landroid/graphics/Typeface;->native_instance:I

    .line 723
    sget-object v4, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v4, v4, v8

    sget-object v5, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v5, v5, v8

    iget v5, v5, Landroid/graphics/Typeface;->native_instance:I

    invoke-static {v5}, Landroid/graphics/Typeface;->nativeGetStyle(I)I

    move-result v5

    iput v5, v4, Landroid/graphics/Typeface;->mStyle:I

    .line 724
    invoke-static {v1}, Landroid/graphics/Typeface;->nativeUnref(I)V

    .line 727
    sget-object v4, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v4, v4, v9

    iget v1, v4, Landroid/graphics/Typeface;->native_instance:I

    .line 728
    sget-object v4, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v4, v4, v9

    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    iget v5, v5, Landroid/graphics/Typeface;->native_instance:I

    invoke-static {v5, v9}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(II)I

    move-result v5

    iput v5, v4, Landroid/graphics/Typeface;->native_instance:I

    .line 729
    sget-object v4, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v4, v4, v9

    sget-object v5, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v5, v5, v9

    iget v5, v5, Landroid/graphics/Typeface;->native_instance:I

    invoke-static {v5}, Landroid/graphics/Typeface;->nativeGetStyle(I)I

    move-result v5

    iput v5, v4, Landroid/graphics/Typeface;->mStyle:I

    .line 730
    invoke-static {v1}, Landroid/graphics/Typeface;->nativeUnref(I)V

    .line 734
    sget-object v4, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    iget v1, v4, Landroid/graphics/Typeface;->native_instance:I

    .line 735
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 736
    sget-object v4, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    const-string/jumbo v5, "monospace"

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->nativeCreate(Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Landroid/graphics/Typeface;->native_instance:I

    .line 743
    :cond_6
    :goto_4
    sget-object v4, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    sget-object v5, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    iget v5, v5, Landroid/graphics/Typeface;->native_instance:I

    invoke-static {v5}, Landroid/graphics/Typeface;->nativeGetStyle(I)I

    move-result v5

    iput v5, v4, Landroid/graphics/Typeface;->mStyle:I

    .line 744
    invoke-static {v1}, Landroid/graphics/Typeface;->nativeUnref(I)V

    goto/16 :goto_1

    .line 686
    :cond_7
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v2}, Landroid/graphics/Typeface;->nativeCreateFromFile(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Landroid/graphics/Typeface;->native_instance:I

    .line 687
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iget v4, v4, Landroid/graphics/Typeface;->native_instance:I

    if-nez v4, :cond_4

    .line 688
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v10, v6}, Landroid/graphics/Typeface;->nativeCreate(Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Landroid/graphics/Typeface;->native_instance:I

    goto/16 :goto_2

    .line 700
    :cond_8
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-static {v3}, Landroid/graphics/Typeface;->nativeCreateFromFile(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Landroid/graphics/Typeface;->native_instance:I

    .line 701
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    iget v4, v4, Landroid/graphics/Typeface;->native_instance:I

    if-nez v4, :cond_5

    .line 702
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-static {v10, v7}, Landroid/graphics/Typeface;->nativeCreate(Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Landroid/graphics/Typeface;->native_instance:I

    goto/16 :goto_3

    .line 739
    :cond_9
    sget-object v4, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iget v5, v5, Landroid/graphics/Typeface;->native_instance:I

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(II)I

    move-result v5

    iput v5, v4, Landroid/graphics/Typeface;->native_instance:I

    .line 740
    sget-object v4, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    iget v4, v4, Landroid/graphics/Typeface;->native_instance:I

    if-nez v4, :cond_6

    .line 741
    sget-object v4, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    const-string/jumbo v5, "monospace"

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->nativeCreate(Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Landroid/graphics/Typeface;->native_instance:I

    goto :goto_4
.end method

.method private static _create(Ljava/lang/String;I)Landroid/graphics/Typeface;
    .locals 2
    .parameter "familyName"
    .parameter "style"

    .prologue
    .line 165
    new-instance v0, Landroid/graphics/Typeface;

    invoke-static {p0, p1}, Landroid/graphics/Typeface;->nativeCreate(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/Typeface;-><init>(I)V

    return-object v0
.end method

.method public static create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;
    .locals 5
    .parameter "family"
    .parameter "style"

    .prologue
    .line 242
    const/4 v0, 0x0

    .line 249
    .local v0, ni:I
    if-ltz p1, :cond_0

    const/4 v3, 0x3

    if-le p1, v3, :cond_1

    .line 250
    :cond_0
    const/4 p1, 0x0

    .line 267
    :cond_1
    if-eqz p0, :cond_8

    .line 269
    iget v3, p0, Landroid/graphics/Typeface;->mStyle:I

    if-ne v3, p1, :cond_3

    move-object v2, p0

    .line 315
    :cond_2
    :goto_0
    return-object v2

    .line 274
    :cond_3
    sget-object v3, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    iget v4, p0, Landroid/graphics/Typeface;->mStyle:I

    aget-object v3, v3, v4

    invoke-virtual {p0, v3}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 275
    sget-object v3, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v2, v3, p1

    goto :goto_0

    .line 278
    :cond_4
    iget v0, p0, Landroid/graphics/Typeface;->native_instance:I

    .line 289
    sget-object v3, Landroid/graphics/Typeface;->sTypefaceCache:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 291
    .local v1, styles:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    if-eqz v1, :cond_5

    .line 292
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Typeface;

    .line 293
    .local v2, typeface:Landroid/graphics/Typeface;
    if-nez v2, :cond_2

    .line 298
    .end local v2           #typeface:Landroid/graphics/Typeface;
    :cond_5
    new-instance v2, Landroid/graphics/Typeface;

    invoke-static {v0, p1}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(II)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/Typeface;-><init>(I)V

    .line 303
    .restart local v2       #typeface:Landroid/graphics/Typeface;
    if-eqz v2, :cond_6

    if-eqz p0, :cond_6

    .line 305
    iget-boolean v3, p0, Landroid/graphics/Typeface;->isLikeDefault:Z

    iput-boolean v3, v2, Landroid/graphics/Typeface;->isLikeDefault:Z

    .line 309
    :cond_6
    if-nez v1, :cond_7

    .line 310
    new-instance v1, Landroid/util/SparseArray;

    .end local v1           #styles:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    const/4 v3, 0x4

    invoke-direct {v1, v3}, Landroid/util/SparseArray;-><init>(I)V

    .line 311
    .restart local v1       #styles:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    sget-object v3, Landroid/graphics/Typeface;->sTypefaceCache:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 313
    :cond_7
    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 282
    .end local v1           #styles:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    .end local v2           #typeface:Landroid/graphics/Typeface;
    :cond_8
    sget-object v3, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v2, v3, p1

    goto :goto_0
.end method

.method public static create(Ljava/lang/String;I)Landroid/graphics/Typeface;
    .locals 3
    .parameter "familyName"
    .parameter "style"

    .prologue
    .line 190
    if-ltz p1, :cond_0

    const/4 v2, 0x3

    if-le p1, v2, :cond_1

    .line 191
    :cond_0
    const/4 p1, 0x0

    .line 194
    :cond_1
    if-nez p0, :cond_3

    .line 195
    sget-object v2, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v1, v2, p1

    .line 224
    :cond_2
    :goto_0
    return-object v1

    .line 200
    :cond_3
    invoke-static {p0, p1}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    .line 209
    .local v1, tf:Landroid/graphics/Typeface;
    if-eqz v1, :cond_4

    sget-object v2, Landroid/graphics/Typeface;->sStaticDefaults:[Landroid/graphics/Typeface;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 211
    sget-object v2, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v1, v2, p1

    goto :goto_0

    .line 215
    :cond_4
    const/4 v0, 0x0

    .local v0, ix:I
    :goto_1
    sget-object v2, Landroid/graphics/Typeface;->FontsLikeDefault:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 217
    sget-object v2, Landroid/graphics/Typeface;->FontsLikeDefault:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 219
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/Typeface;->isLikeDefault:Z

    goto :goto_0

    .line 215
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 2
    .parameter "mgr"
    .parameter "path"

    .prologue
    .line 342
    new-instance v0, Landroid/graphics/Typeface;

    invoke-static {p0, p1}, Landroid/graphics/Typeface;->nativeCreateFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/Typeface;-><init>(I)V

    return-object v0
.end method

.method public static createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;
    .locals 2
    .parameter "path"

    .prologue
    .line 352
    new-instance v0, Landroid/graphics/Typeface;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Typeface;->nativeCreateFromFile(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/Typeface;-><init>(I)V

    return-object v0
.end method

.method public static createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 2
    .parameter "path"

    .prologue
    .line 362
    new-instance v0, Landroid/graphics/Typeface;

    invoke-static {p0}, Landroid/graphics/Typeface;->nativeCreateFromFile(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/Typeface;-><init>(I)V

    return-object v0
.end method

.method public static defaultFromStyle(I)Landroid/graphics/Typeface;
    .locals 1
    .parameter "style"

    .prologue
    .line 328
    if-ltz p0, :cond_0

    const/4 v0, 0x3

    if-le p0, v0, :cond_1

    .line 329
    :cond_0
    const/4 p0, 0x0

    .line 332
    :cond_1
    sget-object v0, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static getFontNameFlipFont(I)Ljava/lang/String;
    .locals 4
    .parameter "typefaceIndex"

    .prologue
    .line 541
    invoke-static {p0}, Landroid/graphics/Typeface;->getFullFlipFont(I)Ljava/lang/String;

    move-result-object v1

    .line 544
    .local v1, sx:Ljava/lang/String;
    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 547
    .local v0, parts:[Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    .line 549
    const/4 v2, 0x0

    aget-object v2, v0, v2

    const-string v3, "default"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 550
    const-string v2, "default"

    .line 554
    :goto_0
    return-object v2

    .line 552
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 554
    :cond_1
    const/4 v2, 0x1

    aget-object v2, v0, v2

    goto :goto_0
.end method

.method public static getFontPathFlipFont(I)Ljava/lang/String;
    .locals 3
    .parameter "typefaceIndex"

    .prologue
    .line 559
    invoke-static {p0}, Landroid/graphics/Typeface;->getFullFlipFont(I)Ljava/lang/String;

    move-result-object v1

    .line 562
    .local v1, sx:Ljava/lang/String;
    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 563
    .local v0, parts:[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v0, v2

    return-object v2
.end method

.method private static getFullFlipFont(I)Ljava/lang/String;
    .locals 12
    .parameter "typefaceIndex"

    .prologue
    .line 569
    const-string v9, "default"

    .line 570
    .local v9, systemFont:Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 615
    :cond_0
    :goto_0
    :pswitch_0
    return-object v9

    .line 573
    :pswitch_1
    const-string/jumbo v10, "persist.sys.flipfontpath"

    const-string v11, "empty"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 576
    const-string v10, "empty"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 579
    new-instance v5, Ljava/io/File;

    const-string v10, "/data/data/com.android.settings/app_fonts/sans.loc"

    invoke-direct {v5, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 580
    .local v5, file:Ljava/io/File;
    const/4 v6, 0x0

    .line 581
    .local v6, fis:Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 582
    .local v0, bis:Ljava/io/BufferedInputStream;
    const/4 v2, 0x0

    .line 583
    .local v2, dis:Ljava/io/DataInputStream;
    const/4 v8, 0x0

    .line 586
    .local v8, string:Ljava/lang/String;
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 588
    .end local v6           #fis:Ljava/io/FileInputStream;
    .local v7, fis:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 589
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .local v1, bis:Ljava/io/BufferedInputStream;
    :try_start_2
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 590
    .end local v2           #dis:Ljava/io/DataInputStream;
    .local v3, dis:Ljava/io/DataInputStream;
    :try_start_3
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v8

    .line 593
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 594
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 595
    invoke-virtual {v3}, Ljava/io/FilterInputStream;->close()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    move-object v2, v3

    .end local v3           #dis:Ljava/io/DataInputStream;
    .restart local v2       #dis:Ljava/io/DataInputStream;
    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    move-object v6, v7

    .line 602
    .end local v7           #fis:Ljava/io/FileInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    :goto_1
    move-object v9, v8

    .line 603
    const-string/jumbo v10, "persist.sys.flipfontpath"

    invoke-static {v10, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 596
    :catch_0
    move-exception v4

    .line 597
    .local v4, e:Ljava/io/FileNotFoundException;
    :goto_2
    const-string v8, "default"

    .line 601
    goto :goto_1

    .line 598
    .end local v4           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v4

    .line 599
    .local v4, e:Ljava/io/IOException;
    :goto_3
    const-string v8, "default"

    .line 600
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 598
    .end local v4           #e:Ljava/io/IOException;
    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    :catch_2
    move-exception v4

    move-object v6, v7

    .end local v7           #fis:Ljava/io/FileInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    goto :goto_3

    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    :catch_3
    move-exception v4

    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    move-object v6, v7

    .end local v7           #fis:Ljava/io/FileInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    goto :goto_3

    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v2           #dis:Ljava/io/DataInputStream;
    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    .restart local v3       #dis:Ljava/io/DataInputStream;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    :catch_4
    move-exception v4

    move-object v2, v3

    .end local v3           #dis:Ljava/io/DataInputStream;
    .restart local v2       #dis:Ljava/io/DataInputStream;
    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    move-object v6, v7

    .end local v7           #fis:Ljava/io/FileInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    goto :goto_3

    .line 596
    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    :catch_5
    move-exception v4

    move-object v6, v7

    .end local v7           #fis:Ljava/io/FileInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    goto :goto_2

    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    :catch_6
    move-exception v4

    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    move-object v6, v7

    .end local v7           #fis:Ljava/io/FileInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    goto :goto_2

    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v2           #dis:Ljava/io/DataInputStream;
    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    .restart local v3       #dis:Ljava/io/DataInputStream;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    :catch_7
    move-exception v4

    move-object v2, v3

    .end local v3           #dis:Ljava/io/DataInputStream;
    .restart local v2       #dis:Ljava/io/DataInputStream;
    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    move-object v6, v7

    .end local v7           #fis:Ljava/io/FileInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    goto :goto_2

    .line 570
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static isAppInFlipList(Ljava/lang/String;)Z
    .locals 1
    .parameter "appNameString"

    .prologue
    .line 481
    if-eqz p0, :cond_0

    const-string v0, ".cts"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 482
    :cond_0
    const/4 v0, 0x0

    .line 486
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static loadAppList()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 474
    sget-object v0, Landroid/graphics/Typeface;->FlipFontAppList:[Ljava/lang/String;

    return-object v0
.end method

.method private static native nativeCreate(Ljava/lang/String;I)I
.end method

.method private static native nativeCreateFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)I
.end method

.method private static native nativeCreateFromFile(Ljava/lang/String;)I
.end method

.method private static native nativeCreateFromTypeface(II)I
.end method

.method private static native nativeGetStyle(I)I
.end method

.method private static native nativeUnref(I)V
.end method

.method public static native setGammaForText(FF)V
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 430
    if-ne p0, p1, :cond_1

    .line 435
    :cond_0
    :goto_0
    return v1

    .line 431
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 433
    check-cast v0, Landroid/graphics/Typeface;

    .line 435
    .local v0, typeface:Landroid/graphics/Typeface;
    iget v3, p0, Landroid/graphics/Typeface;->mStyle:I

    iget v4, v0, Landroid/graphics/Typeface;->mStyle:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Landroid/graphics/Typeface;->native_instance:I

    iget v4, v0, Landroid/graphics/Typeface;->native_instance:I

    if-eq v3, v4, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 422
    :try_start_0
    iget v0, p0, Landroid/graphics/Typeface;->native_instance:I

    invoke-static {v0}, Landroid/graphics/Typeface;->nativeUnref(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 424
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 426
    return-void

    .line 424
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getStyle()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Landroid/graphics/Typeface;->mStyle:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 440
    iget v0, p0, Landroid/graphics/Typeface;->native_instance:I

    .line 441
    .local v0, result:I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/graphics/Typeface;->mStyle:I

    add-int v0, v1, v2

    .line 442
    return v0
.end method

.method public final isBold()Z
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Landroid/graphics/Typeface;->mStyle:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isItalic()Z
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Landroid/graphics/Typeface;->mStyle:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
