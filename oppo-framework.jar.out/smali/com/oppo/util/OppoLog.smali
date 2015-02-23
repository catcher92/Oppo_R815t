.class public final Lcom/oppo/util/OppoLog;
.super Ljava/lang/Object;
.source "OppoLog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 93
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return-void
.end method

.method public static d(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "dbg"
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 105
    if-eqz p0, :cond_0

    .line 106
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 168
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    return-void
.end method

.method public static e(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "dbg"
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 180
    if-eqz p0, :cond_0

    .line 181
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 118
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return-void
.end method

.method public static i(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "dbg"
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 130
    if-eqz p0, :cond_0

    .line 131
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 68
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-void
.end method

.method public static v(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "dbg"
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 80
    if-eqz p0, :cond_0

    .line 81
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 143
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return-void
.end method

.method public static w(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "dbg"
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 155
    if-eqz p0, :cond_0

    .line 156
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_0
    return-void
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 195
    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    return-void
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "tag"
    .parameter "tr"

    .prologue
    .line 224
    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 225
    return-void
.end method

.method public static wtf(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "dbg"
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 209
    if-eqz p0, :cond_0

    .line 210
    invoke-static {p1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_0
    return-void
.end method

.method public static wtf(ZLjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "dbg"
    .parameter "tag"
    .parameter "tr"

    .prologue
    .line 238
    if-eqz p0, :cond_0

    .line 239
    invoke-static {p1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 241
    :cond_0
    return-void
.end method
