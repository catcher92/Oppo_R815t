.class Lcom/oppo/view/OppoVolumePanel$7;
.super Landroid/content/BroadcastReceiver;
.source "OppoVolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/view/OppoVolumePanel;
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
    .line 1092
    iput-object p1, p0, Lcom/oppo/view/OppoVolumePanel$7;->this$0:Lcom/oppo/view/OppoVolumePanel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1095
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1096
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.SKIN_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1097
    iget-object v1, p0, Lcom/oppo/view/OppoVolumePanel$7;->this$0:Lcom/oppo/view/OppoVolumePanel;

    iget-object v2, p0, Lcom/oppo/view/OppoVolumePanel$7;->this$0:Lcom/oppo/view/OppoVolumePanel;

    iget-object v2, v2, Lcom/oppo/view/OppoVolumePanel;->mContext:Landroid/content/Context;

    #calls: Lcom/oppo/view/OppoVolumePanel;->inflaterBaseUI(Landroid/content/Context;)V
    invoke-static {v1, v2}, Lcom/oppo/view/OppoVolumePanel;->access$800(Lcom/oppo/view/OppoVolumePanel;Landroid/content/Context;)V

    .line 1098
    iget-object v1, p0, Lcom/oppo/view/OppoVolumePanel$7;->this$0:Lcom/oppo/view/OppoVolumePanel;

    #calls: Lcom/oppo/view/OppoVolumePanel;->createSliders()V
    invoke-static {v1}, Lcom/oppo/view/OppoVolumePanel;->access$900(Lcom/oppo/view/OppoVolumePanel;)V

    .line 1100
    :cond_0
    return-void
.end method
