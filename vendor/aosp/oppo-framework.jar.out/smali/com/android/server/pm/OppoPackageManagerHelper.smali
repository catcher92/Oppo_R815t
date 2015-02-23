.class public Lcom/android/server/pm/OppoPackageManagerHelper;
.super Ljava/lang/Object;
.source "OppoPackageManagerHelper.java"


# static fields
.field static Pid:I = 0x0

.field static final TAG:Ljava/lang/String; = "OppoPackageManager"

.field static Uid:I

.field public static mForceToSD:Z

.field private static final mForceUnpackNativeLibList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final mOppoShareUid:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mPredexOptList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mTrustApkList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static nearmepackageflag:Ljava/lang/String;

.field private static oppopackageflag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 61
    const-string v0, "com.oppo."

    sput-object v0, Lcom/android/server/pm/OppoPackageManagerHelper;->oppopackageflag:Ljava/lang/String;

    .line 62
    const-string v0, "com.nearme."

    sput-object v0, Lcom/android/server/pm/OppoPackageManagerHelper;->nearmepackageflag:Ljava/lang/String;

    .line 63
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/pm/OppoPackageManagerHelper;->mForceToSD:Z

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/OppoPackageManagerHelper;->mPredexOptList:Ljava/util/ArrayList;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/OppoPackageManagerHelper;->mForceUnpackNativeLibList:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/OppoPackageManagerHelper;->mTrustApkList:Ljava/util/ArrayList;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/OppoPackageManagerHelper;->mOppoShareUid:Ljava/util/ArrayList;

    .line 69
    sput v1, Lcom/android/server/pm/OppoPackageManagerHelper;->Uid:I

    .line 70
    sput v1, Lcom/android/server/pm/OppoPackageManagerHelper;->Pid:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ConfirmPackageXml(Lcom/android/server/pm/Settings;)V
    .locals 1
    .parameter "mSettings"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-static {v0}, Lcom/android/server/pm/OppoPackageManagerHelper;->parsePackagesXml(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    invoke-static {v0}, Lcom/android/server/pm/OppoPackageManagerHelper;->parsePackagesXml(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 163
    :cond_1
    return-void
.end method

.method public static IsFirstBoot()V
    .locals 3

    .prologue
    .line 97
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/dalvik-cache/firstboot.flag"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 98
    .local v0, firstBootFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    const-string v1, "oppo.device.firstboot"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :goto_0
    return-void

    .line 101
    :cond_0
    const-string v1, "OppoPackageManager"

    const-string v2, "firstboot.flag NOT exists, firstboot!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const-string v1, "oppo.device.firstboot"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static IsForceUnpackNativeLibList(Ljava/lang/String;)Z
    .locals 1
    .parameter "string"

    .prologue
    .line 77
    sget-object v0, Lcom/android/server/pm/OppoPackageManagerHelper;->mForceUnpackNativeLibList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/pm/OppoPackageManagerHelper;->nearmepackageflag:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static IsGoogleMarket(II)Z
    .locals 1
    .parameter "callUid"
    .parameter "uid"

    .prologue
    .line 85
    if-ne p0, p1, :cond_0

    .line 86
    const/4 v0, 0x1

    .line 88
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static IsPredexOptList(Ljava/lang/String;)Z
    .locals 1
    .parameter "string"

    .prologue
    .line 73
    sget-object v0, Lcom/android/server/pm/OppoPackageManagerHelper;->mPredexOptList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/pm/OppoPackageManagerHelper;->oppopackageflag:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static IsShareUid(Ljava/lang/String;)Z
    .locals 1
    .parameter "string"

    .prologue
    .line 93
    sget-object v0, Lcom/android/server/pm/OppoPackageManagerHelper;->mOppoShareUid:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static IsTrustApkList(Ljava/lang/String;)Z
    .locals 1
    .parameter "string"

    .prologue
    .line 81
    sget-object v0, Lcom/android/server/pm/OppoPackageManagerHelper;->mTrustApkList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/pm/OppoPackageManagerHelper;->oppopackageflag:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static ParsePackageXml()V
    .locals 9

    .prologue
    .line 166
    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v6

    const-string v7, "etc/oppo_package.xml"

    invoke-direct {v3, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 168
    .local v3, permFile:Ljava/io/File;
    const/4 v4, 0x0

    .line 170
    .local v4, permReader:Ljava/io/FileReader;
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    .end local v4           #permReader:Ljava/io/FileReader;
    .local v5, permReader:Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 178
    .local v2, parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 180
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 181
    .local v1, eventType:I
    :goto_0
    const/4 v6, 0x1

    if-eq v1, v6, :cond_1

    .line 182
    packed-switch v1, :pswitch_data_0

    .line 205
    :cond_0
    :goto_1
    :pswitch_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v1

    goto :goto_0

    .line 171
    .end local v1           #eventType:I
    .end local v2           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v5           #permReader:Ljava/io/FileReader;
    .restart local v4       #permReader:Ljava/io/FileReader;
    :catch_0
    move-exception v0

    .line 172
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v6, "OppoPackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Couldn\'t find or open oppo_package file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :goto_2
    return-void

    .line 187
    .end local v4           #permReader:Ljava/io/FileReader;
    .restart local v1       #eventType:I
    .restart local v2       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5       #permReader:Ljava/io/FileReader;
    :pswitch_1
    :try_start_2
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "PredexOptArray"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 188
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 189
    sget-object v6, Lcom/android/server/pm/OppoPackageManagerHelper;->mPredexOptList:Ljava/util/ArrayList;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 207
    .end local v1           #eventType:I
    .end local v2           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_1
    move-exception v0

    .line 208
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v6, "OppoPackageManager"

    const-string v7, "Got execption parsing permissions."

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 214
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_1
    :goto_3
    if-eqz v5, :cond_2

    .line 215
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_2
    :goto_4
    move-object v4, v5

    .line 219
    .end local v5           #permReader:Ljava/io/FileReader;
    .restart local v4       #permReader:Ljava/io/FileReader;
    goto :goto_2

    .line 190
    .end local v4           #permReader:Ljava/io/FileReader;
    .restart local v1       #eventType:I
    .restart local v2       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5       #permReader:Ljava/io/FileReader;
    :cond_3
    :try_start_4
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "TrustApkArray"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 191
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 192
    sget-object v6, Lcom/android/server/pm/OppoPackageManagerHelper;->mTrustApkList:Ljava/util/ArrayList;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 209
    .end local v1           #eventType:I
    .end local v2           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_2
    move-exception v0

    .line 210
    .local v0, e:Ljava/io/IOException;
    const-string v6, "OppoPackageManager"

    const-string v7, "Got execption parsing permissions."

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 193
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #eventType:I
    .restart local v2       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_4
    :try_start_5
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ForceUnpackNativeLibArray"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 194
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 195
    sget-object v6, Lcom/android/server/pm/OppoPackageManagerHelper;->mForceUnpackNativeLibList:Ljava/util/ArrayList;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 196
    :cond_5
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "OppoShareUid"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 197
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 198
    sget-object v6, Lcom/android/server/pm/OppoPackageManagerHelper;->mOppoShareUid:Ljava/util/ArrayList;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_1

    .line 217
    .end local v1           #eventType:I
    .end local v2           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_3
    move-exception v6

    goto :goto_4

    .line 182
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static RestorePresetApk(Lcom/android/server/pm/Settings;Ljava/io/File;)V
    .locals 14
    .parameter "mSettings"
    .parameter "mAppInstallDir"

    .prologue
    .line 107
    new-instance v0, Ljava/io/File;

    const-string v10, "/system/reserve/"

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 108
    .local v0, OPPO_RESERVE_APK_DIR:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 109
    const-string v10, "oppo.device.firstboot"

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 110
    .local v5, firstBoot:Z
    if-eqz v5, :cond_1

    .line 111
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .local v2, arr$:[Ljava/io/File;
    array-length v8, v2

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_0
    if-ge v7, v8, :cond_0

    aget-object v1, v2, v7

    .line 113
    .local v1, apkFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    invoke-static {v10, v11}, Landroid/content/pm/PackageParser;->parsePackageLite(Ljava/lang/String;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v9

    .line 115
    .local v9, pkg:Landroid/content/pm/PackageParser$PackageLite;
    if-nez v9, :cond_2

    .line 116
    const-string v10, "OppoPackageManager"

    const-string v11, "reserve package null, error!!!"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    .end local v1           #apkFile:Ljava/io/File;
    .end local v9           #pkg:Landroid/content/pm/PackageParser$PackageLite;
    :cond_0
    new-instance v6, Ljava/io/File;

    const-string v10, "/data/dalvik-cache/firstboot.flag"

    invoke-direct {v6, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 145
    .local v6, firstBootFile:Ljava/io/File;
    :try_start_0
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 151
    .end local v2           #arr$:[Ljava/io/File;
    .end local v5           #firstBoot:Z
    .end local v6           #firstBootFile:Ljava/io/File;
    .end local v7           #i$:I
    .end local v8           #len$:I
    :cond_1
    :goto_1
    return-void

    .line 119
    .restart local v1       #apkFile:Ljava/io/File;
    .restart local v2       #arr$:[Ljava/io/File;
    .restart local v5       #firstBoot:Z
    .restart local v7       #i$:I
    .restart local v8       #len$:I
    .restart local v9       #pkg:Landroid/content/pm/PackageParser$PackageLite;
    :cond_2
    iget-object v10, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    iget-object v11, v9, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 120
    const-string v10, "OppoPackageManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "apk:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v9, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " has been installed, skip"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 122
    :cond_3
    new-instance v3, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, p1, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 123
    .local v3, destFile:Ljava/io/File;
    const-string v10, "OppoPackageManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "apk:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v9, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " has NOT been installed, copy it to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "......"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_4

    .line 128
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 130
    :cond_4
    invoke-static {v1, v3}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 131
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x1a4

    const/4 v12, -0x1

    const/4 v13, -0x1

    invoke-static {v10, v11, v12, v13}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 134
    :catch_0
    move-exception v4

    .line 135
    .local v4, ex:Ljava/io/IOException;
    const-string v10, "OppoPackageManager"

    const-string v11, "copy apk error!!!!!!!!!!"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 146
    .end local v1           #apkFile:Ljava/io/File;
    .end local v3           #destFile:Ljava/io/File;
    .end local v4           #ex:Ljava/io/IOException;
    .end local v9           #pkg:Landroid/content/pm/PackageParser$PackageLite;
    .restart local v6       #firstBootFile:Ljava/io/File;
    :catch_1
    move-exception v4

    .line 147
    .local v4, ex:Ljava/lang/Exception;
    const-string v10, "OppoPackageManager"

    const-string v11, "create firstboot flag file error!!!"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public static parsePackagesXml(Ljava/io/File;)Z
    .locals 13
    .parameter "xmlFile"

    .prologue
    const/4 v9, 0x0

    .line 222
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_0

    .line 245
    :goto_0
    return v9

    .line 226
    :cond_0
    const/4 v2, 0x0

    .line 228
    .local v2, input:Ljava/io/InputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    .end local v2           #input:Ljava/io/InputStream;
    .local v3, input:Ljava/io/InputStream;
    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v5

    .line 230
    .local v5, spf:Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v5}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v4

    .line 231
    .local v4, saxParser:Ljavax/xml/parsers/SAXParser;
    new-instance v10, Lorg/xml/sax/helpers/DefaultHandler;

    invoke-direct {v10}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    invoke-virtual {v4, v3, v10}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 232
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 233
    const/4 v9, 0x1

    goto :goto_0

    .line 234
    .end local v3           #input:Ljava/io/InputStream;
    .end local v4           #saxParser:Ljavax/xml/parsers/SAXParser;
    .end local v5           #spf:Ljavax/xml/parsers/SAXParserFactory;
    .restart local v2       #input:Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 235
    .local v1, ex:Ljava/lang/Exception;
    :goto_1
    const-string v10, "OppoPackageManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "parse "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " error!!!!!!!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 238
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 239
    .local v6, t:J
    new-instance v8, Landroid/text/format/Time;

    invoke-direct {v8}, Landroid/text/format/Time;-><init>()V

    .line 240
    .local v8, time:Landroid/text/format/Time;
    invoke-virtual {v8, v6, v7}, Landroid/text/format/Time;->set(J)V

    .line 241
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "/data/packages-error_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".xml"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, errFile:Ljava/lang/String;
    const-string v10, "OppoPackageManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "copyFile:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v10}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    goto/16 :goto_0

    .line 234
    .end local v0           #errFile:Ljava/lang/String;
    .end local v1           #ex:Ljava/lang/Exception;
    .end local v2           #input:Ljava/io/InputStream;
    .end local v6           #t:J
    .end local v8           #time:Landroid/text/format/Time;
    .restart local v3       #input:Ljava/io/InputStream;
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3           #input:Ljava/io/InputStream;
    .restart local v2       #input:Ljava/io/InputStream;
    goto :goto_1
.end method

.method public static resetDataCollection()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 255
    sput v0, Lcom/android/server/pm/OppoPackageManagerHelper;->Uid:I

    .line 256
    sput v0, Lcom/android/server/pm/OppoPackageManagerHelper;->Pid:I

    .line 257
    return-void
.end method

.method public static sendDataClearBroadcast()V
    .locals 13

    .prologue
    const/4 v9, 0x0

    .line 296
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 297
    .local v0, am:Landroid/app/IActivityManager;
    const/4 v12, 0x0

    .line 298
    .local v12, finishedReceiver:Landroid/content/IIntentReceiver;
    new-instance v2, Landroid/content/Intent;

    const-string v1, "android.intent.action.DATA_COLLECT_CLEAR"

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 299
    .local v2, intent:Landroid/content/Intent;
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz v12, :cond_0

    const/4 v9, 0x1

    :cond_0
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v0 .. v11}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    .end local v2           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 301
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static sendPackageInstallBroadcast(Landroid/content/pm/ApplicationInfo;Landroid/os/Bundle;ILcom/android/server/pm/UserManagerService;)V
    .locals 18
    .parameter "info"
    .parameter "extras"
    .parameter "userId"
    .parameter "sUserManager"

    .prologue
    .line 261
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 265
    .local v1, am:Landroid/app/IActivityManager;
    if-eqz v1, :cond_3

    if-eqz p0, :cond_3

    .line 268
    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_2

    :try_start_0
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v17

    .line 270
    .local v17, userIds:[I
    :goto_0
    move-object/from16 v13, v17

    .local v13, arr$:[I
    array-length v15, v13

    .local v15, len$:I
    const/4 v14, 0x0

    .local v14, i$:I
    :goto_1
    if-ge v14, v15, :cond_3

    aget v12, v13, v14

    .line 271
    .local v12, id:I
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.OPPO_PACKAGE_ADDED"

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_4

    const-string v2, "package"

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v2, v5, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    :goto_2
    invoke-direct {v3, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 274
    .local v3, intent:Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 275
    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 278
    :cond_0
    const-string v2, "android.intent.extra.UID"

    const/4 v4, -0x1

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 279
    .local v16, uid:I
    if-lez v16, :cond_1

    if-lez v12, :cond_1

    .line 280
    invoke-static/range {v16 .. v16}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-static {v12, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v16

    .line 281
    const-string v2, "android.intent.extra.UID"

    move/from16 v0, v16

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 283
    :cond_1
    const-string v2, "UID"

    sget v4, Lcom/android/server/pm/OppoPackageManagerHelper;->Uid:I

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 284
    const-string v2, "PID"

    sget v4, Lcom/android/server/pm/OppoPackageManagerHelper;->Pid:I

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 285
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-interface/range {v1 .. v12}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZI)I

    .line 287
    invoke-static {}, Lcom/android/server/pm/OppoPackageManagerHelper;->resetDataCollection()V

    .line 270
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 268
    .end local v3           #intent:Landroid/content/Intent;
    .end local v12           #id:I
    .end local v13           #arr$:[I
    .end local v14           #i$:I
    .end local v15           #len$:I
    .end local v16           #uid:I
    .end local v17           #userIds:[I
    :cond_2
    const/4 v2, 0x1

    new-array v0, v2, [I

    move-object/from16 v17, v0

    const/4 v2, 0x0

    aput p2, v17, v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 289
    :catch_0
    move-exception v2

    .line 292
    :cond_3
    return-void

    .line 271
    .restart local v12       #id:I
    .restart local v13       #arr$:[I
    .restart local v14       #i$:I
    .restart local v15       #len$:I
    .restart local v17       #userIds:[I
    :cond_4
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public static setDataCollection()V
    .locals 1

    .prologue
    .line 250
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    sput v0, Lcom/android/server/pm/OppoPackageManagerHelper;->Uid:I

    .line 251
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    sput v0, Lcom/android/server/pm/OppoPackageManagerHelper;->Pid:I

    .line 252
    return-void
.end method
