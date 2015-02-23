.class public Lcom/oppo/csv/OppoCsvReader;
.super Ljava/lang/Object;
.source "OppoCsvReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/csv/OppoCsvReader$CsvConstant;,
        Lcom/oppo/csv/OppoCsvReader$CsvParser;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "OppoCsvReader"


# instance fields
.field private mColumns:I

.field private mParserText:Lcom/oppo/csv/OppoCsvReader$CsvParser;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;CLjava/nio/charset/Charset;)V
    .locals 1
    .parameter "inputStream"
    .parameter "delimiter"
    .parameter "charset"

    .prologue
    .line 133
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1, p3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {p0, v0, p2}, Lcom/oppo/csv/OppoCsvReader;-><init>(Ljava/io/Reader;C)V

    .line 134
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    .locals 1
    .parameter "inputStream"
    .parameter "charset"

    .prologue
    .line 145
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {p0, v0}, Lcom/oppo/csv/OppoCsvReader;-><init>(Ljava/io/Reader;)V

    .line 146
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1
    .parameter "inputStream"

    .prologue
    .line 121
    const/16 v0, 0x2c

    invoke-direct {p0, p1, v0}, Lcom/oppo/csv/OppoCsvReader;-><init>(Ljava/io/Reader;C)V

    .line 122
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;C)V
    .locals 2
    .parameter "inputStreamReader"
    .parameter "delimiter"

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/csv/OppoCsvReader;->mColumns:I

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/csv/OppoCsvReader;->mTitle:Ljava/lang/String;

    .line 106
    if-nez p1, :cond_0

    .line 107
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter inputStream can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_0
    new-instance v0, Lcom/oppo/csv/OppoCsvReader$CsvParser;

    invoke-direct {v0, p0, p1, p2}, Lcom/oppo/csv/OppoCsvReader$CsvParser;-><init>(Lcom/oppo/csv/OppoCsvReader;Ljava/io/Reader;C)V

    iput-object v0, p0, Lcom/oppo/csv/OppoCsvReader;->mParserText:Lcom/oppo/csv/OppoCsvReader$CsvParser;

    .line 111
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 95
    const/16 v0, 0x2c

    invoke-direct {p0, p1, v0}, Lcom/oppo/csv/OppoCsvReader;-><init>(Ljava/lang/String;C)V

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;C)V
    .locals 1
    .parameter "fileName"
    .parameter "delimiter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 84
    const-string v0, "ISO-8859-1"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/csv/OppoCsvReader;-><init>(Ljava/lang/String;CLjava/nio/charset/Charset;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;CLjava/nio/charset/Charset;)V
    .locals 3
    .parameter "fileName"
    .parameter "delimiter"
    .parameter "charset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/csv/OppoCsvReader;->mColumns:I

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/csv/OppoCsvReader;->mTitle:Ljava/lang/String;

    .line 61
    if-nez p1, :cond_0

    .line 62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter fileName can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    if-nez p3, :cond_1

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter charset can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 70
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not exist."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_2
    new-instance v0, Lcom/oppo/csv/OppoCsvReader$CsvParser;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/oppo/csv/OppoCsvReader$CsvParser;-><init>(Lcom/oppo/csv/OppoCsvReader;Ljava/lang/String;CLjava/nio/charset/Charset;)V

    iput-object v0, p0, Lcom/oppo/csv/OppoCsvReader;->mParserText:Lcom/oppo/csv/OppoCsvReader$CsvParser;

    .line 74
    return-void
.end method

.method static synthetic access$500(Lcom/oppo/csv/OppoCsvReader;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/oppo/csv/OppoCsvReader;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/oppo/csv/OppoCsvReader;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/oppo/csv/OppoCsvReader;->mTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/oppo/csv/OppoCsvReader;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/oppo/csv/OppoCsvReader;->mColumns:I

    return v0
.end method

.method static synthetic access$602(Lcom/oppo/csv/OppoCsvReader;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput p1, p0, Lcom/oppo/csv/OppoCsvReader;->mColumns:I

    return p1
.end method

.method static synthetic access$700(Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-static {p0}, Lcom/oppo/csv/OppoCsvReader;->checkQuotes(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-static {p0}, Lcom/oppo/csv/OppoCsvReader;->clearQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static checkQuotes(Ljava/lang/String;)Z
    .locals 4
    .parameter "oneLine"

    .prologue
    .line 226
    const/4 v0, 0x0

    .line 227
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 228
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    if-ne v2, v3, :cond_0

    .line 229
    add-int/lit8 v0, v0, 0x1

    .line 227
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 233
    :cond_1
    rem-int/lit8 v2, v0, 0x2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static clearQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "s"

    .prologue
    .line 243
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 244
    const/4 v0, 0x0

    .line 254
    :cond_0
    :goto_0
    return-object v0

    .line 247
    :cond_1
    move-object v0, p0

    .line 248
    .local v0, ret:Ljava/lang/String;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    .line 249
    const-string v1, "\""

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "\""

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 250
    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 251
    const-string v1, "\"\""

    const-string v2, "\""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getColumns(Ljava/lang/String;)I
    .locals 4
    .parameter "title"

    .prologue
    .line 206
    if-nez p0, :cond_0

    .line 207
    const/4 v0, 0x0

    .line 217
    :goto_0
    return v0

    .line 210
    :cond_0
    const/4 v0, 0x0

    .line 211
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 212
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_1

    .line 213
    add-int/lit8 v0, v0, 0x1

    .line 211
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 217
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/oppo/csv/OppoCsvReader;->mParserText:Lcom/oppo/csv/OppoCsvReader$CsvParser;

    #calls: Lcom/oppo/csv/OppoCsvReader$CsvParser;->close()V
    invoke-static {v0}, Lcom/oppo/csv/OppoCsvReader$CsvParser;->access$300(Lcom/oppo/csv/OppoCsvReader$CsvParser;)V

    .line 179
    return-void
.end method

.method public getFileSize()J
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/oppo/csv/OppoCsvReader;->mParserText:Lcom/oppo/csv/OppoCsvReader$CsvParser;

    #calls: Lcom/oppo/csv/OppoCsvReader$CsvParser;->getFileLength()J
    invoke-static {v0}, Lcom/oppo/csv/OppoCsvReader$CsvParser;->access$200(Lcom/oppo/csv/OppoCsvReader$CsvParser;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNextLine()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/oppo/csv/OppoCsvReader;->mParserText:Lcom/oppo/csv/OppoCsvReader$CsvParser;

    #calls: Lcom/oppo/csv/OppoCsvReader$CsvParser;->getNextLine()[Ljava/lang/String;
    invoke-static {v0}, Lcom/oppo/csv/OppoCsvReader$CsvParser;->access$100(Lcom/oppo/csv/OppoCsvReader$CsvParser;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    iget-object v0, p0, Lcom/oppo/csv/OppoCsvReader;->mParserText:Lcom/oppo/csv/OppoCsvReader$CsvParser;

    invoke-virtual {v0}, Lcom/oppo/csv/OppoCsvReader$CsvParser;->getTitle()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitleLine()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/oppo/csv/OppoCsvReader;->mParserText:Lcom/oppo/csv/OppoCsvReader$CsvParser;

    #calls: Lcom/oppo/csv/OppoCsvReader$CsvParser;->getTitleLine()Ljava/lang/String;
    invoke-static {v0}, Lcom/oppo/csv/OppoCsvReader$CsvParser;->access$400(Lcom/oppo/csv/OppoCsvReader$CsvParser;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public movetoFirstLine()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lcom/oppo/csv/OppoCsvReader;->mParserText:Lcom/oppo/csv/OppoCsvReader$CsvParser;

    #calls: Lcom/oppo/csv/OppoCsvReader$CsvParser;->movetoFirstLine()Z
    invoke-static {v0}, Lcom/oppo/csv/OppoCsvReader$CsvParser;->access$000(Lcom/oppo/csv/OppoCsvReader$CsvParser;)Z

    move-result v0

    return v0
.end method
