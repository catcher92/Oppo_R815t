.class Lcom/oppo/view/OppoVolumePanel$1;
.super Landroid/app/Dialog;
.source "OppoVolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/view/OppoVolumePanel;-><init>(Landroid/content/Context;Landroid/media/AudioService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/view/OppoVolumePanel;


# direct methods
.method constructor <init>(Lcom/oppo/view/OppoVolumePanel;Landroid/content/Context;I)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 331
    iput-object p1, p0, Lcom/oppo/view/OppoVolumePanel$1;->this$0:Lcom/oppo/view/OppoVolumePanel;

    invoke-direct {p0, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 335
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 336
    iget-object v0, p0, Lcom/oppo/view/OppoVolumePanel$1;->this$0:Lcom/oppo/view/OppoVolumePanel;

    #calls: Lcom/oppo/view/OppoVolumePanel;->forceTimeout()V
    invoke-static {v0}, Lcom/oppo/view/OppoVolumePanel;->access$200(Lcom/oppo/view/OppoVolumePanel;)V

    .line 337
    const/4 v0, 0x1

    .line 339
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
