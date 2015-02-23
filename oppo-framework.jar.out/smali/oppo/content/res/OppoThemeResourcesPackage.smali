.class public Loppo/content/res/OppoThemeResourcesPackage;
.super Loppo/content/res/OppoThemeResources;
.source "OppoThemeResourcesPackage.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OppoThemeResourcesPackage"

.field private static final sPackageResources:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Loppo/content/res/OppoThemeResourcesPackage;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Loppo/content/res/OppoThemeResourcesPackage;->sPackageResources:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Loppo/content/res/OppoThemeResourcesPackage;Landroid/content/res/Resources;Ljava/lang/String;Loppo/content/res/OppoThemeResources$MetaData;)V
    .locals 1
    .parameter "themeResourcesPackage"
    .parameter "resources"
    .parameter "name"
    .parameter "metaData"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Loppo/content/res/OppoThemeResources;-><init>(Loppo/content/res/OppoThemeResources;Landroid/content/res/Resources;Ljava/lang/String;Loppo/content/res/OppoThemeResources$MetaData;)V

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Loppo/content/res/OppoThemeResourcesPackage;->DEBUG:Z

    .line 38
    return-void
.end method

.method public static getThemeResources(Landroid/content/res/Resources;Ljava/lang/String;)Loppo/content/res/OppoThemeResourcesPackage;
    .locals 5
    .parameter "resources"
    .parameter "packageName"

    .prologue
    .line 42
    const/4 v1, 0x0

    .line 43
    .local v1, themeResourcesPackage:Loppo/content/res/OppoThemeResourcesPackage;
    sget-object v3, Loppo/content/res/OppoThemeResourcesPackage;->sPackageResources:Ljava/util/Map;

    monitor-enter v3

    .line 44
    :try_start_0
    sget-object v2, Loppo/content/res/OppoThemeResourcesPackage;->sPackageResources:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 45
    sget-object v2, Loppo/content/res/OppoThemeResourcesPackage;->sPackageResources:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Loppo/content/res/OppoThemeResourcesPackage;

    move-object v1, v0

    .line 49
    :cond_0
    if-nez v1, :cond_1

    .line 50
    invoke-static {p0, p1}, Loppo/content/res/OppoThemeResourcesPackage;->getTopLevelThemeResources(Landroid/content/res/Resources;Ljava/lang/String;)Loppo/content/res/OppoThemeResourcesPackage;

    move-result-object v1

    .line 51
    sget-object v2, Loppo/content/res/OppoThemeResourcesPackage;->sPackageResources:Ljava/util/Map;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_1
    monitor-exit v3

    .line 54
    return-object v1

    .line 53
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static getTopLevelThemeResources(Landroid/content/res/Resources;Ljava/lang/String;)Loppo/content/res/OppoThemeResourcesPackage;
    .locals 4
    .parameter "resources"
    .parameter "pathName"

    .prologue
    .line 59
    const/4 v1, 0x0

    .line 60
    .local v1, themeResourcesPackage:Loppo/content/res/OppoThemeResourcesPackage;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v3, Loppo/content/res/OppoThemeResourcesPackage;->THEME_PATHS:[Loppo/content/res/OppoThemeResources$MetaData;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 61
    new-instance v2, Loppo/content/res/OppoThemeResourcesPackage;

    sget-object v3, Loppo/content/res/OppoThemeResourcesPackage;->THEME_PATHS:[Loppo/content/res/OppoThemeResources$MetaData;

    aget-object v3, v3, v0

    invoke-direct {v2, v1, p0, p1, v3}, Loppo/content/res/OppoThemeResourcesPackage;-><init>(Loppo/content/res/OppoThemeResourcesPackage;Landroid/content/res/Resources;Ljava/lang/String;Loppo/content/res/OppoThemeResources$MetaData;)V

    .line 60
    .end local v1           #themeResourcesPackage:Loppo/content/res/OppoThemeResourcesPackage;
    .local v2, themeResourcesPackage:Loppo/content/res/OppoThemeResourcesPackage;
    add-int/lit8 v0, v0, 0x1

    move-object v1, v2

    .end local v2           #themeResourcesPackage:Loppo/content/res/OppoThemeResourcesPackage;
    .restart local v1       #themeResourcesPackage:Loppo/content/res/OppoThemeResourcesPackage;
    goto :goto_0

    .line 65
    :cond_0
    return-object v1
.end method


# virtual methods
.method public getThemeCharSequence(I)Ljava/lang/CharSequence;
    .locals 2
    .parameter "id"

    .prologue
    .line 69
    const/4 v0, 0x0

    .line 70
    .local v0, res:Ljava/lang/CharSequence;
    invoke-super {p0, p1}, Loppo/content/res/OppoThemeResources;->getThemeCharSequence(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 71
    if-nez v0, :cond_0

    .line 72
    invoke-static {}, Loppo/content/res/OppoThemeResourcesPackage;->getSystem()Loppo/content/res/OppoThemeResourcesSystem;

    move-result-object v1

    invoke-virtual {v1, p1}, Loppo/content/res/OppoThemeResourcesSystem;->getThemeCharSequence(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 74
    :cond_0
    return-object v0
.end method

.method public getThemeFileStream(ILjava/lang/String;)Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    .locals 3
    .parameter "index"
    .parameter "path"

    .prologue
    .line 78
    const/4 v0, 0x0

    .line 79
    .local v0, themeFileInfo:Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    const/4 v2, 0x1

    if-ne v2, p1, :cond_0

    .line 80
    invoke-static {}, Loppo/content/res/OppoThemeResourcesPackage;->getSystem()Loppo/content/res/OppoThemeResourcesSystem;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Loppo/content/res/OppoThemeResourcesSystem;->getThemeFileStream(ILjava/lang/String;)Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;

    move-result-object v0

    move-object v1, v0

    .line 89
    .end local v0           #themeFileInfo:Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    .local v1, themeFileInfo:Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    :goto_0
    return-object v1

    .line 83
    .end local v1           #themeFileInfo:Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    .restart local v0       #themeFileInfo:Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    :cond_0
    const/4 v2, 0x2

    if-ne v2, p1, :cond_1

    .line 84
    invoke-static {}, Loppo/content/res/OppoThemeResourcesPackage;->getSystem()Loppo/content/res/OppoThemeResourcesSystem;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Loppo/content/res/OppoThemeResourcesSystem;->getThemeFileStream(ILjava/lang/String;)Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;

    move-result-object v0

    move-object v1, v0

    .line 85
    .end local v0           #themeFileInfo:Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    .restart local v1       #themeFileInfo:Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    goto :goto_0

    .line 87
    .end local v1           #themeFileInfo:Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    .restart local v0       #themeFileInfo:Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    :cond_1
    invoke-virtual {p0, p2}, Loppo/content/res/OppoThemeResources;->getThemeFileStream(Ljava/lang/String;)Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;

    move-result-object v0

    move-object v1, v0

    .line 89
    .end local v0           #themeFileInfo:Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    .restart local v1       #themeFileInfo:Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    goto :goto_0
.end method

.method public getThemeInt(I)Ljava/lang/Integer;
    .locals 2
    .parameter "id"

    .prologue
    .line 93
    const/4 v0, 0x0

    .line 94
    .local v0, res:Ljava/lang/Integer;
    invoke-super {p0, p1}, Loppo/content/res/OppoThemeResources;->getThemeInt(I)Ljava/lang/Integer;

    move-result-object v0

    .line 95
    if-nez v0, :cond_0

    .line 96
    invoke-static {}, Loppo/content/res/OppoThemeResourcesPackage;->getSystem()Loppo/content/res/OppoThemeResourcesSystem;

    move-result-object v1

    invoke-virtual {v1, p1}, Loppo/content/res/OppoThemeResourcesSystem;->getThemeInt(I)Ljava/lang/Integer;

    move-result-object v0

    .line 98
    :cond_0
    return-object v0
.end method

.method public hasValues()Z
    .locals 2

    .prologue
    .line 102
    const/4 v0, 0x0

    .line 103
    .local v0, flage:Z
    invoke-super {p0}, Loppo/content/res/OppoThemeResources;->hasValues()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Loppo/content/res/OppoThemeResourcesPackage;->getSystem()Loppo/content/res/OppoThemeResourcesSystem;

    move-result-object v1

    invoke-virtual {v1}, Loppo/content/res/OppoThemeResourcesSystem;->hasValues()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    :cond_0
    const/4 v0, 0x1

    .line 108
    :goto_0
    return v0

    .line 106
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
