.class public Lcom/android/server/OppoAlarmManagerHelper;
.super Ljava/lang/Object;
.source "OppoAlarmManagerHelper.java"


# static fields
.field private static ALIGN_INTERVAL:J = 0x0L

.field private static ALIGN_INTERVAL_FOR_BLACK:J = 0x0L

.field private static final ALIGN_TIME_FEATURE_NAME:Ljava/lang/String; = "oppo.align.time"

.field private static ALIGN_TIME_SWITCH:Z = false

.field private static final TAG:Ljava/lang/String; = "OppoAlarmManagerHelper"

.field private static mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private static final mKeyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mPkgBlackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mPkgWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mRemoveFilterPackagesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mScreenOn:Z

.field private static final mUidWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 65
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/OppoAlarmManagerHelper;->ALIGN_TIME_SWITCH:Z

    .line 68
    const-wide/32 v0, 0x493e0

    sput-wide v0, Lcom/android/server/OppoAlarmManagerHelper;->ALIGN_INTERVAL:J

    .line 71
    const-wide/32 v0, 0x1b7740

    sput-wide v0, Lcom/android/server/OppoAlarmManagerHelper;->ALIGN_INTERVAL_FOR_BLACK:J

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/OppoAlarmManagerHelper;->mUidWhiteList:Ljava/util/ArrayList;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/OppoAlarmManagerHelper;->mPkgWhiteList:Ljava/util/ArrayList;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/OppoAlarmManagerHelper;->mPkgBlackList:Ljava/util/ArrayList;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/OppoAlarmManagerHelper;->mKeyList:Ljava/util/ArrayList;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/OppoAlarmManagerHelper;->mRemoveFilterPackagesList:Ljava/util/ArrayList;

    .line 94
    new-instance v0, Lcom/android/server/OppoAlarmManagerHelper$1;

    invoke-direct {v0}, Lcom/android/server/OppoAlarmManagerHelper$1;-><init>()V

    sput-object v0, Lcom/android/server/OppoAlarmManagerHelper;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static IsPackageInBlackList(Landroid/app/PendingIntent;)Z
    .locals 4
    .parameter "operation"

    .prologue
    const/4 v1, 0x0

    .line 325
    const/4 v0, 0x0

    .line 326
    .local v0, pkgName:Ljava/lang/String;
    if-nez p0, :cond_1

    .line 337
    :cond_0
    :goto_0
    return v1

    .line 330
    :cond_1
    invoke-virtual {p0}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v0

    .line 331
    if-eqz v0, :cond_0

    .line 332
    invoke-static {v0}, Lcom/android/server/OppoAlarmManagerHelper;->inPackageNameBlackList(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 333
    const-string v1, "OppoAlarmManagerHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inPackageNameBlackList! need align time pkg == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static IsPkgTopActivity(Ljava/lang/String;)Z
    .locals 3
    .parameter "alarmPkgName"

    .prologue
    .line 281
    const/4 v1, 0x0

    .line 284
    .local v1, topPkgName:Ljava/lang/String;
    :try_start_0
    new-instance v2, Landroid/app/OppoActivityManager;

    invoke-direct {v2}, Landroid/app/OppoActivityManager;-><init>()V

    invoke-virtual {v2}, Landroid/app/OppoActivityManager;->getTopActivityComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 290
    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 294
    const/4 v2, 0x1

    .line 297
    :goto_1
    return v2

    .line 286
    :catch_0
    move-exception v0

    .line 287
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 297
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static ParsePackageXml()V
    .locals 13

    .prologue
    .line 374
    new-instance v7, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v10

    const-string v11, "etc/alarm_filter_packages.xml"

    invoke-direct {v7, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 377
    .local v7, permFile:Ljava/io/File;
    const/4 v8, 0x0

    .line 379
    .local v8, permReader:Ljava/io/FileReader;
    :try_start_0
    new-instance v9, Ljava/io/FileReader;

    invoke-direct {v9, v7}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    .end local v8           #permReader:Ljava/io/FileReader;
    .local v9, permReader:Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 387
    .local v6, parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v6, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 389
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    .line 390
    .local v5, eventType:I
    :goto_0
    const/4 v10, 0x1

    if-eq v5, v10, :cond_9

    .line 391
    packed-switch v5, :pswitch_data_0

    .line 430
    :cond_0
    :goto_1
    :pswitch_0
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v5

    goto :goto_0

    .line 380
    .end local v5           #eventType:I
    .end local v6           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v9           #permReader:Ljava/io/FileReader;
    .restart local v8       #permReader:Ljava/io/FileReader;
    :catch_0
    move-exception v4

    .line 381
    .local v4, e:Ljava/io/FileNotFoundException;
    const-string v10, "OppoAlarmManagerHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Couldn\'t find or open alarm_filter_packages file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    .end local v4           #e:Ljava/io/FileNotFoundException;
    :goto_2
    return-void

    .line 396
    .end local v8           #permReader:Ljava/io/FileReader;
    .restart local v5       #eventType:I
    .restart local v6       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v9       #permReader:Ljava/io/FileReader;
    :pswitch_1
    :try_start_2
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "UidWhiteArray"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 397
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .line 398
    sget-object v10, Lcom/android/server/OppoAlarmManagerHelper;->mUidWhiteList:Ljava/util/ArrayList;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 432
    .end local v5           #eventType:I
    .end local v6           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_1
    move-exception v4

    .line 433
    .local v4, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_3
    const-string v10, "OppoAlarmManagerHelper"

    const-string v11, "Got execption parsing permissions."

    invoke-static {v10, v11, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 438
    if-eqz v9, :cond_1

    .line 439
    :try_start_4
    invoke-virtual {v9}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .end local v4           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_1
    :goto_3
    move-object v8, v9

    .line 445
    .end local v9           #permReader:Ljava/io/FileReader;
    .restart local v8       #permReader:Ljava/io/FileReader;
    goto :goto_2

    .line 399
    .end local v8           #permReader:Ljava/io/FileReader;
    .restart local v5       #eventType:I
    .restart local v6       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v9       #permReader:Ljava/io/FileReader;
    :cond_2
    :try_start_5
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "PkgWhiteArray"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 400
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .line 401
    sget-object v10, Lcom/android/server/OppoAlarmManagerHelper;->mPkgWhiteList:Ljava/util/ArrayList;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 434
    .end local v5           #eventType:I
    .end local v6           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_2
    move-exception v4

    .line 435
    .local v4, e:Ljava/io/IOException;
    :try_start_6
    const-string v10, "OppoAlarmManagerHelper"

    const-string v11, "Got execption parsing permissions."

    invoke-static {v10, v11, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 438
    if-eqz v9, :cond_1

    .line 439
    :try_start_7
    invoke-virtual {v9}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_3

    .line 441
    :catch_3
    move-exception v4

    .line 442
    const-string v10, "OppoAlarmManagerHelper"

    const-string v11, "Got execption close permReader."

    invoke-static {v10, v11, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 402
    .end local v4           #e:Ljava/io/IOException;
    .restart local v5       #eventType:I
    .restart local v6       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_3
    :try_start_8
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "PkgBlackArray"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 403
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .line 404
    sget-object v10, Lcom/android/server/OppoAlarmManagerHelper;->mPkgBlackList:Ljava/util/ArrayList;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_1

    .line 437
    .end local v5           #eventType:I
    .end local v6           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catchall_0
    move-exception v10

    .line 438
    if-eqz v9, :cond_4

    .line 439
    :try_start_9
    invoke-virtual {v9}, Ljava/io/InputStreamReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 443
    :cond_4
    :goto_4
    throw v10

    .line 405
    .restart local v5       #eventType:I
    .restart local v6       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_5
    :try_start_a
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "FilterPackagesArray"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 406
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .line 407
    sget-object v10, Lcom/android/server/OppoAlarmManagerHelper;->mRemoveFilterPackagesList:Ljava/util/ArrayList;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 408
    :cond_6
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "AlignInterval"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 409
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .line 410
    const-wide/32 v0, 0xea60

    .line 412
    .local v0, alignInterval:J
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    mul-long/2addr v0, v10

    .line 413
    sput-wide v0, Lcom/android/server/OppoAlarmManagerHelper;->ALIGN_INTERVAL:J

    goto/16 :goto_1

    .line 414
    .end local v0           #alignInterval:J
    :cond_7
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "AlignIntervalForBlack"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 415
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .line 416
    const-wide/32 v2, 0xea60

    .line 418
    .local v2, alignIntervalForBlack:J
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    mul-long/2addr v2, v10

    .line 420
    sput-wide v2, Lcom/android/server/OppoAlarmManagerHelper;->ALIGN_INTERVAL_FOR_BLACK:J

    goto/16 :goto_1

    .line 421
    .end local v2           #alignIntervalForBlack:J
    :cond_8
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "KeyArray"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 422
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .line 423
    sget-object v10, Lcom/android/server/OppoAlarmManagerHelper;->mKeyList:Ljava/util/ArrayList;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    goto/16 :goto_1

    .line 438
    :cond_9
    if-eqz v9, :cond_1

    .line 439
    :try_start_b
    invoke-virtual {v9}, Ljava/io/InputStreamReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    goto/16 :goto_3

    .line 441
    :catch_4
    move-exception v4

    .line 442
    .restart local v4       #e:Ljava/io/IOException;
    const-string v10, "OppoAlarmManagerHelper"

    const-string v11, "Got execption close permReader."

    invoke-static {v10, v11, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 441
    .end local v5           #eventType:I
    .end local v6           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .local v4, e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_5
    move-exception v4

    .line 442
    .local v4, e:Ljava/io/IOException;
    const-string v10, "OppoAlarmManagerHelper"

    const-string v11, "Got execption close permReader."

    invoke-static {v10, v11, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 441
    .end local v4           #e:Ljava/io/IOException;
    :catch_6
    move-exception v4

    .line 442
    .restart local v4       #e:Ljava/io/IOException;
    const-string v11, "OppoAlarmManagerHelper"

    const-string v12, "Got execption close permReader."

    invoke-static {v11, v12, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 391
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    sput-boolean p0, Lcom/android/server/OppoAlarmManagerHelper;->mScreenOn:Z

    return p0
.end method

.method public static alignInterval(IJLandroid/app/PendingIntent;)J
    .locals 9
    .parameter "alarmType"
    .parameter "interval"
    .parameter "operation"

    .prologue
    .line 129
    sget-boolean v6, Lcom/android/server/OppoAlarmManagerHelper;->ALIGN_TIME_SWITCH:Z

    if-nez v6, :cond_0

    move-wide v2, p1

    .line 151
    .end local p1
    .local v2, interval:J
    :goto_0
    return-wide v2

    .line 133
    .end local v2           #interval:J
    .restart local p1
    :cond_0
    invoke-static {p0, p3}, Lcom/android/server/OppoAlarmManagerHelper;->checkAlignPolicy(ILandroid/app/PendingIntent;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-wide v2, p1

    .line 134
    .end local p1
    .restart local v2       #interval:J
    goto :goto_0

    .line 137
    .end local v2           #interval:J
    .restart local p1
    :cond_1
    const-wide/16 v0, 0x0

    .line 139
    .local v0, alignInterval:J
    invoke-static {p3}, Lcom/android/server/OppoAlarmManagerHelper;->IsPackageInBlackList(Landroid/app/PendingIntent;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 140
    sget-wide v0, Lcom/android/server/OppoAlarmManagerHelper;->ALIGN_INTERVAL_FOR_BLACK:J

    .line 146
    :goto_1
    rem-long v4, p1, v0

    .line 147
    .local v4, overTime:J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-eqz v6, :cond_2

    .line 148
    sub-long v6, p1, v4

    add-long p1, v0, v6

    .line 149
    const-string v6, "OppoAlarmManagerHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "alignInterval interval == "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-wide v2, p1

    .line 151
    .end local p1
    .restart local v2       #interval:J
    goto :goto_0

    .line 142
    .end local v2           #interval:J
    .end local v4           #overTime:J
    .restart local p1
    :cond_3
    sget-wide v0, Lcom/android/server/OppoAlarmManagerHelper;->ALIGN_INTERVAL:J

    goto :goto_1
.end method

.method public static alignTriggerTime(IJLandroid/app/PendingIntent;)J
    .locals 12
    .parameter "alarmType"
    .parameter "triggerAtTime"
    .parameter "operation"

    .prologue
    .line 158
    sget-boolean v8, Lcom/android/server/OppoAlarmManagerHelper;->ALIGN_TIME_SWITCH:Z

    if-nez v8, :cond_0

    move-wide v6, p1

    .line 187
    .end local p1
    .local v6, triggerAtTime:J
    :goto_0
    return-wide v6

    .line 162
    .end local v6           #triggerAtTime:J
    .restart local p1
    :cond_0
    invoke-static {p0, p3}, Lcom/android/server/OppoAlarmManagerHelper;->checkAlignPolicy(ILandroid/app/PendingIntent;)Z

    move-result v8

    if-eqz v8, :cond_1

    move-wide v6, p1

    .line 163
    .end local p1
    .restart local v6       #triggerAtTime:J
    goto :goto_0

    .line 166
    .end local v6           #triggerAtTime:J
    .restart local p1
    :cond_1
    const-wide/16 v0, 0x0

    .line 168
    .local v0, alignInterval:J
    invoke-static {p3}, Lcom/android/server/OppoAlarmManagerHelper;->IsPackageInBlackList(Landroid/app/PendingIntent;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 169
    sget-wide v0, Lcom/android/server/OppoAlarmManagerHelper;->ALIGN_INTERVAL_FOR_BLACK:J

    .line 175
    :goto_1
    const-wide/16 v4, 0x0

    .line 176
    .local v4, startupTime:J
    const/4 v8, 0x2

    if-ne p0, v8, :cond_2

    .line 177
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long v4, v8, v10

    .line 178
    const-string v8, "OppoAlarmManagerHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "alignTriggerTime startupTime == "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_2
    add-long v8, p1, v4

    rem-long v2, v8, v0

    .line 183
    .local v2, overTime:J
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-eqz v8, :cond_3

    .line 184
    sub-long v8, p1, v2

    add-long p1, v0, v8

    .line 185
    const-string v8, "OppoAlarmManagerHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "alignTriggerTime triggerAtTime == "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-wide v6, p1

    .line 187
    .end local p1
    .restart local v6       #triggerAtTime:J
    goto :goto_0

    .line 171
    .end local v2           #overTime:J
    .end local v4           #startupTime:J
    .end local v6           #triggerAtTime:J
    .restart local p1
    :cond_4
    sget-wide v0, Lcom/android/server/OppoAlarmManagerHelper;->ALIGN_INTERVAL:J

    goto :goto_1
.end method

.method private static checkAlarm(I)Z
    .locals 1
    .parameter "alarmType"

    .prologue
    .line 217
    if-eqz p0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 219
    const/4 v0, 0x1

    .line 221
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static checkAlignPolicy(ILandroid/app/PendingIntent;)Z
    .locals 2
    .parameter "alarmType"
    .parameter "operation"

    .prologue
    const/4 v0, 0x1

    .line 198
    invoke-static {p0}, Lcom/android/server/OppoAlarmManagerHelper;->checkAlarm(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 210
    :cond_0
    :goto_0
    return v0

    .line 202
    :cond_1
    invoke-static {}, Lcom/android/server/OppoAlarmManagerHelper;->checkUid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 206
    invoke-static {p1}, Lcom/android/server/OppoAlarmManagerHelper;->checkPackage(Landroid/app/PendingIntent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 210
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static checkPackage(Landroid/app/PendingIntent;)Z
    .locals 6
    .parameter "operation"

    .prologue
    const/4 v3, 0x1

    .line 240
    const/4 v2, 0x0

    .line 241
    .local v2, pkgName:Ljava/lang/String;
    if-nez p0, :cond_1

    .line 274
    :cond_0
    :goto_0
    return v3

    .line 245
    :cond_1
    invoke-virtual {p0}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v2

    .line 246
    if-eqz v2, :cond_5

    .line 248
    sget-boolean v4, Lcom/android/server/OppoAlarmManagerHelper;->mScreenOn:Z

    if-eqz v4, :cond_2

    invoke-static {v2}, Lcom/android/server/OppoAlarmManagerHelper;->IsPkgTopActivity(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 253
    :cond_2
    invoke-static {v2}, Lcom/android/server/OppoAlarmManagerHelper;->inPackageNameWhiteList(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 259
    sget-object v4, Lcom/android/server/OppoAlarmManagerHelper;->mKeyList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 260
    .local v1, key:Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    .line 272
    .end local v1           #key:Ljava/lang/String;
    :cond_4
    const-string v3, "OppoAlarmManagerHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkPackage need align time pkg == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_5
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static checkSystemApp(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)Z
    .locals 5
    .parameter "pms"
    .parameter "pkgName"

    .prologue
    const/4 v1, 0x0

    .line 304
    const/4 v0, 0x0

    .line 305
    .local v0, pkgInfo:Landroid/content/pm/PackageInfo;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/pm/PackageManagerService;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 307
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v2, :cond_2

    .line 308
    :cond_0
    const-string v2, "OppoAlarmManagerHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not exits!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_1
    :goto_0
    return v1

    .line 312
    :cond_2
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 313
    invoke-static {p1}, Lcom/android/server/OppoAlarmManagerHelper;->inPackageNameBlackList(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 316
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static checkUid()Z
    .locals 2

    .prologue
    .line 228
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 229
    .local v0, uid:I
    invoke-static {v0}, Lcom/android/server/OppoAlarmManagerHelper;->inUidWhiteList(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    const/4 v1, 0x1

    .line 233
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static inPackageNameBlackList(Ljava/lang/String;)Z
    .locals 1
    .parameter "pkgName"

    .prologue
    .line 354
    sget-object v0, Lcom/android/server/OppoAlarmManagerHelper;->mPkgBlackList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    if-nez p0, :cond_1

    .line 355
    :cond_0
    const/4 v0, 0x0

    .line 357
    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/android/server/OppoAlarmManagerHelper;->mPkgBlackList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private static inPackageNameWhiteList(Ljava/lang/String;)Z
    .locals 1
    .parameter "pkgName"

    .prologue
    .line 344
    sget-object v0, Lcom/android/server/OppoAlarmManagerHelper;->mPkgWhiteList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    if-nez p0, :cond_1

    .line 345
    :cond_0
    const/4 v0, 0x0

    .line 347
    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/android/server/OppoAlarmManagerHelper;->mPkgWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private static inUidWhiteList(I)Z
    .locals 2
    .parameter "uid"

    .prologue
    .line 364
    sget-object v0, Lcom/android/server/OppoAlarmManagerHelper;->mUidWhiteList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 365
    const/4 v0, 0x0

    .line 367
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/android/server/OppoAlarmManagerHelper;->mUidWhiteList:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 111
    invoke-static {}, Lcom/android/server/OppoAlarmManagerHelper;->ParsePackageXml()V

    .line 113
    const-string v2, "package"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageManagerService;

    .line 114
    .local v1, pms:Lcom/android/server/pm/PackageManagerService;
    const-string v2, "oppo.align.time"

    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageManagerService;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    const-string v2, "OppoAlarmManagerHelper"

    const-string v3, "OppoAlarmManagerHelper init hasSystemFeature oppo.align.time"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/server/OppoAlarmManagerHelper;->ALIGN_TIME_SWITCH:Z

    .line 118
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 119
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 121
    sget-object v2, Lcom/android/server/OppoAlarmManagerHelper;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 123
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public static isFilterRemovePackage(Ljava/lang/String;)Z
    .locals 1
    .parameter "pkg"

    .prologue
    .line 451
    sget-object v0, Lcom/android/server/OppoAlarmManagerHelper;->mRemoveFilterPackagesList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
