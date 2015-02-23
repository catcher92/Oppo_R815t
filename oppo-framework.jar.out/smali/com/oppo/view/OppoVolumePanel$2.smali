.class Lcom/oppo/view/OppoVolumePanel$2;
.super Ljava/lang/Object;
.source "OppoVolumePanel.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
.method constructor <init>(Lcom/oppo/view/OppoVolumePanel;)V
    .locals 0
    .parameter

    .prologue
    .line 344
    iput-object p1, p0, Lcom/oppo/view/OppoVolumePanel$2;->this$0:Lcom/oppo/view/OppoVolumePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 347
    iget-object v0, p0, Lcom/oppo/view/OppoVolumePanel$2;->this$0:Lcom/oppo/view/OppoVolumePanel;

    const/4 v1, -0x1

    #setter for: Lcom/oppo/view/OppoVolumePanel;->mActiveStreamType:I
    invoke-static {v0, v1}, Lcom/oppo/view/OppoVolumePanel;->access$302(Lcom/oppo/view/OppoVolumePanel;I)I

    .line 348
    iget-object v0, p0, Lcom/oppo/view/OppoVolumePanel$2;->this$0:Lcom/oppo/view/OppoVolumePanel;

    #getter for: Lcom/oppo/view/OppoVolumePanel;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/oppo/view/OppoVolumePanel;->access$400(Lcom/oppo/view/OppoVolumePanel;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/view/OppoVolumePanel$2;->this$0:Lcom/oppo/view/OppoVolumePanel;

    #getter for: Lcom/oppo/view/OppoVolumePanel;->mActiveStreamType:I
    invoke-static {v1}, Lcom/oppo/view/OppoVolumePanel;->access$300(Lcom/oppo/view/OppoVolumePanel;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->forceVolumeControlStream(I)V

    .line 349
    return-void
.end method
