.class public Loppo/content/res/OppoThemeZipFile;
.super Ljava/lang/Object;
.source "OppoThemeZipFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    }
.end annotation


# static fields
.field private static final ALTERNATIVE_THEME_VALUE_FILE:Ljava/lang/String; = "assets/colors.xml"

.field private static final ANDROID_PACKAGE:Ljava/lang/String; = "android"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_PACKAGE:Ljava/lang/String; = "package"

.field private static final FUZZY_SEARCH_ICON_SUFFIX:Ljava/lang/String; = ".png"

.field private static final OPPO_PACKAGE:Ljava/lang/String; = "oppo"

.field private static final RESOURCES_PATH:Ljava/lang/String; = "res/drawable"

.field private static final TAG:Ljava/lang/String; = "OppoThemeZipFile"

.field private static final TAG_BOOLEAN:Ljava/lang/String; = "bool"

.field private static final TAG_COLOR:Ljava/lang/String; = "color"

.field private static final TAG_DIMEN:Ljava/lang/String; = "dimen"

.field private static final TAG_DRAWABLE:Ljava/lang/String; = "drawable"

.field private static final TAG_INTEGER:Ljava/lang/String; = "integer"

.field private static final TAG_STRING:Ljava/lang/String; = "string"

.field private static final TRUE:Ljava/lang/String; = "true"

.field private static final sDensities:[I

.field private static final sDensity:I

.field protected static final sThemeZipFiles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Loppo/content/res/OppoThemeZipFile;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final DEBUG:Z

.field private mCharSequences:Landroid/util/SparseArray;

.field private mIntegers:Landroid/util/SparseArray;

.field private mLastModifyTime:J

.field private mMetaData:Loppo/content/res/OppoThemeResources$MetaData;

.field private mPackageName:Ljava/lang/String;

.field private mPath:Ljava/lang/String;

.field private mResources:Landroid/content/res/Resources;

.field private mZipFile:Ljava/util/zip/ZipFile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    sput v0, Loppo/content/res/OppoThemeZipFile;->sDensity:I

    .line 78
    sget v0, Loppo/content/res/OppoThemeZipFile;->sDensity:I

    invoke-static {v0}, Loppo/util/OppoDisplayUtils;->getBestDensityOrder(I)[I

    move-result-object v0

    sput-object v0, Loppo/content/res/OppoThemeZipFile;->sDensities:[I

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Loppo/content/res/OppoThemeZipFile;->sThemeZipFiles:Ljava/util/Map;

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Loppo/content/res/OppoThemeResources$MetaData;Ljava/lang/String;Landroid/content/res/Resources;)V
    .locals 4
    .parameter "path"
    .parameter "metaData"
    .parameter "packageName"
    .parameter "resources"

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Loppo/content/res/OppoThemeZipFile;->DEBUG:Z

    .line 65
    iput-wide v2, p0, Loppo/content/res/OppoThemeZipFile;->mLastModifyTime:J

    .line 66
    iput-object v1, p0, Loppo/content/res/OppoThemeZipFile;->mIntegers:Landroid/util/SparseArray;

    .line 67
    iput-object v1, p0, Loppo/content/res/OppoThemeZipFile;->mCharSequences:Landroid/util/SparseArray;

    .line 68
    iput-object v1, p0, Loppo/content/res/OppoThemeZipFile;->mResources:Landroid/content/res/Resources;

    .line 69
    iput-object v1, p0, Loppo/content/res/OppoThemeZipFile;->mPackageName:Ljava/lang/String;

    .line 70
    iput-object v1, p0, Loppo/content/res/OppoThemeZipFile;->mPath:Ljava/lang/String;

    .line 71
    iput-object v1, p0, Loppo/content/res/OppoThemeZipFile;->mMetaData:Loppo/content/res/OppoThemeResources$MetaData;

    .line 73
    iput-object v1, p0, Loppo/content/res/OppoThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    .line 84
    iput-wide v2, p0, Loppo/content/res/OppoThemeZipFile;->mLastModifyTime:J

    .line 85
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Loppo/content/res/OppoThemeZipFile;->mIntegers:Landroid/util/SparseArray;

    .line 86
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Loppo/content/res/OppoThemeZipFile;->mCharSequences:Landroid/util/SparseArray;

    .line 87
    iput-object p4, p0, Loppo/content/res/OppoThemeZipFile;->mResources:Landroid/content/res/Resources;

    .line 88
    iput-object p3, p0, Loppo/content/res/OppoThemeZipFile;->mPackageName:Ljava/lang/String;

    .line 89
    iput-object p1, p0, Loppo/content/res/OppoThemeZipFile;->mPath:Ljava/lang/String;

    .line 90
    iput-object p2, p0, Loppo/content/res/OppoThemeZipFile;->mMetaData:Loppo/content/res/OppoThemeResources$MetaData;

    .line 91
    return-void
.end method

.method private clean()V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Loppo/content/res/OppoThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    if-eqz v0, :cond_0

    .line 214
    :try_start_0
    iget-object v0, p0, Loppo/content/res/OppoThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Loppo/content/res/OppoThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    .line 219
    :cond_0
    iget-object v0, p0, Loppo/content/res/OppoThemeZipFile;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 220
    iget-object v0, p0, Loppo/content/res/OppoThemeZipFile;->mCharSequences:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 221
    return-void

    .line 215
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private getInputStreamInner(Ljava/lang/String;)Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    .locals 8
    .parameter "path"

    .prologue
    const/4 v7, 0x1

    .line 135
    invoke-direct {p0, p1}, Loppo/content/res/OppoThemeZipFile;->getZipInputStream(Ljava/lang/String;)Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;

    move-result-object v5

    .line 136
    .local v5, themeFileInfo:Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    if-nez v5, :cond_3

    invoke-direct {p0}, Loppo/content/res/OppoThemeZipFile;->isValid()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 137
    const-string v4, "res/drawable"

    .line 138
    .local v4, str2:Ljava/lang/String;
    const-string v6, "/"

    invoke-virtual {p1, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 140
    .local v1, i:I
    if-lez v1, :cond_3

    .line 141
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 145
    .local v3, str1:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, j:I
    :goto_0
    sget-object v6, Loppo/content/res/OppoThemeZipFile;->sDensities:[I

    array-length v6, v6

    if-ge v2, v6, :cond_3

    .line 146
    const/4 v6, 0x3

    new-array v0, v6, [Ljava/lang/Object;

    .line 147
    .local v0, arrayOfString:[Ljava/lang/Object;
    const/4 v6, 0x0

    aput-object v4, v0, v6

    .line 148
    sget-object v6, Loppo/content/res/OppoThemeZipFile;->sDensities:[I

    aget v6, v6, v2

    invoke-static {v6}, Loppo/util/OppoDisplayUtils;->getDensitySuffix(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v7

    .line 149
    const/4 v6, 0x2

    aput-object v3, v0, v6

    .line 150
    const-string v6, "%s%s%s"

    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Loppo/content/res/OppoThemeZipFile;->getZipInputStream(Ljava/lang/String;)Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;

    move-result-object v5

    .line 153
    if-nez v5, :cond_1

    .line 145
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 156
    :cond_1
    sget-object v6, Loppo/content/res/OppoThemeZipFile;->sDensities:[I

    aget v6, v6, v2

    if-le v6, v7, :cond_2

    .line 157
    sget-object v6, Loppo/content/res/OppoThemeZipFile;->sDensities:[I

    aget v6, v6, v2

    iput v6, v5, Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;->mDensity:I

    .line 159
    :cond_2
    if-eqz v5, :cond_0

    .line 165
    .end local v0           #arrayOfString:[Ljava/lang/Object;
    .end local v1           #i:I
    .end local v2           #j:I
    .end local v3           #str1:Ljava/lang/String;
    .end local v4           #str2:Ljava/lang/String;
    :cond_3
    return-object v5
.end method

.method private static final getPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "packageName"

    .prologue
    .line 191
    const-string v0, "framework-res"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "icons"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 192
    const-string v0, "oppo-framework-res"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "lockscreen"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    :cond_0
    const-string p0, "oppo"

    .line 198
    :cond_1
    :goto_0
    return-object p0

    .line 196
    :cond_2
    const-string p0, "android"

    goto :goto_0
.end method

.method protected static declared-synchronized getThemeZipFile(Loppo/content/res/OppoThemeResources$MetaData;Ljava/lang/String;Landroid/content/res/Resources;)Loppo/content/res/OppoThemeZipFile;
    .locals 9
    .parameter "metadata"
    .parameter "packageName"
    .parameter "resources"

    .prologue
    .line 95
    const-class v7, Loppo/content/res/OppoThemeZipFile;

    monitor-enter v7

    const/4 v3, 0x0

    .line 96
    .local v3, themeZipFile:Loppo/content/res/OppoThemeZipFile;
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Loppo/content/res/OppoThemeResources$MetaData;->themePath:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 99
    .local v2, path:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    .local v1, packageFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-nez v6, :cond_0

    .line 101
    const/4 v4, 0x0

    .line 121
    :goto_0
    monitor-exit v7

    return-object v4

    .line 104
    :cond_0
    :try_start_1
    sget-object v6, Loppo/content/res/OppoThemeZipFile;->sThemeZipFiles:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    .line 106
    .local v5, weakreference:Ljava/lang/ref/WeakReference;
    if-eqz v5, :cond_1

    .line 107
    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Loppo/content/res/OppoThemeZipFile;

    move-object v3, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v3

    .line 112
    .end local v3           #themeZipFile:Loppo/content/res/OppoThemeZipFile;
    .local v4, themeZipFile:Loppo/content/res/OppoThemeZipFile;
    :goto_1
    if-eqz v4, :cond_2

    move-object v3, v4

    .line 113
    .end local v4           #themeZipFile:Loppo/content/res/OppoThemeZipFile;
    .restart local v3       #themeZipFile:Loppo/content/res/OppoThemeZipFile;
    goto :goto_0

    .line 109
    :cond_1
    const/4 v3, 0x0

    move-object v4, v3

    .end local v3           #themeZipFile:Loppo/content/res/OppoThemeZipFile;
    .restart local v4       #themeZipFile:Loppo/content/res/OppoThemeZipFile;
    goto :goto_1

    .line 115
    :cond_2
    :try_start_2
    new-instance v3, Loppo/content/res/OppoThemeZipFile;

    invoke-static {p1}, Loppo/content/res/OppoThemeZipFile;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v2, p0, v6, p2}, Loppo/content/res/OppoThemeZipFile;-><init>(Ljava/lang/String;Loppo/content/res/OppoThemeResources$MetaData;Ljava/lang/String;Landroid/content/res/Resources;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 117
    .end local v4           #themeZipFile:Loppo/content/res/OppoThemeZipFile;
    .restart local v3       #themeZipFile:Loppo/content/res/OppoThemeZipFile;
    :try_start_3
    new-instance v5, Ljava/lang/ref/WeakReference;

    .end local v5           #weakreference:Ljava/lang/ref/WeakReference;
    invoke-direct {v5, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 118
    .restart local v5       #weakreference:Ljava/lang/ref/WeakReference;
    sget-object v6, Loppo/content/res/OppoThemeZipFile;->sThemeZipFiles:Ljava/util/Map;

    invoke-interface {v6, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v4, v3

    .line 121
    goto :goto_0

    .line 95
    .end local v1           #packageFile:Ljava/io/File;
    .end local v2           #path:Ljava/lang/String;
    .end local v5           #weakreference:Ljava/lang/ref/WeakReference;
    :catchall_0
    move-exception v6

    :goto_2
    monitor-exit v7

    throw v6

    .end local v3           #themeZipFile:Loppo/content/res/OppoThemeZipFile;
    .restart local v1       #packageFile:Ljava/io/File;
    .restart local v2       #path:Ljava/lang/String;
    .restart local v4       #themeZipFile:Loppo/content/res/OppoThemeZipFile;
    .restart local v5       #weakreference:Ljava/lang/ref/WeakReference;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4           #themeZipFile:Loppo/content/res/OppoThemeZipFile;
    .restart local v3       #themeZipFile:Loppo/content/res/OppoThemeZipFile;
    goto :goto_2
.end method

.method private getZipInputStream(Ljava/lang/String;)Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    .locals 6
    .parameter "path"

    .prologue
    .line 169
    const/4 v1, 0x0

    .line 170
    .local v1, themeFileInfo:Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    invoke-direct {p0}, Loppo/content/res/OppoThemeZipFile;->isValid()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 171
    const/4 v3, 0x0

    .line 172
    .local v3, zipEntry:Ljava/util/zip/ZipEntry;
    iget-object v4, p0, Loppo/content/res/OppoThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v4, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v3

    .line 174
    if-eqz v3, :cond_0

    .line 176
    :try_start_0
    iget-object v4, p0, Loppo/content/res/OppoThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v4, v3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    .line 177
    .local v0, inputStream:Ljava/io/InputStream;
    if-eqz v0, :cond_0

    .line 178
    new-instance v2, Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v4

    invoke-direct {v2, p0, v0, v4, v5}, Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;-><init>(Loppo/content/res/OppoThemeZipFile;Ljava/io/InputStream;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    .end local v1           #themeFileInfo:Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    .local v2, themeFileInfo:Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    if-eqz v2, :cond_1

    move-object v1, v2

    .line 187
    .end local v0           #inputStream:Ljava/io/InputStream;
    .end local v2           #themeFileInfo:Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    .end local v3           #zipEntry:Ljava/util/zip/ZipEntry;
    :goto_0
    return-object v2

    .line 183
    .restart local v1       #themeFileInfo:Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    .restart local v3       #zipEntry:Ljava/util/zip/ZipEntry;
    :catch_0
    move-exception v4

    .end local v3           #zipEntry:Ljava/util/zip/ZipEntry;
    :cond_0
    :goto_1
    move-object v2, v1

    .line 187
    .local v2, themeFileInfo:Ljava/lang/Object;
    goto :goto_0

    .end local v1           #themeFileInfo:Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    .restart local v0       #inputStream:Ljava/io/InputStream;
    .local v2, themeFileInfo:Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    .restart local v3       #zipEntry:Ljava/util/zip/ZipEntry;
    :cond_1
    move-object v1, v2

    .end local v2           #themeFileInfo:Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    .restart local v1       #themeFileInfo:Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    goto :goto_1
.end method

.method private isValid()Z
    .locals 2

    .prologue
    .line 203
    iget-object v1, p0, Loppo/content/res/OppoThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    if-eqz v1, :cond_0

    .line 204
    const/4 v0, 0x1

    .line 208
    .local v0, flag:Z
    :goto_0
    return v0

    .line 206
    .end local v0           #flag:Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #flag:Z
    goto :goto_0
.end method

.method private loadThemeValues()V
    .locals 12

    .prologue
    .line 272
    sget-object v8, Loppo/content/res/OppoThemeZipFile;->sDensities:[I

    array-length v8, v8

    add-int/lit8 v3, v8, -0x1

    .line 273
    .local v3, i:I
    const/4 v8, 0x1

    new-array v5, v8, [Ljava/lang/Object;

    .line 274
    .local v5, suffix:[Ljava/lang/Object;
    const/4 v8, 0x0

    sget-object v9, Loppo/content/res/OppoThemeZipFile;->sDensities:[I

    aget v9, v9, v3

    invoke-static {v9}, Loppo/util/OppoDisplayUtils;->getDensitySuffix(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v8

    .line 275
    const-string v8, "assets/colors.xml"

    invoke-static {v8, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Loppo/content/res/OppoThemeZipFile;->getZipInputStream(Ljava/lang/String;)Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;

    move-result-object v6

    .line 277
    .local v6, themeFileInfo:Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    if-nez v6, :cond_1

    .line 310
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    const/4 v4, 0x0

    .line 281
    .local v4, in:Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 283
    .local v0, bufferedinputstream:Ljava/io/BufferedInputStream;
    :try_start_0
    iget-object v4, v6, Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    .line 284
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v8

    invoke-virtual {v8}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 285
    .local v7, xmlpullparser:Lorg/xmlpull/v1/XmlPullParser;
    new-instance v1, Ljava/io/BufferedInputStream;

    const/16 v8, 0x2000

    invoke-direct {v1, v4, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2

    .line 286
    .end local v0           #bufferedinputstream:Ljava/io/BufferedInputStream;
    .local v1, bufferedinputstream:Ljava/io/BufferedInputStream;
    const/4 v8, 0x0

    :try_start_1
    invoke-interface {v7, v1, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 287
    invoke-direct {p0, v7}, Loppo/content/res/OppoThemeZipFile;->mergeThemeValues(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_7

    .line 294
    if-eqz v1, :cond_2

    .line 295
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 303
    :cond_2
    :goto_1
    if-eqz v4, :cond_3

    .line 304
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_3
    move-object v0, v1

    .line 308
    .end local v1           #bufferedinputstream:Ljava/io/BufferedInputStream;
    .restart local v0       #bufferedinputstream:Ljava/io/BufferedInputStream;
    goto :goto_0

    .line 297
    .end local v0           #bufferedinputstream:Ljava/io/BufferedInputStream;
    .restart local v1       #bufferedinputstream:Ljava/io/BufferedInputStream;
    :catch_0
    move-exception v2

    .line 298
    .local v2, e:Ljava/io/IOException;
    const-string v8, "OppoThemeZipFile"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bufferedinputstream IOException happened when loadThemeValues, msg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 306
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 307
    .restart local v2       #e:Ljava/io/IOException;
    const-string v8, "OppoThemeZipFile"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "in IOException happened when loadThemeValues, msg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 309
    .end local v1           #bufferedinputstream:Ljava/io/BufferedInputStream;
    .restart local v0       #bufferedinputstream:Ljava/io/BufferedInputStream;
    goto :goto_0

    .line 289
    .end local v2           #e:Ljava/io/IOException;
    .end local v7           #xmlpullparser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_2
    move-exception v2

    .line 290
    .local v2, e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_2
    :try_start_4
    const-string v8, "OppoThemeZipFile"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "XmlPullParserException happened when loadThemeValues, msg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 294
    if-eqz v0, :cond_4

    .line 295
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 303
    .end local v2           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_4
    :goto_3
    if-eqz v4, :cond_0

    .line 304
    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    .line 306
    :catch_3
    move-exception v2

    .line 307
    .local v2, e:Ljava/io/IOException;
    const-string v8, "OppoThemeZipFile"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "in IOException happened when loadThemeValues, msg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 297
    .local v2, e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_4
    move-exception v2

    .line 298
    .local v2, e:Ljava/io/IOException;
    const-string v8, "OppoThemeZipFile"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bufferedinputstream IOException happened when loadThemeValues, msg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 293
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 294
    :goto_4
    if-eqz v0, :cond_5

    .line 295
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 303
    :cond_5
    :goto_5
    if-eqz v4, :cond_6

    .line 304
    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 308
    :cond_6
    :goto_6
    throw v8

    .line 297
    :catch_5
    move-exception v2

    .line 298
    .restart local v2       #e:Ljava/io/IOException;
    const-string v9, "OppoThemeZipFile"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bufferedinputstream IOException happened when loadThemeValues, msg = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 306
    .end local v2           #e:Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 307
    .restart local v2       #e:Ljava/io/IOException;
    const-string v9, "OppoThemeZipFile"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "in IOException happened when loadThemeValues, msg = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 293
    .end local v0           #bufferedinputstream:Ljava/io/BufferedInputStream;
    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #bufferedinputstream:Ljava/io/BufferedInputStream;
    .restart local v7       #xmlpullparser:Lorg/xmlpull/v1/XmlPullParser;
    :catchall_1
    move-exception v8

    move-object v0, v1

    .end local v1           #bufferedinputstream:Ljava/io/BufferedInputStream;
    .restart local v0       #bufferedinputstream:Ljava/io/BufferedInputStream;
    goto :goto_4

    .line 289
    .end local v0           #bufferedinputstream:Ljava/io/BufferedInputStream;
    .restart local v1       #bufferedinputstream:Ljava/io/BufferedInputStream;
    :catch_7
    move-exception v2

    move-object v0, v1

    .end local v1           #bufferedinputstream:Ljava/io/BufferedInputStream;
    .restart local v0       #bufferedinputstream:Ljava/io/BufferedInputStream;
    goto/16 :goto_2
.end method

.method private mergeThemeValues(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 14
    .parameter "xmlpullparser"

    .prologue
    .line 313
    const/4 v6, 0x0

    .line 314
    .local v6, packageName:Ljava/lang/String;
    const/4 v8, 0x0

    .line 318
    .local v8, resourceName:Ljava/lang/String;
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    .line 319
    .local v3, eventType:I
    :goto_0
    const/4 v11, 0x1

    if-eq v3, v11, :cond_5

    .line 320
    packed-switch v3, :pswitch_data_0

    .line 392
    :cond_0
    :goto_1
    :pswitch_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    goto :goto_0

    .line 324
    :pswitch_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 325
    .local v9, resourceType:Ljava/lang/String;
    if-eqz v9, :cond_0

    .line 329
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    .line 330
    .local v1, count:I
    if-lez v1, :cond_0

    .line 331
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    if-ge v4, v1, :cond_3

    .line 332
    invoke-interface {p1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 333
    .local v0, attributeName:Ljava/lang/String;
    const-string v11, "name"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 334
    invoke-interface {p1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    .line 331
    :cond_1
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 335
    :cond_2
    const-string v11, "package"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 336
    invoke-interface {p1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 340
    .end local v0           #attributeName:Ljava/lang/String;
    :cond_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v10

    .line 341
    .local v10, resourceValue:Ljava/lang/String;
    if-eqz v8, :cond_0

    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_0

    .line 343
    if-nez v6, :cond_4

    .line 344
    iget-object v6, p0, Loppo/content/res/OppoThemeZipFile;->mPackageName:Ljava/lang/String;

    .line 345
    :cond_4
    iget-object v11, p0, Loppo/content/res/OppoThemeZipFile;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v11, v8, v9, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 348
    .local v7, resourceId:I
    if-gtz v7, :cond_6

    .line 403
    .end local v1           #count:I
    .end local v3           #eventType:I
    .end local v4           #i:I
    .end local v7           #resourceId:I
    .end local v9           #resourceType:Ljava/lang/String;
    .end local v10           #resourceValue:Ljava/lang/String;
    :cond_5
    :goto_4
    return-void

    .line 352
    .restart local v1       #count:I
    .restart local v3       #eventType:I
    .restart local v4       #i:I
    .restart local v7       #resourceId:I
    .restart local v9       #resourceType:Ljava/lang/String;
    .restart local v10       #resourceValue:Ljava/lang/String;
    :cond_6
    const-string v11, "bool"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a

    .line 353
    const-string v11, "color"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    const-string v11, "integer"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    const-string v11, "drawable"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 356
    :cond_7
    iget-object v11, p0, Loppo/content/res/OppoThemeZipFile;->mMetaData:Loppo/content/res/OppoThemeResources$MetaData;

    iget-boolean v11, v11, Loppo/content/res/OppoThemeResources$MetaData;->supportInt:Z

    if-eqz v11, :cond_0

    iget-object v11, p0, Loppo/content/res/OppoThemeZipFile;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v11, v7}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v11

    if-gez v11, :cond_0

    .line 358
    iget-object v11, p0, Loppo/content/res/OppoThemeZipFile;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/android/internal/util/XmlUtils;->convertValueToUnsignedInt(Ljava/lang/String;I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v7, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_1

    .line 394
    .end local v1           #count:I
    .end local v3           #eventType:I
    .end local v4           #i:I
    .end local v7           #resourceId:I
    .end local v9           #resourceType:Ljava/lang/String;
    .end local v10           #resourceValue:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 395
    .local v2, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v11, "OppoThemeZipFile"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mergeThemeValues XmlPullParserException happened when loadThemeValues, msg = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 362
    .end local v2           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v1       #count:I
    .restart local v3       #eventType:I
    .restart local v4       #i:I
    .restart local v7       #resourceId:I
    .restart local v9       #resourceType:Ljava/lang/String;
    .restart local v10       #resourceValue:Ljava/lang/String;
    :cond_8
    :try_start_1
    const-string v11, "string"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 363
    iget-object v11, p0, Loppo/content/res/OppoThemeZipFile;->mMetaData:Loppo/content/res/OppoThemeResources$MetaData;

    iget-boolean v11, v11, Loppo/content/res/OppoThemeResources$MetaData;->supportCharSequence:Z

    if-eqz v11, :cond_0

    iget-object v11, p0, Loppo/content/res/OppoThemeZipFile;->mCharSequences:Landroid/util/SparseArray;

    invoke-virtual {v11, v7}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v11

    if-gez v11, :cond_0

    .line 365
    iget-object v11, p0, Loppo/content/res/OppoThemeZipFile;->mCharSequences:Landroid/util/SparseArray;

    invoke-virtual {v11, v7, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 398
    .end local v1           #count:I
    .end local v3           #eventType:I
    .end local v4           #i:I
    .end local v7           #resourceId:I
    .end local v9           #resourceType:Ljava/lang/String;
    .end local v10           #resourceValue:Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 399
    .local v2, e:Ljava/io/IOException;
    const-string v11, "OppoThemeZipFile"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mergeThemeValues IOException happened when loadThemeValues, msg = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 366
    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #count:I
    .restart local v3       #eventType:I
    .restart local v4       #i:I
    .restart local v7       #resourceId:I
    .restart local v9       #resourceType:Ljava/lang/String;
    .restart local v10       #resourceValue:Ljava/lang/String;
    :cond_9
    :try_start_2
    const-string v11, "dimen"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    iget-object v11, p0, Loppo/content/res/OppoThemeZipFile;->mMetaData:Loppo/content/res/OppoThemeResources$MetaData;

    iget-boolean v11, v11, Loppo/content/res/OppoThemeResources$MetaData;->supportInt:Z

    if-eqz v11, :cond_0

    iget-object v11, p0, Loppo/content/res/OppoThemeZipFile;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v11, v7}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v11

    if-gez v11, :cond_0

    .line 368
    iget-object v11, p0, Loppo/content/res/OppoThemeZipFile;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/app/OppoThemeHelper;->parseDimension(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    .line 370
    .local v5, integer:Ljava/lang/Integer;
    if-eqz v5, :cond_0

    .line 371
    iget-object v11, p0, Loppo/content/res/OppoThemeZipFile;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v11, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 374
    .end local v5           #integer:Ljava/lang/Integer;
    :cond_a
    iget-object v11, p0, Loppo/content/res/OppoThemeZipFile;->mMetaData:Loppo/content/res/OppoThemeResources$MetaData;

    iget-boolean v11, v11, Loppo/content/res/OppoThemeResources$MetaData;->supportInt:Z

    if-eqz v11, :cond_0

    iget-object v11, p0, Loppo/content/res/OppoThemeZipFile;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v11, v7}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v11

    if-gez v11, :cond_0

    .line 375
    const-string v11, "true"

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_b

    .line 376
    iget-object v11, p0, Loppo/content/res/OppoThemeZipFile;->mIntegers:Landroid/util/SparseArray;

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v7, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 378
    :cond_b
    iget-object v11, p0, Loppo/content/res/OppoThemeZipFile;->mIntegers:Landroid/util/SparseArray;

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v7, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 320
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private openZipFile()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 256
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Loppo/content/res/OppoThemeZipFile;->mPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 257
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 258
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    iput-wide v2, p0, Loppo/content/res/OppoThemeZipFile;->mLastModifyTime:J

    .line 259
    iget-wide v2, p0, Loppo/content/res/OppoThemeZipFile;->mLastModifyTime:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 261
    :try_start_0
    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-direct {v2, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Loppo/content/res/OppoThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 262
    :catch_0
    move-exception v0

    .line 263
    .local v0, exception:Ljava/lang/Exception;
    iput-object v6, p0, Loppo/content/res/OppoThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    goto :goto_0

    .line 267
    .end local v0           #exception:Ljava/lang/Exception;
    :cond_1
    iput-object v6, p0, Loppo/content/res/OppoThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    goto :goto_0
.end method


# virtual methods
.method public checkUpdate()Z
    .locals 5

    .prologue
    .line 243
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Loppo/content/res/OppoThemeZipFile;->mPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    .line 244
    .local v1, l:J
    iget-wide v3, p0, Loppo/content/res/OppoThemeZipFile;->mLastModifyTime:J

    cmp-long v3, v3, v1

    if-nez v3, :cond_0

    .line 245
    const/4 v0, 0x0

    .line 252
    .local v0, flag:Z
    :goto_0
    return v0

    .line 247
    .end local v0           #flag:Z
    :cond_0
    invoke-direct {p0}, Loppo/content/res/OppoThemeZipFile;->clean()V

    .line 248
    invoke-direct {p0}, Loppo/content/res/OppoThemeZipFile;->openZipFile()V

    .line 249
    invoke-direct {p0}, Loppo/content/res/OppoThemeZipFile;->loadThemeValues()V

    .line 250
    const/4 v0, 0x1

    .restart local v0       #flag:Z
    goto :goto_0
.end method

.method public containsEntry(Ljava/lang/String;)Z
    .locals 2
    .parameter "s"

    .prologue
    .line 406
    const/4 v0, 0x0

    .line 407
    .local v0, flag:Z
    invoke-direct {p0}, Loppo/content/res/OppoThemeZipFile;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Loppo/content/res/OppoThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v1, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 408
    const/4 v0, 0x1

    .line 412
    :goto_0
    return v0

    .line 410
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public exists()Z
    .locals 2

    .prologue
    .line 416
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Loppo/content/res/OppoThemeZipFile;->mPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public getInputStream(Ljava/lang/String;)Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    .locals 2
    .parameter "path"

    .prologue
    .line 126
    iget-object v1, p0, Loppo/content/res/OppoThemeZipFile;->mMetaData:Loppo/content/res/OppoThemeResources$MetaData;

    iget-boolean v1, v1, Loppo/content/res/OppoThemeResources$MetaData;->supportFile:Z

    if-eqz v1, :cond_0

    .line 127
    invoke-direct {p0, p1}, Loppo/content/res/OppoThemeZipFile;->getInputStreamInner(Ljava/lang/String;)Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;

    move-result-object v0

    .line 131
    .local v0, themeFileInfo:Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    :goto_0
    return-object v0

    .line 129
    .end local v0           #themeFileInfo:Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #themeFileInfo:Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    goto :goto_0
.end method

.method public getThemeCharSequence(I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "i"

    .prologue
    .line 224
    iget-object v0, p0, Loppo/content/res/OppoThemeZipFile;->mCharSequences:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getThemeInt(I)Ljava/lang/Integer;
    .locals 1
    .parameter "id"

    .prologue
    .line 228
    iget-object v0, p0, Loppo/content/res/OppoThemeZipFile;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public hasValues()Z
    .locals 2

    .prologue
    .line 233
    iget-object v1, p0, Loppo/content/res/OppoThemeZipFile;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-gtz v1, :cond_0

    iget-object v1, p0, Loppo/content/res/OppoThemeZipFile;->mCharSequences:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 234
    :cond_0
    const/4 v0, 0x1

    .line 238
    .local v0, flag:Z
    :goto_0
    return v0

    .line 236
    .end local v0           #flag:Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #flag:Z
    goto :goto_0
.end method
