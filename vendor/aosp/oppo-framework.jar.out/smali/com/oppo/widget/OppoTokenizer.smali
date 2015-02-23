.class public Lcom/oppo/widget/OppoTokenizer;
.super Ljava/lang/Object;
.source "OppoTokenizer.java"

# interfaces
.implements Landroid/widget/MultiAutoCompleteTextView$Tokenizer;


# static fields
.field private static final COMMIT_CHAR_CHINA_COMMA:C = '\uff0c'


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static crunch(Ljava/lang/StringBuilder;)V
    .locals 5
    .parameter "sb"

    .prologue
    const/16 v4, 0x20

    .line 167
    const/4 v1, 0x0

    .line 168
    .local v1, i:I
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 170
    .local v2, len:I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 171
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    .line 173
    .local v0, c:C
    if-nez v0, :cond_2

    .line 174
    if-eqz v1, :cond_0

    add-int/lit8 v3, v2, -0x1

    if-eq v1, v3, :cond_0

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-eq v3, v4, :cond_0

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-eq v3, v4, :cond_0

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-nez v3, :cond_1

    .line 176
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 177
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 179
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 182
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 186
    .end local v0           #c:C
    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_5

    .line 187
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-nez v3, :cond_4

    .line 188
    invoke-virtual {p0, v1, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 186
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 191
    :cond_5
    return-void
.end method

.method public static tokenize(Ljava/lang/CharSequence;Ljava/util/Collection;)V
    .locals 11
    .parameter "text"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Collection",
            "<",
            "Lcom/oppo/widget/OppoToken;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, out:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/oppo/widget/OppoToken;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .local v6, name:Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .local v0, address:Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .local v2, comment:Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 52
    .local v4, i:I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 54
    .local v3, cursor:I
    :cond_0
    :goto_0
    if-ge v4, v3, :cond_13

    .line 55
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 57
    .local v1, c:C
    const/16 v7, 0x2c

    if-eq v1, v7, :cond_1

    const/16 v7, 0x3b

    if-eq v1, v7, :cond_1

    const v7, 0xff0c

    if-ne v1, v7, :cond_5

    .line 58
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 60
    :goto_1
    if-ge v4, v3, :cond_2

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/16 v8, 0x20

    if-ne v7, v8, :cond_2

    .line 61
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 64
    :cond_2
    invoke-static {v6}, Lcom/oppo/widget/OppoTokenizer;->crunch(Ljava/lang/StringBuilder;)V

    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_4

    .line 67
    new-instance v7, Lcom/oppo/widget/OppoToken;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10}, Lcom/oppo/widget/OppoToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_3
    :goto_2
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 73
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 74
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    .line 68
    :cond_4
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 69
    new-instance v7, Lcom/oppo/widget/OppoToken;

    const/4 v8, 0x0

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10}, Lcom/oppo/widget/OppoToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 75
    :cond_5
    const/16 v7, 0x22

    if-ne v1, v7, :cond_9

    .line 76
    add-int/lit8 v4, v4, 0x1

    .line 78
    :goto_3
    if-ge v4, v3, :cond_0

    .line 79
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 81
    const/16 v7, 0x22

    if-ne v1, v7, :cond_6

    .line 82
    add-int/lit8 v4, v4, 0x1

    .line 83
    goto :goto_0

    .line 84
    :cond_6
    const/16 v7, 0x5c

    if-ne v1, v7, :cond_8

    .line 85
    add-int/lit8 v7, v4, 0x1

    if-ge v7, v3, :cond_7

    .line 86
    add-int/lit8 v7, v4, 0x1

    invoke-interface {p0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 88
    :cond_7
    add-int/lit8 v4, v4, 0x2

    goto :goto_3

    .line 90
    :cond_8
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 91
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 94
    :cond_9
    const/16 v7, 0x28

    if-ne v1, v7, :cond_f

    .line 95
    const/4 v5, 0x1

    .line 96
    .local v5, level:I
    add-int/lit8 v4, v4, 0x1

    .line 98
    :goto_4
    if-ge v4, v3, :cond_0

    if-lez v5, :cond_0

    .line 99
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 101
    const/16 v7, 0x29

    if-ne v1, v7, :cond_b

    .line 102
    const/4 v7, 0x1

    if-le v5, v7, :cond_a

    .line 103
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 106
    :cond_a
    add-int/lit8 v5, v5, -0x1

    .line 107
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 108
    :cond_b
    const/16 v7, 0x28

    if-ne v1, v7, :cond_c

    .line 109
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 110
    add-int/lit8 v5, v5, 0x1

    .line 111
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 112
    :cond_c
    const/16 v7, 0x5c

    if-ne v1, v7, :cond_e

    .line 113
    add-int/lit8 v7, v4, 0x1

    if-ge v7, v3, :cond_d

    .line 114
    add-int/lit8 v7, v4, 0x1

    invoke-interface {p0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 116
    :cond_d
    add-int/lit8 v4, v4, 0x2

    goto :goto_4

    .line 118
    :cond_e
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 119
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 122
    .end local v5           #level:I
    :cond_f
    const/16 v7, 0x3c

    if-ne v1, v7, :cond_11

    .line 123
    add-int/lit8 v4, v4, 0x1

    .line 125
    :goto_5
    if-ge v4, v3, :cond_0

    .line 126
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 128
    const/16 v7, 0x3e

    if-ne v1, v7, :cond_10

    .line 129
    add-int/lit8 v4, v4, 0x1

    .line 130
    goto/16 :goto_0

    .line 132
    :cond_10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 133
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 136
    :cond_11
    const/16 v7, 0x20

    if-ne v1, v7, :cond_12

    .line 137
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 138
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 140
    :cond_12
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 141
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 145
    .end local v1           #c:C
    :cond_13
    invoke-static {v6}, Lcom/oppo/widget/OppoTokenizer;->crunch(Ljava/lang/StringBuilder;)V

    .line 147
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_15

    .line 148
    new-instance v7, Lcom/oppo/widget/OppoToken;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10}, Lcom/oppo/widget/OppoToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 152
    :cond_14
    :goto_6
    return-void

    .line 149
    :cond_15
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_14

    .line 150
    new-instance v7, Lcom/oppo/widget/OppoToken;

    const/4 v8, 0x0

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10}, Lcom/oppo/widget/OppoToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6
.end method

.method public static tokenize(Ljava/lang/CharSequence;)[Lcom/oppo/widget/OppoToken;
    .locals 2
    .parameter "text"

    .prologue
    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .local v0, out:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/oppo/widget/OppoToken;>;"
    invoke-static {p0, v0}, Lcom/oppo/widget/OppoTokenizer;->tokenize(Ljava/lang/CharSequence;Ljava/util/Collection;)V

    .line 163
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/oppo/widget/OppoToken;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/oppo/widget/OppoToken;

    return-object v1
.end method


# virtual methods
.method public findTokenEnd(Ljava/lang/CharSequence;I)I
    .locals 8
    .parameter "text"
    .parameter "cursor"

    .prologue
    const/16 v7, 0x5c

    const/16 v6, 0x28

    const/16 v5, 0x22

    .line 228
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 229
    .local v2, len:I
    move v1, p2

    .line 231
    .local v1, i:I
    :cond_0
    :goto_0
    if-ge v1, v2, :cond_1

    .line 232
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 234
    .local v0, c:C
    const/16 v4, 0x2c

    if-eq v0, v4, :cond_1

    const/16 v4, 0x3b

    if-eq v0, v4, :cond_1

    const v4, 0xff0c

    if-ne v0, v4, :cond_2

    .line 288
    .end local v0           #c:C
    :cond_1
    return v1

    .line 236
    .restart local v0       #c:C
    :cond_2
    if-ne v0, v5, :cond_5

    .line 237
    add-int/lit8 v1, v1, 0x1

    .line 239
    :goto_1
    if-ge v1, v2, :cond_0

    .line 240
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 242
    if-ne v0, v5, :cond_3

    .line 243
    add-int/lit8 v1, v1, 0x1

    .line 244
    goto :goto_0

    .line 245
    :cond_3
    if-ne v0, v7, :cond_4

    add-int/lit8 v4, v1, 0x1

    if-ge v4, v2, :cond_4

    .line 246
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 248
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 251
    :cond_5
    if-ne v0, v6, :cond_9

    .line 252
    const/4 v3, 0x1

    .line 253
    .local v3, level:I
    add-int/lit8 v1, v1, 0x1

    .line 255
    :goto_2
    if-ge v1, v2, :cond_0

    if-lez v3, :cond_0

    .line 256
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 258
    const/16 v4, 0x29

    if-ne v0, v4, :cond_6

    .line 259
    add-int/lit8 v3, v3, -0x1

    .line 260
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 261
    :cond_6
    if-ne v0, v6, :cond_7

    .line 262
    add-int/lit8 v3, v3, 0x1

    .line 263
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 264
    :cond_7
    if-ne v0, v7, :cond_8

    add-int/lit8 v4, v1, 0x1

    if-ge v4, v2, :cond_8

    .line 265
    add-int/lit8 v1, v1, 0x2

    goto :goto_2

    .line 267
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 270
    .end local v3           #level:I
    :cond_9
    const/16 v4, 0x3c

    if-ne v0, v4, :cond_b

    .line 271
    add-int/lit8 v1, v1, 0x1

    .line 273
    :goto_3
    if-ge v1, v2, :cond_0

    .line 274
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 276
    const/16 v4, 0x3e

    if-ne v0, v4, :cond_a

    .line 277
    add-int/lit8 v1, v1, 0x1

    .line 278
    goto :goto_0

    .line 280
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 284
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public findTokenStart(Ljava/lang/CharSequence;I)I
    .locals 4
    .parameter "text"
    .parameter "cursor"

    .prologue
    .line 202
    const/4 v0, 0x0

    .line 203
    .local v0, best:I
    const/4 v1, 0x0

    .line 205
    .local v1, i:I
    :cond_0
    :goto_0
    if-ge v1, p2, :cond_2

    .line 206
    invoke-virtual {p0, p1, v1}, Lcom/oppo/widget/OppoTokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 208
    if-ge v1, p2, :cond_0

    .line 209
    add-int/lit8 v1, v1, 0x1

    .line 211
    :goto_1
    if-ge v1, p2, :cond_1

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_1

    .line 212
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 215
    :cond_1
    if-ge v1, p2, :cond_0

    .line 216
    move v0, v1

    goto :goto_0

    .line 221
    :cond_2
    return v0
.end method

.method public terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "text"

    .prologue
    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
