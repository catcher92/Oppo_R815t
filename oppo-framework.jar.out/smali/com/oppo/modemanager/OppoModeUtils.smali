.class public Lcom/oppo/modemanager/OppoModeUtils;
.super Ljava/lang/Object;
.source "OppoModeUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OppoModeUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ParseModeXml(Lcom/oppo/modemanager/Mode;)V
    .locals 10
    .parameter "mode"

    .prologue
    .line 44
    iget-object v6, p0, Lcom/oppo/modemanager/Mode;->mFilePath:Ljava/lang/String;

    .line 46
    .local v6, path:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v7

    invoke-direct {v2, v7, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 48
    .local v2, modeFile:Ljava/io/File;
    const/4 v3, 0x0

    .line 50
    .local v3, modeReader:Ljava/io/FileReader;
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .end local v3           #modeReader:Ljava/io/FileReader;
    .local v4, modeReader:Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 58
    .local v5, parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 60
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 61
    .local v1, eventType:I
    :goto_0
    const/4 v7, 0x1

    if-eq v1, v7, :cond_1

    .line 62
    packed-switch v1, :pswitch_data_0

    .line 75
    :cond_0
    :goto_1
    :pswitch_0
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v1

    goto :goto_0

    .line 51
    .end local v1           #eventType:I
    .end local v4           #modeReader:Ljava/io/FileReader;
    .end local v5           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3       #modeReader:Ljava/io/FileReader;
    :catch_0
    move-exception v0

    .line 52
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v7, "OppoModeUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Couldn\'t find or open file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :goto_2
    return-void

    .line 67
    .end local v3           #modeReader:Ljava/io/FileReader;
    .restart local v1       #eventType:I
    .restart local v4       #modeReader:Ljava/io/FileReader;
    .restart local v5       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :pswitch_1
    :try_start_2
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ModeItem"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 68
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 69
    iget-object v7, p0, Lcom/oppo/modemanager/Mode;->mPkgList:Ljava/util/ArrayList;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 77
    .end local v1           #eventType:I
    .end local v5           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_1
    move-exception v0

    .line 78
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v7, "OppoModeUtils"

    const-string v8, "Got execption parsing permissions."

    invoke-static {v7, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_1
    :goto_3
    if-eqz v4, :cond_2

    .line 85
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_2
    :goto_4
    move-object v3, v4

    .line 90
    .end local v4           #modeReader:Ljava/io/FileReader;
    .restart local v3       #modeReader:Ljava/io/FileReader;
    goto :goto_2

    .line 79
    .end local v3           #modeReader:Ljava/io/FileReader;
    .restart local v4       #modeReader:Ljava/io/FileReader;
    :catch_2
    move-exception v0

    .line 80
    .local v0, e:Ljava/io/IOException;
    const-string v7, "OppoModeUtils"

    const-string v8, "Got execption parsing permissions."

    invoke-static {v7, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 87
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v7

    goto :goto_4

    .line 62
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
