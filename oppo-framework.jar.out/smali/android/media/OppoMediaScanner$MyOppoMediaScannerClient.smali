.class Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;
.super Ljava/lang/Object;
.source "OppoMediaScanner.java"

# interfaces
.implements Landroid/media/MediaScannerClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/OppoMediaScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOppoMediaScannerClient"
.end annotation


# instance fields
.field private mAlbum:Ljava/lang/String;

.field private mAlbumArtist:Ljava/lang/String;

.field private mArtist:Ljava/lang/String;

.field private mCompilation:I

.field private mComposer:Ljava/lang/String;

.field private mDuration:I

.field private mFileSize:J

.field private mFileType:I

.field private mGenre:Ljava/lang/String;

.field private mHeight:I

.field private mIsDrm:Z

.field private mLastModified:J

.field private mMimeType:Ljava/lang/String;

.field private mNoMedia:Z

.field private mPath:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mTrack:I

.field private mWidth:I

.field private mWriter:Ljava/lang/String;

.field private mYear:I

.field final synthetic this$0:Landroid/media/OppoMediaScanner;


# direct methods
.method private constructor <init>(Landroid/media/OppoMediaScanner;)V
    .locals 0
    .parameter

    .prologue
    .line 477
    iput-object p1, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->this$0:Landroid/media/OppoMediaScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/OppoMediaScanner;Landroid/media/OppoMediaScanner$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 477
    invoke-direct {p0, p1}, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;-><init>(Landroid/media/OppoMediaScanner;)V

    return-void
.end method

.method private convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "input"
    .parameter "expected"

    .prologue
    .line 774
    invoke-virtual {p0, p1}, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->getGenreName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 775
    .local v0, output:Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 776
    const/4 v1, 0x1

    .line 779
    :goto_0
    return v1

    .line 778
    :cond_0
    const-string v1, "OppoMediaScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' -> \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', expected \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "path"
    .parameter "filename"

    .prologue
    const/4 v2, 0x0

    .line 1261
    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    .line 1262
    .local v1, pathFilenameStart:I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 1263
    .local v0, filenameLength:I
    invoke-virtual {p1, v1, p2, v2, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int v3, v1, v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private endFile(Landroid/media/OppoMediaScanner$FileEntry;ZZZZZ)Landroid/net/Uri;
    .locals 28
    .parameter "entry"
    .parameter "ringtones"
    .parameter "notifications"
    .parameter "alarms"
    .parameter "music"
    .parameter "podcasts"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 958
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mArtist:Ljava/lang/String;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mArtist:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v24

    if-nez v24, :cond_1

    .line 959
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mArtist:Ljava/lang/String;

    .line 962
    :cond_1
    invoke-direct/range {p0 .. p0}, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->toValues()Landroid/content/ContentValues;

    move-result-object v23

    .line 963
    .local v23, values:Landroid/content/ContentValues;
    const-string v24, "title"

    invoke-virtual/range {v23 .. v24}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 964
    .local v22, title:Ljava/lang/String;
    if-eqz v22, :cond_2

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 965
    :cond_2
    const-string v24, "_data"

    invoke-virtual/range {v23 .. v24}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/media/OppoMediaFile;->getFileTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 966
    const-string v24, "title"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    :cond_3
    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/media/OppoMediaScanner$FileEntry;->mRowId:J

    move-wide/from16 v17, v0

    .line 996
    .local v17, rowId:J
    const-string v24, "OppoMediaScanner"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, " endFile rowId "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " ft="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mFileType:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mFileType:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/media/OppoMediaFile;->isAudioFileType(I)Z

    move-result v24

    if-eqz v24, :cond_12

    const-wide/16 v24, 0x0

    cmp-long v24, v17, v24

    if-eqz v24, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->this$0:Landroid/media/OppoMediaScanner;

    move-object/from16 v24, v0

    #getter for: Landroid/media/OppoMediaScanner;->mMtpObjectHandle:I
    invoke-static/range {v24 .. v24}, Landroid/media/OppoMediaScanner;->access$700(Landroid/media/OppoMediaScanner;)I

    move-result v24

    if-eqz v24, :cond_12

    .line 1002
    :cond_4
    const-string v24, "is_ringtone"

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1003
    const-string v24, "is_notification"

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1004
    const-string v24, "is_alarm"

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1005
    const-string v24, "is_music"

    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1006
    const-string v24, "is_podcast"

    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1059
    :cond_5
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->this$0:Landroid/media/OppoMediaScanner;

    move-object/from16 v24, v0

    #getter for: Landroid/media/OppoMediaScanner;->mFilesUri:Landroid/net/Uri;
    invoke-static/range {v24 .. v24}, Landroid/media/OppoMediaScanner;->access$1400(Landroid/media/OppoMediaScanner;)Landroid/net/Uri;

    move-result-object v19

    .line 1060
    .local v19, tableUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->this$0:Landroid/media/OppoMediaScanner;

    move-object/from16 v24, v0

    #getter for: Landroid/media/OppoMediaScanner;->mMediaInserter:Landroid/media/MediaInserter;
    invoke-static/range {v24 .. v24}, Landroid/media/OppoMediaScanner;->access$1500(Landroid/media/OppoMediaScanner;)Landroid/media/MediaInserter;

    move-result-object v10

    .line 1061
    .local v10, inserter:Landroid/media/MediaInserter;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mNoMedia:Z

    move/from16 v24, v0

    if-nez v24, :cond_6

    .line 1062
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mFileType:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/media/OppoMediaFile;->isVideoFileType(I)Z

    move-result v24

    if-eqz v24, :cond_16

    .line 1063
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->this$0:Landroid/media/OppoMediaScanner;

    move-object/from16 v24, v0

    #getter for: Landroid/media/OppoMediaScanner;->mVideoUri:Landroid/net/Uri;
    invoke-static/range {v24 .. v24}, Landroid/media/OppoMediaScanner;->access$1600(Landroid/media/OppoMediaScanner;)Landroid/net/Uri;

    move-result-object v19

    .line 1070
    :cond_6
    :goto_1
    const/16 v16, 0x0

    .line 1071
    .local v16, result:Landroid/net/Uri;
    const/4 v13, 0x0

    .line 1074
    .local v13, needToSetSettings:Z
    const/4 v14, 0x0

    .line 1076
    .local v14, needToSetSettingsSIM2:Z
    const-wide/16 v24, 0x0

    cmp-long v24, v17, v24

    if-nez v24, :cond_20

    .line 1077
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->this$0:Landroid/media/OppoMediaScanner;

    move-object/from16 v24, v0

    #getter for: Landroid/media/OppoMediaScanner;->mMtpObjectHandle:I
    invoke-static/range {v24 .. v24}, Landroid/media/OppoMediaScanner;->access$700(Landroid/media/OppoMediaScanner;)I

    move-result v24

    if-eqz v24, :cond_7

    .line 1078
    const-string v24, "media_scanner_new_object_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->this$0:Landroid/media/OppoMediaScanner;

    move-object/from16 v25, v0

    #getter for: Landroid/media/OppoMediaScanner;->mMtpObjectHandle:I
    invoke-static/range {v25 .. v25}, Landroid/media/OppoMediaScanner;->access$700(Landroid/media/OppoMediaScanner;)I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1080
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->this$0:Landroid/media/OppoMediaScanner;

    move-object/from16 v24, v0

    #getter for: Landroid/media/OppoMediaScanner;->mFilesUri:Landroid/net/Uri;
    invoke-static/range {v24 .. v24}, Landroid/media/OppoMediaScanner;->access$1400(Landroid/media/OppoMediaScanner;)Landroid/net/Uri;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_9

    .line 1081
    move-object/from16 v0, p1

    iget v9, v0, Landroid/media/OppoMediaScanner$FileEntry;->mFormat:I

    .line 1082
    .local v9, format:I
    if-nez v9, :cond_8

    .line 1083
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/OppoMediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mMimeType:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-static/range {v24 .. v25}, Landroid/media/OppoMediaFile;->getFormatCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 1085
    :cond_8
    const-string v24, "format"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1090
    .end local v9           #format:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->this$0:Landroid/media/OppoMediaScanner;

    move-object/from16 v24, v0

    #getter for: Landroid/media/OppoMediaScanner;->mWasEmptyPriorToScan:Z
    invoke-static/range {v24 .. v24}, Landroid/media/OppoMediaScanner;->access$1900(Landroid/media/OppoMediaScanner;)Z

    move-result v24

    if-eqz v24, :cond_d

    .line 1106
    if-eqz p3, :cond_18

    .line 1107
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->this$0:Landroid/media/OppoMediaScanner;

    move-object/from16 v24, v0

    #getter for: Landroid/media/OppoMediaScanner;->mDefaultNotificationSet:Z
    invoke-static/range {v24 .. v24}, Landroid/media/OppoMediaScanner;->access$2000(Landroid/media/OppoMediaScanner;)Z

    move-result v24

    if-nez v24, :cond_b

    .line 1108
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->this$0:Landroid/media/OppoMediaScanner;

    move-object/from16 v24, v0

    #getter for: Landroid/media/OppoMediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Landroid/media/OppoMediaScanner;->access$2100(Landroid/media/OppoMediaScanner;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_a

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/OppoMediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->this$0:Landroid/media/OppoMediaScanner;

    move-object/from16 v25, v0

    #getter for: Landroid/media/OppoMediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Landroid/media/OppoMediaScanner;->access$2100(Landroid/media/OppoMediaScanner;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_b

    .line 1110
    :cond_a
    const/4 v13, 0x1

    .line 1114
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->this$0:Landroid/media/OppoMediaScanner;

    move-object/from16 v24, v0

    #getter for: Landroid/media/OppoMediaScanner;->mDefaultNotificationSetSIM2:Z
    invoke-static/range {v24 .. v24}, Landroid/media/OppoMediaScanner;->access$2200(Landroid/media/OppoMediaScanner;)Z

    move-result v24

    if-nez v24, :cond_d

    .line 1115
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->this$0:Landroid/media/OppoMediaScanner;

    move-object/from16 v24, v0

    #getter for: Landroid/media/OppoMediaScanner;->mDefaultNotificationFilenameSIM2:Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Landroid/media/OppoMediaScanner;->access$2300(Landroid/media/OppoMediaScanner;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_c

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/OppoMediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->this$0:Landroid/media/OppoMediaScanner;

    move-object/from16 v25, v0

    #getter for: Landroid/media/OppoMediaScanner;->mDefaultNotificationFilenameSIM2:Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Landroid/media/OppoMediaScanner;->access$2300(Landroid/media/OppoMediaScanner;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_d

    .line 1117
    :cond_c
    const/4 v14, 0x1

    .line 1154
    :cond_d
    :goto_2
    if-eqz v10, :cond_e

    if-nez v13, :cond_e

    if-eqz v14, :cond_1e

    .line 1156
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->this$0:Landroid/media/OppoMediaScanner;

    move-object/from16 v24, v0

    #getter for: Landroid/media/OppoMediaScanner;->mMediaProvider:Landroid/content/IContentProvider;
    invoke-static/range {v24 .. v24}, Landroid/media/OppoMediaScanner;->access$3000(Landroid/media/OppoMediaScanner;)Landroid/content/IContentProvider;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v16

    .line 1181
    :goto_3
    if-eqz v16, :cond_f

    .line 1182
    invoke-static/range {v16 .. v16}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v17

    .line 1183
    move-wide/from16 v0, v17

    move-object/from16 v2, p1

    iput-wide v0, v2, Landroid/media/OppoMediaScanner$FileEntry;->mRowId:J

    .line 1226
    :cond_f
    :goto_4
    if-eqz v13, :cond_10

    .line 1227
    if-eqz p3, :cond_26

    .line 1228
    const-string v24, "notification_sound"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v19

    move-wide/from16 v3, v17

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1229
    const-string v24, "oppo_default_notification"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v19

    move-wide/from16 v3, v17

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1230
    const-string v24, "oppo_sms_notification_sound"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v19

    move-wide/from16 v3, v17

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1232
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->this$0:Landroid/media/OppoMediaScanner;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    #setter for: Landroid/media/OppoMediaScanner;->mDefaultNotificationSet:Z
    invoke-static/range {v24 .. v25}, Landroid/media/OppoMediaScanner;->access$2002(Landroid/media/OppoMediaScanner;Z)Z

    .line 1244
    :cond_10
    :goto_5
    if-eqz v14, :cond_11

    .line 1245
    if-eqz p3, :cond_28

    .line 1246
    const-string v24, "notification_sim2"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v19

    move-wide/from16 v3, v17

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1247
    const-string v24, "oppo_default_notification_sim2"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v19

    move-wide/from16 v3, v17

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1248
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->this$0:Landroid/media/OppoMediaScanner;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    #setter for: Landroid/media/OppoMediaScanner;->mDefaultNotificationSetSIM2:Z
    invoke-static/range {v24 .. v25}, Landroid/media/OppoMediaScanner;->access$2202(Landroid/media/OppoMediaScanner;Z)Z

    .line 1257
    :cond_11
    :goto_6
    return-object v16

    .line 1007
    .end local v10           #inserter:Landroid/media/MediaInserter;
    .end local v13           #needToSetSettings:Z
    .end local v14           #needToSetSettingsSIM2:Z
    .end local v16           #result:Landroid/net/Uri;
    .end local v19           #tableUri:Landroid/net/Uri;
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mFileType:I

    move/from16 v24, v0

    const/16 v25, 0x1f

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mNoMedia:Z

    move/from16 v24, v0

    if-nez v24, :cond_5

    .line 1008
    const/4 v6, 0x0

    .line 1010
    .local v6, exif:Landroid/media/ExifInterface;
    :try_start_0
    new-instance v7, Landroid/media/ExifInterface;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/OppoMediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-direct {v7, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v6           #exif:Landroid/media/ExifInterface;
    .local v7, exif:Landroid/media/ExifInterface;
    move-object v6, v7

    .line 1014
    .end local v7           #exif:Landroid/media/ExifInterface;
    .restart local v6       #exif:Landroid/media/ExifInterface;
    :goto_7
    if-eqz v6, :cond_5

    .line 1015
    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v11, v0, [F

    .line 1016
    .local v11, latlng:[F
    invoke-virtual {v6, v11}, Landroid/media/ExifInterface;->getLatLong([F)Z

    move-result v24

    if-eqz v24, :cond_13

    .line 1017
    const-string v24, "latitude"

    const/16 v25, 0x0

    aget v25, v11, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 1018
    const-string v24, "longitude"

    const/16 v25, 0x1

    aget v25, v11, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 1021
    :cond_13
    invoke-virtual {v6}, Landroid/media/ExifInterface;->getGpsDateTime()J

    move-result-wide v20

    .line 1022
    .local v20, time:J
    const-wide/16 v24, -0x1

    cmp-long v24, v20, v24

    if-eqz v24, :cond_15

    .line 1023
    const-string v24, "datetaken"

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1035
    :cond_14
    :goto_8
    const-string v24, "Orientation"

    const/16 v25, -0x1

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v6, v0, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v15

    .line 1037
    .local v15, orientation:I
    const/16 v24, -0x1

    move/from16 v0, v24

    if-eq v15, v0, :cond_5

    .line 1040
    packed-switch v15, :pswitch_data_0

    .line 1051
    :pswitch_0
    const/4 v5, 0x0

    .line 1054
    .local v5, degree:I
    :goto_9
    const-string v24, "orientation"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 1029
    .end local v5           #degree:I
    .end local v15           #orientation:I
    :cond_15
    invoke-virtual {v6}, Landroid/media/ExifInterface;->getDateTime()J

    move-result-wide v20

    .line 1030
    const-wide/16 v24, -0x1

    cmp-long v24, v20, v24

    if-eqz v24, :cond_14

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mLastModified:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x3e8

    mul-long v24, v24, v26

    sub-long v24, v24, v20

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->abs(J)J

    move-result-wide v24

    const-wide/32 v26, 0x5265c00

    cmp-long v24, v24, v26

    if-ltz v24, :cond_14

    .line 1031
    const-string v24, "datetaken"

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_8

    .line 1042
    .restart local v15       #orientation:I
    :pswitch_1
    const/16 v5, 0x5a

    .line 1043
    .restart local v5       #degree:I
    goto :goto_9

    .line 1045
    .end local v5           #degree:I
    :pswitch_2
    const/16 v5, 0xb4

    .line 1046
    .restart local v5       #degree:I
    goto :goto_9

    .line 1048
    .end local v5           #degree:I
    :pswitch_3
    const/16 v5, 0x10e

    .line 1049
    .restart local v5       #degree:I
    goto :goto_9

    .line 1064
    .end local v5           #degree:I
    .end local v6           #exif:Landroid/media/ExifInterface;
    .end local v11           #latlng:[F
    .end local v15           #orientation:I
    .end local v20           #time:J
    .restart local v10       #inserter:Landroid/media/MediaInserter;
    .restart local v19       #tableUri:Landroid/net/Uri;
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mFileType:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/media/OppoMediaFile;->isImageFileType(I)Z

    move-result v24

    if-eqz v24, :cond_17

    .line 1065
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->this$0:Landroid/media/OppoMediaScanner;

    move-object/from16 v24, v0

    #getter for: Landroid/media/OppoMediaScanner;->mImagesUri:Landroid/net/Uri;
    invoke-static/range {v24 .. v24}, Landroid/media/OppoMediaScanner;->access$1700(Landroid/media/OppoMediaScanner;)Landroid/net/Uri;

    move-result-object v19

    goto/16 :goto_1

    .line 1066
    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mFileType:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/media/OppoMediaFile;->isAudioFileType(I)Z

    move-result v24

    if-eqz v24, :cond_6

    .line 1067
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->this$0:Landroid/media/OppoMediaScanner;

    move-object/from16 v24, v0

    #getter for: Landroid/media/OppoMediaScanner;->mAudioUri:Landroid/net/Uri;
    invoke-static/range {v24 .. v24}, Landroid/media/OppoMediaScanner;->access$1800(Landroid/media/OppoMediaScanner;)Landroid/net/Uri;

    move-result-object v19

    goto/16 :goto_1

    .line 1120
    .restart local v13       #needToSetSettings:Z
    .restart local v14       #needToSetSettingsSIM2:Z
    .restart local v16       #result:Landroid/net/Uri;
    :cond_18
    if-eqz p2, :cond_1c

    .line 1121
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->this$0:Landroid/media/OppoMediaScanner;

    move-object/from16 v24, v0

    #getter for: Landroid/media/OppoMediaScanner;->mDefaultRingtoneSet:Z
    invoke-static/range {v24 .. v24}, Landroid/media/OppoMediaScanner;->access$2400(Landroid/media/OppoMediaScanner;)Z

    move-result v24

    if-nez v24, :cond_1a

    .line 1122
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->this$0:Landroid/media/OppoMediaScanner;

    move-object/from16 v24, v0

    #getter for: Landroid/media/OppoMediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Landroid/media/OppoMediaScanner;->access$2500(Landroid/media/OppoMediaScanner;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_19

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/OppoMediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->this$0:Landroid/media/OppoMediaScanner;

    move-object/from16 v25, v0

    #getter for: Landroid/media/OppoMediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Landroid/media/OppoMediaScanner;->access$2500(Landroid/media/OppoMediaScanner;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_1a

    .line 1124
    :cond_19
    const/4 v13, 0x1

    .line 1128
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->this$0:Landroid/media/OppoMediaScanner;

    move-object/from16 v24, v0

    #getter for: Landroid/media/OppoMediaScanner;->mDefaultRingtoneSetSIM2:Z
    invoke-static/range {v24 .. v24}, Landroid/media/OppoMediaScanner;->access$2600(Landroid/media/OppoMediaScanner;)Z

    move-result v24

    if-nez v24, :cond_d

    .line 1129
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->this$0:Landroid/media/OppoMediaScanner;

    move-object/from16 v24, v0

    #getter for: Landroid/media/OppoMediaScanner;->mDefaultRingtoneFilenameSIM2:Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Landroid/media/OppoMediaScanner;->access$2700(Landroid/media/OppoMediaScanner;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_1b

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/OppoMediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->this$0:Landroid/media/OppoMediaScanner;

    move-object/from16 v25, v0

    #getter for: Landroid/media/OppoMediaScanner;->mDefaultRingtoneFilenameSIM2:Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Landroid/media/OppoMediaScanner;->access$2700(Landroid/media/OppoMediaScanner;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_d

    .line 1131
    :cond_1b
    const/4 v14, 0x1

    goto/16 :goto_2

    .line 1135
    :cond_1c
    if-eqz p4, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->this$0:Landroid/media/OppoMediaScanner;

    move-object/from16 v24, v0

    #getter for: Landroid/media/OppoMediaScanner;->mDefaultAlarmSet:Z
    invoke-static/range {v24 .. v24}, Landroid/media/OppoMediaScanner;->access$2800(Landroid/media/OppoMediaScanner;)Z

    move-result v24

    if-nez v24, :cond_d

    .line 1136
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->this$0:Landroid/media/OppoMediaScanner;

    move-object/from16 v24, v0

    #getter for: Landroid/media/OppoMediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Landroid/media/OppoMediaScanner;->access$2900(Landroid/media/OppoMediaScanner;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_1d

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/OppoMediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->this$0:Landroid/media/OppoMediaScanner;

    move-object/from16 v25, v0

    #getter for: Landroid/media/OppoMediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Landroid/media/OppoMediaScanner;->access$2900(Landroid/media/OppoMediaScanner;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_d

    .line 1138
    :cond_1d
    const/4 v13, 0x1

    goto/16 :goto_2

    .line 1157
    :cond_1e
    move-object/from16 v0, p1

    iget v0, v0, Landroid/media/OppoMediaScanner$FileEntry;->mFormat:I

    move/from16 v24, v0

    const/16 v25, 0x3001

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1f

    .line 1164
    monitor-enter v10

    .line 1165
    :try_start_1
    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Landroid/media/MediaInserter;->insertwithPriority(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 1166
    monitor-exit v10

    goto/16 :goto_3

    :catchall_0
    move-exception v24

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v24

    .line 1175
    :cond_1f
    monitor-enter v10

    .line 1176
    :try_start_2
    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Landroid/media/MediaInserter;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 1177
    monitor-exit v10

    goto/16 :goto_3

    :catchall_1
    move-exception v24

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v24

    .line 1187
    :cond_20
    move-object/from16 v0, v19

    move-wide/from16 v1, v17

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v16

    .line 1190
    const-string v24, "_data"

    invoke-virtual/range {v23 .. v24}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1192
    const/4 v12, 0x0

    .line 1193
    .local v12, mediaType:I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/OppoMediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/media/OppoMediaScanner;->isNoMediaPath(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_22

    .line 1194
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mMimeType:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/media/OppoMediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v8

    .line 1195
    .local v8, fileType:I
    invoke-static {v8}, Landroid/media/OppoMediaFile;->isAudioFileType(I)Z

    move-result v24

    if-eqz v24, :cond_23

    .line 1196
    const/4 v12, 0x2

    .line 1204
    :cond_21
    :goto_a
    const-string v24, "media_type"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1206
    .end local v8           #fileType:I
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->this$0:Landroid/media/OppoMediaScanner;

    move-object/from16 v24, v0

    #getter for: Landroid/media/OppoMediaScanner;->mMediaProvider:Landroid/content/IContentProvider;
    invoke-static/range {v24 .. v24}, Landroid/media/OppoMediaScanner;->access$3000(Landroid/media/OppoMediaScanner;)Landroid/content/IContentProvider;

    move-result-object v24

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    move-object/from16 v2, v23

    move-object/from16 v3, v25

    move-object/from16 v4, v26

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1197
    .restart local v8       #fileType:I
    :cond_23
    invoke-static {v8}, Landroid/media/OppoMediaFile;->isVideoFileType(I)Z

    move-result v24

    if-eqz v24, :cond_24

    .line 1198
    const/4 v12, 0x3

    goto :goto_a

    .line 1199
    :cond_24
    invoke-static {v8}, Landroid/media/OppoMediaFile;->isImageFileType(I)Z

    move-result v24

    if-eqz v24, :cond_25

    .line 1200
    const/4 v12, 0x1

    goto :goto_a

    .line 1201
    :cond_25
    invoke-static {v8}, Landroid/media/OppoMediaFile;->isPlayListFileType(I)Z

    move-result v24

    if-eqz v24, :cond_21

    .line 1202
    const/4 v12, 0x4

    goto :goto_a

    .line 1233
    .end local v8           #fileType:I
    .end local v12           #mediaType:I
    :cond_26
    if-eqz p2, :cond_27

    .line 1234
    const-string v24, "ringtone"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v19

    move-wide/from16 v3, v17

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1235
    const-string v24, "oppo_default_ringtone"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v19

    move-wide/from16 v3, v17

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1236
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->this$0:Landroid/media/OppoMediaScanner;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    #setter for: Landroid/media/OppoMediaScanner;->mDefaultRingtoneSet:Z
    invoke-static/range {v24 .. v25}, Landroid/media/OppoMediaScanner;->access$2402(Landroid/media/OppoMediaScanner;Z)Z

    goto/16 :goto_5

    .line 1237
    :cond_27
    if-eqz p4, :cond_10

    .line 1238
    const-string v24, "alarm_alert"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v19

    move-wide/from16 v3, v17

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1239
    const-string v24, "oppo_default_alarm"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v19

    move-wide/from16 v3, v17

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1240
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->this$0:Landroid/media/OppoMediaScanner;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    #setter for: Landroid/media/OppoMediaScanner;->mDefaultAlarmSet:Z
    invoke-static/range {v24 .. v25}, Landroid/media/OppoMediaScanner;->access$2802(Landroid/media/OppoMediaScanner;Z)Z

    goto/16 :goto_5

    .line 1249
    :cond_28
    if-eqz p2, :cond_11

    .line 1250
    const-string v24, "ringtone_sim2"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v19

    move-wide/from16 v3, v17

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1251
    const-string v24, "oppo_default_ringtone_sim2"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v19

    move-wide/from16 v3, v17

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1252
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->this$0:Landroid/media/OppoMediaScanner;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    #setter for: Landroid/media/OppoMediaScanner;->mDefaultRingtoneSetSIM2:Z
    invoke-static/range {v24 .. v25}, Landroid/media/OppoMediaScanner;->access$2602(Landroid/media/OppoMediaScanner;Z)Z

    goto/16 :goto_6

    .line 1011
    .end local v10           #inserter:Landroid/media/MediaInserter;
    .end local v13           #needToSetSettings:Z
    .end local v14           #needToSetSettingsSIM2:Z
    .end local v16           #result:Landroid/net/Uri;
    .end local v19           #tableUri:Landroid/net/Uri;
    .restart local v6       #exif:Landroid/media/ExifInterface;
    :catch_0
    move-exception v24

    goto/16 :goto_7

    .line 1040
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private getFileTypeFromDrm(Ljava/lang/String;)I
    .locals 4
    .parameter "path"

    .prologue
    .line 1280
    iget-object v3, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->this$0:Landroid/media/OppoMediaScanner;

    #calls: Landroid/media/OppoMediaScanner;->isDrmEnabled()Z
    invoke-static {v3}, Landroid/media/OppoMediaScanner;->access$200(Landroid/media/OppoMediaScanner;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1281
    const/4 v2, 0x0

    .line 1302
    :cond_0
    :goto_0
    return v2

    .line 1284
    :cond_1
    const/4 v2, 0x0

    .line 1288
    .local v2, resultFileType:I
    const/4 v1, 0x0

    .line 1291
    .local v1, mDrmManagerClient:Landroid/drm/DrmManagerClient;
    if-nez v1, :cond_2

    .line 1292
    new-instance v1, Landroid/drm/DrmManagerClient;

    .end local v1           #mDrmManagerClient:Landroid/drm/DrmManagerClient;
    iget-object v3, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->this$0:Landroid/media/OppoMediaScanner;

    #getter for: Landroid/media/OppoMediaScanner;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/media/OppoMediaScanner;->access$3100(Landroid/media/OppoMediaScanner;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    .line 1295
    .restart local v1       #mDrmManagerClient:Landroid/drm/DrmManagerClient;
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1296
    invoke-virtual {v1, p1}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1297
    .local v0, drmMimetype:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1298
    iput-object v0, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 1299
    invoke-static {v0}, Landroid/media/OppoMediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method private parseSubstring(Ljava/lang/String;II)I
    .locals 8
    .parameter "s"
    .parameter "start"
    .parameter "defaultValue"

    .prologue
    const/16 v7, 0x39

    const/16 v6, 0x30

    .line 708
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 709
    .local v1, length:I
    if-ne p2, v1, :cond_0

    .line 722
    .end local p3
    :goto_0
    return p3

    .line 711
    .restart local p3
    :cond_0
    add-int/lit8 v3, p2, 0x1

    .end local p2
    .local v3, start:I
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 713
    .local v0, ch:C
    if-lt v0, v6, :cond_1

    if-le v0, v7, :cond_2

    :cond_1
    move p2, v3

    .end local v3           #start:I
    .restart local p2
    goto :goto_0

    .line 715
    .end local p2
    .restart local v3       #start:I
    :cond_2
    add-int/lit8 v2, v0, -0x30

    .line 716
    .local v2, result:I
    :goto_1
    if-ge v3, v1, :cond_5

    .line 717
    add-int/lit8 p2, v3, 0x1

    .end local v3           #start:I
    .restart local p2
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 718
    if-lt v0, v6, :cond_3

    if-le v0, v7, :cond_4

    :cond_3
    move p3, v2

    goto :goto_0

    .line 719
    :cond_4
    mul-int/lit8 v4, v2, 0xa

    add-int/lit8 v5, v0, -0x30

    add-int v2, v4, v5

    move v3, p2

    .end local p2
    .restart local v3       #start:I
    goto :goto_1

    :cond_5
    move p2, v3

    .end local v3           #start:I
    .restart local p2
    move p3, v2

    .line 722
    goto :goto_0
.end method

.method private processImageFile(Ljava/lang/String;)V
    .locals 2
    .parameter "path"

    .prologue
    .line 855
    :try_start_0
    iget-object v0, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->this$0:Landroid/media/OppoMediaScanner;

    #getter for: Landroid/media/OppoMediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v0}, Landroid/media/OppoMediaScanner;->access$1300(Landroid/media/OppoMediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 856
    iget-object v0, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->this$0:Landroid/media/OppoMediaScanner;

    #getter for: Landroid/media/OppoMediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v0}, Landroid/media/OppoMediaScanner;->access$1300(Landroid/media/OppoMediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 857
    iget-object v0, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->this$0:Landroid/media/OppoMediaScanner;

    #getter for: Landroid/media/OppoMediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v0}, Landroid/media/OppoMediaScanner;->access$1300(Landroid/media/OppoMediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 858
    iget-object v0, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->this$0:Landroid/media/OppoMediaScanner;

    #getter for: Landroid/media/OppoMediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v0}, Landroid/media/OppoMediaScanner;->access$1300(Landroid/media/OppoMediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v0, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mWidth:I

    .line 859
    iget-object v0, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->this$0:Landroid/media/OppoMediaScanner;

    #getter for: Landroid/media/OppoMediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v0}, Landroid/media/OppoMediaScanner;->access$1300(Landroid/media/OppoMediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v0, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mHeight:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 863
    :goto_0
    return-void

    .line 860
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V
    .locals 3
    .parameter "settingName"
    .parameter "uri"
    .parameter "rowId"

    .prologue
    .line 1269
    iget-object v1, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->this$0:Landroid/media/OppoMediaScanner;

    #getter for: Landroid/media/OppoMediaScanner;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/media/OppoMediaScanner;->access$3100(Landroid/media/OppoMediaScanner;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1272
    .local v0, existingSettingValue:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1274
    iget-object v1, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->this$0:Landroid/media/OppoMediaScanner;

    #getter for: Landroid/media/OppoMediaScanner;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/media/OppoMediaScanner;->access$3100(Landroid/media/OppoMediaScanner;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p2, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1277
    :cond_0
    return-void
.end method

.method private testGenreNameConverter()V
    .locals 2

    .prologue
    .line 783
    const-string v0, "2"

    const-string v1, "Country"

    invoke-direct {p0, v0, v1}, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 784
    const-string v0, "(2)"

    const-string v1, "Country"

    invoke-direct {p0, v0, v1}, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 785
    const-string v0, "(2"

    const-string v1, "(2"

    invoke-direct {p0, v0, v1}, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 786
    const-string v0, "2 Foo"

    const-string v1, "Country"

    invoke-direct {p0, v0, v1}, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 787
    const-string v0, "(2) Foo"

    const-string v1, "Country"

    invoke-direct {p0, v0, v1}, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 788
    const-string v0, "(2 Foo"

    const-string v1, "(2 Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 789
    const-string v0, "2Foo"

    const-string v1, "2Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 790
    const-string v0, "(2)Foo"

    const-string v1, "Country"

    invoke-direct {p0, v0, v1}, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 791
    const-string v0, "200 Foo"

    const-string v1, "Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 792
    const-string v0, "(200) Foo"

    const-string v1, "Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 793
    const-string v0, "200Foo"

    const-string v1, "200Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 794
    const-string v0, "(200)Foo"

    const-string v1, "Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 795
    const-string v0, "200)Foo"

    const-string v1, "200)Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 796
    const-string v0, "200) Foo"

    const-string v1, "200) Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 797
    return-void
.end method

.method private toValues()Landroid/content/ContentValues;
    .locals 5

    .prologue
    .line 900
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 902
    .local v0, map:Landroid/content/ContentValues;
    const-string v2, "_data"

    iget-object v3, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    const-string v2, "title"

    iget-object v3, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    const-string v2, "date_modified"

    iget-wide v3, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mLastModified:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 905
    const-string v2, "_size"

    iget-wide v3, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mFileSize:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 906
    const-string v2, "mime_type"

    iget-object v3, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    const-string v2, "is_drm"

    iget-boolean v3, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mIsDrm:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 909
    const/4 v1, 0x0

    .line 910
    .local v1, resolution:Ljava/lang/String;
    iget v2, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mWidth:I

    if-lez v2, :cond_0

    iget v2, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mHeight:I

    if-lez v2, :cond_0

    .line 911
    const-string v2, "width"

    iget v3, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mWidth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 912
    const-string v2, "height"

    iget v3, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 913
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 916
    :cond_0
    iget-boolean v2, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mNoMedia:Z

    if-nez v2, :cond_1

    .line 917
    iget v2, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mFileType:I

    invoke-static {v2}, Landroid/media/OppoMediaFile;->isVideoFileType(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 918
    const-string v3, "artist"

    iget-object v2, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mArtist:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mArtist:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mArtist:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    const-string v3, "album"

    iget-object v2, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mAlbum:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mAlbum:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    iget-object v2, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mAlbum:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    const-string v2, "duration"

    iget v3, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mDuration:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 923
    if-eqz v1, :cond_1

    .line 924
    const-string v2, "resolution"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    :cond_1
    :goto_2
    return-object v0

    .line 918
    :cond_2
    const-string v2, "<unknown>"

    goto :goto_0

    .line 920
    :cond_3
    const-string v2, "<unknown>"

    goto :goto_1

    .line 926
    :cond_4
    iget v2, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mFileType:I

    invoke-static {v2}, Landroid/media/OppoMediaFile;->isImageFileType(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 928
    iget v2, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mFileType:I

    invoke-static {v2}, Landroid/media/OppoMediaFile;->isAudioFileType(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 929
    const-string v3, "artist"

    iget-object v2, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mArtist:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mArtist:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    iget-object v2, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mArtist:Ljava/lang/String;

    :goto_3
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    const-string v3, "album_artist"

    iget-object v2, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7

    iget-object v2, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    :goto_4
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    const-string v3, "album"

    iget-object v2, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mAlbum:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mAlbum:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_8

    iget-object v2, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mAlbum:Ljava/lang/String;

    :goto_5
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    const-string v2, "composer"

    iget-object v3, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mComposer:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    const-string v2, "genre"

    iget-object v3, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mGenre:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    iget v2, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mYear:I

    if-eqz v2, :cond_5

    .line 938
    const-string v2, "year"

    iget v3, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mYear:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 940
    :cond_5
    const-string v2, "track"

    iget v3, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mTrack:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 941
    const-string v2, "duration"

    iget v3, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mDuration:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 942
    const-string v2, "compilation"

    iget v3, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mCompilation:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_2

    .line 929
    :cond_6
    const-string v2, "<unknown>"

    goto :goto_3

    .line 931
    :cond_7
    const/4 v2, 0x0

    goto :goto_4

    .line 933
    :cond_8
    const-string v2, "<unknown>"

    goto :goto_5
.end method


# virtual methods
.method public beginFile(Ljava/lang/String;Ljava/lang/String;JJZZ)Landroid/media/OppoMediaScanner$FileEntry;
    .locals 14
    .parameter "path"
    .parameter "mimeType"
    .parameter "lastModified"
    .parameter "fileSize"
    .parameter "isDirectory"
    .parameter "noMedia"

    .prologue
    .line 502
    move-object/from16 v0, p2

    iput-object v0, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 503
    const/4 v3, 0x0

    iput v3, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mFileType:I

    .line 504
    move-wide/from16 v0, p5

    iput-wide v0, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mFileSize:J

    .line 506
    if-nez p7, :cond_3

    .line 507
    if-nez p8, :cond_0

    #calls: Landroid/media/OppoMediaScanner;->isNoMediaFile(Ljava/lang/String;)Z
    invoke-static {p1}, Landroid/media/OppoMediaScanner;->access$100(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 508
    const/16 p8, 0x1

    .line 510
    :cond_0
    move/from16 v0, p8

    iput-boolean v0, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mNoMedia:Z

    .line 513
    if-eqz p2, :cond_1

    .line 514
    invoke-static/range {p2 .. p2}, Landroid/media/OppoMediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mFileType:I

    .line 518
    :cond_1
    iget v3, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mFileType:I

    if-nez v3, :cond_2

    .line 519
    invoke-static {p1}, Landroid/media/OppoMediaFile;->getFileType(Ljava/lang/String;)Landroid/media/OppoMediaFile$MediaFileType;

    move-result-object v12

    .line 520
    .local v12, mediaFileType:Landroid/media/OppoMediaFile$MediaFileType;
    if-eqz v12, :cond_2

    .line 521
    iget v3, v12, Landroid/media/OppoMediaFile$MediaFileType;->fileType:I

    iput v3, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mFileType:I

    .line 522
    iget-object v3, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mMimeType:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 523
    iget-object v3, v12, Landroid/media/OppoMediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    iput-object v3, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 528
    .end local v12           #mediaFileType:Landroid/media/OppoMediaFile$MediaFileType;
    :cond_2
    iget-object v3, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->this$0:Landroid/media/OppoMediaScanner;

    #calls: Landroid/media/OppoMediaScanner;->isDrmEnabled()Z
    invoke-static {v3}, Landroid/media/OppoMediaScanner;->access$200(Landroid/media/OppoMediaScanner;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mFileType:I

    invoke-static {v3}, Landroid/media/OppoMediaFile;->isDrmFileType(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 529
    invoke-direct {p0, p1}, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->getFileTypeFromDrm(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mFileType:I

    .line 539
    :cond_3
    const/4 v2, 0x0

    .line 542
    .local v2, entry:Landroid/media/OppoMediaScanner$FileEntry;
    move-object v11, p1

    .line 543
    .local v11, key:Ljava/lang/String;
    iget-object v3, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->this$0:Landroid/media/OppoMediaScanner;

    #getter for: Landroid/media/OppoMediaScanner;->mCaseInsensitivePaths:Z
    invoke-static {v3}, Landroid/media/OppoMediaScanner;->access$300(Landroid/media/OppoMediaScanner;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 544
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    .line 547
    :cond_4
    iget-object v3, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->this$0:Landroid/media/OppoMediaScanner;

    #getter for: Landroid/media/OppoMediaScanner;->mFilesCache:Ljava/util/HashMap;
    invoke-static {v3}, Landroid/media/OppoMediaScanner;->access$400(Landroid/media/OppoMediaScanner;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #entry:Landroid/media/OppoMediaScanner$FileEntry;
    check-cast v2, Landroid/media/OppoMediaScanner$FileEntry;

    .line 560
    .restart local v2       #entry:Landroid/media/OppoMediaScanner$FileEntry;
    if-eqz v2, :cond_8

    iget-wide v3, v2, Landroid/media/OppoMediaScanner$FileEntry;->mLastModified:J

    sub-long v9, p3, v3

    .line 561
    .local v9, delta:J
    :goto_0
    const-wide/16 v3, 0x1

    cmp-long v3, v9, v3

    if-gtz v3, :cond_5

    const-wide/16 v3, -0x1

    cmp-long v3, v9, v3

    if-gez v3, :cond_9

    :cond_5
    const/4 v13, 0x1

    .line 567
    .local v13, wasModified:Z
    :goto_1
    if-eqz v2, :cond_6

    if-eqz v13, :cond_7

    .line 568
    :cond_6
    if-eqz v13, :cond_a

    .line 569
    move-wide/from16 v0, p3

    iput-wide v0, v2, Landroid/media/OppoMediaScanner$FileEntry;->mLastModified:J

    .line 574
    :goto_2
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/media/OppoMediaScanner$FileEntry;->mLastModifiedChanged:Z

    .line 577
    :cond_7
    iget-object v3, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->this$0:Landroid/media/OppoMediaScanner;

    #getter for: Landroid/media/OppoMediaScanner;->mProcessPlaylists:Z
    invoke-static {v3}, Landroid/media/OppoMediaScanner;->access$500(Landroid/media/OppoMediaScanner;)Z

    move-result v3

    if-eqz v3, :cond_c

    iget v3, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mFileType:I

    invoke-static {v3}, Landroid/media/OppoMediaFile;->isPlayListFileType(I)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 584
    iget-object v3, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->this$0:Landroid/media/OppoMediaScanner;

    #getter for: Landroid/media/OppoMediaScanner;->mPlayLists:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/media/OppoMediaScanner;->access$600(Landroid/media/OppoMediaScanner;)Ljava/util/ArrayList;

    move-result-object v4

    monitor-enter v4

    .line 585
    :try_start_0
    iget-object v3, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->this$0:Landroid/media/OppoMediaScanner;

    #getter for: Landroid/media/OppoMediaScanner;->mPlayLists:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/media/OppoMediaScanner;->access$600(Landroid/media/OppoMediaScanner;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 586
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 590
    const/4 v2, 0x0

    .line 611
    .end local v2           #entry:Landroid/media/OppoMediaScanner$FileEntry;
    :goto_3
    return-object v2

    .line 560
    .end local v9           #delta:J
    .end local v13           #wasModified:Z
    .restart local v2       #entry:Landroid/media/OppoMediaScanner$FileEntry;
    :cond_8
    const-wide/16 v9, 0x0

    goto :goto_0

    .line 561
    .restart local v9       #delta:J
    :cond_9
    const/4 v13, 0x0

    goto :goto_1

    .line 571
    .restart local v13       #wasModified:Z
    :cond_a
    new-instance v2, Landroid/media/OppoMediaScanner$FileEntry;

    .end local v2           #entry:Landroid/media/OppoMediaScanner$FileEntry;
    const-wide/16 v3, 0x0

    if-eqz p7, :cond_b

    const/16 v8, 0x3001

    :goto_4
    move-object v5, p1

    move-wide/from16 v6, p3

    invoke-direct/range {v2 .. v8}, Landroid/media/OppoMediaScanner$FileEntry;-><init>(JLjava/lang/String;JI)V

    .restart local v2       #entry:Landroid/media/OppoMediaScanner$FileEntry;
    goto :goto_2

    .end local v2           #entry:Landroid/media/OppoMediaScanner$FileEntry;
    :cond_b
    const/4 v8, 0x0

    goto :goto_4

    .line 586
    .restart local v2       #entry:Landroid/media/OppoMediaScanner$FileEntry;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 594
    :cond_c
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mArtist:Ljava/lang/String;

    .line 595
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    .line 596
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mAlbum:Ljava/lang/String;

    .line 597
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mTitle:Ljava/lang/String;

    .line 598
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mComposer:Ljava/lang/String;

    .line 599
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mGenre:Ljava/lang/String;

    .line 600
    const/4 v3, 0x0

    iput v3, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mTrack:I

    .line 601
    const/4 v3, 0x0

    iput v3, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mYear:I

    .line 602
    const/4 v3, 0x0

    iput v3, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mDuration:I

    .line 603
    iput-object p1, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mPath:Ljava/lang/String;

    .line 604
    move-wide/from16 v0, p3

    iput-wide v0, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mLastModified:J

    .line 605
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mWriter:Ljava/lang/String;

    .line 606
    const/4 v3, 0x0

    iput v3, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mCompilation:I

    .line 607
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mIsDrm:Z

    .line 608
    const/4 v3, 0x0

    iput v3, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mWidth:I

    .line 609
    const/4 v3, 0x0

    iput v3, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mHeight:I

    goto :goto_3
.end method

.method public doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;
    .locals 20
    .parameter "path"
    .parameter "mimeType"
    .parameter "lastModified"
    .parameter "fileSize"
    .parameter "isDirectory"
    .parameter "scanAlways"
    .parameter "noMedia"

    .prologue
    .line 637
    const/16 v19, 0x0

    .local v19, result:Landroid/net/Uri;
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move/from16 v10, p7

    move/from16 v11, p9

    .line 645
    :try_start_0
    invoke-virtual/range {v3 .. v11}, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->beginFile(Ljava/lang/String;Ljava/lang/String;JJZZ)Landroid/media/OppoMediaScanner$FileEntry;

    move-result-object v4

    .line 651
    .local v4, entry:Landroid/media/OppoMediaScanner$FileEntry;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->this$0:Landroid/media/OppoMediaScanner;

    #getter for: Landroid/media/OppoMediaScanner;->mMtpObjectHandle:I
    invoke-static {v3}, Landroid/media/OppoMediaScanner;->access$700(Landroid/media/OppoMediaScanner;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 652
    const-wide/16 v10, 0x0

    iput-wide v10, v4, Landroid/media/OppoMediaScanner$FileEntry;->mRowId:J

    .line 654
    :cond_0
    if-eqz v4, :cond_1

    .line 659
    :cond_1
    if-eqz v4, :cond_3

    iget-boolean v3, v4, Landroid/media/OppoMediaScanner$FileEntry;->mLastModifiedChanged:Z

    if-nez v3, :cond_2

    if-eqz p8, :cond_3

    .line 660
    :cond_2
    if-eqz p9, :cond_4

    .line 661
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->endFile(Landroid/media/OppoMediaScanner$FileEntry;ZZZZZ)Landroid/net/Uri;

    move-result-object v19

    .line 704
    .end local v4           #entry:Landroid/media/OppoMediaScanner$FileEntry;
    :cond_3
    :goto_0
    return-object v19

    .line 663
    .restart local v4       #entry:Landroid/media/OppoMediaScanner$FileEntry;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    .line 664
    .local v18, lowpath:Ljava/lang/String;
    const-string v3, "/ringtones/"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_b

    const/4 v5, 0x1

    .line 665
    .local v5, ringtones:Z
    :goto_1
    const-string v3, "/notifications/"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_c

    const/4 v6, 0x1

    .line 666
    .local v6, notifications:Z
    :goto_2
    const-string v3, "/alarms/"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_d

    const/4 v7, 0x1

    .line 667
    .local v7, alarms:Z
    :goto_3
    const-string v3, "/podcasts/"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_e

    const/4 v9, 0x1

    .line 668
    .local v9, podcasts:Z
    :goto_4
    const-string v3, "/music/"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gtz v3, :cond_5

    if-nez v5, :cond_f

    if-nez v6, :cond_f

    if-nez v7, :cond_f

    if-nez v9, :cond_f

    :cond_5
    const/4 v8, 0x1

    .line 671
    .local v8, music:Z
    :goto_5
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mFileType:I

    invoke-static {v3}, Landroid/media/OppoMediaFile;->isAudioFileType(I)Z

    move-result v15

    .line 672
    .local v15, isaudio:Z
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mFileType:I

    invoke-static {v3}, Landroid/media/OppoMediaFile;->isVideoFileType(I)Z

    move-result v17

    .line 673
    .local v17, isvideo:Z
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mFileType:I

    invoke-static {v3}, Landroid/media/OppoMediaFile;->isImageFileType(I)Z

    move-result v16

    .line 675
    .local v16, isimage:Z
    if-nez v15, :cond_6

    if-nez v17, :cond_6

    if-eqz v16, :cond_7

    .line 676
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->this$0:Landroid/media/OppoMediaScanner;

    #getter for: Landroid/media/OppoMediaScanner;->mExternalIsEmulated:Z
    invoke-static {v3}, Landroid/media/OppoMediaScanner;->access$800(Landroid/media/OppoMediaScanner;)Z

    move-result v3

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->this$0:Landroid/media/OppoMediaScanner;

    #getter for: Landroid/media/OppoMediaScanner;->mExternalStoragePath:Ljava/lang/String;
    invoke-static {v3}, Landroid/media/OppoMediaScanner;->access$900(Landroid/media/OppoMediaScanner;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 678
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getMediaStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->this$0:Landroid/media/OppoMediaScanner;

    #getter for: Landroid/media/OppoMediaScanner;->mExternalStoragePath:Ljava/lang/String;
    invoke-static {v10}, Landroid/media/OppoMediaScanner;->access$900(Landroid/media/OppoMediaScanner;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 680
    .local v12, directPath:Ljava/lang/String;
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 681
    .local v14, f:Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 682
    move-object/from16 p1, v12

    .line 688
    .end local v12           #directPath:Ljava/lang/String;
    .end local v14           #f:Ljava/io/File;
    :cond_7
    if-nez v15, :cond_8

    if-eqz v17, :cond_9

    .line 689
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->this$0:Landroid/media/OppoMediaScanner;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    #calls: Landroid/media/OppoMediaScanner;->processFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V
    invoke-static {v3, v0, v1, v2}, Landroid/media/OppoMediaScanner;->access$1000(Landroid/media/OppoMediaScanner;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    .line 692
    :cond_9
    if-eqz v16, :cond_a

    .line 693
    invoke-direct/range {p0 .. p1}, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->processImageFile(Ljava/lang/String;)V

    :cond_a
    move-object/from16 v3, p0

    .line 696
    invoke-direct/range {v3 .. v9}, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->endFile(Landroid/media/OppoMediaScanner$FileEntry;ZZZZZ)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v19

    goto/16 :goto_0

    .line 664
    .end local v5           #ringtones:Z
    .end local v6           #notifications:Z
    .end local v7           #alarms:Z
    .end local v8           #music:Z
    .end local v9           #podcasts:Z
    .end local v15           #isaudio:Z
    .end local v16           #isimage:Z
    .end local v17           #isvideo:Z
    :cond_b
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 665
    .restart local v5       #ringtones:Z
    :cond_c
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 666
    .restart local v6       #notifications:Z
    :cond_d
    const/4 v7, 0x0

    goto/16 :goto_3

    .line 667
    .restart local v7       #alarms:Z
    :cond_e
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 668
    .restart local v9       #podcasts:Z
    :cond_f
    const/4 v8, 0x0

    goto/16 :goto_5

    .line 699
    .end local v4           #entry:Landroid/media/OppoMediaScanner$FileEntry;
    .end local v5           #ringtones:Z
    .end local v6           #notifications:Z
    .end local v7           #alarms:Z
    .end local v9           #podcasts:Z
    .end local v18           #lowpath:Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 700
    .local v13, e:Landroid/os/RemoteException;
    const-string v3, "OppoMediaScanner"

    const-string v10, "RemoteException in OppoMediaScanner.scanFile()"

    invoke-static {v3, v10, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method public getGenreName(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "genreTagValue"

    .prologue
    const/4 v7, 0x0

    const/16 v10, 0xff

    const/16 v9, 0x29

    .line 801
    if-nez p1, :cond_1

    .line 850
    :cond_0
    :goto_0
    return-object v7

    .line 804
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 806
    .local v4, length:I
    if-lez v4, :cond_9

    .line 807
    const/4 v6, 0x0

    .line 808
    .local v6, parenthesized:Z
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 809
    .local v5, number:Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .line 810
    .local v3, i:I
    :goto_1
    if-ge v3, v4, :cond_3

    .line 811
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 812
    .local v0, c:C
    if-nez v3, :cond_2

    const/16 v8, 0x28

    if-ne v0, v8, :cond_2

    .line 813
    const/4 v6, 0x1

    .line 810
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 814
    :cond_2
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 815
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 820
    .end local v0           #c:C
    :cond_3
    if-ge v3, v4, :cond_6

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 821
    .local v1, charAfterNumber:C
    :goto_3
    if-eqz v6, :cond_4

    if-eq v1, v9, :cond_5

    :cond_4
    if-nez v6, :cond_9

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 824
    :cond_5
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v2

    .line 825
    .local v2, genreIndex:S
    if-ltz v2, :cond_9

    .line 826
    invoke-static {}, Landroid/media/OppoMediaScanner;->access$1200()[Ljava/lang/String;

    move-result-object v8

    array-length v8, v8

    if-ge v2, v8, :cond_7

    .line 827
    invoke-static {}, Landroid/media/OppoMediaScanner;->access$1200()[Ljava/lang/String;

    move-result-object v8

    aget-object v7, v8, v2

    goto :goto_0

    .line 820
    .end local v1           #charAfterNumber:C
    .end local v2           #genreIndex:S
    :cond_6
    const/16 v1, 0x20

    goto :goto_3

    .line 828
    .restart local v1       #charAfterNumber:C
    .restart local v2       #genreIndex:S
    :cond_7
    if-eq v2, v10, :cond_0

    .line 830
    if-ge v2, v10, :cond_a

    add-int/lit8 v8, v3, 0x1

    if-ge v8, v4, :cond_a

    .line 833
    if-eqz v6, :cond_8

    if-ne v1, v9, :cond_8

    .line 834
    add-int/lit8 v3, v3, 0x1

    .line 836
    :cond_8
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 837
    .local v7, ret:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_0

    .end local v1           #charAfterNumber:C
    .end local v2           #genreIndex:S
    .end local v3           #i:I
    .end local v5           #number:Ljava/lang/StringBuffer;
    .end local v6           #parenthesized:Z
    .end local v7           #ret:Ljava/lang/String;
    :cond_9
    :goto_4
    move-object v7, p1

    .line 850
    goto :goto_0

    .line 842
    .restart local v1       #charAfterNumber:C
    .restart local v2       #genreIndex:S
    .restart local v3       #i:I
    .restart local v5       #number:Ljava/lang/StringBuffer;
    .restart local v6       #parenthesized:Z
    :cond_a
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto :goto_0

    .line 845
    .end local v2           #genreIndex:S
    :catch_0
    move-exception v8

    goto :goto_4
.end method

.method public handleStringTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "name"
    .parameter "value"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 726
    const-string v3, "title"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "title;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 730
    :cond_0
    iput-object p2, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mTitle:Ljava/lang/String;

    .line 771
    :cond_1
    :goto_0
    return-void

    .line 731
    :cond_2
    const-string v3, "artist"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "artist;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 732
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mArtist:Ljava/lang/String;

    goto :goto_0

    .line 733
    :cond_4
    const-string v3, "albumartist"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "albumartist;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "band"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "band;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 735
    :cond_5
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    goto :goto_0

    .line 736
    :cond_6
    const-string v3, "album"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "album;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 737
    :cond_7
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mAlbum:Ljava/lang/String;

    goto :goto_0

    .line 738
    :cond_8
    const-string v3, "composer"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "composer;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 739
    :cond_9
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mComposer:Ljava/lang/String;

    goto :goto_0

    .line 740
    :cond_a
    iget-object v3, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->this$0:Landroid/media/OppoMediaScanner;

    #getter for: Landroid/media/OppoMediaScanner;->mProcessGenres:Z
    invoke-static {v3}, Landroid/media/OppoMediaScanner;->access$1100(Landroid/media/OppoMediaScanner;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "genre"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "genre;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 742
    :cond_b
    invoke-virtual {p0, p2}, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->getGenreName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mGenre:Ljava/lang/String;

    goto/16 :goto_0

    .line 743
    :cond_c
    const-string v3, "year"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d

    const-string v3, "year;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 744
    :cond_d
    invoke-direct {p0, p2, v2, v2}, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mYear:I

    goto/16 :goto_0

    .line 745
    :cond_e
    const-string v3, "tracknumber"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f

    const-string v3, "tracknumber;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 748
    :cond_f
    invoke-direct {p0, p2, v2, v2}, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v0

    .line 749
    .local v0, num:I
    iget v1, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mTrack:I

    div-int/lit16 v1, v1, 0x3e8

    mul-int/lit16 v1, v1, 0x3e8

    add-int/2addr v1, v0

    iput v1, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mTrack:I

    goto/16 :goto_0

    .line 750
    .end local v0           #num:I
    :cond_10
    const-string v3, "discnumber"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_11

    const-string v3, "set"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    const-string v3, "set;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 754
    :cond_11
    invoke-direct {p0, p2, v2, v2}, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v0

    .line 755
    .restart local v0       #num:I
    mul-int/lit16 v1, v0, 0x3e8

    iget v2, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mTrack:I

    rem-int/lit16 v2, v2, 0x3e8

    add-int/2addr v1, v2

    iput v1, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mTrack:I

    goto/16 :goto_0

    .line 756
    .end local v0           #num:I
    :cond_12
    const-string v3, "duration"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 757
    invoke-direct {p0, p2, v2, v2}, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mDuration:I

    goto/16 :goto_0

    .line 758
    :cond_13
    const-string v3, "writer"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_14

    const-string v3, "writer;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 759
    :cond_14
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mWriter:Ljava/lang/String;

    goto/16 :goto_0

    .line 760
    :cond_15
    const-string v3, "compilation"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 761
    invoke-direct {p0, p2, v2, v2}, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mCompilation:I

    goto/16 :goto_0

    .line 762
    :cond_16
    const-string v3, "isdrm"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 763
    invoke-direct {p0, p2, v2, v2}, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_17

    :goto_1
    iput-boolean v1, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mIsDrm:Z

    goto/16 :goto_0

    :cond_17
    move v1, v2

    goto :goto_1

    .line 764
    :cond_18
    const-string v1, "width"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 765
    invoke-direct {p0, p2, v2, v2}, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mWidth:I

    goto/16 :goto_0

    .line 766
    :cond_19
    const-string v1, "height"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 767
    invoke-direct {p0, p2, v2, v2}, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mHeight:I

    goto/16 :goto_0
.end method

.method public scanFile(Ljava/lang/String;JJZZ)V
    .locals 12
    .parameter "path"
    .parameter "lastModified"
    .parameter "fileSize"
    .parameter "isDirectory"
    .parameter "noMedia"

    .prologue
    .line 624
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 626
    .local v10, beginTime:J
    const/4 v2, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-wide/from16 v5, p4

    move/from16 v7, p6

    move/from16 v9, p7

    invoke-virtual/range {v0 .. v9}, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;

    .line 633
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 2
    .parameter "mimeType"

    .prologue
    .line 866
    const-string v0, "audio/mp4"

    iget-object v1, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 891
    :cond_0
    :goto_0
    return-void

    .line 876
    :cond_1
    const-string v0, "video/x-flv"

    iget-object v1, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 882
    :cond_2
    const-string v0, "video/mp4"

    iget-object v1, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 889
    :cond_3
    iput-object p1, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 890
    invoke-static {p1}, Landroid/media/OppoMediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->mFileType:I

    goto :goto_0
.end method
