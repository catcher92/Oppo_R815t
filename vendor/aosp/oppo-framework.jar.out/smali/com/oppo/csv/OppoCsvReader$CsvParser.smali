.class Lcom/oppo/csv/OppoCsvReader$CsvParser;
.super Ljava/lang/Object;
.source "OppoCsvReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/csv/OppoCsvReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CsvParser"
.end annotation


# instance fields
.field private mCharset:Ljava/nio/charset/Charset;

.field private mClosed:Z

.field private mDelimiter:C

.field private mFileName:Ljava/lang/String;

.field private mFileSize:J

.field private mInitialized:Z

.field private mReader:Ljava/io/BufferedReader;

.field final synthetic this$0:Lcom/oppo/csv/OppoCsvReader;


# direct methods
.method public constructor <init>(Lcom/oppo/csv/OppoCsvReader;Ljava/io/InputStream;CLjava/nio/charset/Charset;)V
    .locals 1
    .parameter
    .parameter "inputStream"
    .parameter "delimiter"
    .parameter "charset"

    .prologue
    .line 285
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p2, p4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {p0, p1, v0, p3}, Lcom/oppo/csv/OppoCsvReader$CsvParser;-><init>(Lcom/oppo/csv/OppoCsvReader;Ljava/io/Reader;C)V

    .line 286
    return-void
.end method

.method public constructor <init>(Lcom/oppo/csv/OppoCsvReader;Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    .locals 1
    .parameter
    .parameter "inputStream"
    .parameter "charset"

    .prologue
    .line 289
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p2, p3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {p0, p1, v0}, Lcom/oppo/csv/OppoCsvReader$CsvParser;-><init>(Lcom/oppo/csv/OppoCsvReader;Ljava/io/Reader;)V

    .line 290
    return-void
.end method

.method public constructor <init>(Lcom/oppo/csv/OppoCsvReader;Ljava/io/Reader;)V
    .locals 1
    .parameter
    .parameter "inputStream"

    .prologue
    .line 300
    const/16 v0, 0x2c

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/csv/OppoCsvReader$CsvParser;-><init>(Lcom/oppo/csv/OppoCsvReader;Ljava/io/Reader;C)V

    .line 301
    return-void
.end method

.method public constructor <init>(Lcom/oppo/csv/OppoCsvReader;Ljava/io/Reader;C)V
    .locals 2
    .parameter
    .parameter "inputStreamReader"
    .parameter "delimiter"

    .prologue
    const/4 v1, 0x0

    .line 292
    iput-object p1, p0, Lcom/oppo/csv/OppoCsvReader$CsvParser;->this$0:Lcom/oppo/csv/OppoCsvReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/csv/OppoCsvReader$CsvParser;->mCharset:Ljava/nio/charset/Charset;

    .line 264
    iput-boolean v1, p0, Lcom/oppo/csv/OppoCsvReader$CsvParser;->mInitialized:Z

    .line 265
    iput-boolean v1, p0, Lcom/oppo/csv/OppoCsvReader$CsvParser;->mClosed:Z

    .line 293
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lcom/oppo/csv/OppoCsvReader$CsvParser;->mReader:Ljava/io/BufferedReader;

    .line 294
    iput-char p3, p0, Lcom/oppo/csv/OppoCsvReader$CsvParser;->mDelimiter:C

    .line 295
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/csv/OppoCsvReader$CsvParser;->mInitialized:Z

    .line 296
    invoke-virtual {p0}, Lcom/oppo/csv/OppoCsvReader$CsvParser;->parse()V

    .line 297
    return-void
.end method

.method public constructor <init>(Lcom/oppo/csv/OppoCsvReader;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "fileName"

    .prologue
    .line 281
    const/16 v0, 0x2c

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/csv/OppoCsvReader$CsvParser;-><init>(Lcom/oppo/csv/OppoCsvReader;Ljava/lang/String;C)V

    .line 282
    return-void
.end method

.method public constructor <init>(Lcom/oppo/csv/OppoCsvReader;Ljava/lang/String;C)V
    .locals 1
    .parameter
    .parameter "fileName"
    .parameter "delimiter"

    .prologue
    .line 277
    const-string v0, "ISO-8859-1"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oppo/csv/OppoCsvReader$CsvParser;-><init>(Lcom/oppo/csv/OppoCsvReader;Ljava/lang/String;CLjava/nio/charset/Charset;)V

    .line 278
    return-void
.end method

.method public constructor <init>(Lcom/oppo/csv/OppoCsvReader;Ljava/lang/String;CLjava/nio/charset/Charset;)V
    .locals 2
    .parameter
    .parameter "fileName"
    .parameter "delimiter"
    .parameter "charset"

    .prologue
    const/4 v1, 0x0

    .line 267
    iput-object p1, p0, Lcom/oppo/csv/OppoCsvReader$CsvParser;->this$0:Lcom/oppo/csv/OppoCsvReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/csv/OppoCsvReader$CsvParser;->mCharset:Ljava/nio/charset/Charset;

    .line 264
    iput-boolean v1, p0, Lcom/oppo/csv/OppoCsvReader$CsvParser;->mInitialized:Z

    .line 265
    iput-boolean v1, p0, Lcom/oppo/csv/OppoCsvReader$CsvParser;->mClosed:Z

    .line 268
    iput-object p2, p0, Lcom/oppo/csv/OppoCsvReader$CsvParser;->mFileName:Ljava/lang/String;

    .line 270
    iput-char p3, p0, Lcom/oppo/csv/OppoCsvReader$CsvParser;->mDelimiter:C

    .line 271
    iput-object p4, p0, Lcom/oppo/csv/OppoCsvReader$CsvParser;->mCharset:Ljava/nio/charset/Charset;

    .line 272
    iput-boolean v1, p0, Lcom/oppo/csv/OppoCsvReader$CsvParser;->mInitialized:Z

    .line 273
    invoke-virtual {p0}, Lcom/oppo/csv/OppoCsvReader$CsvParser;->parse()V

    .line 274
    return-void
.end method

.method static synthetic access$000(Lcom/oppo/csv/OppoCsvReader$CsvParser;)Z
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 257
    invoke-direct {p0}, Lcom/oppo/csv/OppoCsvReader$CsvParser;->movetoFirstLine()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/oppo/csv/OppoCsvReader$CsvParser;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 257
    invoke-direct {p0}, Lcom/oppo/csv/OppoCsvReader$CsvParser;->getNextLine()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/oppo/csv/OppoCsvReader$CsvParser;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 257
    invoke-direct {p0}, Lcom/oppo/csv/OppoCsvReader$CsvParser;->getFileLength()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$300(Lcom/oppo/csv/OppoCsvReader$CsvParser;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 257
    invoke-direct {p0}, Lcom/oppo/csv/OppoCsvReader$CsvParser;->close()V

    return-void
.end method

.method static synthetic access$400(Lcom/oppo/csv/OppoCsvReader$CsvParser;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 257
    invoke-direct {p0}, Lcom/oppo/csv/OppoCsvReader$CsvParser;->getTitleLine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private checkClosed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 643
    iget-boolean v0, p0, Lcom/oppo/csv/OppoCsvReader$CsvParser;->mClosed:Z

    if-eqz v0, :cond_0

    .line 644
    new-instance v0, Ljava/io/IOException;

    const-string v1, "This instance of the OppoCsvReader class has already been closed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 647
    :cond_0
    return-void
.end method

.method private close()V
    .locals 1

    .prologue
    .line 479
    iget-boolean v0, p0, Lcom/oppo/csv/OppoCsvReader$CsvParser;->mClosed:Z

    if-nez v0, :cond_1

    .line 481
    :try_start_0
    iget-boolean v0, p0, Lcom/oppo/csv/OppoCsvReader$CsvParser;->mInitialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/csv/OppoCsvReader$CsvParser;->mReader:Ljava/io/BufferedReader;

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/oppo/csv/OppoCsvReader$CsvParser;->mReader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 488
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/csv/OppoCsvReader$CsvParser;->mReader:Ljava/io/BufferedReader;

    .line 490
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/csv/OppoCsvReader$CsvParser;->mClosed:Z

    .line 492
    :cond_1
    return-void

    .line 484
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private getBufferedReader()Ljava/io/BufferedReader;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/oppo/csv/OppoCsvReader$CsvParser;->mReader:Ljava/io/BufferedReader;

    return-object v0
.end method

.method private getFileLength()J
    .locals 2

    .prologue
    .line 382
    iget-wide v0, p0, Lcom/oppo/csv/OppoCsvReader$CsvParser;->mFileSize:J

    return-wide v0
.end method

.method private getNextLine()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 529
    invoke-direct {p0}, Lcom/oppo/csv/OppoCsvReader$CsvParser;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 530
    .local v1, line:Ljava/lang/String;
    move-object v0, v1

    .line 531
    .local v0, data:Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 532
    #calls: Lcom/oppo/csv/OppoCsvReader;->checkQuotes(Ljava/lang/String;)Z
    invoke-static {v0}, Lcom/oppo/csv/OppoCsvReader;->access$700(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 542
    :cond_1
    invoke-direct {p0, v0}, Lcom/oppo/csv/OppoCsvReader$CsvParser;->parseLine(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 535
    :cond_2
    invoke-direct {p0}, Lcom/oppo/csv/OppoCsvReader$CsvParser;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 536
    if-eqz v1, :cond_0

    .line 537
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getTitleLine()Ljava/lang/String;
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/oppo/csv/OppoCsvReader$CsvParser;->this$0:Lcom/oppo/csv/OppoCsvReader;

    #getter for: Lcom/oppo/csv/OppoCsvReader;->mTitle:Ljava/lang/String;
    invoke-static {v0}, Lcom/oppo/csv/OppoCsvReader;->access$500(Lcom/oppo/csv/OppoCsvReader;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initBufferedReader()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x0

    .line 326
    iput-wide v7, p0, Lcom/oppo/csv/OppoCsvReader$CsvParser;->mFileSize:J

    .line 328
    iget-object v5, p0, Lcom/oppo/csv/OppoCsvReader$CsvParser;->mFileName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    new-instance v2, Ljava/io/File;

    iget-object v5, p0, Lcom/oppo/csv/OppoCsvReader$CsvParser;->mFileName:Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 333
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    .line 334
    const-string v5, "OppoCsvReader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Not exist the File : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/oppo/csv/OppoCsvReader$CsvParser;->mFileName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 338
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/oppo/csv/OppoCsvReader$CsvParser;->mFileSize:J

    .line 339
    iget-wide v5, p0, Lcom/oppo/csv/OppoCsvReader$CsvParser;->mFileSize:J

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    .line 343
    invoke-virtual {p0, v2}, Lcom/oppo/csv/OppoCsvReader$CsvParser;->getCharset(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 344
    .local v1, encoding:Ljava/lang/String;
    const-string v5, "OppoCsvReader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "encoding==="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    if-eqz v1, :cond_0

    .line 350
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 352
    .local v4, fis:Ljava/io/FileInputStream;
    invoke-virtual {p0, v1}, Lcom/oppo/csv/OppoCsvReader$CsvParser;->getFileHeadLen(Ljava/lang/String;)I

    move-result v3

    .line 353
    .local v3, fileHeadLen:I
    if-lez v3, :cond_3

    .line 354
    int-to-long v5, v3

    invoke-virtual {v4, v5, v6}, Ljava/io/FileInputStream;->skip(J)J
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 358
    :cond_3
    :try_start_1
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v4, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v5, p0, Lcom/oppo/csv/OppoCsvReader$CsvParser;->mReader:Ljava/io/BufferedReader;

    .line 360
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/oppo/csv/OppoCsvReader$CsvParser;->mCharset:Ljava/nio/charset/Charset;

    .line 361
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/oppo/csv/OppoCsvReader$CsvParser;->mInitialized:Z
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 362
    :catch_0
    move-exception v0

    .line 363
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 365
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    .end local v3           #fileHeadLen:I
    .end local v4           #fis:Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    .line 366
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 367
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v0

    .line 368
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private movetoFirstLine()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 501
    invoke-direct {p0}, Lcom/oppo/csv/OppoCsvReader$CsvParser;->checkClosed()V

    .line 502
    const/4 v1, 0x1

    .line 504
    .local v1, ret:Z
    :try_start_0
    invoke-direct {p0}, Lcom/oppo/csv/OppoCsvReader$CsvParser;->reset()V

    .line 505
    invoke-direct {p0}, Lcom/oppo/csv/OppoCsvReader$CsvParser;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 511
    :goto_0
    return v1

    .line 506
    :catch_0
    move-exception v0

    .line 507
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 508
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private parseLine(Ljava/lang/String;)[Ljava/lang/String;
    .locals 12
    .parameter "line"

    .prologue
    .line 573
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 574
    const/4 v1, 0x0

    .line 636
    :cond_0
    return-object v1

    .line 577
    :cond_1
    const/4 v5, 0x0

    .line 578
    .local v5, i:I
    const/4 v2, 0x0

    .line 579
    .local v2, end:I
    const/4 v8, 0x0

    .line 581
    .local v8, lastPos:I
    const-string v0, "\""

    .line 582
    .local v0, beginMark:Ljava/lang/String;
    const-string v3, "\","

    .line 583
    .local v3, endMark1:Ljava/lang/String;
    const-string v4, ","

    .line 584
    .local v4, endMark2:Ljava/lang/String;
    const-string v9, ""

    .line 585
    .local v9, result:Ljava/lang/String;
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 586
    .local v10, temp:Ljava/lang/String;
    iget-object v11, p0, Lcom/oppo/csv/OppoCsvReader$CsvParser;->this$0:Lcom/oppo/csv/OppoCsvReader;

    #getter for: Lcom/oppo/csv/OppoCsvReader;->mColumns:I
    invoke-static {v11}, Lcom/oppo/csv/OppoCsvReader;->access$600(Lcom/oppo/csv/OppoCsvReader;)I

    move-result v11

    new-array v1, v11, [Ljava/lang/String;

    .line 588
    .local v1, element:[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, j:I
    :goto_0
    iget-object v11, p0, Lcom/oppo/csv/OppoCsvReader$CsvParser;->this$0:Lcom/oppo/csv/OppoCsvReader;

    #getter for: Lcom/oppo/csv/OppoCsvReader;->mColumns:I
    invoke-static {v11}, Lcom/oppo/csv/OppoCsvReader;->access$600(Lcom/oppo/csv/OppoCsvReader;)I

    move-result v11

    if-eq v7, v11, :cond_8

    .line 589
    const/4 v11, 0x0

    aput-object v11, v1, v7

    .line 588
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 599
    .end local v5           #i:I
    .local v6, i:I
    :cond_2
    move-object v9, v10

    .line 600
    const/4 p1, 0x0

    .line 620
    :cond_3
    :goto_1
    #calls: Lcom/oppo/csv/OppoCsvReader;->clearQuotes(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v9}, Lcom/oppo/csv/OppoCsvReader;->access$800(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 633
    :goto_2
    add-int/lit8 v5, v6, 0x1

    .end local v6           #i:I
    .restart local v5       #i:I
    aput-object v9, v1, v6

    move v6, v5

    .line 592
    .end local v5           #i:I
    .restart local v6       #i:I
    :goto_3
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/oppo/csv/OppoCsvReader$CsvParser;->this$0:Lcom/oppo/csv/OppoCsvReader;

    #getter for: Lcom/oppo/csv/OppoCsvReader;->mColumns:I
    invoke-static {v11}, Lcom/oppo/csv/OppoCsvReader;->access$600(Lcom/oppo/csv/OppoCsvReader;)I

    move-result v11

    if-ge v6, v11, :cond_0

    .line 593
    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 594
    :cond_4
    :goto_4
    const/4 v11, -0x1

    if-eq v2, v11, :cond_3

    .line 595
    invoke-virtual {v10, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 596
    const/4 v11, -0x1

    if-eq v2, v11, :cond_2

    .line 597
    add-int/lit8 v11, v2, 0x1

    add-int/2addr v8, v11

    .line 604
    const/4 v11, 0x0

    invoke-virtual {p1, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 605
    #calls: Lcom/oppo/csv/OppoCsvReader;->checkQuotes(Ljava/lang/String;)Z
    invoke-static {v9}, Lcom/oppo/csv/OppoCsvReader;->access$700(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 606
    add-int/lit8 v11, v8, 0x1

    invoke-virtual {p1, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 607
    move-object v10, p1

    .line 608
    const/4 v8, 0x0

    .line 609
    goto :goto_1

    .line 611
    :cond_5
    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 612
    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 613
    move-object v9, p1

    .line 614
    const/4 p1, 0x0

    goto :goto_4

    .line 622
    :cond_6
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 623
    const/4 v11, -0x1

    if-ne v2, v11, :cond_7

    .line 624
    move-object v9, p1

    .line 625
    const/4 p1, 0x0

    goto :goto_2

    .line 627
    :cond_7
    const/4 v11, 0x0

    invoke-virtual {p1, v11, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 628
    add-int/lit8 v11, v2, 0x1

    invoke-virtual {p1, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 629
    move-object v10, p1

    goto :goto_2

    .end local v6           #i:I
    .restart local v5       #i:I
    :cond_8
    move v6, v5

    .end local v5           #i:I
    .restart local v6       #i:I
    goto :goto_3
.end method

.method private readLine()Ljava/lang/String;
    .locals 3

    .prologue
    .line 551
    iget-object v2, p0, Lcom/oppo/csv/OppoCsvReader$CsvParser;->mReader:Ljava/io/BufferedReader;

    if-nez v2, :cond_0

    .line 552
    const/4 v1, 0x0

    .line 562
    :goto_0
    return-object v1

    .line 555
    :cond_0
    const/4 v1, 0x0

    .line 557
    .local v1, line:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/oppo/csv/OppoCsvReader$CsvParser;->mReader:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 558
    :catch_0
    move-exception v0

    .line 559
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 377
    invoke-direct {p0}, Lcom/oppo/csv/OppoCsvReader$CsvParser;->checkClosed()V

    .line 378
    iget-object v0, p0, Lcom/oppo/csv/OppoCsvReader$CsvParser;->mReader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->reset()V

    .line 379
    return-void
.end method


# virtual methods
.method public getCharset(Ljava/io/File;)Ljava/lang/String;
    .locals 4
    .parameter "file"

    .prologue
    .line 396
    const/4 v1, 0x0

    .line 398
    .local v1, fileInputStream:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #fileInputStream:Ljava/io/FileInputStream;
    .local v2, fileInputStream:Ljava/io/FileInputStream;
    move-object v1, v2

    .line 404
    .end local v2           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v1       #fileInputStream:Ljava/io/FileInputStream;
    :goto_0
    invoke-virtual {p0, v1}, Lcom/oppo/csv/OppoCsvReader$CsvParser;->getCharset(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 399
    :catch_0
    move-exception v0

    .line 401
    .local v0, e1:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getCharset(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 10
    .parameter "inputStream"

    .prologue
    const/4 v9, -0x2

    const/4 v8, 0x3

    const/4 v7, -0x1

    .line 414
    const-string v1, "GBK"

    .line 415
    .local v1, charset:Ljava/lang/String;
    new-array v3, v8, [B

    .line 418
    .local v3, firstThreeBytes:[B
    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 419
    .local v0, buff:Ljava/io/BufferedInputStream;
    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v0, v3, v5, v6}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v4

    .line 420
    .local v4, readBytesNum:I
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 422
    if-ne v7, v4, :cond_0

    .line 423
    const/4 v5, 0x0

    .line 442
    .end local v0           #buff:Ljava/io/BufferedInputStream;
    .end local v4           #readBytesNum:I
    :goto_0
    return-object v5

    .line 424
    .restart local v0       #buff:Ljava/io/BufferedInputStream;
    .restart local v4       #readBytesNum:I
    :cond_0
    const/4 v5, 0x2

    if-gt v5, v4, :cond_2

    .line 425
    const/4 v5, 0x0

    aget-byte v5, v3, v5

    if-ne v5, v7, :cond_3

    const/4 v5, 0x1

    aget-byte v5, v3, v5

    if-ne v5, v9, :cond_3

    .line 426
    const-string v1, "UTF-16LE"

    .line 432
    :cond_1
    :goto_1
    if-ne v8, v4, :cond_2

    const/4 v5, 0x0

    aget-byte v5, v3, v5

    const/16 v6, -0x11

    if-ne v5, v6, :cond_2

    const/4 v5, 0x1

    aget-byte v5, v3, v5

    const/16 v6, -0x45

    if-ne v5, v6, :cond_2

    const/4 v5, 0x2

    aget-byte v5, v3, v5

    const/16 v6, -0x41

    if-ne v5, v6, :cond_2

    .line 435
    const-string v1, "UTF-8"

    .end local v0           #buff:Ljava/io/BufferedInputStream;
    .end local v4           #readBytesNum:I
    :cond_2
    :goto_2
    move-object v5, v1

    .line 442
    goto :goto_0

    .line 427
    .restart local v0       #buff:Ljava/io/BufferedInputStream;
    .restart local v4       #readBytesNum:I
    :cond_3
    const/4 v5, 0x0

    aget-byte v5, v3, v5

    if-ne v5, v9, :cond_1

    const/4 v5, 0x1

    aget-byte v5, v3, v5

    if-ne v5, v7, :cond_1

    .line 429
    const-string v1, "UTF-16BE"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 438
    .end local v0           #buff:Ljava/io/BufferedInputStream;
    .end local v4           #readBytesNum:I
    :catch_0
    move-exception v2

    .line 439
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method public getFileHeadLen(Ljava/lang/String;)I
    .locals 2
    .parameter "charsetName"

    .prologue
    const/4 v0, 0x0

    .line 452
    const-string v1, "UTF-16LE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "UTF-16BE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 454
    :cond_0
    const/4 v0, 0x2

    .line 461
    :cond_1
    :goto_0
    return v0

    .line 455
    :cond_2
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 456
    const/4 v0, 0x3

    goto :goto_0

    .line 457
    :cond_3
    const-string v1, "GBK"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0
.end method

.method public getTitle()[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 471
    invoke-direct {p0}, Lcom/oppo/csv/OppoCsvReader$CsvParser;->checkClosed()V

    .line 472
    iget-object v0, p0, Lcom/oppo/csv/OppoCsvReader$CsvParser;->this$0:Lcom/oppo/csv/OppoCsvReader;

    #getter for: Lcom/oppo/csv/OppoCsvReader;->mTitle:Ljava/lang/String;
    invoke-static {v0}, Lcom/oppo/csv/OppoCsvReader;->access$500(Lcom/oppo/csv/OppoCsvReader;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oppo/csv/OppoCsvReader$CsvParser;->parseLine(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public parse()V
    .locals 3

    .prologue
    .line 307
    iget-boolean v1, p0, Lcom/oppo/csv/OppoCsvReader$CsvParser;->mInitialized:Z

    if-nez v1, :cond_0

    .line 308
    invoke-direct {p0}, Lcom/oppo/csv/OppoCsvReader$CsvParser;->initBufferedReader()V

    .line 312
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/oppo/csv/OppoCsvReader$CsvParser;->mReader:Ljava/io/BufferedReader;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/io/BufferedReader;->mark(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    :goto_0
    iget-object v1, p0, Lcom/oppo/csv/OppoCsvReader$CsvParser;->this$0:Lcom/oppo/csv/OppoCsvReader;

    invoke-direct {p0}, Lcom/oppo/csv/OppoCsvReader$CsvParser;->readLine()Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/oppo/csv/OppoCsvReader;->mTitle:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/oppo/csv/OppoCsvReader;->access$502(Lcom/oppo/csv/OppoCsvReader;Ljava/lang/String;)Ljava/lang/String;

    .line 319
    iget-object v1, p0, Lcom/oppo/csv/OppoCsvReader$CsvParser;->this$0:Lcom/oppo/csv/OppoCsvReader;

    iget-object v2, p0, Lcom/oppo/csv/OppoCsvReader$CsvParser;->this$0:Lcom/oppo/csv/OppoCsvReader;

    #getter for: Lcom/oppo/csv/OppoCsvReader;->mTitle:Ljava/lang/String;
    invoke-static {v2}, Lcom/oppo/csv/OppoCsvReader;->access$500(Lcom/oppo/csv/OppoCsvReader;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/oppo/csv/OppoCsvReader;->getColumns(Ljava/lang/String;)I

    move-result v2

    #setter for: Lcom/oppo/csv/OppoCsvReader;->mColumns:I
    invoke-static {v1, v2}, Lcom/oppo/csv/OppoCsvReader;->access$602(Lcom/oppo/csv/OppoCsvReader;I)I

    .line 323
    return-void

    .line 313
    :catch_0
    move-exception v0

    .line 315
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
