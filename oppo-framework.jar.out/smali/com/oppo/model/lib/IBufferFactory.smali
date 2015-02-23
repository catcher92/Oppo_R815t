.class public Lcom/oppo/model/lib/IBufferFactory;
.super Ljava/lang/Object;
.source "IBufferFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fillBuffer(Ljava/nio/FloatBuffer;Lcom/oppo/model/lib/Quat4f;)V
    .locals 1
    .parameter "fb"
    .parameter "q"

    .prologue
    .line 121
    iget v0, p1, Lcom/oppo/model/lib/Quat4f;->x:F

    invoke-virtual {p0, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 122
    iget v0, p1, Lcom/oppo/model/lib/Quat4f;->y:F

    invoke-virtual {p0, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 123
    iget v0, p1, Lcom/oppo/model/lib/Quat4f;->z:F

    invoke-virtual {p0, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 124
    iget v0, p1, Lcom/oppo/model/lib/Quat4f;->w:F

    invoke-virtual {p0, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 125
    return-void
.end method

.method public static fillBuffer(Ljava/nio/FloatBuffer;Lcom/oppo/model/lib/Vector3f;)V
    .locals 1
    .parameter "fb"
    .parameter "v"

    .prologue
    .line 93
    iget v0, p1, Lcom/oppo/model/lib/Vector3f;->x:F

    invoke-virtual {p0, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 94
    iget v0, p1, Lcom/oppo/model/lib/Vector3f;->y:F

    invoke-virtual {p0, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 95
    iget v0, p1, Lcom/oppo/model/lib/Vector3f;->z:F

    invoke-virtual {p0, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 96
    return-void
.end method

.method public static fillBuffer(Ljava/nio/FloatBuffer;Lcom/oppo/model/lib/Vector3f;I)V
    .locals 2
    .parameter "fb"
    .parameter "v"
    .parameter "limit"

    .prologue
    .line 106
    iget v0, p1, Lcom/oppo/model/lib/Vector3f;->x:F

    invoke-virtual {p0, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 107
    const/high16 v0, 0x3f80

    iget v1, p1, Lcom/oppo/model/lib/Vector3f;->y:F

    sub-float/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 109
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 112
    :goto_0
    return-void

    .line 110
    :cond_0
    iget v0, p1, Lcom/oppo/model/lib/Vector3f;->z:F

    invoke-virtual {p0, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    goto :goto_0
.end method

.method public static fillBuffer(Ljava/nio/ShortBuffer;[I)V
    .locals 2
    .parameter "sb"
    .parameter "data"

    .prologue
    .line 134
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 135
    aget v1, p1, v0

    int-to-short v1, v1

    invoke-virtual {p0, v1}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    :cond_0
    return-void
.end method

.method public static newFloatBuffer(I)Ljava/nio/FloatBuffer;
    .locals 3
    .parameter "numElements"

    .prologue
    .line 39
    mul-int/lit8 v2, p0, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 40
    .local v0, bb:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 41
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    .line 42
    .local v1, fb:Ljava/nio/FloatBuffer;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 43
    return-object v1
.end method

.method public static newIntBuffer(I)Ljava/nio/IntBuffer;
    .locals 3
    .parameter "numElements"

    .prologue
    .line 53
    mul-int/lit8 v2, p0, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 54
    .local v0, bb:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 55
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    .line 56
    .local v1, sb:Ljava/nio/IntBuffer;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 57
    return-object v1
.end method

.method public static newShortBuffer(I)Ljava/nio/ShortBuffer;
    .locals 3
    .parameter "numElements"

    .prologue
    .line 67
    mul-int/lit8 v2, p0, 0x2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 68
    .local v0, bb:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 69
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    .line 70
    .local v1, sb:Ljava/nio/ShortBuffer;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 71
    return-object v1
.end method

.method public static read(Ljava/nio/FloatBuffer;Lcom/oppo/model/lib/Vector3f;)V
    .locals 1
    .parameter "fb"
    .parameter "v"

    .prologue
    .line 81
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->get()F

    move-result v0

    iput v0, p1, Lcom/oppo/model/lib/Vector3f;->x:F

    .line 82
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->get()F

    move-result v0

    iput v0, p1, Lcom/oppo/model/lib/Vector3f;->y:F

    .line 83
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->get()F

    move-result v0

    iput v0, p1, Lcom/oppo/model/lib/Vector3f;->z:F

    .line 84
    return-void
.end method
