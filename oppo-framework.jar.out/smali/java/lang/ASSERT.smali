.class public Ljava/lang/ASSERT;
.super Ljava/lang/Object;
.source "ASSERT.java"


# static fields
.field private static final ENABLE_PROP:Ljava/lang/String; = "persist.sys.assert.enable"

.field private static final FILTEDPROC_PROP:Ljava/lang/String; = "persist.assert.filtedproc"

.field private static final IS_EMPTY:I = 0x1

.field private static final IS_GZIPPED:I = 0x4

.field private static final IS_TEXT:I = 0x2

.field private static final MAX_CONTEXT_LENGTH:I = 0x14

.field private static final PROPERTY_ASSERT_PANIC:Ljava/lang/String; = "persist.sys.assert.panic"

.field private static final TAG:Ljava/lang/String; = "java.lang.ASSERT"

.field private static final isAssertEnable:Z

.field private static final rt:Ljava/lang/Runtime;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-string v0, "assert_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 57
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    sput-object v0, Ljava/lang/ASSERT;->rt:Ljava/lang/Runtime;

    .line 58
    invoke-static {}, Ljava/lang/ASSERT;->getAssertEnable()Z

    move-result v0

    sput-boolean v0, Ljava/lang/ASSERT;->isAssertEnable:Z

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ASSERT(Ljava/lang/String;Z)V
    .locals 0
    .parameter "message"
    .parameter "condition"

    .prologue
    .line 76
    invoke-static {p0, p1}, Ljava/lang/ASSERT;->assertTrue(Ljava/lang/String;Z)V

    .line 77
    return-void
.end method

.method public static ASSERT(Z)V
    .locals 0
    .parameter "condition"

    .prologue
    .line 72
    invoke-static {p0}, Ljava/lang/ASSERT;->assertTrue(Z)V

    .line 73
    return-void
.end method

.method public static ASSERTEXCEPTION(Ljava/lang/Throwable;)V
    .locals 0
    .parameter "t"

    .prologue
    .line 80
    invoke-static {p0}, Ljava/lang/ASSERT;->fail(Ljava/lang/Throwable;)V

    .line 81
    return-void
.end method

.method private static assertEquals(BB)V
    .locals 1
    .parameter "expected"
    .parameter "actual"

    .prologue
    .line 307
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Ljava/lang/ASSERT;->assertEquals(Ljava/lang/String;BB)V

    .line 308
    return-void
.end method

.method private static assertEquals(CC)V
    .locals 1
    .parameter "expected"
    .parameter "actual"

    .prologue
    .line 322
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Ljava/lang/ASSERT;->assertEquals(Ljava/lang/String;CC)V

    .line 323
    return-void
.end method

.method private static assertEquals(DDD)V
    .locals 7
    .parameter "expected"
    .parameter "actual"
    .parameter "delta"

    .prologue
    .line 239
    const/4 v0, 0x0

    move-wide v1, p0

    move-wide v3, p2

    move-wide v5, p4

    invoke-static/range {v0 .. v6}, Ljava/lang/ASSERT;->assertEquals(Ljava/lang/String;DDD)V

    .line 240
    return-void
.end method

.method private static assertEquals(FFF)V
    .locals 1
    .parameter "expected"
    .parameter "actual"
    .parameter "delta"

    .prologue
    .line 262
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Ljava/lang/ASSERT;->assertEquals(Ljava/lang/String;FFF)V

    .line 263
    return-void
.end method

.method private static assertEquals(II)V
    .locals 1
    .parameter "expected"
    .parameter "actual"

    .prologue
    .line 352
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Ljava/lang/ASSERT;->assertEquals(Ljava/lang/String;II)V

    .line 353
    return-void
.end method

.method private static assertEquals(JJ)V
    .locals 1
    .parameter "expected"
    .parameter "actual"

    .prologue
    .line 277
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2, p3}, Ljava/lang/ASSERT;->assertEquals(Ljava/lang/String;JJ)V

    .line 278
    return-void
.end method

.method private static assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .parameter "expected"
    .parameter "actual"

    .prologue
    .line 199
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Ljava/lang/ASSERT;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 200
    return-void
.end method

.method private static assertEquals(Ljava/lang/String;BB)V
    .locals 2
    .parameter "message"
    .parameter "expected"
    .parameter "actual"

    .prologue
    .line 300
    new-instance v0, Ljava/lang/Byte;

    invoke-direct {v0, p1}, Ljava/lang/Byte;-><init>(B)V

    new-instance v1, Ljava/lang/Byte;

    invoke-direct {v1, p2}, Ljava/lang/Byte;-><init>(B)V

    invoke-static {p0, v0, v1}, Ljava/lang/ASSERT;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 301
    return-void
.end method

.method private static assertEquals(Ljava/lang/String;CC)V
    .locals 2
    .parameter "message"
    .parameter "expected"
    .parameter "actual"

    .prologue
    .line 315
    new-instance v0, Ljava/lang/Character;

    invoke-direct {v0, p1}, Ljava/lang/Character;-><init>(C)V

    new-instance v1, Ljava/lang/Character;

    invoke-direct {v1, p2}, Ljava/lang/Character;-><init>(C)V

    invoke-static {p0, v0, v1}, Ljava/lang/ASSERT;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 316
    return-void
.end method

.method private static assertEquals(Ljava/lang/String;DDD)V
    .locals 2
    .parameter "message"
    .parameter "expected"
    .parameter "actual"
    .parameter "delta"

    .prologue
    .line 228
    sget-boolean v0, Ljava/lang/ASSERT;->isAssertEnable:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_1

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    sub-double v0, p1, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double v0, v0, p5

    if-lez v0, :cond_0

    .line 231
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p1, p2}, Ljava/lang/Double;-><init>(D)V

    new-instance v1, Ljava/lang/Double;

    invoke-direct {v1, p3, p4}, Ljava/lang/Double;-><init>(D)V

    invoke-static {p0, v0, v1}, Ljava/lang/ASSERT;->failNotEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static assertEquals(Ljava/lang/String;FFF)V
    .locals 2
    .parameter "message"
    .parameter "expected"
    .parameter "actual"
    .parameter "delta"

    .prologue
    .line 250
    sget-boolean v0, Ljava/lang/ASSERT;->isAssertEnable:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    cmpl-float v0, p1, p2

    if-eqz v0, :cond_0

    .line 252
    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, p1}, Ljava/lang/Float;-><init>(F)V

    new-instance v1, Ljava/lang/Float;

    invoke-direct {v1, p2}, Ljava/lang/Float;-><init>(F)V

    invoke-static {p0, v0, v1}, Ljava/lang/ASSERT;->failNotEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    sget-boolean v0, Ljava/lang/ASSERT;->isAssertEnable:Z

    if-eqz v0, :cond_0

    sub-float v0, p1, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, p3

    if-lez v0, :cond_0

    .line 254
    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, p1}, Ljava/lang/Float;-><init>(F)V

    new-instance v1, Ljava/lang/Float;

    invoke-direct {v1, p2}, Ljava/lang/Float;-><init>(F)V

    invoke-static {p0, v0, v1}, Ljava/lang/ASSERT;->failNotEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static assertEquals(Ljava/lang/String;II)V
    .locals 2
    .parameter "message"
    .parameter "expected"
    .parameter "actual"

    .prologue
    .line 345
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {p0, v0, v1}, Ljava/lang/ASSERT;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 346
    return-void
.end method

.method private static assertEquals(Ljava/lang/String;JJ)V
    .locals 2
    .parameter "message"
    .parameter "expected"
    .parameter "actual"

    .prologue
    .line 270
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p3, p4}, Ljava/lang/Long;-><init>(J)V

    invoke-static {p0, v0, v1}, Ljava/lang/ASSERT;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 271
    return-void
.end method

.method private static assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .parameter "message"
    .parameter "expected"
    .parameter "actual"

    .prologue
    .line 188
    sget-boolean v0, Ljava/lang/ASSERT;->isAssertEnable:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    :cond_2
    invoke-static {p0, p1, p2}, Ljava/lang/ASSERT;->failNotEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static assertEquals(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "expected"
    .parameter "actual"

    .prologue
    .line 219
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Ljava/lang/ASSERT;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    return-void
.end method

.method private static assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "message"
    .parameter "expected"
    .parameter "actual"

    .prologue
    .line 206
    sget-boolean v0, Ljava/lang/ASSERT;->isAssertEnable:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    :cond_2
    new-instance v0, Ljava/lang/ASSERTComparisonCompactor;

    const/16 v1, 0x14

    invoke-direct {v0, v1, p1, p2}, Ljava/lang/ASSERTComparisonCompactor;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/ASSERTComparisonCompactor;->compact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/ASSERT;->fail(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static assertEquals(Ljava/lang/String;SS)V
    .locals 2
    .parameter "message"
    .parameter "expected"
    .parameter "actual"

    .prologue
    .line 330
    new-instance v0, Ljava/lang/Short;

    invoke-direct {v0, p1}, Ljava/lang/Short;-><init>(S)V

    new-instance v1, Ljava/lang/Short;

    invoke-direct {v1, p2}, Ljava/lang/Short;-><init>(S)V

    invoke-static {p0, v0, v1}, Ljava/lang/ASSERT;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 331
    return-void
.end method

.method private static assertEquals(Ljava/lang/String;ZZ)V
    .locals 2
    .parameter "message"
    .parameter "expected"
    .parameter "actual"

    .prologue
    .line 285
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p0, v0, v1}, Ljava/lang/ASSERT;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 286
    return-void
.end method

.method private static assertEquals(SS)V
    .locals 1
    .parameter "expected"
    .parameter "actual"

    .prologue
    .line 337
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Ljava/lang/ASSERT;->assertEquals(Ljava/lang/String;SS)V

    .line 338
    return-void
.end method

.method private static assertEquals(ZZ)V
    .locals 1
    .parameter "expected"
    .parameter "actual"

    .prologue
    .line 292
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Ljava/lang/ASSERT;->assertEquals(Ljava/lang/String;ZZ)V

    .line 293
    return-void
.end method

.method private static assertFalse(Ljava/lang/String;Z)V
    .locals 1
    .parameter "message"
    .parameter "condition"

    .prologue
    .line 173
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, v0}, Ljava/lang/ASSERT;->assertTrue(Ljava/lang/String;Z)V

    .line 174
    return-void

    .line 173
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static assertFalse(Z)V
    .locals 1
    .parameter "condition"

    .prologue
    .line 180
    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljava/lang/ASSERT;->assertFalse(Ljava/lang/String;Z)V

    .line 181
    return-void
.end method

.method private static assertNotNull(Ljava/lang/Object;)V
    .locals 1
    .parameter "object"

    .prologue
    .line 359
    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljava/lang/ASSERT;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 360
    return-void
.end method

.method private static assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "message"
    .parameter "object"

    .prologue
    .line 367
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, v0}, Ljava/lang/ASSERT;->assertTrue(Ljava/lang/String;Z)V

    .line 368
    return-void

    .line 367
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static assertNotSame(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .parameter "expected"
    .parameter "actual"

    .prologue
    .line 417
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Ljava/lang/ASSERT;->assertNotSame(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 418
    return-void
.end method

.method private static assertNotSame(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .parameter "message"
    .parameter "expected"
    .parameter "actual"

    .prologue
    .line 408
    sget-boolean v0, Ljava/lang/ASSERT;->isAssertEnable:Z

    if-eqz v0, :cond_0

    if-ne p1, p2, :cond_0

    .line 409
    invoke-static {p0}, Ljava/lang/ASSERT;->failSame(Ljava/lang/String;)V

    .line 410
    :cond_0
    return-void
.end method

.method private static assertNull(Ljava/lang/Object;)V
    .locals 1
    .parameter "object"

    .prologue
    .line 374
    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljava/lang/ASSERT;->assertNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 375
    return-void
.end method

.method private static assertNull(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "message"
    .parameter "object"

    .prologue
    .line 382
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, v0}, Ljava/lang/ASSERT;->assertTrue(Ljava/lang/String;Z)V

    .line 383
    return-void

    .line 382
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static assertSame(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .parameter "expected"
    .parameter "actual"

    .prologue
    .line 400
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Ljava/lang/ASSERT;->assertSame(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 401
    return-void
.end method

.method private static assertSame(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .parameter "message"
    .parameter "expected"
    .parameter "actual"

    .prologue
    .line 390
    sget-boolean v0, Ljava/lang/ASSERT;->isAssertEnable:Z

    if-eqz v0, :cond_0

    if-ne p1, p2, :cond_1

    .line 393
    :cond_0
    :goto_0
    return-void

    .line 392
    :cond_1
    invoke-static {p0, p1, p2}, Ljava/lang/ASSERT;->failNotSame(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static assertTrue(Ljava/lang/String;Z)V
    .locals 1
    .parameter "message"
    .parameter "condition"

    .prologue
    .line 156
    sget-boolean v0, Ljava/lang/ASSERT;->isAssertEnable:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 157
    invoke-static {p0}, Ljava/lang/ASSERT;->fail(Ljava/lang/String;)V

    .line 159
    :cond_0
    return-void
.end method

.method private static assertTrue(Z)V
    .locals 1
    .parameter "condition"

    .prologue
    .line 165
    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljava/lang/ASSERT;->assertTrue(Ljava/lang/String;Z)V

    .line 166
    return-void
.end method

.method private static native cleanErrorInfo_native()V
.end method

.method private static copy2File(Ljava/io/BufferedReader;Ljava/io/File;)Z
    .locals 6
    .parameter "br"
    .parameter "destFile"

    .prologue
    const/4 v3, 0x0

    .line 575
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 576
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 578
    :cond_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, p1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 580
    .local v0, bw:Ljava/io/BufferedWriter;
    const/4 v2, 0x0

    .line 581
    .local v2, line:Ljava/lang/String;
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 582
    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v2, v4, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;II)V

    .line 583
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    .line 584
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 587
    :catchall_0
    move-exception v4

    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    throw v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 590
    .end local v0           #bw:Ljava/io/BufferedWriter;
    .end local v2           #line:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 591
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 592
    .end local v1           #e:Ljava/io/IOException;
    :goto_1
    return v3

    .line 587
    .restart local v0       #bw:Ljava/io/BufferedWriter;
    .restart local v2       #line:Ljava/lang/String;
    :cond_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 589
    const/4 v3, 0x1

    goto :goto_1
.end method

.method private static copy2File(Ljava/io/InputStream;Ljava/io/File;)Z
    .locals 6
    .parameter "inputStream"
    .parameter "destFile"

    .prologue
    const/4 v4, 0x0

    .line 552
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 553
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 555
    :cond_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 557
    .local v3, out:Ljava/io/OutputStream;
    const/16 v5, 0x1000

    :try_start_1
    new-array v0, v5, [B

    .line 559
    .local v0, buffer:[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, bytesRead:I
    if-ltz v1, :cond_1

    .line 560
    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v1}, Ljava/io/FileOutputStream;->write([BII)V

    .line 561
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 564
    .end local v0           #buffer:[B
    .end local v1           #bytesRead:I
    :catchall_0
    move-exception v5

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    throw v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 567
    .end local v3           #out:Ljava/io/OutputStream;
    :catch_0
    move-exception v2

    .line 568
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 569
    .end local v2           #e:Ljava/io/IOException;
    :goto_1
    return v4

    .line 564
    .restart local v0       #buffer:[B
    .restart local v1       #bytesRead:I
    .restart local v3       #out:Ljava/io/OutputStream;
    :cond_1
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 566
    const/4 v4, 0x1

    goto :goto_1
.end method

.method private static copyFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 4
    .parameter "srcFile"
    .parameter "destFile"

    .prologue
    .line 532
    const/4 v2, 0x0

    .line 534
    .local v2, result:Z
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 536
    .local v1, in:Ljava/io/InputStream;
    :try_start_1
    invoke-static {v1, p1}, Ljava/lang/ASSERT;->copy2File(Ljava/io/InputStream;Ljava/io/File;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 538
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 544
    .end local v1           #in:Ljava/io/InputStream;
    :goto_0
    return v2

    .line 538
    .restart local v1       #in:Ljava/io/InputStream;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    throw v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 540
    .end local v1           #in:Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 541
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 542
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static disableInterrupt()V
    .locals 3

    .prologue
    .line 464
    :try_start_0
    sget-object v1, Ljava/lang/ASSERT;->rt:Ljava/lang/Runtime;

    const-string v2, "/system/bin/sh /system/bin/disableinterrupt.sh"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 468
    .local v0, e:Ljava/io/IOException;
    :goto_0
    return-void

    .line 465
    .end local v0           #e:Ljava/io/IOException;
    :catch_0
    move-exception v0

    .line 466
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static displayErrorInfo(Ljava/lang/String;)V
    .locals 0
    .parameter "info"

    .prologue
    .line 663
    invoke-static {p0}, Ljava/lang/ASSERT;->displayErrorInfo_native(Ljava/lang/String;)V

    .line 665
    return-void
.end method

.method private static native displayErrorInfo_native(Ljava/lang/String;)V
.end method

.method public static epitaph(Ljava/io/File;Ljava/lang/String;I)Z
    .locals 18
    .parameter "temp"
    .parameter "tag"
    .parameter "flags"

    .prologue
    .line 668
    const/4 v8, 0x0

    .line 669
    .local v8, is:Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 670
    .local v1, br:Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 671
    .local v3, bw:Ljava/io/BufferedWriter;
    const/4 v11, 0x0

    .line 673
    .local v11, process:Ljava/lang/String;
    if-nez p0, :cond_0

    .line 674
    const/4 v14, 0x0

    .line 727
    :goto_0
    return v14

    .line 679
    :cond_0
    :try_start_0
    new-instance v9, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 680
    .end local v8           #is:Ljava/io/InputStream;
    .local v9, is:Ljava/io/InputStream;
    and-int/lit8 v14, p2, 0x4

    if-eqz v14, :cond_1

    .line 681
    :try_start_1
    new-instance v8, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v8, v9}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v9           #is:Ljava/io/InputStream;
    .restart local v8       #is:Ljava/io/InputStream;
    move-object v9, v8

    .line 683
    .end local v8           #is:Ljava/io/InputStream;
    .restart local v9       #is:Ljava/io/InputStream;
    :cond_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v14, Ljava/io/InputStreamReader;

    invoke-direct {v14, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 685
    .end local v1           #br:Ljava/io/BufferedReader;
    .local v2, br:Ljava/io/BufferedReader;
    :try_start_2
    new-instance v12, Ljava/lang/StringBuilder;

    const/16 v14, 0x400

    invoke-direct {v12, v14}, Ljava/lang/StringBuilder;-><init>(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 686
    .local v12, sb:Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 688
    .local v4, count:I
    :goto_1
    const/16 v14, 0x400

    if-ge v4, v14, :cond_2

    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .local v10, line:Ljava/lang/String;
    if-eqz v10, :cond_2

    .line 689
    const-string v14, "-----"

    const/4 v15, 0x0

    invoke-virtual {v10, v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v14

    if-eqz v14, :cond_3

    .line 699
    .end local v10           #line:Ljava/lang/String;
    :cond_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 701
    invoke-static {v11}, Ljava/lang/ASSERT;->isFiltedProcess(Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-result v14

    if-eqz v14, :cond_5

    .line 702
    const/4 v14, 0x0

    move-object v1, v2

    .end local v2           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    move-object v8, v9

    .end local v9           #is:Ljava/io/InputStream;
    .restart local v8       #is:Ljava/io/InputStream;
    goto :goto_0

    .line 691
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v8           #is:Ljava/io/InputStream;
    .restart local v2       #br:Ljava/io/BufferedReader;
    .restart local v9       #is:Ljava/io/InputStream;
    .restart local v10       #line:Ljava/lang/String;
    :cond_3
    :try_start_5
    const-string v14, "Process: "

    const/4 v15, 0x0

    invoke-virtual {v10, v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 692
    const-string v14, ":"

    invoke-virtual {v10, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v10, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 694
    :cond_4
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 695
    const-string v14, "\r\n"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    invoke-virtual {v10}, Ljava/lang/String;->length()I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v14

    add-int/2addr v4, v14

    goto :goto_1

    .line 699
    .end local v10           #line:Ljava/lang/String;
    :catchall_0
    move-exception v14

    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    throw v14
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 723
    .end local v4           #count:I
    .end local v12           #sb:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v6

    move-object v1, v2

    .end local v2           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    move-object v8, v9

    .line 724
    .end local v9           #is:Ljava/io/InputStream;
    .local v6, e:Ljava/io/IOException;
    .restart local v8       #is:Ljava/io/InputStream;
    :goto_2
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 725
    const/4 v14, 0x0

    goto :goto_0

    .line 704
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v6           #e:Ljava/io/IOException;
    .end local v8           #is:Ljava/io/InputStream;
    .restart local v2       #br:Ljava/io/BufferedReader;
    .restart local v4       #count:I
    .restart local v9       #is:Ljava/io/InputStream;
    .restart local v12       #sb:Ljava/lang/StringBuilder;
    :cond_5
    :try_start_7
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v11}, Ljava/lang/ASSERT;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".txt"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 705
    .local v7, fn:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 706
    .local v5, dest:Ljava/io/File;
    new-instance v8, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 707
    .end local v9           #is:Ljava/io/InputStream;
    .restart local v8       #is:Ljava/io/InputStream;
    and-int/lit8 v14, p2, 0x4

    if-eqz v14, :cond_6

    .line 708
    :try_start_8
    new-instance v9, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v9, v8}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v8           #is:Ljava/io/InputStream;
    .restart local v9       #is:Ljava/io/InputStream;
    move-object v8, v9

    .line 710
    .end local v9           #is:Ljava/io/InputStream;
    .restart local v8       #is:Ljava/io/InputStream;
    :cond_6
    invoke-static {v8, v5}, Ljava/lang/ASSERT;->copy2File(Ljava/io/InputStream;Ljava/io/File;)Z

    .line 711
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 712
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Please check "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " file for more information ..."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 713
    invoke-static {}, Ljava/lang/ASSERT;->getProcessName_native()Ljava/lang/String;

    move-result-object v13

    .line 714
    .local v13, temp1:Ljava/lang/String;
    const-string v14, "java.lang.ASSERT"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "persist.sys.assert.enable: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "persist.sys.assert.enable"

    const-string v17, "false"

    invoke-static/range {v16 .. v17}, Ljava/lang/ASSERT;->getSystemProperties_native(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "persist.sys.assert.panic"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ": "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "persist.sys.assert.panic"

    const-string v17, "false"

    invoke-static/range {v16 .. v17}, Ljava/lang/ASSERT;->getSystemProperties_native(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    const-string v14, "oppo.assert"

    const-string v15, "true"

    invoke-static {v14, v15}, Ljava/lang/ASSERT;->getSystemProperties_native(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "true"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 719
    const-string v14, "oppo.assert"

    const-string v15, "false"

    invoke-static {v14, v15}, Ljava/lang/ASSERT;->setSystemProperties_native(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/ASSERT;->displayErrorInfo(Ljava/lang/String;)V

    .line 722
    :cond_7
    invoke-static {}, Ljava/lang/ASSERT;->panicKernel()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 727
    const/4 v14, 0x1

    move-object v1, v2

    .end local v2           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    goto/16 :goto_0

    .line 723
    .end local v4           #count:I
    .end local v5           #dest:Ljava/io/File;
    .end local v7           #fn:Ljava/lang/String;
    .end local v12           #sb:Ljava/lang/StringBuilder;
    .end local v13           #temp1:Ljava/lang/String;
    :catch_1
    move-exception v6

    goto/16 :goto_2

    .end local v8           #is:Ljava/io/InputStream;
    .restart local v9       #is:Ljava/io/InputStream;
    :catch_2
    move-exception v6

    move-object v8, v9

    .end local v9           #is:Ljava/io/InputStream;
    .restart local v8       #is:Ljava/io/InputStream;
    goto/16 :goto_2

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    .restart local v4       #count:I
    .restart local v5       #dest:Ljava/io/File;
    .restart local v7       #fn:Ljava/lang/String;
    .restart local v12       #sb:Ljava/lang/StringBuilder;
    :catch_3
    move-exception v6

    move-object v1, v2

    .end local v2           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    goto/16 :goto_2
.end method

.method public static epitaphClean()V
    .locals 2

    .prologue
    .line 731
    const-string v0, "oppo.assert"

    const-string v1, "true"

    invoke-static {v0, v1}, Ljava/lang/ASSERT;->setSystemProperties_native(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    invoke-static {}, Ljava/lang/ASSERT;->cleanErrorInfo_native()V

    .line 733
    return-void
.end method

.method private static execCommand(Ljava/lang/String;)V
    .locals 5
    .parameter "command"

    .prologue
    .line 496
    if-nez p0, :cond_0

    .line 527
    :goto_0
    return-void

    .line 500
    :cond_0
    :try_start_0
    sget-object v3, Ljava/lang/ASSERT;->rt:Ljava/lang/Runtime;

    invoke-virtual {v3, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 501
    .local v2, process:Ljava/lang/Process;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 516
    .local v0, br:Ljava/io/BufferedReader;
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 518
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 520
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 522
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #process:Ljava/lang/Process;
    :catch_0
    move-exception v1

    .line 523
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 520
    .end local v1           #e:Ljava/lang/InterruptedException;
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v2       #process:Ljava/lang/Process;
    :catchall_0
    move-exception v3

    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    throw v3
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 524
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #process:Ljava/lang/Process;
    :catch_1
    move-exception v1

    .line 525
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static fail()V
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x0

    .line 143
    .local v0, msg:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/ASSERT;->fail(Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public static fail(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 134
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0, p0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 135
    .local v0, e:Ljava/lang/Error;
    invoke-static {v0}, Ljava/lang/ASSERT;->fail(Ljava/lang/Throwable;)V

    .line 136
    return-void
.end method

.method public static fail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "msg"
    .parameter "fileName"

    .prologue
    .line 108
    sget-boolean v8, Ljava/lang/ASSERT;->isAssertEnable:Z

    if-eqz v8, :cond_1

    .line 109
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, p0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 110
    .local v1, e:Ljava/lang/Error;
    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/ASSERT;->isFiltedProcess(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 111
    new-instance v7, Ljava/io/StringWriter;

    invoke-direct {v7}, Ljava/io/StringWriter;-><init>()V

    .line 112
    .local v7, sw:Ljava/io/StringWriter;
    new-instance v5, Ljava/io/PrintWriter;

    invoke-direct {v5, v7}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 113
    .local v5, pw:Ljava/io/PrintWriter;
    invoke-virtual {v1, v5}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 114
    invoke-virtual {v7}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v6

    .line 115
    .local v6, stacktrace:Ljava/lang/String;
    invoke-static {}, Ljava/lang/ASSERT;->getProcessName_native()Ljava/lang/String;

    move-result-object v4

    .line 116
    .local v4, processname:Ljava/lang/String;
    if-nez v4, :cond_0

    .line 117
    const-string v4, "NONE"

    .line 119
    :cond_0
    invoke-static {}, Ljava/lang/ASSERT;->disableInterrupt()V

    .line 120
    invoke-static {v4, v6}, Ljava/lang/ASSERT;->getDisplayInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, displayinfo:Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/ASSERT;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, fn:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 123
    .local v3, logfile:Ljava/io/File;
    invoke-static {v3, v0}, Ljava/lang/ASSERT;->saveErrorLog(Ljava/io/File;Ljava/lang/String;)V

    .line 124
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\r\nPlease check"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".txt for more information ..."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/ASSERT;->displayErrorInfo(Ljava/lang/String;)V

    .line 125
    invoke-static {}, Ljava/lang/ASSERT;->panicKernel()V

    .line 128
    .end local v0           #displayinfo:Ljava/lang/String;
    .end local v1           #e:Ljava/lang/Error;
    .end local v2           #fn:Ljava/lang/String;
    .end local v3           #logfile:Ljava/io/File;
    .end local v4           #processname:Ljava/lang/String;
    .end local v5           #pw:Ljava/io/PrintWriter;
    .end local v6           #stacktrace:Ljava/lang/String;
    .end local v7           #sw:Ljava/io/StringWriter;
    :cond_1
    return-void
.end method

.method public static fail(Ljava/lang/Throwable;)V
    .locals 9
    .parameter "t"

    .prologue
    .line 84
    sget-boolean v7, Ljava/lang/ASSERT;->isAssertEnable:Z

    if-eqz v7, :cond_1

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/ASSERT;->isFiltedProcess(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 86
    new-instance v6, Ljava/io/StringWriter;

    invoke-direct {v6}, Ljava/io/StringWriter;-><init>()V

    .line 87
    .local v6, sw:Ljava/io/StringWriter;
    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v6}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 88
    .local v4, pw:Ljava/io/PrintWriter;
    invoke-virtual {p0, v4}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 89
    invoke-virtual {v6}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v5

    .line 91
    .local v5, stacktrace:Ljava/lang/String;
    invoke-static {}, Ljava/lang/ASSERT;->getProcessName_native()Ljava/lang/String;

    move-result-object v3

    .line 92
    .local v3, processname:Ljava/lang/String;
    if-nez v3, :cond_0

    .line 93
    const-string v3, "NONE"

    .line 96
    :cond_0
    invoke-static {}, Ljava/lang/ASSERT;->disableInterrupt()V

    .line 97
    invoke-static {v3, v5}, Ljava/lang/ASSERT;->getDisplayInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, displayinfo:Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/ASSERT;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, fn:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    .local v2, logfile:Ljava/io/File;
    invoke-static {v2, v0}, Ljava/lang/ASSERT;->saveErrorLog(Ljava/io/File;Ljava/lang/String;)V

    .line 101
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\r\nPlease check"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".txt for more information ..."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/ASSERT;->displayErrorInfo(Ljava/lang/String;)V

    .line 103
    invoke-static {}, Ljava/lang/ASSERT;->panicKernel()V

    .line 105
    .end local v0           #displayinfo:Ljava/lang/String;
    .end local v1           #fn:Ljava/lang/String;
    .end local v2           #logfile:Ljava/io/File;
    .end local v3           #processname:Ljava/lang/String;
    .end local v4           #pw:Ljava/io/PrintWriter;
    .end local v5           #stacktrace:Ljava/lang/String;
    .end local v6           #sw:Ljava/io/StringWriter;
    :cond_1
    return-void
.end method

.method private static failNotEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .parameter "message"
    .parameter "expected"
    .parameter "actual"

    .prologue
    .line 435
    invoke-static {p0, p1, p2}, Ljava/lang/ASSERT;->format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/ASSERT;->fail(Ljava/lang/String;)V

    .line 436
    return-void
.end method

.method private static failNotSame(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .parameter "message"
    .parameter "expected"
    .parameter "actual"

    .prologue
    .line 428
    const-string v0, ""

    .line 429
    .local v0, formatted:Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 430
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 431
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "expected same:<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> was not:<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/ASSERT;->fail(Ljava/lang/String;)V

    .line 432
    return-void
.end method

.method private static failSame(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 421
    const-string v0, ""

    .line 422
    .local v0, formatted:Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 423
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 424
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "expected not same"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/ASSERT;->fail(Ljava/lang/String;)V

    .line 425
    return-void
.end method

.method static format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .parameter "message"
    .parameter "expected"
    .parameter "actual"

    .prologue
    .line 439
    const-string v0, ""

    .line 440
    .local v0, formatted:Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 441
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 442
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "expected:<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> but was:<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getAssertEnable()Z
    .locals 2

    .prologue
    .line 458
    const-string v0, "persist.sys.assert.enable"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/ASSERT;->getSystemProperties_native(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "persist.sys.assert.panic"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/ASSERT;->getSystemProperties_native(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getDisplayInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "process"
    .parameter "info"

    .prologue
    .line 621
    const-string v0, "java.lang.ASSERT."

    .line 622
    .local v0, assertPre:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v8, 0x400

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 623
    .local v5, sb:Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    .line 625
    .local v7, substr:Ljava/lang/String;
    const/4 v4, 0x0

    .line 626
    .local v4, istart:I
    move-object v6, p1

    .line 627
    .local v6, st:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    .line 630
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 631
    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 632
    .local v1, ch:C
    const/16 v8, 0xa

    if-ne v1, v8, :cond_2

    .line 633
    invoke-virtual {v6, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 634
    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_0

    .line 635
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    const-string v8, "\r\n"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    :cond_0
    add-int/lit8 v4, v3, 0x1

    .line 639
    const/4 v7, 0x0

    .line 630
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 641
    :cond_2
    add-int/lit8 v8, v2, -0x1

    if-ne v3, v8, :cond_1

    .line 642
    invoke-virtual {v6, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    const-string v8, "\r\n"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 648
    .end local v1           #ch:C
    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method private static getPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "processName"

    .prologue
    .line 471
    const/4 v6, 0x0

    .line 472
    .local v6, logpath:Ljava/lang/String;
    const/4 v10, 0x1

    new-array v8, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "/cache/admin/assertlog"

    aput-object v11, v8, v10

    .line 473
    .local v8, path:[Ljava/lang/String;
    move-object v0, v8

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v9, v0, v4

    .line 474
    .local v9, s:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 475
    .local v3, f:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 476
    :cond_0
    move-object v6, v9

    .line 480
    .end local v3           #f:Ljava/io/File;
    .end local v9           #s:Ljava/lang/String;
    :cond_1
    if-nez v6, :cond_3

    .line 481
    const/4 v10, 0x0

    .line 487
    :goto_1
    return-object v10

    .line 473
    .restart local v3       #f:Ljava/io/File;
    .restart local v9       #s:Ljava/lang/String;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 483
    .end local v3           #f:Ljava/io/File;
    .end local v9           #s:Ljava/lang/String;
    :cond_3
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 484
    .local v2, dt:Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v10, "yyyy-MM-dd-HH-mm-ss"

    invoke-direct {v1, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 485
    .local v1, df:Ljava/text/DateFormat;
    const-string v7, ""

    .line 486
    .local v7, now:Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    .line 487
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_1
.end method

.method private static native getProcessName_native()Ljava/lang/String;
.end method

.method private static native getSystemProperties_native(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static isFiltedProcess(Ljava/lang/String;)Z
    .locals 6
    .parameter "process"

    .prologue
    const/4 v3, 0x0

    .line 447
    const/4 v1, 0x0

    .line 448
    .local v1, filtedproc:Ljava/lang/String;
    if-eqz p0, :cond_1

    move-object v0, p0

    .line 449
    .local v0, crashproc:Ljava/lang/String;
    :goto_0
    const-string v4, "persist.assert.filtedproc"

    const-string v5, ""

    invoke-static {v4, v5}, Ljava/lang/ASSERT;->getSystemProperties_native(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 451
    .local v2, prop:Ljava/lang/String;
    if-eqz v0, :cond_0

    if-nez v2, :cond_2

    .line 454
    :cond_0
    :goto_1
    return v3

    .line 448
    .end local v0           #crashproc:Ljava/lang/String;
    .end local v2           #prop:Ljava/lang/String;
    :cond_1
    invoke-static {}, Ljava/lang/ASSERT;->getProcessName_native()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 454
    .restart local v0       #crashproc:Ljava/lang/String;
    .restart local v2       #prop:Ljava/lang/String;
    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    const/4 v3, 0x1

    goto :goto_1
.end method

.method public static panicKernel()V
    .locals 2

    .prologue
    .line 652
    const-string v0, "persist.sys.assert.panic"

    const-string v1, "true"

    invoke-static {v0, v1}, Ljava/lang/ASSERT;->getSystemProperties_native(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 653
    invoke-static {}, Ljava/lang/ASSERT;->panic_native()V

    .line 655
    :cond_0
    return-void
.end method

.method private static native panic_native()V
.end method

.method public static qePanicKernel()V
    .locals 0

    .prologue
    .line 658
    invoke-static {}, Ljava/lang/ASSERT;->panic_native()V

    .line 659
    return-void
.end method

.method private static declared-synchronized saveErrorLog(Ljava/io/File;Ljava/lang/String;)V
    .locals 3
    .parameter "file"
    .parameter "trace"

    .prologue
    .line 491
    const-class v1, Ljava/lang/ASSERT;

    monitor-enter v1

    :try_start_0
    invoke-static {p1, p0}, Ljava/lang/ASSERT;->writeFile(Ljava/lang/String;Ljava/io/File;)Z

    .line 492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "erroreport -o "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/ASSERT;->execCommand(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 493
    monitor-exit v1

    return-void

    .line 491
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static native setSystemProperties_native(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static writeFile(Ljava/lang/String;Ljava/io/File;)Z
    .locals 5
    .parameter "longMsg"
    .parameter "destFile"

    .prologue
    .line 597
    const/4 v2, 0x0

    .line 599
    .local v2, result:Z
    if-eqz p0, :cond_1

    .line 601
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 602
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 604
    :cond_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, p1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 606
    .local v0, bw:Ljava/io/BufferedWriter;
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, p0, v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;II)V

    .line 607
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 608
    const/4 v2, 0x1

    .line 610
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 617
    .end local v0           #bw:Ljava/io/BufferedWriter;
    :cond_1
    :goto_0
    return v2

    .line 610
    .restart local v0       #bw:Ljava/io/BufferedWriter;
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    throw v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 612
    .end local v0           #bw:Ljava/io/BufferedWriter;
    :catch_0
    move-exception v1

    .line 613
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 614
    const/4 v2, 0x0

    goto :goto_0
.end method
