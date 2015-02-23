.class public Landroid/app/OppoThemeHelper;
.super Ljava/lang/Object;
.source "OppoThemeHelper.java"


# static fields
.field private static final COMPLEX_UNIT_DIP:I = 0x1

.field private static final COMPLEX_UNIT_PX:I = 0x0

.field private static final COMPLEX_UNIT_SP:I = 0x2

.field private static final TAG:Ljava/lang/String; = "OppoThemeHelper"

.field private static hasInit:Z


# instance fields
.field private final debug:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/OppoThemeHelper;->hasInit:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/OppoThemeHelper;->debug:Z

    .line 53
    return-void
.end method

.method public static getDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageItemInfo;Z)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "packagemanager"
    .parameter "packageName"
    .parameter "id"
    .parameter "applicationinfo"
    .parameter "packageiteminfo"
    .parameter "flag"

    .prologue
    .line 72
    const/4 v0, 0x0

    .line 73
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz p5, :cond_0

    if-nez p4, :cond_1

    .line 74
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 79
    :goto_0
    return-object v0

    .line 76
    :cond_1
    iget-object v1, p4, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-static {p0, p1, p2, p3, v1}, Landroid/app/OppoThemeHelper;->getDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public static declared-synchronized getDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 20
    .parameter "packagemanager"
    .parameter "packageName"
    .parameter "id"
    .parameter "applicationinfo"
    .parameter "name"

    .prologue
    .line 84
    const-class v18, Landroid/app/OppoThemeHelper;

    monitor-enter v18

    :try_start_0
    new-instance v12, Landroid/app/ApplicationPackageManager$ResourceName;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-direct {v12, v0, v1}, Landroid/app/ApplicationPackageManager$ResourceName;-><init>(Ljava/lang/String;I)V

    .line 85
    .local v12, rName:Landroid/app/ApplicationPackageManager$ResourceName;
    move-object/from16 v0, p0

    check-cast v0, Landroid/app/ApplicationPackageManager;

    move-object/from16 v17, v0

    invoke-static {v12}, Landroid/app/ApplicationPackageManager;->getCachedIcon(Landroid/app/ApplicationPackageManager$ResourceName;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 86
    .local v3, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    move-object/from16 v17, v3

    .line 174
    .end local p0
    :goto_0
    monitor-exit v18

    return-object v17

    .line 89
    .restart local p0
    :cond_0
    const/4 v11, 0x1

    .line 90
    .local v11, parseSucceed:Z
    if-nez p3, :cond_1

    .line 92
    const/16 v17, 0x0

    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object p3

    .line 111
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v13

    .line 112
    .local v13, res:Landroid/content/res/Resources;
    if-eqz v13, :cond_7

    invoke-virtual {v13}, Landroid/content/res/Resources;->getThemeChanged()Z

    move-result v17

    if-eqz v17, :cond_7

    .line 113
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->setIsThemeChanged(Z)V

    .line 114
    invoke-static {v13}, Lcom/oppo/theme/OppoConvertIcon;->initConvertIcon(Landroid/content/res/Resources;)V

    .line 115
    invoke-static {}, Lcom/oppo/theme/OppoAppIconInfo;->parseIconXml()Z

    move-result v11

    .line 125
    :cond_2
    :goto_1
    const/4 v10, 0x0

    .line 126
    .local v10, pString:Ljava/lang/String;
    if-eqz v13, :cond_5

    .line 127
    invoke-static/range {p3 .. p3}, Lcom/oppo/theme/OppoAppIconInfo;->isThirdPart(Landroid/content/pm/ApplicationInfo;)Z

    move-result v8

    .line 128
    .local v8, isThirdPart:Z
    if-nez v8, :cond_c

    .line 129
    move/from16 v0, p2

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v14

    .line 130
    .local v14, resName:Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15, v14}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 131
    .local v15, sB:Ljava/lang/StringBuffer;
    const-string v17, "/"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    .line 133
    .local v7, index:I
    if-ltz v7, :cond_3

    .line 134
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v19, v7, 0x1

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, ".png"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 137
    :cond_3
    if-eqz v10, :cond_b

    .line 138
    invoke-static {v10}, Lcom/oppo/theme/OppoAppIconInfo;->isThirdPartbyIconName(Ljava/lang/String;)Z

    move-result v9

    .line 140
    .local v9, isThirdPartByIconName:Z
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/oppo/theme/OppoAppIconInfo;->indexOfPackageName(Ljava/lang/String;)I

    move-result v6

    .line 142
    .local v6, iconIndex:I
    if-ltz v6, :cond_9

    invoke-static {v6}, Lcom/oppo/theme/OppoAppIconInfo;->getIconName(I)Ljava/lang/String;

    move-result-object v16

    .line 144
    .local v16, tempStr:Ljava/lang/String;
    :goto_2
    if-eqz v16, :cond_a

    if-eqz v9, :cond_a

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_a

    .line 146
    move/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v13, v0, v1}, Landroid/content/res/Resources;->loadIcon(ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 153
    .end local v6           #iconIndex:I
    .end local v9           #isThirdPartByIconName:Z
    .end local v16           #tempStr:Ljava/lang/String;
    :goto_3
    if-nez v3, :cond_4

    .line 154
    const/4 v8, 0x1

    .line 155
    invoke-virtual/range {p0 .. p3}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 160
    .end local v7           #index:I
    .end local v14           #resName:Ljava/lang/String;
    .end local v15           #sB:Ljava/lang/StringBuffer;
    :cond_4
    :goto_4
    if-nez v3, :cond_e

    .line 161
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v3

    move-object v4, v3

    .line 163
    .end local v3           #drawable:Landroid/graphics/drawable/Drawable;
    .local v4, drawable:Landroid/graphics/drawable/Drawable;
    :goto_5
    if-eqz v4, :cond_d

    if-eqz v11, :cond_d

    .line 164
    :try_start_3
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {v4, v13, v8}, Lcom/oppo/theme/OppoConvertIcon;->convertIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Z)Landroid/graphics/Bitmap;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v3, v13, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    .line 171
    .end local v4           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v8           #isThirdPart:Z
    .restart local v3       #drawable:Landroid/graphics/drawable/Drawable;
    :cond_5
    :goto_6
    if-eqz v3, :cond_6

    .line 172
    :try_start_4
    check-cast p0, Landroid/app/ApplicationPackageManager;

    .end local p0
    invoke-static {v12, v3}, Landroid/app/ApplicationPackageManager;->putCachedIcon(Landroid/app/ApplicationPackageManager$ResourceName;Landroid/graphics/drawable/Drawable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_6
    move-object/from16 v17, v3

    .line 174
    goto/16 :goto_0

    .line 93
    .end local v10           #pString:Ljava/lang/String;
    .end local v13           #res:Landroid/content/res/Resources;
    .restart local p0
    :catch_0
    move-exception v5

    .line 94
    .local v5, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 117
    .end local v5           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v13       #res:Landroid/content/res/Resources;
    :cond_7
    if-eqz v13, :cond_8

    :try_start_5
    invoke-static {}, Lcom/oppo/theme/OppoConvertIcon;->hasInit()Z

    move-result v17

    if-nez v17, :cond_8

    .line 118
    invoke-static {v13}, Lcom/oppo/theme/OppoConvertIcon;->initConvertIcon(Landroid/content/res/Resources;)V

    .line 120
    :cond_8
    invoke-static {}, Lcom/oppo/theme/OppoAppIconInfo;->getAppsNumbers()I

    move-result v17

    if-gtz v17, :cond_2

    .line 121
    invoke-static {}, Lcom/oppo/theme/OppoAppIconInfo;->parseIconXml()Z

    move-result v11

    goto/16 :goto_1

    .line 142
    .restart local v6       #iconIndex:I
    .restart local v7       #index:I
    .restart local v8       #isThirdPart:Z
    .restart local v9       #isThirdPartByIconName:Z
    .restart local v10       #pString:Ljava/lang/String;
    .restart local v14       #resName:Ljava/lang/String;
    .restart local v15       #sB:Ljava/lang/StringBuffer;
    :cond_9
    const/16 v16, 0x0

    goto :goto_2

    .line 148
    .restart local v16       #tempStr:Ljava/lang/String;
    :cond_a
    move/from16 v0, p2

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->loadIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_3

    .line 151
    .end local v6           #iconIndex:I
    .end local v9           #isThirdPartByIconName:Z
    .end local v16           #tempStr:Ljava/lang/String;
    :cond_b
    move/from16 v0, p2

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->loadIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_3

    .line 158
    .end local v7           #index:I
    .end local v14           #resName:Ljava/lang/String;
    .end local v15           #sB:Ljava/lang/StringBuffer;
    :cond_c
    invoke-virtual/range {p0 .. p3}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v3

    goto :goto_4

    .line 168
    .end local v8           #isThirdPart:Z
    .end local v10           #pString:Ljava/lang/String;
    .end local v13           #res:Landroid/content/res/Resources;
    :catch_1
    move-exception v5

    .line 169
    .restart local v5       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_7
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 84
    .end local v3           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v5           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v11           #parseSucceed:Z
    .end local v12           #rName:Landroid/app/ApplicationPackageManager$ResourceName;
    .end local p0
    :catchall_0
    move-exception v17

    monitor-exit v18

    throw v17

    .line 168
    .restart local v4       #drawable:Landroid/graphics/drawable/Drawable;
    .restart local v8       #isThirdPart:Z
    .restart local v10       #pString:Ljava/lang/String;
    .restart local v11       #parseSucceed:Z
    .restart local v12       #rName:Landroid/app/ApplicationPackageManager$ResourceName;
    .restart local v13       #res:Landroid/content/res/Resources;
    .restart local p0
    :catch_2
    move-exception v5

    move-object v3, v4

    .end local v4           #drawable:Landroid/graphics/drawable/Drawable;
    .restart local v3       #drawable:Landroid/graphics/drawable/Drawable;
    goto :goto_7

    .end local v3           #drawable:Landroid/graphics/drawable/Drawable;
    .restart local v4       #drawable:Landroid/graphics/drawable/Drawable;
    :cond_d
    move-object v3, v4

    .end local v4           #drawable:Landroid/graphics/drawable/Drawable;
    .restart local v3       #drawable:Landroid/graphics/drawable/Drawable;
    goto :goto_6

    :cond_e
    move-object v4, v3

    .end local v3           #drawable:Landroid/graphics/drawable/Drawable;
    .restart local v4       #drawable:Landroid/graphics/drawable/Drawable;
    goto :goto_5
.end method

.method public static handleExtraConfigurationChanges(I)V
    .locals 1
    .parameter "i"

    .prologue
    .line 56
    const/high16 v0, 0x800

    and-int/2addr v0, p0

    if-nez v0, :cond_0

    const/high16 v0, 0x900

    and-int/2addr v0, p0

    if-eqz v0, :cond_1

    .line 58
    :cond_0
    invoke-static {}, Landroid/graphics/Canvas;->freeCaches()V

    .line 60
    :cond_1
    return-void
.end method

.method public static handleExtraConfigurationChanges(ILandroid/content/res/Configuration;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .parameter "i"
    .parameter "configuration"
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 64
    const/high16 v0, 0x800

    and-int/2addr v0, p0

    if-nez v0, :cond_0

    const/high16 v0, 0x900

    and-int/2addr v0, p0

    if-eqz v0, :cond_1

    .line 66
    :cond_0
    invoke-static {p0}, Landroid/app/OppoThemeHelper;->handleExtraConfigurationChanges(I)V

    .line 68
    :cond_1
    return-void
.end method

.method public static isCustomizedIcon(Landroid/content/IntentFilter;)Z
    .locals 1
    .parameter "intentfilter"

    .prologue
    .line 178
    const/4 v0, 0x0

    .line 179
    .local v0, flage:Z
    return v0
.end method

.method public static parseDimension(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 7
    .parameter "res"
    .parameter "dimension"

    .prologue
    .line 187
    if-eqz p1, :cond_3

    .line 188
    const/4 v4, 0x0

    .line 189
    .local v4, numberString:Ljava/lang/String;
    const/4 v0, 0x0

    .line 190
    .local v0, complexString:Ljava/lang/String;
    const-string v5, "."

    invoke-virtual {p1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 191
    .local v2, index:I
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 192
    const/4 v5, 0x0

    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 194
    if-eqz v0, :cond_3

    if-eqz v4, :cond_3

    .line 195
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    shl-int/lit8 v1, v5, 0x8

    .line 197
    .local v1, dim:I
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 198
    .local v3, metrics:Landroid/util/DisplayMetrics;
    const-string v5, "px"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 199
    new-instance v5, Ljava/lang/Integer;

    add-int/lit8 v6, v1, 0x0

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    .line 208
    .end local v0           #complexString:Ljava/lang/String;
    .end local v1           #dim:I
    .end local v2           #index:I
    .end local v3           #metrics:Landroid/util/DisplayMetrics;
    .end local v4           #numberString:Ljava/lang/String;
    :goto_0
    return-object v5

    .line 200
    .restart local v0       #complexString:Ljava/lang/String;
    .restart local v1       #dim:I
    .restart local v2       #index:I
    .restart local v3       #metrics:Landroid/util/DisplayMetrics;
    .restart local v4       #numberString:Ljava/lang/String;
    :cond_0
    const-string v5, "dp"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "dip"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 201
    :cond_1
    new-instance v5, Ljava/lang/Integer;

    add-int/lit8 v6, v1, 0x1

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_0

    .line 202
    :cond_2
    const-string v5, "sp"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 203
    new-instance v5, Ljava/lang/Integer;

    add-int/lit8 v6, v1, 0x2

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_0

    .line 208
    .end local v0           #complexString:Ljava/lang/String;
    .end local v1           #dim:I
    .end local v2           #index:I
    .end local v3           #metrics:Landroid/util/DisplayMetrics;
    .end local v4           #numberString:Ljava/lang/String;
    :cond_3
    const/4 v5, 0x0

    goto :goto_0
.end method
