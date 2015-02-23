.class public Landroid/hardware/input/OppoNarrowFrame;
.super Ljava/lang/Object;
.source "OppoNarrowFrame.java"

# interfaces
.implements Landroid/hardware/input/IOppoNarrowFrame;


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.input.IOppoNarrowFrame"

.field private static final NARROW_FRAME_FEATURE_NAME:Ljava/lang/String; = "oppo.narrow.frame"

.field private static NARROW_FRAME_SWITCH:Z = false

.field private static final TAG:Ljava/lang/String; = "OppoNarrowFrame"


# instance fields
.field private mIsFullScreen:Z

.field private mIsHome:Z

.field private mNarrowFrameLeft:I

.field private mNarrowFrameRight:I

.field private mRemote:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    sput-boolean v0, Landroid/hardware/input/OppoNarrowFrame;->NARROW_FRAME_SWITCH:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/16 v1, 0x78

    iput v1, p0, Landroid/hardware/input/OppoNarrowFrame;->mNarrowFrameLeft:I

    .line 59
    const/16 v1, 0x7f8

    iput v1, p0, Landroid/hardware/input/OppoNarrowFrame;->mNarrowFrameRight:I

    .line 60
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/hardware/input/OppoNarrowFrame;->mRemote:Landroid/os/IBinder;

    .line 61
    iput-boolean v4, p0, Landroid/hardware/input/OppoNarrowFrame;->mIsFullScreen:Z

    .line 62
    iput-boolean v4, p0, Landroid/hardware/input/OppoNarrowFrame;->mIsHome:Z

    .line 65
    const-string v1, "input"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/input/OppoNarrowFrame;->mRemote:Landroid/os/IBinder;

    .line 66
    const-string v1, "OppoNarrowFrame"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OppoNarrowFrame mRemote is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/input/OppoNarrowFrame;->mRemote:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 68
    .local v0, pms:Landroid/content/pm/PackageManager;
    const-string v1, "oppo.narrow.frame"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    const-string v1, "OppoNarrowFrame"

    const-string v2, "OppoNarrowFrame hasSystemFeature oppo.narrow.frame"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    sput-boolean v4, Landroid/hardware/input/OppoNarrowFrame;->NARROW_FRAME_SWITCH:Z

    .line 72
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/input/OppoNarrowFrame;->ParsePackageXml()V

    .line 73
    return-void
.end method


# virtual methods
.method public GetInputManagerService()V
    .locals 4

    .prologue
    .line 76
    const-string v1, "input"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/input/OppoNarrowFrame;->mRemote:Landroid/os/IBinder;

    .line 77
    iget-object v1, p0, Landroid/hardware/input/OppoNarrowFrame;->mRemote:Landroid/os/IBinder;

    if-nez v1, :cond_0

    .line 78
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to connect to InputManager, is the system running?"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 82
    :cond_0
    :try_start_0
    sget-boolean v1, Landroid/hardware/input/OppoNarrowFrame;->NARROW_FRAME_SWITCH:Z

    invoke-virtual {p0, v1}, Landroid/hardware/input/OppoNarrowFrame;->setNarrowFrameSwitch(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_0
    :try_start_1
    iget v1, p0, Landroid/hardware/input/OppoNarrowFrame;->mNarrowFrameLeft:I

    iget v2, p0, Landroid/hardware/input/OppoNarrowFrame;->mNarrowFrameRight:I

    invoke-virtual {p0, v1, v2}, Landroid/hardware/input/OppoNarrowFrame;->setNarrowFrameSide(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 91
    :goto_1
    return-void

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "OppoNarrowFrame"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetInputManagerService setNarrowFrameSwitch is wrong , because of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 88
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 89
    .restart local v0       #e:Landroid/os/RemoteException;
    const-string v1, "OppoNarrowFrame"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetInputManagerService setNarrowFrameSide is wrong , because of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public ParsePackageXml()V
    .locals 9

    .prologue
    .line 171
    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v6

    const-string v7, "etc/narrow_frame_config.xml"

    invoke-direct {v3, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 174
    .local v3, permFile:Ljava/io/File;
    const/4 v4, 0x0

    .line 176
    .local v4, permReader:Ljava/io/FileReader;
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    .end local v4           #permReader:Ljava/io/FileReader;
    .local v5, permReader:Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 185
    .local v2, parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 187
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 188
    .local v1, eventType:I
    :goto_0
    const/4 v6, 0x1

    if-eq v1, v6, :cond_3

    .line 189
    packed-switch v1, :pswitch_data_0

    .line 208
    :cond_0
    :goto_1
    :pswitch_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v1

    goto :goto_0

    .line 177
    .end local v1           #eventType:I
    .end local v2           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v5           #permReader:Ljava/io/FileReader;
    .restart local v4       #permReader:Ljava/io/FileReader;
    :catch_0
    move-exception v0

    .line 178
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v6, "OppoNarrowFrame"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Couldn\'t find or open alarm_filter_packages file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :goto_2
    return-void

    .line 194
    .end local v4           #permReader:Ljava/io/FileReader;
    .restart local v1       #eventType:I
    .restart local v2       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5       #permReader:Ljava/io/FileReader;
    :pswitch_1
    :try_start_2
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "NarrowFrameLeft"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 195
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 196
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, p0, Landroid/hardware/input/OppoNarrowFrame;->mNarrowFrameLeft:I

    .line 197
    const-string v6, "OppoNarrowFrame"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " mNarrowFrameLeft == "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/hardware/input/OppoNarrowFrame;->mNarrowFrameLeft:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 210
    .end local v1           #eventType:I
    .end local v2           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_1
    move-exception v0

    .line 211
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_3
    const-string v6, "OppoNarrowFrame"

    const-string v7, "Got execption parsing permissions."

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 216
    if-eqz v5, :cond_1

    .line 217
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_1
    :goto_3
    move-object v4, v5

    .line 223
    .end local v5           #permReader:Ljava/io/FileReader;
    .restart local v4       #permReader:Ljava/io/FileReader;
    goto :goto_2

    .line 198
    .end local v4           #permReader:Ljava/io/FileReader;
    .restart local v1       #eventType:I
    .restart local v2       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5       #permReader:Ljava/io/FileReader;
    :cond_2
    :try_start_5
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "NarrowFrameRight"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 199
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 200
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, p0, Landroid/hardware/input/OppoNarrowFrame;->mNarrowFrameRight:I

    .line 201
    const-string v6, "OppoNarrowFrame"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " mNarrowFrameRight == "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/hardware/input/OppoNarrowFrame;->mNarrowFrameRight:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_1

    .line 212
    .end local v1           #eventType:I
    .end local v2           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_2
    move-exception v0

    .line 213
    .local v0, e:Ljava/io/IOException;
    :try_start_6
    const-string v6, "OppoNarrowFrame"

    const-string v7, "Got execption parsing permissions."

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 216
    if-eqz v5, :cond_1

    .line 217
    :try_start_7
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_3

    .line 219
    :catch_3
    move-exception v0

    .line 220
    const-string v6, "OppoNarrowFrame"

    const-string v7, "Got execption close permReader."

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 216
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #eventType:I
    .restart local v2       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_3
    if-eqz v5, :cond_1

    .line 217
    :try_start_8
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_3

    .line 219
    :catch_4
    move-exception v0

    .line 220
    .restart local v0       #e:Ljava/io/IOException;
    const-string v6, "OppoNarrowFrame"

    const-string v7, "Got execption close permReader."

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 219
    .end local v1           #eventType:I
    .end local v2           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_5
    move-exception v0

    .line 220
    .local v0, e:Ljava/io/IOException;
    const-string v6, "OppoNarrowFrame"

    const-string v7, "Got execption close permReader."

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 215
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 216
    if-eqz v5, :cond_4

    .line 217
    :try_start_9
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 221
    :cond_4
    :goto_4
    throw v6

    .line 219
    :catch_6
    move-exception v0

    .line 220
    .restart local v0       #e:Ljava/io/IOException;
    const-string v7, "OppoNarrowFrame"

    const-string v8, "Got execption close permReader."

    invoke-static {v7, v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 189
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setNarrowFrameFullScreen(Z)V
    .locals 5
    .parameter "isFullScreen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 110
    sget-boolean v2, Landroid/hardware/input/OppoNarrowFrame;->NARROW_FRAME_SWITCH:Z

    if-nez v2, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    iget-boolean v2, p0, Landroid/hardware/input/OppoNarrowFrame;->mIsFullScreen:Z

    if-eq p1, v2, :cond_0

    .line 114
    iget-object v2, p0, Landroid/hardware/input/OppoNarrowFrame;->mRemote:Landroid/os/IBinder;

    if-eqz v2, :cond_2

    .line 115
    const-string v2, "OppoNarrowFrame"

    const-string v3, "IOppoNarrowFrame setNarrowFrameFullScreen code=10003"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 117
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 118
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.hardware.input.IOppoNarrowFrame"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 119
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    iget-object v2, p0, Landroid/hardware/input/OppoNarrowFrame;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2713

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 121
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 122
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 123
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 124
    iput-boolean p1, p0, Landroid/hardware/input/OppoNarrowFrame;->mIsFullScreen:Z

    goto :goto_0

    .line 126
    .end local v0           #data:Landroid/os/Parcel;
    .end local v1           #reply:Landroid/os/Parcel;
    :cond_2
    const-string v2, "OppoNarrowFrame"

    const-string v3, "IOppoNarrowFrame setNarrowFrameFullScreen mRemote is null! "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-virtual {p0}, Landroid/hardware/input/OppoNarrowFrame;->GetInputManagerService()V

    goto :goto_0
.end method

.method public setNarrowFrameHome(Z)V
    .locals 5
    .parameter "isHome"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 133
    sget-boolean v2, Landroid/hardware/input/OppoNarrowFrame;->NARROW_FRAME_SWITCH:Z

    if-nez v2, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    iget-boolean v2, p0, Landroid/hardware/input/OppoNarrowFrame;->mIsHome:Z

    if-eq p1, v2, :cond_0

    .line 137
    iget-object v2, p0, Landroid/hardware/input/OppoNarrowFrame;->mRemote:Landroid/os/IBinder;

    if-eqz v2, :cond_2

    .line 138
    const-string v2, "OppoNarrowFrame"

    const-string v3, "IOppoNarrowFrame setNarrowFrameHome code=10004"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 140
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 141
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.hardware.input.IOppoNarrowFrame"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 142
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    iget-object v2, p0, Landroid/hardware/input/OppoNarrowFrame;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2714

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 144
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 145
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 146
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 147
    iput-boolean p1, p0, Landroid/hardware/input/OppoNarrowFrame;->mIsHome:Z

    goto :goto_0

    .line 149
    .end local v0           #data:Landroid/os/Parcel;
    .end local v1           #reply:Landroid/os/Parcel;
    :cond_2
    const-string v2, "OppoNarrowFrame"

    const-string v3, "IOppoNarrowFrame setNarrowFrameHome mRemote is null! "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-virtual {p0}, Landroid/hardware/input/OppoNarrowFrame;->GetInputManagerService()V

    goto :goto_0
.end method

.method public setNarrowFrameSide(II)V
    .locals 5
    .parameter "left"
    .parameter "right"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 94
    sget-boolean v2, Landroid/hardware/input/OppoNarrowFrame;->NARROW_FRAME_SWITCH:Z

    if-nez v2, :cond_0

    .line 107
    :goto_0
    return-void

    .line 97
    :cond_0
    const-string v2, "OppoNarrowFrame"

    const-string v3, "IOppoNarrowFrame setNarrowFrameSide code=10002"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 99
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 100
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.hardware.input.IOppoNarrowFrame"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    iget-object v2, p0, Landroid/hardware/input/OppoNarrowFrame;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2712

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 104
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 105
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 106
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_0
.end method

.method public setNarrowFrameSwitch(Z)V
    .locals 5
    .parameter "nfswitch"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 156
    const-string v2, "OppoNarrowFrame"

    const-string v3, "IOppoNarrowFrame setNarrowFrameSwitch code=10005"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 158
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 159
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.hardware.input.IOppoNarrowFrame"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 160
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 161
    iget-object v2, p0, Landroid/hardware/input/OppoNarrowFrame;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2715

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 162
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 163
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 164
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 165
    return-void
.end method
