.class public Lcom/oppo/widget/OppoToken;
.super Ljava/lang/Object;
.source "OppoToken.java"


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mComment:Ljava/lang/String;

.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "name"
    .parameter "address"
    .parameter "comment"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/oppo/widget/OppoToken;->mName:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/oppo/widget/OppoToken;->mAddress:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lcom/oppo/widget/OppoToken;->mComment:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public static quoteComment(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "comment"

    .prologue
    const/16 v5, 0x5c

    .line 152
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 153
    .local v2, len:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .local v3, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 156
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 158
    .local v0, c:C
    const/16 v4, 0x28

    if-eq v0, v4, :cond_0

    const/16 v4, 0x29

    if-eq v0, v4, :cond_0

    if-ne v0, v5, :cond_1

    .line 159
    :cond_0
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 162
    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 155
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 165
    .end local v0           #c:C
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static quoteName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "name"

    .prologue
    const/16 v5, 0x5c

    .line 131
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .local v3, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 134
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 135
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 137
    .local v0, c:C
    if-eq v0, v5, :cond_0

    const/16 v4, 0x22

    if-ne v0, v4, :cond_1

    .line 138
    :cond_0
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 141
    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 134
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 144
    .end local v0           #c:C
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static quoteNameIfNecessary(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "name"

    .prologue
    const/16 v5, 0x22

    .line 113
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 115
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 116
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 118
    .local v0, c:C
    const/16 v3, 0x41

    if-lt v0, v3, :cond_0

    const/16 v3, 0x5a

    if-le v0, v3, :cond_4

    :cond_0
    const/16 v3, 0x61

    if-lt v0, v3, :cond_1

    const/16 v3, 0x7a

    if-le v0, v3, :cond_4

    :cond_1
    const/16 v3, 0x20

    if-eq v0, v3, :cond_4

    const/16 v3, 0x30

    if-lt v0, v3, :cond_2

    const/16 v3, 0x39

    if-le v0, v3, :cond_4

    .line 119
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0}, Lcom/oppo/widget/OppoToken;->quoteName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 123
    .end local v0           #c:C
    .end local p0
    :cond_3
    return-object p0

    .line 115
    .restart local v0       #c:C
    .restart local p0
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static stringEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 183
    if-nez p0, :cond_1

    .line 184
    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 186
    :goto_0
    return v0

    .line 184
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 186
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 191
    instance-of v2, p1, Lcom/oppo/widget/OppoToken;

    if-nez v2, :cond_1

    .line 195
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 194
    check-cast v0, Lcom/oppo/widget/OppoToken;

    .line 195
    .local v0, other:Lcom/oppo/widget/OppoToken;
    iget-object v2, p0, Lcom/oppo/widget/OppoToken;->mName:Ljava/lang/String;

    iget-object v3, v0, Lcom/oppo/widget/OppoToken;->mName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/oppo/widget/OppoToken;->stringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oppo/widget/OppoToken;->mAddress:Ljava/lang/String;

    iget-object v3, v0, Lcom/oppo/widget/OppoToken;->mAddress:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/oppo/widget/OppoToken;->stringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oppo/widget/OppoToken;->mComment:Ljava/lang/String;

    iget-object v3, v0, Lcom/oppo/widget/OppoToken;->mComment:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/oppo/widget/OppoToken;->stringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/oppo/widget/OppoToken;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/oppo/widget/OppoToken;->mComment:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/oppo/widget/OppoToken;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 169
    const/16 v0, 0x11

    .line 170
    .local v0, result:I
    iget-object v1, p0, Lcom/oppo/widget/OppoToken;->mName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 171
    iget-object v1, p0, Lcom/oppo/widget/OppoToken;->mName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 173
    :cond_0
    iget-object v1, p0, Lcom/oppo/widget/OppoToken;->mAddress:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 174
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/oppo/widget/OppoToken;->mAddress:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 176
    :cond_1
    iget-object v1, p0, Lcom/oppo/widget/OppoToken;->mComment:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 177
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/oppo/widget/OppoToken;->mComment:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 179
    :cond_2
    return v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .parameter "address"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/oppo/widget/OppoToken;->mAddress:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0
    .parameter "comment"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/oppo/widget/OppoToken;->mComment:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/oppo/widget/OppoToken;->mName:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .local v0, sb:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/oppo/widget/OppoToken;->mName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/widget/OppoToken;->mName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/oppo/widget/OppoToken;->mName:Ljava/lang/String;

    invoke-static {v1}, Lcom/oppo/widget/OppoToken;->quoteNameIfNecessary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/oppo/widget/OppoToken;->mComment:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oppo/widget/OppoToken;->mComment:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 94
    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 95
    iget-object v1, p0, Lcom/oppo/widget/OppoToken;->mComment:Ljava/lang/String;

    invoke-static {v1}, Lcom/oppo/widget/OppoToken;->quoteComment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    :cond_1
    iget-object v1, p0, Lcom/oppo/widget/OppoToken;->mAddress:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oppo/widget/OppoToken;->mAddress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    .line 100
    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 101
    iget-object v1, p0, Lcom/oppo/widget/OppoToken;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 105
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
