.class Lcom/oppo/widget/OppoGallery$1;
.super Landroid/os/Handler;
.source "OppoGallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoGallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/OppoGallery;


# direct methods
.method constructor <init>(Lcom/oppo/widget/OppoGallery;)V
    .locals 0
    .parameter

    .prologue
    .line 234
    iput-object p1, p0, Lcom/oppo/widget/OppoGallery$1;->this$0:Lcom/oppo/widget/OppoGallery;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 237
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 247
    :goto_0
    return-void

    .line 239
    :pswitch_0
    invoke-static {}, Lcom/oppo/widget/OppoGallery;->access$000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 240
    :try_start_0
    iget-object v0, p0, Lcom/oppo/widget/OppoGallery$1;->this$0:Lcom/oppo/widget/OppoGallery;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoGallery;->onBindBitmap()V

    .line 241
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 237
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
