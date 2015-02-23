.class public Lcom/oppo/app/OppoDownloadInterface;
.super Ljava/lang/Object;
.source "OppoDownloadInterface.java"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "OppoDownloadInterface"


# instance fields
.field contentUri:Landroid/net/Uri;

.field private cursor:Landroid/database/Cursor;

.field cw:Landroid/content/ContextWrapper;

.field private downloadId:J

.field private downloadProgress:J

.field mContext:Landroid/content/Context;

.field private mDateSortedCursor:Landroid/database/Cursor;

.field private mDownloadManager:Landroid/app/DownloadManager;

.field private mIdColumnId:I

.field private mLocalUriColumnId:I

.field private mMediaProviderUriId:I

.field private mMediaTypeColumnId:I

.field private mReasonColumndId:I

.field private mSizeSortedCursor:Landroid/database/Cursor;

.field private mStatusColumnId:I

.field private mUpdateCursor:Landroid/database/Cursor;

.field private mgr:Landroid/app/DownloadManager;

.field private totalBytes:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "ctx"

    .prologue
    const-wide/16 v1, -0x1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/app/OppoDownloadInterface;->mgr:Landroid/app/DownloadManager;

    .line 52
    iput-wide v1, p0, Lcom/oppo/app/OppoDownloadInterface;->downloadProgress:J

    .line 53
    iput-wide v1, p0, Lcom/oppo/app/OppoDownloadInterface;->totalBytes:J

    .line 62
    iput-object p1, p0, Lcom/oppo/app/OppoDownloadInterface;->mContext:Landroid/content/Context;

    .line 63
    iget-object v0, p0, Lcom/oppo/app/OppoDownloadInterface;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oppo/app/OppoDownloadInterface;->mContext:Landroid/content/Context;

    const-string v1, "download"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    iput-object v0, p0, Lcom/oppo/app/OppoDownloadInterface;->mgr:Landroid/app/DownloadManager;

    .line 64
    new-instance v0, Landroid/content/ContextWrapper;

    iget-object v1, p0, Lcom/oppo/app/OppoDownloadInterface;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oppo/app/OppoDownloadInterface;->cw:Landroid/content/ContextWrapper;

    .line 65
    return-void
.end method

.method private static encodeFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "FileName"

    .prologue
    .line 266
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 267
    .local v0, chars:[C
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 268
    .local v2, mlength:I
    new-array v3, v2, [C

    .line 269
    .local v3, newString:[C
    const/4 v1, 0x7

    .local v1, i:I
    :goto_0
    if-gt v1, v2, :cond_0

    .line 270
    add-int/lit8 v4, v1, -0x7

    aget-char v5, v0, v1

    aput-char v5, v3, v4

    .line 269
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 272
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static encodePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "path"

    .prologue
    const/16 v9, 0x5d

    const/16 v8, 0x5b

    .line 240
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 242
    .local v2, chars:[C
    const/4 v5, 0x0

    .line 243
    .local v5, needed:Z
    move-object v0, v2

    .local v0, arr$:[C
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-char v1, v0, v3

    .line 244
    .local v1, c:C
    if-eq v1, v8, :cond_0

    if-ne v1, v9, :cond_2

    .line 245
    :cond_0
    const/4 v5, 0x1

    .line 249
    .end local v1           #c:C
    :cond_1
    if-nez v5, :cond_3

    .line 262
    .end local p0
    :goto_1
    return-object p0

    .line 243
    .restart local v1       #c:C
    .restart local p0
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 253
    .end local v1           #c:C
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, ""

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 254
    .local v6, sb:Ljava/lang/StringBuilder;
    move-object v0, v2

    array-length v4, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_6

    aget-char v1, v0, v3

    .line 255
    .restart local v1       #c:C
    if-eq v1, v8, :cond_4

    if-ne v1, v9, :cond_5

    .line 256
    :cond_4
    const/16 v7, 0x25

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 257
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 259
    :cond_5
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 262
    .end local v1           #c:C
    :cond_6
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1
.end method


# virtual methods
.method public cancelDownload(J)V
    .locals 3
    .parameter "downloadId"

    .prologue
    .line 208
    iget-object v0, p0, Lcom/oppo/app/OppoDownloadInterface;->mgr:Landroid/app/DownloadManager;

    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v2, 0x0

    aput-wide p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager;->remove([J)I

    .line 209
    return-void
.end method

.method public getDestinationFilePath(J)Ljava/lang/String;
    .locals 9
    .parameter "downloadId"

    .prologue
    const/4 v8, 0x0

    .line 219
    :try_start_0
    iget-object v0, p0, Lcom/oppo/app/OppoDownloadInterface;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/app/OppoDownloadInterface;->cursor:Landroid/database/Cursor;

    .line 222
    iget-object v0, p0, Lcom/oppo/app/OppoDownloadInterface;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/app/OppoDownloadInterface;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    iget-object v0, p0, Lcom/oppo/app/OppoDownloadInterface;->cursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/oppo/app/OppoDownloadInterface;->cursor:Landroid/database/Cursor;

    const-string v2, "_data"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 231
    .local v6, FileName:Ljava/lang/String;
    iget-object v0, p0, Lcom/oppo/app/OppoDownloadInterface;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/oppo/app/OppoDownloadInterface;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 233
    iput-object v8, p0, Lcom/oppo/app/OppoDownloadInterface;->cursor:Landroid/database/Cursor;

    .line 236
    .end local v6           #FileName:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v6

    .line 231
    :cond_1
    iget-object v0, p0, Lcom/oppo/app/OppoDownloadInterface;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    .line 232
    iget-object v0, p0, Lcom/oppo/app/OppoDownloadInterface;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 233
    iput-object v8, p0, Lcom/oppo/app/OppoDownloadInterface;->cursor:Landroid/database/Cursor;

    :cond_2
    :goto_1
    move-object v6, v8

    .line 236
    goto :goto_0

    .line 228
    :catch_0
    move-exception v7

    .line 229
    .local v7, ex:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 231
    iget-object v0, p0, Lcom/oppo/app/OppoDownloadInterface;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    .line 232
    iget-object v0, p0, Lcom/oppo/app/OppoDownloadInterface;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 233
    iput-object v8, p0, Lcom/oppo/app/OppoDownloadInterface;->cursor:Landroid/database/Cursor;

    goto :goto_1

    .line 231
    .end local v7           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/oppo/app/OppoDownloadInterface;->cursor:Landroid/database/Cursor;

    if-eqz v1, :cond_3

    .line 232
    iget-object v1, p0, Lcom/oppo/app/OppoDownloadInterface;->cursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 233
    iput-object v8, p0, Lcom/oppo/app/OppoDownloadInterface;->cursor:Landroid/database/Cursor;

    :cond_3
    throw v0
.end method

.method public getDownloadProgress(J)J
    .locals 4
    .parameter "downloadId"

    .prologue
    .line 115
    iget-wide v0, p0, Lcom/oppo/app/OppoDownloadInterface;->totalBytes:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 116
    const-wide/16 v0, -0x1

    .line 121
    :goto_0
    return-wide v0

    .line 118
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/oppo/app/OppoDownloadInterface;->getDownloadStatus(J)J

    .line 121
    iget-wide v0, p0, Lcom/oppo/app/OppoDownloadInterface;->downloadProgress:J

    goto :goto_0
.end method

.method public getDownloadStatus(J)J
    .locals 11
    .parameter "downloadId"

    .prologue
    const/4 v10, 0x0

    .line 130
    const-wide/16 v6, 0x0

    .line 131
    .local v6, currentBytes:J
    const/4 v8, -0x1

    .line 133
    .local v8, downloadStatus:I
    :try_start_0
    iget-object v0, p0, Lcom/oppo/app/OppoDownloadInterface;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/app/OppoDownloadInterface;->mUpdateCursor:Landroid/database/Cursor;

    .line 136
    iget-object v0, p0, Lcom/oppo/app/OppoDownloadInterface;->mUpdateCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/app/OppoDownloadInterface;->mUpdateCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/oppo/app/OppoDownloadInterface;->mUpdateCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/oppo/app/OppoDownloadInterface;->mUpdateCursor:Landroid/database/Cursor;

    const-string v2, "total_bytes"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oppo/app/OppoDownloadInterface;->totalBytes:J

    .line 139
    iget-object v0, p0, Lcom/oppo/app/OppoDownloadInterface;->mUpdateCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/oppo/app/OppoDownloadInterface;->mUpdateCursor:Landroid/database/Cursor;

    const-string v2, "current_bytes"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 141
    iget-object v0, p0, Lcom/oppo/app/OppoDownloadInterface;->mUpdateCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/oppo/app/OppoDownloadInterface;->mUpdateCursor:Landroid/database/Cursor;

    const-string v2, "status"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/oppo/app/OppoDownloadInterface;->mUpdateCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/oppo/app/OppoDownloadInterface;->mUpdateCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 157
    iput-object v10, p0, Lcom/oppo/app/OppoDownloadInterface;->mUpdateCursor:Landroid/database/Cursor;

    .line 161
    :cond_1
    :goto_0
    const-wide/16 v0, 0x64

    mul-long/2addr v0, v6

    iget-wide v2, p0, Lcom/oppo/app/OppoDownloadInterface;->totalBytes:J

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/oppo/app/OppoDownloadInterface;->downloadProgress:J

    .line 165
    int-to-long v0, v8

    return-wide v0

    .line 152
    :catch_0
    move-exception v9

    .line 153
    .local v9, ex:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    iget-object v0, p0, Lcom/oppo/app/OppoDownloadInterface;->mUpdateCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/oppo/app/OppoDownloadInterface;->mUpdateCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 157
    iput-object v10, p0, Lcom/oppo/app/OppoDownloadInterface;->mUpdateCursor:Landroid/database/Cursor;

    goto :goto_0

    .line 155
    .end local v9           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/oppo/app/OppoDownloadInterface;->mUpdateCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_2

    .line 156
    iget-object v1, p0, Lcom/oppo/app/OppoDownloadInterface;->mUpdateCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 157
    iput-object v10, p0, Lcom/oppo/app/OppoDownloadInterface;->mUpdateCursor:Landroid/database/Cursor;

    :cond_2
    throw v0
.end method

.method public pauseDownload(J)V
    .locals 5
    .parameter "downloadId"

    .prologue
    const/4 v4, 0x0

    .line 176
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 177
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "control"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 178
    iget-object v2, p0, Lcom/oppo/app/OppoDownloadInterface;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 181
    .local v0, pauseRow:I
    return-void
.end method

.method public resumeDownload(J)V
    .locals 5
    .parameter "downloadId"

    .prologue
    const/4 v4, 0x0

    .line 191
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 192
    .local v0, resumeValues:Landroid/content/ContentValues;
    const-string v2, "control"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 193
    const-string v2, "status"

    const/16 v3, 0xbe

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 194
    iget-object v2, p0, Lcom/oppo/app/OppoDownloadInterface;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 198
    .local v1, rowResume:I
    return-void
.end method

.method public startDownload(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 6
    .parameter "productid"
    .parameter "Url"
    .parameter "dirType"
    .parameter "subPath"

    .prologue
    .line 75
    monitor-enter p0

    .line 77
    :try_start_0
    new-instance v3, Landroid/net/WebAddress;

    invoke-direct {v3, p3}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V

    .line 80
    .local v3, webAddress:Landroid/net/WebAddress;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 81
    .local v2, values:Landroid/content/ContentValues;
    const-string v4, "uri"

    invoke-virtual {v3}, Landroid/net/WebAddress;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    if-eqz p5, :cond_1

    if-eqz p4, :cond_1

    .line 83
    const-string v4, "visibility"

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 85
    invoke-static {p4}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 86
    .local v0, base:Ljava/io/File;
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4, p5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 87
    .local v1, mDestinationUri:Landroid/net/Uri;
    const-string v4, "destination"

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 88
    const-string v4, "hint"

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .end local v0           #base:Ljava/io/File;
    .end local v1           #mDestinationUri:Landroid/net/Uri;
    :goto_0
    iget-object v4, p0, Lcom/oppo/app/OppoDownloadInterface;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/oppo/app/OppoDownloadInterface;->contentUri:Landroid/net/Uri;

    .line 104
    iget-object v4, p0, Lcom/oppo/app/OppoDownloadInterface;->contentUri:Landroid/net/Uri;

    if-eqz v4, :cond_0

    .line 105
    iget-object v4, p0, Lcom/oppo/app/OppoDownloadInterface;->contentUri:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/oppo/app/OppoDownloadInterface;->downloadId:J

    .line 107
    :cond_0
    iget-wide v4, p0, Lcom/oppo/app/OppoDownloadInterface;->downloadId:J

    monitor-exit p0

    return-wide v4

    .line 90
    :cond_1
    const-string v4, "visibility"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 91
    const-string v4, "destination"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 108
    .end local v2           #values:Landroid/content/ContentValues;
    .end local v3           #webAddress:Landroid/net/WebAddress;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method
