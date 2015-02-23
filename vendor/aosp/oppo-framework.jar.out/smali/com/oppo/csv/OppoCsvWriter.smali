.class public Lcom/oppo/csv/OppoCsvWriter;
.super Ljava/lang/Object;
.source "OppoCsvWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/csv/OppoCsvWriter$CsvConstant;
    }
.end annotation


# instance fields
.field private mDelimiter:C

.field private mPrintWriter:Ljava/io/PrintWriter;

.field private mTextQualifier:C


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 49
    const/16 v0, 0x2c

    invoke-direct {p0, p1, v0}, Lcom/oppo/csv/OppoCsvWriter;-><init>(Ljava/lang/String;C)V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;C)V
    .locals 1
    .parameter "name"
    .parameter "delimiter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 60
    const/16 v0, 0x22

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/csv/OppoCsvWriter;-><init>(Ljava/lang/String;CC)V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;CC)V
    .locals 1
    .parameter "name"
    .parameter "delimiter"
    .parameter "textQualifier"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 73
    const-string v0, "GBK"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oppo/csv/OppoCsvWriter;-><init>(Ljava/lang/String;CCLjava/lang/String;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;CCLjava/lang/String;)V
    .locals 2
    .parameter "name"
    .parameter "delimiter"
    .parameter "textQualifier"
    .parameter "csn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    :try_start_0
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, p1, p4}, Ljava/io/PrintWriter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/oppo/csv/OppoCsvWriter;->mPrintWriter:Ljava/io/PrintWriter;

    .line 90
    iput-char p2, p0, Lcom/oppo/csv/OppoCsvWriter;->mDelimiter:C

    .line 91
    iput-char p3, p0, Lcom/oppo/csv/OppoCsvWriter;->mTextQualifier:C
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static formatLine([Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "values"

    .prologue
    .line 137
    const-string v0, "\r\n"

    const/16 v1, 0x2c

    const/16 v2, 0x22

    invoke-static {p0, v0, v1, v2}, Lcom/oppo/csv/OppoCsvWriter;->formatLine([Ljava/lang/String;Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatLine([Ljava/lang/String;Ljava/lang/String;CC)Ljava/lang/String;
    .locals 3
    .parameter "values"
    .parameter "recordDelimiter"
    .parameter "delimiter"
    .parameter "textQualifier"

    .prologue
    .line 151
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 153
    .local v0, buffer:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p0

    if-eq v1, v2, :cond_1

    .line 154
    aget-object v2, p0, v1

    invoke-static {v2, p3}, Lcom/oppo/csv/OppoCsvWriter;->formatString(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 155
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_0

    .line 156
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 158
    :cond_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 162
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static formatString(Ljava/lang/String;C)Ljava/lang/String;
    .locals 5
    .parameter "value"
    .parameter "textQualifier"

    .prologue
    .line 172
    if-eqz p0, :cond_0

    const-string v3, "null"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 173
    :cond_0
    const-string p0, ""

    .line 176
    :cond_1
    const-string v3, ""

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 177
    const-string v3, "\""

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 178
    const/4 v2, 0x0

    .line 179
    .local v2, start:I
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 181
    .local v1, index:I
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 182
    .local v0, buffer:Ljava/lang/StringBuffer;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 184
    :goto_0
    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    .line 185
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 186
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 187
    move v2, v1

    .line 188
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, p1, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    goto :goto_0

    .line 191
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 192
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 194
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 200
    .end local v0           #buffer:Ljava/lang/StringBuffer;
    .end local v1           #index:I
    .end local v2           #start:I
    .end local p0
    :cond_3
    :goto_1
    return-object p0

    .line 195
    .restart local p0
    :cond_4
    const-string v3, ","

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "\n"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 196
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/oppo/csv/OppoCsvWriter;->mPrintWriter:Ljava/io/PrintWriter;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/oppo/csv/OppoCsvWriter;->mPrintWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 210
    :cond_0
    return-void
.end method

.method public writeLine(Ljava/lang/String;)V
    .locals 0
    .parameter "line"

    .prologue
    .line 113
    invoke-virtual {p0, p1}, Lcom/oppo/csv/OppoCsvWriter;->writeTitle(Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public writeLine([Ljava/lang/String;)V
    .locals 4
    .parameter "values"

    .prologue
    .line 123
    if-nez p1, :cond_0

    .line 129
    :goto_0
    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/oppo/csv/OppoCsvWriter;->mPrintWriter:Ljava/io/PrintWriter;

    const-string v1, "\r\n"

    iget-char v2, p0, Lcom/oppo/csv/OppoCsvWriter;->mDelimiter:C

    iget-char v3, p0, Lcom/oppo/csv/OppoCsvWriter;->mTextQualifier:C

    invoke-static {p1, v1, v2, v3}, Lcom/oppo/csv/OppoCsvWriter;->formatLine([Ljava/lang/String;Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/oppo/csv/OppoCsvWriter;->mPrintWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    goto :goto_0
.end method

.method public writeTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/oppo/csv/OppoCsvWriter;->mPrintWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/oppo/csv/OppoCsvWriter;->mPrintWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 105
    return-void
.end method
