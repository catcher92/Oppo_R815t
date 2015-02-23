.class Lcom/oppo/modemanager/OppoModeManager$2;
.super Ljava/lang/Thread;
.source "OppoModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/modemanager/OppoModeManager;->setModeEnable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/modemanager/OppoModeManager;


# direct methods
.method constructor <init>(Lcom/oppo/modemanager/OppoModeManager;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 179
    iput-object p1, p0, Lcom/oppo/modemanager/OppoModeManager$2;->this$0:Lcom/oppo/modemanager/OppoModeManager;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 182
    iget-object v0, p0, Lcom/oppo/modemanager/OppoModeManager$2;->this$0:Lcom/oppo/modemanager/OppoModeManager;

    iget-object v1, p0, Lcom/oppo/modemanager/OppoModeManager$2;->this$0:Lcom/oppo/modemanager/OppoModeManager;

    #getter for: Lcom/oppo/modemanager/OppoModeManager;->mCmccMode:Lcom/oppo/modemanager/CmccMode;
    invoke-static {v1}, Lcom/oppo/modemanager/OppoModeManager;->access$500(Lcom/oppo/modemanager/OppoModeManager;)Lcom/oppo/modemanager/CmccMode;

    move-result-object v1

    iget-object v1, v1, Lcom/oppo/modemanager/Mode;->mPkgList:Ljava/util/ArrayList;

    const/4 v2, 0x1

    #calls: Lcom/oppo/modemanager/OppoModeManager;->setAppListEnabledSetting(Ljava/util/ArrayList;Z)V
    invoke-static {v0, v1, v2}, Lcom/oppo/modemanager/OppoModeManager;->access$600(Lcom/oppo/modemanager/OppoModeManager;Ljava/util/ArrayList;Z)V

    .line 183
    return-void
.end method
