.class Lcom/oppo/view/OppoVolumePanel$5;
.super Ljava/lang/Object;
.source "OppoVolumePanel.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/view/OppoVolumePanel;->onDisplaySafeVolumeWarning()V
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
    .line 1002
    iput-object p1, p0, Lcom/oppo/view/OppoVolumePanel$5;->this$0:Lcom/oppo/view/OppoVolumePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1004
    iget-object v1, p0, Lcom/oppo/view/OppoVolumePanel$5;->this$0:Lcom/oppo/view/OppoVolumePanel;

    #getter for: Lcom/oppo/view/OppoVolumePanel;->mStreamControls:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/oppo/view/OppoVolumePanel;->access$700(Lcom/oppo/view/OppoVolumePanel;)Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1005
    iget-object v1, p0, Lcom/oppo/view/OppoVolumePanel$5;->this$0:Lcom/oppo/view/OppoVolumePanel;

    #getter for: Lcom/oppo/view/OppoVolumePanel;->mStreamControls:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/oppo/view/OppoVolumePanel;->access$700(Lcom/oppo/view/OppoVolumePanel;)Ljava/util/HashMap;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/view/OppoVolumePanel$StreamControl;

    .line 1006
    .local v0, sc:Lcom/oppo/view/OppoVolumePanel$StreamControl;
    iget-object v1, v0, Lcom/oppo/view/OppoVolumePanel$StreamControl;->seekbarView:Landroid/widget/OppoSeekBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/OppoSeekBar;->setSafeMediaVolumeEnabled(Z)V

    .line 1008
    .end local v0           #sc:Lcom/oppo/view/OppoVolumePanel$StreamControl;
    :cond_0
    return-void
.end method
