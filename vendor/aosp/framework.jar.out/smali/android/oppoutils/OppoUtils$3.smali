.class final Landroid/oppoutils/OppoUtils$3;
.super Landroid/os/Handler;
.source "OppoUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/oppoutils/OppoUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 299
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v2, 0x2

    .line 301
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 315
    :goto_0
    return-void

    .line 303
    :pswitch_0
    invoke-static {}, Landroid/oppoutils/OppoUtils;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CPU_BOOST start cpu boost"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/oppoutils/OppoUtils;->NativeCpuBoost(Z)V

    .line 305
    invoke-static {}, Landroid/oppoutils/OppoUtils;->access$600()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 306
    invoke-static {}, Landroid/oppoutils/OppoUtils;->access$600()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Landroid/oppoutils/OppoUtils;->access$600()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-static {}, Landroid/oppoutils/OppoUtils;->access$700()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_0

    .line 309
    :pswitch_1
    invoke-static {}, Landroid/oppoutils/OppoUtils;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CPU_BOOST stop cpu boost"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/oppoutils/OppoUtils;->NativeCpuBoost(Z)V

    goto :goto_0

    .line 301
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
