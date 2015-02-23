.class public Lcom/oppo/os/OppoUsbEnvironment;
.super Landroid/os/Environment;
.source "OppoUsbEnvironment.java"


# static fields
.field public static final EXTERNAL:I = 0x2

.field public static final INTERNAL:I = 0x1

.field public static final NONE:I = -0x1

.field public static final OTG:I = 0x3

.field private static final TAG:Ljava/lang/String; = "OppoUsbEnvironment"

.field private static mExternalSdDir:Ljava/lang/String;

.field private static mHotPlug:Z

.field private static mInternalSdDir:Ljava/lang/String;

.field private static mStorageManager:Landroid/os/storage/StorageManager;

.field private static mSwap:Z

.field private static oneOff:Z

.field private static otgPathes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    sput-boolean v0, Lcom/oppo/os/OppoUsbEnvironment;->mSwap:Z

    .line 46
    sput-boolean v0, Lcom/oppo/os/OppoUsbEnvironment;->mHotPlug:Z

    .line 49
    const/4 v0, 0x0

    sput-object v0, Lcom/oppo/os/OppoUsbEnvironment;->otgPathes:Ljava/util/List;

    .line 52
    const/4 v0, 0x1

    sput-boolean v0, Lcom/oppo/os/OppoUsbEnvironment;->oneOff:Z

    .line 274
    invoke-static {}, Lcom/oppo/os/OppoUsbEnvironment;->parsexml()V

    .line 275
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/os/Environment;-><init>()V

    return-void
.end method

.method public static getExternalPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 172
    invoke-static {p0}, Lcom/oppo/os/OppoUsbEnvironment;->update(Landroid/content/Context;)V

    .line 173
    sget-object v0, Lcom/oppo/os/OppoUsbEnvironment;->mExternalSdDir:Ljava/lang/String;

    return-object v0
.end method

.method public static getExternalSdDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 2
    .parameter "context"

    .prologue
    .line 91
    invoke-static {p0}, Lcom/oppo/os/OppoUsbEnvironment;->update(Landroid/content/Context;)V

    .line 92
    sget-object v0, Lcom/oppo/os/OppoUsbEnvironment;->mExternalSdDir:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/oppo/os/OppoUsbEnvironment;->mExternalSdDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getExternalSdState(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 107
    invoke-static {p0}, Lcom/oppo/os/OppoUsbEnvironment;->update(Landroid/content/Context;)V

    .line 108
    sget-object v0, Lcom/oppo/os/OppoUsbEnvironment;->mExternalSdDir:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/oppo/os/OppoUsbEnvironment;->mStorageManager:Landroid/os/storage/StorageManager;

    sget-object v1, Lcom/oppo/os/OppoUsbEnvironment;->mExternalSdDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getInternalPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 167
    invoke-static {p0}, Lcom/oppo/os/OppoUsbEnvironment;->update(Landroid/content/Context;)V

    .line 168
    sget-object v0, Lcom/oppo/os/OppoUsbEnvironment;->mInternalSdDir:Ljava/lang/String;

    return-object v0
.end method

.method public static getInternalSdDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 2
    .parameter "context"

    .prologue
    .line 83
    invoke-static {p0}, Lcom/oppo/os/OppoUsbEnvironment;->update(Landroid/content/Context;)V

    .line 84
    sget-object v0, Lcom/oppo/os/OppoUsbEnvironment;->mInternalSdDir:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/oppo/os/OppoUsbEnvironment;->mInternalSdDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getInternalSdState(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 99
    invoke-static {p0}, Lcom/oppo/os/OppoUsbEnvironment;->update(Landroid/content/Context;)V

    .line 100
    sget-object v0, Lcom/oppo/os/OppoUsbEnvironment;->mInternalSdDir:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/oppo/os/OppoUsbEnvironment;->mStorageManager:Landroid/os/storage/StorageManager;

    sget-object v1, Lcom/oppo/os/OppoUsbEnvironment;->mInternalSdDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getOtgPath(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 155
    sget-object v0, Lcom/oppo/os/OppoUsbEnvironment;->otgPathes:Ljava/util/List;

    return-object v0
.end method

.method public static getPathType(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2
    .parameter "context"
    .parameter "path"

    .prologue
    const/4 v0, -0x1

    .line 177
    invoke-static {p0}, Lcom/oppo/os/OppoUsbEnvironment;->update(Landroid/content/Context;)V

    .line 178
    if-nez p1, :cond_1

    .line 191
    :cond_0
    :goto_0
    return v0

    .line 181
    :cond_1
    sget-object v1, Lcom/oppo/os/OppoUsbEnvironment;->mInternalSdDir:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 182
    const/4 v0, 0x1

    goto :goto_0

    .line 184
    :cond_2
    sget-object v1, Lcom/oppo/os/OppoUsbEnvironment;->mExternalSdDir:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 185
    const/4 v0, 0x2

    goto :goto_0

    .line 187
    :cond_3
    sget-object v1, Lcom/oppo/os/OppoUsbEnvironment;->otgPathes:Ljava/util/List;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/oppo/os/OppoUsbEnvironment;->otgPathes:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public static isExternalSDRemoved(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    .line 115
    invoke-static {p0}, Lcom/oppo/os/OppoUsbEnvironment;->update(Landroid/content/Context;)V

    .line 116
    sget-object v1, Lcom/oppo/os/OppoUsbEnvironment;->mExternalSdDir:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 125
    :cond_0
    :goto_0
    return v0

    .line 118
    :cond_1
    const-string v1, "removed"

    sget-object v2, Lcom/oppo/os/OppoUsbEnvironment;->mStorageManager:Landroid/os/storage/StorageManager;

    sget-object v3, Lcom/oppo/os/OppoUsbEnvironment;->mExternalSdDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 119
    const-string v1, "OppoUsbEnvironment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "the state of volume is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/oppo/os/OppoUsbEnvironment;->mStorageManager:Landroid/os/storage/StorageManager;

    sget-object v4, Lcom/oppo/os/OppoUsbEnvironment;->mExternalSdDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 121
    :cond_2
    const-string v1, "unmounted"

    sget-object v2, Lcom/oppo/os/OppoUsbEnvironment;->mStorageManager:Landroid/os/storage/StorageManager;

    sget-object v3, Lcom/oppo/os/OppoUsbEnvironment;->mExternalSdDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "mounted"

    sget-object v2, Lcom/oppo/os/OppoUsbEnvironment;->mStorageManager:Landroid/os/storage/StorageManager;

    sget-object v3, Lcom/oppo/os/OppoUsbEnvironment;->mInternalSdDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 125
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNestMounted()Z
    .locals 3

    .prologue
    .line 145
    const/4 v0, 0x0

    .line 146
    .local v0, result:Z
    sget-object v1, Lcom/oppo/os/OppoUsbEnvironment;->mInternalSdDir:Ljava/lang/String;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/oppo/os/OppoUsbEnvironment;->mExternalSdDir:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 147
    sget-object v1, Lcom/oppo/os/OppoUsbEnvironment;->mInternalSdDir:Ljava/lang/String;

    sget-object v2, Lcom/oppo/os/OppoUsbEnvironment;->mExternalSdDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/oppo/os/OppoUsbEnvironment;->mExternalSdDir:Ljava/lang/String;

    sget-object v2, Lcom/oppo/os/OppoUsbEnvironment;->mInternalSdDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 148
    :cond_0
    const/4 v0, 0x1

    .line 151
    :cond_1
    return v0
.end method

.method private static isSd(Ljava/lang/String;)Z
    .locals 1
    .parameter "path"

    .prologue
    .line 56
    sget-object v0, Lcom/oppo/os/OppoUsbEnvironment;->mInternalSdDir:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/oppo/os/OppoUsbEnvironment;->mExternalSdDir:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method public static isVolumeMounted(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .parameter "context"
    .parameter "path"

    .prologue
    .line 159
    invoke-static {p0}, Lcom/oppo/os/OppoUsbEnvironment;->update(Landroid/content/Context;)V

    .line 160
    if-eqz p1, :cond_0

    sget-object v0, Lcom/oppo/os/OppoUsbEnvironment;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    .line 161
    const-string v0, "mounted"

    sget-object v1, Lcom/oppo/os/OppoUsbEnvironment;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v1, p1}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 163
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static parsexml()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 196
    new-instance v2, Ljava/io/File;

    const-string v7, "/system/etc/oppo_usbsd.xml"

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 197
    .local v2, file:Ljava/io/File;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    sput-object v7, Lcom/oppo/os/OppoUsbEnvironment;->otgPathes:Ljava/util/List;

    .line 198
    const/4 v4, 0x0

    .line 200
    .local v4, reader:Ljava/io/FileReader;
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    .end local v4           #reader:Ljava/io/FileReader;
    .local v5, reader:Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 208
    .local v3, parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 210
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 211
    .local v1, eventType:I
    :goto_0
    if-eq v1, v9, :cond_2

    .line 212
    packed-switch v1, :pswitch_data_0

    .line 248
    :cond_0
    :goto_1
    :pswitch_0
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v1

    goto :goto_0

    .line 201
    .end local v1           #eventType:I
    .end local v3           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v5           #reader:Ljava/io/FileReader;
    .restart local v4       #reader:Ljava/io/FileReader;
    :catch_0
    move-exception v0

    .line 202
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v7, "OppoUsbEnvironment"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Couldn\'t find or open apk_usbsd file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :goto_2
    return-void

    .line 217
    .end local v4           #reader:Ljava/io/FileReader;
    .restart local v1       #eventType:I
    .restart local v3       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5       #reader:Ljava/io/FileReader;
    :pswitch_1
    :try_start_2
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "swap"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 218
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 219
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    .line 220
    .local v6, temp:Ljava/lang/String;
    const-string v7, "true"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "yes"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "1"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 221
    :cond_1
    const/4 v7, 0x1

    sput-boolean v7, Lcom/oppo/os/OppoUsbEnvironment;->mSwap:Z
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 250
    .end local v1           #eventType:I
    .end local v3           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v6           #temp:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 251
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v7, "OppoUsbEnvironment"

    const-string v8, "Got execption parsing permissions."

    invoke-static {v7, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 257
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_2
    :goto_3
    if-eqz v5, :cond_3

    .line 258
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_3
    :goto_4
    move-object v4, v5

    .line 262
    .end local v5           #reader:Ljava/io/FileReader;
    .restart local v4       #reader:Ljava/io/FileReader;
    goto :goto_2

    .line 224
    .end local v4           #reader:Ljava/io/FileReader;
    .restart local v1       #eventType:I
    .restart local v3       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5       #reader:Ljava/io/FileReader;
    :cond_4
    :try_start_4
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "hotplug"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 225
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 226
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    .line 227
    .restart local v6       #temp:Ljava/lang/String;
    const-string v7, "true"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "yes"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "1"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 228
    :cond_5
    const/4 v7, 0x1

    sput-boolean v7, Lcom/oppo/os/OppoUsbEnvironment;->mHotPlug:Z
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_1

    .line 252
    .end local v1           #eventType:I
    .end local v3           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v6           #temp:Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 253
    .local v0, e:Ljava/io/IOException;
    const-string v7, "OppoUsbEnvironment"

    const-string v8, "Got execption parsing permissions."

    invoke-static {v7, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 231
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #eventType:I
    .restart local v3       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_6
    :try_start_5
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "internalsd"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 232
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 233
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/oppo/os/OppoUsbEnvironment;->mInternalSdDir:Ljava/lang/String;

    goto/16 :goto_1

    .line 235
    :cond_7
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "externalsd"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 236
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 237
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/oppo/os/OppoUsbEnvironment;->mExternalSdDir:Ljava/lang/String;

    goto/16 :goto_1

    .line 239
    :cond_8
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "otgpath"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 240
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 241
    sget-object v7, Lcom/oppo/os/OppoUsbEnvironment;->otgPathes:Ljava/util/List;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_1

    .line 260
    .end local v1           #eventType:I
    .end local v3           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_3
    move-exception v7

    goto/16 :goto_4

    .line 212
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static swap()V
    .locals 2

    .prologue
    .line 265
    sget-object v1, Lcom/oppo/os/OppoUsbEnvironment;->mInternalSdDir:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/oppo/os/OppoUsbEnvironment;->mExternalSdDir:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 266
    sget-object v0, Lcom/oppo/os/OppoUsbEnvironment;->mInternalSdDir:Ljava/lang/String;

    .line 267
    .local v0, temp:Ljava/lang/String;
    sget-object v1, Lcom/oppo/os/OppoUsbEnvironment;->mExternalSdDir:Ljava/lang/String;

    sput-object v1, Lcom/oppo/os/OppoUsbEnvironment;->mInternalSdDir:Ljava/lang/String;

    .line 268
    sput-object v0, Lcom/oppo/os/OppoUsbEnvironment;->mExternalSdDir:Ljava/lang/String;

    .line 271
    :cond_0
    return-void
.end method

.method private static update(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 59
    sget-object v3, Lcom/oppo/os/OppoUsbEnvironment;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v3, :cond_0

    .line 60
    const-string v3, "storage"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManager;

    sput-object v3, Lcom/oppo/os/OppoUsbEnvironment;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 62
    :cond_0
    sget-object v3, Lcom/oppo/os/OppoUsbEnvironment;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 63
    .local v2, volumes:Ljava/util/List;,"Ljava/util/List<Landroid/os/storage/StorageVolume;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .local v1, tempList:Ljava/util/List;,"Ljava/util/List<Landroid/os/storage/StorageVolume;>;"
    if-nez v2, :cond_2

    .line 79
    :cond_1
    return-void

    .line 67
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 68
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageVolume;

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/oppo/os/OppoUsbEnvironment;->isSd(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 69
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    :cond_4
    const/4 v0, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 73
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageVolume;

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 74
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageVolume;

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/oppo/os/OppoUsbEnvironment;->mExternalSdDir:Ljava/lang/String;

    .line 72
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 76
    :cond_5
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageVolume;

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/oppo/os/OppoUsbEnvironment;->mInternalSdDir:Ljava/lang/String;

    goto :goto_2
.end method
